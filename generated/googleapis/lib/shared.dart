// Copyright 2021 Google LLC
//
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file or at
// https://developers.google.com/open-source/licenses/bsd

/// Shared types to minimize the package size. Do not use directly.
@core.Deprecated(
  'Avoid importing this library. '
  'Use the members defined in the target API library instead.',
)
library;

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

import 'dart:convert' as convert;
import 'dart:core' as core;

/// Used by:
///
/// - accesscontextmanager:v1 : AccessPolicy
/// - cloudasset:v1 : GoogleIdentityAccesscontextmanagerV1AccessPolicy
class $AccessPolicy {
  /// An opaque identifier for the current version of the `AccessPolicy`.
  ///
  /// This will always be a strongly validated etag, meaning that two access
  /// policies will be identical if and only if their etags are identical.
  /// Clients should not expect this to be in any specific format.
  ///
  /// Output only.
  core.String? etag;

  /// Identifier.
  ///
  /// Resource name of the `AccessPolicy`. Format:
  /// `accessPolicies/{access_policy}`
  ///
  /// Output only.
  core.String? name;

  /// The parent of this `AccessPolicy` in the Cloud Resource Hierarchy.
  ///
  /// Currently immutable once created. Format:
  /// `organizations/{organization_id}`
  ///
  /// Required.
  core.String? parent;

  /// The scopes of the AccessPolicy.
  ///
  /// Scopes define which resources a policy can restrict and where its
  /// resources can be referenced. For example, policy A with
  /// `scopes=["folders/123"]` has the following behavior: - ServicePerimeter
  /// can only restrict projects within `folders/123`. - ServicePerimeter within
  /// policy A can only reference access levels defined within policy A. - Only
  /// one policy can include a given scope; thus, attempting to create a second
  /// policy that includes `folders/123` will result in an error. If no scopes
  /// are provided, then any resource within the organization can be restricted.
  /// Scopes cannot be modified after a policy is created. Policies can only
  /// have a single scope. Format: list of `folders/{folder_number}` or
  /// `projects/{project_number}`
  core.List<core.String>? scopes;

  /// Human-readable title.
  ///
  /// Does not affect behavior.
  ///
  /// Required.
  core.String? title;

  $AccessPolicy({this.etag, this.name, this.parent, this.scopes, this.title});

  $AccessPolicy.fromJson(core.Map json_)
    : this(
        etag: json_['etag'] as core.String?,
        name: json_['name'] as core.String?,
        parent: json_['parent'] as core.String?,
        scopes: (json_['scopes'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        title: json_['title'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final etag = this.etag;
    final name = this.name;
    final parent = this.parent;
    final scopes = this.scopes;
    final title = this.title;
    return {
      'etag': ?etag,
      'name': ?name,
      'parent': ?parent,
      'scopes': ?scopes,
      'title': ?title,
    };
  }
}

/// Used by:
///
/// - chat:v1 : ActionParameter
/// - chat:v1 : GoogleAppsCardV1ActionParameter
class $ActionParameter {
  /// The name of the parameter for the action script.
  core.String? key;

  /// The value of the parameter.
  core.String? value;

  $ActionParameter({this.key, this.value});

  $ActionParameter.fromJson(core.Map json_)
    : this(
        key: json_['key'] as core.String?,
        value: json_['value'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final key = this.key;
    final value = this.value;
    return {'key': ?key, 'value': ?value};
  }
}

/// Used by:
///
/// - authorizedbuyersmarketplace:v1 : AdSize
/// - curationpartners:v1 : AdSize
class $AdSize {
  /// The height of the ad slot in pixels.
  ///
  /// This field will be present only when size type is `PIXEL`.
  core.String? height;

  /// The type of the ad slot size.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : A placeholder for an undefined size type.
  /// - "PIXEL" : Ad slot with size specified by height and width in pixels.
  /// - "INTERSTITIAL" : Special size to describe an interstitial ad slot.
  /// - "NATIVE" : Native (mobile) ads rendered by the publisher.
  /// - "FLUID" : Fluid size (responsive size) can be resized automatically with
  /// the change of outside environment.
  core.String? type;

  /// The width of the ad slot in pixels.
  ///
  /// This field will be present only when size type is `PIXEL`.
  core.String? width;

  $AdSize({this.height, this.type, this.width});

  $AdSize.fromJson(core.Map json_)
    : this(
        height: json_['height'] as core.String?,
        type: json_['type'] as core.String?,
        width: json_['width'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final height = this.height;
    final type = this.type;
    final width = this.width;
    return {'height': ?height, 'type': ?type, 'width': ?width};
  }
}

/// Used by:
///
/// - accesscontextmanager:v1 : AddRequestHeader
/// - cloudasset:v1 : GoogleIdentityAccesscontextmanagerV1AddRequestHeader
class $AddRequestHeader {
  /// HTTP header key.
  core.String? key;

  /// HTTP header value.
  core.String? value;

  $AddRequestHeader({this.key, this.value});

  $AddRequestHeader.fromJson(core.Map json_)
    : this(
        key: json_['key'] as core.String?,
        value: json_['value'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final key = this.key;
    final value = this.value;
    return {'key': ?key, 'value': ?value};
  }
}

/// Used by:
///
/// - gkeonprem:v1 : BareMetalAdminLoadBalancerAddressPool
/// - gkeonprem:v1 : BareMetalLoadBalancerAddressPool
/// - gkeonprem:v1 : VmwareAddressPool
class $AddressPool {
  /// The addresses that are part of this pool.
  ///
  /// Each address must be either in the CIDR form (1.2.3.0/24) or range form
  /// (1.2.3.1-1.2.3.5).
  ///
  /// Required.
  core.List<core.String>? addresses;

  /// If true, avoid using IPs ending in .0 or .255.
  ///
  /// This avoids buggy consumer devices mistakenly dropping IPv4 traffic for
  /// those special IP addresses.
  core.bool? avoidBuggyIps;

  /// If true, prevent IP addresses from being automatically assigned.
  core.bool? manualAssign;

  /// The name of the address pool.
  ///
  /// Required.
  core.String? pool;

  $AddressPool({
    this.addresses,
    this.avoidBuggyIps,
    this.manualAssign,
    this.pool,
  });

  $AddressPool.fromJson(core.Map json_)
    : this(
        addresses: (json_['addresses'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        avoidBuggyIps: json_['avoidBuggyIps'] as core.bool?,
        manualAssign: json_['manualAssign'] as core.bool?,
        pool: json_['pool'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final addresses = this.addresses;
    final avoidBuggyIps = this.avoidBuggyIps;
    final manualAssign = this.manualAssign;
    final pool = this.pool;
    return {
      'addresses': ?addresses,
      'avoidBuggyIps': ?avoidBuggyIps,
      'manualAssign': ?manualAssign,
      'pool': ?pool,
    };
  }
}

/// Used by:
///
/// - dialogflow:v2 : GoogleCloudDialogflowV2ImportAgentRequest
/// - dialogflow:v2 : GoogleCloudDialogflowV2RestoreAgentRequest
class $AgentRequest {
  core.String? agentContent;
  core.List<core.int> get agentContentAsBytes =>
      convert.base64.decode(agentContent!);

  set agentContentAsBytes(core.List<core.int> bytes_) {
    agentContent = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  core.String? agentUri;

  $AgentRequest({this.agentContent, this.agentUri});

  $AgentRequest.fromJson(core.Map json_)
    : this(
        agentContent: json_['agentContent'] as core.String?,
        agentUri: json_['agentUri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final agentContent = this.agentContent;
    final agentUri = this.agentUri;
    return {'agentContent': ?agentContent, 'agentUri': ?agentUri};
  }
}

/// Used by:
///
/// - ces:v1 : AgentTransfer
/// - contactcenterinsights:v1 : GoogleCloudCesV1mainAgentTransfer
class $AgentTransfer {
  /// Display name of the agent.
  ///
  /// Output only.
  core.String? displayName;

  /// The agent to which the conversation is being transferred.
  ///
  /// The agent will handle the conversation from this point forward. Format:
  /// `projects/{project}/locations/{location}/apps/{app}/agents/{agent}`
  ///
  /// Required.
  core.String? targetAgent;

  $AgentTransfer({this.displayName, this.targetAgent});

  $AgentTransfer.fromJson(core.Map json_)
    : this(
        displayName: json_['displayName'] as core.String?,
        targetAgent: json_['targetAgent'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final displayName = this.displayName;
    final targetAgent = this.targetAgent;
    return {'displayName': ?displayName, 'targetAgent': ?targetAgent};
  }
}

/// Used by:
///
/// - containeranalysis:v1 : AliasContext
/// - ondemandscanning:v1 : AliasContext
class $AliasContext {
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

  $AliasContext({this.kind, this.name});

  $AliasContext.fromJson(core.Map json_)
    : this(
        kind: json_['kind'] as core.String?,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final kind = this.kind;
    final name = this.name;
    return {'kind': ?kind, 'name': ?name};
  }
}

/// Used by:
///
/// - iamcredentials:v1 : ServiceAccountAllowedLocations
/// - iamcredentials:v1 : WorkforcePoolAllowedLocations
/// - iamcredentials:v1 : WorkloadIdentityPoolAllowedLocations
class $AllowedLocations {
  /// The hex encoded bitmap of the trust boundary locations
  ///
  /// Output only.
  core.String? encodedLocations;

  /// The human readable trust boundary locations.
  ///
  /// For example, \["us-central1", "europe-west1"\]
  ///
  /// Output only.
  core.List<core.String>? locations;

  $AllowedLocations({this.encodedLocations, this.locations});

  $AllowedLocations.fromJson(core.Map json_)
    : this(
        encodedLocations: json_['encodedLocations'] as core.String?,
        locations: (json_['locations'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final encodedLocations = this.encodedLocations;
    final locations = this.locations;
    return {'encodedLocations': ?encodedLocations, 'locations': ?locations};
  }
}

/// Used by:
///
/// - containeranalysis:v1 : AnalysisCompleted
/// - ondemandscanning:v1 : AnalysisCompleted
class $AnalysisCompleted {
  core.List<core.String>? analysisType;

  $AnalysisCompleted({this.analysisType});

  $AnalysisCompleted.fromJson(core.Map json_)
    : this(
        analysisType: (json_['analysisType'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final analysisType = this.analysisType;
    return {'analysisType': ?analysisType};
  }
}

/// Used by:
///
/// - drive:v3 : ApproveApprovalRequest
/// - drive:v3 : DeclineApprovalRequest
class $ApprovalRequest {
  /// A message to accompany the reviewer response on the approval.
  ///
  /// This message is included in notifications for the action and in the
  /// approval activity log.
  ///
  /// Optional.
  core.String? message;

  $ApprovalRequest({this.message});

  $ApprovalRequest.fromJson(core.Map json_)
    : this(message: json_['message'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final message = this.message;
    return {'message': ?message};
  }
}

/// Used by:
///
/// - aiplatform:v1 : GenaiVertexV1CodeExecutionCallContentCodeExecutionCallArguments
/// - aiplatform:v1 : GenaiVertexV1CodeExecutionCallStepCodeExecutionCallStepArguments
class $Arguments00 {
  /// The code to be executed.
  core.String? code;

  /// Programming language of the `code`.
  /// Possible string values are:
  /// - "LANGUAGE_UNSPECIFIED" : Unspecified language. This value should not be
  /// used.
  /// - "PYTHON" : Python \>= 3.10, with numpy and simpy available.
  /// - "BASH" : Bash. Only available for Gemini 3.0 model or above.
  core.String? language;

  $Arguments00({this.code, this.language});

  $Arguments00.fromJson(core.Map json_)
    : this(
        code: json_['code'] as core.String?,
        language: json_['language'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final code = this.code;
    final language = this.language;
    return {'code': ?code, 'language': ?language};
  }
}

/// Used by:
///
/// - aiplatform:v1 : GenaiVertexV1GoogleMapsCallContentGoogleMapsCallArguments
/// - aiplatform:v1 : GenaiVertexV1GoogleMapsCallStepGoogleMapsCallStepArguments
class $Arguments01 {
  /// The queries to be executed.
  core.List<core.String>? queries;

  $Arguments01({this.queries});

  $Arguments01.fromJson(core.Map json_)
    : this(
        queries: (json_['queries'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final queries = this.queries;
    return {'queries': ?queries};
  }
}

/// Used by:
///
/// - aiplatform:v1 : GenaiVertexV1GoogleSearchCallContentGoogleSearchCallArguments
/// - aiplatform:v1 : GenaiVertexV1GoogleSearchCallStepGoogleSearchCallStepArguments
class $Arguments02 {
  /// Web search queries for the following-up web search.
  core.List<core.String>? queries;

  $Arguments02({this.queries});

  $Arguments02.fromJson(core.Map json_)
    : this(
        queries: (json_['queries'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final queries = this.queries;
    return {'queries': ?queries};
  }
}

/// Used by:
///
/// - aiplatform:v1 : GenaiVertexV1UrlContextCallContentUrlContextCallArguments
/// - aiplatform:v1 : GenaiVertexV1UrlContextCallStepUrlContextCallStepArguments
class $Arguments03 {
  /// The URLs to fetch.
  core.List<core.String>? urls;

  $Arguments03({this.urls});

  $Arguments03.fromJson(core.Map json_)
    : this(
        urls: (json_['urls'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final urls = this.urls;
    return {'urls': ?urls};
  }
}

/// Used by:
///
/// - containeranalysis:v1 : Artifact
/// - ondemandscanning:v1 : Artifact
class $Artifact {
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

  $Artifact({this.checksum, this.id, this.names});

  $Artifact.fromJson(core.Map json_)
    : this(
        checksum: json_['checksum'] as core.String?,
        id: json_['id'] as core.String?,
        names: (json_['names'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final checksum = this.checksum;
    final id = this.id;
    final names = this.names;
    return {'checksum': ?checksum, 'id': ?id, 'names': ?names};
  }
}

/// Used by:
///
/// - artifactregistry:v1 : ImportAptArtifactsGcsSource
/// - artifactregistry:v1 : ImportYumArtifactsGcsSource
class $ArtifactsGcsSource {
  /// Cloud Storage paths URI (e.g., gs://my_bucket//my_object).
  core.List<core.String>? uris;

  /// Supports URI wildcards for matching multiple objects from a single URI.
  core.bool? useWildcards;

  $ArtifactsGcsSource({this.uris, this.useWildcards});

  $ArtifactsGcsSource.fromJson(core.Map json_)
    : this(
        uris: (json_['uris'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        useWildcards: json_['useWildcards'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final uris = this.uris;
    final useWildcards = this.useWildcards;
    return {'uris': ?uris, 'useWildcards': ?useWildcards};
  }
}

/// Used by:
///
/// - accesscontextmanager:v1 : AuditLogConfig
/// - agentidentity:v1 : AuditLogConfig
/// - agentregistry:v1 : GoogleIamV1AuditLogConfig
/// - analyticshub:v1 : AuditLogConfig
/// - apigateway:v1 : ApigatewayAuditLogConfig
/// - apigee:v1 : GoogleIamV1AuditLogConfig
/// - apphub:v1 : AuditLogConfig
/// - backupdr:v1 : AuditLogConfig
/// - beyondcorp:v1 : GoogleIamV1AuditLogConfig
/// - biglake:v1 : AuditLogConfig
/// - bigquery:v2 : AuditLogConfig
/// - bigqueryconnection:v1 : AuditLogConfig
/// - bigquerydatapolicy:v1 : AuditLogConfig
/// - bigquerydatapolicy:v2 : AuditLogConfig
/// - bigqueryreservation:v1 : AuditLogConfig
/// - bigtableadmin:v2 : AuditLogConfig
/// - cloudasset:v1 : AuditLogConfig
/// - cloudbilling:v1 : AuditLogConfig
/// - cloudbuild:v2 : AuditLogConfig
/// - clouddeploy:v1 : AuditLogConfig
/// - cloudfunctions:v1 : AuditLogConfig
/// - cloudfunctions:v2 : AuditLogConfig
/// - cloudkms:v1 : AuditLogConfig
/// - cloudresourcemanager:v1 : AuditLogConfig
/// - cloudresourcemanager:v3 : AuditLogConfig
/// - config:v1 : AuditLogConfig
/// - contactcenterinsights:v1 : GoogleIamV1AuditLogConfig
/// - datafusion:v1 : AuditLogConfig
/// - datamigration:v1 : AuditLogConfig
/// - dataplex:v1 : GoogleIamV1AuditLogConfig
/// - dns:v1 : GoogleIamV1AuditLogConfig
/// - eventarc:v1 : AuditLogConfig
/// - gkebackup:v1 : AuditLogConfig
/// - healthcare:v1 : AuditLogConfig
/// - iam:v1 : AuditLogConfig
/// - identitytoolkit:v2 : GoogleIamV1AuditLogConfig
/// - networkconnectivity:v1 : AuditLogConfig
/// - networkmanagement:v1 : AuditLogConfig
/// - networksecurity:v1 : GoogleIamV1AuditLogConfig
/// - networkservices:v1 : AuditLogConfig
/// - policysimulator:v1 : GoogleIamV1AuditLogConfig
/// - policytroubleshooter:v3 : GoogleIamV1AuditLogConfig
/// - privateca:v1 : AuditLogConfig
/// - run:v2 : GoogleIamV1AuditLogConfig
/// - secretmanager:v1 : AuditLogConfig
/// - securesourcemanager:v1 : AuditLogConfig
/// - servicemanagement:v1 : AuditLogConfig
/// - vmwareengine:v1 : AuditLogConfig
/// - workstations:v1 : AuditLogConfig
class $AuditLogConfig {
  /// Specifies the identities that do not cause logging for this type of
  /// permission.
  ///
  /// Follows the same format of Binding.members.
  core.List<core.String>? exemptedMembers;

  /// The log type that this config enables.
  /// Possible string values are:
  /// - "LOG_TYPE_UNSPECIFIED" : Default case. Should never be this.
  /// - "ADMIN_READ" : Admin reads. Example: CloudIAM getIamPolicy
  /// - "DATA_WRITE" : Data writes. Example: CloudSQL Users create
  /// - "DATA_READ" : Data reads. Example: CloudSQL Users list
  core.String? logType;

  $AuditLogConfig({this.exemptedMembers, this.logType});

  $AuditLogConfig.fromJson(core.Map json_)
    : this(
        exemptedMembers: (json_['exemptedMembers'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        logType: json_['logType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final exemptedMembers = this.exemptedMembers;
    final logType = this.logType;
    return {'exemptedMembers': ?exemptedMembers, 'logType': ?logType};
  }
}

/// Used by:
///
/// - servicemanagement:v1 : AuthRequirement
/// - serviceusage:v1 : AuthRequirement
class $AuthRequirement {
  /// NOTE: This will be deprecated soon, once AuthProvider.audiences is
  /// implemented and accepted in all the runtime components.
  ///
  /// The list of JWT
  /// [audiences](https://tools.ietf.org/html/draft-ietf-oauth-json-web-token-32#section-4.1.3).
  /// that are allowed to access. A JWT containing any of these audiences will
  /// be accepted. When this setting is absent, only JWTs with audience
  /// "https://Service_name/API_name" will be accepted. For example, if no
  /// audiences are in the setting, LibraryService API will only accept JWTs
  /// with the following audience
  /// "https://library-example.googleapis.com/google.example.library.v1.LibraryService".
  /// Example: audiences: bookstore_android.apps.googleusercontent.com,
  /// bookstore_web.apps.googleusercontent.com
  core.String? audiences;

  /// id from authentication provider.
  ///
  /// Example: provider_id: bookstore_auth
  core.String? providerId;

  $AuthRequirement({this.audiences, this.providerId});

  $AuthRequirement.fromJson(core.Map json_)
    : this(
        audiences: json_['audiences'] as core.String?,
        providerId: json_['providerId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final audiences = this.audiences;
    final providerId = this.providerId;
    return {'audiences': ?audiences, 'providerId': ?providerId};
  }
}

/// Used by:
///
/// - identitytoolkit:v1 : GoogleCloudIdentitytoolkitV1AutoRetrievalInfo
/// - identitytoolkit:v2 : GoogleCloudIdentitytoolkitV2AutoRetrievalInfo
class $AutoRetrievalInfo {
  /// The Android app's signature hash for Google Play Service's SMS Retriever
  /// API.
  core.String? appSignatureHash;

  $AutoRetrievalInfo({this.appSignatureHash});

  $AutoRetrievalInfo.fromJson(core.Map json_)
    : this(appSignatureHash: json_['appSignatureHash'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final appSignatureHash = this.appSignatureHash;
    return {'appSignatureHash': ?appSignatureHash};
  }
}

/// Used by:
///
/// - analyticshub:v1 : AvroConfig
/// - pubsub:v1 : AvroConfig
class $AvroConfig {
  /// When true, the output Cloud Storage file will be serialized using the
  /// topic schema, if it exists.
  ///
  /// Optional.
  core.bool? useTopicSchema;

  /// When true, write the subscription name, message_id, publish_time,
  /// attributes, and ordering_key as additional fields in the output.
  ///
  /// The subscription name, message_id, and publish_time fields are put in
  /// their own fields while all other message properties other than data (for
  /// example, an ordering_key, if present) are added as entries in the
  /// attributes map.
  ///
  /// Optional.
  core.bool? writeMetadata;

  $AvroConfig({this.useTopicSchema, this.writeMetadata});

  $AvroConfig.fromJson(core.Map json_)
    : this(
        useTopicSchema: json_['useTopicSchema'] as core.bool?,
        writeMetadata: json_['writeMetadata'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final useTopicSchema = this.useTopicSchema;
    final writeMetadata = this.writeMetadata;
    return {'useTopicSchema': ?useTopicSchema, 'writeMetadata': ?writeMetadata};
  }
}

/// Used by:
///
/// - containeranalysis:v1 : BaseImage
/// - ondemandscanning:v1 : BaseImage
/// - ondemandscanning:v1 : GrafeasV1BaseImage
class $BaseImage {
  /// The number of layers that the base image is composed of.
  core.int? layerCount;

  /// The name of the base image.
  core.String? name;

  /// The registry in which the base image is from.
  core.String? registry;

  /// The repository name in which the base image is from.
  core.String? repository;

  $BaseImage({this.layerCount, this.name, this.registry, this.repository});

  $BaseImage.fromJson(core.Map json_)
    : this(
        layerCount: json_['layerCount'] as core.int?,
        name: json_['name'] as core.String?,
        registry: json_['registry'] as core.String?,
        repository: json_['repository'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final layerCount = this.layerCount;
    final name = this.name;
    final registry = this.registry;
    final repository = this.repository;
    return {
      'layerCount': ?layerCount,
      'name': ?name,
      'registry': ?registry,
      'repository': ?repository,
    };
  }
}

/// Used by:
///
/// - gkeonprem:v1 : BareMetalAdminBgpPeerConfig
/// - gkeonprem:v1 : BareMetalBgpPeerConfig
class $BgpPeerConfig {
  /// BGP autonomous system number (ASN) for the network that contains the
  /// external peer device.
  ///
  /// Required.
  core.String? asn;

  /// The IP address of the control plane node that connects to the external
  /// peer.
  ///
  /// If you don't specify any control plane nodes, all control plane nodes can
  /// connect to the external peer. If you specify one or more IP addresses,
  /// only the nodes specified participate in peering sessions.
  core.List<core.String>? controlPlaneNodes;

  /// The IP address of the external peer device.
  ///
  /// Required.
  core.String? ipAddress;

  $BgpPeerConfig({this.asn, this.controlPlaneNodes, this.ipAddress});

  $BgpPeerConfig.fromJson(core.Map json_)
    : this(
        asn: json_['asn'] as core.String?,
        controlPlaneNodes: (json_['controlPlaneNodes'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        ipAddress: json_['ipAddress'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final asn = this.asn;
    final controlPlaneNodes = this.controlPlaneNodes;
    final ipAddress = this.ipAddress;
    return {
      'asn': ?asn,
      'controlPlaneNodes': ?controlPlaneNodes,
      'ipAddress': ?ipAddress,
    };
  }
}

/// Used by:
///
/// - ces:v1 : Blob
/// - contactcenterinsights:v1 : GoogleCloudCesV1mainBlob
class $Blob {
  /// Raw bytes of the blob.
  ///
  /// Required.
  core.String? data;
  core.List<core.int> get dataAsBytes => convert.base64.decode(data!);

  set dataAsBytes(core.List<core.int> bytes_) {
    data = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  /// The IANA standard MIME type of the source data.
  ///
  /// Required.
  core.String? mimeType;

  $Blob({this.data, this.mimeType});

  $Blob.fromJson(core.Map json_)
    : this(
        data: json_['data'] as core.String?,
        mimeType: json_['mimeType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final data = this.data;
    final mimeType = this.mimeType;
    return {'data': ?data, 'mimeType': ?mimeType};
  }
}

/// Used by:
///
/// - firebaseappdistribution:v1 : GdataBlobstore2Info
/// - walletobjects:v1 : Blobstore2Info
class $Blobstore2Info {
  /// The blob generation id.
  core.String? blobGeneration;

  /// The blob id, e.g., /blobstore/prod/playground/scotty
  core.String? blobId;

  /// A serialized External Read Token passed from Bigstore -\> Scotty for a GCS
  /// download.
  ///
  /// This field must never be consumed outside of Bigstore, and is not
  /// applicable to non-GCS media uploads.
  core.String? downloadExternalReadToken;
  core.List<core.int> get downloadExternalReadTokenAsBytes =>
      convert.base64.decode(downloadExternalReadToken!);

  set downloadExternalReadTokenAsBytes(core.List<core.int> bytes_) {
    downloadExternalReadToken = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  /// Read handle passed from Bigstore -\> Scotty for a GCS download.
  ///
  /// This is a signed, serialized blobstore2.ReadHandle proto which must never
  /// be set outside of Bigstore, and is not applicable to non-GCS media
  /// downloads.
  core.String? downloadReadHandle;
  core.List<core.int> get downloadReadHandleAsBytes =>
      convert.base64.decode(downloadReadHandle!);

  set downloadReadHandleAsBytes(core.List<core.int> bytes_) {
    downloadReadHandle = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  /// The blob read token.
  ///
  /// Needed to read blobs that have not been replicated. Might not be available
  /// until the final call.
  core.String? readToken;

  /// A serialized Object Fragment List Creation Info passed from Bigstore -\>
  /// Scotty for a GCS upload.
  ///
  /// This field must never be consumed outside of Bigstore, and is not
  /// applicable to non-GCS media uploads.
  core.String? uploadFragmentListCreationInfo;
  core.List<core.int> get uploadFragmentListCreationInfoAsBytes =>
      convert.base64.decode(uploadFragmentListCreationInfo!);

  set uploadFragmentListCreationInfoAsBytes(core.List<core.int> bytes_) {
    uploadFragmentListCreationInfo = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  /// Metadata passed from Blobstore -\> Scotty for a new GCS upload.
  ///
  /// This is a signed, serialized blobstore2.BlobMetadataContainer proto which
  /// must never be consumed outside of Bigstore, and is not applicable to
  /// non-GCS media uploads.
  core.String? uploadMetadataContainer;
  core.List<core.int> get uploadMetadataContainerAsBytes =>
      convert.base64.decode(uploadMetadataContainer!);

  set uploadMetadataContainerAsBytes(core.List<core.int> bytes_) {
    uploadMetadataContainer = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  $Blobstore2Info({
    this.blobGeneration,
    this.blobId,
    this.downloadExternalReadToken,
    this.downloadReadHandle,
    this.readToken,
    this.uploadFragmentListCreationInfo,
    this.uploadMetadataContainer,
  });

  $Blobstore2Info.fromJson(core.Map json_)
    : this(
        blobGeneration: json_['blobGeneration'] as core.String?,
        blobId: json_['blobId'] as core.String?,
        downloadExternalReadToken:
            json_['downloadExternalReadToken'] as core.String?,
        downloadReadHandle: json_['downloadReadHandle'] as core.String?,
        readToken: json_['readToken'] as core.String?,
        uploadFragmentListCreationInfo:
            json_['uploadFragmentListCreationInfo'] as core.String?,
        uploadMetadataContainer:
            json_['uploadMetadataContainer'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final blobGeneration = this.blobGeneration;
    final blobId = this.blobId;
    final downloadExternalReadToken = this.downloadExternalReadToken;
    final downloadReadHandle = this.downloadReadHandle;
    final readToken = this.readToken;
    final uploadFragmentListCreationInfo = this.uploadFragmentListCreationInfo;
    final uploadMetadataContainer = this.uploadMetadataContainer;
    return {
      'blobGeneration': ?blobGeneration,
      'blobId': ?blobId,
      'downloadExternalReadToken': ?downloadExternalReadToken,
      'downloadReadHandle': ?downloadReadHandle,
      'readToken': ?readToken,
      'uploadFragmentListCreationInfo': ?uploadFragmentListCreationInfo,
      'uploadMetadataContainer': ?uploadMetadataContainer,
    };
  }
}

/// Used by:
///
/// - cloudasset:v1 : GoogleCloudOrgpolicyV1BooleanPolicy
/// - cloudresourcemanager:v1 : BooleanPolicy
class $BooleanPolicy {
  /// If `true`, then the `Policy` is enforced.
  ///
  /// If `false`, then any configuration is acceptable. Suppose you have a
  /// `Constraint` `constraints/compute.disableSerialPortAccess` with
  /// `constraint_default` set to `ALLOW`. A `Policy` for that `Constraint`
  /// exhibits the following behavior: - If the `Policy` at this resource has
  /// enforced set to `false`, serial port connection attempts will be allowed.
  /// - If the `Policy` at this resource has enforced set to `true`, serial port
  /// connection attempts will be refused. - If the `Policy` at this resource is
  /// `RestoreDefault`, serial port connection attempts will be allowed. - If no
  /// `Policy` is set at this resource or anywhere higher in the resource
  /// hierarchy, serial port connection attempts will be allowed. - If no
  /// `Policy` is set at this resource, but one exists higher in the resource
  /// hierarchy, the behavior is as if the`Policy` were set at this resource.
  /// The following examples demonstrate the different possible layerings:
  /// Example 1 (nearest `Constraint` wins): `organizations/foo` has a `Policy`
  /// with: {enforced: false} `projects/bar` has no `Policy` set. The constraint
  /// at `projects/bar` and `organizations/foo` will not be enforced. Example 2
  /// (enforcement gets replaced): `organizations/foo` has a `Policy` with:
  /// {enforced: false} `projects/bar` has a `Policy` with: {enforced: true} The
  /// constraint at `organizations/foo` is not enforced. The constraint at
  /// `projects/bar` is enforced. Example 3 (RestoreDefault):
  /// `organizations/foo` has a `Policy` with: {enforced: true} `projects/bar`
  /// has a `Policy` with: {RestoreDefault: {}} The constraint at
  /// `organizations/foo` is enforced. The constraint at `projects/bar` is not
  /// enforced, because `constraint_default` for the `Constraint` is `ALLOW`.
  core.bool? enforced;

  $BooleanPolicy({this.enforced});

  $BooleanPolicy.fromJson(core.Map json_)
    : this(enforced: json_['enforced'] as core.bool?);

  core.Map<core.String, core.dynamic> toJson() {
    final enforced = this.enforced;
    return {'enforced': ?enforced};
  }
}

/// Used by:
///
/// - dialogflow:v2 : GoogleCloudDialogflowV2SearchKnowledgeRequestSearchConfigBoostSpecsBoostSpecConditionBoostSpecBoostControlSpecControlPoint
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3BoostSpecConditionBoostSpecBoostControlSpecControlPoint
class $BoostSpecConditionBoostSpecBoostControlSpecControlPoint {
  core.String? attributeValue;
  core.double? boostAmount;

  $BoostSpecConditionBoostSpecBoostControlSpecControlPoint({
    this.attributeValue,
    this.boostAmount,
  });

  $BoostSpecConditionBoostSpecBoostControlSpecControlPoint.fromJson(
    core.Map json_,
  ) : this(
        attributeValue: json_['attributeValue'] as core.String?,
        boostAmount: (json_['boostAmount'] as core.num?)?.toDouble(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final attributeValue = this.attributeValue;
    final boostAmount = this.boostAmount;
    return {'attributeValue': ?attributeValue, 'boostAmount': ?boostAmount};
  }
}

/// Used by:
///
/// - containeranalysis:v1 : BuildMetadata
/// - ondemandscanning:v1 : BuildMetadata
class $BuildMetadata {
  core.String? finishedOn;
  core.String? invocationId;
  core.String? startedOn;

  $BuildMetadata({this.finishedOn, this.invocationId, this.startedOn});

  $BuildMetadata.fromJson(core.Map json_)
    : this(
        finishedOn: json_['finishedOn'] as core.String?,
        invocationId: json_['invocationId'] as core.String?,
        startedOn: json_['startedOn'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final finishedOn = this.finishedOn;
    final invocationId = this.invocationId;
    final startedOn = this.startedOn;
    return {
      'finishedOn': ?finishedOn,
      'invocationId': ?invocationId,
      'startedOn': ?startedOn,
    };
  }
}

/// Used by:
///
/// - containeranalysis:v1 : CISAKnownExploitedVulnerabilities
/// - ondemandscanning:v1 : CISAKnownExploitedVulnerabilities
class $CISAKnownExploitedVulnerabilities {
  /// Whether the vulnerability is known to have been leveraged as part of a
  /// ransomware campaign.
  core.String? knownRansomwareCampaignUse;

  $CISAKnownExploitedVulnerabilities({this.knownRansomwareCampaignUse});

  $CISAKnownExploitedVulnerabilities.fromJson(core.Map json_)
    : this(
        knownRansomwareCampaignUse:
            json_['knownRansomwareCampaignUse'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final knownRansomwareCampaignUse = this.knownRansomwareCampaignUse;
    return {'knownRansomwareCampaignUse': ?knownRansomwareCampaignUse};
  }
}

/// Used by:
///
/// - containeranalysis:v1 : CVSS
/// - ondemandscanning:v1 : CVSS
class $CVSS {
  /// Attack Complexity (AC).
  ///
  /// Defined in CVSS v2, v3, v4.
  /// Possible string values are:
  /// - "ATTACK_COMPLEXITY_UNSPECIFIED" : Unspecified.
  /// - "ATTACK_COMPLEXITY_LOW" : Low attack complexity (AC:L). Defined in CVSS
  /// v2, v3, v4.
  /// - "ATTACK_COMPLEXITY_HIGH" : High attack complexity (AC:H). Defined in
  /// CVSS v2, v3, v4.
  /// - "ATTACK_COMPLEXITY_MEDIUM" : Medium attack complexity (AC:M). Defined in
  /// CVSS v2.
  core.String? attackComplexity;

  /// Attack Requirements (AT).
  ///
  /// Defined in CVSS v4.
  /// Possible string values are:
  /// - "ATTACK_REQUIREMENTS_UNSPECIFIED" : Unspecified.
  /// - "ATTACK_REQUIREMENTS_NONE" : No attack requirements (AT:N). Defined in
  /// CVSS v4.
  /// - "ATTACK_REQUIREMENTS_PRESENT" : Attack requirements: Present (AT:P).
  /// Defined in CVSS v4.
  core.String? attackRequirements;

  /// Attack Vector (AV).
  ///
  /// Defined in CVSS v2, v3, v4.
  /// Possible string values are:
  /// - "ATTACK_VECTOR_UNSPECIFIED" : Unspecified.
  /// - "ATTACK_VECTOR_NETWORK" : Attack Vector: Network (AV:N). Defined in CVSS
  /// v2, v3, v4.
  /// - "ATTACK_VECTOR_ADJACENT" : Attack Vector: Adjacent (AV:A). Defined in
  /// CVSS v2, v3, v4.
  /// - "ATTACK_VECTOR_LOCAL" : Attack Vector: Local (AV:L). Defined in CVSS v2,
  /// v3, v4.
  /// - "ATTACK_VECTOR_PHYSICAL" : Attack Vector: Physical (AV:P). Defined in
  /// CVSS v3, v4.
  core.String? attackVector;

  /// Authentication (Au).
  ///
  /// Defined in CVSS v2.
  /// Possible string values are:
  /// - "AUTHENTICATION_UNSPECIFIED" : Unspecified.
  /// - "AUTHENTICATION_MULTIPLE" : Multiple authentication required (Au:M).
  /// Defined in CVSS v2.
  /// - "AUTHENTICATION_SINGLE" : Single authentication required (Au:S). Defined
  /// in CVSS v2.
  /// - "AUTHENTICATION_NONE" : No authentication required (Au:N). Defined in
  /// CVSS v2.
  core.String? authentication;

  /// Availability Impact (A).
  ///
  /// Defined in CVSS v2, v3.
  /// Possible string values are:
  /// - "IMPACT_UNSPECIFIED" : Unspecified.
  /// - "IMPACT_HIGH" : High impact (H). Defined in CVSS v3, v4.
  /// - "IMPACT_LOW" : Low impact (L). Defined in CVSS v3, v4.
  /// - "IMPACT_NONE" : No impact (N). Defined in CVSS v2, v3, v4.
  /// - "IMPACT_PARTIAL" : Partial impact (P). Defined in CVSS v2.
  /// - "IMPACT_COMPLETE" : Complete impact (C). Defined in CVSS v2.
  core.String? availabilityImpact;

  /// The base score is a function of the base metric scores.
  core.double? baseScore;

  /// Confidentiality Impact (C).
  ///
  /// Defined in CVSS v2, v3.
  /// Possible string values are:
  /// - "IMPACT_UNSPECIFIED" : Unspecified.
  /// - "IMPACT_HIGH" : High impact (H). Defined in CVSS v3, v4.
  /// - "IMPACT_LOW" : Low impact (L). Defined in CVSS v3, v4.
  /// - "IMPACT_NONE" : No impact (N). Defined in CVSS v2, v3, v4.
  /// - "IMPACT_PARTIAL" : Partial impact (P). Defined in CVSS v2.
  /// - "IMPACT_COMPLETE" : Complete impact (C). Defined in CVSS v2.
  core.String? confidentialityImpact;

  /// Exploit Maturity (E).
  ///
  /// Defined in CVSS v4.
  /// Possible string values are:
  /// - "EXPLOIT_MATURITY_UNSPECIFIED" : Unspecified.
  /// - "EXPLOIT_MATURITY_NOT_DEFINED" : Exploit maturity: Not defined (E:X).
  /// Defined in CVSS v4.
  /// - "EXPLOIT_MATURITY_ATTACKED" : Exploit maturity: Attacked (E:A). Defined
  /// in CVSS v4.
  /// - "EXPLOIT_MATURITY_POC" : Exploit maturity: Proof-of-concept (E:P).
  /// Defined in CVSS v4.
  /// - "EXPLOIT_MATURITY_UNREPORTED" : Exploit maturity: Unreported (E:U).
  /// Defined in CVSS v4.
  core.String? exploitMaturity;
  core.double? exploitabilityScore;
  core.double? impactScore;

  /// Integrity Impact (I).
  ///
  /// Defined in CVSS v2, v3.
  /// Possible string values are:
  /// - "IMPACT_UNSPECIFIED" : Unspecified.
  /// - "IMPACT_HIGH" : High impact (H). Defined in CVSS v3, v4.
  /// - "IMPACT_LOW" : Low impact (L). Defined in CVSS v3, v4.
  /// - "IMPACT_NONE" : No impact (N). Defined in CVSS v2, v3, v4.
  /// - "IMPACT_PARTIAL" : Partial impact (P). Defined in CVSS v2.
  /// - "IMPACT_COMPLETE" : Complete impact (C). Defined in CVSS v2.
  core.String? integrityImpact;

  /// Privileges Required (PR).
  ///
  /// Defined in CVSS v3, v4.
  /// Possible string values are:
  /// - "PRIVILEGES_REQUIRED_UNSPECIFIED" : Unspecified.
  /// - "PRIVILEGES_REQUIRED_NONE" : No privileges required (PR:N). Defined in
  /// CVSS v3, v4.
  /// - "PRIVILEGES_REQUIRED_LOW" : Low privileges required (PR:L). Defined in
  /// CVSS v3, v4.
  /// - "PRIVILEGES_REQUIRED_HIGH" : High privileges required (PR:H). Defined in
  /// CVSS v3, v4.
  core.String? privilegesRequired;

  /// Scope (S).
  ///
  /// Defined in CVSS v3.
  /// Possible string values are:
  /// - "SCOPE_UNSPECIFIED" : Unspecified.
  /// - "SCOPE_UNCHANGED" : Scope: Unchanged (S:U). Defined in CVSS v3.
  /// - "SCOPE_CHANGED" : Scope: Changed (S:C). Defined in CVSS v3.
  core.String? scope;

  /// Subsequent System Availability Impact (SA).
  ///
  /// Defined in CVSS v4.
  /// Possible string values are:
  /// - "IMPACT_UNSPECIFIED" : Unspecified.
  /// - "IMPACT_HIGH" : High impact (H). Defined in CVSS v3, v4.
  /// - "IMPACT_LOW" : Low impact (L). Defined in CVSS v3, v4.
  /// - "IMPACT_NONE" : No impact (N). Defined in CVSS v2, v3, v4.
  /// - "IMPACT_PARTIAL" : Partial impact (P). Defined in CVSS v2.
  /// - "IMPACT_COMPLETE" : Complete impact (C). Defined in CVSS v2.
  core.String? subsequentSystemAvailabilityImpact;

  /// Subsequent System Confidentiality Impact (SC).
  ///
  /// Defined in CVSS v4.
  /// Possible string values are:
  /// - "IMPACT_UNSPECIFIED" : Unspecified.
  /// - "IMPACT_HIGH" : High impact (H). Defined in CVSS v3, v4.
  /// - "IMPACT_LOW" : Low impact (L). Defined in CVSS v3, v4.
  /// - "IMPACT_NONE" : No impact (N). Defined in CVSS v2, v3, v4.
  /// - "IMPACT_PARTIAL" : Partial impact (P). Defined in CVSS v2.
  /// - "IMPACT_COMPLETE" : Complete impact (C). Defined in CVSS v2.
  core.String? subsequentSystemConfidentialityImpact;

  /// Subsequent System Integrity Impact (SI).
  ///
  /// Defined in CVSS v4.
  /// Possible string values are:
  /// - "IMPACT_UNSPECIFIED" : Unspecified.
  /// - "IMPACT_HIGH" : High impact (H). Defined in CVSS v3, v4.
  /// - "IMPACT_LOW" : Low impact (L). Defined in CVSS v3, v4.
  /// - "IMPACT_NONE" : No impact (N). Defined in CVSS v2, v3, v4.
  /// - "IMPACT_PARTIAL" : Partial impact (P). Defined in CVSS v2.
  /// - "IMPACT_COMPLETE" : Complete impact (C). Defined in CVSS v2.
  core.String? subsequentSystemIntegrityImpact;

  /// User Interaction (UI).
  ///
  /// Defined in CVSS v3, v4.
  /// Possible string values are:
  /// - "USER_INTERACTION_UNSPECIFIED" : Unspecified.
  /// - "USER_INTERACTION_NONE" : No user interaction required (UI:N). Defined
  /// in CVSS v3, v4.
  /// - "USER_INTERACTION_REQUIRED" : User interaction required (UI:R). Defined
  /// in CVSS v3.
  /// - "USER_INTERACTION_PASSIVE" : Passive user interaction required (UI:P).
  /// Defined in CVSS v4.
  /// - "USER_INTERACTION_ACTIVE" : Active user interaction required (UI:A).
  /// Defined in CVSS v4.
  core.String? userInteraction;

  /// Vulnerable System Availability Impact (VA).
  ///
  /// Defined in CVSS v4.
  /// Possible string values are:
  /// - "IMPACT_UNSPECIFIED" : Unspecified.
  /// - "IMPACT_HIGH" : High impact (H). Defined in CVSS v3, v4.
  /// - "IMPACT_LOW" : Low impact (L). Defined in CVSS v3, v4.
  /// - "IMPACT_NONE" : No impact (N). Defined in CVSS v2, v3, v4.
  /// - "IMPACT_PARTIAL" : Partial impact (P). Defined in CVSS v2.
  /// - "IMPACT_COMPLETE" : Complete impact (C). Defined in CVSS v2.
  core.String? vulnerableSystemAvailabilityImpact;

  /// Vulnerable System Confidentiality Impact (VC).
  ///
  /// Defined in CVSS v4.
  /// Possible string values are:
  /// - "IMPACT_UNSPECIFIED" : Unspecified.
  /// - "IMPACT_HIGH" : High impact (H). Defined in CVSS v3, v4.
  /// - "IMPACT_LOW" : Low impact (L). Defined in CVSS v3, v4.
  /// - "IMPACT_NONE" : No impact (N). Defined in CVSS v2, v3, v4.
  /// - "IMPACT_PARTIAL" : Partial impact (P). Defined in CVSS v2.
  /// - "IMPACT_COMPLETE" : Complete impact (C). Defined in CVSS v2.
  core.String? vulnerableSystemConfidentialityImpact;

  /// Vulnerable System Integrity Impact (VI).
  ///
  /// Defined in CVSS v4.
  /// Possible string values are:
  /// - "IMPACT_UNSPECIFIED" : Unspecified.
  /// - "IMPACT_HIGH" : High impact (H). Defined in CVSS v3, v4.
  /// - "IMPACT_LOW" : Low impact (L). Defined in CVSS v3, v4.
  /// - "IMPACT_NONE" : No impact (N). Defined in CVSS v2, v3, v4.
  /// - "IMPACT_PARTIAL" : Partial impact (P). Defined in CVSS v2.
  /// - "IMPACT_COMPLETE" : Complete impact (C). Defined in CVSS v2.
  core.String? vulnerableSystemIntegrityImpact;

  $CVSS({
    this.attackComplexity,
    this.attackRequirements,
    this.attackVector,
    this.authentication,
    this.availabilityImpact,
    this.baseScore,
    this.confidentialityImpact,
    this.exploitMaturity,
    this.exploitabilityScore,
    this.impactScore,
    this.integrityImpact,
    this.privilegesRequired,
    this.scope,
    this.subsequentSystemAvailabilityImpact,
    this.subsequentSystemConfidentialityImpact,
    this.subsequentSystemIntegrityImpact,
    this.userInteraction,
    this.vulnerableSystemAvailabilityImpact,
    this.vulnerableSystemConfidentialityImpact,
    this.vulnerableSystemIntegrityImpact,
  });

  $CVSS.fromJson(core.Map json_)
    : this(
        attackComplexity: json_['attackComplexity'] as core.String?,
        attackRequirements: json_['attackRequirements'] as core.String?,
        attackVector: json_['attackVector'] as core.String?,
        authentication: json_['authentication'] as core.String?,
        availabilityImpact: json_['availabilityImpact'] as core.String?,
        baseScore: (json_['baseScore'] as core.num?)?.toDouble(),
        confidentialityImpact: json_['confidentialityImpact'] as core.String?,
        exploitMaturity: json_['exploitMaturity'] as core.String?,
        exploitabilityScore: (json_['exploitabilityScore'] as core.num?)
            ?.toDouble(),
        impactScore: (json_['impactScore'] as core.num?)?.toDouble(),
        integrityImpact: json_['integrityImpact'] as core.String?,
        privilegesRequired: json_['privilegesRequired'] as core.String?,
        scope: json_['scope'] as core.String?,
        subsequentSystemAvailabilityImpact:
            json_['subsequentSystemAvailabilityImpact'] as core.String?,
        subsequentSystemConfidentialityImpact:
            json_['subsequentSystemConfidentialityImpact'] as core.String?,
        subsequentSystemIntegrityImpact:
            json_['subsequentSystemIntegrityImpact'] as core.String?,
        userInteraction: json_['userInteraction'] as core.String?,
        vulnerableSystemAvailabilityImpact:
            json_['vulnerableSystemAvailabilityImpact'] as core.String?,
        vulnerableSystemConfidentialityImpact:
            json_['vulnerableSystemConfidentialityImpact'] as core.String?,
        vulnerableSystemIntegrityImpact:
            json_['vulnerableSystemIntegrityImpact'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final attackComplexity = this.attackComplexity;
    final attackRequirements = this.attackRequirements;
    final attackVector = this.attackVector;
    final authentication = this.authentication;
    final availabilityImpact = this.availabilityImpact;
    final baseScore = this.baseScore;
    final confidentialityImpact = this.confidentialityImpact;
    final exploitMaturity = this.exploitMaturity;
    final exploitabilityScore = this.exploitabilityScore;
    final impactScore = this.impactScore;
    final integrityImpact = this.integrityImpact;
    final privilegesRequired = this.privilegesRequired;
    final scope = this.scope;
    final subsequentSystemAvailabilityImpact =
        this.subsequentSystemAvailabilityImpact;
    final subsequentSystemConfidentialityImpact =
        this.subsequentSystemConfidentialityImpact;
    final subsequentSystemIntegrityImpact =
        this.subsequentSystemIntegrityImpact;
    final userInteraction = this.userInteraction;
    final vulnerableSystemAvailabilityImpact =
        this.vulnerableSystemAvailabilityImpact;
    final vulnerableSystemConfidentialityImpact =
        this.vulnerableSystemConfidentialityImpact;
    final vulnerableSystemIntegrityImpact =
        this.vulnerableSystemIntegrityImpact;
    return {
      'attackComplexity': ?attackComplexity,
      'attackRequirements': ?attackRequirements,
      'attackVector': ?attackVector,
      'authentication': ?authentication,
      'availabilityImpact': ?availabilityImpact,
      'baseScore': ?baseScore,
      'confidentialityImpact': ?confidentialityImpact,
      'exploitMaturity': ?exploitMaturity,
      'exploitabilityScore': ?exploitabilityScore,
      'impactScore': ?impactScore,
      'integrityImpact': ?integrityImpact,
      'privilegesRequired': ?privilegesRequired,
      'scope': ?scope,
      'subsequentSystemAvailabilityImpact': ?subsequentSystemAvailabilityImpact,
      'subsequentSystemConfidentialityImpact':
          ?subsequentSystemConfidentialityImpact,
      'subsequentSystemIntegrityImpact': ?subsequentSystemIntegrityImpact,
      'userInteraction': ?userInteraction,
      'vulnerableSystemAvailabilityImpact': ?vulnerableSystemAvailabilityImpact,
      'vulnerableSystemConfidentialityImpact':
          ?vulnerableSystemConfidentialityImpact,
      'vulnerableSystemIntegrityImpact': ?vulnerableSystemIntegrityImpact,
    };
  }
}

/// Used by:
///
/// - chromemanagement:v1 : GoogleChromeManagementVersionsV1GenericCaConnection
/// - chromemanagement:v1 : GoogleChromeManagementVersionsV1ScepCaConnection
class $CaConnection {
  /// A string that references the administrator-provided configuration for the
  /// certification authority service.
  ///
  /// Output only.
  core.String? caConnectionAdapterConfigReference;

  $CaConnection({this.caConnectionAdapterConfigReference});

  $CaConnection.fromJson(core.Map json_)
    : this(
        caConnectionAdapterConfigReference:
            json_['caConnectionAdapterConfigReference'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final caConnectionAdapterConfigReference =
        this.caConnectionAdapterConfigReference;
    return {
      'caConnectionAdapterConfigReference': ?caConnectionAdapterConfigReference,
    };
  }
}

/// Used by:
///
/// - containeranalysis:v1 : Category
/// - ondemandscanning:v1 : Category
class $Category {
  /// The identifier of the category.
  core.String? categoryId;

  /// The localized name of the category.
  core.String? name;

  $Category({this.categoryId, this.name});

  $Category.fromJson(core.Map json_)
    : this(
        categoryId: json_['categoryId'] as core.String?,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final categoryId = this.categoryId;
    final name = this.name;
    return {'categoryId': ?categoryId, 'name': ?name};
  }
}

/// Used by:
///
/// - compute:v1 : BackendBucketCdnPolicyBypassCacheOnRequestHeader
/// - compute:v1 : BackendServiceCdnPolicyBypassCacheOnRequestHeader
class $CdnPolicyBypassCacheOnRequestHeader {
  /// The header field name to match on when bypassing cache.
  /// Values are case-insensitive.
  core.String? headerName;

  $CdnPolicyBypassCacheOnRequestHeader({this.headerName});

  $CdnPolicyBypassCacheOnRequestHeader.fromJson(core.Map json_)
    : this(headerName: json_['headerName'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final headerName = this.headerName;
    return {'headerName': ?headerName};
  }
}

/// Used by:
///
/// - compute:v1 : BackendBucketCdnPolicyNegativeCachingPolicy
/// - compute:v1 : BackendServiceCdnPolicyNegativeCachingPolicy
class $CdnPolicyNegativeCachingPolicy {
  /// The HTTP status code to define a TTL against.
  ///
  /// Only HTTP status codes
  /// 300, 301, 302, 307, 308, 404, 405, 410, 421, 451 and 501 can be
  /// specified as values, and you cannot specify a status code more than
  /// once.
  core.int? code;

  /// The TTL (in seconds) for which to cache responses with the
  /// corresponding status code.
  /// The maximum allowed value is 1800s (30 minutes), noting that
  /// infrequently accessed objects may be evicted from the cache before the
  /// defined TTL.
  core.int? ttl;

  $CdnPolicyNegativeCachingPolicy({this.code, this.ttl});

  $CdnPolicyNegativeCachingPolicy.fromJson(core.Map json_)
    : this(code: json_['code'] as core.int?, ttl: json_['ttl'] as core.int?);

  core.Map<core.String, core.dynamic> toJson() {
    final code = this.code;
    final ttl = this.ttl;
    return {'code': ?code, 'ttl': ?ttl};
  }
}

/// Used by:
///
/// - privateca:v1 : CertChain
/// - redis:v1 : CertChain
/// - redis:v1 : RegionalCertChain
class $CertChain {
  /// The certificates that form the CA chain, from leaf to root order.
  core.List<core.String>? certificates;

  $CertChain({this.certificates});

  $CertChain.fromJson(core.Map json_)
    : this(
        certificates: (json_['certificates'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final certificates = this.certificates;
    return {'certificates': ?certificates};
  }
}

/// Used by:
///
/// - cloudkms:v1 : CertificateChains
/// - kmsinventory:v1 : GoogleCloudKmsV1KeyOperationAttestationCertificateChains
class $CertificateChains {
  /// Cavium certificate chain corresponding to the attestation.
  core.List<core.String>? caviumCerts;

  /// Google card certificate chain corresponding to the attestation.
  core.List<core.String>? googleCardCerts;

  /// Google partition certificate chain corresponding to the attestation.
  core.List<core.String>? googlePartitionCerts;

  $CertificateChains({
    this.caviumCerts,
    this.googleCardCerts,
    this.googlePartitionCerts,
  });

  $CertificateChains.fromJson(core.Map json_)
    : this(
        caviumCerts: (json_['caviumCerts'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        googleCardCerts: (json_['googleCardCerts'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        googlePartitionCerts: (json_['googlePartitionCerts'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final caviumCerts = this.caviumCerts;
    final googleCardCerts = this.googleCardCerts;
    final googlePartitionCerts = this.googlePartitionCerts;
    return {
      'caviumCerts': ?caviumCerts,
      'googleCardCerts': ?googleCardCerts,
      'googlePartitionCerts': ?googlePartitionCerts,
    };
  }
}

/// Used by:
///
/// - manufacturers:v1 : Certification
/// - manufacturers:v1 : GoogleShoppingManufacturersV1ProductCertification
class $Certification {
  /// Name of the certification body.
  ///
  /// Required.
  core.String? authority;

  /// A unique code to identify the certification.
  ///
  /// Optional.
  core.String? code;

  /// A URL link to the certification.
  ///
  /// Optional.
  core.String? link;

  /// A URL link to the certification logo.
  ///
  /// Optional.
  core.String? logo;

  /// Name of the certification.
  ///
  /// Required.
  core.String? name;

  /// The expiration date (UTC).
  ///
  /// Optional.
  core.String? validUntil;

  /// A custom value of the certification.
  ///
  /// Optional.
  core.String? value;

  $Certification({
    this.authority,
    this.code,
    this.link,
    this.logo,
    this.name,
    this.validUntil,
    this.value,
  });

  $Certification.fromJson(core.Map json_)
    : this(
        authority: json_['authority'] as core.String?,
        code: json_['code'] as core.String?,
        link: json_['link'] as core.String?,
        logo: json_['logo'] as core.String?,
        name: json_['name'] as core.String?,
        validUntil: json_['validUntil'] as core.String?,
        value: json_['value'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final authority = this.authority;
    final code = this.code;
    final link = this.link;
    final logo = this.logo;
    final name = this.name;
    final validUntil = this.validUntil;
    final value = this.value;
    return {
      'authority': ?authority,
      'code': ?code,
      'link': ?link,
      'logo': ?logo,
      'name': ?name,
      'validUntil': ?validUntil,
      'value': ?value,
    };
  }
}

/// Used by:
///
/// - gkeonprem:v1 : BareMetalAdminClusterOperationsConfig
/// - gkeonprem:v1 : BareMetalClusterOperationsConfig
class $ClusterOperationsConfig {
  /// Whether collection of application logs/metrics should be enabled (in
  /// addition to system logs/metrics).
  core.bool? enableApplicationLogs;

  $ClusterOperationsConfig({this.enableApplicationLogs});

  $ClusterOperationsConfig.fromJson(core.Map json_)
    : this(enableApplicationLogs: json_['enableApplicationLogs'] as core.bool?);

  core.Map<core.String, core.dynamic> toJson() {
    final enableApplicationLogs = this.enableApplicationLogs;
    return {'enableApplicationLogs': ?enableApplicationLogs};
  }
}

/// Used by:
///
/// - airquality:v1 : Color
/// - chat:v1 : Color
/// - documentai:v1 : GoogleTypeColor
/// - drivelabels:v2 : GoogleTypeColor
/// - fcm:v1 : Color
/// - pollen:v1 : Color
/// - sheets:v4 : Color
/// - vision:v1 : Color
class $Color {
  /// The fraction of this color that should be applied to the pixel.
  ///
  /// That is, the final pixel color is defined by the equation: `pixel color =
  /// alpha * (this color) + (1.0 - alpha) * (background color)` This means that
  /// a value of 1.0 corresponds to a solid color, whereas a value of 0.0
  /// corresponds to a completely transparent color. This uses a wrapper message
  /// rather than a simple float scalar so that it is possible to distinguish
  /// between a default value and the value being unset. If omitted, this color
  /// object is rendered as a solid color (as if the alpha value had been
  /// explicitly given a value of 1.0).
  core.double? alpha;

  /// The amount of blue in the color as a value in the interval \[0, 1\].
  core.double? blue;

  /// The amount of green in the color as a value in the interval \[0, 1\].
  core.double? green;

  /// The amount of red in the color as a value in the interval \[0, 1\].
  core.double? red;

  $Color({this.alpha, this.blue, this.green, this.red});

  $Color.fromJson(core.Map json_)
    : this(
        alpha: (json_['alpha'] as core.num?)?.toDouble(),
        blue: (json_['blue'] as core.num?)?.toDouble(),
        green: (json_['green'] as core.num?)?.toDouble(),
        red: (json_['red'] as core.num?)?.toDouble(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final alpha = this.alpha;
    final blue = this.blue;
    final green = this.green;
    final red = this.red;
    return {'alpha': ?alpha, 'blue': ?blue, 'green': ?green, 'red': ?red};
  }
}

/// Used by:
///
/// - containeranalysis:v1 : Command
/// - ondemandscanning:v1 : Command
class $Command {
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

  $Command({this.args, this.dir, this.env, this.id, this.name, this.waitFor});

  $Command.fromJson(core.Map json_)
    : this(
        args: (json_['args'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        dir: json_['dir'] as core.String?,
        env: (json_['env'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        id: json_['id'] as core.String?,
        name: json_['name'] as core.String?,
        waitFor: (json_['waitFor'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final args = this.args;
    final dir = this.dir;
    final env = this.env;
    final id = this.id;
    final name = this.name;
    final waitFor = this.waitFor;
    return {
      'args': ?args,
      'dir': ?dir,
      'env': ?env,
      'id': ?id,
      'name': ?name,
      'waitFor': ?waitFor,
    };
  }
}

/// Used by:
///
/// - containeranalysis:v1 : Completeness
/// - containeranalysis:v1 : SlsaCompleteness
/// - ondemandscanning:v1 : Completeness
/// - ondemandscanning:v1 : SlsaCompleteness
class $Completeness {
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

  $Completeness({this.arguments, this.environment, this.materials});

  $Completeness.fromJson(core.Map json_)
    : this(
        arguments: json_['arguments'] as core.bool?,
        environment: json_['environment'] as core.bool?,
        materials: json_['materials'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final arguments = this.arguments;
    final environment = this.environment;
    final materials = this.materials;
    return {
      'arguments': ?arguments,
      'environment': ?environment,
      'materials': ?materials,
    };
  }
}

/// Used by:
///
/// - containeranalysis:v1 : ComplianceVersion
/// - ondemandscanning:v1 : ComplianceVersion
class $ComplianceVersion {
  /// The name of the document that defines this benchmark, e.g. "CIS
  /// Container-Optimized OS".
  core.String? benchmarkDocument;

  /// The CPE URI (https://cpe.mitre.org/specification/) this benchmark is
  /// applicable to.
  core.String? cpeUri;

  /// The version of the benchmark.
  ///
  /// This is set to the version of the OS-specific CIS document the benchmark
  /// is defined in.
  core.String? version;

  $ComplianceVersion({this.benchmarkDocument, this.cpeUri, this.version});

  $ComplianceVersion.fromJson(core.Map json_)
    : this(
        benchmarkDocument: json_['benchmarkDocument'] as core.String?,
        cpeUri: json_['cpeUri'] as core.String?,
        version: json_['version'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final benchmarkDocument = this.benchmarkDocument;
    final cpeUri = this.cpeUri;
    final version = this.version;
    return {
      'benchmarkDocument': ?benchmarkDocument,
      'cpeUri': ?cpeUri,
      'version': ?version,
    };
  }
}

/// Used by:
///
/// - analyticshub:v1 : Compression
/// - pubsub:v1 : Compression
class $Compression {
  /// Specifies the compression algorithm to use.
  ///
  /// Required.
  /// Possible string values are:
  /// - "COMPRESSION_ALGORITHM_UNSPECIFIED" : Unspecified algorithm.
  /// - "ZLIB" : ZLIB compression.
  core.String? compressionAlgorithm;

  /// Specifies whether to compress or decompress the message.
  ///
  /// Required.
  /// Possible string values are:
  /// - "COMPRESSION_MODE_UNSPECIFIED" : Unspecified mode.
  /// - "COMPRESS" : Compress.
  /// - "DECOMPRESS" : Decompress.
  core.String? compressionMode;

  $Compression({this.compressionAlgorithm, this.compressionMode});

  $Compression.fromJson(core.Map json_)
    : this(
        compressionAlgorithm: json_['compressionAlgorithm'] as core.String?,
        compressionMode: json_['compressionMode'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final compressionAlgorithm = this.compressionAlgorithm;
    final compressionMode = this.compressionMode;
    return {
      'compressionAlgorithm': ?compressionAlgorithm,
      'compressionMode': ?compressionMode,
    };
  }
}

/// Used by:
///
/// - aiplatform:v1 : GoogleCloudAiplatformV1ComputationBasedMetricSpec
/// - aiplatform:v1 : GoogleCloudAiplatformV1EvaluationRunMetricComputationBasedMetricSpec
class $ComputationBasedMetricSpec {
  /// A map of parameters for the metric, e.g. {"rouge_type": "rougeL"}.
  ///
  /// Optional.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? parameters;

  /// The type of the computation based metric.
  ///
  /// Required.
  /// Possible string values are:
  /// - "COMPUTATION_BASED_METRIC_TYPE_UNSPECIFIED" : Unspecified computation
  /// based metric type.
  /// - "EXACT_MATCH" : Exact match metric.
  /// - "BLEU" : BLEU metric.
  /// - "ROUGE" : ROUGE metric.
  core.String? type;

  $ComputationBasedMetricSpec({this.parameters, this.type});

  $ComputationBasedMetricSpec.fromJson(core.Map json_)
    : this(
        parameters: json_.containsKey('parameters')
            ? json_['parameters'] as core.Map<core.String, core.dynamic>
            : null,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final parameters = this.parameters;
    final type = this.type;
    return {'parameters': ?parameters, 'type': ?type};
  }
}

/// Used by:
///
/// - dataplex:v1 : GoogleCloudDataplexV1DataQualityRuleRowConditionExpectation
/// - dataplex:v1 : GoogleCloudDataplexV1DataQualityRuleTableConditionExpectation
class $ConditionExpectation {
  /// The SQL expression.
  ///
  /// Optional.
  core.String? sqlExpression;

  $ConditionExpectation({this.sqlExpression});

  $ConditionExpectation.fromJson(core.Map json_)
    : this(sqlExpression: json_['sqlExpression'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final sqlExpression = this.sqlExpression;
    return {'sqlExpression': ?sqlExpression};
  }
}

/// Used by:
///
/// - backupdr:v1 : PostRestoreConfig
/// - backupdr:v1 : PreRestoreConfig
/// - backupdr:v1 : VerificationConfig
class $Config00 {
  /// Cloud Run job action to execute.
  ///
  /// Format: `projects/{project}/locations/{location}/jobs/{job}`
  core.String? cloudRunJob;

  /// The `timeout` for this phase.
  ///
  /// If set, the `timeout` must be positive and less than or equal to 24 hours
  /// (86400s).
  ///
  /// Optional.
  core.String? timeout;

  $Config00({this.cloudRunJob, this.timeout});

  $Config00.fromJson(core.Map json_)
    : this(
        cloudRunJob: json_['cloudRunJob'] as core.String?,
        timeout: json_['timeout'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final cloudRunJob = this.cloudRunJob;
    final timeout = this.timeout;
    return {'cloudRunJob': ?cloudRunJob, 'timeout': ?timeout};
  }
}

/// Used by:
///
/// - dialogflow:v2 : GoogleCloudDialogflowV2EvaluationConfigSmartComposeConfig
/// - dialogflow:v2 : GoogleCloudDialogflowV2EvaluationConfigSmartReplyConfig
class $Config01 {
  core.String? allowlistDocument;
  core.int? maxResultCount;

  $Config01({this.allowlistDocument, this.maxResultCount});

  $Config01.fromJson(core.Map json_)
    : this(
        allowlistDocument: json_['allowlistDocument'] as core.String?,
        maxResultCount: json_['maxResultCount'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final allowlistDocument = this.allowlistDocument;
    final maxResultCount = this.maxResultCount;
    return {
      'allowlistDocument': ?allowlistDocument,
      'maxResultCount': ?maxResultCount,
    };
  }
}

/// Used by:
///
/// - agentregistry:v1 : ContactInfo
/// - apphub:v1 : ContactInfo
class $ContactInfo {
  /// Contact's name.
  ///
  /// Can have a maximum length of 63 characters.
  ///
  /// Optional.
  core.String? displayName;

  /// Email address of the contacts.
  ///
  /// Required.
  core.String? email;

  $ContactInfo({this.displayName, this.email});

  $ContactInfo.fromJson(core.Map json_)
    : this(
        displayName: json_['displayName'] as core.String?,
        email: json_['email'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final displayName = this.displayName;
    final email = this.email;
    return {'displayName': ?displayName, 'email': ?email};
  }
}

/// Used by:
///
/// - firebaseappdistribution:v1 : GdataContentTypeInfo
/// - walletobjects:v1 : ContentTypeInfo
class $ContentTypeInfo {
  /// Scotty's best guess of what the content type of the file is.
  core.String? bestGuess;

  /// The content type of the file derived by looking at specific bytes (i.e.
  /// "magic bytes") of the actual file.
  core.String? fromBytes;

  /// The content type of the file derived from the file extension of the
  /// original file name used by the client.
  core.String? fromFileName;

  /// The content type of the file detected by Fusion ID.
  ///
  /// go/fusionid
  core.String? fromFusionId;

  /// The content type of the file as specified in the request headers,
  /// multipart headers, or RUPIO start request.
  core.String? fromHeader;

  /// The content type of the file derived from the file extension of the URL
  /// path.
  ///
  /// The URL path is assumed to represent a file name (which is typically only
  /// true for agents that are providing a REST API).
  core.String? fromUrlPath;

  /// Metadata information from Fusion ID detection.
  ///
  /// Serialized FusionIdDetectionMetadata proto. Only set if from_fusion_id is
  /// set.
  core.String? fusionIdDetectionMetadata;
  core.List<core.int> get fusionIdDetectionMetadataAsBytes =>
      convert.base64.decode(fusionIdDetectionMetadata!);

  set fusionIdDetectionMetadataAsBytes(core.List<core.int> bytes_) {
    fusionIdDetectionMetadata = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  $ContentTypeInfo({
    this.bestGuess,
    this.fromBytes,
    this.fromFileName,
    this.fromFusionId,
    this.fromHeader,
    this.fromUrlPath,
    this.fusionIdDetectionMetadata,
  });

  $ContentTypeInfo.fromJson(core.Map json_)
    : this(
        bestGuess: json_['bestGuess'] as core.String?,
        fromBytes: json_['fromBytes'] as core.String?,
        fromFileName: json_['fromFileName'] as core.String?,
        fromFusionId: json_['fromFusionId'] as core.String?,
        fromHeader: json_['fromHeader'] as core.String?,
        fromUrlPath: json_['fromUrlPath'] as core.String?,
        fusionIdDetectionMetadata:
            json_['fusionIdDetectionMetadata'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final bestGuess = this.bestGuess;
    final fromBytes = this.fromBytes;
    final fromFileName = this.fromFileName;
    final fromFusionId = this.fromFusionId;
    final fromHeader = this.fromHeader;
    final fromUrlPath = this.fromUrlPath;
    final fusionIdDetectionMetadata = this.fusionIdDetectionMetadata;
    return {
      'bestGuess': ?bestGuess,
      'fromBytes': ?fromBytes,
      'fromFileName': ?fromFileName,
      'fromFusionId': ?fromFusionId,
      'fromHeader': ?fromHeader,
      'fromUrlPath': ?fromUrlPath,
      'fusionIdDetectionMetadata': ?fusionIdDetectionMetadata,
    };
  }
}

/// Used by:
///
/// - aiplatform:v1 : GoogleCloudAiplatformV1AddContextChildrenRequest
/// - aiplatform:v1 : GoogleCloudAiplatformV1RemoveContextChildrenRequest
class $ContextChildrenRequest {
  /// The resource names of the child Contexts.
  core.List<core.String>? childContexts;

  $ContextChildrenRequest({this.childContexts});

  $ContextChildrenRequest.fromJson(core.Map json_)
    : this(
        childContexts: (json_['childContexts'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final childContexts = this.childContexts;
    return {'childContexts': ?childContexts};
  }
}

/// Used by:
///
/// - authorizedbuyersmarketplace:v1 : CriteriaTargeting
/// - curationpartners:v1 : CriteriaTargeting
class $CriteriaTargeting {
  /// A list of numeric IDs to be excluded.
  core.List<core.String>? excludedCriteriaIds;

  /// A list of numeric IDs to be included.
  core.List<core.String>? targetedCriteriaIds;

  $CriteriaTargeting({this.excludedCriteriaIds, this.targetedCriteriaIds});

  $CriteriaTargeting.fromJson(core.Map json_)
    : this(
        excludedCriteriaIds: (json_['excludedCriteriaIds'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        targetedCriteriaIds: (json_['targetedCriteriaIds'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final excludedCriteriaIds = this.excludedCriteriaIds;
    final targetedCriteriaIds = this.targetedCriteriaIds;
    return {
      'excludedCriteriaIds': ?excludedCriteriaIds,
      'targetedCriteriaIds': ?targetedCriteriaIds,
    };
  }
}

/// Used by:
///
/// - agentregistry:v1 : Criticality
/// - apphub:v1 : Criticality
class $Criticality {
  /// Criticality Type.
  ///
  /// Required.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Unspecified type.
  /// - "MISSION_CRITICAL" : Mission critical service, application or workload.
  /// - "HIGH" : High impact.
  /// - "MEDIUM" : Medium impact.
  /// - "LOW" : Low impact.
  core.String? type;

  $Criticality({this.type});

  $Criticality.fromJson(core.Map json_)
    : this(type: json_['type'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final type = this.type;
    return {'type': ?type};
  }
}

/// Used by:
///
/// - cloudkms:v1 : CryptoKeyVersionTemplate
/// - kmsinventory:v1 : GoogleCloudKmsV1CryptoKeyVersionTemplate
class $CryptoKeyVersionTemplate {
  /// Algorithm to use when creating a CryptoKeyVersion based on this template.
  ///
  /// For backwards compatibility, GOOGLE_SYMMETRIC_ENCRYPTION is implied if
  /// both this field is omitted and CryptoKey.purpose is ENCRYPT_DECRYPT.
  ///
  /// Required.
  /// Possible string values are:
  /// - "CRYPTO_KEY_VERSION_ALGORITHM_UNSPECIFIED" : Not specified.
  /// - "GOOGLE_SYMMETRIC_ENCRYPTION" : Creates symmetric encryption keys.
  /// - "AES_128_GCM" : AES-GCM (Galois Counter Mode) using 128-bit keys.
  /// - "AES_256_GCM" : AES-GCM (Galois Counter Mode) using 256-bit keys.
  /// - "AES_128_CBC" : AES-CBC (Cipher Block Chaining Mode) using 128-bit keys.
  /// - "AES_256_CBC" : AES-CBC (Cipher Block Chaining Mode) using 256-bit keys.
  /// - "AES_128_CTR" : AES-CTR (Counter Mode) using 128-bit keys.
  /// - "AES_256_CTR" : AES-CTR (Counter Mode) using 256-bit keys.
  /// - "RSA_SIGN_PSS_2048_SHA256" : RSASSA-PSS 2048 bit key with a SHA256
  /// digest.
  /// - "RSA_SIGN_PSS_3072_SHA256" : RSASSA-PSS 3072 bit key with a SHA256
  /// digest.
  /// - "RSA_SIGN_PSS_4096_SHA256" : RSASSA-PSS 4096 bit key with a SHA256
  /// digest.
  /// - "RSA_SIGN_PSS_4096_SHA512" : RSASSA-PSS 4096 bit key with a SHA512
  /// digest.
  /// - "RSA_SIGN_PKCS1_2048_SHA256" : RSASSA-PKCS1-v1_5 with a 2048 bit key and
  /// a SHA256 digest.
  /// - "RSA_SIGN_PKCS1_3072_SHA256" : RSASSA-PKCS1-v1_5 with a 3072 bit key and
  /// a SHA256 digest.
  /// - "RSA_SIGN_PKCS1_4096_SHA256" : RSASSA-PKCS1-v1_5 with a 4096 bit key and
  /// a SHA256 digest.
  /// - "RSA_SIGN_PKCS1_4096_SHA512" : RSASSA-PKCS1-v1_5 with a 4096 bit key and
  /// a SHA512 digest.
  /// - "RSA_SIGN_RAW_PKCS1_2048" : RSASSA-PKCS1-v1_5 signing without encoding,
  /// with a 2048 bit key.
  /// - "RSA_SIGN_RAW_PKCS1_3072" : RSASSA-PKCS1-v1_5 signing without encoding,
  /// with a 3072 bit key.
  /// - "RSA_SIGN_RAW_PKCS1_4096" : RSASSA-PKCS1-v1_5 signing without encoding,
  /// with a 4096 bit key.
  /// - "RSA_DECRYPT_OAEP_2048_SHA256" : RSAES-OAEP 2048 bit key with a SHA256
  /// digest.
  /// - "RSA_DECRYPT_OAEP_3072_SHA256" : RSAES-OAEP 3072 bit key with a SHA256
  /// digest.
  /// - "RSA_DECRYPT_OAEP_4096_SHA256" : RSAES-OAEP 4096 bit key with a SHA256
  /// digest.
  /// - "RSA_DECRYPT_OAEP_4096_SHA512" : RSAES-OAEP 4096 bit key with a SHA512
  /// digest.
  /// - "RSA_DECRYPT_OAEP_2048_SHA1" : RSAES-OAEP 2048 bit key with a SHA1
  /// digest.
  /// - "RSA_DECRYPT_OAEP_3072_SHA1" : RSAES-OAEP 3072 bit key with a SHA1
  /// digest.
  /// - "RSA_DECRYPT_OAEP_4096_SHA1" : RSAES-OAEP 4096 bit key with a SHA1
  /// digest.
  /// - "EC_SIGN_P256_SHA256" : ECDSA on the NIST P-256 curve with a SHA256
  /// digest. Other hash functions can also be used:
  /// https://cloud.google.com/kms/docs/create-validate-signatures#ecdsa_support_for_other_hash_algorithms
  /// - "EC_SIGN_P384_SHA384" : ECDSA on the NIST P-384 curve with a SHA384
  /// digest. Other hash functions can also be used:
  /// https://cloud.google.com/kms/docs/create-validate-signatures#ecdsa_support_for_other_hash_algorithms
  /// - "EC_SIGN_SECP256K1_SHA256" : ECDSA on the non-NIST secp256k1 curve. This
  /// curve is only supported for HSM protection level. Other hash functions can
  /// also be used:
  /// https://cloud.google.com/kms/docs/create-validate-signatures#ecdsa_support_for_other_hash_algorithms
  /// - "EC_SIGN_ED25519" : EdDSA on the Curve25519 in pure mode (taking data as
  /// input).
  /// - "HMAC_SHA256" : HMAC-SHA256 signing with a 256 bit key.
  /// - "HMAC_SHA1" : HMAC-SHA1 signing with a 160 bit key.
  /// - "HMAC_SHA384" : HMAC-SHA384 signing with a 384 bit key.
  /// - "HMAC_SHA512" : HMAC-SHA512 signing with a 512 bit key.
  /// - "HMAC_SHA224" : HMAC-SHA224 signing with a 224 bit key.
  /// - "EXTERNAL_SYMMETRIC_ENCRYPTION" : Algorithm representing symmetric
  /// encryption by an external key manager.
  /// - "ML_KEM_768" : ML-KEM-768 (FIPS 203)
  /// - "ML_KEM_1024" : ML-KEM-1024 (FIPS 203)
  /// - "KEM_XWING" : X-Wing hybrid KEM combining ML-KEM-768 with X25519
  /// following datatracker.ietf.org/doc/draft-connolly-cfrg-xwing-kem/.
  /// - "PQ_SIGN_ML_DSA_44" : The post-quantum Module-Lattice-Based Digital
  /// Signature Algorithm, at security level 1. Randomized version.
  /// - "PQ_SIGN_ML_DSA_65" : The post-quantum Module-Lattice-Based Digital
  /// Signature Algorithm, at security level 3. Randomized version.
  /// - "PQ_SIGN_ML_DSA_87" : The post-quantum Module-Lattice-Based Digital
  /// Signature Algorithm, at security level 5. Randomized version.
  /// - "PQ_SIGN_SLH_DSA_SHA2_128S" : The post-quantum stateless hash-based
  /// digital signature algorithm, at security level 1. Randomized version.
  /// - "PQ_SIGN_HASH_SLH_DSA_SHA2_128S_SHA256" : The post-quantum stateless
  /// hash-based digital signature algorithm, at security level 1. Randomized
  /// pre-hash version supporting SHA256 digests.
  /// - "PQ_SIGN_ML_DSA_44_EXTERNAL_MU" : The post-quantum Module-Lattice-Based
  /// Digital Signature Algorithm, at security level 1. Randomized version
  /// supporting externally-computed message representatives.
  /// - "PQ_SIGN_ML_DSA_65_EXTERNAL_MU" : The post-quantum Module-Lattice-Based
  /// Digital Signature Algorithm, at security level 3. Randomized version
  /// supporting externally-computed message representatives.
  /// - "PQ_SIGN_ML_DSA_87_EXTERNAL_MU" : The post-quantum Module-Lattice-Based
  /// Digital Signature Algorithm, at security level 5. Randomized version
  /// supporting externally-computed message representatives.
  /// - "KEM_ECDH_P256" : Key encapsulation: Elliptic Curve Diffie-Hellman with
  /// NIST P-256 key that returns shared secret.
  /// - "KEM_ECDH_P384" : Key encapsulation: Elliptic Curve Diffie-Hellman with
  /// NIST P-384 key that returns shared secret.
  /// - "AES_256_KWP" : AES key wrap with zero padding algorithm (RFC 5649). Can
  /// only be used by keys with purpose AES_WRAPPING.
  core.String? algorithm;

  /// ProtectionLevel to use when creating a CryptoKeyVersion based on this
  /// template.
  ///
  /// Immutable. Defaults to SOFTWARE.
  /// Possible string values are:
  /// - "PROTECTION_LEVEL_UNSPECIFIED" : Not specified.
  /// - "SOFTWARE" : Crypto operations are performed in software.
  /// - "HSM" : Crypto operations are performed in a Hardware Security Module.
  /// - "EXTERNAL" : Crypto operations are performed by an external key manager.
  /// - "EXTERNAL_VPC" : Crypto operations are performed in an EKM-over-VPC
  /// backend.
  /// - "HSM_SINGLE_TENANT" : Crypto operations are performed in a single-tenant
  /// HSM.
  core.String? protectionLevel;

  $CryptoKeyVersionTemplate({this.algorithm, this.protectionLevel});

  $CryptoKeyVersionTemplate.fromJson(core.Map json_)
    : this(
        algorithm: json_['algorithm'] as core.String?,
        protectionLevel: json_['protectionLevel'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final algorithm = this.algorithm;
    final protectionLevel = this.protectionLevel;
    return {'algorithm': ?algorithm, 'protectionLevel': ?protectionLevel};
  }
}

/// Used by:
///
/// - datamanager:v1 : CustomVariable
/// - datamanager:v1 : ItemCustomVariable
class $CustomVariable {
  core.List<core.String>? destinationReferences;
  core.String? value;
  core.String? variable;

  $CustomVariable({this.destinationReferences, this.value, this.variable});

  $CustomVariable.fromJson(core.Map json_)
    : this(
        destinationReferences: (json_['destinationReferences'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        value: json_['value'] as core.String?,
        variable: json_['variable'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final destinationReferences = this.destinationReferences;
    final value = this.value;
    final variable = this.variable;
    return {
      'destinationReferences': ?destinationReferences,
      'value': ?value,
      'variable': ?variable,
    };
  }
}

/// Used by:
///
/// - searchads360:v23 : GoogleAdsSearchads360V23Services__CreateDataLinkResponse
/// - searchads360:v23 : GoogleAdsSearchads360V23Services__UpdateDataLinkResponse
class $DataLinkResponse {
  /// Returned for successful operations.
  ///
  /// Resource name of the data link.
  core.String? resourceName;

  $DataLinkResponse({this.resourceName});

  $DataLinkResponse.fromJson(core.Map json_)
    : this(resourceName: json_['resourceName'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final resourceName = this.resourceName;
    return {'resourceName': ?resourceName};
  }
}

/// Used by:
///
/// - admin:reports_v1 : Date
/// - admob:v1 : Date
/// - adsense:v2 : Date
/// - agenciesandbrands:v1 : Date
/// - aiplatform:v1 : GoogleTypeDate
/// - alloydb:v1 : GoogleTypeDate
/// - androidmanagement:v1 : Date
/// - androidpublisher:v3 : Date
/// - appengine:v1 : Date
/// - billingbudgets:v1 : GoogleTypeDate
/// - businessprofileperformance:v1 : Date
/// - chromemanagement:v1 : GoogleTypeDate
/// - chromepolicy:v1 : GoogleTypeDate
/// - chromeuxreport:v1 : Date
/// - chromewebstore:v2 : Date
/// - classroom:v1 : Date
/// - cloudasset:v1 : Date
/// - cloudchannel:v1 : GoogleTypeDate
/// - clouddeploy:v1 : Date
/// - cloudfunctions:v2 : Date
/// - composer:v1 : Date
/// - container:v1 : Date
/// - curationpartners:v1 : Date
/// - deepreview:v1 : Date
/// - devicerun:v1 : Date
/// - dlp:v2 : GoogleTypeDate
/// - documentai:v1 : GoogleTypeDate
/// - doubleclickbidmanager:v2 : Date
/// - drivelabels:v2 : GoogleTypeDate
/// - gkebackup:v1 : Date
/// - gmailpostmastertools:v2 : Date
/// - health:v4 : Date
/// - looker:v1 : Date
/// - merchantapi:accounts_v1 : Date
/// - merchantapi:reports_v1 : Date
/// - migrationcenter:v1 : Date
/// - mybusinessbusinessinformation:v1 : Date
/// - people:v1 : Date
/// - places:v1 : GoogleTypeDate
/// - policysimulator:v1 : GoogleTypeDate
/// - pollen:v1 : Date
/// - realtimebidding:v1 : Date
/// - retail:v2 : GoogleTypeDate
/// - solar:v1 : Date
/// - storagetransfer:v1 : Date
/// - testing:v1 : Date
/// - travelimpactmodel:v1 : Date
class $Date {
  /// Day of a month.
  ///
  /// Must be from 1 to 31 and valid for the year and month, or 0 to specify a
  /// year by itself or a year and month where the day isn't significant.
  core.int? day;

  /// Month of a year.
  ///
  /// Must be from 1 to 12, or 0 to specify a year without a month and day.
  core.int? month;

  /// Year of the date.
  ///
  /// Must be from 1 to 9999, or 0 to specify a date without a year.
  core.int? year;

  $Date({this.day, this.month, this.year});

  $Date.fromJson(core.Map json_)
    : this(
        day: json_['day'] as core.int?,
        month: json_['month'] as core.int?,
        year: json_['year'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final day = this.day;
    final month = this.month;
    final year = this.year;
    return {'day': ?day, 'month': ?month, 'year': ?year};
  }
}

/// Used by:
///
/// - cloudsearch:v1 : ResponseDebugInfo
/// - cloudsearch:v1 : ResultDebugInfo
class $DebugInfo {
  /// General debug info formatted for display.
  core.String? formattedDebugInfo;

  $DebugInfo({this.formattedDebugInfo});

  $DebugInfo.fromJson(core.Map json_)
    : this(formattedDebugInfo: json_['formattedDebugInfo'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final formattedDebugInfo = this.formattedDebugInfo;
    return {'formattedDebugInfo': ?formattedDebugInfo};
  }
}

/// Used by:
///
/// - cloudchannel:v1 : GoogleTypeDecimal
/// - saasservicemgmt:v1 : Decimal
class $Decimal {
  /// The decimal value, as a string.
  ///
  /// The string representation consists of an optional sign, `+` (`U+002B`) or
  /// `-` (`U+002D`), followed by a sequence of zero or more decimal digits
  /// ("the integer"), optionally followed by a fraction, optionally followed by
  /// an exponent. An empty string **should** be interpreted as `0`. The
  /// fraction consists of a decimal point followed by zero or more decimal
  /// digits. The string must contain at least one digit in either the integer
  /// or the fraction. The number formed by the sign, the integer and the
  /// fraction is referred to as the significand. The exponent consists of the
  /// character `e` (`U+0065`) or `E` (`U+0045`) followed by one or more decimal
  /// digits. Services **should** normalize decimal values before storing them
  /// by: - Removing an explicitly-provided `+` sign (`+2.5` -\> `2.5`). -
  /// Replacing a zero-length integer value with `0` (`.5` -\> `0.5`). -
  /// Coercing the exponent character to upper-case, with explicit sign (`2.5e8`
  /// -\> `2.5E+8`). - Removing an explicitly-provided zero exponent (`2.5E0`
  /// -\> `2.5`). Services **may** perform additional normalization based on its
  /// own needs and the internal decimal implementation selected, such as
  /// shifting the decimal point and exponent value together (example: `2.5E-1`
  /// \<-\> `0.25`). Additionally, services **may** preserve trailing zeroes in
  /// the fraction to indicate increased precision, but are not required to do
  /// so. Note that only the `.` character is supported to divide the integer
  /// and the fraction; `,` **should not** be supported regardless of locale.
  /// Additionally, thousand separators **should not** be supported. If a
  /// service does support them, values **must** be normalized. The ENBF grammar
  /// is: DecimalString = '' | \[Sign\] Significand \[Exponent\]; Sign = '+' |
  /// '-'; Significand = Digits '.' | \[Digits\] '.' Digits; Exponent = ('e' |
  /// 'E') \[Sign\] Digits; Digits = { '0' | '1' | '2' | '3' | '4' | '5' | '6' |
  /// '7' | '8' | '9' }; Services **should** clearly document the range of
  /// supported values, the maximum supported precision (total number of
  /// digits), and, if applicable, the scale (number of digits after the decimal
  /// point), as well as how it behaves when receiving out-of-bounds values.
  /// Services **may** choose to accept values passed as input even when the
  /// value has a higher precision or scale than the service supports, and
  /// **should** round the value to fit the supported scale. Alternatively, the
  /// service **may** error with `400 Bad Request` (`INVALID_ARGUMENT` in gRPC)
  /// if precision would be lost. Services **should** error with `400 Bad
  /// Request` (`INVALID_ARGUMENT` in gRPC) if the service receives a value
  /// outside of the supported range.
  core.String? value;

  $Decimal({this.value});

  $Decimal.fromJson(core.Map json_)
    : this(value: json_['value'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final value = this.value;
    return {'value': ?value};
  }
}

/// Used by:
///
/// - sheets:v4 : DeleteCommentReplyRequest
/// - slides:v1 : DeleteCommentReplyRequest
class $DeleteCommentReplyRequest {
  /// The ID of the CommentThread which the post belongs to.
  core.String? commentId;

  /// The ID of the reply Post being deleted.
  core.String? postId;

  $DeleteCommentReplyRequest({this.commentId, this.postId});

  $DeleteCommentReplyRequest.fromJson(core.Map json_)
    : this(
        commentId: json_['commentId'] as core.String?,
        postId: json_['postId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final commentId = this.commentId;
    final postId = this.postId;
    return {'commentId': ?commentId, 'postId': ?postId};
  }
}

/// Used by:
///
/// - docs:v1 : DeleteCommentRequest
/// - sheets:v4 : DeleteCommentRequest
/// - slides:v1 : DeleteCommentRequest
class $DeleteCommentRequest {
  /// The ID of the CommentThread that is being deleted.
  core.String? commentId;

  $DeleteCommentRequest({this.commentId});

  $DeleteCommentRequest.fromJson(core.Map json_)
    : this(commentId: json_['commentId'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final commentId = this.commentId;
    return {'commentId': ?commentId};
  }
}

/// Used by:
///
/// - analyticshub:v1 : DelimitedKey
/// - pubsub:v1 : DelimitedKey
class $DelimitedKey {
  /// Byte sequence used to delimit concatenated fields.
  ///
  /// Must be specified if multiple key fields are used. The delimiter must
  /// contain at least 1 character and at most 50 characters.
  ///
  /// Optional.
  core.String? delimiter;
  core.List<core.int> get delimiterAsBytes => convert.base64.decode(delimiter!);

  set delimiterAsBytes(core.List<core.int> bytes_) {
    delimiter = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  /// The key fields to construct from the row key.
  ///
  /// The fields must be present in the message as a top-level field, i.e. JSON
  /// path expressions will not traverse into nested objects.
  ///
  /// Required.
  core.List<core.String>? keyFields;

  $DelimitedKey({this.delimiter, this.keyFields});

  $DelimitedKey.fromJson(core.Map json_)
    : this(
        delimiter: json_['delimiter'] as core.String?,
        keyFields: (json_['keyFields'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final delimiter = this.delimiter;
    final keyFields = this.keyFields;
    return {'delimiter': ?delimiter, 'keyFields': ?keyFields};
  }
}

/// Used by:
///
/// - containeranalysis:v1 : DeploymentOccurrence
/// - ondemandscanning:v1 : DeploymentOccurrence
class $DeploymentOccurrence {
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

  $DeploymentOccurrence({
    this.address,
    this.config,
    this.deployTime,
    this.platform,
    this.resourceUri,
    this.undeployTime,
    this.userEmail,
  });

  $DeploymentOccurrence.fromJson(core.Map json_)
    : this(
        address: json_['address'] as core.String?,
        config: json_['config'] as core.String?,
        deployTime: json_['deployTime'] as core.String?,
        platform: json_['platform'] as core.String?,
        resourceUri: (json_['resourceUri'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        undeployTime: json_['undeployTime'] as core.String?,
        userEmail: json_['userEmail'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final address = this.address;
    final config = this.config;
    final deployTime = this.deployTime;
    final platform = this.platform;
    final resourceUri = this.resourceUri;
    final undeployTime = this.undeployTime;
    final userEmail = this.userEmail;
    return {
      'address': ?address,
      'config': ?config,
      'deployTime': ?deployTime,
      'platform': ?platform,
      'resourceUri': ?resourceUri,
      'undeployTime': ?undeployTime,
      'userEmail': ?userEmail,
    };
  }
}

/// Used by:
///
/// - datamigration:v1 : PostgresDestinationConfig
/// - datamigration:v1 : SqlServerDestinationConfig
class $DestinationConfig {
  /// Maximum number of connections Database Migration Service will open to the
  /// destination for data migration.
  ///
  /// Optional.
  core.int? maxConcurrentConnections;

  /// Timeout for data migration transactions.
  ///
  /// Optional.
  core.String? transactionTimeout;

  $DestinationConfig({this.maxConcurrentConnections, this.transactionTimeout});

  $DestinationConfig.fromJson(core.Map json_)
    : this(
        maxConcurrentConnections:
            json_['maxConcurrentConnections'] as core.int?,
        transactionTimeout: json_['transactionTimeout'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final maxConcurrentConnections = this.maxConcurrentConnections;
    final transactionTimeout = this.transactionTimeout;
    return {
      'maxConcurrentConnections': ?maxConcurrentConnections,
      'transactionTimeout': ?transactionTimeout,
    };
  }
}

/// Used by:
///
/// - aiplatform:v1 : GoogleCloudAiplatformV1ReasoningEngineSpecSourceCodeSpecDeveloperConnectConfig
/// - cloudbuild:v1 : DeveloperConnectConfig
class $DeveloperConnectConfig {
  /// Directory, relative to the source root, in which to run the build.
  ///
  /// Required.
  core.String? dir;

  /// The Developer Connect Git repository link, formatted as `projects / *
  /// /locations / * /connections / * /gitRepositoryLink / * `.
  ///
  /// Required.
  core.String? gitRepositoryLink;

  /// The revision to fetch from the Git repository such as a branch, a tag, a
  /// commit SHA, or any Git ref.
  ///
  /// Required.
  core.String? revision;

  $DeveloperConnectConfig({this.dir, this.gitRepositoryLink, this.revision});

  $DeveloperConnectConfig.fromJson(core.Map json_)
    : this(
        dir: json_['dir'] as core.String?,
        gitRepositoryLink: json_['gitRepositoryLink'] as core.String?,
        revision: json_['revision'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dir = this.dir;
    final gitRepositoryLink = this.gitRepositoryLink;
    final revision = this.revision;
    return {
      'dir': ?dir,
      'gitRepositoryLink': ?gitRepositoryLink,
      'revision': ?revision,
    };
  }
}

/// Used by:
///
/// - firebaseappdistribution:v1 : GdataDiffVersionResponse
/// - walletobjects:v1 : DiffVersionResponse
class $DiffVersionResponse {
  /// The total size of the server object.
  core.String? objectSizeBytes;

  /// The version of the object stored at the server.
  core.String? objectVersion;

  $DiffVersionResponse({this.objectSizeBytes, this.objectVersion});

  $DiffVersionResponse.fromJson(core.Map json_)
    : this(
        objectSizeBytes: json_['objectSizeBytes'] as core.String?,
        objectVersion: json_['objectVersion'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final objectSizeBytes = this.objectSizeBytes;
    final objectVersion = this.objectVersion;
    return {
      'objectSizeBytes': ?objectSizeBytes,
      'objectVersion': ?objectVersion,
    };
  }
}

/// Used by:
///
/// - dataform:v1 : MakeDirectoryRequest
/// - dataform:v1 : RemoveDirectoryRequest
class $DirectoryRequest {
  /// The directory's full path including directory name, relative to the
  /// workspace root.
  ///
  /// Required.
  core.String? path;

  $DirectoryRequest({this.path});

  $DirectoryRequest.fromJson(core.Map json_)
    : this(path: json_['path'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final path = this.path;
    return {'path': ?path};
  }
}

/// Used by:
///
/// - dataplex:v1 : GoogleCloudDataplexV1AssetDiscoverySpecCsvOptions
/// - dataplex:v1 : GoogleCloudDataplexV1ZoneDiscoverySpecCsvOptions
class $DiscoverySpecCsvOptions {
  /// The delimiter being used to separate values.
  ///
  /// This defaults to ','.
  ///
  /// Optional.
  core.String? delimiter;

  /// Whether to disable the inference of data type for CSV data.
  ///
  /// If true, all columns will be registered as strings.
  ///
  /// Optional.
  core.bool? disableTypeInference;

  /// The character encoding of the data.
  ///
  /// The default is UTF-8.
  ///
  /// Optional.
  core.String? encoding;

  /// The number of rows to interpret as header rows that should be skipped when
  /// reading data rows.
  ///
  /// Optional.
  core.int? headerRows;

  $DiscoverySpecCsvOptions({
    this.delimiter,
    this.disableTypeInference,
    this.encoding,
    this.headerRows,
  });

  $DiscoverySpecCsvOptions.fromJson(core.Map json_)
    : this(
        delimiter: json_['delimiter'] as core.String?,
        disableTypeInference: json_['disableTypeInference'] as core.bool?,
        encoding: json_['encoding'] as core.String?,
        headerRows: json_['headerRows'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final delimiter = this.delimiter;
    final disableTypeInference = this.disableTypeInference;
    final encoding = this.encoding;
    final headerRows = this.headerRows;
    return {
      'delimiter': ?delimiter,
      'disableTypeInference': ?disableTypeInference,
      'encoding': ?encoding,
      'headerRows': ?headerRows,
    };
  }
}

/// Used by:
///
/// - dataplex:v1 : GoogleCloudDataplexV1AssetDiscoverySpecJsonOptions
/// - dataplex:v1 : GoogleCloudDataplexV1ZoneDiscoverySpecJsonOptions
class $DiscoverySpecJsonOptions {
  /// Whether to disable the inference of data type for Json data.
  ///
  /// If true, all columns will be registered as their primitive types (strings,
  /// number or boolean).
  ///
  /// Optional.
  core.bool? disableTypeInference;

  /// The character encoding of the data.
  ///
  /// The default is UTF-8.
  ///
  /// Optional.
  core.String? encoding;

  $DiscoverySpecJsonOptions({this.disableTypeInference, this.encoding});

  $DiscoverySpecJsonOptions.fromJson(core.Map json_)
    : this(
        disableTypeInference: json_['disableTypeInference'] as core.bool?,
        encoding: json_['encoding'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final disableTypeInference = this.disableTypeInference;
    final encoding = this.encoding;
    return {
      'disableTypeInference': ?disableTypeInference,
      'encoding': ?encoding,
    };
  }
}

/// Used by:
///
/// - compute:v1 : DiskUpdateKmsKeyRequest
/// - compute:v1 : RegionDiskUpdateKmsKeyRequest
class $DiskUpdateKmsKeyRequest {
  /// The new KMS key to replace the current one on the disk.
  ///
  /// If empty, the disk
  /// will be re-encrypted using the primary version of the disk's current KMS
  /// key.
  ///
  /// The KMS key can be provided in the following formats:
  ///
  ///
  /// - projects/project_id/locations/location/keyRings/key_ring/cryptoKeys/key
  ///
  ///
  /// Where project is the project ID or
  /// project number.
  ///
  /// Optional.
  core.String? kmsKeyName;

  $DiskUpdateKmsKeyRequest({this.kmsKeyName});

  $DiskUpdateKmsKeyRequest.fromJson(core.Map json_)
    : this(kmsKeyName: json_['kmsKeyName'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final kmsKeyName = this.kmsKeyName;
    return {'kmsKeyName': ?kmsKeyName};
  }
}

/// Used by:
///
/// - compute:v1 : DisksRemoveResourcePoliciesRequest
/// - compute:v1 : RegionDisksRemoveResourcePoliciesRequest
class $DisksRemoveResourcePoliciesRequest {
  /// Resource policies to be removed from this disk.
  core.List<core.String>? resourcePolicies;

  $DisksRemoveResourcePoliciesRequest({this.resourcePolicies});

  $DisksRemoveResourcePoliciesRequest.fromJson(core.Map json_)
    : this(
        resourcePolicies: (json_['resourcePolicies'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final resourcePolicies = this.resourcePolicies;
    return {'resourcePolicies': ?resourcePolicies};
  }
}

/// Used by:
///
/// - compute:v1 : DisksStartAsyncReplicationRequest
/// - compute:v1 : RegionDisksStartAsyncReplicationRequest
class $DisksStartAsyncReplicationRequest {
  /// The secondary disk to start asynchronous replication to.
  /// You can provide this as a partial or full URL to the resource.
  ///
  /// For example,
  /// the following are valid values:
  ///
  ///
  ///      -
  /// https://www.googleapis.com/compute/v1/projects/project/zones/zone/disks/disk
  ///
  ///      -
  /// https://www.googleapis.com/compute/v1/projects/project/regions/region/disks/disk
  ///
  ///      -
  ///        projects/project/zones/zone/disks/disk
  ///
  ///      -
  ///        projects/project/regions/region/disks/disk
  ///
  ///      -
  ///        zones/zone/disks/disk
  ///
  ///      -
  ///        regions/region/disks/disk
  core.String? asyncSecondaryDisk;

  $DisksStartAsyncReplicationRequest({this.asyncSecondaryDisk});

  $DisksStartAsyncReplicationRequest.fromJson(core.Map json_)
    : this(asyncSecondaryDisk: json_['asyncSecondaryDisk'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final asyncSecondaryDisk = this.asyncSecondaryDisk;
    return {'asyncSecondaryDisk': ?asyncSecondaryDisk};
  }
}

/// Used by:
///
/// - servicemanagement:v1 : DocumentationRule
/// - serviceusage:v1 : DocumentationRule
class $DocumentationRule {
  /// Deprecation description of the selected element(s).
  ///
  /// It can be provided if an element is marked as `deprecated`.
  core.String? deprecationDescription;

  /// Description of the selected proto element (e.g. a message, a method, a
  /// 'service' definition, or a field).
  ///
  /// Defaults to leading & trailing comments taken from the proto source
  /// definition of the proto element.
  core.String? description;

  /// String of comma or space separated case-sensitive words for which
  /// method/field name replacement will be disabled.
  core.String? disableReplacementWords;

  /// The selector is a comma-separated list of patterns for any element such as
  /// a method, a field, an enum value.
  ///
  /// Each pattern is a qualified name of the element which may end in "*",
  /// indicating a wildcard. Wildcards are only allowed at the end and for a
  /// whole component of the qualified name, i.e. "foo.*" is ok, but not
  /// "foo.b*" or "foo.*.bar". A wildcard will match one or more components. To
  /// specify a default for all applicable elements, the whole pattern "*" is
  /// used.
  core.String? selector;

  $DocumentationRule({
    this.deprecationDescription,
    this.description,
    this.disableReplacementWords,
    this.selector,
  });

  $DocumentationRule.fromJson(core.Map json_)
    : this(
        deprecationDescription: json_['deprecationDescription'] as core.String?,
        description: json_['description'] as core.String?,
        disableReplacementWords:
            json_['disableReplacementWords'] as core.String?,
        selector: json_['selector'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final deprecationDescription = this.deprecationDescription;
    final description = this.description;
    final disableReplacementWords = this.disableReplacementWords;
    final selector = this.selector;
    return {
      'deprecationDescription': ?deprecationDescription,
      'description': ?description,
      'disableReplacementWords': ?disableReplacementWords,
      'selector': ?selector,
    };
  }
}

/// Used by:
///
/// - agenciesandbrands:v1 : DoubleList
/// - curationpartners:v1 : DoubleList
class $DoubleList {
  /// The values
  core.List<core.double>? values;

  $DoubleList({this.values});

  $DoubleList.fromJson(core.Map json_)
    : this(
        values: (json_['values'] as core.List?)
            ?.map((value) => (value as core.num).toDouble())
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final values = this.values;
    return {'values': ?values};
  }
}

/// Used by:
///
/// - firebaseappdistribution:v1 : GdataDownloadParameters
/// - walletobjects:v1 : DownloadParameters
class $DownloadParameters {
  /// A boolean to be returned in the response to Scotty.
  ///
  /// Allows/disallows gzip encoding of the payload content when the server
  /// thinks it's advantageous (hence, does not guarantee compression) which
  /// allows Scotty to GZip the response to the client.
  core.bool? allowGzipCompression;

  /// Determining whether or not Apiary should skip the inclusion of any
  /// Content-Range header on its response to Scotty.
  core.bool? ignoreRange;

  $DownloadParameters({this.allowGzipCompression, this.ignoreRange});

  $DownloadParameters.fromJson(core.Map json_)
    : this(
        allowGzipCompression: json_['allowGzipCompression'] as core.bool?,
        ignoreRange: json_['ignoreRange'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final allowGzipCompression = this.allowGzipCompression;
    final ignoreRange = this.ignoreRange;
    return {
      'allowGzipCompression': ?allowGzipCompression,
      'ignoreRange': ?ignoreRange,
    };
  }
}

/// Used by:
///
/// - gkeonprem:v1 : BareMetalAdminDrainedMachine
/// - gkeonprem:v1 : BareMetalDrainedMachine
class $DrainedMachine {
  /// Drained machine IP address.
  core.String? nodeIp;

  $DrainedMachine({this.nodeIp});

  $DrainedMachine.fromJson(core.Map json_)
    : this(nodeIp: json_['nodeIp'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final nodeIp = this.nodeIp;
    return {'nodeIp': ?nodeIp};
  }
}

/// Used by:
///
/// - gkeonprem:v1 : BareMetalAdminDrainingMachine
/// - gkeonprem:v1 : BareMetalDrainingMachine
class $DrainingMachine {
  /// Draining machine IP address.
  core.String? nodeIp;

  /// The count of pods yet to drain.
  core.int? podCount;

  $DrainingMachine({this.nodeIp, this.podCount});

  $DrainingMachine.fromJson(core.Map json_)
    : this(
        nodeIp: json_['nodeIp'] as core.String?,
        podCount: json_['podCount'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nodeIp = this.nodeIp;
    final podCount = this.podCount;
    return {'nodeIp': ?nodeIp, 'podCount': ?podCount};
  }
}

/// Used by:
///
/// - accessapproval:v1 : DismissApprovalRequestMessage
/// - accessapproval:v1 : Empty
/// - accessapproval:v1 : InvalidateApprovalRequestMessage
/// - accesscontextmanager:v1 : CancelOperationRequest
/// - accesscontextmanager:v1 : Empty
/// - addressvalidation:v1 : GoogleMapsAddressvalidationV1ProvideValidationFeedbackResponse
/// - admin:directory_v1 : ChangeChromeOsDeviceStatusSucceeded
/// - admin:directory_v1 : Empty
/// - adsense:v2 : Empty
/// - adsenseplatform:v1 : CloseAccountRequest
/// - adsenseplatform:v1 : CloseAccountResponse
/// - adsenseplatform:v1 : Empty
/// - adsenseplatform:v1 : RequestSiteReviewResponse
/// - agenciesandbrands:v1 : Empty
/// - agenciesandbrands:v1 : RunReportRequest
/// - agentidentity:v1 : AgentIdentityPool
/// - agentidentity:v1 : DirectIdJagInput
/// - agentidentity:v1 : Empty
/// - agentidentity:v1 : GeminiEnterpriseAuthProviderParams
/// - agentidentity:v1 : GoogleAccount
/// - agentidentity:v1 : RevokeAuthorizationResponse
/// - agentidentity:v1 : WorkforceIdentityFederation
/// - agentidentitycredentials:v1 : GoogleCloudAgentidentitycredentialsV1_ConsentRejected
/// - agentidentitycredentials:v1 : GoogleCloudAgentidentitycredentialsV1_FinalizeCredentialsResponse
/// - agentidentitycredentials:v1 : GoogleCloudAgentidentitycredentialsV1_Pending
/// - agentregistry:v1 : CancelOperationRequest
/// - agentregistry:v1 : Empty
/// - aiplatform:v1 : GenaiVertexV1CodeExecution
/// - aiplatform:v1 : GenaiVertexV1DeleteInteractionResponse
/// - aiplatform:v1 : GenaiVertexV1FileSearchCallDelta
/// - aiplatform:v1 : GenaiVertexV1FileSearchCallStep
/// - aiplatform:v1 : GenaiVertexV1FileSearchResultContentFileSearchResult
/// - aiplatform:v1 : GenaiVertexV1FileSearchResultStep
/// - aiplatform:v1 : GenaiVertexV1ProcessingCallDelta
/// - aiplatform:v1 : GenaiVertexV1ProcessingCallStep
/// - aiplatform:v1 : GenaiVertexV1ProcessingResultDelta
/// - aiplatform:v1 : GenaiVertexV1ProcessingResultStep
/// - aiplatform:v1 : GenaiVertexV1UrlContext
/// - aiplatform:v1 : GoogleCloudAiplatformV1ActivateOnlineEvaluatorRequest
/// - aiplatform:v1 : GoogleCloudAiplatformV1AddContextArtifactsAndExecutionsResponse
/// - aiplatform:v1 : GoogleCloudAiplatformV1AddContextChildrenResponse
/// - aiplatform:v1 : GoogleCloudAiplatformV1AddExecutionEventsResponse
/// - aiplatform:v1 : GoogleCloudAiplatformV1AppendEventResponse
/// - aiplatform:v1 : GoogleCloudAiplatformV1AuthorizeSandboxEnvironmentAccessRequest
/// - aiplatform:v1 : GoogleCloudAiplatformV1AuthorizeSandboxEnvironmentAccessResponse
/// - aiplatform:v1 : GoogleCloudAiplatformV1CancelAsyncQueryReasoningEngineResponse
/// - aiplatform:v1 : GoogleCloudAiplatformV1CancelBatchPredictionJobRequest
/// - aiplatform:v1 : GoogleCloudAiplatformV1CancelCustomJobRequest
/// - aiplatform:v1 : GoogleCloudAiplatformV1CancelDataLabelingJobRequest
/// - aiplatform:v1 : GoogleCloudAiplatformV1CancelEvaluationRunRequest
/// - aiplatform:v1 : GoogleCloudAiplatformV1CancelHyperparameterTuningJobRequest
/// - aiplatform:v1 : GoogleCloudAiplatformV1CancelNasJobRequest
/// - aiplatform:v1 : GoogleCloudAiplatformV1CancelPipelineJobRequest
/// - aiplatform:v1 : GoogleCloudAiplatformV1CancelTrainingPipelineRequest
/// - aiplatform:v1 : GoogleCloudAiplatformV1CancelTuningJobRequest
/// - aiplatform:v1 : GoogleCloudAiplatformV1CheckTrialEarlyStoppingStateRequest
/// - aiplatform:v1 : GoogleCloudAiplatformV1CreateFileRequest
/// - aiplatform:v1 : GoogleCloudAiplatformV1DirectUploadSource
/// - aiplatform:v1 : GoogleCloudAiplatformV1DownloadFileResponse
/// - aiplatform:v1 : GoogleCloudAiplatformV1ExactMatchSpec
/// - aiplatform:v1 : GoogleCloudAiplatformV1ExternalApiSimpleSearchParams
/// - aiplatform:v1 : GoogleCloudAiplatformV1FeatureOnlineStoreOptimized
/// - aiplatform:v1 : GoogleCloudAiplatformV1FeatureViewIndexConfigBruteForceConfig
/// - aiplatform:v1 : GoogleCloudAiplatformV1GenerateFetchAccessTokenRequest
/// - aiplatform:v1 : GoogleCloudAiplatformV1GoogleMapsPlaces
/// - aiplatform:v1 : GoogleCloudAiplatformV1GoogleMapsRouting
/// - aiplatform:v1 : GoogleCloudAiplatformV1ListOptimalTrialsRequest
/// - aiplatform:v1 : GoogleCloudAiplatformV1PauseModelDeploymentMonitoringJobRequest
/// - aiplatform:v1 : GoogleCloudAiplatformV1PauseSandboxEnvironmentRequest
/// - aiplatform:v1 : GoogleCloudAiplatformV1PauseScheduleRequest
/// - aiplatform:v1 : GoogleCloudAiplatformV1RagManagedDbConfigBasic
/// - aiplatform:v1 : GoogleCloudAiplatformV1RagManagedDbConfigScaled
/// - aiplatform:v1 : GoogleCloudAiplatformV1RagManagedDbConfigServerless
/// - aiplatform:v1 : GoogleCloudAiplatformV1RagManagedDbConfigUnprovisioned
/// - aiplatform:v1 : GoogleCloudAiplatformV1RagVectorDbConfigRagManagedDbKNN
/// - aiplatform:v1 : GoogleCloudAiplatformV1RebootPersistentResourceRequest
/// - aiplatform:v1 : GoogleCloudAiplatformV1RemoveContextChildrenResponse
/// - aiplatform:v1 : GoogleCloudAiplatformV1RemoveDatapointsResponse
/// - aiplatform:v1 : GoogleCloudAiplatformV1ResumeModelDeploymentMonitoringJobRequest
/// - aiplatform:v1 : GoogleCloudAiplatformV1ResumeSandboxEnvironmentRequest
/// - aiplatform:v1 : GoogleCloudAiplatformV1RubricBasedInstructionFollowingSpec
/// - aiplatform:v1 : GoogleCloudAiplatformV1SandboxEnvironmentSpecShellEnvironment
/// - aiplatform:v1 : GoogleCloudAiplatformV1StartNotebookRuntimeRequest
/// - aiplatform:v1 : GoogleCloudAiplatformV1StopNotebookRuntimeRequest
/// - aiplatform:v1 : GoogleCloudAiplatformV1StopTrialRequest
/// - aiplatform:v1 : GoogleCloudAiplatformV1SuspendOnlineEvaluatorRequest
/// - aiplatform:v1 : GoogleCloudAiplatformV1SyncFeatureViewRequest
/// - aiplatform:v1 : GoogleCloudAiplatformV1ToolCallValidSpec
/// - aiplatform:v1 : GoogleCloudAiplatformV1ToolCodeExecution
/// - aiplatform:v1 : GoogleCloudAiplatformV1ToolGoogleSearchImageSearch
/// - aiplatform:v1 : GoogleCloudAiplatformV1ToolGoogleSearchWebSearch
/// - aiplatform:v1 : GoogleCloudAiplatformV1ToolNameMatchSpec
/// - aiplatform:v1 : GoogleCloudAiplatformV1ToolParameterKeyMatchSpec
/// - aiplatform:v1 : GoogleCloudAiplatformV1TrajectoryAnyOrderMatchSpec
/// - aiplatform:v1 : GoogleCloudAiplatformV1TrajectoryExactMatchSpec
/// - aiplatform:v1 : GoogleCloudAiplatformV1TrajectoryInOrderMatchSpec
/// - aiplatform:v1 : GoogleCloudAiplatformV1TrajectoryPrecisionSpec
/// - aiplatform:v1 : GoogleCloudAiplatformV1TrajectoryRecallSpec
/// - aiplatform:v1 : GoogleCloudAiplatformV1UpgradeNotebookRuntimeRequest
/// - aiplatform:v1 : GoogleCloudAiplatformV1UpsertDatapointsResponse
/// - aiplatform:v1 : GoogleCloudAiplatformV1UrlContext
/// - aiplatform:v1 : GoogleCloudAiplatformV1WriteFeatureValuesResponse
/// - aiplatform:v1 : GoogleCloudAiplatformV1WriteTensorboardExperimentDataResponse
/// - aiplatform:v1 : GoogleCloudAiplatformV1WriteTensorboardRunDataResponse
/// - aiplatform:v1 : GoogleProtobufEmpty
/// - alloydb:v1 : CancelOperationRequest
/// - alloydb:v1 : Empty
/// - alloydb:v1 : SqlImportOptions
/// - analyticshub:v1 : ApproveQueryTemplateRequest
/// - analyticshub:v1 : DefaultExchangeConfig
/// - analyticshub:v1 : Empty
/// - analyticshub:v1 : PubsubWrapper
/// - analyticshub:v1 : RefreshSubscriptionRequest
/// - analyticshub:v1 : RevokeSubscriptionResponse
/// - analyticshub:v1 : RowKeySchema
/// - analyticshub:v1 : SubmitQueryTemplateRequest
/// - analyticshub:v1 : TextConfig
/// - androiddeviceprovisioning:v1 : Empty
/// - androidmanagement:v1 : Empty
/// - androidmanagement:v1 : StopLostModeParams
/// - androidpublisher:v3 : AddTargetingResponse
/// - androidpublisher:v3 : BaseDetails
/// - androidpublisher:v3 : BasePriceOfferPhase
/// - androidpublisher:v3 : CancelAppRecoveryRequest
/// - androidpublisher:v3 : CancelAppRecoveryResponse
/// - androidpublisher:v3 : CancelSubscriptionPurchaseResponse
/// - androidpublisher:v3 : CreateAppStoreHostedAppResponse
/// - androidpublisher:v3 : DeferredItemRemoval
/// - androidpublisher:v3 : DeployAppRecoveryRequest
/// - androidpublisher:v3 : DeployAppRecoveryResponse
/// - androidpublisher:v3 : DeveloperInitiatedCancellation
/// - androidpublisher:v3 : ExternalTransactionTestPurchase
/// - androidpublisher:v3 : FreeTrialDetails
/// - androidpublisher:v3 : FreeTrialOfferPhase
/// - androidpublisher:v3 : FullRefund
/// - androidpublisher:v3 : IntroductoryPriceDetails
/// - androidpublisher:v3 : IntroductoryPriceOfferPhase
/// - androidpublisher:v3 : MigrateBasePlanPricesResponse
/// - androidpublisher:v3 : OneTimeCode
/// - androidpublisher:v3 : OneTimeProductOfferNoPriceOverrideOptions
/// - androidpublisher:v3 : OtherRecurringProduct
/// - androidpublisher:v3 : OtherRegionsSubscriptionOfferPhaseFreePriceOverride
/// - androidpublisher:v3 : PaidAppDetails
/// - androidpublisher:v3 : PendingCancellation
/// - androidpublisher:v3 : PreorderDetails
/// - androidpublisher:v3 : RegionalSubscriptionOfferPhaseFreePriceOverride
/// - androidpublisher:v3 : RentOfferDetails
/// - androidpublisher:v3 : RentalDetails
/// - androidpublisher:v3 : ReplacementCancellation
/// - androidpublisher:v3 : RevocationContextFullRefund
/// - androidpublisher:v3 : RevocationContextProratedRefund
/// - androidpublisher:v3 : RevokeSubscriptionPurchaseResponse
/// - androidpublisher:v3 : SafetyLabelsUpdateResponse
/// - androidpublisher:v3 : SystemInitiatedCancellation
/// - androidpublisher:v3 : TargetingRuleScopeAnySubscriptionInApp
/// - androidpublisher:v3 : TargetingRuleScopeThisSubscription
/// - androidpublisher:v3 : TestPurchase
/// - androidpublisher:v3 : UpdateAppStoreHostedAppPublishStatusResponse
/// - androidpublisher:v3 : UploadApkRequest
/// - androidpublisher:v3 : UploadImageRequest
/// - apigateway:v1 : ApigatewayCancelOperationRequest
/// - apigateway:v1 : Empty
/// - apigee:v1 : GoogleCloudApigeeV1ActivateNatAddressRequest
/// - apigee:v1 : GoogleCloudApigeeV1BatchComputeSecurityAssessmentResultsRequestIncludeAll
/// - apigee:v1 : GoogleCloudApigeeV1DisableSecurityActionRequest
/// - apigee:v1 : GoogleCloudApigeeV1EnableSecurityActionRequest
/// - apigee:v1 : GoogleCloudApigeeV1ExpireAppGroupSubscriptionRequest
/// - apigee:v1 : GoogleCloudApigeeV1ExpireDeveloperSubscriptionRequest
/// - apigee:v1 : GoogleCloudApigeeV1GenerateDownloadUrlRequest
/// - apigee:v1 : GoogleCloudApigeeV1GenerateUploadUrlRequest
/// - apigee:v1 : GoogleCloudApigeeV1GetSyncAuthorizationRequest
/// - apigee:v1 : GoogleCloudApigeeV1ProfileConfigAbuse
/// - apigee:v1 : GoogleCloudApigeeV1ProfileConfigAuthorization
/// - apigee:v1 : GoogleCloudApigeeV1ProfileConfigCORS
/// - apigee:v1 : GoogleCloudApigeeV1ProfileConfigMTLS
/// - apigee:v1 : GoogleCloudApigeeV1ProfileConfigMediation
/// - apigee:v1 : GoogleCloudApigeeV1ProfileConfigThreat
/// - apigee:v1 : GoogleCloudApigeeV1ReportInstanceStatusResponse
/// - apigee:v1 : GoogleCloudApigeeV1SecurityActionAllow
/// - apigee:v1 : GoogleProtobufEmpty
/// - apihub:v1 : Empty
/// - apihub:v1 : GoogleCloudApihubV1DisablePluginRequest
/// - apihub:v1 : GoogleCloudApihubV1EnablePluginRequest
/// - apihub:v1 : GoogleCloudApihubV1LintSpecRequest
/// - apihub:v1 : GoogleCloudApihubV1ManagePluginInstanceSourceDataResponse
/// - apihub:v1 : GoogleLongrunningCancelOperationRequest
/// - apikeys:v2 : V2UndeleteKeyRequest
/// - appengine:v1 : Empty
/// - appengine:v1 : RepairApplicationRequest
/// - apphub:v1 : CancelOperationRequest
/// - apphub:v1 : DetachServiceProjectAttachmentRequest
/// - apphub:v1 : DetachServiceProjectAttachmentResponse
/// - apphub:v1 : Empty
/// - artifactregistry:v1 : CancelOperationRequest
/// - artifactregistry:v1 : DownloadFileResponse
/// - artifactregistry:v1 : Empty
/// - artifactregistry:v1 : NoCacheFetching
/// - artifactregistry:v1 : UploadAptArtifactRequest
/// - artifactregistry:v1 : UploadGoModuleRequest
/// - artifactregistry:v1 : UploadGoogetArtifactRequest
/// - artifactregistry:v1 : UploadYumArtifactRequest
/// - assuredworkloads:v1 : GoogleCloudAssuredworkloadsV1AcknowledgeViolationResponse
/// - assuredworkloads:v1 : GoogleCloudAssuredworkloadsV1EnableComplianceUpdatesResponse
/// - assuredworkloads:v1 : GoogleCloudAssuredworkloadsV1EnableResourceMonitoringResponse
/// - assuredworkloads:v1 : GoogleCloudAssuredworkloadsV1RestrictAllowedResourcesResponse
/// - assuredworkloads:v1 : GoogleProtobufEmpty
/// - auditmanager:v1 : CancelOperationRequest
/// - auditmanager:v1 : Empty
/// - authorizedbuyersmarketplace:v1 : ActivateClientRequest
/// - authorizedbuyersmarketplace:v1 : ActivateClientUserRequest
/// - authorizedbuyersmarketplace:v1 : CancelNegotiationRequest
/// - authorizedbuyersmarketplace:v1 : DeactivateClientRequest
/// - authorizedbuyersmarketplace:v1 : DeactivateClientUserRequest
/// - authorizedbuyersmarketplace:v1 : Empty
/// - authorizedbuyersmarketplace:v1 : ResumeFinalizedDealRequest
/// - authorizedbuyersmarketplace:v1 : SetReadyToServeRequest
/// - authorizedbuyersmarketplace:v1 : SubscribeAuctionPackageRequest
/// - authorizedbuyersmarketplace:v1 : UnsubscribeAuctionPackageRequest
/// - backupdr:v1 : CancelOperationRequest
/// - backupdr:v1 : Empty
/// - backupdr:v1 : SubscribeTrialRequest
/// - baremetalsolution:v2 : DisableHyperthreadingRequest
/// - baremetalsolution:v2 : DisableInteractiveSerialConsoleRequest
/// - baremetalsolution:v2 : Empty
/// - baremetalsolution:v2 : EnableHyperthreadingRequest
/// - baremetalsolution:v2 : EnableInteractiveSerialConsoleRequest
/// - baremetalsolution:v2 : EvictLunRequest
/// - baremetalsolution:v2 : EvictVolumeRequest
/// - baremetalsolution:v2 : ResetInstanceRequest
/// - baremetalsolution:v2 : RestoreVolumeSnapshotRequest
/// - baremetalsolution:v2 : StartInstanceRequest
/// - baremetalsolution:v2 : StopInstanceRequest
/// - batch:v1 : CancelOperationRequest
/// - batch:v1 : Empty
/// - beyondcorp:v1 : Empty
/// - beyondcorp:v1 : GoogleCloudBeyondcorpSecuritygatewaysV1LoggingConfig
/// - beyondcorp:v1 : GoogleLongrunningCancelOperationRequest
/// - bigqueryconnection:v1 : ConnectorConfigurationTlsWebPki
/// - bigqueryconnection:v1 : Empty
/// - bigquerydatapolicy:v1 : Empty
/// - bigquerydatapolicy:v2 : Empty
/// - bigquerydatatransfer:v1 : CheckValidCredsRequest
/// - bigquerydatatransfer:v1 : Empty
/// - bigquerydatatransfer:v1 : ManualSchedule
/// - bigqueryreservation:v1 : Empty
/// - bigtableadmin:v2 : DataBoostReadLocalWrites
/// - bigtableadmin:v2 : Empty
/// - bigtableadmin:v2 : GenerateConsistencyTokenRequest
/// - bigtableadmin:v2 : GoogleBigtableAdminV2TypeAggregateHyperLogLogPlusPlusUniqueCount
/// - bigtableadmin:v2 : GoogleBigtableAdminV2TypeAggregateMax
/// - bigtableadmin:v2 : GoogleBigtableAdminV2TypeAggregateMin
/// - bigtableadmin:v2 : GoogleBigtableAdminV2TypeAggregateSum
/// - bigtableadmin:v2 : GoogleBigtableAdminV2TypeBoolEncoding
/// - bigtableadmin:v2 : GoogleBigtableAdminV2TypeDate
/// - bigtableadmin:v2 : GoogleBigtableAdminV2TypeFloat32
/// - bigtableadmin:v2 : GoogleBigtableAdminV2TypeFloat64
/// - bigtableadmin:v2 : GoogleBigtableAdminV2TypeGeography
/// - bigtableadmin:v2 : GoogleBigtableAdminV2TypeInt32EncodingBigEndianBytes
/// - bigtableadmin:v2 : GoogleBigtableAdminV2TypeInt32EncodingOrderedCodeBytes
/// - bigtableadmin:v2 : GoogleBigtableAdminV2TypeInt64EncodingOrderedCodeBytes
/// - bigtableadmin:v2 : GoogleBigtableAdminV2TypeStructEncodingOrderedCodeBytes
/// - bigtableadmin:v2 : GoogleBigtableAdminV2TypeStructEncodingSingleton
/// - bigtableadmin:v2 : MemoryConfig
/// - bigtableadmin:v2 : RowAffinity
/// - bigtableadmin:v2 : StandardReadRemoteWrites
/// - bigtableadmin:v2 : UndeleteTableRequest
/// - billingbudgets:v1 : GoogleCloudBillingBudgetsV1LastPeriodAmount
/// - billingbudgets:v1 : GoogleProtobufEmpty
/// - binaryauthorization:v1 : Empty
/// - books:v1 : Empty
/// - certificatemanager:v1 : CancelOperationRequest
/// - certificatemanager:v1 : Empty
/// - ces:v1 : AgentLlmAgent
/// - ces:v1 : CancelOperationRequest
/// - ces:v1 : Empty
/// - ces:v1 : RestoreAppVersionRequest
/// - ces:v1 : ServiceAgentIdTokenAuthConfig
/// - chat:v1 : CompleteImportSpaceRequest
/// - chat:v1 : Empty
/// - chat:v1 : GoogleAppsCardV1Divider
/// - chat:v1 : MarkAsAwayRequest
/// - chat:v1 : ReplaceMessageCardsResponse
/// - chromemanagement:v1 : GoogleChromeManagementV1TelemetryAudioSevereUnderrunEvent
/// - chromemanagement:v1 : GoogleChromeManagementVersionsV1ClaimCertificateProvisioningProcessResponse
/// - chromemanagement:v1 : GoogleChromeManagementVersionsV1DisableInsightsRequest
/// - chromemanagement:v1 : GoogleChromeManagementVersionsV1MoveChromeBrowsersResponse
/// - chromemanagement:v1 : GoogleChromeManagementVersionsV1RevokeEnrollmentTokenRequest
/// - chromemanagement:v1 : GoogleChromeManagementVersionsV1SetFailureResponse
/// - chromemanagement:v1 : GoogleChromeManagementVersionsV1UploadCertificateResponse
/// - chromemanagement:v1 : GoogleLongrunningCancelOperationRequest
/// - chromemanagement:v1 : GoogleProtobufEmpty
/// - chromepolicy:v1 : GoogleChromePolicyVersionsV1RemoveCertificateResponse
/// - chromepolicy:v1 : GoogleChromePolicyVersionsV1RemoveNetworkResponse
/// - chromepolicy:v1 : GoogleProtobufEmpty
/// - chromewebstore:v2 : CancelSubmissionRequest
/// - chromewebstore:v2 : CancelSubmissionResponse
/// - chromewebstore:v2 : RollbackItemResponse
/// - chromewebstore:v2 : SetPublishedDeployPercentageResponse
/// - chromewebstore:v2 : UploadItemPackageRequest
/// - classroom:v1 : Empty
/// - classroom:v1 : ReclaimStudentSubmissionRequest
/// - classroom:v1 : ReturnStudentSubmissionRequest
/// - classroom:v1 : TeacherContext
/// - classroom:v1 : TurnInStudentSubmissionRequest
/// - cloudasset:v1 : Empty
/// - cloudasset:v1 : GoogleCloudAssetV1BooleanConstraint
/// - cloudasset:v1 : GoogleCloudOrgpolicyV1RestoreDefault
/// - cloudbilling:v1 : Empty
/// - cloudbuild:v1 : CancelOperationRequest
/// - cloudbuild:v1 : Empty
/// - cloudbuild:v1 : ReceiveTriggerWebhookResponse
/// - cloudbuild:v2 : CancelOperationRequest
/// - cloudbuild:v2 : Empty
/// - cloudbuild:v2 : FetchReadTokenRequest
/// - cloudbuild:v2 : FetchReadWriteTokenRequest
/// - cloudchannel:v1 : GoogleLongrunningCancelOperationRequest
/// - cloudchannel:v1 : GoogleProtobufEmpty
/// - cloudcommerceprocurement:v1 : Empty
/// - cloudcommerceprocurement:v1 : ResetAccountRequest
/// - cloudcontrolspartner:v1 : Empty
/// - clouddeploy:v1 : AbandonReleaseRequest
/// - clouddeploy:v1 : AbandonReleaseResponse
/// - clouddeploy:v1 : AdvanceChildRolloutJob
/// - clouddeploy:v1 : AdvanceRolloutResponse
/// - clouddeploy:v1 : ApproveRolloutResponse
/// - clouddeploy:v1 : CancelAutomationRunRequest
/// - clouddeploy:v1 : CancelAutomationRunResponse
/// - clouddeploy:v1 : CancelOperationRequest
/// - clouddeploy:v1 : CancelRolloutResponse
/// - clouddeploy:v1 : CreateChildRolloutJob
/// - clouddeploy:v1 : DeployJob
/// - clouddeploy:v1 : Empty
/// - clouddeploy:v1 : IgnoreJobResponse
/// - clouddeploy:v1 : RetryJobResponse
/// - clouddeploy:v1 : TerminateJobRunResponse
/// - cloudfunctions:v1 : AutomaticUpdatePolicy
/// - cloudfunctions:v1 : Retry
/// - cloudfunctions:v2 : AbortFunctionUpgradeRequest
/// - cloudfunctions:v2 : AutomaticUpdatePolicy
/// - cloudfunctions:v2 : CommitFunctionUpgradeAsGen2Request
/// - cloudfunctions:v2 : CommitFunctionUpgradeRequest
/// - cloudfunctions:v2 : DetachFunctionRequest
/// - cloudfunctions:v2 : GenerateDownloadUrlRequest
/// - cloudfunctions:v2 : RedirectFunctionUpgradeTrafficRequest
/// - cloudfunctions:v2 : RollbackFunctionUpgradeTrafficRequest
/// - cloudidentity:v1 : CancelUserInvitationRequest
/// - cloudidentity:v1 : SendUserInvitationRequest
/// - cloudkms:v1 : ApproveSingleTenantHsmInstanceProposalResponse
/// - cloudkms:v1 : DeleteSingleTenantHsmInstance
/// - cloudkms:v1 : DestroyCryptoKeyVersionRequest
/// - cloudkms:v1 : DisableSingleTenantHsmInstance
/// - cloudkms:v1 : Empty
/// - cloudkms:v1 : EnableSingleTenantHsmInstance
/// - cloudkms:v1 : ExecuteSingleTenantHsmInstanceProposalRequest
/// - cloudkms:v1 : RefreshSingleTenantHsmInstance
/// - cloudkms:v1 : RestoreCryptoKeyVersionRequest
/// - cloudkms:v1 : VerifyConnectivityResponse
/// - cloudresourcemanager:v1 : BooleanConstraint
/// - cloudresourcemanager:v1 : Empty
/// - cloudresourcemanager:v1 : GetAncestryRequest
/// - cloudresourcemanager:v1 : RestoreDefault
/// - cloudresourcemanager:v1 : UndeleteProjectRequest
/// - cloudresourcemanager:v3 : Empty
/// - cloudresourcemanager:v3 : UndeleteFolderRequest
/// - cloudresourcemanager:v3 : UndeleteProjectRequest
/// - cloudscheduler:v1 : CancelOperationRequest
/// - cloudscheduler:v1 : Empty
/// - cloudscheduler:v1 : PauseJobRequest
/// - cloudscheduler:v1 : ResumeJobRequest
/// - cloudscheduler:v1 : RunJobRequest
/// - cloudsearch:v1 : InitializeCustomerRequest
/// - cloudsearch:v1 : RemoveActivityResponse
/// - cloudshell:v1 : CancelOperationRequest
/// - cloudshell:v1 : Empty
/// - cloudsupport:v2 : CloseCaseRequest
/// - cloudsupport:v2 : Empty
/// - cloudsupport:v2 : ExpungeSupportEventSubscriptionRequest
/// - cloudsupport:v2 : UndeleteSupportEventSubscriptionRequest
/// - cloudtasks:v2 : Empty
/// - cloudtasks:v2 : PauseQueueRequest
/// - cloudtasks:v2 : PurgeQueueRequest
/// - cloudtasks:v2 : ResumeQueueRequest
/// - cloudtrace:v2 : Empty
/// - composer:v1 : DatabaseFailoverRequest
/// - composer:v1 : Empty
/// - composer:v1 : HibernateEnvironmentRequest
/// - composer:v1 : RestartWebServerRequest
/// - composer:v1 : ResumeEnvironmentRequest
/// - compute:v1 : InterconnectApplicationAwareInterconnectStrictPriorityPolicy
/// - compute:v1 : ResourcePolicyDiskConsistencyGroupPolicy
/// - config:v1 : CancelOperationRequest
/// - config:v1 : Empty
/// - config:v1 : ExportPreviewResultRequest
/// - config:v1 : ExportRevisionStatefileRequest
/// - config:v1 : LockDeploymentRequest
/// - connectors:v2 : Empty
/// - contactcenterinsights:v1 : GoogleCloudContactcenterinsightsV1AppealAssessmentRequest
/// - contactcenterinsights:v1 : GoogleCloudContactcenterinsightsV1DeployQaScorecardRevisionRequest
/// - contactcenterinsights:v1 : GoogleCloudContactcenterinsightsV1FinalizeAssessmentRequest
/// - contactcenterinsights:v1 : GoogleCloudContactcenterinsightsV1HoldData
/// - contactcenterinsights:v1 : GoogleCloudContactcenterinsightsV1InterruptionData
/// - contactcenterinsights:v1 : GoogleCloudContactcenterinsightsV1NoteAssessmentNote
/// - contactcenterinsights:v1 : GoogleCloudContactcenterinsightsV1PublishAssessmentRequest
/// - contactcenterinsights:v1 : GoogleCloudContactcenterinsightsV1RegexMatchConfig
/// - contactcenterinsights:v1 : GoogleCloudContactcenterinsightsV1SilenceData
/// - contactcenterinsights:v1 : GoogleCloudContactcenterinsightsV1UndeployQaScorecardRevisionRequest
/// - contactcenterinsights:v1 : GoogleProtobufEmpty
/// - container:v1 : CompleteNodePoolUpgradeRequest
/// - container:v1 : Empty
/// - container:v1 : SecondaryBootDiskUpdateStrategy
/// - containeranalysis:v1 : AISkillAnalysisNote
/// - containeranalysis:v1 : CloudStorageLocation
/// - containeranalysis:v1 : Empty
/// - containeranalysis:v1 : SecretNote
/// - css:v1 : Empty
/// - curationpartners:v1 : ActivateCuratedPackageRequest
/// - curationpartners:v1 : ActivateDataSegmentRequest
/// - curationpartners:v1 : DeactivateCuratedPackageRequest
/// - curationpartners:v1 : DeactivateDataSegmentRequest
/// - curationpartners:v1 : Empty
/// - curationpartners:v1 : RunReportRequest
/// - dataform:v1 : ActionSimpleLoadMode
/// - dataform:v1 : CancelOperationRequest
/// - dataform:v1 : CancelWorkflowInvocationRequest
/// - dataform:v1 : CancelWorkflowInvocationResponse
/// - dataform:v1 : CommitWorkspaceChangesResponse
/// - dataform:v1 : DeleteFile
/// - dataform:v1 : Empty
/// - dataform:v1 : InstallNpmPackagesResponse
/// - dataform:v1 : MakeDirectoryResponse
/// - dataform:v1 : MoveDirectoryResponse
/// - dataform:v1 : MoveFileResponse
/// - dataform:v1 : PullGitCommitsResponse
/// - dataform:v1 : PushGitCommitsResponse
/// - dataform:v1 : RemoveDirectoryResponse
/// - dataform:v1 : RemoveFileResponse
/// - dataform:v1 : ResetWorkspaceChangesResponse
/// - dataform:v1 : SimpleLoadMode
/// - dataform:v1 : WriteFileResponse
/// - datafusion:v1 : CancelOperationRequest
/// - datafusion:v1 : Empty
/// - datafusion:v1 : RestartInstanceRequest
/// - datalineage:v1 : GoogleLongrunningCancelOperationRequest
/// - datalineage:v1 : GoogleProtobufEmpty
/// - datamanager:v1 : Empty
/// - datamanager:v1 : IngestAdEventsResponse
/// - datamanager:v1 : RemoveAllAudienceMembersStatus
/// - datamigration:v1 : CancelOperationRequest
/// - datamigration:v1 : DemoteDestinationRequest
/// - datamigration:v1 : Empty
/// - datamigration:v1 : LogMiner
/// - datamigration:v1 : OracleAsmLogFileAccess
/// - datamigration:v1 : RollbackConversionWorkspaceRequest
/// - datamigration:v1 : SetDraftEntityDdlResponse
/// - datamigration:v1 : StaticIpConnectivity
/// - datamigration:v1 : StaticServiceIpConnectivity
/// - datamigration:v1 : StopMigrationJobRequest
/// - datapipelines:v1 : GoogleCloudDatapipelinesV1RunPipelineRequest
/// - datapipelines:v1 : GoogleCloudDatapipelinesV1StopPipelineRequest
/// - datapipelines:v1 : GoogleProtobufEmpty
/// - dataplex:v1 : Empty
/// - dataplex:v1 : GoogleCloudDataplexV1ActionInvalidDataOrganization
/// - dataplex:v1 : GoogleCloudDataplexV1ActionMissingData
/// - dataplex:v1 : GoogleCloudDataplexV1ActionMissingResource
/// - dataplex:v1 : GoogleCloudDataplexV1ActionUnauthorizedResource
/// - dataplex:v1 : GoogleCloudDataplexV1CancelDataScanJobRequest
/// - dataplex:v1 : GoogleCloudDataplexV1CancelDataScanJobResponse
/// - dataplex:v1 : GoogleCloudDataplexV1CancelJobRequest
/// - dataplex:v1 : GoogleCloudDataplexV1CancelMetadataJobRequest
/// - dataplex:v1 : GoogleCloudDataplexV1DataQualityRuleNonNullExpectation
/// - dataplex:v1 : GoogleCloudDataplexV1DataQualityRuleUniquenessExpectation
/// - dataplex:v1 : GoogleCloudDataplexV1DataQualitySpecPostScanActionsJobEndTrigger
/// - dataplex:v1 : GoogleCloudDataplexV1DataQualitySpecPostScanActionsJobFailureTrigger
/// - dataplex:v1 : GoogleCloudDataplexV1ExecutionIdentityDataplexServiceAgent
/// - dataplex:v1 : GoogleCloudDataplexV1ExecutionIdentityUserCredential
/// - dataplex:v1 : GoogleCloudDataplexV1GenerateDataQualityRulesRequest
/// - dataplex:v1 : GoogleCloudDataplexV1RunDataScanRequest
/// - dataplex:v1 : GoogleCloudDataplexV1TriggerOnDemand
/// - dataplex:v1 : GoogleLongrunningCancelOperationRequest
/// - dataportability:v1 : CancelPortabilityArchiveRequest
/// - dataportability:v1 : CancelPortabilityArchiveResponse
/// - dataportability:v1 : CheckAccessTypeRequest
/// - dataportability:v1 : Empty
/// - dataportability:v1 : ResetAuthorizationRequest
/// - dataportability:v1 : RetryPortabilityArchiveRequest
/// - dataproc:v1 : CancelJobRequest
/// - dataproc:v1 : Empty
/// - dataproc:v1 : SparkConnectConfig
/// - dataproc:v1 : WriteSessionSparkApplicationContextResponse
/// - dataproc:v1 : WriteSparkApplicationContextResponse
/// - datastore:v1 : Empty
/// - datastore:v1 : ReserveIdsResponse
/// - datastore:v1 : RollbackResponse
/// - datastream:v1 : AppendOnly
/// - datastream:v1 : AvroFileFormat
/// - datastream:v1 : BackfillNoneStrategy
/// - datastream:v1 : BasicEncryption
/// - datastream:v1 : BigQueryProfile
/// - datastream:v1 : BinaryLogPosition
/// - datastream:v1 : CancelOperationRequest
/// - datastream:v1 : DropLargeObjects
/// - datastream:v1 : Empty
/// - datastream:v1 : EncryptionNotEnforced
/// - datastream:v1 : Gtid
/// - datastream:v1 : LogMiner
/// - datastream:v1 : Merge
/// - datastream:v1 : MostRecentStartPosition
/// - datastream:v1 : NextAvailableStartPosition
/// - datastream:v1 : OracleAsmLogFileAccess
/// - datastream:v1 : SqlServerTransactionLogs
/// - datastream:v1 : SrvConnectionFormat
/// - datastream:v1 : StaticServiceIpConnectivity
/// - datastream:v1 : StopBackfillJobRequest
/// - datastream:v1 : StreamLargeObjects
/// - deepreview:v1 : DownloadDocumentResponse
/// - deepreview:v1 : Empty
/// - developerconnect:v1 : CancelOperationRequest
/// - developerconnect:v1 : Empty
/// - developerconnect:v1 : FetchAccessTokenRequest
/// - developerconnect:v1 : FetchReadTokenRequest
/// - developerconnect:v1 : FetchReadWriteTokenRequest
/// - devicerun:v1 : CatalogAndroidxTestOrchestratorDetails
/// - devicerun:v1 : CatalogAutomationSupport
/// - devicerun:v1 : CatalogIosDeviceDetails
/// - devicerun:v1 : Empty
/// - devicerun:v1 : GoogleLongrunningCancelOperationRequest
/// - dialogflow:v2 : GoogleCloudDialogflowV2AgentAssistantFeedbackCompanionFeedback
/// - dialogflow:v2 : GoogleCloudDialogflowV2CompanionAgentKnowledgeSource
/// - dialogflow:v2 : GoogleCloudDialogflowV2CompleteConversationRequest
/// - dialogflow:v2 : GoogleCloudDialogflowV2DeployConversationModelRequest
/// - dialogflow:v2 : GoogleCloudDialogflowV2ResponseMessageEndInteraction
/// - dialogflow:v2 : GoogleCloudDialogflowV2TrainAgentRequest
/// - dialogflow:v2 : GoogleCloudDialogflowV2UndeployConversationModelRequest
/// - dialogflow:v2 : GoogleProtobufEmpty
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3ResponseMessageEndInteraction
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3ResponseMessageKnowledgeInfoCard
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3RestorePlaybookVersionRequest
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3RestoreToolVersionRequest
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3RunContinuousTestRequest
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3StartExperimentRequest
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3StopExperimentRequest
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3ToolDataStoreToolFallbackPrompt
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3TrainFlowRequest
/// - dialogflow:v3 : GoogleProtobufEmpty
/// - dlp:v2 : GooglePrivacyDlpV2ActivateJobTriggerRequest
/// - dlp:v2 : GooglePrivacyDlpV2AllInfoTypes
/// - dlp:v2 : GooglePrivacyDlpV2AllMessages
/// - dlp:v2 : GooglePrivacyDlpV2AllOtherBigQueryTables
/// - dlp:v2 : GooglePrivacyDlpV2AllOtherDatabaseResources
/// - dlp:v2 : GooglePrivacyDlpV2AllOtherResources
/// - dlp:v2 : GooglePrivacyDlpV2AllText
/// - dlp:v2 : GooglePrivacyDlpV2CancelDlpJobRequest
/// - dlp:v2 : GooglePrivacyDlpV2CloudSqlIamCredential
/// - dlp:v2 : GooglePrivacyDlpV2Disabled
/// - dlp:v2 : GooglePrivacyDlpV2Encloses
/// - dlp:v2 : GooglePrivacyDlpV2FinishDlpJobRequest
/// - dlp:v2 : GooglePrivacyDlpV2FullyInside
/// - dlp:v2 : GooglePrivacyDlpV2GlobalProcessing
/// - dlp:v2 : GooglePrivacyDlpV2HybridInspectResponse
/// - dlp:v2 : GooglePrivacyDlpV2JobNotificationEmails
/// - dlp:v2 : GooglePrivacyDlpV2LeaveUntransformed
/// - dlp:v2 : GooglePrivacyDlpV2Manual
/// - dlp:v2 : GooglePrivacyDlpV2MultiRegionProcessing
/// - dlp:v2 : GooglePrivacyDlpV2Overlap
/// - dlp:v2 : GooglePrivacyDlpV2PublishFindingsToCloudDataCatalog
/// - dlp:v2 : GooglePrivacyDlpV2PublishFindingsToDataplexCatalog
/// - dlp:v2 : GooglePrivacyDlpV2PublishSummaryToCscc
/// - dlp:v2 : GooglePrivacyDlpV2PublishToChronicle
/// - dlp:v2 : GooglePrivacyDlpV2PublishToSecurityCommandCenter
/// - dlp:v2 : GooglePrivacyDlpV2PublishToStackdriver
/// - dlp:v2 : GooglePrivacyDlpV2RedactConfig
/// - dlp:v2 : GooglePrivacyDlpV2ReplaceWithInfoTypeConfig
/// - dlp:v2 : GooglePrivacyDlpV2SecretsDiscoveryTarget
/// - dlp:v2 : GooglePrivacyDlpV2SurrogateType
/// - dlp:v2 : GooglePrivacyDlpV2ThrowError
/// - dlp:v2 : GoogleProtobufEmpty
/// - dns:v1 : Empty
/// - dns:v1 : ResourceRecordSetsDeleteResponse
/// - docs:v1 : EmbeddedDrawingProperties
/// - docs:v1 : EmbeddedDrawingPropertiesSuggestionState
/// - documentai:v1 : GoogleCloudDocumentaiV1DeployProcessorVersionRequest
/// - documentai:v1 : GoogleCloudDocumentaiV1DisableProcessorRequest
/// - documentai:v1 : GoogleCloudDocumentaiV1EnableProcessorRequest
/// - documentai:v1 : GoogleCloudDocumentaiV1UndeployProcessorVersionRequest
/// - documentai:v1 : GoogleProtobufEmpty
/// - doubleclicksearch:v2 : IdMappingFile
/// - driveactivity:v2 : Administrator
/// - driveactivity:v2 : AnonymousUser
/// - driveactivity:v2 : Anyone
/// - driveactivity:v2 : DeletedUser
/// - driveactivity:v2 : DriveFile
/// - driveactivity:v2 : Edit
/// - driveactivity:v2 : Legacy
/// - driveactivity:v2 : New
/// - driveactivity:v2 : NoConsolidation
/// - driveactivity:v2 : UnknownUser
/// - driveactivity:v2 : Upload
/// - drivelabels:v2 : GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseDeleteFieldResponse
/// - drivelabels:v2 : GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseDeleteSelectionChoiceResponse
/// - drivelabels:v2 : GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseDisableFieldResponse
/// - drivelabels:v2 : GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseDisableSelectionChoiceResponse
/// - drivelabels:v2 : GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseEnableFieldResponse
/// - drivelabels:v2 : GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseEnableSelectionChoiceResponse
/// - drivelabels:v2 : GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseUpdateFieldTypeResponse
/// - drivelabels:v2 : GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseUpdateLabelPropertiesResponse
/// - drivelabels:v2 : GoogleProtobufEmpty
/// - essentialcontacts:v1 : GoogleProtobufEmpty
/// - eventarc:v1 : Empty
/// - eventarc:v1 : GoogleCloudEventarcV1PipelineMessagePayloadFormatJsonFormat
/// - eventarc:v1 : GoogleLongrunningCancelOperationRequest
/// - fcm:v1 : AndroidBackgroundSyncMessage
/// - fcm:v1 : Empty
/// - file:v1 : CancelOperationRequest
/// - file:v1 : Empty
/// - file:v1 : PauseReplicaRequest
/// - file:v1 : ResumeReplicaRequest
/// - firebaseappcheck:v1 : GoogleFirebaseAppcheckV1GenerateAppAttestChallengeRequest
/// - firebaseappcheck:v1 : GoogleFirebaseAppcheckV1GeneratePlayIntegrityChallengeRequest
/// - firebaseappcheck:v1 : GoogleProtobufEmpty
/// - firebaseappdistribution:v1 : GoogleFirebaseAppdistroV1DistributeReleaseResponse
/// - firebaseappdistribution:v1 : GoogleLongrunningCancelOperationRequest
/// - firebaseappdistribution:v1 : GoogleProtobufEmpty
/// - firebaseapphosting:v1 : CancelOperationRequest
/// - firebaseapphosting:v1 : Empty
/// - firebasedataconnect:v1 : CancelOperationRequest
/// - firebasedataconnect:v1 : Empty
/// - firebasehosting:v1 : CancelOperationRequest
/// - firebasehosting:v1 : Empty
/// - firebaserules:v1 : Empty
/// - firestore:v1 : Empty
/// - firestore:v1 : GoogleFirestoreAdminV1DailyRecurrence
/// - firestore:v1 : GoogleFirestoreAdminV1DatabaseScope
/// - firestore:v1 : GoogleFirestoreAdminV1DisableUserCredsRequest
/// - firestore:v1 : GoogleFirestoreAdminV1EnableUserCredsRequest
/// - firestore:v1 : GoogleFirestoreAdminV1FlatIndex
/// - firestore:v1 : GoogleFirestoreAdminV1GoogleDefaultEncryptionOptions
/// - firestore:v1 : GoogleFirestoreAdminV1ResetUserPasswordRequest
/// - firestore:v1 : GoogleFirestoreAdminV1SourceEncryptionOptions
/// - firestore:v1 : GoogleLongrunningCancelOperationRequest
/// - forms:v1 : Empty
/// - forms:v1 : PageBreakItem
/// - forms:v1 : RenewWatchRequest
/// - forms:v1 : TextItem
/// - ftp:v1 : CancelOperationRequest
/// - ftp:v1 : Empty
/// - ftp:v1 : StartServerRequest
/// - ftp:v1 : StopServerRequest
/// - gkebackup:v1 : Empty
/// - gkebackup:v1 : GoogleLongrunningCancelOperationRequest
/// - gkehub:v2 : CancelOperationRequest
/// - gkehub:v2 : Empty
/// - gkehub:v2 : RBACRoleBindingActuationSpec
/// - gkeonprem:v1 : CancelOperationRequest
/// - gkeonprem:v1 : Empty
/// - gmail:v1 : DisableCseKeyPairRequest
/// - gmail:v1 : EnableCseKeyPairRequest
/// - gmail:v1 : ObliterateCseKeyPairRequest
/// - gmailpostmastertools:v2 : Empty
/// - gmailpostmastertools:v2 : VerifyDomainResponse
/// - health:v4 : Empty
/// - healthcare:v1 : ArchiveUserDataMappingRequest
/// - healthcare:v1 : ArchiveUserDataMappingResponse
/// - healthcare:v1 : CancelOperationRequest
/// - healthcare:v1 : Empty
/// - healthcare:v1 : RedactConfig
/// - healthcare:v1 : ReplaceWithInfoTypeConfig
/// - healthcare:v1 : SchemaFlattened
/// - healthcare:v1 : SchemaJSON
/// - homegraph:v1 : Empty
/// - homegraph:v1 : RequestSyncDevicesResponse
/// - hypercomputecluster:v1 : CancelOperationRequest
/// - hypercomputecluster:v1 : Empty
/// - iam:v1 : DisableServiceAccountKeyRequest
/// - iam:v1 : DisableServiceAccountRequest
/// - iam:v1 : Empty
/// - iam:v1 : EnableServiceAccountKeyRequest
/// - iam:v1 : EnableServiceAccountRequest
/// - iam:v1 : RevokeWorkforcePoolSubjectSessionsRequest
/// - iam:v1 : UndeleteOauthClientRequest
/// - iam:v1 : UndeleteServiceAccountRequest
/// - iam:v1 : UndeleteWorkforcePoolProviderKeyRequest
/// - iam:v1 : UndeleteWorkforcePoolProviderRequest
/// - iam:v1 : UndeleteWorkforcePoolProviderScimTenantRequest
/// - iam:v1 : UndeleteWorkforcePoolRequest
/// - iam:v1 : UndeleteWorkforcePoolSubjectRequest
/// - iam:v1 : UndeleteWorkloadIdentityPoolManagedIdentityRequest
/// - iam:v1 : UndeleteWorkloadIdentityPoolNamespaceRequest
/// - iam:v1 : UndeleteWorkloadIdentityPoolProviderKeyRequest
/// - iam:v1 : UndeleteWorkloadIdentityPoolProviderRequest
/// - iam:v1 : UndeleteWorkloadIdentityPoolRequest
/// - iap:v1 : Empty
/// - iap:v1 : ResetIdentityAwareProxyClientSecretRequest
/// - iap:v1 : ValidateIapAttributeExpressionResponse
/// - identitytoolkit:v1 : GoogleCloudIdentitytoolkitV1TotpInfo
/// - identitytoolkit:v2 : GoogleCloudIdentitytoolkitAdminV2InitializeIdentityPlatformRequest
/// - identitytoolkit:v2 : GoogleCloudIdentitytoolkitAdminV2InitializeIdentityPlatformResponse
/// - identitytoolkit:v2 : GoogleCloudIdentitytoolkitV2FinalizeMfaTotpEnrollmentResponseInfo
/// - identitytoolkit:v2 : GoogleCloudIdentitytoolkitV2RevokeTokenResponse
/// - identitytoolkit:v2 : GoogleCloudIdentitytoolkitV2StartMfaTotpEnrollmentRequestInfo
/// - identitytoolkit:v2 : GoogleProtobufEmpty
/// - ids:v1 : CancelOperationRequest
/// - ids:v1 : Empty
/// - jobs:v4 : Empty
/// - keep:v1 : Empty
/// - keep:v1 : Family
/// - language:v1 : ClassificationModelOptionsV1Model
/// - licensing:v1 : Empty
/// - logging:v2 : CancelOperationRequest
/// - logging:v2 : Empty
/// - logging:v2 : UndeleteBucketRequest
/// - logging:v2 : WriteLogEntriesResponse
/// - looker:v1 : CancelOperationRequest
/// - looker:v1 : Empty
/// - looker:v1 : RestartInstanceRequest
/// - looker:v1 : UndeleteInstanceRequest
/// - managedidentities:v1 : CancelOperationRequest
/// - managedidentities:v1 : CheckMigrationPermissionRequest
/// - managedidentities:v1 : DisableMigrationRequest
/// - managedidentities:v1 : Empty
/// - managedidentities:v1 : ResetAdminPasswordRequest
/// - managedkafka:v1 : CancelOperationRequest
/// - managedkafka:v1 : Empty
/// - managedkafka:v1 : PauseConnectorRequest
/// - managedkafka:v1 : PauseConnectorResponse
/// - managedkafka:v1 : RestartConnectorRequest
/// - managedkafka:v1 : RestartConnectorResponse
/// - managedkafka:v1 : ResumeConnectorRequest
/// - managedkafka:v1 : ResumeConnectorResponse
/// - managedkafka:v1 : StopConnectorRequest
/// - managedkafka:v1 : StopConnectorResponse
/// - manufacturers:v1 : Empty
/// - meet:v2 : Empty
/// - meet:v2 : EndActiveConferenceRequest
/// - merchantapi:accounts_v1 : AccountAggregation
/// - merchantapi:accounts_v1 : AccountManagement
/// - merchantapi:accounts_v1 : ApproveAccountServiceRequest
/// - merchantapi:accounts_v1 : CampaignsManagement
/// - merchantapi:accounts_v1 : ComparisonShopping
/// - merchantapi:accounts_v1 : DisableProgramRequest
/// - merchantapi:accounts_v1 : Empty
/// - merchantapi:accounts_v1 : EnableProgramRequest
/// - merchantapi:accounts_v1 : LocalListingManagement
/// - merchantapi:accounts_v1 : ProductsManagement
/// - merchantapi:accounts_v1 : RejectAccountServiceRequest
/// - merchantapi:accounts_v1 : RequestInventoryVerificationRequest
/// - merchantapi:accounts_v1 : UnclaimHomepageRequest
/// - merchantapi:accounts_v1 : UnregisterGcpRequest
/// - merchantapi:accounts_v1 : VerifySelfRequest
/// - merchantapi:conversions_v1 : Empty
/// - merchantapi:conversions_v1 : UndeleteConversionSourceRequest
/// - merchantapi:datasources_v1 : Empty
/// - merchantapi:datasources_v1 : FetchDataSourceRequest
/// - merchantapi:datasources_v1 : MerchantReviewDataSource
/// - merchantapi:datasources_v1 : ProductReviewDataSource
/// - merchantapi:inventories_v1 : Empty
/// - merchantapi:issueresolution_v1 : CheckboxInput
/// - merchantapi:lfp_v1 : Empty
/// - merchantapi:notifications_v1 : Empty
/// - merchantapi:products_v1 : Empty
/// - migrationcenter:v1 : AggregationCount
/// - migrationcenter:v1 : AggregationFrequency
/// - migrationcenter:v1 : AggregationSum
/// - migrationcenter:v1 : AssetsExportJobInventory
/// - migrationcenter:v1 : AssetsExportJobNetworkDependencies
/// - migrationcenter:v1 : AwsRds
/// - migrationcenter:v1 : CancelOperationRequest
/// - migrationcenter:v1 : CascadeLogicalDBsRule
/// - migrationcenter:v1 : Empty
/// - migrationcenter:v1 : ReportAssetFramesResponse
/// - monitoring:v3 : AvailabilityCriteria
/// - monitoring:v3 : Custom
/// - monitoring:v3 : Empty
/// - monitoring:v3 : SendNotificationChannelVerificationCodeRequest
/// - mybusinessaccountmanagement:v1 : AcceptInvitationRequest
/// - mybusinessaccountmanagement:v1 : DeclineInvitationRequest
/// - mybusinessaccountmanagement:v1 : Empty
/// - mybusinessbusinessinformation:v1 : Empty
/// - mybusinessplaceactions:v1 : Empty
/// - mybusinessverifications:v1 : ResolveOwnershipConflict
/// - mybusinessverifications:v1 : WaitForVoiceOfMerchant
/// - netapp:v1 : CancelOperationRequest
/// - netapp:v1 : EncryptVolumesRequest
/// - netapp:v1 : GoogleProtobufEmpty
/// - netapp:v1 : ResumeReplicationRequest
/// - netapp:v1 : ReverseReplicationDirectionRequest
/// - netapp:v1 : StartSplitRequest
/// - netapp:v1 : SwitchActiveReplicaZoneRequest
/// - netapp:v1 : SyncReplicationRequest
/// - netapp:v1 : VerifyKmsConfigRequest
/// - networkconnectivity:v1 : Empty
/// - networkconnectivity:v1 : GoogleLongrunningCancelOperationRequest
/// - networkmanagement:v1 : CancelOperationRequest
/// - networkmanagement:v1 : Empty
/// - networkmanagement:v1 : RerunConnectivityTestRequest
/// - networksecurity:v1 : AuthzPolicyCustomProviderCloudIap
/// - networksecurity:v1 : CancelOperationRequest
/// - networksecurity:v1 : Empty
/// - networkservices:v1 : CancelOperationRequest
/// - networkservices:v1 : Empty
/// - notebooks:v2 : CancelOperationRequest
/// - notebooks:v2 : Empty
/// - notebooks:v2 : ResetInstanceRequest
/// - notebooks:v2 : StartInstanceRequest
/// - notebooks:v2 : StopInstanceRequest
/// - observability:v1 : CancelOperationRequest
/// - observability:v1 : Empty
/// - observability:v1 : ReprovisionBucketRequest
/// - ondemandscanning:v1 : Empty
/// - oracledatabase:v1 : CancelOperationRequest
/// - oracledatabase:v1 : DisableCloudVmClusterIdentityConnectorRequest
/// - oracledatabase:v1 : DisableExadbVmClusterIdentityConnectorRequest
/// - oracledatabase:v1 : Empty
/// - oracledatabase:v1 : EnableCloudVmClusterIdentityConnectorRequest
/// - oracledatabase:v1 : EnableExadbVmClusterIdentityConnectorRequest
/// - oracledatabase:v1 : RestartAutonomousDatabaseRequest
/// - oracledatabase:v1 : StartAutonomousDatabaseRequest
/// - oracledatabase:v1 : StartGoldengateDeploymentRequest
/// - oracledatabase:v1 : StopAutonomousDatabaseRequest
/// - oracledatabase:v1 : StopGoldengateDeploymentRequest
/// - oracledatabase:v1 : TestDatabaseConnectionRequest
/// - orgpolicy:v2 : GoogleProtobufEmpty
/// - osconfig:v2 : CancelOperationRequest
/// - osconfig:v2 : Empty
/// - oslogin:v1 : Empty
/// - parallelstore:v1 : CancelOperationRequest
/// - parallelstore:v1 : GoogleProtobufEmpty
/// - parametermanager:v1 : Empty
/// - paymentsresellersubscription:v1 : UndoCancelSubscriptionRequest
/// - people:v1 : Empty
/// - playintegrity:v1 : WriteDeviceRecallResponse
/// - privateca:v1 : CancelOperationRequest
/// - privateca:v1 : Empty
/// - pubsub:v1 : AvroFormat
/// - pubsub:v1 : DetachSubscriptionResponse
/// - pubsub:v1 : Empty
/// - pubsub:v1 : PubSubAvroFormat
/// - pubsub:v1 : PubsubWrapper
/// - pubsub:v1 : RowKeySchema
/// - pubsub:v1 : SeekResponse
/// - pubsub:v1 : TextConfig
/// - pubsub:v1 : ValidateMessageResponse
/// - pubsub:v1 : ValidateSchemaResponse
/// - readerrevenuesubscriptionlinking:v1 : DeleteReaderResponse
/// - realtimebidding:v1 : ActivatePretargetingConfigRequest
/// - realtimebidding:v1 : CloseUserListRequest
/// - realtimebidding:v1 : Empty
/// - realtimebidding:v1 : OpenUserListRequest
/// - realtimebidding:v1 : SuspendPretargetingConfigRequest
/// - realtimebidding:v1 : WatchCreativesRequest
/// - recaptchaenterprise:v1 : GoogleCloudRecaptchaenterpriseV1AddIpOverrideResponse
/// - recaptchaenterprise:v1 : GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentResponse
/// - recaptchaenterprise:v1 : GoogleCloudRecaptchaenterpriseV1ChallengeRuleEvaluation
/// - recaptchaenterprise:v1 : GoogleCloudRecaptchaenterpriseV1ChallengeRuleNoChallengeOutcome
/// - recaptchaenterprise:v1 : GoogleCloudRecaptchaenterpriseV1ExpressKeySettings
/// - recaptchaenterprise:v1 : GoogleCloudRecaptchaenterpriseV1FirewallActionAllowAction
/// - recaptchaenterprise:v1 : GoogleCloudRecaptchaenterpriseV1FirewallActionBlockAction
/// - recaptchaenterprise:v1 : GoogleCloudRecaptchaenterpriseV1FirewallActionIncludeRecaptchaScriptAction
/// - recaptchaenterprise:v1 : GoogleCloudRecaptchaenterpriseV1FirewallActionRedirectAction
/// - recaptchaenterprise:v1 : GoogleCloudRecaptchaenterpriseV1RemoveIpOverrideResponse
/// - recaptchaenterprise:v1 : GoogleCloudRecaptchaenterpriseV1ReorderFirewallPoliciesResponse
/// - recaptchaenterprise:v1 : GoogleCloudRecaptchaenterpriseV1UniversalKeySettings
/// - recaptchaenterprise:v1 : GoogleProtobufEmpty
/// - redis:v1 : Empty
/// - retail:v2 : GoogleCloudRetailV2PauseModelRequest
/// - retail:v2 : GoogleCloudRetailV2ResumeModelRequest
/// - retail:v2 : GoogleCloudRetailV2TuneModelRequest
/// - retail:v2 : GoogleProtobufEmpty
/// - run:v2 : GoogleCloudRunV2BuildConfigurationDockerBuild
/// - run:v2 : GoogleCloudRunV2DockerBuild
/// - run:v2 : GoogleProtobufEmpty
/// - runtimeconfig:v1 : CancelOperationRequest
/// - runtimeconfig:v1 : Empty
/// - saasservicemgmt:v1 : Deprovision
/// - saasservicemgmt:v1 : Empty
/// - script:v1 : Empty
/// - searchads360:v23 : GoogleAdsSearchads360V23Common_PolicyTopicConstraint_ResellerConstraint
/// - searchads360:v23 : GoogleAdsSearchads360V23Common__BookOnGoogleAsset
/// - searchads360:v23 : GoogleAdsSearchads360V23Common__EnhancedCpc
/// - searchads360:v23 : GoogleAdsSearchads360V23Common__HotelAdInfo
/// - searchads360:v23 : GoogleAdsSearchads360V23Common__ManualCpa
/// - searchads360:v23 : GoogleAdsSearchads360V23Common__ManualCpm
/// - searchads360:v23 : GoogleAdsSearchads360V23Common__ManualCpv
/// - searchads360:v23 : GoogleAdsSearchads360V23Common__SearchAds360ProductAdInfo
/// - searchads360:v23 : GoogleAdsSearchads360V23Common__ShoppingProductAdInfo
/// - searchads360:v23 : GoogleAdsSearchads360V23Common__ShoppingSmartAdInfo
/// - searchads360:v23 : GoogleAdsSearchads360V23Common__TargetCpm
/// - searchads360:v23 : GoogleAdsSearchads360V23Common__TravelAdInfo
/// - searchads360:v23 : GoogleAdsSearchads360V23Common__UnknownListingDimensionInfo
/// - searchads360:v23 : GoogleAdsSearchads360V23Resources_Recommendation_CallAssetRecommendation
/// - searchads360:v23 : GoogleAdsSearchads360V23Resources_Recommendation_DisplayExpansionOptInRecommendation
/// - searchads360:v23 : GoogleAdsSearchads360V23Resources_Recommendation_DynamicImageExtensionOptInRecommendation
/// - searchads360:v23 : GoogleAdsSearchads360V23Resources_Recommendation_EnhancedCpcOptInRecommendation
/// - searchads360:v23 : GoogleAdsSearchads360V23Resources_Recommendation_ImproveGoogleTagCoverageRecommendation
/// - searchads360:v23 : GoogleAdsSearchads360V23Resources_Recommendation_LeadFormAssetRecommendation
/// - searchads360:v23 : GoogleAdsSearchads360V23Resources_Recommendation_MaximizeConversionValueOptInRecommendation
/// - searchads360:v23 : GoogleAdsSearchads360V23Resources_Recommendation_OptimizeAdRotationRecommendation
/// - searchads360:v23 : GoogleAdsSearchads360V23Resources_Recommendation_PerformanceMaxFinalUrlOptInRecommendation
/// - searchads360:v23 : GoogleAdsSearchads360V23Resources_Recommendation_PerformanceMaxOptInRecommendation
/// - searchads360:v23 : GoogleAdsSearchads360V23Resources_Recommendation_SearchPartnersOptInRecommendation
/// - searchads360:v23 : GoogleAdsSearchads360V23Resources_Recommendation_UpgradeLocalCampaignToPerformanceMaxRecommendation
/// - searchads360:v23 : GoogleAdsSearchads360V23Services__RegenerateShareableLinkIdRequest
/// - searchads360:v23 : GoogleAdsSearchads360V23Services__RegenerateShareableLinkIdResponse
/// - searchads360:v23 : GoogleAdsSearchads360V23Services__RunBatchJobRequest
/// - searchads360:v23 : GoogleProtobuf__Empty
/// - secretmanager:v1 : Empty
/// - secretmanager:v1 : RotateSecretRequest
/// - securesourcemanager:v1 : CancelOperationRequest
/// - securesourcemanager:v1 : ClosePullRequestRequest
/// - securesourcemanager:v1 : Empty
/// - securesourcemanager:v1 : MergePullRequestRequest
/// - securesourcemanager:v1 : OpenPullRequestRequest
/// - securitycenter:v1 : Empty
/// - securitycenter:v1 : RunAssetDiscoveryRequest
/// - securityposture:v1 : CancelOperationRequest
/// - securityposture:v1 : Empty
/// - serviceconsumermanagement:v1 : CancelOperationRequest
/// - serviceconsumermanagement:v1 : Empty
/// - servicedirectory:v1 : Empty
/// - servicemanagement:v1 : DeleteServiceStrategy
/// - servicenetworking:v1 : CancelOperationRequest
/// - servicenetworking:v1 : Empty
/// - serviceusage:v1 : CancelOperationRequest
/// - serviceusage:v1 : Empty
/// - serviceusage:v1 : EnableServiceRequest
/// - sheets:v4 : ClearValuesRequest
/// - spanner:v1 : AddSplitPointsResponse
/// - spanner:v1 : DualRegionQuorum
/// - spanner:v1 : Empty
/// - spanner:v1 : FullBackupSpec
/// - spanner:v1 : IncrementalBackupSpec
/// - spanner:v1 : PartitionedDml
/// - speech:v1 : Empty
/// - sqladmin:v1 : Empty
/// - sqladmin:v1 : StopWorkloadReplayContext
/// - sqladmin:v1 : SwitchoverBlueGreenDeploymentRequest
/// - storagebatchoperations:v1 : CancelJobResponse
/// - storagebatchoperations:v1 : CancelOperationRequest
/// - storagebatchoperations:v1 : Empty
/// - storagetransfer:v1 : CancelOperationRequest
/// - storagetransfer:v1 : Empty
/// - storagetransfer:v1 : PauseTransferOperationRequest
/// - storagetransfer:v1 : ResumeTransferOperationRequest
/// - streetviewpublish:v1 : Empty
/// - testing:v1 : CancelDeviceSessionRequest
/// - testing:v1 : Empty
/// - testing:v1 : GoogleAuto
/// - testing:v1 : LauncherActivityIntent
/// - testing:v1 : NoActivityIntent
/// - texttospeech:v1 : CancelOperationRequest
/// - texttospeech:v1 : Empty
/// - tpu:v2 : AcceptedData
/// - tpu:v2 : ActiveData
/// - tpu:v2 : CreatingData
/// - tpu:v2 : DeletingData
/// - tpu:v2 : Empty
/// - tpu:v2 : GenerateServiceIdentityRequest
/// - tpu:v2 : ProvisioningData
/// - tpu:v2 : ResetQueuedResourceRequest
/// - tpu:v2 : Spot
/// - tpu:v2 : StartNodeRequest
/// - tpu:v2 : StopNodeRequest
/// - tpu:v2 : SuspendedData
/// - tpu:v2 : SuspendingData
/// - trafficdirector:v3 : NullMatch
/// - transcoder:v1 : Aes128Encryption
/// - transcoder:v1 : Clearkey
/// - transcoder:v1 : Empty
/// - transcoder:v1 : Fairplay
/// - transcoder:v1 : H264ColorFormatHLG
/// - transcoder:v1 : H264ColorFormatSDR
/// - transcoder:v1 : H265ColorFormatHDR10
/// - transcoder:v1 : H265ColorFormatHLG
/// - transcoder:v1 : H265ColorFormatSDR
/// - transcoder:v1 : Playready
/// - transcoder:v1 : SampleAesEncryption
/// - transcoder:v1 : Vp9ColorFormatHLG
/// - transcoder:v1 : Vp9ColorFormatSDR
/// - transcoder:v1 : Widevine
/// - translate:v3 : CancelOperationRequest
/// - translate:v3 : Empty
/// - vault:v1 : CancelOperationRequest
/// - vault:v1 : CloseMatterRequest
/// - vault:v1 : Empty
/// - vault:v1 : GeminiInWorkspaceOptions
/// - vault:v1 : GeminiOptions
/// - vault:v1 : HeldCalendarQuery
/// - vault:v1 : HeldGeminiQuery
/// - vault:v1 : ReopenMatterRequest
/// - vault:v1 : UndeleteMatterRequest
/// - verifiedaccess:v2 : Empty
/// - vision:v1 : CancelOperationRequest
/// - vision:v1 : Empty
/// - vmmigration:v1 : AdaptingOSStep
/// - vmmigration:v1 : CancelCloneJobRequest
/// - vmmigration:v1 : CancelCutoverJobRequest
/// - vmmigration:v1 : CancelDiskMigrationJobRequest
/// - vmmigration:v1 : CancelImageImportJobRequest
/// - vmmigration:v1 : CancelOperationRequest
/// - vmmigration:v1 : CopyingSourceDiskSnapshotStep
/// - vmmigration:v1 : CreatingImageStep
/// - vmmigration:v1 : CreatingSourceDiskSnapshotStep
/// - vmmigration:v1 : DisksMigrationDisksTargetDefaults
/// - vmmigration:v1 : DisksMigrationDisksTargetDetails
/// - vmmigration:v1 : Empty
/// - vmmigration:v1 : ExtendMigrationRequest
/// - vmmigration:v1 : FinalizeMigrationRequest
/// - vmmigration:v1 : InitializingImageImportStep
/// - vmmigration:v1 : InitializingReplicationStep
/// - vmmigration:v1 : InstantiatingMigratedVMStep
/// - vmmigration:v1 : LoadingImageSourceFilesStep
/// - vmmigration:v1 : PauseMigrationRequest
/// - vmmigration:v1 : PostProcessingStep
/// - vmmigration:v1 : PreparingVMDisksStep
/// - vmmigration:v1 : ProvisioningTargetDiskStep
/// - vmmigration:v1 : ResumeMigrationRequest
/// - vmmigration:v1 : RunDiskMigrationJobRequest
/// - vmmigration:v1 : ShuttingDownSourceVMStep
/// - vmmigration:v1 : SkipOsAdaptation
/// - vmmigration:v1 : StartMigrationRequest
/// - vmwareengine:v1 : Empty
/// - vmwareengine:v1 : GoogleVmwareFileService
/// - walletobjects:v1 : JwtValidateResponse
/// - walletobjects:v1 : SetPassUpdateNoticeResponse
/// - walletobjects:v1 : TransitObjectUploadRotatingBarcodeValuesResponse
/// - webcontentpublisher:v1 : GeneratePlatformSiteTokensRequest
/// - webrisk:v1 : GoogleLongrunningCancelOperationRequest
/// - webrisk:v1 : GoogleProtobufEmpty
/// - websecurityscanner:v1 : Empty
/// - websecurityscanner:v1 : StartScanRunRequest
/// - websecurityscanner:v1 : StopScanRunRequest
/// - workflowexecutions:v1 : CancelExecutionRequest
/// - workflowexecutions:v1 : DeleteExecutionHistoryRequest
/// - workflowexecutions:v1 : Empty
/// - workflows:v1 : Empty
/// - workloadmanager:v1 : CancelOperationRequest
/// - workloadmanager:v1 : Empty
/// - workloadmanager:v1 : WriteInsightResponse
/// - workspaceevents:v1 : ReactivateSubscriptionRequest
/// - workstations:v1 : CancelOperationRequest
/// - workstations:v1 : GoogleProtobufEmpty
/// - youtube:v3 : TestItemTestItemSnippet
/// - youtube:v3 : TokenPagination
/// - youtube:v3 : VideoProjectDetails
/// - youtubereporting:v1 : Empty
class $Empty {
  $Empty();

  $Empty.fromJson(
    // ignore: avoid_unused_constructor_parameters
    core.Map json_,
  );

  core.Map<core.String, core.dynamic> toJson() => {};
}

/// Used by:
///
/// - alloydb:v1 : EncryptionConfig
/// - datamigration:v1 : EncryptionConfig
class $EncryptionConfig {
  /// The fully-qualified resource name of the KMS key.
  ///
  /// Each Cloud KMS key is regionalized and has the following format:
  /// projects/\[PROJECT\]/locations/\[REGION\]/keyRings/\[RING\]/cryptoKeys/\[KEY_NAME\]
  core.String? kmsKeyName;

  $EncryptionConfig({this.kmsKeyName});

  $EncryptionConfig.fromJson(core.Map json_)
    : this(kmsKeyName: json_['kmsKeyName'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final kmsKeyName = this.kmsKeyName;
    return {'kmsKeyName': ?kmsKeyName};
  }
}

/// Used by:
///
/// - ces:v1 : EndSession
/// - contactcenterinsights:v1 : GoogleCloudCesV1mainEndSession
class $EndSession {
  /// Provides additional information about the end session signal, such as the
  /// reason for ending the session.
  ///
  /// Optional.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? metadata;

  $EndSession({this.metadata});

  $EndSession.fromJson(core.Map json_)
    : this(
        metadata: json_.containsKey('metadata')
            ? json_['metadata'] as core.Map<core.String, core.dynamic>
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final metadata = this.metadata;
    return {'metadata': ?metadata};
  }
}

/// Used by:
///
/// - servicemanagement:v1 : Endpoint
/// - serviceusage:v1 : Endpoint
class $Endpoint {
  /// Aliases for this endpoint, these will be served by the same UrlMap as the
  /// parent endpoint, and will be provisioned in the GCP stack for the Regional
  /// Endpoints.
  core.List<core.String>? aliases;

  /// Allowing
  /// [CORS](https://en.wikipedia.org/wiki/Cross-origin_resource_sharing), aka
  /// cross-domain traffic, would allow the backends served from this endpoint
  /// to receive and respond to HTTP OPTIONS requests.
  ///
  /// The response will be used by the browser to determine whether the
  /// subsequent cross-origin request is allowed to proceed.
  core.bool? allowCors;

  /// The canonical name of this endpoint.
  core.String? name;

  /// The specification of an Internet routable address of API frontend that
  /// will handle requests to this
  /// [API Endpoint](https://cloud.google.com/apis/design/glossary).
  ///
  /// It should be either a valid IPv4 address or a fully-qualified domain name.
  /// For example, "8.8.8.8" or "myservice.appspot.com".
  core.String? target;

  $Endpoint({this.aliases, this.allowCors, this.name, this.target});

  $Endpoint.fromJson(core.Map json_)
    : this(
        aliases: (json_['aliases'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        allowCors: json_['allowCors'] as core.bool?,
        name: json_['name'] as core.String?,
        target: json_['target'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final aliases = this.aliases;
    final allowCors = this.allowCors;
    final name = this.name;
    final target = this.target;
    return {
      'aliases': ?aliases,
      'allowCors': ?allowCors,
      'name': ?name,
      'target': ?target,
    };
  }
}

/// Used by:
///
/// - networksecurity:v1 : InterceptEndpointGroupAssociationLocationDetails
/// - networksecurity:v1 : MirroringEndpointGroupAssociationLocationDetails
class $EndpointGroupAssociationLocationDetails {
  /// The cloud location, e.g. "us-central1-a" or "asia-south1".
  ///
  /// Output only.
  core.String? location;

  /// The current state of the association in this location.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Not set.
  /// - "ACTIVE" : The association is ready and in sync with the linked endpoint
  /// group.
  /// - "OUT_OF_SYNC" : The association is out of sync with the linked endpoint
  /// group. In most cases, this is a result of a transient issue within the
  /// system (e.g. an inaccessible location) and the system is expected to
  /// recover automatically.
  core.String? state;

  $EndpointGroupAssociationLocationDetails({this.location, this.state});

  $EndpointGroupAssociationLocationDetails.fromJson(core.Map json_)
    : this(
        location: json_['location'] as core.String?,
        state: json_['state'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final location = this.location;
    final state = this.state;
    return {'location': ?location, 'state': ?state};
  }
}

/// Used by:
///
/// - datamigration:v1 : DatabaseInstanceEntity
/// - datamigration:v1 : SchemaEntity
class $Entity {
  /// Custom engine specific features.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? customFeatures;

  $Entity({this.customFeatures});

  $Entity.fromJson(core.Map json_)
    : this(
        customFeatures: json_.containsKey('customFeatures')
            ? json_['customFeatures'] as core.Map<core.String, core.dynamic>
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final customFeatures = this.customFeatures;
    return {'customFeatures': ?customFeatures};
  }
}

/// Used by:
///
/// - dialogflow:v2 : GoogleCloudDialogflowV2EntityTypeEntity
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3EntityTypeEntity
class $EntityTypeEntity {
  core.List<core.String>? synonyms;
  core.String? value;

  $EntityTypeEntity({this.synonyms, this.value});

  $EntityTypeEntity.fromJson(core.Map json_)
    : this(
        synonyms: (json_['synonyms'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        value: json_['value'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final synonyms = this.synonyms;
    final value = this.value;
    return {'synonyms': ?synonyms, 'value': ?value};
  }
}

/// Used by:
///
/// - containeranalysis:v1 : EnvelopeSignature
/// - ondemandscanning:v1 : EnvelopeSignature
class $EnvelopeSignature {
  core.String? keyid;
  core.String? sig;
  core.List<core.int> get sigAsBytes => convert.base64.decode(sig!);

  set sigAsBytes(core.List<core.int> bytes_) {
    sig = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  $EnvelopeSignature({this.keyid, this.sig});

  $EnvelopeSignature.fromJson(core.Map json_)
    : this(
        keyid: json_['keyid'] as core.String?,
        sig: json_['sig'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final keyid = this.keyid;
    final sig = this.sig;
    return {'keyid': ?keyid, 'sig': ?sig};
  }
}

/// Used by:
///
/// - agentregistry:v1 : Environment
/// - apphub:v1 : Environment
class $Environment {
  /// Environment Type.
  ///
  /// Required.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Unspecified type.
  /// - "PRODUCTION" : Production environment.
  /// - "STAGING" : Staging environment.
  /// - "TEST" : Test environment.
  /// - "DEVELOPMENT" : Development environment.
  core.String? type;

  $Environment({this.type});

  $Environment.fromJson(core.Map json_)
    : this(type: json_['type'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final type = this.type;
    return {'type': ?type};
  }
}

/// Used by:
///
/// - backupdr:v1 : BindingEvaluationSummary
/// - backupdr:v1 : PolicyEvaluationSummary
class $EvaluationSummary {
  /// The number of matching resources whose protection failed during job run.
  ///
  /// Output only.
  core.String? failedResourceCount;

  /// The number of resources that currently match the policy's criteria.
  ///
  /// Output only.
  core.String? matchingResourceCount;

  /// The number of matching resources that are successfully protected.
  ///
  /// Output only.
  core.String? protectedResourceCount;

  $EvaluationSummary({
    this.failedResourceCount,
    this.matchingResourceCount,
    this.protectedResourceCount,
  });

  $EvaluationSummary.fromJson(core.Map json_)
    : this(
        failedResourceCount: json_['failedResourceCount'] as core.String?,
        matchingResourceCount: json_['matchingResourceCount'] as core.String?,
        protectedResourceCount: json_['protectedResourceCount'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final failedResourceCount = this.failedResourceCount;
    final matchingResourceCount = this.matchingResourceCount;
    final protectedResourceCount = this.protectedResourceCount;
    return {
      'failedResourceCount': ?failedResourceCount,
      'matchingResourceCount': ?matchingResourceCount,
      'protectedResourceCount': ?protectedResourceCount,
    };
  }
}

/// Used by:
///
/// - datastore:v1 : ExecutionStats
/// - firestore:v1 : ExecutionStats
class $ExecutionStats {
  /// Debugging statistics from the execution of the query.
  ///
  /// Note that the debugging stats are subject to change as Firestore evolves.
  /// It could include: { "indexes_entries_scanned": "1000",
  /// "documents_scanned": "20", "billing_details" : { "documents_billable":
  /// "20", "index_entries_billable": "1000", "min_query_cost": "0" } }
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? debugStats;

  /// Total time to execute the query in the backend.
  core.String? executionDuration;

  /// Total billable read operations.
  core.String? readOperations;

  /// Total number of results returned, including documents, projections,
  /// aggregation results, keys.
  core.String? resultsReturned;

  $ExecutionStats({
    this.debugStats,
    this.executionDuration,
    this.readOperations,
    this.resultsReturned,
  });

  $ExecutionStats.fromJson(core.Map json_)
    : this(
        debugStats: json_.containsKey('debugStats')
            ? json_['debugStats'] as core.Map<core.String, core.dynamic>
            : null,
        executionDuration: json_['executionDuration'] as core.String?,
        readOperations: json_['readOperations'] as core.String?,
        resultsReturned: json_['resultsReturned'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final debugStats = this.debugStats;
    final executionDuration = this.executionDuration;
    final readOperations = this.readOperations;
    final resultsReturned = this.resultsReturned;
    return {
      'debugStats': ?debugStats,
      'executionDuration': ?executionDuration,
      'readOperations': ?readOperations,
      'resultsReturned': ?resultsReturned,
    };
  }
}

/// Used by:
///
/// - analyticshub:v1 : ExpirationPolicy
/// - pubsub:v1 : ExpirationPolicy
class $ExpirationPolicy {
  /// Specifies the "time-to-live" duration for an associated resource.
  ///
  /// The resource expires if it is not active for a period of `ttl`. The
  /// definition of "activity" depends on the type of the associated resource.
  /// The minimum and maximum allowed values for `ttl` depend on the type of the
  /// associated resource, as well. If `ttl` is not set, the associated resource
  /// never expires.
  ///
  /// Optional.
  core.String? ttl;

  $ExpirationPolicy({this.ttl});

  $ExpirationPolicy.fromJson(core.Map json_)
    : this(ttl: json_['ttl'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final ttl = this.ttl;
    return {'ttl': ?ttl};
  }
}

/// Used by:
///
/// - datastore:v1 : ExplainOptions
/// - firestore:v1 : ExplainOptions
class $ExplainOptions {
  /// Whether to execute this query.
  ///
  /// When false (the default), the query will be planned, returning only
  /// metrics from the planning stages. When true, the query will be planned and
  /// executed, returning the full query results along with both planning and
  /// execution stage metrics.
  ///
  /// Optional.
  core.bool? analyze;

  $ExplainOptions({this.analyze});

  $ExplainOptions.fromJson(core.Map json_)
    : this(analyze: json_['analyze'] as core.bool?);

  core.Map<core.String, core.dynamic> toJson() {
    final analyze = this.analyze;
    return {'analyze': ?analyze};
  }
}

/// Used by:
///
/// - logging:v2 : Explicit
/// - monitoring:v3 : Explicit
class $Explicit {
  /// The values must be monotonically increasing.
  core.List<core.double>? bounds;

  $Explicit({this.bounds});

  $Explicit.fromJson(core.Map json_)
    : this(
        bounds: (json_['bounds'] as core.List?)
            ?.map((value) => (value as core.num).toDouble())
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final bounds = this.bounds;
    return {'bounds': ?bounds};
  }
}

/// Used by:
///
/// - containeranalysis:v1 : ExploitPredictionScoringSystem
/// - ondemandscanning:v1 : ExploitPredictionScoringSystem
class $ExploitPredictionScoringSystem {
  /// The percentile of the current score, the proportion of all scored
  /// vulnerabilities with the same or a lower EPSS score
  core.double? percentile;

  /// The EPSS score representing the probability \[0-1\] of exploitation in the
  /// wild in the next 30 days
  core.double? score;

  $ExploitPredictionScoringSystem({this.percentile, this.score});

  $ExploitPredictionScoringSystem.fromJson(core.Map json_)
    : this(
        percentile: (json_['percentile'] as core.num?)?.toDouble(),
        score: (json_['score'] as core.num?)?.toDouble(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final percentile = this.percentile;
    final score = this.score;
    return {'percentile': ?percentile, 'score': ?score};
  }
}

/// Used by:
///
/// - logging:v2 : Exponential
/// - monitoring:v3 : Exponential
class $Exponential {
  /// Must be greater than 1.
  core.double? growthFactor;

  /// Must be greater than 0.
  core.int? numFiniteBuckets;

  /// Must be greater than 0.
  core.double? scale;

  $Exponential({this.growthFactor, this.numFiniteBuckets, this.scale});

  $Exponential.fromJson(core.Map json_)
    : this(
        growthFactor: (json_['growthFactor'] as core.num?)?.toDouble(),
        numFiniteBuckets: json_['numFiniteBuckets'] as core.int?,
        scale: (json_['scale'] as core.num?)?.toDouble(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final growthFactor = this.growthFactor;
    final numFiniteBuckets = this.numFiniteBuckets;
    final scale = this.scale;
    return {
      'growthFactor': ?growthFactor,
      'numFiniteBuckets': ?numFiniteBuckets,
      'scale': ?scale,
    };
  }
}

/// Used by:
///
/// - vault:v1 : GeminiExportOptions
/// - vault:v1 : GeminiInWorkspaceExportOptions
/// - vault:v1 : GroupsExportOptions
/// - vault:v1 : HangoutsChatExportOptions
class $ExportOptions00 {
  /// The file format for exported messages.
  /// Possible string values are:
  /// - "EXPORT_FORMAT_UNSPECIFIED" : No export format specified.
  /// - "MBOX" : Export as MBOX. Only available for Gmail, Groups, Hangouts and
  /// Voice.
  /// - "PST" : Export as PST. Only available for Gmail, Groups, Hangouts, Voice
  /// and Calendar.
  /// - "ICS" : Export as ICS. Only available for Calendar.
  /// - "XML" : Export as XML. Only available for Gemini app.
  /// - "JSON" : Export as JSON. Only available for Gemini in Workspace.
  core.String? exportFormat;

  $ExportOptions00({this.exportFormat});

  $ExportOptions00.fromJson(core.Map json_)
    : this(exportFormat: json_['exportFormat'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final exportFormat = this.exportFormat;
    return {'exportFormat': ?exportFormat};
  }
}

/// Used by:
///
/// - vault:v1 : CalendarExportOptions
/// - vault:v1 : VoiceExportOptions
class $ExportOptions01 {
  /// The file format for exported text messages.
  /// Possible string values are:
  /// - "EXPORT_FORMAT_UNSPECIFIED" : No export format specified.
  /// - "MBOX" : Export as MBOX. Only available for Gmail, Groups, Hangouts and
  /// Voice.
  /// - "PST" : Export as PST. Only available for Gmail, Groups, Hangouts, Voice
  /// and Calendar.
  /// - "ICS" : Export as ICS. Only available for Calendar.
  /// - "XML" : Export as XML. Only available for Gemini app.
  /// - "JSON" : Export as JSON. Only available for Gemini in Workspace.
  core.String? exportFormat;

  $ExportOptions01({this.exportFormat});

  $ExportOptions01.fromJson(core.Map json_)
    : this(exportFormat: json_['exportFormat'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final exportFormat = this.exportFormat;
    return {'exportFormat': ?exportFormat};
  }
}

/// Used by:
///
/// - accesscontextmanager:v1 : Expr
/// - agentidentity:v1 : Expr
/// - agentregistry:v1 : Expr
/// - aiplatform:v1 : GoogleTypeExpr
/// - analyticshub:v1 : Expr
/// - apigateway:v1 : ApigatewayExpr
/// - apigee:v1 : GoogleTypeExpr
/// - apphub:v1 : Expr
/// - artifactregistry:v1 : Expr
/// - backupdr:v1 : Expr
/// - beyondcorp:v1 : GoogleTypeExpr
/// - biglake:v1 : Expr
/// - bigquery:v2 : Expr
/// - bigqueryconnection:v1 : Expr
/// - bigquerydatapolicy:v1 : Expr
/// - bigquerydatapolicy:v2 : Expr
/// - bigqueryreservation:v1 : Expr
/// - bigtableadmin:v2 : Expr
/// - binaryauthorization:v1 : Expr
/// - cloudasset:v1 : Expr
/// - cloudbilling:v1 : Expr
/// - cloudbuild:v2 : Expr
/// - clouddeploy:v1 : Expr
/// - cloudfunctions:v1 : Expr
/// - cloudfunctions:v2 : Expr
/// - cloudkms:v1 : Expr
/// - cloudresourcemanager:v1 : Expr
/// - cloudresourcemanager:v3 : Expr
/// - cloudtasks:v2 : Expr
/// - config:v1 : Expr
/// - contactcenterinsights:v1 : GoogleTypeExpr
/// - containeranalysis:v1 : Expr
/// - dataform:v1 : Expr
/// - datafusion:v1 : Expr
/// - datamigration:v1 : Expr
/// - dataplex:v1 : GoogleTypeExpr
/// - dataproc:v1 : Expr
/// - dns:v1 : Expr
/// - eventarc:v1 : Expr
/// - gkebackup:v1 : Expr
/// - gkeonprem:v1 : Expr
/// - healthcare:v1 : Expr
/// - iam:v1 : Expr
/// - iam:v2 : GoogleTypeExpr
/// - iap:v1 : Expr
/// - identitytoolkit:v2 : GoogleTypeExpr
/// - logging:v2 : Expr
/// - managedidentities:v1 : Expr
/// - networkconnectivity:v1 : Expr
/// - networkmanagement:v1 : Expr
/// - networksecurity:v1 : Expr
/// - networkservices:v1 : Expr
/// - notebooks:v2 : Expr
/// - orgpolicy:v2 : GoogleTypeExpr
/// - policysimulator:v1 : GoogleTypeExpr
/// - policytroubleshooter:v3 : GoogleTypeExpr
/// - privateca:v1 : Expr
/// - pubsub:v1 : Expr
/// - run:v2 : GoogleTypeExpr
/// - secretmanager:v1 : Expr
/// - securesourcemanager:v1 : Expr
/// - securityposture:v1 : Expr
/// - servicedirectory:v1 : Expr
/// - servicemanagement:v1 : Expr
/// - spanner:v1 : Expr
/// - storagebatchoperations:v1 : Expr
/// - vmwareengine:v1 : Expr
/// - workstations:v1 : Expr
class $Expr {
  /// Description of the expression.
  ///
  /// This is a longer text which describes the expression, e.g. when hovered
  /// over it in a UI.
  ///
  /// Optional.
  core.String? description;

  /// Textual representation of an expression in Common Expression Language
  /// syntax.
  core.String? expression;

  /// String indicating the location of the expression for error reporting, e.g.
  /// a file name and a position in the file.
  ///
  /// Optional.
  core.String? location;

  /// Title for the expression, i.e. a short string describing its purpose.
  ///
  /// This can be used e.g. in UIs which allow to enter the expression.
  ///
  /// Optional.
  core.String? title;

  $Expr({this.description, this.expression, this.location, this.title});

  $Expr.fromJson(core.Map json_)
    : this(
        description: json_['description'] as core.String?,
        expression: json_['expression'] as core.String?,
        location: json_['location'] as core.String?,
        title: json_['title'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final description = this.description;
    final expression = this.expression;
    final location = this.location;
    final title = this.title;
    return {
      'description': ?description,
      'expression': ?expression,
      'location': ?location,
      'title': ?title,
    };
  }
}

/// Used by:
///
/// - agentregistry:v1 : ExtendedMetadata
/// - apphub:v1 : ExtendedMetadata
class $ExtendedMetadata {
  /// The metadata contents.
  ///
  /// Output only.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? metadataStruct;

  $ExtendedMetadata({this.metadataStruct});

  $ExtendedMetadata.fromJson(core.Map json_)
    : this(
        metadataStruct: json_.containsKey('metadataStruct')
            ? json_['metadataStruct'] as core.Map<core.String, core.dynamic>
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final metadataStruct = this.metadataStruct;
    return {'metadataStruct': ?metadataStruct};
  }
}

/// Used by:
///
/// - cloudkms:v1 : ExternalProtectionLevelOptions
/// - kmsinventory:v1 : GoogleCloudKmsV1ExternalProtectionLevelOptions
class $ExternalProtectionLevelOptions {
  /// The resource name of the backend environment where the key material of
  /// CryptoKeyVersions is associated with.
  ///
  /// Setting this field overrides the crypto_key_backend. This field may be set
  /// when CryptoKeyVersions is set to EXTERNAL_VPC. Format: `projects / *
  /// /locations / * /ekmConnections / * `.
  ///
  /// Optional.
  core.String? ekmConnectionBackendOverride;

  /// The path to the external key material on the EKM when using EkmConnection
  /// e.g., "v0/my/key".
  ///
  /// Set this field instead of external_key_uri when using an EkmConnection.
  ///
  /// Optional.
  core.String? ekmConnectionKeyPath;

  /// The URI for an external resource that this CryptoKeyVersion represents.
  ///
  /// Optional.
  core.String? externalKeyUri;

  $ExternalProtectionLevelOptions({
    this.ekmConnectionBackendOverride,
    this.ekmConnectionKeyPath,
    this.externalKeyUri,
  });

  $ExternalProtectionLevelOptions.fromJson(core.Map json_)
    : this(
        ekmConnectionBackendOverride:
            json_['ekmConnectionBackendOverride'] as core.String?,
        ekmConnectionKeyPath: json_['ekmConnectionKeyPath'] as core.String?,
        externalKeyUri: json_['externalKeyUri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final ekmConnectionBackendOverride = this.ekmConnectionBackendOverride;
    final ekmConnectionKeyPath = this.ekmConnectionKeyPath;
    final externalKeyUri = this.externalKeyUri;
    return {
      'ekmConnectionBackendOverride': ?ekmConnectionBackendOverride,
      'ekmConnectionKeyPath': ?ekmConnectionKeyPath,
      'externalKeyUri': ?externalKeyUri,
    };
  }
}

/// Used by:
///
/// - gkeonprem:v1 : VmwareAdminF5BigIpConfig
/// - gkeonprem:v1 : VmwareF5BigIpConfig
class $F5BigIpConfig {
  /// The load balancer's IP address.
  core.String? address;

  /// The preexisting partition to be used by the load balancer.
  ///
  /// This partition is usually created for the admin cluster for example:
  /// 'my-f5-admin-partition'.
  core.String? partition;

  /// The pool name.
  ///
  /// Only necessary, if using SNAT.
  core.String? snatPool;

  $F5BigIpConfig({this.address, this.partition, this.snatPool});

  $F5BigIpConfig.fromJson(core.Map json_)
    : this(
        address: json_['address'] as core.String?,
        partition: json_['partition'] as core.String?,
        snatPool: json_['snatPool'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final address = this.address;
    final partition = this.partition;
    final snatPool = this.snatPool;
    return {
      'address': ?address,
      'partition': ?partition,
      'snatPool': ?snatPool,
    };
  }
}

/// Used by:
///
/// - fcm:v1 : AndroidFcmOptions
/// - fcm:v1 : FcmOptions
class $FcmOptions {
  /// Label associated with the message's analytics data.
  core.String? analyticsLabel;

  $FcmOptions({this.analyticsLabel});

  $FcmOptions.fromJson(core.Map json_)
    : this(analyticsLabel: json_['analyticsLabel'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final analyticsLabel = this.analyticsLabel;
    return {'analyticsLabel': ?analyticsLabel};
  }
}

/// Used by:
///
/// - dialogflow:v2 : GoogleCloudDialogflowV2AgentAssistantFeedbackKnowledgeAssistFeedback
/// - dialogflow:v2 : GoogleCloudDialogflowV2AgentAssistantFeedbackKnowledgeSearchFeedback
class $Feedback {
  core.bool? answerCopied;
  core.List<core.String>? clickedUris;

  $Feedback({this.answerCopied, this.clickedUris});

  $Feedback.fromJson(core.Map json_)
    : this(
        answerCopied: json_['answerCopied'] as core.bool?,
        clickedUris: (json_['clickedUris'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final answerCopied = this.answerCopied;
    final clickedUris = this.clickedUris;
    return {'answerCopied': ?answerCopied, 'clickedUris': ?clickedUris};
  }
}

/// Used by:
///
/// - cloudbuild:v2 : FetchGitRefsResponse
/// - developerconnect:v1 : FetchGitRefsResponse
class $FetchGitRefsResponse {
  /// A token identifying a page of results the server should return.
  core.String? nextPageToken;

  /// Name of the refs fetched.
  core.List<core.String>? refNames;

  $FetchGitRefsResponse({this.nextPageToken, this.refNames});

  $FetchGitRefsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        refNames: (json_['refNames'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final refNames = this.refNames;
    return {'nextPageToken': ?nextPageToken, 'refNames': ?refNames};
  }
}

/// Used by:
///
/// - containeranalysis:v1 : File
/// - ondemandscanning:v1 : File
class $File {
  core.Map<core.String, core.String>? digest;
  core.String? name;

  $File({this.digest, this.name});

  $File.fromJson(core.Map json_)
    : this(
        digest: (json_['digest'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final digest = this.digest;
    final name = this.name;
    return {'digest': ?digest, 'name': ?name};
  }
}

/// Used by:
///
/// - dialogflow:v2 : GoogleCloudDialogflowV2SearchKnowledgeRequestSearchConfigFilterSpecs
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3FilterSpecs
class $FilterSpecs {
  core.List<core.String>? dataStores;
  core.String? filter;

  $FilterSpecs({this.dataStores, this.filter});

  $FilterSpecs.fromJson(core.Map json_)
    : this(
        dataStores: (json_['dataStores'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        filter: json_['filter'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dataStores = this.dataStores;
    final filter = this.filter;
    return {'dataStores': ?dataStores, 'filter': ?filter};
  }
}

/// Used by:
///
/// - aiplatform:v1 : GoogleCloudAiplatformV1ExportFilterSplit
/// - aiplatform:v1 : GoogleCloudAiplatformV1FilterSplit
class $FilterSplit {
  /// A filter on DataItems of the Dataset.
  ///
  /// DataItems that match this filter are used to test the Model. A filter with
  /// same syntax as the one used in DatasetService.ListDataItems may be used.
  /// If a single DataItem is matched by more than one of the FilterSplit
  /// filters, then it is assigned to the first set that applies to it in the
  /// training, validation, test order.
  ///
  /// Required.
  core.String? testFilter;

  /// A filter on DataItems of the Dataset.
  ///
  /// DataItems that match this filter are used to train the Model. A filter
  /// with same syntax as the one used in DatasetService.ListDataItems may be
  /// used. If a single DataItem is matched by more than one of the FilterSplit
  /// filters, then it is assigned to the first set that applies to it in the
  /// training, validation, test order.
  ///
  /// Required.
  core.String? trainingFilter;

  /// A filter on DataItems of the Dataset.
  ///
  /// DataItems that match this filter are used to validate the Model. A filter
  /// with same syntax as the one used in DatasetService.ListDataItems may be
  /// used. If a single DataItem is matched by more than one of the FilterSplit
  /// filters, then it is assigned to the first set that applies to it in the
  /// training, validation, test order.
  ///
  /// Required.
  core.String? validationFilter;

  $FilterSplit({this.testFilter, this.trainingFilter, this.validationFilter});

  $FilterSplit.fromJson(core.Map json_)
    : this(
        testFilter: json_['testFilter'] as core.String?,
        trainingFilter: json_['trainingFilter'] as core.String?,
        validationFilter: json_['validationFilter'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final testFilter = this.testFilter;
    final trainingFilter = this.trainingFilter;
    final validationFilter = this.validationFilter;
    return {
      'testFilter': ?testFilter,
      'trainingFilter': ?trainingFilter,
      'validationFilter': ?validationFilter,
    };
  }
}

/// Used by:
///
/// - containeranalysis:v1 : FindingLocation
/// - ondemandscanning:v1 : FindingLocation
class $FindingLocation {
  /// Relative path of the file containing the finding.
  core.String? filePath;

  /// Line number (1-based), or 0 if whole File / unknown.
  core.String? lineNumber;

  $FindingLocation({this.filePath, this.lineNumber});

  $FindingLocation.fromJson(core.Map json_)
    : this(
        filePath: json_['filePath'] as core.String?,
        lineNumber: json_['lineNumber'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final filePath = this.filePath;
    final lineNumber = this.lineNumber;
    return {'filePath': ?filePath, 'lineNumber': ?lineNumber};
  }
}

/// Used by:
///
/// - containeranalysis:v1 : Fingerprint
/// - ondemandscanning:v1 : Fingerprint
class $Fingerprint {
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

  $Fingerprint({this.v1Name, this.v2Blob, this.v2Name});

  $Fingerprint.fromJson(core.Map json_)
    : this(
        v1Name: json_['v1Name'] as core.String?,
        v2Blob: (json_['v2Blob'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        v2Name: json_['v2Name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final v1Name = this.v1Name;
    final v2Blob = this.v2Blob;
    final v2Name = this.v2Name;
    return {'v1Name': ?v1Name, 'v2Blob': ?v2Blob, 'v2Name': ?v2Name};
  }
}

/// Used by:
///
/// - dataform:v1 : DeleteFolderTreeRequest
/// - dataform:v1 : DeleteTeamFolderTreeRequest
class $FolderTreeRequest {
  /// If `false` (default): The operation will fail if any Repository within the
  /// folder hierarchy has associated Release Configs or Workflow Configs.
  ///
  /// If `true`: The operation will attempt to delete everything, including any
  /// Release Configs and Workflow Configs linked to Repositories within the
  /// folder hierarchy. This permanently removes schedules and resources.
  ///
  /// Optional.
  core.bool? force;

  $FolderTreeRequest({this.force});

  $FolderTreeRequest.fromJson(core.Map json_)
    : this(force: json_['force'] as core.bool?);

  core.Map<core.String, core.dynamic> toJson() {
    final force = this.force;
    return {'force': ?force};
  }
}

/// Used by:
///
/// - eventarc:v1 : GoogleCloudEventarcV1PipelineMessagePayloadFormatAvroFormat
/// - eventarc:v1 : GoogleCloudEventarcV1PipelineMessagePayloadFormatProtobufFormat
class $Format {
  /// The entire schema definition is stored in this field.
  ///
  /// Optional.
  core.String? schemaDefinition;

  $Format({this.schemaDefinition});

  $Format.fromJson(core.Map json_)
    : this(schemaDefinition: json_['schemaDefinition'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final schemaDefinition = this.schemaDefinition;
    return {'schemaDefinition': ?schemaDefinition};
  }
}

/// Used by:
///
/// - datamigration:v1 : ForwardSshTunnelConnectivity
/// - datastream:v1 : ForwardSshTunnelConnectivity
class $ForwardSshTunnelConnectivity {
  /// Hostname for the SSH tunnel.
  ///
  /// Required.
  core.String? hostname;

  /// Input only.
  ///
  /// SSH password.
  core.String? password;

  /// Port for the SSH tunnel, default value is 22.
  core.int? port;

  /// Input only.
  ///
  /// SSH private key.
  core.String? privateKey;

  /// Username for the SSH tunnel.
  ///
  /// Required.
  core.String? username;

  $ForwardSshTunnelConnectivity({
    this.hostname,
    this.password,
    this.port,
    this.privateKey,
    this.username,
  });

  $ForwardSshTunnelConnectivity.fromJson(core.Map json_)
    : this(
        hostname: json_['hostname'] as core.String?,
        password: json_['password'] as core.String?,
        port: json_['port'] as core.int?,
        privateKey: json_['privateKey'] as core.String?,
        username: json_['username'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final hostname = this.hostname;
    final password = this.password;
    final port = this.port;
    final privateKey = this.privateKey;
    final username = this.username;
    return {
      'hostname': ?hostname,
      'password': ?password,
      'port': ?port,
      'privateKey': ?privateKey,
      'username': ?username,
    };
  }
}

/// Used by:
///
/// - aiplatform:v1 : GoogleCloudAiplatformV1ExportFractionSplit
/// - aiplatform:v1 : GoogleCloudAiplatformV1FractionSplit
class $FractionSplit {
  /// The fraction of the input data that is to be used to evaluate the Model.
  core.double? testFraction;

  /// The fraction of the input data that is to be used to train the Model.
  core.double? trainingFraction;

  /// The fraction of the input data that is to be used to validate the Model.
  core.double? validationFraction;

  $FractionSplit({
    this.testFraction,
    this.trainingFraction,
    this.validationFraction,
  });

  $FractionSplit.fromJson(core.Map json_)
    : this(
        testFraction: (json_['testFraction'] as core.num?)?.toDouble(),
        trainingFraction: (json_['trainingFraction'] as core.num?)?.toDouble(),
        validationFraction: (json_['validationFraction'] as core.num?)
            ?.toDouble(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final testFraction = this.testFraction;
    final trainingFraction = this.trainingFraction;
    final validationFraction = this.validationFraction;
    return {
      'testFraction': ?testFraction,
      'trainingFraction': ?trainingFraction,
      'validationFraction': ?validationFraction,
    };
  }
}

/// Used by:
///
/// - parallelstore:v1 : DestinationGcsBucket
/// - parallelstore:v1 : SourceGcsBucket
class $GcsBucket {
  /// URI to a Cloud Storage bucket in the format: `gs:///`.
  ///
  /// The path inside the bucket is optional.
  ///
  /// Required.
  core.String? uri;

  $GcsBucket({this.uri});

  $GcsBucket.fromJson(core.Map json_) : this(uri: json_['uri'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final uri = this.uri;
    return {'uri': ?uri};
  }
}

/// Used by:
///
/// - cloudfunctions:v1 : GenerateDownloadUrlResponse
/// - cloudfunctions:v2 : GenerateDownloadUrlResponse
class $GenerateDownloadUrlResponse {
  /// The generated Google Cloud Storage signed URL that should be used for
  /// function source code download.
  core.String? downloadUrl;

  $GenerateDownloadUrlResponse({this.downloadUrl});

  $GenerateDownloadUrlResponse.fromJson(core.Map json_)
    : this(downloadUrl: json_['downloadUrl'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final downloadUrl = this.downloadUrl;
    return {'downloadUrl': ?downloadUrl};
  }
}

/// Used by:
///
/// - androidenterprise:v1 : GenerateEnterpriseUpgradeUrlResponse
/// - androidmanagement:v1 : GenerateEnterpriseUpgradeUrlResponse
class $GenerateEnterpriseUpgradeUrlResponse {
  /// A URL for an enterprise admin to upgrade their enterprise.
  ///
  /// The page can't be rendered in an iframe.
  core.String? url;

  $GenerateEnterpriseUpgradeUrlResponse({this.url});

  $GenerateEnterpriseUpgradeUrlResponse.fromJson(core.Map json_)
    : this(url: json_['url'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final url = this.url;
    return {'url': ?url};
  }
}

/// Used by:
///
/// - accesscontextmanager:v1 : GetPolicyOptions
/// - analyticshub:v1 : GetPolicyOptions
/// - bigquery:v2 : GetPolicyOptions
/// - bigqueryconnection:v1 : GetPolicyOptions
/// - bigquerydatapolicy:v1 : GetPolicyOptions
/// - bigquerydatapolicy:v2 : GetPolicyOptions
/// - bigtableadmin:v2 : GetPolicyOptions
/// - cloudresourcemanager:v1 : GetPolicyOptions
/// - cloudresourcemanager:v3 : GetPolicyOptions
/// - cloudtasks:v2 : GetPolicyOptions
/// - containeranalysis:v1 : GetPolicyOptions
/// - dns:v1 : GoogleIamV1GetPolicyOptions
/// - iam:v1 : GetPolicyOptions
/// - iap:v1 : GetPolicyOptions
/// - identitytoolkit:v2 : GoogleIamV1GetPolicyOptions
/// - servicedirectory:v1 : GetPolicyOptions
/// - servicemanagement:v1 : GetPolicyOptions
/// - spanner:v1 : GetPolicyOptions
class $GetPolicyOptions00 {
  /// The maximum policy version that will be used to format the policy.
  ///
  /// Valid values are 0, 1, and 3. Requests specifying an invalid value will be
  /// rejected. Requests for policies with any conditional role bindings must
  /// specify version 3. Policies with no conditional role bindings may specify
  /// any valid value or leave the field unset. The policy in the response might
  /// use the policy version that you specified, or it might use a lower policy
  /// version. For example, if you specify version 3, but the policy has no
  /// conditional role bindings, the response uses version 1. To learn which
  /// resources support conditions in their IAM policies, see the
  /// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
  ///
  /// Optional.
  core.int? requestedPolicyVersion;

  $GetPolicyOptions00({this.requestedPolicyVersion});

  $GetPolicyOptions00.fromJson(core.Map json_)
    : this(
        requestedPolicyVersion: json_['requestedPolicyVersion'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final requestedPolicyVersion = this.requestedPolicyVersion;
    return {'requestedPolicyVersion': ?requestedPolicyVersion};
  }
}

/// Used by:
///
/// - dataproc:v1 : GetPolicyOptions
/// - logging:v2 : GetPolicyOptions
class $GetPolicyOptions01 {
  /// The maximum policy version that will be used to format the policy.Valid
  /// values are 0, 1, and 3.
  ///
  /// Requests specifying an invalid value will be rejected.Requests for
  /// policies with any conditional role bindings must specify version 3.
  /// Policies with no conditional role bindings may specify any valid value or
  /// leave the field unset.The policy in the response might use the policy
  /// version that you specified, or it might use a lower policy version. For
  /// example, if you specify version 3, but the policy has no conditional role
  /// bindings, the response uses version 1.To learn which resources support
  /// conditions in their IAM policies, see the IAM documentation
  /// (https://cloud.google.com/iam/help/conditions/resource-policies).
  ///
  /// Optional.
  core.int? requestedPolicyVersion;

  $GetPolicyOptions01({this.requestedPolicyVersion});

  $GetPolicyOptions01.fromJson(core.Map json_)
    : this(
        requestedPolicyVersion: json_['requestedPolicyVersion'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final requestedPolicyVersion = this.requestedPolicyVersion;
    return {'requestedPolicyVersion': ?requestedPolicyVersion};
  }
}

/// Used by:
///
/// - compute:v1 : HostsGetVersionRequest
/// - compute:v1 : ReservationSlotsGetVersionRequest
class $GetVersionRequest {
  /// The SBOM selection to return.
  ///
  /// Duplicate values in the list will be ignored.
  core.List<core.String>? sbomSelections;

  $GetVersionRequest({this.sbomSelections});

  $GetVersionRequest.fromJson(core.Map json_)
    : this(
        sbomSelections: (json_['sbomSelections'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final sbomSelections = this.sbomSelections;
    return {'sbomSelections': ?sbomSelections};
  }
}

/// Used by:
///
/// - containeranalysis:v1 : GitSourceContext
/// - ondemandscanning:v1 : GitSourceContext
class $GitSourceContext {
  /// Git commit hash.
  core.String? revisionId;

  /// Git repository URL.
  core.String? url;

  $GitSourceContext({this.revisionId, this.url});

  $GitSourceContext.fromJson(core.Map json_)
    : this(
        revisionId: json_['revisionId'] as core.String?,
        url: json_['url'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final revisionId = this.revisionId;
    final url = this.url;
    return {'revisionId': ?revisionId, 'url': ?url};
  }
}

/// Used by:
///
/// - translate:v3 : GlossaryConfig
/// - translate:v3 : TranslateTextGlossaryConfig
class $GlossaryConfig {
  /// If set to true, the glossary will be used for contextual translation.
  ///
  /// Optional.
  core.bool? contextualTranslationEnabled;

  /// The `glossary` to be applied for this translation.
  ///
  /// The format depends on the glossary: - User-provided custom glossary:
  /// `projects/{project-number-or-id}/locations/{location-id}/glossaries/{glossary-id}`
  ///
  /// Required.
  core.String? glossary;

  /// Indicates match is case insensitive.
  ///
  /// The default value is `false` if missing.
  ///
  /// Optional.
  core.bool? ignoreCase;

  $GlossaryConfig({
    this.contextualTranslationEnabled,
    this.glossary,
    this.ignoreCase,
  });

  $GlossaryConfig.fromJson(core.Map json_)
    : this(
        contextualTranslationEnabled:
            json_['contextualTranslationEnabled'] as core.bool?,
        glossary: json_['glossary'] as core.String?,
        ignoreCase: json_['ignoreCase'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final contextualTranslationEnabled = this.contextualTranslationEnabled;
    final glossary = this.glossary;
    final ignoreCase = this.ignoreCase;
    return {
      'contextualTranslationEnabled': ?contextualTranslationEnabled,
      'glossary': ?glossary,
      'ignoreCase': ?ignoreCase,
    };
  }
}

/// Used by:
///
/// - dialogflow:v2 : GoogleCloudLocationLocation
/// - dialogflow:v3 : GoogleCloudLocationLocation
class $GoogleCloudLocationLocation {
  core.String? displayName;
  core.Map<core.String, core.String>? labels;
  core.String? locationId;

  ///
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? metadata;
  core.String? name;

  $GoogleCloudLocationLocation({
    this.displayName,
    this.labels,
    this.locationId,
    this.metadata,
    this.name,
  });

  $GoogleCloudLocationLocation.fromJson(core.Map json_)
    : this(
        displayName: json_['displayName'] as core.String?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        locationId: json_['locationId'] as core.String?,
        metadata: json_.containsKey('metadata')
            ? json_['metadata'] as core.Map<core.String, core.dynamic>
            : null,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final displayName = this.displayName;
    final labels = this.labels;
    final locationId = this.locationId;
    final metadata = this.metadata;
    final name = this.name;
    return {
      'displayName': ?displayName,
      'labels': ?labels,
      'locationId': ?locationId,
      'metadata': ?metadata,
      'name': ?name,
    };
  }
}

/// Used by:
///
/// - orgpolicy:v2 : GoogleCloudOrgpolicyV2CustomConstraint
/// - policysimulator:v1 : GoogleCloudOrgpolicyV2CustomConstraint
class $GoogleCloudOrgpolicyV2CustomConstraint {
  /// Allow or deny type.
  /// Possible string values are:
  /// - "ACTION_TYPE_UNSPECIFIED" : This is only used for distinguishing unset
  /// values, and results in an error if used.
  /// - "ALLOW" : Allowed action type.
  /// - "DENY" : Deny action type.
  core.String? actionType;

  /// A Common Expression Language (CEL) condition which is used in the
  /// evaluation of the constraint.
  ///
  /// For example:
  /// `resource.instanceName.matches("(production|test)_(.+_)?[\d]+")` or,
  /// `resource.management.auto_upgrade == true` The max length of the condition
  /// is 1000 characters.
  core.String? condition;

  /// Detailed information about this custom policy constraint.
  ///
  /// The max length of the description is 2000 characters.
  core.String? description;

  /// One line display name for the UI.
  ///
  /// The max length of the display_name is 200 characters.
  core.String? displayName;

  /// All the operations being applied for this constraint.
  core.List<core.String>? methodTypes;

  /// Name of the constraint.
  ///
  /// This is unique within the organization. The name must be of the form: *
  /// `organizations/{organization_id}/customConstraints/{custom_constraint_id}`
  /// Example: `organizations/123/customConstraints/custom.createOnlyE2TypeVms`
  /// The max length is 71 characters and the minimum length is 1. Note that the
  /// prefix `organizations/{organization_id}/customConstraints/custom.` is not
  /// counted.
  ///
  /// Immutable.
  core.String? name;

  /// The resource instance type on which this policy applies.
  ///
  /// Format will be of the form : `/` Example: *
  /// `compute.googleapis.com/Instance`.
  ///
  /// Immutable.
  core.List<core.String>? resourceTypes;

  /// The last time this custom constraint was updated.
  ///
  /// This represents the last time that the `CreateCustomConstraint` or
  /// `UpdateCustomConstraint` methods were called.
  ///
  /// Output only.
  core.String? updateTime;

  $GoogleCloudOrgpolicyV2CustomConstraint({
    this.actionType,
    this.condition,
    this.description,
    this.displayName,
    this.methodTypes,
    this.name,
    this.resourceTypes,
    this.updateTime,
  });

  $GoogleCloudOrgpolicyV2CustomConstraint.fromJson(core.Map json_)
    : this(
        actionType: json_['actionType'] as core.String?,
        condition: json_['condition'] as core.String?,
        description: json_['description'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        methodTypes: (json_['methodTypes'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        name: json_['name'] as core.String?,
        resourceTypes: (json_['resourceTypes'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final actionType = this.actionType;
    final condition = this.condition;
    final description = this.description;
    final displayName = this.displayName;
    final methodTypes = this.methodTypes;
    final name = this.name;
    final resourceTypes = this.resourceTypes;
    final updateTime = this.updateTime;
    return {
      'actionType': ?actionType,
      'condition': ?condition,
      'description': ?description,
      'displayName': ?displayName,
      'methodTypes': ?methodTypes,
      'name': ?name,
      'resourceTypes': ?resourceTypes,
      'updateTime': ?updateTime,
    };
  }
}

/// Used by:
///
/// - dialogflow:v2 : GoogleTypeLatLng
/// - dialogflow:v3 : GoogleTypeLatLng
class $GoogleTypeLatLng {
  core.double? latitude;
  core.double? longitude;

  $GoogleTypeLatLng({this.latitude, this.longitude});

  $GoogleTypeLatLng.fromJson(core.Map json_)
    : this(
        latitude: (json_['latitude'] as core.num?)?.toDouble(),
        longitude: (json_['longitude'] as core.num?)?.toDouble(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final latitude = this.latitude;
    final longitude = this.longitude;
    return {'latitude': ?latitude, 'longitude': ?longitude};
  }
}

/// Used by:
///
/// - paymentsresellersubscription:v1 : GoogleTypeLocalizedText
/// - places:v1 : GoogleTypeLocalizedText
class $GoogleTypeLocalizedText {
  /// The text's BCP-47 language code, such as "en-US" or "sr-Latn".
  ///
  /// For more information, see
  /// http://www.unicode.org/reports/tr35/#Unicode_locale_identifier.
  core.String? languageCode;

  /// Localized string in the language corresponding to language_code below.
  core.String? text;

  $GoogleTypeLocalizedText({this.languageCode, this.text});

  $GoogleTypeLocalizedText.fromJson(core.Map json_)
    : this(
        languageCode: json_['languageCode'] as core.String?,
        text: json_['text'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final languageCode = this.languageCode;
    final text = this.text;
    return {'languageCode': ?languageCode, 'text': ?text};
  }
}

/// Used by:
///
/// - datamanager:v1 : IngestGoogleUserIdDataStatus
/// - datamanager:v1 : RemoveGoogleUserIdDataStatus
class $GoogleUserIdDataStatus {
  core.String? googleUserIdCount;
  core.String? recordCount;

  $GoogleUserIdDataStatus({this.googleUserIdCount, this.recordCount});

  $GoogleUserIdDataStatus.fromJson(core.Map json_)
    : this(
        googleUserIdCount: json_['googleUserIdCount'] as core.String?,
        recordCount: json_['recordCount'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final googleUserIdCount = this.googleUserIdCount;
    final recordCount = this.recordCount;
    return {
      'googleUserIdCount': ?googleUserIdCount,
      'recordCount': ?recordCount,
    };
  }
}

/// Used by:
///
/// - containeranalysis:v1 : GrafeasV1SlsaProvenanceZeroTwoSlsaCompleteness
/// - ondemandscanning:v1 : GrafeasV1SlsaProvenanceZeroTwoSlsaCompleteness
class $GrafeasV1SlsaProvenanceZeroTwoSlsaCompleteness {
  core.bool? environment;
  core.bool? materials;
  core.bool? parameters;

  $GrafeasV1SlsaProvenanceZeroTwoSlsaCompleteness({
    this.environment,
    this.materials,
    this.parameters,
  });

  $GrafeasV1SlsaProvenanceZeroTwoSlsaCompleteness.fromJson(core.Map json_)
    : this(
        environment: json_['environment'] as core.bool?,
        materials: json_['materials'] as core.bool?,
        parameters: json_['parameters'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final environment = this.environment;
    final materials = this.materials;
    final parameters = this.parameters;
    return {
      'environment': ?environment,
      'materials': ?materials,
      'parameters': ?parameters,
    };
  }
}

/// Used by:
///
/// - containeranalysis:v1 : GrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource
/// - ondemandscanning:v1 : GrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource
class $GrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource {
  core.Map<core.String, core.String>? digest;
  core.String? entryPoint;
  core.String? uri;

  $GrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource({
    this.digest,
    this.entryPoint,
    this.uri,
  });

  $GrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource.fromJson(core.Map json_)
    : this(
        digest: (json_['digest'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        entryPoint: json_['entryPoint'] as core.String?,
        uri: json_['uri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final digest = this.digest;
    final entryPoint = this.entryPoint;
    final uri = this.uri;
    return {'digest': ?digest, 'entryPoint': ?entryPoint, 'uri': ?uri};
  }
}

/// Used by:
///
/// - compute:v1 : GuestAttributesEntry
/// - tpu:v2 : GuestAttributesEntry
class $GuestAttributesEntry {
  /// Key for the guest attribute entry.
  core.String? key;

  /// Namespace for the guest attribute entry.
  core.String? namespace;

  /// Value for the guest attribute entry.
  core.String? value;

  $GuestAttributesEntry({this.key, this.namespace, this.value});

  $GuestAttributesEntry.fromJson(core.Map json_)
    : this(
        key: json_['key'] as core.String?,
        namespace: json_['namespace'] as core.String?,
        value: json_['value'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final key = this.key;
    final namespace = this.namespace;
    final value = this.value;
    return {'key': ?key, 'namespace': ?namespace, 'value': ?value};
  }
}

/// Used by:
///
/// - appengine:v1 : ApiEndpointHandler
/// - appengine:v1 : ScriptHandler
class $Handler {
  /// Path to the script from the application root directory.
  core.String? scriptPath;

  $Handler({this.scriptPath});

  $Handler.fromJson(core.Map json_)
    : this(scriptPath: json_['scriptPath'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final scriptPath = this.scriptPath;
    return {'scriptPath': ?scriptPath};
  }
}

/// Used by:
///
/// - containeranalysis:v1 : Hash
/// - ondemandscanning:v1 : Hash
class $Hash {
  /// The type of hash that was performed, e.g. "SHA-256".
  ///
  /// Required.
  core.String? type;

  /// The hash value.
  ///
  /// Required.
  core.String? value;
  core.List<core.int> get valueAsBytes => convert.base64.decode(value!);

  set valueAsBytes(core.List<core.int> bytes_) {
    value = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  $Hash({this.type, this.value});

  $Hash.fromJson(core.Map json_)
    : this(
        type: json_['type'] as core.String?,
        value: json_['value'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final type = this.type;
    final value = this.value;
    return {'type': ?type, 'value': ?value};
  }
}

/// Used by:
///
/// - compute:v1 : UrlMapTestHeader
/// - websecurityscanner:v1 : Header
class $Header {
  /// Header name.
  core.String? name;

  /// Header value.
  core.String? value;

  $Header({this.name, this.value});

  $Header.fromJson(core.Map json_)
    : this(
        name: json_['name'] as core.String?,
        value: json_['value'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final name = this.name;
    final value = this.value;
    return {'name': ?name, 'value': ?value};
  }
}

/// Used by:
///
/// - adsense:v2 : HttpBody
/// - aiplatform:v1 : GoogleApiHttpBody
/// - airquality:v1 : HttpBody
/// - apigee:v1 : GoogleApiHttpBody
/// - cloudbuild:v1 : HttpBody
/// - cloudbuild:v2 : HttpBody
/// - cloudtasks:v2 : HttpBody
/// - developerconnect:v1 : HttpBody
/// - firebasedataconnect:v1 : HttpBody
/// - health:v4 : HttpBody
/// - healthcare:v1 : HttpBody
/// - integrations:v2 : GoogleApiHttpBody
/// - managedkafka:v1 : HttpBody
/// - networkmanagement:v1 : HttpBody
/// - pollen:v1 : HttpBody
/// - retail:v2 : GoogleApiHttpBody
/// - solar:v1 : HttpBody
class $HttpBody {
  /// The HTTP Content-Type header value specifying the content type of the
  /// body.
  core.String? contentType;

  /// The HTTP request/response body as raw binary.
  core.String? data;
  core.List<core.int> get dataAsBytes => convert.base64.decode(data!);

  set dataAsBytes(core.List<core.int> bytes_) {
    data = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  /// Application specific response metadata.
  ///
  /// Must be set in the first response for streaming APIs.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Map<core.String, core.Object?>>? extensions;

  $HttpBody({this.contentType, this.data, this.extensions});

  $HttpBody.fromJson(core.Map json_)
    : this(
        contentType: json_['contentType'] as core.String?,
        data: json_['data'] as core.String?,
        extensions: (json_['extensions'] as core.List?)
            ?.map((value) => value as core.Map<core.String, core.dynamic>)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final contentType = this.contentType;
    final data = this.data;
    final extensions = this.extensions;
    return {
      'contentType': ?contentType,
      'data': ?data,
      'extensions': ?extensions,
    };
  }
}

/// Used by:
///
/// - containeranalysis:v1 : Identity
/// - ondemandscanning:v1 : Identity
class $Identity {
  /// The revision number of the update.
  core.int? revision;

  /// The revision independent identifier of the update.
  core.String? updateId;

  $Identity({this.revision, this.updateId});

  $Identity.fromJson(core.Map json_)
    : this(
        revision: json_['revision'] as core.int?,
        updateId: json_['updateId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final revision = this.revision;
    final updateId = this.updateId;
    return {'revision': ?revision, 'updateId': ?updateId};
  }
}

/// Used by:
///
/// - ces:v1 : Image
/// - contactcenterinsights:v1 : GoogleCloudCesV1mainImage
class $Image {
  /// The alternative text for the image.
  ///
  /// Optional.
  core.String? altText;

  /// Raw bytes of the image.
  ///
  /// Required.
  core.String? data;
  core.List<core.int> get dataAsBytes => convert.base64.decode(data!);

  set dataAsBytes(core.List<core.int> bytes_) {
    data = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  /// The IANA standard MIME type of the source data.
  ///
  /// Supported image types includes: * image/png * image/jpeg * image/webp
  ///
  /// Required.
  core.String? mimeType;

  $Image({this.altText, this.data, this.mimeType});

  $Image.fromJson(core.Map json_)
    : this(
        altText: json_['altText'] as core.String?,
        data: json_['data'] as core.String?,
        mimeType: json_['mimeType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final altText = this.altText;
    final data = this.data;
    final mimeType = this.mimeType;
    return {'altText': ?altText, 'data': ?data, 'mimeType': ?mimeType};
  }
}

/// Used by:
///
/// - ces:v1 : LfA2aV1ImplicitOAuthFlow
/// - cloudbilling:v1 : ImplicitOAuthFlow
class $ImplicitOAuthFlow {
  /// The authorization URL to be used for this flow.
  ///
  /// This MUST be in the form of a URL. The OAuth2 standard requires the use of
  /// TLS
  core.String? authorizationUrl;

  /// The URL to be used for obtaining refresh tokens.
  ///
  /// This MUST be in the form of a URL. The OAuth2 standard requires the use of
  /// TLS.
  core.String? refreshUrl;

  /// The available scopes for the OAuth2 security scheme.
  ///
  /// A map between the scope name and a short description for it. The map MAY
  /// be empty.
  core.Map<core.String, core.String>? scopes;

  $ImplicitOAuthFlow({this.authorizationUrl, this.refreshUrl, this.scopes});

  $ImplicitOAuthFlow.fromJson(core.Map json_)
    : this(
        authorizationUrl: json_['authorizationUrl'] as core.String?,
        refreshUrl: json_['refreshUrl'] as core.String?,
        scopes: (json_['scopes'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final authorizationUrl = this.authorizationUrl;
    final refreshUrl = this.refreshUrl;
    final scopes = this.scopes;
    return {
      'authorizationUrl': ?authorizationUrl,
      'refreshUrl': ?refreshUrl,
      'scopes': ?scopes,
    };
  }
}

/// Used by:
///
/// - dataform:v1 : ActionIncrementalLoadMode
/// - dataform:v1 : IncrementalLoadMode
class $IncrementalLoadMode {
  /// Column name for incremental load modes
  core.String? column;

  $IncrementalLoadMode({this.column});

  $IncrementalLoadMode.fromJson(core.Map json_)
    : this(column: json_['column'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final column = this.column;
    return {'column': ?column};
  }
}

/// Used by:
///
/// - dataproc:v1 : InputMetrics
/// - dataproc:v1 : StageInputMetrics
class $InputMetrics {
  core.String? bytesRead;
  core.String? recordsRead;

  $InputMetrics({this.bytesRead, this.recordsRead});

  $InputMetrics.fromJson(core.Map json_)
    : this(
        bytesRead: json_['bytesRead'] as core.String?,
        recordsRead: json_['recordsRead'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final bytesRead = this.bytesRead;
    final recordsRead = this.recordsRead;
    return {'bytesRead': ?bytesRead, 'recordsRead': ?recordsRead};
  }
}

/// Used by:
///
/// - cloudbuild:v2 : InstallationState
/// - developerconnect:v1 : InstallationState
class $InstallationState {
  /// Link to follow for next action.
  ///
  /// Empty string if the installation is already complete.
  ///
  /// Output only.
  core.String? actionUri;

  /// Message of what the user should do next to continue the installation.
  ///
  /// Empty string if the installation is already complete.
  ///
  /// Output only.
  core.String? message;

  /// Current step of the installation process.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STAGE_UNSPECIFIED" : No stage specified.
  /// - "PENDING_CREATE_APP" : Only for GitHub Enterprise. An App creation has
  /// been requested. The user needs to confirm the creation in their GitHub
  /// enterprise host.
  /// - "PENDING_USER_OAUTH" : User needs to authorize the GitHub (or
  /// Enterprise) App via OAuth.
  /// - "PENDING_INSTALL_APP" : User needs to follow the link to install the
  /// GitHub (or Enterprise) App.
  /// - "COMPLETE" : Installation process has been completed.
  core.String? stage;

  $InstallationState({this.actionUri, this.message, this.stage});

  $InstallationState.fromJson(core.Map json_)
    : this(
        actionUri: json_['actionUri'] as core.String?,
        message: json_['message'] as core.String?,
        stage: json_['stage'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final actionUri = this.actionUri;
    final message = this.message;
    final stage = this.stage;
    return {'actionUri': ?actionUri, 'message': ?message, 'stage': ?stage};
  }
}

/// Used by:
///
/// - aiplatform:v1 : GoogleCloudAiplatformV1BleuInstance
/// - aiplatform:v1 : GoogleCloudAiplatformV1ExactMatchInstance
/// - aiplatform:v1 : GoogleCloudAiplatformV1RougeInstance
/// - aiplatform:v1 : GoogleCloudAiplatformV1ToolCallValidInstance
/// - aiplatform:v1 : GoogleCloudAiplatformV1ToolNameMatchInstance
/// - aiplatform:v1 : GoogleCloudAiplatformV1ToolParameterKVMatchInstance
/// - aiplatform:v1 : GoogleCloudAiplatformV1ToolParameterKeyMatchInstance
class $Instance00 {
  /// Output of the evaluated model.
  ///
  /// Required.
  core.String? prediction;

  /// Ground truth used to compare against the prediction.
  ///
  /// Required.
  core.String? reference;

  $Instance00({this.prediction, this.reference});

  $Instance00.fromJson(core.Map json_)
    : this(
        prediction: json_['prediction'] as core.String?,
        reference: json_['reference'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final prediction = this.prediction;
    final reference = this.reference;
    return {'prediction': ?prediction, 'reference': ?reference};
  }
}

/// Used by:
///
/// - aiplatform:v1 : GoogleCloudAiplatformV1CoherenceInstance
/// - aiplatform:v1 : GoogleCloudAiplatformV1FluencyInstance
/// - aiplatform:v1 : GoogleCloudAiplatformV1SafetyInstance
class $Instance01 {
  /// Output of the evaluated model.
  ///
  /// Required.
  core.String? prediction;

  $Instance01({this.prediction});

  $Instance01.fromJson(core.Map json_)
    : this(prediction: json_['prediction'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final prediction = this.prediction;
    return {'prediction': ?prediction};
  }
}

/// Used by:
///
/// - aiplatform:v1 : GoogleCloudAiplatformV1QuestionAnsweringCorrectnessInstance
/// - aiplatform:v1 : GoogleCloudAiplatformV1QuestionAnsweringHelpfulnessInstance
/// - aiplatform:v1 : GoogleCloudAiplatformV1QuestionAnsweringRelevanceInstance
class $Instance02 {
  /// Text provided as context to answer the question.
  ///
  /// Optional.
  core.String? context;

  /// The question asked and other instruction in the inference prompt.
  ///
  /// Required.
  core.String? instruction;

  /// Output of the evaluated model.
  ///
  /// Required.
  core.String? prediction;

  /// Ground truth used to compare against the prediction.
  ///
  /// Optional.
  core.String? reference;

  $Instance02({
    this.context,
    this.instruction,
    this.prediction,
    this.reference,
  });

  $Instance02.fromJson(core.Map json_)
    : this(
        context: json_['context'] as core.String?,
        instruction: json_['instruction'] as core.String?,
        prediction: json_['prediction'] as core.String?,
        reference: json_['reference'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final context = this.context;
    final instruction = this.instruction;
    final prediction = this.prediction;
    final reference = this.reference;
    return {
      'context': ?context,
      'instruction': ?instruction,
      'prediction': ?prediction,
      'reference': ?reference,
    };
  }
}

/// Used by:
///
/// - aiplatform:v1 : GoogleCloudAiplatformV1CometInstance
/// - aiplatform:v1 : GoogleCloudAiplatformV1MetricxInstance
class $Instance03 {
  /// Output of the evaluated model.
  ///
  /// Required.
  core.String? prediction;

  /// Ground truth used to compare against the prediction.
  ///
  /// Optional.
  core.String? reference;

  /// Source text in original language.
  ///
  /// Optional.
  core.String? source;

  $Instance03({this.prediction, this.reference, this.source});

  $Instance03.fromJson(core.Map json_)
    : this(
        prediction: json_['prediction'] as core.String?,
        reference: json_['reference'] as core.String?,
        source: json_['source'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final prediction = this.prediction;
    final reference = this.reference;
    final source = this.source;
    return {
      'prediction': ?prediction,
      'reference': ?reference,
      'source': ?source,
    };
  }
}

/// Used by:
///
/// - aiplatform:v1 : GoogleCloudAiplatformV1SummarizationHelpfulnessInstance
/// - aiplatform:v1 : GoogleCloudAiplatformV1SummarizationVerbosityInstance
class $Instance04 {
  /// Text to be summarized.
  ///
  /// Required.
  core.String? context;

  /// Summarization prompt for LLM.
  ///
  /// Optional.
  core.String? instruction;

  /// Output of the evaluated model.
  ///
  /// Required.
  core.String? prediction;

  /// Ground truth used to compare against the prediction.
  ///
  /// Optional.
  core.String? reference;

  $Instance04({
    this.context,
    this.instruction,
    this.prediction,
    this.reference,
  });

  $Instance04.fromJson(core.Map json_)
    : this(
        context: json_['context'] as core.String?,
        instruction: json_['instruction'] as core.String?,
        prediction: json_['prediction'] as core.String?,
        reference: json_['reference'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final context = this.context;
    final instruction = this.instruction;
    final prediction = this.prediction;
    final reference = this.reference;
    return {
      'context': ?context,
      'instruction': ?instruction,
      'prediction': ?prediction,
      'reference': ?reference,
    };
  }
}

/// Used by:
///
/// - backupdr:v1 : CloudSqlInstanceBackupPlanAssociationProperties
/// - backupdr:v1 : FilestoreInstanceBackupPlanAssociationProperties
class $InstanceBackupPlanAssociationProperties {
  /// The time when the instance was created.
  ///
  /// Output only.
  core.String? instanceCreateTime;

  $InstanceBackupPlanAssociationProperties({this.instanceCreateTime});

  $InstanceBackupPlanAssociationProperties.fromJson(core.Map json_)
    : this(instanceCreateTime: json_['instanceCreateTime'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final instanceCreateTime = this.instanceCreateTime;
    return {'instanceCreateTime': ?instanceCreateTime};
  }
}

/// Used by:
///
/// - compute:v1 : InstanceGroupManagersAbandonInstancesRequest
/// - compute:v1 : RegionInstanceGroupManagersAbandonInstancesRequest
class $InstanceGroupManagersAbandonInstancesRequest {
  /// The URLs of one or more instances to abandon.
  ///
  /// This can be a full URL or
  /// a partial URL, such as zones/\[ZONE\]/instances/\[INSTANCE_NAME\].
  core.List<core.String>? instances;

  $InstanceGroupManagersAbandonInstancesRequest({this.instances});

  $InstanceGroupManagersAbandonInstancesRequest.fromJson(core.Map json_)
    : this(
        instances: (json_['instances'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final instances = this.instances;
    return {'instances': ?instances};
  }
}

/// Used by:
///
/// - compute:v1 : InstanceGroupManagersApplyUpdatesRequest
/// - compute:v1 : RegionInstanceGroupManagersApplyUpdatesRequest
class $InstanceGroupManagersApplyUpdatesRequest {
  /// Flag to update all instances instead of specified list of "instances".
  /// If the flag is set to true then the instances may not be specified
  /// in the request.
  core.bool? allInstances;

  /// The list of URLs of one or more instances for which you want to apply
  /// updates.
  ///
  /// Each URL can be a full URL or a partial URL, such
  /// aszones/\[ZONE\]/instances/\[INSTANCE_NAME\].
  core.List<core.String>? instances;

  /// The minimal action that you want to perform on each instance during the
  /// update:
  ///
  ///
  ///      - REPLACE: At minimum, delete the instance and create it
  ///      again.
  ///
  ///
  ///    - RESTART: Stop the instance and start it
  ///      again.
  ///    - REFRESH: Do not stop the instance and limit
  ///      disruption as much as possible.
  ///    - NONE: Do not
  ///      disrupt the instance at all.
  ///
  ///
  /// By default, the minimum action is NONE. If your update
  /// requires a more disruptive action than you set with this flag, the
  /// necessary action is performed to execute the update.
  /// Possible string values are:
  /// - "NONE" : Do not perform any action.
  /// - "REFRESH" : Do not stop the instance.
  /// - "REPLACE" : (Default.) Replace the instance according to the replacement
  /// method
  /// option.
  /// - "RESTART" : Stop the instance and start it again.
  core.String? minimalAction;

  /// The most disruptive action that you want to perform on each instance
  /// during
  /// the update:
  ///
  ///
  ///      - REPLACE: Delete the instance and create it again.
  ///      - RESTART: Stop the instance and start it again.
  ///      - REFRESH: Do not stop the instance and limit disruption
  ///      as much as possible.
  ///
  ///
  ///    - NONE: Do not disrupt the
  ///      instance at all.
  ///
  ///
  /// By default, the most disruptive allowed action is REPLACE. If
  /// your update requires a more disruptive action than you set with this flag,
  /// the update request will fail.
  /// Possible string values are:
  /// - "NONE" : Do not perform any action.
  /// - "REFRESH" : Do not stop the instance.
  /// - "REPLACE" : (Default.) Replace the instance according to the replacement
  /// method
  /// option.
  /// - "RESTART" : Stop the instance and start it again.
  core.String? mostDisruptiveAllowedAction;

  $InstanceGroupManagersApplyUpdatesRequest({
    this.allInstances,
    this.instances,
    this.minimalAction,
    this.mostDisruptiveAllowedAction,
  });

  $InstanceGroupManagersApplyUpdatesRequest.fromJson(core.Map json_)
    : this(
        allInstances: json_['allInstances'] as core.bool?,
        instances: (json_['instances'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        minimalAction: json_['minimalAction'] as core.String?,
        mostDisruptiveAllowedAction:
            json_['mostDisruptiveAllowedAction'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final allInstances = this.allInstances;
    final instances = this.instances;
    final minimalAction = this.minimalAction;
    final mostDisruptiveAllowedAction = this.mostDisruptiveAllowedAction;
    return {
      'allInstances': ?allInstances,
      'instances': ?instances,
      'minimalAction': ?minimalAction,
      'mostDisruptiveAllowedAction': ?mostDisruptiveAllowedAction,
    };
  }
}

/// Used by:
///
/// - compute:v1 : InstanceGroupManagersResumeInstancesRequest
/// - compute:v1 : RegionInstanceGroupManagersResumeInstancesRequest
class $InstanceGroupManagersResumeInstancesRequest {
  /// The URLs of one or more instances to resume.
  ///
  /// This can be a full URL or
  /// a partial URL, such as zones/\[ZONE\]/instances/\[INSTANCE_NAME\].
  core.List<core.String>? instances;

  $InstanceGroupManagersResumeInstancesRequest({this.instances});

  $InstanceGroupManagersResumeInstancesRequest.fromJson(core.Map json_)
    : this(
        instances: (json_['instances'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final instances = this.instances;
    return {'instances': ?instances};
  }
}

/// Used by:
///
/// - compute:v1 : InstanceGroupManagersStartInstancesRequest
/// - compute:v1 : RegionInstanceGroupManagersStartInstancesRequest
class $InstanceGroupManagersStartInstancesRequest {
  /// The URLs of one or more instances to start.
  ///
  /// This can be a full URL or
  /// a partial URL, such as zones/\[ZONE\]/instances/\[INSTANCE_NAME\].
  core.List<core.String>? instances;

  $InstanceGroupManagersStartInstancesRequest({this.instances});

  $InstanceGroupManagersStartInstancesRequest.fromJson(core.Map json_)
    : this(
        instances: (json_['instances'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final instances = this.instances;
    return {'instances': ?instances};
  }
}

/// Used by:
///
/// - compute:v1 : InstanceGroupManagersStopInstancesRequest
/// - compute:v1 : RegionInstanceGroupManagersStopInstancesRequest
class $InstanceGroupManagersStopInstancesRequest {
  /// If this flag is set to true, the Instance Group Manager will proceed to
  /// stop the instances, skipping initialization on them.
  core.bool? forceStop;

  /// The URLs of one or more instances to stop.
  ///
  /// This can be a full URL or
  /// a partial URL, such as zones/\[ZONE\]/instances/\[INSTANCE_NAME\].
  core.List<core.String>? instances;

  $InstanceGroupManagersStopInstancesRequest({this.forceStop, this.instances});

  $InstanceGroupManagersStopInstancesRequest.fromJson(core.Map json_)
    : this(
        forceStop: json_['forceStop'] as core.bool?,
        instances: (json_['instances'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final forceStop = this.forceStop;
    final instances = this.instances;
    return {'forceStop': ?forceStop, 'instances': ?instances};
  }
}

/// Used by:
///
/// - compute:v1 : InstanceGroupManagersSuspendInstancesRequest
/// - compute:v1 : RegionInstanceGroupManagersSuspendInstancesRequest
class $InstanceGroupManagersSuspendInstancesRequest {
  /// If this flag is set to true, the Instance Group Manager will proceed to
  /// suspend the instances, skipping initialization on them.
  core.bool? forceSuspend;

  /// The URLs of one or more instances to suspend.
  ///
  /// This can be a full URL or
  /// a partial URL, such as zones/\[ZONE\]/instances/\[INSTANCE_NAME\].
  core.List<core.String>? instances;

  $InstanceGroupManagersSuspendInstancesRequest({
    this.forceSuspend,
    this.instances,
  });

  $InstanceGroupManagersSuspendInstancesRequest.fromJson(core.Map json_)
    : this(
        forceSuspend: json_['forceSuspend'] as core.bool?,
        instances: (json_['instances'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final forceSuspend = this.forceSuspend;
    final instances = this.instances;
    return {'forceSuspend': ?forceSuspend, 'instances': ?instances};
  }
}

/// Used by:
///
/// - run:v2 : GoogleCloudRunV2StartInstanceRequest
/// - run:v2 : GoogleCloudRunV2StopInstanceRequest
class $InstanceRequest {
  /// A system-generated fingerprint for this version of the resource.
  ///
  /// This may be used to detect modification conflict during updates.
  ///
  /// Optional.
  core.String? etag;

  /// Indicates that the request should be validated without actually stopping
  /// any resources.
  ///
  /// Optional.
  core.bool? validateOnly;

  $InstanceRequest({this.etag, this.validateOnly});

  $InstanceRequest.fromJson(core.Map json_)
    : this(
        etag: json_['etag'] as core.String?,
        validateOnly: json_['validateOnly'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final etag = this.etag;
    final validateOnly = this.validateOnly;
    return {'etag': ?etag, 'validateOnly': ?validateOnly};
  }
}

/// Used by:
///
/// - agenciesandbrands:v1 : IntList
/// - curationpartners:v1 : IntList
class $IntList {
  /// The values
  core.List<core.String>? values;

  $IntList({this.values});

  $IntList.fromJson(core.Map json_)
    : this(
        values: (json_['values'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final values = this.values;
    return {'values': ?values};
  }
}

/// Used by:
///
/// - playintegrity:v1 : DecodeIntegrityTokenRequest
/// - playintegrity:v1 : DecodePcIntegrityTokenRequest
class $IntegrityTokenRequest {
  /// Encoded integrity token.
  core.String? integrityToken;

  $IntegrityTokenRequest({this.integrityToken});

  $IntegrityTokenRequest.fromJson(core.Map json_)
    : this(integrityToken: json_['integrityToken'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final integrityToken = this.integrityToken;
    return {'integrityToken': ?integrityToken};
  }
}

/// Used by:
///
/// - aiplatform:v1 : GoogleTypeInterval
/// - airquality:v1 : Interval
/// - apigee:v1 : GoogleTypeInterval
/// - dataform:v1 : Interval
/// - datalineage:v1 : GoogleTypeInterval
/// - health:v4 : Interval
/// - merchantapi:inventories_v1 : Interval
/// - merchantapi:products_v1 : Interval
/// - merchantapi:promotions_v1 : Interval
/// - sheets:v4 : Interval
/// - sqladmin:v1 : Interval
/// - tpu:v2 : Interval
/// - versionhistory:v1 : Interval
/// - vmwareengine:v1 : Interval
/// - youtube:v3 : Interval
class $Interval {
  /// Exclusive end of the interval.
  ///
  /// If specified, a Timestamp matching this interval will have to be before
  /// the end.
  ///
  /// Optional.
  core.String? endTime;

  /// Inclusive start of the interval.
  ///
  /// If specified, a Timestamp matching this interval will have to be the same
  /// or after the start.
  ///
  /// Optional.
  core.String? startTime;

  $Interval({this.endTime, this.startTime});

  $Interval.fromJson(core.Map json_)
    : this(
        endTime: json_['endTime'] as core.String?,
        startTime: json_['startTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final endTime = this.endTime;
    final startTime = this.startTime;
    return {'endTime': ?endTime, 'startTime': ?startTime};
  }
}

/// Used by:
///
/// - containeranalysis:v1 : Justification
/// - ondemandscanning:v1 : Justification
class $Justification {
  /// Additional details on why this justification was chosen.
  core.String? details;

  /// The justification type for this vulnerability.
  /// Possible string values are:
  /// - "JUSTIFICATION_TYPE_UNSPECIFIED" : JUSTIFICATION_TYPE_UNSPECIFIED.
  /// - "COMPONENT_NOT_PRESENT" : The vulnerable component is not present in the
  /// product.
  /// - "VULNERABLE_CODE_NOT_PRESENT" : The vulnerable code is not present.
  /// Typically this case occurs when source code is configured or built in a
  /// way that excludes the vulnerable code.
  /// - "VULNERABLE_CODE_NOT_IN_EXECUTE_PATH" : The vulnerable code can not be
  /// executed. Typically this case occurs when the product includes the
  /// vulnerable code but does not call or use the vulnerable code.
  /// - "VULNERABLE_CODE_CANNOT_BE_CONTROLLED_BY_ADVERSARY" : The vulnerable
  /// code cannot be controlled by an attacker to exploit the vulnerability.
  /// - "INLINE_MITIGATIONS_ALREADY_EXIST" : The product includes built-in
  /// protections or features that prevent exploitation of the vulnerability.
  /// These built-in protections cannot be subverted by the attacker and cannot
  /// be configured or disabled by the user. These mitigations completely
  /// prevent exploitation based on known attack vectors.
  core.String? justificationType;

  $Justification({this.details, this.justificationType});

  $Justification.fromJson(core.Map json_)
    : this(
        details: json_['details'] as core.String?,
        justificationType: json_['justificationType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final details = this.details;
    final justificationType = this.justificationType;
    return {'details': ?details, 'justificationType': ?justificationType};
  }
}

/// Used by:
///
/// - binaryauthorization:v1 : Jwt
/// - containeranalysis:v1 : Jwt
/// - ondemandscanning:v1 : Jwt
class $Jwt {
  /// The compact encoding of a JWS, which is always three base64 encoded
  /// strings joined by periods.
  ///
  /// For details, see: https://tools.ietf.org/html/rfc7515.html#section-3.1
  core.String? compactJwt;

  $Jwt({this.compactJwt});

  $Jwt.fromJson(core.Map json_)
    : this(compactJwt: json_['compactJwt'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final compactJwt = this.compactJwt;
    return {'compactJwt': ?compactJwt};
  }
}

/// Used by:
///
/// - servicemanagement:v1 : JwtLocation
/// - serviceusage:v1 : JwtLocation
class $JwtLocation {
  /// Specifies cookie name to extract JWT token.
  core.String? cookie;

  /// Specifies HTTP header name to extract JWT token.
  core.String? header;

  /// Specifies URL query parameter name to extract JWT token.
  core.String? query;

  /// The value prefix.
  ///
  /// The value format is "value_prefix{token}" Only applies to "in" header
  /// type. Must be empty for "in" query type. If not empty, the header value
  /// has to match (case sensitive) this prefix. If not matched, JWT will not be
  /// extracted. If matched, JWT will be extracted after the prefix is removed.
  /// For example, for "Authorization: Bearer {JWT}", value_prefix="Bearer "
  /// with a space at the end.
  core.String? valuePrefix;

  $JwtLocation({this.cookie, this.header, this.query, this.valuePrefix});

  $JwtLocation.fromJson(core.Map json_)
    : this(
        cookie: json_['cookie'] as core.String?,
        header: json_['header'] as core.String?,
        query: json_['query'] as core.String?,
        valuePrefix: json_['valuePrefix'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final cookie = this.cookie;
    final header = this.header;
    final query = this.query;
    final valuePrefix = this.valuePrefix;
    return {
      'cookie': ?cookie,
      'header': ?header,
      'query': ?query,
      'valuePrefix': ?valuePrefix,
    };
  }
}

/// Used by:
///
/// - batch:v1 : AgentKMSEnvMap
/// - batch:v1 : KMSEnvMap
class $KMSEnvMap {
  /// The value of the cipherText response from the `encrypt` method.
  core.String? cipherText;

  /// The name of the KMS key that will be used to decrypt the cipher text.
  core.String? keyName;

  $KMSEnvMap({this.cipherText, this.keyName});

  $KMSEnvMap.fromJson(core.Map json_)
    : this(
        cipherText: json_['cipherText'] as core.String?,
        keyName: json_['keyName'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final cipherText = this.cipherText;
    final keyName = this.keyName;
    return {'cipherText': ?cipherText, 'keyName': ?keyName};
  }
}

/// Used by:
///
/// - cloudkms:v1 : KeyAccessJustificationsPolicy
/// - kmsinventory:v1 : GoogleCloudKmsV1KeyAccessJustificationsPolicy
class $KeyAccessJustificationsPolicy {
  /// The list of allowed reasons for access to a CryptoKey.
  ///
  /// Note that empty allowed_access_reasons has a different meaning depending
  /// on where this message appears. If this is under
  /// KeyAccessJustificationsPolicyConfig, it means allow-all. If this is under
  /// CryptoKey, it means deny-all.
  core.List<core.String>? allowedAccessReasons;

  $KeyAccessJustificationsPolicy({this.allowedAccessReasons});

  $KeyAccessJustificationsPolicy.fromJson(core.Map json_)
    : this(
        allowedAccessReasons: (json_['allowedAccessReasons'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final allowedAccessReasons = this.allowedAccessReasons;
    return {'allowedAccessReasons': ?allowedAccessReasons};
  }
}

/// Used by:
///
/// - datastore:v1 : KindExpression
/// - dlp:v2 : GooglePrivacyDlpV2KindExpression
class $KindExpression {
  /// The name of the kind.
  core.String? name;

  $KindExpression({this.name});

  $KindExpression.fromJson(core.Map json_)
    : this(name: json_['name'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final name = this.name;
    return {'name': ?name};
  }
}

/// Used by:
///
/// - logging:v2 : LabelDescriptor
/// - servicemanagement:v1 : LabelDescriptor
/// - serviceusage:v1 : LabelDescriptor
class $LabelDescriptor {
  /// A human-readable description for the label.
  core.String? description;

  /// The label key.
  core.String? key;

  /// The type of data that can be assigned to the label.
  /// Possible string values are:
  /// - "STRING" : A variable-length string. This is the default.
  /// - "BOOL" : Boolean; true or false.
  /// - "INT64" : A 64-bit signed integer.
  core.String? valueType;

  $LabelDescriptor({this.description, this.key, this.valueType});

  $LabelDescriptor.fromJson(core.Map json_)
    : this(
        description: json_['description'] as core.String?,
        key: json_['key'] as core.String?,
        valueType: json_['valueType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final description = this.description;
    final key = this.key;
    final valueType = this.valueType;
    return {'description': ?description, 'key': ?key, 'valueType': ?valueType};
  }
}

/// Used by:
///
/// - container:v1 : NodeLabels
/// - container:v1 : ResourceLabels
class $Labels {
  /// Map of node label keys and node label values.
  core.Map<core.String, core.String>? labels;

  $Labels({this.labels});

  $Labels.fromJson(core.Map json_)
    : this(
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final labels = this.labels;
    return {'labels': ?labels};
  }
}

/// Used by:
///
/// - addressvalidation:v1 : GoogleTypeLatLng
/// - aiplatform:v1 : GoogleTypeLatLng
/// - airquality:v1 : LatLng
/// - areainsights:v1 : LatLng
/// - datastore:v1 : LatLng
/// - firestore:v1 : LatLng
/// - jobs:v4 : LatLng
/// - merchantapi:accounts_v1 : LatLng
/// - mybusinessbusinessinformation:v1 : LatLng
/// - places:v1 : GoogleTypeLatLng
/// - solar:v1 : LatLng
/// - streetviewpublish:v1 : LatLng
/// - vision:v1 : LatLng
class $LatLng {
  /// The latitude in degrees.
  ///
  /// It must be in the range \[-90.0, +90.0\].
  core.double? latitude;

  /// The longitude in degrees.
  ///
  /// It must be in the range \[-180.0, +180.0\].
  core.double? longitude;

  $LatLng({this.latitude, this.longitude});

  $LatLng.fromJson(core.Map json_)
    : this(
        latitude: (json_['latitude'] as core.num?)?.toDouble(),
        longitude: (json_['longitude'] as core.num?)?.toDouble(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final latitude = this.latitude;
    final longitude = this.longitude;
    return {'latitude': ?latitude, 'longitude': ?longitude};
  }
}

/// Used by:
///
/// - containeranalysis:v1 : Layer
/// - ondemandscanning:v1 : Layer
class $Layer {
  /// The recovered arguments to the Dockerfile directive.
  core.String? arguments;

  /// The recovered Dockerfile directive used to construct this layer.
  ///
  /// See https://docs.docker.com/engine/reference/builder/ for more
  /// information.
  ///
  /// Required.
  core.String? directive;

  $Layer({this.arguments, this.directive});

  $Layer.fromJson(core.Map json_)
    : this(
        arguments: json_['arguments'] as core.String?,
        directive: json_['directive'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final arguments = this.arguments;
    final directive = this.directive;
    return {'arguments': ?arguments, 'directive': ?directive};
  }
}

/// Used by:
///
/// - ondemandscanning:v1 : GrafeasV1LayerAttribute
/// - ondemandscanning:v1 : LayerAttribute
class $LayerAttribute {
  /// The name of the plugin that generated this attribute.
  core.String? plugin;

  /// The value of the attribute, with a meaning defined by the plugin.
  core.String? value;

  $LayerAttribute({this.plugin, this.value});

  $LayerAttribute.fromJson(core.Map json_)
    : this(
        plugin: json_['plugin'] as core.String?,
        value: json_['value'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final plugin = this.plugin;
    final value = this.value;
    return {'plugin': ?plugin, 'value': ?value};
  }
}

/// Used by:
///
/// - containeranalysis:v1 : License
/// - ondemandscanning:v1 : License
class $License {
  /// Comments
  core.String? comments;

  /// Often a single license can be used to represent the licensing terms.
  ///
  /// Sometimes it is necessary to include a choice of one or more licenses or
  /// some combination of license identifiers. Examples: "LGPL-2.1-only OR MIT",
  /// "LGPL-2.1-only AND MIT", "GPL-2.0-or-later WITH Bison-exception-2.2".
  core.String? expression;

  $License({this.comments, this.expression});

  $License.fromJson(core.Map json_)
    : this(
        comments: json_['comments'] as core.String?,
        expression: json_['expression'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final comments = this.comments;
    final expression = this.expression;
    return {'comments': ?comments, 'expression': ?expression};
  }
}

/// Used by:
///
/// - cloudresourcemanager:v1 : Lien
/// - cloudresourcemanager:v3 : Lien
class $Lien {
  /// The creation time of this Lien.
  core.String? createTime;

  /// A system-generated unique identifier for this Lien.
  ///
  /// Example: `liens/1234abcd`
  core.String? name;

  /// A stable, user-visible/meaningful string identifying the origin of the
  /// Lien, intended to be inspected programmatically.
  ///
  /// Maximum length of 200 characters. Example: 'compute.googleapis.com'
  core.String? origin;

  /// A reference to the resource this Lien is attached to.
  ///
  /// The server will validate the parent against those for which Liens are
  /// supported. Example: `projects/1234`
  core.String? parent;

  /// Concise user-visible strings indicating why an action cannot be performed
  /// on a resource.
  ///
  /// Maximum length of 200 characters. Example: 'Holds production API key'
  core.String? reason;

  /// The types of operations which should be blocked as a result of this Lien.
  ///
  /// Each value should correspond to an IAM permission. The server will
  /// validate the permissions against those for which Liens are supported. An
  /// empty list is meaningless and will be rejected. Example:
  /// \['resourcemanager.projects.delete'\]
  core.List<core.String>? restrictions;

  $Lien({
    this.createTime,
    this.name,
    this.origin,
    this.parent,
    this.reason,
    this.restrictions,
  });

  $Lien.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        name: json_['name'] as core.String?,
        origin: json_['origin'] as core.String?,
        parent: json_['parent'] as core.String?,
        reason: json_['reason'] as core.String?,
        restrictions: (json_['restrictions'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final createTime = this.createTime;
    final name = this.name;
    final origin = this.origin;
    final parent = this.parent;
    final reason = this.reason;
    final restrictions = this.restrictions;
    return {
      'createTime': ?createTime,
      'name': ?name,
      'origin': ?origin,
      'parent': ?parent,
      'reason': ?reason,
      'restrictions': ?restrictions,
    };
  }
}

/// Used by:
///
/// - searchads360:v23 : GoogleAdsSearchads360V23Services__ConfigureCampaignLifecycleGoalsResult
/// - searchads360:v23 : GoogleAdsSearchads360V23Services__ConfigureCustomerLifecycleGoalsResult
class $LifecycleGoalsResult {
  /// Returned for the successful operation.
  core.String? resourceName;

  $LifecycleGoalsResult({this.resourceName});

  $LifecycleGoalsResult.fromJson(core.Map json_)
    : this(resourceName: json_['resourceName'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final resourceName = this.resourceName;
    return {'resourceName': ?resourceName};
  }
}

/// Used by:
///
/// - logging:v2 : Linear
/// - monitoring:v3 : Linear
class $Linear {
  /// Must be greater than 0.
  core.int? numFiniteBuckets;

  /// Lower bound of the first bucket.
  core.double? offset;

  /// Must be greater than 0.
  core.double? width;

  $Linear({this.numFiniteBuckets, this.offset, this.width});

  $Linear.fromJson(core.Map json_)
    : this(
        numFiniteBuckets: json_['numFiniteBuckets'] as core.int?,
        offset: (json_['offset'] as core.num?)?.toDouble(),
        width: (json_['width'] as core.num?)?.toDouble(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final numFiniteBuckets = this.numFiniteBuckets;
    final offset = this.offset;
    final width = this.width;
    return {
      'numFiniteBuckets': ?numFiniteBuckets,
      'offset': ?offset,
      'width': ?width,
    };
  }
}

/// Used by:
///
/// - compute:v1 : HelpLink
/// - vmmigration:v1 : Link
class $Link {
  /// Describes what the link offers.
  core.String? description;

  /// The URL of the link.
  core.String? url;

  $Link({this.description, this.url});

  $Link.fromJson(core.Map json_)
    : this(
        description: json_['description'] as core.String?,
        url: json_['url'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final description = this.description;
    final url = this.url;
    return {'description': ?description, 'url': ?url};
  }
}

/// Used by:
///
/// - datalineage:v1 : GoogleCloudDatacatalogLineageV1LineageLinkDependencyInfo
/// - datalineage:v1 : GoogleCloudDatacatalogLineageV1LinkDependencyInfo
class $LinkDependencyInfo {
  /// The type of dependency.
  /// Possible string values are:
  /// - "DEPENDENCY_TYPE_UNSPECIFIED" : Dependency type unspecified.
  /// - "EXACT_COPY" : Exact data copy without any change.
  /// - "OTHER" : Other types of dependencies like filtering or grouping.
  core.String? dependencyType;

  $LinkDependencyInfo({this.dependencyType});

  $LinkDependencyInfo.fromJson(core.Map json_)
    : this(dependencyType: json_['dependencyType'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final dependencyType = this.dependencyType;
    return {'dependencyType': ?dependencyType};
  }
}

/// Used by:
///
/// - cloudasset:v1 : GoogleCloudOrgpolicyV1ListPolicy
/// - cloudresourcemanager:v1 : ListPolicy
class $ListPolicy {
  /// The policy all_values state.
  /// Possible string values are:
  /// - "ALL_VALUES_UNSPECIFIED" : Indicates that allowed_values or
  /// denied_values must be set.
  /// - "ALLOW" : A policy with this set allows all values.
  /// - "DENY" : A policy with this set denies all values.
  core.String? allValues;

  /// List of values allowed at this resource.
  ///
  /// Can only be set if `all_values` is set to `ALL_VALUES_UNSPECIFIED`.
  core.List<core.String>? allowedValues;

  /// List of values denied at this resource.
  ///
  /// Can only be set if `all_values` is set to `ALL_VALUES_UNSPECIFIED`.
  core.List<core.String>? deniedValues;

  /// Determines the inheritance behavior for this `Policy`.
  ///
  /// By default, a `ListPolicy` set at a resource supersedes any `Policy` set
  /// anywhere up the resource hierarchy. However, if `inherit_from_parent` is
  /// set to `true`, then the values from the effective `Policy` of the parent
  /// resource are inherited, meaning the values set in this `Policy` are added
  /// to the values inherited up the hierarchy. Setting `Policy` hierarchies
  /// that inherit both allowed values and denied values isn't recommended in
  /// most circumstances to keep the configuration simple and understandable.
  /// However, it is possible to set a `Policy` with `allowed_values` set that
  /// inherits a `Policy` with `denied_values` set. In this case, the values
  /// that are allowed must be in `allowed_values` and not present in
  /// `denied_values`. For example, suppose you have a `Constraint`
  /// `constraints/serviceuser.services`, which has a `constraint_type` of
  /// `list_constraint`, and with `constraint_default` set to `ALLOW`. Suppose
  /// that at the Organization level, a `Policy` is applied that restricts the
  /// allowed API activations to {`E1`, `E2`}. Then, if a `Policy` is applied to
  /// a project below the Organization that has `inherit_from_parent` set to
  /// `false` and field all_values set to DENY, then an attempt to activate any
  /// API will be denied. The following examples demonstrate different possible
  /// layerings for `projects/bar` parented by `organizations/foo`: Example 1
  /// (no inherited values): `organizations/foo` has a `Policy` with values:
  /// {allowed_values: "E1" allowed_values:"E2"} `projects/bar` has
  /// `inherit_from_parent` `false` and values: {allowed_values: "E3"
  /// allowed_values: "E4"} The accepted values at `organizations/foo` are `E1`,
  /// `E2`. The accepted values at `projects/bar` are `E3`, and `E4`. Example 2
  /// (inherited values): `organizations/foo` has a `Policy` with values:
  /// {allowed_values: "E1" allowed_values:"E2"} `projects/bar` has a `Policy`
  /// with values: {value: "E3" value: "E4" inherit_from_parent: true} The
  /// accepted values at `organizations/foo` are `E1`, `E2`. The accepted values
  /// at `projects/bar` are `E1`, `E2`, `E3`, and `E4`. Example 3 (inheriting
  /// both allowed and denied values): `organizations/foo` has a `Policy` with
  /// values: {allowed_values: "E1" allowed_values: "E2"} `projects/bar` has a
  /// `Policy` with: {denied_values: "E1"} The accepted values at
  /// `organizations/foo` are `E1`, `E2`. The value accepted at `projects/bar`
  /// is `E2`. Example 4 (RestoreDefault): `organizations/foo` has a `Policy`
  /// with values: {allowed_values: "E1" allowed_values:"E2"} `projects/bar` has
  /// a `Policy` with values: {RestoreDefault: {}} The accepted values at
  /// `organizations/foo` are `E1`, `E2`. The accepted values at `projects/bar`
  /// are either all or none depending on the value of `constraint_default` (if
  /// `ALLOW`, all; if `DENY`, none). Example 5 (no policy inherits parent
  /// policy): `organizations/foo` has no `Policy` set. `projects/bar` has no
  /// `Policy` set. The accepted values at both levels are either all or none
  /// depending on the value of `constraint_default` (if `ALLOW`, all; if
  /// `DENY`, none). Example 6 (ListConstraint allowing all):
  /// `organizations/foo` has a `Policy` with values: {allowed_values: "E1"
  /// allowed_values: "E2"} `projects/bar` has a `Policy` with: {all: ALLOW} The
  /// accepted values at `organizations/foo` are `E1`, E2`. Any value is
  /// accepted at `projects/bar`. Example 7 (ListConstraint allowing none):
  /// `organizations/foo` has a `Policy` with values: {allowed_values: "E1"
  /// allowed_values: "E2"} `projects/bar` has a `Policy` with: {all: DENY} The
  /// accepted values at `organizations/foo` are `E1`, E2`. No value is accepted
  /// at `projects/bar`. Example 10 (allowed and denied subtrees of Resource
  /// Manager hierarchy): Given the following resource hierarchy O1-\>{F1, F2};
  /// F1-\>{P1}; F2-\>{P2, P3}, `organizations/foo` has a `Policy` with values:
  /// {allowed_values: "under:organizations/O1"} `projects/bar` has a `Policy`
  /// with: {allowed_values: "under:projects/P3"} {denied_values:
  /// "under:folders/F2"} The accepted values at `organizations/foo` are
  /// `organizations/O1`, `folders/F1`, `folders/F2`, `projects/P1`,
  /// `projects/P2`, `projects/P3`. The accepted values at `projects/bar` are
  /// `organizations/O1`, `folders/F1`, `projects/P1`.
  core.bool? inheritFromParent;

  /// The Google Cloud Console will try to default to a configuration that
  /// matches the value specified in this `Policy`.
  ///
  /// If `suggested_value` is not set, it will inherit the value specified
  /// higher in the hierarchy, unless `inherit_from_parent` is `false`.
  ///
  /// Optional.
  core.String? suggestedValue;

  $ListPolicy({
    this.allValues,
    this.allowedValues,
    this.deniedValues,
    this.inheritFromParent,
    this.suggestedValue,
  });

  $ListPolicy.fromJson(core.Map json_)
    : this(
        allValues: json_['allValues'] as core.String?,
        allowedValues: (json_['allowedValues'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        deniedValues: (json_['deniedValues'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        inheritFromParent: json_['inheritFromParent'] as core.bool?,
        suggestedValue: json_['suggestedValue'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final allValues = this.allValues;
    final allowedValues = this.allowedValues;
    final deniedValues = this.deniedValues;
    final inheritFromParent = this.inheritFromParent;
    final suggestedValue = this.suggestedValue;
    return {
      'allValues': ?allValues,
      'allowedValues': ?allowedValues,
      'deniedValues': ?deniedValues,
      'inheritFromParent': ?inheritFromParent,
      'suggestedValue': ?suggestedValue,
    };
  }
}

/// Used by:
///
/// - agentidentity:v1 : Location
/// - agentregistry:v1 : Location
/// - aiplatform:v1 : GoogleCloudLocationLocation
/// - alloydb:v1 : GoogleCloudLocationLocation
/// - apigateway:v1 : ApigatewayLocation
/// - apihub:v1 : GoogleCloudLocationLocation
/// - apphub:v1 : Location
/// - artifactregistry:v1 : Location
/// - auditmanager:v1 : Location
/// - backupdr:v1 : Location
/// - baremetalsolution:v2 : Location
/// - batch:v1 : Location
/// - beyondcorp:v1 : GoogleCloudLocationLocation
/// - bigquerydatatransfer:v1 : Location
/// - bigtableadmin:v2 : Location
/// - certificatemanager:v1 : Location
/// - ces:v1 : Location
/// - cloudbuild:v2 : Location
/// - clouddeploy:v1 : Location
/// - cloudfunctions:v1 : Location
/// - cloudfunctions:v2 : Location
/// - cloudkms:v1 : Location
/// - cloudlocationfinder:v1 : Location
/// - cloudscheduler:v1 : Location
/// - cloudtasks:v2 : Location
/// - config:v1 : Location
/// - dataform:v1 : Location
/// - datafusion:v1 : Location
/// - datamigration:v1 : Location
/// - datastream:v1 : Location
/// - developerconnect:v1 : Location
/// - devicerun:v1 : Location
/// - documentai:v1 : GoogleCloudLocationLocation
/// - eventarc:v1 : Location
/// - file:v1 : Location
/// - firebaseapphosting:v1 : Location
/// - firebasedataconnect:v1 : Location
/// - firestore:v1 : Location
/// - ftp:v1 : Location
/// - gkebackup:v1 : Location
/// - gkehub:v2 : Location
/// - gkeonprem:v1 : Location
/// - healthcare:v1 : Location
/// - hypercomputecluster:v1 : Location
/// - ids:v1 : Location
/// - looker:v1 : Location
/// - managedidentities:v1 : Location
/// - managedkafka:v1 : Location
/// - migrationcenter:v1 : Location
/// - netapp:v1 : Location
/// - networkconnectivity:v1 : Location
/// - networkmanagement:v1 : Location
/// - networksecurity:v1 : Location
/// - networkservices:v1 : Location
/// - notebooks:v2 : Location
/// - observability:v1 : Location
/// - oracledatabase:v1 : Location
/// - parallelstore:v1 : Location
/// - parametermanager:v1 : Location
/// - privateca:v1 : Location
/// - saasservicemgmt:v1 : GoogleCloudLocationLocation
/// - secretmanager:v1 : Location
/// - securesourcemanager:v1 : Location
/// - securityposture:v1 : Location
/// - servicedirectory:v1 : Location
/// - storagebatchoperations:v1 : Location
/// - tpu:v2 : Location
/// - translate:v3 : Location
/// - vmmigration:v1 : Location
/// - vmwareengine:v1 : Location
/// - vpcaccess:v1 : Location
/// - workflows:v1 : Location
/// - workloadmanager:v1 : Location
/// - workstations:v1 : Location
class $Location00 {
  /// The friendly name for this location, typically a nearby city name.
  ///
  /// For example, "Tokyo".
  core.String? displayName;

  /// Cross-service attributes for the location.
  ///
  /// For example {"cloud.googleapis.com/region": "us-east1"}
  core.Map<core.String, core.String>? labels;

  /// The canonical id for this location.
  ///
  /// For example: `"us-east1"`.
  core.String? locationId;

  /// Service-specific metadata.
  ///
  /// For example the available capacity at the given location.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? metadata;

  /// Resource name for the location, which may vary between implementations.
  ///
  /// For example: `"projects/example-project/locations/us-east1"`
  core.String? name;

  $Location00({
    this.displayName,
    this.labels,
    this.locationId,
    this.metadata,
    this.name,
  });

  $Location00.fromJson(core.Map json_)
    : this(
        displayName: json_['displayName'] as core.String?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        locationId: json_['locationId'] as core.String?,
        metadata: json_.containsKey('metadata')
            ? json_['metadata'] as core.Map<core.String, core.dynamic>
            : null,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final displayName = this.displayName;
    final labels = this.labels;
    final locationId = this.locationId;
    final metadata = this.metadata;
    final name = this.name;
    return {
      'displayName': ?displayName,
      'labels': ?labels,
      'locationId': ?locationId,
      'metadata': ?metadata,
      'name': ?name,
    };
  }
}

/// Used by:
///
/// - appengine:v1 : Location
/// - dataplex:v1 : GoogleCloudLocationLocation
/// - logging:v2 : Location
class $Location01 {
  /// The friendly name for this location, typically a nearby city name.
  ///
  /// For example, "Tokyo".
  core.String? displayName;

  /// Cross-service attributes for the location.
  ///
  /// For example {"cloud.googleapis.com/region": "us-east1"}
  core.Map<core.String, core.String>? labels;

  /// The canonical id for this location.
  ///
  /// For example: "us-east1".
  core.String? locationId;

  /// Service-specific metadata.
  ///
  /// For example the available capacity at the given location.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? metadata;

  /// Resource name for the location, which may vary between implementations.
  ///
  /// For example: "projects/example-project/locations/us-east1"
  core.String? name;

  $Location01({
    this.displayName,
    this.labels,
    this.locationId,
    this.metadata,
    this.name,
  });

  $Location01.fromJson(core.Map json_)
    : this(
        displayName: json_['displayName'] as core.String?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        locationId: json_['locationId'] as core.String?,
        metadata: json_.containsKey('metadata')
            ? json_['metadata'] as core.Map<core.String, core.dynamic>
            : null,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final displayName = this.displayName;
    final labels = this.labels;
    final locationId = this.locationId;
    final metadata = this.metadata;
    final name = this.name;
    return {
      'displayName': ?displayName,
      'labels': ?labels,
      'locationId': ?locationId,
      'metadata': ?metadata,
      'name': ?name,
    };
  }
}

/// Used by:
///
/// - networksecurity:v1 : InterceptLocation
/// - networksecurity:v1 : MirroringLocation
class $Location02 {
  /// The cloud location, e.g. "us-central1-a" or "asia-south1".
  ///
  /// Output only.
  core.String? location;

  /// The current state of the association in this location.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : State not set (this is not a valid state).
  /// - "ACTIVE" : The resource is ready and in sync in the location.
  /// - "OUT_OF_SYNC" : The resource is out of sync in the location. In most
  /// cases, this is a result of a transient issue within the system (e.g. an
  /// inaccessible location) and the system is expected to recover
  /// automatically.
  core.String? state;

  $Location02({this.location, this.state});

  $Location02.fromJson(core.Map json_)
    : this(
        location: json_['location'] as core.String?,
        state: json_['state'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final location = this.location;
    final state = this.state;
    return {'location': ?location, 'state': ?state};
  }
}

/// Used by:
///
/// - datamigration:v1 : LogFileDirectories
/// - datastream:v1 : LogFileDirectories
class $LogFileDirectories {
  /// Oracle directory for archived logs.
  ///
  /// Required.
  core.String? archivedLogDirectory;

  /// Oracle directory for online logs.
  ///
  /// Required.
  core.String? onlineLogDirectory;

  $LogFileDirectories({this.archivedLogDirectory, this.onlineLogDirectory});

  $LogFileDirectories.fromJson(core.Map json_)
    : this(
        archivedLogDirectory: json_['archivedLogDirectory'] as core.String?,
        onlineLogDirectory: json_['onlineLogDirectory'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final archivedLogDirectory = this.archivedLogDirectory;
    final onlineLogDirectory = this.onlineLogDirectory;
    return {
      'archivedLogDirectory': ?archivedLogDirectory,
      'onlineLogDirectory': ?onlineLogDirectory,
    };
  }
}

/// Used by:
///
/// - gkeonprem:v1 : BareMetalAdminMaintenanceConfig
/// - gkeonprem:v1 : BareMetalMaintenanceConfig
class $MaintenanceConfig {
  /// All IPv4 address from these ranges will be placed into maintenance mode.
  ///
  /// Nodes in maintenance mode will be cordoned and drained. When both of these
  /// are true, the "baremetal.cluster.gke.io/maintenance" annotation will be
  /// set on the node resource.
  ///
  /// Required.
  core.List<core.String>? maintenanceAddressCidrBlocks;

  $MaintenanceConfig({this.maintenanceAddressCidrBlocks});

  $MaintenanceConfig.fromJson(core.Map json_)
    : this(
        maintenanceAddressCidrBlocks:
            (json_['maintenanceAddressCidrBlocks'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final maintenanceAddressCidrBlocks = this.maintenanceAddressCidrBlocks;
    return {'maintenanceAddressCidrBlocks': ?maintenanceAddressCidrBlocks};
  }
}

/// Used by:
///
/// - containeranalysis:v1 : MaliciousContentStaticResult
/// - ondemandscanning:v1 : MaliciousContentStaticResult
class $MaliciousContentStaticResult {
  /// Tracks max severity found.
  /// Possible string values are:
  /// - "SEVERITY_UNSPECIFIED" : Unspecified severity.
  /// - "CRITICAL" : Critical severity.
  /// - "HIGH" : High severity.
  core.String? maxSeverity;

  /// Status of the scan.
  /// Possible string values are:
  /// - "SCAN_STATUS_UNSPECIFIED" : Unspecified scan status.
  /// - "PERFORMED" : Scan was performed.
  /// - "NOT_PERFORMED" : Scan was not performed.
  core.String? scanStatus;

  $MaliciousContentStaticResult({this.maxSeverity, this.scanStatus});

  $MaliciousContentStaticResult.fromJson(core.Map json_)
    : this(
        maxSeverity: json_['maxSeverity'] as core.String?,
        scanStatus: json_['scanStatus'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final maxSeverity = this.maxSeverity;
    final scanStatus = this.scanStatus;
    return {'maxSeverity': ?maxSeverity, 'scanStatus': ?scanStatus};
  }
}

/// Used by:
///
/// - gkeonprem:v1 : BareMetalAdminManualLbConfig
/// - gkeonprem:v1 : BareMetalManualLbConfig
class $ManualLbConfig {
  /// Whether manual load balancing is enabled.
  core.bool? enabled;

  $ManualLbConfig({this.enabled});

  $ManualLbConfig.fromJson(core.Map json_)
    : this(enabled: json_['enabled'] as core.bool?);

  core.Map<core.String, core.dynamic> toJson() {
    final enabled = this.enabled;
    return {'enabled': ?enabled};
  }
}

/// Used by:
///
/// - containeranalysis:v1 : GrafeasV1SlsaProvenanceZeroTwoSlsaMaterial
/// - containeranalysis:v1 : Material
/// - ondemandscanning:v1 : GrafeasV1SlsaProvenanceZeroTwoSlsaMaterial
/// - ondemandscanning:v1 : Material
class $Material {
  core.Map<core.String, core.String>? digest;
  core.String? uri;

  $Material({this.digest, this.uri});

  $Material.fromJson(core.Map json_)
    : this(
        digest: (json_['digest'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        uri: json_['uri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final digest = this.digest;
    final uri = this.uri;
    return {'digest': ?digest, 'uri': ?uri};
  }
}

/// Used by:
///
/// - chat:v1 : Media
/// - cloudsearch:v1 : Media
/// - displayvideo:v5 : GoogleBytestreamMedia
class $Media {
  /// Name of the media resource.
  core.String? resourceName;

  $Media({this.resourceName});

  $Media.fromJson(core.Map json_)
    : this(resourceName: json_['resourceName'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final resourceName = this.resourceName;
    return {'resourceName': ?resourceName};
  }
}

/// Used by:
///
/// - dialogflow:v2 : GoogleCloudDialogflowV2IntentMessageText
/// - dialogflow:v2 : GoogleCloudDialogflowV2ResponseMessageText
class $MessageText {
  core.List<core.String>? text;

  $MessageText({this.text});

  $MessageText.fromJson(core.Map json_)
    : this(
        text: (json_['text'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final text = this.text;
    return {'text': ?text};
  }
}

/// Used by:
///
/// - accesscontextmanager:v1 : MethodSelector
/// - cloudasset:v1 : GoogleIdentityAccesscontextmanagerV1MethodSelector
class $MethodSelector {
  /// A valid method name for the corresponding `service_name` in ApiOperation.
  ///
  /// If `*` is used as the value for the `method`, then ALL methods and
  /// permissions are allowed.
  core.String? method;

  /// A valid Cloud IAM permission for the corresponding `service_name` in
  /// ApiOperation.
  core.String? permission;

  $MethodSelector({this.method, this.permission});

  $MethodSelector.fromJson(core.Map json_)
    : this(
        method: json_['method'] as core.String?,
        permission: json_['permission'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final method = this.method;
    final permission = this.permission;
    return {'method': ?method, 'permission': ?permission};
  }
}

/// Used by:
///
/// - logging:v2 : MetricDescriptorMetadata
/// - monitoring:v3 : MetricDescriptorMetadata
class $MetricDescriptorMetadata {
  /// The delay of data points caused by ingestion.
  ///
  /// Data points older than this age are guaranteed to be ingested and
  /// available to be read, excluding data loss due to errors.
  core.String? ingestDelay;

  /// Must use the MetricDescriptor.launch_stage instead.
  ///
  /// Deprecated.
  /// Possible string values are:
  /// - "LAUNCH_STAGE_UNSPECIFIED" : Do not use this default value.
  /// - "UNIMPLEMENTED" : The feature is not yet implemented. Users can not use
  /// it.
  /// - "PRELAUNCH" : Prelaunch features are hidden from users and are only
  /// visible internally.
  /// - "EARLY_ACCESS" : Early Access features are limited to a closed group of
  /// testers. To use these features, you must sign up in advance and sign a
  /// Trusted Tester agreement (which includes confidentiality provisions).
  /// These features may be unstable, changed in backward-incompatible ways, and
  /// are not guaranteed to be released.
  /// - "ALPHA" : Alpha is a limited availability test for releases before they
  /// are cleared for widespread use. By Alpha, all significant design issues
  /// are resolved and we are in the process of verifying functionality. Alpha
  /// customers need to apply for access, agree to applicable terms, and have
  /// their projects allowlisted. Alpha releases don't have to be feature
  /// complete, no SLAs are provided, and there are no technical support
  /// obligations, but they will be far enough along that customers can actually
  /// use them in test environments or for limited-use tests -- just like they
  /// would in normal production cases.
  /// - "BETA" : Beta is the point at which we are ready to open a release for
  /// any customer to use. There are no SLA or technical support obligations in
  /// a Beta release. Products will be complete from a feature perspective, but
  /// may have some open outstanding issues. Beta releases are suitable for
  /// limited production use cases.
  /// - "GA" : GA features are open to all developers and are considered stable
  /// and fully qualified for production use.
  /// - "DEPRECATED" : Deprecated features are scheduled to be shut down and
  /// removed. For more information, see the "Deprecation Policy" section of our
  /// Terms of Service (https://cloud.google.com/terms/) and the Google Cloud
  /// Platform Subject to the Deprecation Policy
  /// (https://cloud.google.com/terms/deprecation) documentation.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? launchStage;

  /// The sampling period of metric data points.
  ///
  /// For metrics which are written periodically, consecutive data points are
  /// stored at this time interval, excluding data loss due to errors. Metrics
  /// with a higher granularity have a smaller sampling period.
  core.String? samplePeriod;

  /// The scope of the timeseries data of the metric.
  core.List<core.String>? timeSeriesResourceHierarchyLevel;

  $MetricDescriptorMetadata({
    this.ingestDelay,
    this.launchStage,
    this.samplePeriod,
    this.timeSeriesResourceHierarchyLevel,
  });

  $MetricDescriptorMetadata.fromJson(core.Map json_)
    : this(
        ingestDelay: json_['ingestDelay'] as core.String?,
        launchStage: json_['launchStage'] as core.String?,
        samplePeriod: json_['samplePeriod'] as core.String?,
        timeSeriesResourceHierarchyLevel:
            (json_['timeSeriesResourceHierarchyLevel'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final ingestDelay = this.ingestDelay;
    final launchStage = this.launchStage;
    final samplePeriod = this.samplePeriod;
    final timeSeriesResourceHierarchyLevel =
        this.timeSeriesResourceHierarchyLevel;
    return {
      'ingestDelay': ?ingestDelay,
      'launchStage': ?launchStage,
      'samplePeriod': ?samplePeriod,
      'timeSeriesResourceHierarchyLevel': ?timeSeriesResourceHierarchyLevel,
    };
  }
}

/// Used by:
///
/// - servicemanagement:v1 : MetricRule
/// - serviceusage:v1 : MetricRule
class $MetricRule {
  /// Metrics to update when the selected methods are called, and the associated
  /// cost applied to each metric, iff the source of the call is an agent.
  ///
  /// The key of the map is the metric name, and the values are the amount
  /// increased for the metric against which the quota limits are defined. The
  /// value must not be negative.
  ///
  /// Optional.
  core.Map<core.String, core.String>? agenticMetricCosts;

  /// Metrics to update when the selected methods are called, and the associated
  /// cost applied to each metric.
  ///
  /// The key of the map is the metric name, and the values are the amount
  /// increased for the metric against which the quota limits are defined. The
  /// value must not be negative.
  core.Map<core.String, core.String>? metricCosts;

  /// Metrics to update when the selected methods are called, and the associated
  /// cost applied to each metric, iff the source of the call is not an agent.
  ///
  /// The key of the map is the metric name, and the values are the amount
  /// increased for the metric against which the quota limits are defined. The
  /// value must not be negative.
  ///
  /// Optional.
  core.Map<core.String, core.String>? nonagenticMetricCosts;

  /// Selects the methods to which this rule applies.
  ///
  /// Refer to selector for syntax details.
  core.String? selector;

  $MetricRule({
    this.agenticMetricCosts,
    this.metricCosts,
    this.nonagenticMetricCosts,
    this.selector,
  });

  $MetricRule.fromJson(core.Map json_)
    : this(
        agenticMetricCosts:
            (json_['agenticMetricCosts']
                    as core.Map<core.String, core.dynamic>?)
                ?.map((key, value) => core.MapEntry(key, value as core.String)),
        metricCosts:
            (json_['metricCosts'] as core.Map<core.String, core.dynamic>?)?.map(
              (key, value) => core.MapEntry(key, value as core.String),
            ),
        nonagenticMetricCosts:
            (json_['nonagenticMetricCosts']
                    as core.Map<core.String, core.dynamic>?)
                ?.map((key, value) => core.MapEntry(key, value as core.String)),
        selector: json_['selector'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final agenticMetricCosts = this.agenticMetricCosts;
    final metricCosts = this.metricCosts;
    final nonagenticMetricCosts = this.nonagenticMetricCosts;
    final selector = this.selector;
    return {
      'agenticMetricCosts': ?agenticMetricCosts,
      'metricCosts': ?metricCosts,
      'nonagenticMetricCosts': ?nonagenticMetricCosts,
      'selector': ?selector,
    };
  }
}

/// Used by:
///
/// - servicemanagement:v1 : Mixin
/// - serviceusage:v1 : Mixin
class $Mixin {
  /// The fully qualified name of the interface which is included.
  core.String? name;

  /// If non-empty specifies a path under which inherited HTTP paths are rooted.
  core.String? root;

  $Mixin({this.name, this.root});

  $Mixin.fromJson(core.Map json_)
    : this(
        name: json_['name'] as core.String?,
        root: json_['root'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final name = this.name;
    final root = this.root;
    return {'name': ?name, 'root': ?root};
  }
}

/// Used by:
///
/// - datamanager:v1 : IngestMobileDataStatus
/// - datamanager:v1 : RemoveMobileDataStatus
class $MobileDataStatus {
  core.String? mobileIdCount;
  core.String? recordCount;

  $MobileDataStatus({this.mobileIdCount, this.recordCount});

  $MobileDataStatus.fromJson(core.Map json_)
    : this(
        mobileIdCount: json_['mobileIdCount'] as core.String?,
        recordCount: json_['recordCount'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final mobileIdCount = this.mobileIdCount;
    final recordCount = this.recordCount;
    return {'mobileIdCount': ?mobileIdCount, 'recordCount': ?recordCount};
  }
}

/// Used by:
///
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3DataStoreConnectionSignalsAnswerGenerationModelCallSignals
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3DataStoreConnectionSignalsRewriterModelCallSignals
class $ModelCallSignals {
  core.String? model;
  core.String? modelOutput;
  core.String? renderedPrompt;

  $ModelCallSignals({this.model, this.modelOutput, this.renderedPrompt});

  $ModelCallSignals.fromJson(core.Map json_)
    : this(
        model: json_['model'] as core.String?,
        modelOutput: json_['modelOutput'] as core.String?,
        renderedPrompt: json_['renderedPrompt'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final model = this.model;
    final modelOutput = this.modelOutput;
    final renderedPrompt = this.renderedPrompt;
    return {
      'model': ?model,
      'modelOutput': ?modelOutput,
      'renderedPrompt': ?renderedPrompt,
    };
  }
}

/// Used by:
///
/// - dialogflow:v2 : GoogleCloudDialogflowV2ArticleSuggestionModelMetadata
/// - dialogflow:v2 : GoogleCloudDialogflowV2SmartReplyModelMetadata
class $ModelMetadata {
  ///
  /// Possible string values are:
  /// - "MODEL_TYPE_UNSPECIFIED"
  /// - "SMART_REPLY_DUAL_ENCODER_MODEL"
  /// - "SMART_REPLY_BERT_MODEL"
  core.String? trainingModelType;

  $ModelMetadata({this.trainingModelType});

  $ModelMetadata.fromJson(core.Map json_)
    : this(trainingModelType: json_['trainingModelType'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final trainingModelType = this.trainingModelType;
    return {'trainingModelType': ?trainingModelType};
  }
}

/// Used by:
///
/// - aiplatform:v1 : GoogleTypeMoney
/// - androidpublisher:v3 : Money
/// - apigee:v1 : GoogleTypeMoney
/// - authorizedbuyersmarketplace:v1 : Money
/// - billingbudgets:v1 : GoogleTypeMoney
/// - cloudbilling:v1 : Money
/// - cloudchannel:v1 : GoogleTypeMoney
/// - contactcenterinsights:v1 : GoogleTypeMoney
/// - curationpartners:v1 : Money
/// - deepreview:v1 : Money
/// - documentai:v1 : GoogleTypeMoney
/// - jobs:v4 : Money
/// - migrationcenter:v1 : Money
/// - mybusinessbusinessinformation:v1 : Money
/// - places:v1 : GoogleTypeMoney
/// - recommender:v1 : GoogleTypeMoney
/// - searchads360:v23 : GoogleType__Money
/// - solar:v1 : Money
class $Money {
  /// The three-letter currency code defined in ISO 4217.
  core.String? currencyCode;

  /// Number of nano (10^-9) units of the amount.
  ///
  /// The value must be between -999,999,999 and +999,999,999 inclusive. If
  /// `units` is positive, `nanos` must be positive or zero. If `units` is zero,
  /// `nanos` can be positive, zero, or negative. If `units` is negative,
  /// `nanos` must be negative or zero. For example $-1.75 is represented as
  /// `units`=-1 and `nanos`=-750,000,000.
  core.int? nanos;

  /// The whole units of the amount.
  ///
  /// For example if `currencyCode` is `"USD"`, then 1 unit is one US dollar.
  core.String? units;

  $Money({this.currencyCode, this.nanos, this.units});

  $Money.fromJson(core.Map json_)
    : this(
        currencyCode: json_['currencyCode'] as core.String?,
        nanos: json_['nanos'] as core.int?,
        units: json_['units'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final currencyCode = this.currencyCode;
    final nanos = this.nanos;
    final units = this.units;
    return {'currencyCode': ?currencyCode, 'nanos': ?nanos, 'units': ?units};
  }
}

/// Used by:
///
/// - logging:v2 : MonitoredResourceMetadata
/// - monitoring:v3 : MonitoredResourceMetadata
class $MonitoredResourceMetadata {
  /// Values for predefined system metadata labels.
  ///
  /// System labels are a kind of metadata extracted by Google, including
  /// "machine_image", "vpc", "subnet_id", "security_group", "name", etc. System
  /// label values can be only strings, Boolean values, or a list of strings.
  /// For example: { "name": "my-test-instance", "security_group": \["a", "b",
  /// "c"\], "spot_instance": false }
  ///
  /// Output only.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? systemLabels;

  /// A map of user-defined metadata labels.
  ///
  /// Output only.
  core.Map<core.String, core.String>? userLabels;

  $MonitoredResourceMetadata({this.systemLabels, this.userLabels});

  $MonitoredResourceMetadata.fromJson(core.Map json_)
    : this(
        systemLabels: json_.containsKey('systemLabels')
            ? json_['systemLabels'] as core.Map<core.String, core.dynamic>
            : null,
        userLabels:
            (json_['userLabels'] as core.Map<core.String, core.dynamic>?)?.map(
              (key, value) => core.MapEntry(key, value as core.String),
            ),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final systemLabels = this.systemLabels;
    final userLabels = this.userLabels;
    return {'systemLabels': ?systemLabels, 'userLabels': ?userLabels};
  }
}

/// Used by:
///
/// - servicemanagement:v1 : MonitoringDestination
/// - serviceusage:v1 : MonitoringDestination
class $MonitoringDestination {
  /// Types of the metrics to report to this monitoring destination.
  ///
  /// Each type must be defined in Service.metrics section.
  core.List<core.String>? metrics;

  /// The monitored resource type.
  ///
  /// The type must be defined in Service.monitored_resources section.
  core.String? monitoredResource;

  $MonitoringDestination({this.metrics, this.monitoredResource});

  $MonitoringDestination.fromJson(core.Map json_)
    : this(
        metrics: (json_['metrics'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        monitoredResource: json_['monitoredResource'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final metrics = this.metrics;
    final monitoredResource = this.monitoredResource;
    return {'metrics': ?metrics, 'monitoredResource': ?monitoredResource};
  }
}

/// Used by:
///
/// - gkeonprem:v1 : BareMetalAdminMultipleNetworkInterfacesConfig
/// - gkeonprem:v1 : BareMetalMultipleNetworkInterfacesConfig
class $MultipleNetworkInterfacesConfig {
  /// Whether to enable multiple network interfaces for your pods.
  ///
  /// When set network_config.advanced_networking is automatically set to true.
  core.bool? enabled;

  $MultipleNetworkInterfacesConfig({this.enabled});

  $MultipleNetworkInterfacesConfig.fromJson(core.Map json_)
    : this(enabled: json_['enabled'] as core.bool?);

  core.Map<core.String, core.dynamic> toJson() {
    final enabled = this.enabled;
    return {'enabled': ?enabled};
  }
}

/// Used by:
///
/// - analyticshub:v1 : NoWrapper
/// - pubsub:v1 : NoWrapper
class $NoWrapper {
  /// When true, writes the Pub/Sub message metadata to `x-goog-pubsub-:`
  /// headers of the HTTP request.
  ///
  /// Writes the Pub/Sub message attributes to `:` headers of the HTTP request.
  ///
  /// Optional.
  core.bool? writeMetadata;

  $NoWrapper({this.writeMetadata});

  $NoWrapper.fromJson(core.Map json_)
    : this(writeMetadata: json_['writeMetadata'] as core.bool?);

  core.Map<core.String, core.dynamic> toJson() {
    final writeMetadata = this.writeMetadata;
    return {'writeMetadata': ?writeMetadata};
  }
}

/// Used by:
///
/// - containeranalysis:v1 : NonCompliantFile
/// - ondemandscanning:v1 : NonCompliantFile
class $NonCompliantFile {
  /// Command to display the non-compliant files.
  core.String? displayCommand;

  /// Empty if `display_command` is set.
  core.String? path;

  /// Explains why a file is non compliant for a CIS check.
  core.String? reason;

  $NonCompliantFile({this.displayCommand, this.path, this.reason});

  $NonCompliantFile.fromJson(core.Map json_)
    : this(
        displayCommand: json_['displayCommand'] as core.String?,
        path: json_['path'] as core.String?,
        reason: json_['reason'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final displayCommand = this.displayCommand;
    final path = this.path;
    final reason = this.reason;
    return {
      'displayCommand': ?displayCommand,
      'path': ?path,
      'reason': ?reason,
    };
  }
}

/// Used by:
///
/// - ces:v1 : LfA2aV1PasswordOAuthFlow
/// - cloudbilling:v1 : ClientCredentialsOAuthFlow
/// - cloudbilling:v1 : PasswordOAuthFlow
class $OAuthFlow {
  /// The URL to be used for obtaining refresh tokens.
  ///
  /// This MUST be in the form of a URL. The OAuth2 standard requires the use of
  /// TLS.
  core.String? refreshUrl;

  /// The available scopes for the OAuth2 security scheme.
  ///
  /// A map between the scope name and a short description for it. The map MAY
  /// be empty.
  core.Map<core.String, core.String>? scopes;

  /// The token URL to be used for this flow.
  ///
  /// This MUST be in the form of a URL. The OAuth2 standard requires the use of
  /// TLS.
  core.String? tokenUrl;

  $OAuthFlow({this.refreshUrl, this.scopes, this.tokenUrl});

  $OAuthFlow.fromJson(core.Map json_)
    : this(
        refreshUrl: json_['refreshUrl'] as core.String?,
        scopes: (json_['scopes'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        tokenUrl: json_['tokenUrl'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final refreshUrl = this.refreshUrl;
    final scopes = this.scopes;
    final tokenUrl = this.tokenUrl;
    return {
      'refreshUrl': ?refreshUrl,
      'scopes': ?scopes,
      'tokenUrl': ?tokenUrl,
    };
  }
}

/// Used by:
///
/// - servicemanagement:v1 : OAuthRequirements
/// - serviceusage:v1 : OAuthRequirements
class $OAuthRequirements {
  /// The list of publicly documented OAuth scopes that are allowed access.
  ///
  /// An OAuth token containing any of these scopes will be accepted. Example:
  /// canonical_scopes: https://www.googleapis.com/auth/calendar,
  /// https://www.googleapis.com/auth/calendar.read
  core.String? canonicalScopes;

  $OAuthRequirements({this.canonicalScopes});

  $OAuthRequirements.fromJson(core.Map json_)
    : this(canonicalScopes: json_['canonicalScopes'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final canonicalScopes = this.canonicalScopes;
    return {'canonicalScopes': ?canonicalScopes};
  }
}

/// Used by:
///
/// - firebaseappdistribution:v1 : GdataObjectId
/// - walletobjects:v1 : ObjectId
class $ObjectId {
  /// The name of the bucket to which this object belongs.
  core.String? bucketName;

  /// Generation of the object.
  ///
  /// Generations are monotonically increasing across writes, allowing them to
  /// be be compared to determine which generation is newer. If this is omitted
  /// in a request, then you are requesting the live object. See
  /// http://go/bigstore-versions
  core.String? generation;

  /// The name of the object.
  core.String? objectName;

  $ObjectId({this.bucketName, this.generation, this.objectName});

  $ObjectId.fromJson(core.Map json_)
    : this(
        bucketName: json_['bucketName'] as core.String?,
        generation: json_['generation'] as core.String?,
        objectName: json_['objectName'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final bucketName = this.bucketName;
    final generation = this.generation;
    final objectName = this.objectName;
    return {
      'bucketName': ?bucketName,
      'generation': ?generation,
      'objectName': ?objectName,
    };
  }
}

/// Used by:
///
/// - datastream:v1 : OracleObjectIdentifier
/// - datastream:v1 : PostgresqlObjectIdentifier
/// - datastream:v1 : SqlServerObjectIdentifier
class $ObjectIdentifier {
  /// The schema name.
  ///
  /// Required.
  core.String? schema;

  /// The table name.
  ///
  /// Required.
  core.String? table;

  $ObjectIdentifier({this.schema, this.table});

  $ObjectIdentifier.fromJson(core.Map json_)
    : this(
        schema: json_['schema'] as core.String?,
        table: json_['table'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final schema = this.schema;
    final table = this.table;
    return {'schema': ?schema, 'table': ?table};
  }
}

/// Used by:
///
/// - analyticshub:v1 : OidcToken
/// - pubsub:v1 : OidcToken
class $OidcToken {
  /// Audience to be used when generating OIDC token.
  ///
  /// The audience claim identifies the recipients that the JWT is intended for.
  /// The audience value is a single case-sensitive string. Having multiple
  /// values (array) for the audience field is not supported. More info about
  /// the OIDC JWT token audience here:
  /// https://tools.ietf.org/html/rfc7519#section-4.1.3 Note: if not specified,
  /// the Push endpoint URL will be used.
  ///
  /// Optional.
  core.String? audience;

  /// [Service account email](https://cloud.google.com/iam/docs/service-accounts)
  /// used for generating the OIDC token.
  ///
  /// For more information on setting up authentication, see
  /// [Push subscriptions](https://cloud.google.com/pubsub/docs/push).
  ///
  /// Optional.
  core.String? serviceAccountEmail;

  $OidcToken({this.audience, this.serviceAccountEmail});

  $OidcToken.fromJson(core.Map json_)
    : this(
        audience: json_['audience'] as core.String?,
        serviceAccountEmail: json_['serviceAccountEmail'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final audience = this.audience;
    final serviceAccountEmail = this.serviceAccountEmail;
    return {'audience': ?audience, 'serviceAccountEmail': ?serviceAccountEmail};
  }
}

/// Used by:
///
/// - servicemanagement:v1 : Option
/// - serviceusage:v1 : Option
class $Option {
  /// The option's name.
  ///
  /// For protobuf built-in options (options defined in descriptor.proto), this
  /// is the short name. For example, `"map_entry"`. For custom options, it
  /// should be the fully-qualified name. For example, `"google.api.http"`.
  core.String? name;

  /// The option's value packed in an Any message.
  ///
  /// If the value is a primitive, the corresponding wrapper type defined in
  /// google/protobuf/wrappers.proto should be used. If the value is an enum, it
  /// should be stored as an int32 value using the google.protobuf.Int32Value
  /// type.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? value;

  $Option({this.name, this.value});

  $Option.fromJson(core.Map json_)
    : this(
        name: json_['name'] as core.String?,
        value: json_.containsKey('value')
            ? json_['value'] as core.Map<core.String, core.dynamic>
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final name = this.name;
    final value = this.value;
    return {'name': ?name, 'value': ?value};
  }
}

/// Used by:
///
/// - accesscontextmanager:v1 : OsConstraint
/// - cloudasset:v1 : GoogleIdentityAccesscontextmanagerV1OsConstraint
class $OsConstraint {
  /// The minimum allowed OS version.
  ///
  /// If not set, any version of this OS satisfies the constraint. Format:
  /// `"major.minor.patch"`. Examples: `"10.5.301"`, `"9.2.1"`.
  core.String? minimumVersion;

  /// The allowed OS type.
  ///
  /// Required.
  /// Possible string values are:
  /// - "OS_UNSPECIFIED" : The operating system of the device is not specified
  /// or not known.
  /// - "DESKTOP_MAC" : A desktop Mac operating system.
  /// - "DESKTOP_WINDOWS" : A desktop Windows operating system.
  /// - "DESKTOP_LINUX" : A desktop Linux operating system.
  /// - "DESKTOP_CHROME_OS" : A desktop ChromeOS operating system.
  /// - "GOOGLEBOOK_OS" : A Googlebook operating system.
  /// - "ANDROID" : An Android operating system.
  /// - "IOS" : An iOS operating system.
  core.String? osType;

  /// Only allows requests from devices with a verified Chrome OS.
  ///
  /// Verification includes requirements that the device is enterprise-managed,
  /// conforms to domain policies, and the caller has permission to call the API
  /// targeted by the request.
  core.bool? requireVerifiedChromeOs;

  $OsConstraint({
    this.minimumVersion,
    this.osType,
    this.requireVerifiedChromeOs,
  });

  $OsConstraint.fromJson(core.Map json_)
    : this(
        minimumVersion: json_['minimumVersion'] as core.String?,
        osType: json_['osType'] as core.String?,
        requireVerifiedChromeOs: json_['requireVerifiedChromeOs'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final minimumVersion = this.minimumVersion;
    final osType = this.osType;
    final requireVerifiedChromeOs = this.requireVerifiedChromeOs;
    return {
      'minimumVersion': ?minimumVersion,
      'osType': ?osType,
      'requireVerifiedChromeOs': ?requireVerifiedChromeOs,
    };
  }
}

/// Used by:
///
/// - dataproc:v1 : OutputMetrics
/// - dataproc:v1 : StageOutputMetrics
class $OutputMetrics {
  core.String? bytesWritten;
  core.String? recordsWritten;

  $OutputMetrics({this.bytesWritten, this.recordsWritten});

  $OutputMetrics.fromJson(core.Map json_)
    : this(
        bytesWritten: json_['bytesWritten'] as core.String?,
        recordsWritten: json_['recordsWritten'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final bytesWritten = this.bytesWritten;
    final recordsWritten = this.recordsWritten;
    return {'bytesWritten': ?bytesWritten, 'recordsWritten': ?recordsWritten};
  }
}

/// Used by:
///
/// - androidenterprise:v1 : PageInfo
/// - androidpublisher:v3 : PageInfo
class $PageInfo {
  /// Maximum number of results returned in one page.
  ///
  /// ! The number of results included in the API response.
  core.int? resultPerPage;

  /// Index of the first result returned in the current page.
  core.int? startIndex;

  /// Total number of results available on the backend ! The total number of
  /// results in the result set.
  core.int? totalResults;

  $PageInfo({this.resultPerPage, this.startIndex, this.totalResults});

  $PageInfo.fromJson(core.Map json_)
    : this(
        resultPerPage: json_['resultPerPage'] as core.int?,
        startIndex: json_['startIndex'] as core.int?,
        totalResults: json_['totalResults'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final resultPerPage = this.resultPerPage;
    final startIndex = this.startIndex;
    final totalResults = this.totalResults;
    return {
      'resultPerPage': ?resultPerPage,
      'startIndex': ?startIndex,
      'totalResults': ?totalResults,
    };
  }
}

/// Used by:
///
/// - datamanager:v1 : IngestPairDataStatus
/// - datamanager:v1 : RemovePairDataStatus
class $PairDataStatus {
  core.String? pairIdCount;
  core.String? recordCount;

  $PairDataStatus({this.pairIdCount, this.recordCount});

  $PairDataStatus.fromJson(core.Map json_)
    : this(
        pairIdCount: json_['pairIdCount'] as core.String?,
        recordCount: json_['recordCount'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final pairIdCount = this.pairIdCount;
    final recordCount = this.recordCount;
    return {'pairIdCount': ?pairIdCount, 'recordCount': ?recordCount};
  }
}

/// Used by:
///
/// - parallelstore:v1 : DestinationParallelstore
/// - parallelstore:v1 : SourceParallelstore
class $Parallelstore {
  /// Root directory path to the Paralellstore filesystem, starting with `/`.
  ///
  /// Defaults to `/` if unset.
  ///
  /// Optional.
  core.String? path;

  $Parallelstore({this.path});

  $Parallelstore.fromJson(core.Map json_)
    : this(path: json_['path'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final path = this.path;
    return {'path': ?path};
  }
}

/// Used by:
///
/// - datamanager:v1 : EventParameter
/// - datamanager:v1 : ItemParameter
class $Parameter {
  core.String? parameterName;
  core.String? value;

  $Parameter({this.parameterName, this.value});

  $Parameter.fromJson(core.Map json_)
    : this(
        parameterName: json_['parameterName'] as core.String?,
        value: json_['value'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final parameterName = this.parameterName;
    final value = this.value;
    return {'parameterName': ?parameterName, 'value': ?value};
  }
}

/// Used by:
///
/// - compute:v1 : BackendBucketParams
/// - compute:v1 : BackendServiceParams
/// - compute:v1 : FirewallParams
/// - compute:v1 : NetworkParams
/// - compute:v1 : RouteParams
/// - compute:v1 : SubnetworkParams
class $Params00 {
  /// Tag keys/values directly bound to this resource.
  /// Tag keys and values have the same definition as resource
  /// manager tags.
  ///
  /// The field is allowed for INSERT
  /// only. The keys/values to set on the resource should be specified in
  /// either ID { : } or Namespaced format
  /// { : }.
  /// For example the following are valid inputs:
  /// * {"tagKeys/333" : "tagValues/444", "tagKeys/123" : "tagValues/456"}
  /// * {"123/environment" : "production", "345/abc" : "xyz"}
  /// Note:
  /// * Invalid combinations of ID & namespaced format is not supported. For
  ///   instance: {"123/environment" : "tagValues/444"} is invalid.
  core.Map<core.String, core.String>? resourceManagerTags;

  $Params00({this.resourceManagerTags});

  $Params00.fromJson(core.Map json_)
    : this(
        resourceManagerTags:
            (json_['resourceManagerTags']
                    as core.Map<core.String, core.dynamic>?)
                ?.map((key, value) => core.MapEntry(key, value as core.String)),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final resourceManagerTags = this.resourceManagerTags;
    return {'resourceManagerTags': ?resourceManagerTags};
  }
}

/// Used by:
///
/// - compute:v1 : ExternalVpnGatewayParams
/// - compute:v1 : InterconnectAttachmentParams
/// - compute:v1 : InterconnectParams
/// - compute:v1 : TargetVpnGatewayParams
/// - compute:v1 : VpnGatewayParams
/// - compute:v1 : VpnTunnelParams
class $Params01 {
  /// Tag keys/values directly bound to this resource.
  /// Tag keys and values have the same definition as resource
  /// manager tags.
  ///
  /// The field is allowed for INSERT
  /// only. The keys/values to set on the resource should be specified in
  /// either ID { : } or Namespaced format
  /// { : }.
  /// For example the following are valid inputs:
  /// * {"tagKeys/333" : "tagValues/444", "tagKeys/123" : "tagValues/456"}
  /// * {"123/environment" : "production", "345/abc" : "xyz"}
  /// Note:
  /// * Invalid combinations of ID & namespaced format is not supported. For
  ///   instance: {"123/environment" : "tagValues/444"} is invalid.
  /// * Inconsistent format is not supported. For instance:
  ///   {"tagKeys/333" : "tagValues/444", "123/env" : "prod"} is invalid.
  core.Map<core.String, core.String>? resourceManagerTags;

  $Params01({this.resourceManagerTags});

  $Params01.fromJson(core.Map json_)
    : this(
        resourceManagerTags:
            (json_['resourceManagerTags']
                    as core.Map<core.String, core.dynamic>?)
                ?.map((key, value) => core.MapEntry(key, value as core.String)),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final resourceManagerTags = this.resourceManagerTags;
    return {'resourceManagerTags': ?resourceManagerTags};
  }
}

/// Used by:
///
/// - datamanager:v1 : IngestPartnerProvidedIdDataStatus
/// - datamanager:v1 : RemovePartnerProvidedIdDataStatus
class $PartnerProvidedIdDataStatus {
  core.String? partnerProvidedIdCount;
  core.String? recordCount;

  $PartnerProvidedIdDataStatus({this.partnerProvidedIdCount, this.recordCount});

  $PartnerProvidedIdDataStatus.fromJson(core.Map json_)
    : this(
        partnerProvidedIdCount: json_['partnerProvidedIdCount'] as core.String?,
        recordCount: json_['recordCount'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final partnerProvidedIdCount = this.partnerProvidedIdCount;
    final recordCount = this.recordCount;
    return {
      'partnerProvidedIdCount': ?partnerProvidedIdCount,
      'recordCount': ?recordCount,
    };
  }
}

/// Used by:
///
/// - compute:v1 : ReservationsBlocksPerformMaintenanceRequest
/// - compute:v1 : ReservationsPerformMaintenanceRequest
class $PerformMaintenanceRequest {
  /// Specifies if all, running or unused hosts are in scope for this request.
  /// Possible string values are:
  /// - "ALL" : Trigger maintenance for all hosts belonging to this reservation
  /// irrespective of whether VMs are running on them or not.
  /// - "MAINTENANCE_SCOPE_UNSPECIFIED" : Internal only
  /// - "RUNNING_VMS" : Trigger maintenance only on the hosts belonging to this
  /// reservation which
  /// have VMs running on them.
  /// - "UNUSED_CAPACITY" : Trigger maintenance only on the hosts belonging to
  /// this reservation which
  /// do not have any VMs running on them. This is not allowed for Standard ExR
  core.String? maintenanceScope;

  $PerformMaintenanceRequest({this.maintenanceScope});

  $PerformMaintenanceRequest.fromJson(core.Map json_)
    : this(maintenanceScope: json_['maintenanceScope'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final maintenanceScope = this.maintenanceScope;
    return {'maintenanceScope': ?maintenanceScope};
  }
}

/// Used by:
///
/// - identitytoolkit:v2 : GoogleCloudIdentitytoolkitAdminV2ClientPermissions
/// - identitytoolkit:v2 : GoogleCloudIdentitytoolkitAdminV2Permissions
class $Permissions {
  /// When true, end users cannot delete their account on the associated project
  /// through any of our API methods
  core.bool? disabledUserDeletion;

  /// When true, end users cannot sign up for a new account on the associated
  /// project through any of our API methods
  core.bool? disabledUserSignup;

  $Permissions({this.disabledUserDeletion, this.disabledUserSignup});

  $Permissions.fromJson(core.Map json_)
    : this(
        disabledUserDeletion: json_['disabledUserDeletion'] as core.bool?,
        disabledUserSignup: json_['disabledUserSignup'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final disabledUserDeletion = this.disabledUserDeletion;
    final disabledUserSignup = this.disabledUserSignup;
    return {
      'disabledUserDeletion': ?disabledUserDeletion,
      'disabledUserSignup': ?disabledUserSignup,
    };
  }
}

/// Used by:
///
/// - compute:v1 : HostPhysicalTopology
/// - compute:v1 : ReservationSlotPhysicalTopology
class $PhysicalTopology {
  /// The unique identifier of the capacity block within the cluster.
  core.String? block;

  /// The cluster name of the reservation sub-block.
  core.String? cluster;

  /// The unique identifier of the capacity host within the capacity sub-block.
  core.String? host;

  /// The unique identifier of the capacity sub-block within the capacity
  /// block.
  core.String? subBlock;

  $PhysicalTopology({this.block, this.cluster, this.host, this.subBlock});

  $PhysicalTopology.fromJson(core.Map json_)
    : this(
        block: json_['block'] as core.String?,
        cluster: json_['cluster'] as core.String?,
        host: json_['host'] as core.String?,
        subBlock: json_['subBlock'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final block = this.block;
    final cluster = this.cluster;
    final host = this.host;
    final subBlock = this.subBlock;
    return {
      'block': ?block,
      'cluster': ?cluster,
      'host': ?host,
      'subBlock': ?subBlock,
    };
  }
}

/// Used by:
///
/// - datastore:v1 : PlanSummary
/// - firestore:v1 : PlanSummary
class $PlanSummary {
  /// The indexes selected for the query.
  ///
  /// For example: \[ {"query_scope": "Collection", "properties": "(foo ASC,
  /// __name__ ASC)"}, {"query_scope": "Collection", "properties": "(bar ASC,
  /// __name__ ASC)"} \]
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Map<core.String, core.Object?>>? indexesUsed;

  $PlanSummary({this.indexesUsed});

  $PlanSummary.fromJson(core.Map json_)
    : this(
        indexesUsed: (json_['indexesUsed'] as core.List?)
            ?.map((value) => value as core.Map<core.String, core.dynamic>)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final indexesUsed = this.indexesUsed;
    return {'indexesUsed': ?indexesUsed};
  }
}

/// Used by:
///
/// - addressvalidation:v1 : GoogleMapsAddressvalidationV1PlusCode
/// - places:v1 : GoogleMapsPlacesV1PlacePlusCode
class $PlusCode {
  /// Place's compound code, such as "33GV+HQ, Ramberg, Norway", containing the
  /// suffix of the global code and replacing the prefix with a formatted name
  /// of a reference entity.
  core.String? compoundCode;

  /// Place's global (full) code, such as "9FWM33GV+HQ", representing an 1/8000
  /// by 1/8000 degree area (~14 by 14 meters).
  core.String? globalCode;

  $PlusCode({this.compoundCode, this.globalCode});

  $PlusCode.fromJson(core.Map json_)
    : this(
        compoundCode: json_['compoundCode'] as core.String?,
        globalCode: json_['globalCode'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final compoundCode = this.compoundCode;
    final globalCode = this.globalCode;
    return {'compoundCode': ?compoundCode, 'globalCode': ?globalCode};
  }
}

/// Used by:
///
/// - gkeonprem:v1 : BareMetalAdminPortConfig
/// - gkeonprem:v1 : BareMetalPortConfig
class $PortConfig {
  /// The port that control plane hosted load balancers will listen on.
  core.int? controlPlaneLoadBalancerPort;

  $PortConfig({this.controlPlaneLoadBalancerPort});

  $PortConfig.fromJson(core.Map json_)
    : this(
        controlPlaneLoadBalancerPort:
            json_['controlPlaneLoadBalancerPort'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final controlPlaneLoadBalancerPort = this.controlPlaneLoadBalancerPort;
    return {'controlPlaneLoadBalancerPort': ?controlPlaneLoadBalancerPort};
  }
}

/// Used by:
///
/// - addressvalidation:v1 : GoogleTypePostalAddress
/// - cloudchannel:v1 : GoogleTypePostalAddress
/// - documentai:v1 : GoogleTypePostalAddress
/// - jobs:v4 : PostalAddress
/// - merchantapi:accounts_v1 : PostalAddress
/// - mybusinessaccountmanagement:v1 : PostalAddress
/// - mybusinessbusinessinformation:v1 : PostalAddress
/// - mybusinessverifications:v1 : PostalAddress
/// - places:v1 : GoogleTypePostalAddress
class $PostalAddress {
  /// Unstructured address lines describing the lower levels of an address.
  ///
  /// Because values in `address_lines` do not have type information and may
  /// sometimes contain multiple values in a single field (for example, "Austin,
  /// TX"), it is important that the line order is clear. The order of address
  /// lines should be "envelope order" for the country or region of the address.
  /// In places where this can vary (for example, Japan), `address_language` is
  /// used to make it explicit (for example, "ja" for large-to-small ordering
  /// and "ja-Latn" or "en" for small-to-large). In this way, the most specific
  /// line of an address can be selected based on the language. The minimum
  /// permitted structural representation of an address consists of a
  /// `region_code` with all remaining information placed in the
  /// `address_lines`. It would be possible to format such an address very
  /// approximately without geocoding, but no semantic reasoning could be made
  /// about any of the address components until it was at least partially
  /// resolved. Creating an address only containing a `region_code` and
  /// `address_lines` and then geocoding is the recommended way to handle
  /// completely unstructured addresses (as opposed to guessing which parts of
  /// the address should be localities or administrative areas).
  core.List<core.String>? addressLines;

  /// Highest administrative subdivision which is used for postal addresses of a
  /// country or region.
  ///
  /// For example, this can be a state, a province, an oblast, or a prefecture.
  /// For Spain, this is the province and not the autonomous community (for
  /// example, "Barcelona" and not "Catalonia"). Many countries don't use an
  /// administrative area in postal addresses. For example, in Switzerland, this
  /// should be left unpopulated.
  ///
  /// Optional.
  core.String? administrativeArea;

  /// BCP-47 language code of the contents of this address (if known).
  ///
  /// This is often the UI language of the input form or is expected to match
  /// one of the languages used in the address' country/region, or their
  /// transliterated equivalents. This can affect formatting in certain
  /// countries, but is not critical to the correctness of the data and will
  /// never affect any validation or other non-formatting related operations. If
  /// this value is not known, it should be omitted (rather than specifying a
  /// possibly incorrect default). Examples: "zh-Hant", "ja", "ja-Latn", "en".
  ///
  /// Optional.
  core.String? languageCode;

  /// Generally refers to the city or town portion of the address.
  ///
  /// Examples: US city, IT comune, UK post town. In regions of the world where
  /// localities are not well defined or do not fit into this structure well,
  /// leave `locality` empty and use `address_lines`.
  ///
  /// Optional.
  core.String? locality;

  /// The name of the organization at the address.
  ///
  /// Optional.
  core.String? organization;

  /// Postal code of the address.
  ///
  /// Not all countries use or require postal codes to be present, but where
  /// they are used, they may trigger additional validation with other parts of
  /// the address (for example, state or zip code validation in the United
  /// States).
  ///
  /// Optional.
  core.String? postalCode;

  /// The recipient at the address.
  ///
  /// This field may, under certain circumstances, contain multiline
  /// information. For example, it might contain "care of" information.
  ///
  /// Optional.
  core.List<core.String>? recipients;

  /// CLDR region code of the country/region of the address.
  ///
  /// This is never inferred and it is up to the user to ensure the value is
  /// correct. See https://cldr.unicode.org/ and
  /// https://www.unicode.org/cldr/charts/30/supplemental/territory_information.html
  /// for details. Example: "CH" for Switzerland.
  ///
  /// Required.
  core.String? regionCode;

  /// The schema revision of the `PostalAddress`.
  ///
  /// This must be set to 0, which is the latest revision. All new revisions
  /// **must** be backward compatible with old revisions.
  core.int? revision;

  /// Additional, country-specific, sorting code.
  ///
  /// This is not used in most regions. Where it is used, the value is either a
  /// string like "CEDEX", optionally followed by a number (for example, "CEDEX
  /// 7"), or just a number alone, representing the "sector code" (Jamaica),
  /// "delivery area indicator" (Malawi) or "post office indicator" (Côte
  /// d'Ivoire).
  ///
  /// Optional.
  core.String? sortingCode;

  /// Sublocality of the address.
  ///
  /// For example, this can be a neighborhood, borough, or district.
  ///
  /// Optional.
  core.String? sublocality;

  $PostalAddress({
    this.addressLines,
    this.administrativeArea,
    this.languageCode,
    this.locality,
    this.organization,
    this.postalCode,
    this.recipients,
    this.regionCode,
    this.revision,
    this.sortingCode,
    this.sublocality,
  });

  $PostalAddress.fromJson(core.Map json_)
    : this(
        addressLines: (json_['addressLines'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        administrativeArea: json_['administrativeArea'] as core.String?,
        languageCode: json_['languageCode'] as core.String?,
        locality: json_['locality'] as core.String?,
        organization: json_['organization'] as core.String?,
        postalCode: json_['postalCode'] as core.String?,
        recipients: (json_['recipients'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        regionCode: json_['regionCode'] as core.String?,
        revision: json_['revision'] as core.int?,
        sortingCode: json_['sortingCode'] as core.String?,
        sublocality: json_['sublocality'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final addressLines = this.addressLines;
    final administrativeArea = this.administrativeArea;
    final languageCode = this.languageCode;
    final locality = this.locality;
    final organization = this.organization;
    final postalCode = this.postalCode;
    final recipients = this.recipients;
    final regionCode = this.regionCode;
    final revision = this.revision;
    final sortingCode = this.sortingCode;
    final sublocality = this.sublocality;
    return {
      'addressLines': ?addressLines,
      'administrativeArea': ?administrativeArea,
      'languageCode': ?languageCode,
      'locality': ?locality,
      'organization': ?organization,
      'postalCode': ?postalCode,
      'recipients': ?recipients,
      'regionCode': ?regionCode,
      'revision': ?revision,
      'sortingCode': ?sortingCode,
      'sublocality': ?sublocality,
    };
  }
}

/// Used by:
///
/// - datamanager:v1 : IngestPpidDataStatus
/// - datamanager:v1 : RemovePpidDataStatus
class $PpidDataStatus {
  core.String? ppidCount;
  core.String? recordCount;

  $PpidDataStatus({this.ppidCount, this.recordCount});

  $PpidDataStatus.fromJson(core.Map json_)
    : this(
        ppidCount: json_['ppidCount'] as core.String?,
        recordCount: json_['recordCount'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final ppidCount = this.ppidCount;
    final recordCount = this.recordCount;
    return {'ppidCount': ?ppidCount, 'recordCount': ?recordCount};
  }
}

/// Used by:
///
/// - artifactregistry:v1 : CheckPrewarmedArtifactRequest
/// - artifactregistry:v1 : RemovePrewarmedArtifactRequest
class $PrewarmedArtifactRequest {
  /// The location of the prewarmed artifact.
  ///
  /// multi-region is not supported for this field.
  ///
  /// Optional.
  core.String? streamLocation;

  /// The artifact tag
  /// Format:projects/{project}/locations/{location}/repositories/{repository}/packages/{package}/tags/{tag}
  ///
  /// Optional.
  core.String? tag;

  /// The artifact version Format:
  /// projects/{project}/locations/{location}/repositories/{repository}/packages/{package}/versions/{version}
  ///
  /// Optional.
  core.String? version;

  $PrewarmedArtifactRequest({this.streamLocation, this.tag, this.version});

  $PrewarmedArtifactRequest.fromJson(core.Map json_)
    : this(
        streamLocation: json_['streamLocation'] as core.String?,
        tag: json_['tag'] as core.String?,
        version: json_['version'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final streamLocation = this.streamLocation;
    final tag = this.tag;
    final version = this.version;
    return {
      'streamLocation': ?streamLocation,
      'tag': ?tag,
      'version': ?version,
    };
  }
}

/// Used by:
///
/// - css:v1 : Price
/// - merchantapi:accounts_v1 : Price
/// - merchantapi:inventories_v1 : Price
/// - merchantapi:lfp_v1 : Price
/// - merchantapi:ordertracking_v1 : Price
/// - merchantapi:products_v1 : Price
/// - merchantapi:promotions_v1 : Price
/// - merchantapi:reports_v1 : Price
class $Price {
  /// The price represented as a number in micros (1 million micros is an
  /// equivalent to one's currency standard unit, for example, 1 USD = 1000000
  /// micros).
  core.String? amountMicros;

  /// The currency of the price using three-letter acronyms according to
  /// [ISO 4217](http://en.wikipedia.org/wiki/ISO_4217).
  core.String? currencyCode;

  $Price({this.amountMicros, this.currencyCode});

  $Price.fromJson(core.Map json_)
    : this(
        amountMicros: json_['amountMicros'] as core.String?,
        currencyCode: json_['currencyCode'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final amountMicros = this.amountMicros;
    final currencyCode = this.currencyCode;
    return {'amountMicros': ?amountMicros, 'currencyCode': ?currencyCode};
  }
}

/// Used by:
///
/// - accesscontextmanager:v1 : PrivateServiceConnectEndpoint
/// - cloudasset:v1 : GoogleIdentityAccesscontextmanagerV1PrivateServiceConnectEndpoint
class $PrivateServiceConnectEndpoint {
  /// The full resource name of the global forwarding rule that identifies a
  /// Private Service Connect endpoint.
  ///
  /// Forwarding rule format:
  /// `//compute.googleapis.com/projects/{PROJECT_ID}/global/forwardingRules/{FORWARDING_RULE_ID}`.
  core.String? forwardingRule;

  $PrivateServiceConnectEndpoint({this.forwardingRule});

  $PrivateServiceConnectEndpoint.fromJson(core.Map json_)
    : this(forwardingRule: json_['forwardingRule'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final forwardingRule = this.forwardingRule;
    return {'forwardingRule': ?forwardingRule};
  }
}

/// Used by:
///
/// - css:v1 : ProductDetail
/// - merchantapi:products_v1 : ProductDetail
class $ProductDetail {
  /// The name of the product detail.
  core.String? attributeName;

  /// The value of the product detail.
  core.String? attributeValue;

  /// The section header used to group a set of product details.
  core.String? sectionName;

  $ProductDetail({this.attributeName, this.attributeValue, this.sectionName});

  $ProductDetail.fromJson(core.Map json_)
    : this(
        attributeName: json_['attributeName'] as core.String?,
        attributeValue: json_['attributeValue'] as core.String?,
        sectionName: json_['sectionName'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final attributeName = this.attributeName;
    final attributeValue = this.attributeValue;
    final sectionName = this.sectionName;
    return {
      'attributeName': ?attributeName,
      'attributeValue': ?attributeValue,
      'sectionName': ?sectionName,
    };
  }
}

/// Used by:
///
/// - css:v1 : ProductDimension
/// - merchantapi:products_v1 : ProductDimension
class $ProductDimension {
  /// The dimension units.
  ///
  /// Acceptable values are: * "`in`" * "`cm`"
  ///
  /// Required.
  core.String? unit;

  /// The dimension value represented as a number.
  ///
  /// The value can have a maximum precision of four decimal places.
  ///
  /// Required.
  core.double? value;

  $ProductDimension({this.unit, this.value});

  $ProductDimension.fromJson(core.Map json_)
    : this(
        unit: json_['unit'] as core.String?,
        value: (json_['value'] as core.num?)?.toDouble(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final unit = this.unit;
    final value = this.value;
    return {'unit': ?unit, 'value': ?value};
  }
}

/// Used by:
///
/// - css:v1 : ProductWeight
/// - merchantapi:products_v1 : ProductWeight
class $ProductWeight {
  /// The weight unit.
  ///
  /// Acceptable values are: * "`g`" * "`kg`" * "`oz`" * "`lb`"
  ///
  /// Required.
  core.String? unit;

  /// The weight represented as a number.
  ///
  /// The weight can have a maximum precision of four decimal places.
  ///
  /// Required.
  core.double? value;

  $ProductWeight({this.unit, this.value});

  $ProductWeight.fromJson(core.Map json_)
    : this(
        unit: json_['unit'] as core.String?,
        value: (json_['value'] as core.num?)?.toDouble(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final unit = this.unit;
    final value = this.value;
    return {'unit': ?unit, 'value': ?value};
  }
}

/// Used by:
///
/// - containeranalysis:v1 : ProjectRepoId
/// - ondemandscanning:v1 : ProjectRepoId
class $ProjectRepoId {
  /// The ID of the project.
  core.String? projectId;

  /// The name of the repo.
  ///
  /// Leave empty for the default repo.
  core.String? repoName;

  $ProjectRepoId({this.projectId, this.repoName});

  $ProjectRepoId.fromJson(core.Map json_)
    : this(
        projectId: json_['projectId'] as core.String?,
        repoName: json_['repoName'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final projectId = this.projectId;
    final repoName = this.repoName;
    return {'projectId': ?projectId, 'repoName': ?repoName};
  }
}

/// Used by:
///
/// - backupdr:v1 : CloudSqlInstanceDataSourceProperties
/// - backupdr:v1 : CloudSqlInstanceDataSourceReferenceProperties
class $Properties {
  /// The installed database version of the Cloud SQL instance.
  ///
  /// Output only.
  core.String? databaseInstalledVersion;

  /// The instance creation timestamp.
  ///
  /// Output only.
  core.String? instanceCreateTime;

  /// The tier (or machine type) for this instance.
  ///
  /// Example: `db-custom-1-3840`
  ///
  /// Output only.
  core.String? instanceTier;

  /// Name of the Cloud SQL instance backed up by the datasource.
  ///
  /// Format: projects/{project}/instances/{instance}
  ///
  /// Output only.
  core.String? name;

  $Properties({
    this.databaseInstalledVersion,
    this.instanceCreateTime,
    this.instanceTier,
    this.name,
  });

  $Properties.fromJson(core.Map json_)
    : this(
        databaseInstalledVersion:
            json_['databaseInstalledVersion'] as core.String?,
        instanceCreateTime: json_['instanceCreateTime'] as core.String?,
        instanceTier: json_['instanceTier'] as core.String?,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final databaseInstalledVersion = this.databaseInstalledVersion;
    final instanceCreateTime = this.instanceCreateTime;
    final instanceTier = this.instanceTier;
    final name = this.name;
    return {
      'databaseInstalledVersion': ?databaseInstalledVersion,
      'instanceCreateTime': ?instanceCreateTime,
      'instanceTier': ?instanceTier,
      'name': ?name,
    };
  }
}

/// Used by:
///
/// - compute:v1 : TargetSslProxiesSetProxyHeaderRequest
/// - compute:v1 : TargetTcpProxiesSetProxyHeaderRequest
class $ProxiesSetProxyHeaderRequest {
  /// The new type of proxy header to append before sending data to the
  /// backend.
  ///
  ///  NONE or PROXY_V1 are allowed.
  /// Possible string values are:
  /// - "NONE"
  /// - "PROXY_V1"
  core.String? proxyHeader;

  $ProxiesSetProxyHeaderRequest({this.proxyHeader});

  $ProxiesSetProxyHeaderRequest.fromJson(core.Map json_)
    : this(proxyHeader: json_['proxyHeader'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final proxyHeader = this.proxyHeader;
    return {'proxyHeader': ?proxyHeader};
  }
}

/// Used by:
///
/// - pubsub:v1 : PubsubMessage
/// - workflowexecutions:v1 : PubsubMessage
class $PubsubMessage {
  /// Attributes for this message.
  ///
  /// If this field is empty, the message must contain non-empty data. This can
  /// be used to filter messages on the subscription.
  ///
  /// Optional.
  core.Map<core.String, core.String>? attributes;

  /// The message data field.
  ///
  /// If this field is empty, the message must contain at least one attribute.
  ///
  /// Optional.
  core.String? data;
  core.List<core.int> get dataAsBytes => convert.base64.decode(data!);

  set dataAsBytes(core.List<core.int> bytes_) {
    data = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  /// ID of this message, assigned by the server when the message is published.
  ///
  /// Guaranteed to be unique within the topic. This value may be read by a
  /// subscriber that receives a `PubsubMessage` via a `Pull` call or a push
  /// delivery. It must not be populated by the publisher in a `Publish` call.
  core.String? messageId;

  /// If non-empty, identifies related messages for which publish order should
  /// be respected.
  ///
  /// If a `Subscription` has `enable_message_ordering` set to `true`, messages
  /// published with the same non-empty `ordering_key` value will be delivered
  /// to subscribers in the order in which they are received by the Pub/Sub
  /// system. All `PubsubMessage`s published in a given `PublishRequest` must
  /// specify the same `ordering_key` value. For more information, see
  /// [ordering messages](https://cloud.google.com/pubsub/docs/ordering).
  ///
  /// Optional.
  core.String? orderingKey;

  /// The time at which the message was published, populated by the server when
  /// it receives the `Publish` call.
  ///
  /// It must not be populated by the publisher in a `Publish` call.
  core.String? publishTime;

  $PubsubMessage({
    this.attributes,
    this.data,
    this.messageId,
    this.orderingKey,
    this.publishTime,
  });

  $PubsubMessage.fromJson(core.Map json_)
    : this(
        attributes:
            (json_['attributes'] as core.Map<core.String, core.dynamic>?)?.map(
              (key, value) => core.MapEntry(key, value as core.String),
            ),
        data: json_['data'] as core.String?,
        messageId: json_['messageId'] as core.String?,
        orderingKey: json_['orderingKey'] as core.String?,
        publishTime: json_['publishTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final attributes = this.attributes;
    final data = this.data;
    final messageId = this.messageId;
    final orderingKey = this.orderingKey;
    final publishTime = this.publishTime;
    return {
      'attributes': ?attributes,
      'data': ?data,
      'messageId': ?messageId,
      'orderingKey': ?orderingKey,
      'publishTime': ?publishTime,
    };
  }
}

/// Used by:
///
/// - vault:v1 : HeldGroupsQuery
/// - vault:v1 : HeldMailQuery
class $Query {
  /// The end time for the query.
  ///
  /// Specify in GMT. The value is rounded to 12 AM on the specified date.
  core.String? endTime;

  /// The start time for the query.
  ///
  /// Specify in GMT. The value is rounded to 12 AM on the specified date.
  core.String? startTime;

  /// The [search operators](https://support.google.com/vault/answer/2474474)
  /// used to refine the messages covered by the hold.
  core.String? terms;

  $Query({this.endTime, this.startTime, this.terms});

  $Query.fromJson(core.Map json_)
    : this(
        endTime: json_['endTime'] as core.String?,
        startTime: json_['startTime'] as core.String?,
        terms: json_['terms'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final endTime = this.endTime;
    final startTime = this.startTime;
    final terms = this.terms;
    return {'endTime': ?endTime, 'startTime': ?startTime, 'terms': ?terms};
  }
}

/// Used by:
///
/// - aiplatform:v1 : GoogleCloudAiplatformV1PairwiseQuestionAnsweringQualitySpec
/// - aiplatform:v1 : GoogleCloudAiplatformV1QuestionAnsweringQualitySpec
class $QuestionAnsweringQualitySpec {
  /// Whether to use instance.reference to compute question answering quality.
  ///
  /// Optional.
  core.bool? useReference;

  /// Which version to use for evaluation.
  ///
  /// Optional.
  core.int? version;

  $QuestionAnsweringQualitySpec({this.useReference, this.version});

  $QuestionAnsweringQualitySpec.fromJson(core.Map json_)
    : this(
        useReference: json_['useReference'] as core.bool?,
        version: json_['version'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final useReference = this.useReference;
    final version = this.version;
    return {'useReference': ?useReference, 'version': ?version};
  }
}

/// Used by:
///
/// - servicemanagement:v1 : QuotaLimit
/// - serviceusage:v1 : QuotaLimit
class $QuotaLimit {
  /// Default number of tokens that can be consumed during the specified
  /// duration.
  ///
  /// This is the number of tokens assigned when a client application developer
  /// activates the service for his/her project. Specifying a value of 0 will
  /// block all requests. This can be used if you are provisioning quota to
  /// selected consumers and blocking others. Similarly, a value of -1 will
  /// indicate an unlimited quota. No other negative values are allowed. Used by
  /// group-based quotas only.
  core.String? defaultLimit;

  /// User-visible, extended description for this quota limit.
  ///
  /// Should be used only when more context is needed to understand this limit
  /// than provided by the limit's display name (see: `display_name`).
  ///
  /// Optional.
  core.String? description;

  /// User-visible display name for this limit.
  ///
  /// Optional. If not set, the UI will provide a default display name based on
  /// the quota configuration. This field can be used to override the default
  /// display name generated from the configuration.
  core.String? displayName;

  /// Duration of this limit in textual notation.
  ///
  /// Must be "100s" or "1d". Used by group-based quotas only.
  core.String? duration;

  /// Free tier value displayed in the Developers Console for this limit.
  ///
  /// The free tier is the number of tokens that will be subtracted from the
  /// billed amount when billing is enabled. This field can only be set on a
  /// limit with duration "1d", in a billable group; it is invalid on any other
  /// limit. If this field is not set, it defaults to 0, indicating that there
  /// is no free tier for this service. Used by group-based quotas only.
  core.String? freeTier;

  /// Maximum number of tokens that can be consumed during the specified
  /// duration.
  ///
  /// Client application developers can override the default limit up to this
  /// maximum. If specified, this value cannot be set to a value less than the
  /// default limit. If not specified, it is set to the default limit. To allow
  /// clients to apply overrides with no upper bound, set this to -1, indicating
  /// unlimited maximum quota. Used by group-based quotas only.
  core.String? maxLimit;

  /// The name of the metric this quota limit applies to.
  ///
  /// The quota limits with the same metric will be checked together during
  /// runtime. The metric must be defined within the service config.
  core.String? metric;

  /// Name of the quota limit.
  ///
  /// The name must be provided, and it must be unique within the service. The
  /// name can only include alphanumeric characters as well as '-'. The maximum
  /// length of the limit name is 64 characters.
  core.String? name;

  /// This is only informational, the logic to allocate the quota to the correct
  /// metric (such as in `metric_rules`) should identify which quota metrics to
  /// allocate to.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "TRAFFIC_SOURCE_UNSPECIFIED" : This quota limit applies to all traffic.
  /// This is the default value.
  /// - "TRAFFIC_SOURCE_NONAGENTIC" : This quota limit applies to traffic not
  /// recognized as agentic.
  /// - "TRAFFIC_SOURCE_AGENTIC" : This quota limit applies to only agentic
  /// traffic.
  core.String? trafficSource;

  /// Specify the unit of the quota limit.
  ///
  /// It uses the same syntax as MetricDescriptor.unit. The supported unit kinds
  /// are determined by the quota backend system. Here are some examples: *
  /// "1/min/{project}" for quota per minute per project. Note: the order of
  /// unit components is insignificant. The "1" at the beginning is required to
  /// follow the metric unit syntax.
  core.String? unit;

  /// Tiered limit values.
  ///
  /// You must specify this as a key:value pair, with an integer value that is
  /// the maximum number of requests allowed for the specified unit. Currently
  /// only STANDARD is supported.
  core.Map<core.String, core.String>? values;

  $QuotaLimit({
    this.defaultLimit,
    this.description,
    this.displayName,
    this.duration,
    this.freeTier,
    this.maxLimit,
    this.metric,
    this.name,
    this.trafficSource,
    this.unit,
    this.values,
  });

  $QuotaLimit.fromJson(core.Map json_)
    : this(
        defaultLimit: json_['defaultLimit'] as core.String?,
        description: json_['description'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        duration: json_['duration'] as core.String?,
        freeTier: json_['freeTier'] as core.String?,
        maxLimit: json_['maxLimit'] as core.String?,
        metric: json_['metric'] as core.String?,
        name: json_['name'] as core.String?,
        trafficSource: json_['trafficSource'] as core.String?,
        unit: json_['unit'] as core.String?,
        values: (json_['values'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final defaultLimit = this.defaultLimit;
    final description = this.description;
    final displayName = this.displayName;
    final duration = this.duration;
    final freeTier = this.freeTier;
    final maxLimit = this.maxLimit;
    final metric = this.metric;
    final name = this.name;
    final trafficSource = this.trafficSource;
    final unit = this.unit;
    final values = this.values;
    return {
      'defaultLimit': ?defaultLimit,
      'description': ?description,
      'displayName': ?displayName,
      'duration': ?duration,
      'freeTier': ?freeTier,
      'maxLimit': ?maxLimit,
      'metric': ?metric,
      'name': ?name,
      'trafficSource': ?trafficSource,
      'unit': ?unit,
      'values': ?values,
    };
  }
}

/// Used by:
///
/// - aiplatform:v1 : GenaiVertexV1RagStoreConfigRagRetrievalConfigFilter
/// - aiplatform:v1 : GoogleCloudAiplatformV1RagRetrievalConfigFilter
class $RagRetrievalConfigFilter {
  /// String for metadata filtering.
  ///
  /// Optional.
  core.String? metadataFilter;

  /// Only returns contexts with vector distance smaller than the threshold.
  ///
  /// Optional.
  core.double? vectorDistanceThreshold;

  /// Only returns contexts with vector similarity larger than the threshold.
  ///
  /// Optional.
  core.double? vectorSimilarityThreshold;

  $RagRetrievalConfigFilter({
    this.metadataFilter,
    this.vectorDistanceThreshold,
    this.vectorSimilarityThreshold,
  });

  $RagRetrievalConfigFilter.fromJson(core.Map json_)
    : this(
        metadataFilter: json_['metadataFilter'] as core.String?,
        vectorDistanceThreshold: (json_['vectorDistanceThreshold'] as core.num?)
            ?.toDouble(),
        vectorSimilarityThreshold:
            (json_['vectorSimilarityThreshold'] as core.num?)?.toDouble(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final metadataFilter = this.metadataFilter;
    final vectorDistanceThreshold = this.vectorDistanceThreshold;
    final vectorSimilarityThreshold = this.vectorSimilarityThreshold;
    return {
      'metadataFilter': ?metadataFilter,
      'vectorDistanceThreshold': ?vectorDistanceThreshold,
      'vectorSimilarityThreshold': ?vectorSimilarityThreshold,
    };
  }
}

/// Used by:
///
/// - containeranalysis:v1 : Recipe
/// - ondemandscanning:v1 : Recipe
class $Recipe {
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

  $Recipe({
    this.arguments,
    this.definedInMaterial,
    this.entryPoint,
    this.environment,
    this.type,
  });

  $Recipe.fromJson(core.Map json_)
    : this(
        arguments: (json_['arguments'] as core.List?)
            ?.map((value) => value as core.Map<core.String, core.dynamic>)
            .toList(),
        definedInMaterial: json_['definedInMaterial'] as core.String?,
        entryPoint: json_['entryPoint'] as core.String?,
        environment: (json_['environment'] as core.List?)
            ?.map((value) => value as core.Map<core.String, core.dynamic>)
            .toList(),
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final arguments = this.arguments;
    final definedInMaterial = this.definedInMaterial;
    final entryPoint = this.entryPoint;
    final environment = this.environment;
    final type = this.type;
    return {
      'arguments': ?arguments,
      'definedInMaterial': ?definedInMaterial,
      'entryPoint': ?entryPoint,
      'environment': ?environment,
      'type': ?type,
    };
  }
}

/// Used by:
///
/// - containeranalysis:v1 : RelatedUrl
/// - ondemandscanning:v1 : RelatedUrl
class $RelatedUrl {
  /// Label to describe usage of the URL.
  core.String? label;

  /// Specific URL associated with the resource.
  core.String? url;

  $RelatedUrl({this.label, this.url});

  $RelatedUrl.fromJson(core.Map json_)
    : this(
        label: json_['label'] as core.String?,
        url: json_['url'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final label = this.label;
    final url = this.url;
    return {'label': ?label, 'url': ?url};
  }
}

/// Used by:
///
/// - compute:v1 : NetworksCancelRequestRemovePeeringRequest
/// - compute:v1 : NetworksRemovePeeringRequest
/// - compute:v1 : NetworksRequestRemovePeeringRequest
class $RemovePeeringRequest {
  /// Name of the peering, which should conform to RFC1035.
  core.String? name;

  $RemovePeeringRequest({this.name});

  $RemovePeeringRequest.fromJson(core.Map json_)
    : this(name: json_['name'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final name = this.name;
    return {'name': ?name};
  }
}

/// Used by:
///
/// - docs:v1 : ReplaceAllTextResponse
/// - slides:v1 : ReplaceAllTextResponse
class $ReplaceAllTextResponse {
  /// The number of occurrences changed by replacing all text.
  core.int? occurrencesChanged;

  $ReplaceAllTextResponse({this.occurrencesChanged});

  $ReplaceAllTextResponse.fromJson(core.Map json_)
    : this(occurrencesChanged: json_['occurrencesChanged'] as core.int?);

  core.Map<core.String, core.dynamic> toJson() {
    final occurrencesChanged = this.occurrencesChanged;
    return {'occurrencesChanged': ?occurrencesChanged};
  }
}

/// Used by:
///
/// - compute:v1 : InstanceGroupManagersDeletePerInstanceConfigsReq
/// - compute:v1 : RegionInstanceGroupManagerDeleteInstanceConfigReq
class $Req {
  /// The list of instance names for which we want to delete per-instance
  /// configs
  /// on this managed instance group.
  core.List<core.String>? names;

  $Req({this.names});

  $Req.fromJson(core.Map json_)
    : this(
        names: (json_['names'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final names = this.names;
    return {'names': ?names};
  }
}

/// Used by:
///
/// - backupdr:v1 : RemoveDataSourceRequest
/// - batch:v1 : CancelJobRequest
/// - migrationcenter:v1 : RunAssetsExportJobRequest
/// - migrationcenter:v1 : RunImportJobRequest
/// - migrationcenter:v1 : ValidateImportJobRequest
class $Request00 {
  /// An optional request ID to identify requests.
  ///
  /// Specify a unique request ID so that if you must retry your request, the
  /// server will know to ignore the request if it has already been completed.
  /// The server will guarantee that for at least 60 minutes after the first
  /// request. For example, consider a situation where you make an initial
  /// request and the request times out. If you make the request again with the
  /// same request ID, the server can check if original operation with the same
  /// request ID was received, and if so, will ignore the second request. This
  /// prevents clients from accidentally creating duplicate commitments. The
  /// request ID must be a valid UUID with the exception that zero UUID is not
  /// supported (00000000-0000-0000-0000-000000000000).
  ///
  /// Optional.
  core.String? requestId;

  $Request00({this.requestId});

  $Request00.fromJson(core.Map json_)
    : this(requestId: json_['requestId'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final requestId = this.requestId;
    return {'requestId': ?requestId};
  }
}

/// Used by:
///
/// - cloudidentity:v1 : GoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest
/// - cloudidentity:v1 : GoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest
/// - cloudidentity:v1 : GoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest
/// - cloudidentity:v1 : GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest
/// - cloudidentity:v1 : GoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest
class $Request01 {
  /// [Resource name](https://cloud.google.com/apis/design/resource_names) of
  /// the customer.
  ///
  /// If you're using this API for your own organization, use
  /// `customers/my_customer` If you're using this API to manage another
  /// organization, use `customers/{customer}`, where customer is the customer
  /// to whom the device belongs.
  ///
  /// Optional.
  core.String? customer;

  $Request01({this.customer});

  $Request01.fromJson(core.Map json_)
    : this(customer: json_['customer'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final customer = this.customer;
    return {'customer': ?customer};
  }
}

/// Used by:
///
/// - agentidentity:v1 : DisableAuthProviderRequest
/// - agentidentity:v1 : EnableAuthProviderRequest
/// - agentidentity:v1 : UndeleteAuthProviderRequest
/// - backupdr:v1 : TriggerRestoreCleanupRequest
class $Request02 {
  /// An optional request ID to identify requests.
  ///
  /// Specify a unique request ID so that if you must retry your request, the
  /// server will know to ignore the request if it has already been completed.
  /// The server will guarantee that for at least 60 minutes after the first
  /// request. The request ID must be a valid UUID with the exception that zero
  /// UUID is not supported (00000000-0000-0000-0000-000000000000).
  ///
  /// Optional.
  core.String? requestId;

  $Request02({this.requestId});

  $Request02.fromJson(core.Map json_)
    : this(requestId: json_['requestId'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final requestId = this.requestId;
    return {'requestId': ?requestId};
  }
}

/// Used by:
///
/// - cloudchannel:v1 : GoogleCloudChannelV1ActivateEntitlementRequest
/// - cloudchannel:v1 : GoogleCloudChannelV1CancelEntitlementRequest
/// - cloudchannel:v1 : GoogleCloudChannelV1StartPaidServiceRequest
/// - cloudchannel:v1 : GoogleCloudChannelV1SuspendEntitlementRequest
class $Request03 {
  /// You can specify an optional unique request ID, and if you need to retry
  /// your request, the server will know to ignore the request if it's complete.
  ///
  /// For example, you make an initial request and the request times out. If you
  /// make the request again with the same request ID, the server can check if
  /// it received the original operation with the same request ID. If it did, it
  /// will ignore the second request. The request ID must be a valid
  /// [UUID](https://tools.ietf.org/html/rfc4122) with the exception that zero
  /// UUID is not supported (`00000000-0000-0000-0000-000000000000`).
  ///
  /// Optional.
  core.String? requestId;

  $Request03({this.requestId});

  $Request03.fromJson(core.Map json_)
    : this(requestId: json_['requestId'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final requestId = this.requestId;
    return {'requestId': ?requestId};
  }
}

/// Used by:
///
/// - searchads360:v23 : GoogleAdsSearchads360V23Services__EndExperimentRequest
/// - searchads360:v23 : GoogleAdsSearchads360V23Services__PromoteExperimentRequest
/// - searchads360:v23 : GoogleAdsSearchads360V23Services__RunOfflineUserDataJobRequest
/// - searchads360:v23 : GoogleAdsSearchads360V23Services__ScheduleExperimentRequest
class $Request04 {
  /// If true, the request is validated but not executed.
  ///
  /// Only errors are returned, not results.
  core.bool? validateOnly;

  $Request04({this.validateOnly});

  $Request04.fromJson(core.Map json_)
    : this(validateOnly: json_['validateOnly'] as core.bool?);

  core.Map<core.String, core.dynamic> toJson() {
    final validateOnly = this.validateOnly;
    return {'validateOnly': ?validateOnly};
  }
}

/// Used by:
///
/// - privateca:v1 : EnableCertificateAuthorityRequest
/// - privateca:v1 : FetchCaCertsRequest
/// - privateca:v1 : UndeleteCertificateAuthorityRequest
class $Request05 {
  /// An ID to identify requests.
  ///
  /// Specify a unique request ID so that if you must retry your request, the
  /// server will know to ignore the request if it has already been completed.
  /// The server will guarantee that for at least 60 minutes since the first
  /// request. For example, consider a situation where you make an initial
  /// request and the request times out. If you make the request again with the
  /// same request ID, the server can check if original operation with the same
  /// request ID was received, and if so, will ignore the second request. This
  /// prevents clients from accidentally creating duplicate commitments. The
  /// request ID must be a valid UUID with the exception that zero UUID is not
  /// supported (00000000-0000-0000-0000-000000000000).
  ///
  /// Optional.
  core.String? requestId;

  $Request05({this.requestId});

  $Request05.fromJson(core.Map json_)
    : this(requestId: json_['requestId'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final requestId = this.requestId;
    return {'requestId': ?requestId};
  }
}

/// Used by:
///
/// - recommender:v1 : GoogleCloudRecommenderV1MarkRecommendationClaimedRequest
/// - recommender:v1 : GoogleCloudRecommenderV1MarkRecommendationFailedRequest
/// - recommender:v1 : GoogleCloudRecommenderV1MarkRecommendationSucceededRequest
class $Request06 {
  /// Fingerprint of the Recommendation.
  ///
  /// Provides optimistic locking.
  ///
  /// Required.
  core.String? etag;

  /// State properties to include with this state.
  ///
  /// Overwrites any existing `state_metadata`. Keys must match the regex
  /// `/^a-z0-9{0,62}$/`. Values must match the regex
  /// `/^[a-zA-Z0-9_./-]{0,255}$/`.
  core.Map<core.String, core.String>? stateMetadata;

  $Request06({this.etag, this.stateMetadata});

  $Request06.fromJson(core.Map json_)
    : this(
        etag: json_['etag'] as core.String?,
        stateMetadata:
            (json_['stateMetadata'] as core.Map<core.String, core.dynamic>?)
                ?.map((key, value) => core.MapEntry(key, value as core.String)),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final etag = this.etag;
    final stateMetadata = this.stateMetadata;
    return {'etag': ?etag, 'stateMetadata': ?stateMetadata};
  }
}

/// Used by:
///
/// - alloydb:v1 : FailoverInstanceRequest
/// - alloydb:v1 : SwitchoverClusterRequest
class $Request07 {
  /// An optional request ID to identify requests.
  ///
  /// Specify a unique request ID so that if you must retry your request, the
  /// server ignores the request if it has already been completed. The server
  /// guarantees that for at least 60 minutes since the first request. For
  /// example, consider a situation where you make an initial request and the
  /// request times out. If you make the request again with the same request ID,
  /// the server can check if the original operation with the same request ID
  /// was received, and if so, ignores the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// Optional.
  core.String? requestId;

  /// If set, performs request validation, for example, permission checks and
  /// any other type of validation, but does not actually execute the create
  /// request.
  ///
  /// Optional.
  core.bool? validateOnly;

  $Request07({this.requestId, this.validateOnly});

  $Request07.fromJson(core.Map json_)
    : this(
        requestId: json_['requestId'] as core.String?,
        validateOnly: json_['validateOnly'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final requestId = this.requestId;
    final validateOnly = this.validateOnly;
    return {'requestId': ?requestId, 'validateOnly': ?validateOnly};
  }
}

/// Used by:
///
/// - clouddeploy:v1 : CancelRolloutRequest
/// - clouddeploy:v1 : TerminateJobRunRequest
class $Request08 {
  /// Deploy policies to override.
  ///
  /// Format is
  /// `projects/{project}/locations/{location}/deployPolicies/{deployPolicy}`.
  ///
  /// Optional.
  core.List<core.String>? overrideDeployPolicy;

  $Request08({this.overrideDeployPolicy});

  $Request08.fromJson(core.Map json_)
    : this(
        overrideDeployPolicy: (json_['overrideDeployPolicy'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final overrideDeployPolicy = this.overrideDeployPolicy;
    return {'overrideDeployPolicy': ?overrideDeployPolicy};
  }
}

/// Used by:
///
/// - cloudresourcemanager:v1 : ListAvailableOrgPolicyConstraintsRequest
/// - cloudresourcemanager:v1 : ListOrgPoliciesRequest
class $Request09 {
  /// Size of the pages to be returned.
  ///
  /// This is currently unsupported and will be ignored. The server may at any
  /// point start using this field to limit page size.
  core.int? pageSize;

  /// Page token used to retrieve the next page.
  ///
  /// This is currently unsupported and will be ignored. The server may at any
  /// point start using this field.
  core.String? pageToken;

  $Request09({this.pageSize, this.pageToken});

  $Request09.fromJson(core.Map json_)
    : this(
        pageSize: json_['pageSize'] as core.int?,
        pageToken: json_['pageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final pageSize = this.pageSize;
    final pageToken = this.pageToken;
    return {'pageSize': ?pageSize, 'pageToken': ?pageToken};
  }
}

/// Used by:
///
/// - compute:v1 : InstanceGroupManagersRecreateInstancesRequest
/// - compute:v1 : RegionInstanceGroupManagersRecreateRequest
class $Request10 {
  /// The URLs of one or more instances to recreate.
  ///
  /// This can be a full URL or
  /// a partial URL, such as zones/\[ZONE\]/instances/\[INSTANCE_NAME\].
  core.List<core.String>? instances;

  $Request10({this.instances});

  $Request10.fromJson(core.Map json_)
    : this(
        instances: (json_['instances'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final instances = this.instances;
    return {'instances': ?instances};
  }
}

/// Used by:
///
/// - firebasedataconnect:v1 : ExecuteMutationRequest
/// - firebasedataconnect:v1 : ExecuteQueryRequest
class $Request11 {
  /// The name of the GraphQL operation name.
  ///
  /// Required because all Connector operations must be named. See
  /// https://graphql.org/learn/queries/#operation-name.
  ///
  /// Required.
  core.String? operationName;

  /// Values for GraphQL variables provided in this request.
  ///
  /// Optional.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? variables;

  $Request11({this.operationName, this.variables});

  $Request11.fromJson(core.Map json_)
    : this(
        operationName: json_['operationName'] as core.String?,
        variables: json_.containsKey('variables')
            ? json_['variables'] as core.Map<core.String, core.dynamic>
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final operationName = this.operationName;
    final variables = this.variables;
    return {'operationName': ?operationName, 'variables': ?variables};
  }
}

/// Used by:
///
/// - netapp:v1 : ExecuteOntapPatchRequest
/// - netapp:v1 : ExecuteOntapPostRequest
class $Request12 {
  /// The raw `JSON` body of the request.
  ///
  /// The body should be in the format of the ONTAP resource. For example: ``` {
  /// "body": { "field1": "value1", "field2": "value2", } } ```
  ///
  /// Required.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? body;

  $Request12({this.body});

  $Request12.fromJson(core.Map json_)
    : this(
        body: json_.containsKey('body')
            ? json_['body'] as core.Map<core.String, core.dynamic>
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final body = this.body;
    return {'body': ?body};
  }
}

/// Used by:
///
/// - datastore:v1 : RequestOptions
/// - firestore:v1 : RequestOptions
class $RequestOptions {
  /// The request tags for the request.
  ///
  /// Request tags are user-provided strings used for usage monitoring, cost
  /// management, and observability. Callers can associate custom application
  /// context (such as component, microservice, feature name, or operation type)
  /// with database requests. These tags are collected and aggregated in usage
  /// and monitoring reports, allowing billable operations and usage metrics to
  /// be sliced and analyzed by tag. These tags *only* show up in monitoring and
  /// are visible in administrative operations (such as usage reports). They do
  /// not affect data storage, query semantics, or request execution.
  /// Cardinality and Best Practices: - Request tags are most effective when
  /// using a bounded set of distinct values (e.g., fewer than 100 distinct tags
  /// across an entire database). Using a large number of distinct tags may
  /// result in tags being omitted from top usage dashboards. - Use structured
  /// identifiers (for example: `app=cart`, `env=prod`, `service=checkout`) and
  /// avoid high-cardinality values such as UUIDs, request IDs, timestamps, user
  /// IDs, or document keys. - Do not include sensitive data or personally
  /// identifiable information (PII) in request tags, as they show up in
  /// administrative monitoring. The tags are processed as follows: - Leading
  /// and trailing whitespace is trimmed. - Empty tags (after trimming) are
  /// filtered out. - Truncated to a maximum of 510 characters. - Deduplicated
  /// within the same request. - Limited to a maximum of 50 tags per request
  /// (excess tags are silently discarded).
  ///
  /// Optional.
  core.List<core.String>? requestTags;

  $RequestOptions({this.requestTags});

  $RequestOptions.fromJson(core.Map json_)
    : this(
        requestTags: (json_['requestTags'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final requestTags = this.requestTags;
    return {'requestTags': ?requestTags};
  }
}

/// Used by:
///
/// - containeranalysis:v1 : ResourceDescriptor
/// - ondemandscanning:v1 : ResourceDescriptor
class $ResourceDescriptor {
  ///
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? annotations;
  core.String? content;
  core.List<core.int> get contentAsBytes => convert.base64.decode(content!);

  set contentAsBytes(core.List<core.int> bytes_) {
    content = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  core.Map<core.String, core.String>? digest;
  core.String? downloadLocation;
  core.String? mediaType;
  core.String? name;
  core.String? uri;

  $ResourceDescriptor({
    this.annotations,
    this.content,
    this.digest,
    this.downloadLocation,
    this.mediaType,
    this.name,
    this.uri,
  });

  $ResourceDescriptor.fromJson(core.Map json_)
    : this(
        annotations: json_.containsKey('annotations')
            ? json_['annotations'] as core.Map<core.String, core.dynamic>
            : null,
        content: json_['content'] as core.String?,
        digest: (json_['digest'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        downloadLocation: json_['downloadLocation'] as core.String?,
        mediaType: json_['mediaType'] as core.String?,
        name: json_['name'] as core.String?,
        uri: json_['uri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final annotations = this.annotations;
    final content = this.content;
    final digest = this.digest;
    final downloadLocation = this.downloadLocation;
    final mediaType = this.mediaType;
    final name = this.name;
    final uri = this.uri;
    return {
      'annotations': ?annotations,
      'content': ?content,
      'digest': ?digest,
      'downloadLocation': ?downloadLocation,
      'mediaType': ?mediaType,
      'name': ?name,
      'uri': ?uri,
    };
  }
}

/// Used by:
///
/// - parametermanager:v1 : ResourcePolicyMember
/// - secretmanager:v1 : ResourcePolicyMember
class $ResourcePolicyMember {
  /// IAM policy binding member referring to a Google Cloud resource by
  /// user-assigned name (https://google.aip.dev/122).
  ///
  /// If a resource is deleted and recreated with the same name, the binding
  /// will be applicable to the new resource. Example:
  /// `principal://parametermanager.googleapis.com/projects/12345/name/locations/us-central1-a/parameters/my-parameter`
  ///
  /// Output only.
  core.String? iamPolicyNamePrincipal;

  /// IAM policy binding member referring to a Google Cloud resource by
  /// system-assigned unique identifier (https://google.aip.dev/148#uid).
  ///
  /// If a resource is deleted and recreated with the same name, the binding
  /// will not be applicable to the new resource Example:
  /// `principal://parametermanager.googleapis.com/projects/12345/uid/locations/us-central1-a/parameters/a918fed5`
  ///
  /// Output only.
  core.String? iamPolicyUidPrincipal;

  $ResourcePolicyMember({
    this.iamPolicyNamePrincipal,
    this.iamPolicyUidPrincipal,
  });

  $ResourcePolicyMember.fromJson(core.Map json_)
    : this(
        iamPolicyNamePrincipal: json_['iamPolicyNamePrincipal'] as core.String?,
        iamPolicyUidPrincipal: json_['iamPolicyUidPrincipal'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final iamPolicyNamePrincipal = this.iamPolicyNamePrincipal;
    final iamPolicyUidPrincipal = this.iamPolicyUidPrincipal;
    return {
      'iamPolicyNamePrincipal': ?iamPolicyNamePrincipal,
      'iamPolicyUidPrincipal': ?iamPolicyUidPrincipal,
    };
  }
}

/// Used by:
///
/// - datamanager:v1 : IngestUsersResponse
/// - datamanager:v1 : RemoveAllAudienceMembersResponse
/// - datamanager:v1 : RemoveAudienceMembersResponse
/// - datamanager:v1 : RemoveUsersResponse
class $Response00 {
  core.String? requestId;

  $Response00({this.requestId});

  $Response00.fromJson(core.Map json_)
    : this(requestId: json_['requestId'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final requestId = this.requestId;
    return {'requestId': ?requestId};
  }
}

/// Used by:
///
/// - netapp:v1 : ExecuteOntapDeleteResponse
/// - netapp:v1 : ExecuteOntapGetResponse
/// - netapp:v1 : ExecuteOntapPatchResponse
/// - netapp:v1 : ExecuteOntapPostResponse
class $Response01 {
  /// The raw `JSON` body of the response.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? body;

  $Response01({this.body});

  $Response01.fromJson(core.Map json_)
    : this(
        body: json_.containsKey('body')
            ? json_['body'] as core.Map<core.String, core.dynamic>
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final body = this.body;
    return {'body': ?body};
  }
}

/// Used by:
///
/// - chromemanagement:v1 : GoogleChromeManagementVersionsV1CheckEnablementStatusResponse
/// - chromemanagement:v1 : GoogleChromeManagementVersionsV1DisableInsightsResponse
/// - chromemanagement:v1 : GoogleChromeManagementVersionsV1EnableInsightsResponse
class $Response02 {
  /// The state of the insights feature.
  /// Possible string values are:
  /// - "INSIGHTS_ENABLEMENT_STATE_UNSPECIFIED" : Default value. Should not be
  /// used.
  /// - "INSIGHTS_ENABLED" : The insights feature is enabled for the customer.
  /// - "INSIGHTS_DISABLED" : The insights feature is disabled for the customer.
  core.String? insightsState;

  $Response02({this.insightsState});

  $Response02.fromJson(core.Map json_)
    : this(insightsState: json_['insightsState'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final insightsState = this.insightsState;
    return {'insightsState': ?insightsState};
  }
}

/// Used by:
///
/// - searchads360:v23 : GoogleAdsSearchads360V23Services__RemoveDataLinkResponse
/// - searchads360:v23 : GoogleAdsSearchads360V23Services__RemoveProductLinkInvitationResponse
/// - searchads360:v23 : GoogleAdsSearchads360V23Services__RemoveProductLinkResponse
class $Response03 {
  /// Result for the remove request.
  core.String? resourceName;

  $Response03({this.resourceName});

  $Response03.fromJson(core.Map json_)
    : this(resourceName: json_['resourceName'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final resourceName = this.resourceName;
    return {'resourceName': ?resourceName};
  }
}

/// Used by:
///
/// - aiplatform:v1 : GoogleCloudAiplatformV1BatchEmbedContentsResponseEmbedding
/// - aiplatform:v1 : GoogleCloudAiplatformV1EmbedContentResponseEmbedding
class $ResponseEmbedding {
  /// Embedding vector values.
  core.List<core.double>? values;

  $ResponseEmbedding({this.values});

  $ResponseEmbedding.fromJson(core.Map json_)
    : this(
        values: (json_['values'] as core.List?)
            ?.map((value) => (value as core.num).toDouble())
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final values = this.values;
    return {'values': ?values};
  }
}

/// Used by:
///
/// - searchads360:v23 : GoogleAdsSearchads360V23Services__MutateAccountBudgetProposalResult
/// - searchads360:v23 : GoogleAdsSearchads360V23Services__MutateAccountLinkResult
/// - searchads360:v23 : GoogleAdsSearchads360V23Services__MutateAdGroupAdLabelResult
/// - searchads360:v23 : GoogleAdsSearchads360V23Services__MutateAdGroupCriterionLabelResult
/// - searchads360:v23 : GoogleAdsSearchads360V23Services__MutateAdGroupLabelResult
/// - searchads360:v23 : GoogleAdsSearchads360V23Services__MutateAssetGroupAssetResult
/// - searchads360:v23 : GoogleAdsSearchads360V23Services__MutateAssetGroupResult
/// - searchads360:v23 : GoogleAdsSearchads360V23Services__MutateBillingSetupResult
/// - searchads360:v23 : GoogleAdsSearchads360V23Services__MutateCampaignConversionGoalResult
/// - searchads360:v23 : GoogleAdsSearchads360V23Services__MutateCampaignGoalConfigResult
/// - searchads360:v23 : GoogleAdsSearchads360V23Services__MutateCampaignLabelResult
/// - searchads360:v23 : GoogleAdsSearchads360V23Services__MutateCustomAudienceResult
/// - searchads360:v23 : GoogleAdsSearchads360V23Services__MutateCustomInterestResult
/// - searchads360:v23 : GoogleAdsSearchads360V23Services__MutateCustomerClientLinkResult
/// - searchads360:v23 : GoogleAdsSearchads360V23Services__MutateCustomerConversionGoalResult
/// - searchads360:v23 : GoogleAdsSearchads360V23Services__MutateCustomerLabelResult
/// - searchads360:v23 : GoogleAdsSearchads360V23Services__MutateCustomerManagerLinkResult
/// - searchads360:v23 : GoogleAdsSearchads360V23Services__MutateCustomerUserAccessInvitationResult
/// - searchads360:v23 : GoogleAdsSearchads360V23Services__MutateCustomerUserAccessResult
/// - searchads360:v23 : GoogleAdsSearchads360V23Services__MutateExperimentResult
/// - searchads360:v23 : GoogleAdsSearchads360V23Services__MutateGoalResult
/// - searchads360:v23 : GoogleAdsSearchads360V23Services__MutateKeywordPlanAdGroupKeywordResult
/// - searchads360:v23 : GoogleAdsSearchads360V23Services__MutateKeywordPlanAdGroupResult
/// - searchads360:v23 : GoogleAdsSearchads360V23Services__MutateKeywordPlanCampaignKeywordResult
/// - searchads360:v23 : GoogleAdsSearchads360V23Services__MutateKeywordPlanCampaignResult
/// - searchads360:v23 : GoogleAdsSearchads360V23Services__MutateKeywordPlansResult
/// - searchads360:v23 : GoogleAdsSearchads360V23Services__MutateRemarketingActionResult
/// - searchads360:v23 : GoogleAdsSearchads360V23Services__MutateUserListCustomerTypeResult
/// - searchads360:v23 : GoogleAdsSearchads360V23Services__MutateUserListResult
class $Result00 {
  /// Returned for successful operations.
  core.String? resourceName;

  $Result00({this.resourceName});

  $Result00.fromJson(core.Map json_)
    : this(resourceName: json_['resourceName'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final resourceName = this.resourceName;
    return {'resourceName': ?resourceName};
  }
}

/// Used by:
///
/// - containeranalysis:v1 : MalwareScanResult
/// - containeranalysis:v1 : WorkspacePolicyResult
/// - ondemandscanning:v1 : MalwareScanResult
/// - ondemandscanning:v1 : WorkspacePolicyResult
class $Result01 {
  /// Status of the scan.
  /// Possible string values are:
  /// - "SCAN_STATUS_UNSPECIFIED" : Unspecified scan status.
  /// - "PERFORMED" : Scan was performed.
  /// - "NOT_PERFORMED" : Scan was not performed.
  core.String? scanStatus;

  /// Verdict of the scan.
  /// Possible string values are:
  /// - "VERDICT_UNSPECIFIED" : Unspecified verdict.
  /// - "PASSED" : Scanner passed.
  /// - "FAILED" : Scanner failed.
  core.String? verdict;

  $Result01({this.scanStatus, this.verdict});

  $Result01.fromJson(core.Map json_)
    : this(
        scanStatus: json_['scanStatus'] as core.String?,
        verdict: json_['verdict'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final scanStatus = this.scanStatus;
    final verdict = this.verdict;
    return {'scanStatus': ?scanStatus, 'verdict': ?verdict};
  }
}

/// Used by:
///
/// - dataplex:v1 : GoogleCloudDataplexV1DataProfileResultPostScanActionsResultBigQueryExportResult
/// - dataplex:v1 : GoogleCloudDataplexV1DataQualityResultPostScanActionsResultBigQueryExportResult
class $ResultPostScanActionsResultBigQueryExportResult {
  /// Additional information about the BigQuery exporting.
  ///
  /// Output only.
  core.String? message;

  /// Execution state for the BigQuery exporting.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The exporting state is unspecified.
  /// - "SUCCEEDED" : The exporting completed successfully.
  /// - "FAILED" : The exporting is no longer running due to an error.
  /// - "SKIPPED" : The exporting is skipped due to no valid scan result to
  /// export (usually caused by scan failed).
  core.String? state;

  $ResultPostScanActionsResultBigQueryExportResult({this.message, this.state});

  $ResultPostScanActionsResultBigQueryExportResult.fromJson(core.Map json_)
    : this(
        message: json_['message'] as core.String?,
        state: json_['state'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final message = this.message;
    final state = this.state;
    return {'message': ?message, 'state': ?state};
  }
}

/// Used by:
///
/// - analyticshub:v1 : RetryPolicy
/// - pubsub:v1 : RetryPolicy
class $RetryPolicy {
  /// The maximum delay between consecutive deliveries of a given message.
  ///
  /// Value should be between 0 and 600 seconds. Defaults to 600 seconds.
  ///
  /// Optional.
  core.String? maximumBackoff;

  /// The minimum delay between consecutive deliveries of a given message.
  ///
  /// Value should be between 0 and 600 seconds. Defaults to 10 seconds.
  ///
  /// Optional.
  core.String? minimumBackoff;

  $RetryPolicy({this.maximumBackoff, this.minimumBackoff});

  $RetryPolicy.fromJson(core.Map json_)
    : this(
        maximumBackoff: json_['maximumBackoff'] as core.String?,
        minimumBackoff: json_['minimumBackoff'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final maximumBackoff = this.maximumBackoff;
    final minimumBackoff = this.minimumBackoff;
    return {
      'maximumBackoff': ?maximumBackoff,
      'minimumBackoff': ?minimumBackoff,
    };
  }
}

/// Used by:
///
/// - docs:v1 : RgbColor
/// - slides:v1 : RgbColor
class $RgbColor {
  /// The blue component of the color, from 0.0 to 1.0.
  core.double? blue;

  /// The green component of the color, from 0.0 to 1.0.
  core.double? green;

  /// The red component of the color, from 0.0 to 1.0.
  core.double? red;

  $RgbColor({this.blue, this.green, this.red});

  $RgbColor.fromJson(core.Map json_)
    : this(
        blue: (json_['blue'] as core.num?)?.toDouble(),
        green: (json_['green'] as core.num?)?.toDouble(),
        red: (json_['red'] as core.num?)?.toDouble(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final blue = this.blue;
    final green = this.green;
    final red = this.red;
    return {'blue': ?blue, 'green': ?green, 'red': ?red};
  }
}

/// Used by:
///
/// - container:v1 : RotationConfig
/// - container:v1 : SyncRotationConfig
class $RotationConfig {
  /// Whether the rotation is enabled.
  core.bool? enabled;

  /// The interval between two consecutive rotations.
  ///
  /// Default rotation interval is 2 minutes.
  core.String? rotationInterval;

  $RotationConfig({this.enabled, this.rotationInterval});

  $RotationConfig.fromJson(core.Map json_)
    : this(
        enabled: json_['enabled'] as core.bool?,
        rotationInterval: json_['rotationInterval'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final enabled = this.enabled;
    final rotationInterval = this.rotationInterval;
    return {'enabled': ?enabled, 'rotationInterval': ?rotationInterval};
  }
}

/// Used by:
///
/// - networkservices:v1 : GrpcRouteFaultInjectionPolicyAbort
/// - networkservices:v1 : HttpRouteFaultInjectionPolicyAbort
class $RouteFaultInjectionPolicyAbort {
  /// The HTTP status code used to abort the request.
  ///
  /// The value must be between 200 and 599 inclusive.
  core.int? httpStatus;

  /// The percentage of traffic which will be aborted.
  ///
  /// The value must be between \[0, 100\]
  core.int? percentage;

  $RouteFaultInjectionPolicyAbort({this.httpStatus, this.percentage});

  $RouteFaultInjectionPolicyAbort.fromJson(core.Map json_)
    : this(
        httpStatus: json_['httpStatus'] as core.int?,
        percentage: json_['percentage'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final httpStatus = this.httpStatus;
    final percentage = this.percentage;
    return {'httpStatus': ?httpStatus, 'percentage': ?percentage};
  }
}

/// Used by:
///
/// - networkservices:v1 : GrpcRouteFaultInjectionPolicyDelay
/// - networkservices:v1 : HttpRouteFaultInjectionPolicyDelay
class $RouteFaultInjectionPolicyDelay {
  /// Specify a fixed delay before forwarding the request.
  core.String? fixedDelay;

  /// The percentage of traffic on which delay will be injected.
  ///
  /// The value must be between \[0, 100\]
  core.int? percentage;

  $RouteFaultInjectionPolicyDelay({this.fixedDelay, this.percentage});

  $RouteFaultInjectionPolicyDelay.fromJson(core.Map json_)
    : this(
        fixedDelay: json_['fixedDelay'] as core.String?,
        percentage: json_['percentage'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final fixedDelay = this.fixedDelay;
    final percentage = this.percentage;
    return {'fixedDelay': ?fixedDelay, 'percentage': ?percentage};
  }
}

/// Used by:
///
/// - networkservices:v1 : GrpcRouteStatefulSessionAffinityPolicy
/// - networkservices:v1 : HttpRouteStatefulSessionAffinityPolicy
class $RouteStatefulSessionAffinityPolicy {
  /// The cookie TTL value for the Set-Cookie header generated by the data
  /// plane.
  ///
  /// The lifetime of the cookie may be set to a value from 0 to 86400 seconds
  /// (24 hours) inclusive. Set this to 0s to use a session cookie and disable
  /// cookie expiration.
  ///
  /// Required.
  core.String? cookieTtl;

  $RouteStatefulSessionAffinityPolicy({this.cookieTtl});

  $RouteStatefulSessionAffinityPolicy.fromJson(core.Map json_)
    : this(cookieTtl: json_['cookieTtl'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final cookieTtl = this.cookieTtl;
    return {'cookieTtl': ?cookieTtl};
  }
}

/// Used by:
///
/// - containeranalysis:v1 : SBOMStatus
/// - ondemandscanning:v1 : SBOMStatus
class $SBOMStatus {
  /// If there was an error generating an SBOM, this will indicate what that
  /// error was.
  core.String? error;

  /// The progress of the SBOM generation.
  /// Possible string values are:
  /// - "SBOM_STATE_UNSPECIFIED" : Default unknown state.
  /// - "PENDING" : SBOM scanning is pending.
  /// - "COMPLETE" : SBOM scanning has completed.
  core.String? sbomState;

  $SBOMStatus({this.error, this.sbomState});

  $SBOMStatus.fromJson(core.Map json_)
    : this(
        error: json_['error'] as core.String?,
        sbomState: json_['sbomState'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final error = this.error;
    final sbomState = this.sbomState;
    return {'error': ?error, 'sbomState': ?sbomState};
  }
}

/// Used by:
///
/// - containeranalysis:v1 : SbomReferenceIntotoPredicate
/// - ondemandscanning:v1 : SbomReferenceIntotoPredicate
class $SbomReferenceIntotoPredicate {
  /// A map of algorithm to digest of the contents of the SBOM.
  core.Map<core.String, core.String>? digest;

  /// The location of the SBOM.
  core.String? location;

  /// The mime type of the SBOM.
  core.String? mimeType;

  /// The person or system referring this predicate to the consumer.
  core.String? referrerId;

  $SbomReferenceIntotoPredicate({
    this.digest,
    this.location,
    this.mimeType,
    this.referrerId,
  });

  $SbomReferenceIntotoPredicate.fromJson(core.Map json_)
    : this(
        digest: (json_['digest'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        location: json_['location'] as core.String?,
        mimeType: json_['mimeType'] as core.String?,
        referrerId: json_['referrerId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final digest = this.digest;
    final location = this.location;
    final mimeType = this.mimeType;
    final referrerId = this.referrerId;
    return {
      'digest': ?digest,
      'location': ?location,
      'mimeType': ?mimeType,
      'referrerId': ?referrerId,
    };
  }
}

/// Used by:
///
/// - containeranalysis:v1 : SecretStatus
/// - ondemandscanning:v1 : SecretStatus
class $SecretStatus {
  /// Optional message about the status code.
  ///
  /// Optional.
  core.String? message;

  /// The status of the secret.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "STATUS_UNSPECIFIED" : Unspecified
  /// - "UNKNOWN" : The status of the secret is unknown.
  /// - "VALID" : The secret is valid.
  /// - "INVALID" : The secret is invalid.
  core.String? status;

  /// The time the secret status was last updated.
  ///
  /// Optional.
  core.String? updateTime;

  $SecretStatus({this.message, this.status, this.updateTime});

  $SecretStatus.fromJson(core.Map json_)
    : this(
        message: json_['message'] as core.String?,
        status: json_['status'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final message = this.message;
    final status = this.status;
    final updateTime = this.updateTime;
    return {'message': ?message, 'status': ?status, 'updateTime': ?updateTime};
  }
}

/// Used by:
///
/// - secretmanager:v1 : DestroySecretVersionRequest
/// - secretmanager:v1 : DisableSecretVersionRequest
/// - secretmanager:v1 : EnableSecretVersionRequest
class $SecretVersionRequest {
  /// Etag of the SecretVersion.
  ///
  /// The request succeeds if it matches the etag of the currently stored secret
  /// version object. If the etag is omitted, the request succeeds.
  ///
  /// Optional.
  core.String? etag;

  $SecretVersionRequest({this.etag});

  $SecretVersionRequest.fromJson(core.Map json_)
    : this(etag: json_['etag'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final etag = this.etag;
    return {'etag': ?etag};
  }
}

/// Used by:
///
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3ToolAuthenticationServiceAccountAuthConfig
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3WebhookGenericWebServiceServiceAccountAuthConfig
class $ServiceAccountAuthConfig {
  core.String? serviceAccount;

  $ServiceAccountAuthConfig({this.serviceAccount});

  $ServiceAccountAuthConfig.fromJson(core.Map json_)
    : this(serviceAccount: json_['serviceAccount'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final serviceAccount = this.serviceAccount;
    return {'serviceAccount': ?serviceAccount};
  }
}

/// Used by:
///
/// - cloudbuild:v2 : GoogleDevtoolsCloudbuildV2ServiceDirectoryConfig
/// - developerconnect:v1 : ServiceDirectoryConfig
class $ServiceDirectoryConfig {
  /// The Service Directory service name.
  ///
  /// Format:
  /// projects/{project}/locations/{location}/namespaces/{namespace}/services/{service}.
  ///
  /// Required.
  core.String? service;

  $ServiceDirectoryConfig({this.service});

  $ServiceDirectoryConfig.fromJson(core.Map json_)
    : this(service: json_['service'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final service = this.service;
    return {'service': ?service};
  }
}

/// Used by:
///
/// - compute:v1 : RegionSetLabelsRequest
/// - compute:v1 : ZoneSetLabelsRequest
class $SetLabelsRequest {
  /// The fingerprint of the previous set of labels for this resource,
  /// used to detect conflicts.
  ///
  /// The fingerprint is initially generated by Compute
  /// Engine and changes after every request to modify or update labels. You
  /// must
  /// always provide an up-to-date fingerprint hash in order to update or change
  /// labels. Make a get() request to the resource to get the latest
  /// fingerprint.
  core.String? labelFingerprint;
  core.List<core.int> get labelFingerprintAsBytes =>
      convert.base64.decode(labelFingerprint!);

  set labelFingerprintAsBytes(core.List<core.int> bytes_) {
    labelFingerprint = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  /// The labels to set for this resource.
  core.Map<core.String, core.String>? labels;

  $SetLabelsRequest({this.labelFingerprint, this.labels});

  $SetLabelsRequest.fromJson(core.Map json_)
    : this(
        labelFingerprint: json_['labelFingerprint'] as core.String?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final labelFingerprint = this.labelFingerprint;
    final labels = this.labels;
    return {'labelFingerprint': ?labelFingerprint, 'labels': ?labels};
  }
}

/// Used by:
///
/// - compute:v1 : ShareSettingsProjectConfig
/// - compute:v1 : StoragePoolShareSettingsProjectConfig
class $ShareSettingsProjectConfig {
  /// The project ID, should be same as the key of this project config in the
  /// parent map.
  core.String? projectId;

  $ShareSettingsProjectConfig({this.projectId});

  $ShareSettingsProjectConfig.fromJson(core.Map json_)
    : this(projectId: json_['projectId'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final projectId = this.projectId;
    return {'projectId': ?projectId};
  }
}

/// Used by:
///
/// - chromepolicy:v1 : Proto2OneofDescriptorProto
/// - dialogflow:v2 : GoogleCloudDialogflowV2ToolExtensionTool
/// - securitycenter:v1 : AdcApplicationTemplateRevision
/// - securitycenter:v1 : AdcSharedTemplateRevision
/// - securitycenter:v1 : Disk
/// - securitycenter:v1 : LoadBalancer
/// - securitycenter:v1 : Network
/// - securitycenter:v1 : Node
/// - securitycenter:v1 : OrgPolicy
/// - securitycenter:v1 : ResourceValueConfigMetadata
class $Shared00 {
  core.String? name;

  $Shared00({this.name});

  $Shared00.fromJson(core.Map json_)
    : this(name: json_['name'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final name = this.name;
    return {'name': ?name};
  }
}

/// Used by:
///
/// - aiplatform:v1 : GenaiVertexV1TextDelta
/// - chat:v1 : TextParagraph
/// - dialogflow:v2 : GoogleCloudDialogflowV2FreeFormContext
/// - dialogflow:v2 : GoogleCloudDialogflowV2IntentMessageTableCardCell
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3AgentUtterance
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3Phrase
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3TextInput
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3UserUtterance
class $Shared01 {
  core.String? text;

  $Shared01({this.text});

  $Shared01.fromJson(core.Map json_)
    : this(text: json_['text'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final text = this.text;
    return {'text': ?text};
  }
}

/// Used by:
///
/// - containeranalysis:v1 : BuilderConfig
/// - containeranalysis:v1 : GrafeasV1SlsaProvenanceZeroTwoSlsaBuilder
/// - containeranalysis:v1 : SlsaBuilder
/// - ondemandscanning:v1 : BuilderConfig
/// - ondemandscanning:v1 : GrafeasV1SlsaProvenanceZeroTwoSlsaBuilder
/// - ondemandscanning:v1 : SlsaBuilder
/// - securitycenter:v1 : AwsOrganization
/// - youtube:v3 : AbuseType
class $Shared02 {
  core.String? id;

  $Shared02({this.id});

  $Shared02.fromJson(core.Map json_) : this(id: json_['id'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final id = this.id;
    return {'id': ?id};
  }
}

/// Used by:
///
/// - aiplatform:v1 : GoogleCloudAiplatformV1AudioTranscriptionConfigLanguageAuto
/// - androidpublisher:v3 : ArchiveSubscriptionRequest
/// - bigtableadmin:v2 : GoogleBigtableAdminV2TypeStringEncodingUtf8Raw
/// - cloudchannel:v1 : GoogleCloudChannelV1RepricingConfigChannelPartnerGranularity
/// - driveactivity:v2 : File
/// - run:v2 : Proto2BridgeMessageSet
class $Shared03 {
  $Shared03();

  $Shared03.fromJson(
    // ignore: avoid_unused_constructor_parameters
    core.Map json_,
  );

  core.Map<core.String, core.dynamic> toJson() => {};
}

/// Used by:
///
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3GeneratorPlaceholder
/// - securitycenter:v1 : AwsAccount
/// - securitycenter:v1 : AwsOrganizationalUnit
/// - securitycenter:v1 : AzureResourceGroup
class $Shared04 {
  core.String? id;
  core.String? name;

  $Shared04({this.id, this.name});

  $Shared04.fromJson(core.Map json_)
    : this(
        id: json_['id'] as core.String?,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final id = this.id;
    final name = this.name;
    return {'id': ?id, 'name': ?name};
  }
}

/// Used by:
///
/// - osconfig:v2 : OSPolicyResourcePackageResourceAPT
/// - osconfig:v2 : OSPolicyResourcePackageResourceGooGet
/// - osconfig:v2 : OSPolicyResourcePackageResourceYUM
/// - osconfig:v2 : OSPolicyResourcePackageResourceZypper
class $Shared05 {
  /// Package name.
  ///
  /// Required.
  core.String? name;

  $Shared05({this.name});

  $Shared05.fromJson(core.Map json_)
    : this(name: json_['name'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final name = this.name;
    return {'name': ?name};
  }
}

/// Used by:
///
/// - securitycenter:v1 : Agent
/// - securitycenter:v1 : AzureManagementGroup
/// - securitycenter:v1 : AzureSubscription
/// - securitycenter:v1 : AzureTenant
class $Shared06 {
  core.String? displayName;
  core.String? id;

  $Shared06({this.displayName, this.id});

  $Shared06.fromJson(core.Map json_)
    : this(
        displayName: json_['displayName'] as core.String?,
        id: json_['id'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final displayName = this.displayName;
    final id = this.id;
    return {'displayName': ?displayName, 'id': ?id};
  }
}

/// Used by:
///
/// - apigee:v1 : GoogleCloudApigeeV1AccessGet
/// - dialogflow:v2 : GoogleCloudDialogflowV2ConversationTelephonyConnectionInfoSipHeader
/// - securitycenter:v1 : Label
class $Shared07 {
  core.String? name;
  core.String? value;

  $Shared07({this.name, this.value});

  $Shared07.fromJson(core.Map json_)
    : this(
        name: json_['name'] as core.String?,
        value: json_['value'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final name = this.name;
    final value = this.value;
    return {'name': ?name, 'value': ?value};
  }
}

/// Used by:
///
/// - dialogflow:v2 : GoogleCloudDialogflowV2ConversationInfo
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3ValidateAgentRequest
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3ValidateFlowRequest
class $Shared08 {
  core.String? languageCode;

  $Shared08({this.languageCode});

  $Shared08.fromJson(core.Map json_)
    : this(languageCode: json_['languageCode'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final languageCode = this.languageCode;
    return {'languageCode': ?languageCode};
  }
}

/// Used by:
///
/// - dialogflow:v2 : GoogleCloudDialogflowV2GcsDestination
/// - dialogflow:v2 : GoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenUriAction
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3GcsDestination
class $Shared09 {
  core.String? uri;

  $Shared09({this.uri});

  $Shared09.fromJson(core.Map json_) : this(uri: json_['uri'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final uri = this.uri;
    return {'uri': ?uri};
  }
}

/// Used by:
///
/// - dialogflow:v2 : GoogleCloudDialogflowV2ResponseMessageLiveAgentHandoff
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3ResponseMessageConversationSuccess
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3ResponseMessageLiveAgentHandoff
class $Shared10 {
  ///
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? metadata;

  $Shared10({this.metadata});

  $Shared10.fromJson(core.Map json_)
    : this(
        metadata: json_.containsKey('metadata')
            ? json_['metadata'] as core.Map<core.String, core.dynamic>
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final metadata = this.metadata;
    return {'metadata': ?metadata};
  }
}

/// Used by:
///
/// - aiplatform:v1 : GenaiVertexV1GoogleSearchResultContentGoogleSearchResult
/// - aiplatform:v1 : GenaiVertexV1GoogleSearchResultStepGoogleSearchResultItem
class $Shared11 {
  /// Web content snippet that can be embedded in a web page or an app webview.
  core.String? searchSuggestions;

  $Shared11({this.searchSuggestions});

  $Shared11.fromJson(core.Map json_)
    : this(searchSuggestions: json_['searchSuggestions'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final searchSuggestions = this.searchSuggestions;
    return {'searchSuggestions': ?searchSuggestions};
  }
}

/// Used by:
///
/// - aiplatform:v1 : GenaiVertexV1RetrievalResultDelta
/// - aiplatform:v1 : GenaiVertexV1RetrievalResultStep
class $Shared12 {
  /// Whether the retrieval resulted in an error.
  core.bool? isError;

  $Shared12({this.isError});

  $Shared12.fromJson(core.Map json_)
    : this(isError: json_['isError'] as core.bool?);

  core.Map<core.String, core.dynamic> toJson() {
    final isError = this.isError;
    return {'isError': ?isError};
  }
}

/// Used by:
///
/// - compute:v1 : InstancesSetServiceAccountRequest
/// - compute:v1 : ServiceAccount
class $Shared13 {
  /// Email address of the service account.
  core.String? email;

  /// The list of scopes to be made available for this service account.
  core.List<core.String>? scopes;

  $Shared13({this.email, this.scopes});

  $Shared13.fromJson(core.Map json_)
    : this(
        email: json_['email'] as core.String?,
        scopes: (json_['scopes'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final email = this.email;
    final scopes = this.scopes;
    return {'email': ?email, 'scopes': ?scopes};
  }
}

/// Used by:
///
/// - contactcenterinsights:v1 : GoogleCloudContactcenterinsightsV1ExportIssueModelRequestGcsDestination
/// - contactcenterinsights:v1 : GoogleCloudContactcenterinsightsV1ImportIssueModelRequestGcsSource
class $Shared14 {
  /// Format: `gs:///`
  ///
  /// Required.
  core.String? objectUri;

  $Shared14({this.objectUri});

  $Shared14.fromJson(core.Map json_)
    : this(objectUri: json_['objectUri'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final objectUri = this.objectUri;
    return {'objectUri': ?objectUri};
  }
}

/// Used by:
///
/// - dataform:v1 : ReadRepositoryFileResponse
/// - dataform:v1 : WriteFile
class $Shared15 {
  /// The file's contents.
  core.String? contents;
  core.List<core.int> get contentsAsBytes => convert.base64.decode(contents!);

  set contentsAsBytes(core.List<core.int> bytes_) {
    contents = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  $Shared15({this.contents});

  $Shared15.fromJson(core.Map json_)
    : this(contents: json_['contents'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final contents = this.contents;
    return {'contents': ?contents};
  }
}

/// Used by:
///
/// - dialogflow:v2 : GoogleCloudDialogflowV2GeneratorEvaluationConfigDatasetInputDataConfig
/// - dialogflow:v2 : GoogleCloudDialogflowV2InputDataset
class $Shared16 {
  core.String? dataset;

  $Shared16({this.dataset});

  $Shared16.fromJson(core.Map json_)
    : this(dataset: json_['dataset'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final dataset = this.dataset;
    return {'dataset': ?dataset};
  }
}

/// Used by:
///
/// - dialogflow:v2 : GoogleCloudDialogflowV2Sentiment
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3SentimentAnalysisResult
class $Shared17 {
  core.double? magnitude;
  core.double? score;

  $Shared17({this.magnitude, this.score});

  $Shared17.fromJson(core.Map json_)
    : this(
        magnitude: (json_['magnitude'] as core.num?)?.toDouble(),
        score: (json_['score'] as core.num?)?.toDouble(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final magnitude = this.magnitude;
    final score = this.score;
    return {'magnitude': ?magnitude, 'score': ?score};
  }
}

/// Used by:
///
/// - dialogflow:v2 : GoogleCloudDialogflowV2TextInput
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3SafetySettingsPhrase
class $Shared18 {
  core.String? languageCode;
  core.String? text;

  $Shared18({this.languageCode, this.text});

  $Shared18.fromJson(core.Map json_)
    : this(
        languageCode: json_['languageCode'] as core.String?,
        text: json_['text'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final languageCode = this.languageCode;
    final text = this.text;
    return {'languageCode': ?languageCode, 'text': ?text};
  }
}

/// Used by:
///
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3EntityTypeExcludedPhrase
/// - youtube:v3 : LanguageTag
class $Shared19 {
  core.String? value;

  $Shared19({this.value});

  $Shared19.fromJson(core.Map json_)
    : this(value: json_['value'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final value = this.value;
    return {'value': ?value};
  }
}

/// Used by:
///
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3FlowTraceMetadata
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3FlowTransition
class $Shared20 {
  core.String? displayName;
  core.String? flow;

  $Shared20({this.displayName, this.flow});

  $Shared20.fromJson(core.Map json_)
    : this(
        displayName: json_['displayName'] as core.String?,
        flow: json_['flow'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final displayName = this.displayName;
    final flow = this.flow;
    return {'displayName': ?displayName, 'flow': ?flow};
  }
}

/// Used by:
///
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3PlaybookTraceMetadata
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3PlaybookTransition
class $Shared21 {
  core.String? displayName;
  core.String? playbook;

  $Shared21({this.displayName, this.playbook});

  $Shared21.fromJson(core.Map json_)
    : this(
        displayName: json_['displayName'] as core.String?,
        playbook: json_['playbook'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final displayName = this.displayName;
    final playbook = this.playbook;
    return {'displayName': ?displayName, 'playbook': ?playbook};
  }
}

/// Used by:
///
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3ResourceName
/// - securitycenter:v1 : Pipeline
class $Shared22 {
  core.String? displayName;
  core.String? name;

  $Shared22({this.displayName, this.name});

  $Shared22.fromJson(core.Map json_)
    : this(
        displayName: json_['displayName'] as core.String?,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final displayName = this.displayName;
    final name = this.name;
    return {'displayName': ?displayName, 'name': ?name};
  }
}

/// Used by:
///
/// - gkehub:v2 : ConfigManagementPolicyControllerMonitoring
/// - gkehub:v2 : PolicyControllerMonitoringConfig
class $Shared23 {
  /// Specifies the list of backends Policy Controller will export to.
  ///
  /// An empty list would effectively disable metrics export.
  core.List<core.String>? backends;

  $Shared23({this.backends});

  $Shared23.fromJson(core.Map json_)
    : this(
        backends: (json_['backends'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final backends = this.backends;
    return {'backends': ?backends};
  }
}

/// Used by:
///
/// - osconfig:v2 : OSPolicyAssignmentInstanceFilterInventory
/// - osconfig:v2 : OSPolicyInventoryFilter
class $Shared24 {
  /// The OS short name
  ///
  /// Required.
  core.String? osShortName;

  /// The OS version Prefix matches are supported if asterisk(*) is provided as
  /// the last character.
  ///
  /// For example, to match all versions with a major version of `7`, specify
  /// the following value for this field `7.*` An empty string matches all OS
  /// versions.
  core.String? osVersion;

  $Shared24({this.osShortName, this.osVersion});

  $Shared24.fromJson(core.Map json_)
    : this(
        osShortName: json_['osShortName'] as core.String?,
        osVersion: json_['osVersion'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final osShortName = this.osShortName;
    final osVersion = this.osVersion;
    return {'osShortName': ?osShortName, 'osVersion': ?osVersion};
  }
}

/// Used by:
///
/// - searchads360:v23 : GoogleAdsSearchads360V23Common__ProductBrandInfo
/// - searchads360:v23 : GoogleAdsSearchads360V23Resources_ListingGroupFilterDimension_ProductBrand
class $Shared25 {
  /// String value of the product brand.
  core.String? value;

  $Shared25({this.value});

  $Shared25.fromJson(core.Map json_)
    : this(value: json_['value'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final value = this.value;
    return {'value': ?value};
  }
}

/// Used by:
///
/// - searchads360:v23 : GoogleAdsSearchads360V23Common__ProductChannelInfo
/// - searchads360:v23 : GoogleAdsSearchads360V23Resources_ListingGroupFilterDimension_ProductChannel
class $Shared26 {
  /// Value of the locality.
  /// Possible string values are:
  /// - "UNSPECIFIED" : Not specified.
  /// - "UNKNOWN" : Used for return value only. Represents value unknown in this
  /// version.
  /// - "ONLINE" : The item is sold online.
  /// - "LOCAL" : The item is sold in local stores.
  core.String? channel;

  $Shared26({this.channel});

  $Shared26.fromJson(core.Map json_)
    : this(channel: json_['channel'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final channel = this.channel;
    return {'channel': ?channel};
  }
}

/// Used by:
///
/// - searchads360:v23 : GoogleAdsSearchads360V23Common__ProductConditionInfo
/// - searchads360:v23 : GoogleAdsSearchads360V23Resources_ListingGroupFilterDimension_ProductCondition
class $Shared27 {
  /// Value of the condition.
  /// Possible string values are:
  /// - "UNSPECIFIED" : Not specified.
  /// - "UNKNOWN" : Used for return value only. Represents value unknown in this
  /// version.
  /// - "NEW" : The product condition is new.
  /// - "REFURBISHED" : The product condition is refurbished.
  /// - "USED" : The product condition is used.
  core.String? condition;

  $Shared27({this.condition});

  $Shared27.fromJson(core.Map json_)
    : this(condition: json_['condition'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final condition = this.condition;
    return {'condition': ?condition};
  }
}

/// Used by:
///
/// - searchads360:v23 : GoogleAdsSearchads360V23Common__ProductItemIdInfo
/// - searchads360:v23 : GoogleAdsSearchads360V23Resources_ListingGroupFilterDimension_ProductItemId
class $Shared28 {
  /// Value of the id.
  core.String? value;

  $Shared28({this.value});

  $Shared28.fromJson(core.Map json_)
    : this(value: json_['value'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final value = this.value;
    return {'value': ?value};
  }
}

/// Used by:
///
/// - searchads360:v23 : GoogleAdsSearchads360V23Common__ProductTypeInfo
/// - searchads360:v23 : GoogleAdsSearchads360V23Resources_ListingGroupFilterDimension_ProductType
class $Shared29 {
  /// Level of the type.
  /// Possible string values are:
  /// - "UNSPECIFIED" : Not specified.
  /// - "UNKNOWN" : Used for return value only. Represents value unknown in this
  /// version.
  /// - "LEVEL1" : Level 1.
  /// - "LEVEL2" : Level 2.
  /// - "LEVEL3" : Level 3.
  /// - "LEVEL4" : Level 4.
  /// - "LEVEL5" : Level 5.
  core.String? level;

  /// Value of the type.
  core.String? value;

  $Shared29({this.level, this.value});

  $Shared29.fromJson(core.Map json_)
    : this(
        level: json_['level'] as core.String?,
        value: json_['value'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final level = this.level;
    final value = this.value;
    return {'level': ?level, 'value': ?value};
  }
}

/// Used by:
///
/// - securitycenter:v1 : Contact
/// - securitycenter:v1 : GoogleCloudSecuritycenterV1ResourceApplicationAttributesContactInfo
class $Shared30 {
  core.String? email;

  $Shared30({this.email});

  $Shared30.fromJson(core.Map json_)
    : this(email: json_['email'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final email = this.email;
    return {'email': ?email};
  }
}

/// Used by:
///
/// - securitycenter:v1 : TestIamPermissionsRequest
/// - securitycenter:v1 : TestIamPermissionsResponse
class $Shared31 {
  core.List<core.String>? permissions;

  $Shared31({this.permissions});

  $Shared31.fromJson(core.Map json_)
    : this(
        permissions: (json_['permissions'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final permissions = this.permissions;
    return {'permissions': ?permissions};
  }
}

/// Used by:
///
/// - vmwareengine:v1 : Nsx
/// - vmwareengine:v1 : Vcenter
class $Shared32 {
  /// Fully qualified domain name of the appliance.
  core.String? fqdn;

  /// Internal IP address of the appliance.
  core.String? internalIp;

  /// The state of the appliance.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Unspecified appliance state. This is the default
  /// value.
  /// - "ACTIVE" : The appliance is operational and can be used.
  /// - "CREATING" : The appliance is being deployed.
  core.String? state;

  /// Version of the appliance.
  core.String? version;

  $Shared32({this.fqdn, this.internalIp, this.state, this.version});

  $Shared32.fromJson(core.Map json_)
    : this(
        fqdn: json_['fqdn'] as core.String?,
        internalIp: json_['internalIp'] as core.String?,
        state: json_['state'] as core.String?,
        version: json_['version'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final fqdn = this.fqdn;
    final internalIp = this.internalIp;
    final state = this.state;
    final version = this.version;
    return {
      'fqdn': ?fqdn,
      'internalIp': ?internalIp,
      'state': ?state,
      'version': ?version,
    };
  }
}

/// Used by:
///
/// - workloadmanager:v1 : Product
/// - workloadmanager:v1 : SapDiscoveryWorkloadPropertiesProductVersion
class $Shared33 {
  /// Name of the product.
  ///
  /// Optional.
  core.String? name;

  /// Version of the product.
  ///
  /// Optional.
  core.String? version;

  $Shared33({this.name, this.version});

  $Shared33.fromJson(core.Map json_)
    : this(
        name: json_['name'] as core.String?,
        version: json_['version'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final name = this.name;
    final version = this.version;
    return {'name': ?name, 'version': ?version};
  }
}

/// Used by:
///
/// - dataproc:v1 : ShufflePushReadMetrics
/// - dataproc:v1 : StageShufflePushReadMetrics
class $ShufflePushReadMetrics {
  core.String? corruptMergedBlockChunks;
  core.String? localMergedBlocksFetched;
  core.String? localMergedBytesRead;
  core.String? localMergedChunksFetched;
  core.String? mergedFetchFallbackCount;
  core.String? remoteMergedBlocksFetched;
  core.String? remoteMergedBytesRead;
  core.String? remoteMergedChunksFetched;
  core.String? remoteMergedReqsDuration;

  $ShufflePushReadMetrics({
    this.corruptMergedBlockChunks,
    this.localMergedBlocksFetched,
    this.localMergedBytesRead,
    this.localMergedChunksFetched,
    this.mergedFetchFallbackCount,
    this.remoteMergedBlocksFetched,
    this.remoteMergedBytesRead,
    this.remoteMergedChunksFetched,
    this.remoteMergedReqsDuration,
  });

  $ShufflePushReadMetrics.fromJson(core.Map json_)
    : this(
        corruptMergedBlockChunks:
            json_['corruptMergedBlockChunks'] as core.String?,
        localMergedBlocksFetched:
            json_['localMergedBlocksFetched'] as core.String?,
        localMergedBytesRead: json_['localMergedBytesRead'] as core.String?,
        localMergedChunksFetched:
            json_['localMergedChunksFetched'] as core.String?,
        mergedFetchFallbackCount:
            json_['mergedFetchFallbackCount'] as core.String?,
        remoteMergedBlocksFetched:
            json_['remoteMergedBlocksFetched'] as core.String?,
        remoteMergedBytesRead: json_['remoteMergedBytesRead'] as core.String?,
        remoteMergedChunksFetched:
            json_['remoteMergedChunksFetched'] as core.String?,
        remoteMergedReqsDuration:
            json_['remoteMergedReqsDuration'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final corruptMergedBlockChunks = this.corruptMergedBlockChunks;
    final localMergedBlocksFetched = this.localMergedBlocksFetched;
    final localMergedBytesRead = this.localMergedBytesRead;
    final localMergedChunksFetched = this.localMergedChunksFetched;
    final mergedFetchFallbackCount = this.mergedFetchFallbackCount;
    final remoteMergedBlocksFetched = this.remoteMergedBlocksFetched;
    final remoteMergedBytesRead = this.remoteMergedBytesRead;
    final remoteMergedChunksFetched = this.remoteMergedChunksFetched;
    final remoteMergedReqsDuration = this.remoteMergedReqsDuration;
    return {
      'corruptMergedBlockChunks': ?corruptMergedBlockChunks,
      'localMergedBlocksFetched': ?localMergedBlocksFetched,
      'localMergedBytesRead': ?localMergedBytesRead,
      'localMergedChunksFetched': ?localMergedChunksFetched,
      'mergedFetchFallbackCount': ?mergedFetchFallbackCount,
      'remoteMergedBlocksFetched': ?remoteMergedBlocksFetched,
      'remoteMergedBytesRead': ?remoteMergedBytesRead,
      'remoteMergedChunksFetched': ?remoteMergedChunksFetched,
      'remoteMergedReqsDuration': ?remoteMergedReqsDuration,
    };
  }
}

/// Used by:
///
/// - dataproc:v1 : ShuffleWriteMetrics
/// - dataproc:v1 : StageShuffleWriteMetrics
class $ShuffleWriteMetrics {
  core.String? bytesWritten;
  core.String? recordsWritten;
  core.String? writeTimeNanos;

  $ShuffleWriteMetrics({
    this.bytesWritten,
    this.recordsWritten,
    this.writeTimeNanos,
  });

  $ShuffleWriteMetrics.fromJson(core.Map json_)
    : this(
        bytesWritten: json_['bytesWritten'] as core.String?,
        recordsWritten: json_['recordsWritten'] as core.String?,
        writeTimeNanos: json_['writeTimeNanos'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final bytesWritten = this.bytesWritten;
    final recordsWritten = this.recordsWritten;
    final writeTimeNanos = this.writeTimeNanos;
    return {
      'bytesWritten': ?bytesWritten,
      'recordsWritten': ?recordsWritten,
      'writeTimeNanos': ?writeTimeNanos,
    };
  }
}

/// Used by:
///
/// - binaryauthorization:v1 : Signature
/// - containeranalysis:v1 : Signature
/// - ondemandscanning:v1 : Signature
class $Signature {
  /// The identifier for the public key that verifies this signature.
  ///
  /// * The `public_key_id` is required. * The `public_key_id` SHOULD be an
  /// RFC3986 conformant URI. * When possible, the `public_key_id` SHOULD be an
  /// immutable reference, such as a cryptographic digest. Examples of valid
  /// `public_key_id`s: OpenPGP V4 public key fingerprint: *
  /// "openpgp4fpr:74FAF3B861BDA0870C7B6DEF607E48D2A663AEEA" See
  /// https://www.iana.org/assignments/uri-schemes/prov/openpgp4fpr for more
  /// details on this scheme. RFC6920 digest-named SubjectPublicKeyInfo (digest
  /// of the DER serialization): *
  /// "ni:///sha-256;cD9o9Cq6LG3jD0iKXqEi_vdjJGecm_iXkbqVoScViaU" *
  /// "nih:///sha-256;703f68f42aba2c6de30f488a5ea122fef76324679c9bf89791ba95a1271589a5"
  core.String? publicKeyId;

  /// The content of the signature, an opaque bytestring.
  ///
  /// The payload that this signature verifies MUST be unambiguously provided
  /// with the Signature during verification. A wrapper message might provide
  /// the payload explicitly. Alternatively, a message might have a canonical
  /// serialization that can always be unambiguously computed to derive the
  /// payload.
  core.String? signature;
  core.List<core.int> get signatureAsBytes => convert.base64.decode(signature!);

  set signatureAsBytes(core.List<core.int> bytes_) {
    signature = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  $Signature({this.publicKeyId, this.signature});

  $Signature.fromJson(core.Map json_)
    : this(
        publicKeyId: json_['publicKeyId'] as core.String?,
        signature: json_['signature'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final publicKeyId = this.publicKeyId;
    final signature = this.signature;
    return {'publicKeyId': ?publicKeyId, 'signature': ?signature};
  }
}

/// Used by:
///
/// - containeranalysis:v1 : SlsaRecipe
/// - ondemandscanning:v1 : SlsaRecipe
class $SlsaRecipe {
  /// Collection of all external inputs that influenced the build on top of
  /// recipe.definedInMaterial and recipe.entryPoint.
  ///
  /// For example, if the recipe type were "make", then this might be the flags
  /// passed to make aside from the target, which is captured in
  /// recipe.entryPoint. Depending on the recipe Type, the structure may be
  /// different.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? arguments;

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
  /// policy. Depending on the recipe Type, the structure may be different.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? environment;

  /// URI indicating what type of recipe was performed.
  ///
  /// It determines the meaning of recipe.entryPoint, recipe.arguments,
  /// recipe.environment, and materials.
  core.String? type;

  $SlsaRecipe({
    this.arguments,
    this.definedInMaterial,
    this.entryPoint,
    this.environment,
    this.type,
  });

  $SlsaRecipe.fromJson(core.Map json_)
    : this(
        arguments: json_.containsKey('arguments')
            ? json_['arguments'] as core.Map<core.String, core.dynamic>
            : null,
        definedInMaterial: json_['definedInMaterial'] as core.String?,
        entryPoint: json_['entryPoint'] as core.String?,
        environment: json_.containsKey('environment')
            ? json_['environment'] as core.Map<core.String, core.dynamic>
            : null,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final arguments = this.arguments;
    final definedInMaterial = this.definedInMaterial;
    final entryPoint = this.entryPoint;
    final environment = this.environment;
    final type = this.type;
    return {
      'arguments': ?arguments,
      'definedInMaterial': ?definedInMaterial,
      'entryPoint': ?entryPoint,
      'environment': ?environment,
      'type': ?type,
    };
  }
}

/// Used by:
///
/// - translate:v3 : GcsInputSource
/// - translate:v3 : GcsSource
class $Source {
  /// Source data URI.
  ///
  /// For example, `gs://my_bucket/my_object`.
  ///
  /// Required.
  core.String? inputUri;

  $Source({this.inputUri});

  $Source.fromJson(core.Map json_)
    : this(inputUri: json_['inputUri'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final inputUri = this.inputUri;
    return {'inputUri': ?inputUri};
  }
}

/// Used by:
///
/// - servicemanagement:v1 : SourceContext
/// - serviceusage:v1 : SourceContext
class $SourceContext {
  /// The path-qualified name of the .proto file that contained the associated
  /// protobuf element.
  ///
  /// For example: `"google/protobuf/source_context.proto"`.
  core.String? fileName;

  $SourceContext({this.fileName});

  $SourceContext.fromJson(core.Map json_)
    : this(fileName: json_['fileName'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final fileName = this.fileName;
    return {'fileName': ?fileName};
  }
}

/// Used by:
///
/// - aiplatform:v1 : GoogleCloudAiplatformV1CoherenceSpec
/// - aiplatform:v1 : GoogleCloudAiplatformV1FluencySpec
/// - aiplatform:v1 : GoogleCloudAiplatformV1FulfillmentSpec
/// - aiplatform:v1 : GoogleCloudAiplatformV1GroundednessSpec
/// - aiplatform:v1 : GoogleCloudAiplatformV1SafetySpec
class $Spec {
  /// Which version to use for evaluation.
  ///
  /// Optional.
  core.int? version;

  $Spec({this.version});

  $Spec.fromJson(core.Map json_) : this(version: json_['version'] as core.int?);

  core.Map<core.String, core.dynamic> toJson() {
    final version = this.version;
    return {'version': ?version};
  }
}

/// Used by:
///
/// - migrationcenter:v1 : MySqlProperty
/// - migrationcenter:v1 : PostgreSqlProperty
class $SqlProperty {
  /// The property is enabled.
  ///
  /// Required.
  core.bool? enabled;

  /// The property numeric value.
  ///
  /// Required.
  core.String? numericValue;

  /// The property name.
  ///
  /// Required.
  core.String? property;

  $SqlProperty({this.enabled, this.numericValue, this.property});

  $SqlProperty.fromJson(core.Map json_)
    : this(
        enabled: json_['enabled'] as core.bool?,
        numericValue: json_['numericValue'] as core.String?,
        property: json_['property'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final enabled = this.enabled;
    final numericValue = this.numericValue;
    final property = this.property;
    return {
      'enabled': ?enabled,
      'numericValue': ?numericValue,
      'property': ?property,
    };
  }
}

/// Used by:
///
/// - sqladmin:v1 : SqlInstancesAcquireSsrsLeaseResponse
/// - sqladmin:v1 : SqlInstancesReleaseSsrsLeaseResponse
class $SsrsLeaseResponse {
  /// The unique identifier for this operation.
  core.String? operationId;

  $SsrsLeaseResponse({this.operationId});

  $SsrsLeaseResponse.fromJson(core.Map json_)
    : this(operationId: json_['operationId'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final operationId = this.operationId;
    return {'operationId': ?operationId};
  }
}

/// Used by:
///
/// - workflowexecutions:v1 : StateError
/// - workflows:v1 : StateError
class $StateError {
  /// Provides specifics about the error.
  core.String? details;

  /// The type of this state error.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : No type specified.
  /// - "KMS_ERROR" : Caused by an issue with KMS.
  core.String? type;

  $StateError({this.details, this.type});

  $StateError.fromJson(core.Map json_)
    : this(
        details: json_['details'] as core.String?,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final details = this.details;
    final type = this.type;
    return {'details': ?details, 'type': ?type};
  }
}

/// Used by:
///
/// - accesscontextmanager:v1 : Status
/// - admin:directory_v1 : Status
/// - agenciesandbrands:v1 : Status
/// - agentregistry:v1 : Status
/// - aiplatform:v1 : GoogleRpcStatus
/// - alloydb:v1 : Status
/// - analyticshub:v1 : Status
/// - androiddeviceprovisioning:v1 : Status
/// - androidmanagement:v1 : Status
/// - apigateway:v1 : ApigatewayStatus
/// - apigee:v1 : GoogleRpcStatus
/// - apihub:v1 : GoogleRpcStatus
/// - apikeys:v2 : Status
/// - appengine:v1 : Status
/// - apphub:v1 : Status
/// - artifactregistry:v1 : Status
/// - assuredworkloads:v1 : GoogleRpcStatus
/// - auditmanager:v1 : Status
/// - backupdr:v1 : Status
/// - baremetalsolution:v2 : Status
/// - batch:v1 : Status
/// - beyondcorp:v1 : GoogleRpcStatus
/// - bigquerydatatransfer:v1 : Status
/// - bigqueryreservation:v1 : Status
/// - bigtableadmin:v2 : Status
/// - certificatemanager:v1 : Status
/// - ces:v1 : Status
/// - chromemanagement:v1 : GoogleRpcStatus
/// - cloudasset:v1 : Status
/// - cloudbuild:v1 : Status
/// - cloudbuild:v2 : Status
/// - cloudchannel:v1 : GoogleRpcStatus
/// - clouddeploy:v1 : Status
/// - cloudfunctions:v1 : Status
/// - cloudfunctions:v2 : Status
/// - cloudidentity:v1 : Status
/// - cloudkms:v1 : Status
/// - cloudresourcemanager:v1 : Status
/// - cloudresourcemanager:v3 : Status
/// - cloudscheduler:v1 : Status
/// - cloudsearch:v1 : Status
/// - cloudshell:v1 : Status
/// - cloudtasks:v2 : Status
/// - cloudtrace:v2 : Status
/// - colaboratory:v1 : Status
/// - composer:v1 : Status
/// - config:v1 : Status
/// - contactcenterinsights:v1 : GoogleRpcStatus
/// - container:v1 : Status
/// - containeranalysis:v1 : Status
/// - curationpartners:v1 : Status
/// - dataform:v1 : Status
/// - datafusion:v1 : Status
/// - datalineage:v1 : GoogleRpcStatus
/// - datamigration:v1 : Status
/// - datapipelines:v1 : GoogleRpcStatus
/// - dataplex:v1 : GoogleRpcStatus
/// - dataproc:v1 : Status
/// - datastore:v1 : Status
/// - datastream:v1 : Status
/// - deepreview:v1 : Status
/// - developerconnect:v1 : Status
/// - devicerun:v1 : GoogleRpcStatus
/// - displayvideo:v5 : Status
/// - dlp:v2 : GoogleRpcStatus
/// - documentai:v1 : GoogleRpcStatus
/// - drive:v3 : Status
/// - eventarc:v1 : GoogleRpcStatus
/// - file:v1 : Status
/// - firebaseappdistribution:v1 : GoogleRpcStatus
/// - firebaseapphosting:v1 : Status
/// - firebasedataconnect:v1 : Status
/// - firebasehosting:v1 : Status
/// - firestore:v1 : Status
/// - ftp:v1 : Status
/// - games:v1 : Status
/// - gkebackup:v1 : GoogleRpcStatus
/// - gkehub:v2 : GoogleRpcStatus
/// - gkeonprem:v1 : Status
/// - gmailpostmastertools:v2 : Status
/// - health:v4 : Status
/// - healthcare:v1 : Status
/// - hypercomputecluster:v1 : Status
/// - iam:v1 : Status
/// - iam:v2 : GoogleRpcStatus
/// - ids:v1 : Status
/// - jobs:v4 : Status
/// - logging:v2 : Status
/// - looker:v1 : Status
/// - managedidentities:v1 : Status
/// - managedkafka:v1 : Status
/// - migrationcenter:v1 : Status
/// - monitoring:v3 : Status
/// - netapp:v1 : Status
/// - networkconnectivity:v1 : GoogleRpcStatus
/// - networkmanagement:v1 : Status
/// - networksecurity:v1 : Status
/// - networkservices:v1 : Status
/// - notebooks:v2 : Status
/// - observability:v1 : Status
/// - ondemandscanning:v1 : Status
/// - oracledatabase:v1 : Status
/// - osconfig:v2 : Status
/// - parallelstore:v1 : Status
/// - people:v1 : Status
/// - policysimulator:v1 : GoogleRpcStatus
/// - policytroubleshooter:v3 : GoogleRpcStatus
/// - privateca:v1 : Status
/// - recaptchaenterprise:v1 : GoogleRpcStatus
/// - redis:v1 : Status
/// - retail:v2 : GoogleRpcStatus
/// - run:v2 : GoogleRpcStatus
/// - runtimeconfig:v1 : Status
/// - saasservicemgmt:v1 : Status
/// - searchads360:v23 : GoogleRpc__Status
/// - secretmanager:v1 : Status
/// - securesourcemanager:v1 : Status
/// - securityposture:v1 : Status
/// - serviceconsumermanagement:v1 : Status
/// - servicecontrol:v2 : Status
/// - servicemanagement:v1 : Status
/// - servicenetworking:v1 : Status
/// - serviceusage:v1 : Status
/// - spanner:v1 : Status
/// - speech:v1 : Status
/// - sqladmin:v1 : Status
/// - storagebatchoperations:v1 : Status
/// - storagetransfer:v1 : Status
/// - streetviewpublish:v1 : Status
/// - texttospeech:v1 : Status
/// - tpu:v2 : Status
/// - transcoder:v1 : Status
/// - translate:v3 : Status
/// - vault:v1 : Status
/// - vision:v1 : Status
/// - vmmigration:v1 : Status
/// - vmwareengine:v1 : Status
/// - vpcaccess:v1 : Status
/// - webrisk:v1 : GoogleRpcStatus
/// - workflows:v1 : Status
/// - workloadmanager:v1 : Status
/// - workspaceevents:v1 : Status
/// - workstations:v1 : Status
class $Status00 {
  /// The status code, which should be an enum value of google.rpc.Code.
  core.int? code;

  /// A list of messages that carry the error details.
  ///
  /// There is a common set of message types for APIs to use.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Map<core.String, core.Object?>>? details;

  /// A developer-facing error message, which should be in English.
  ///
  /// Any user-facing error message should be localized and sent in the
  /// google.rpc.Status.details field, or localized by the client.
  core.String? message;

  $Status00({this.code, this.details, this.message});

  $Status00.fromJson(core.Map json_)
    : this(
        code: json_['code'] as core.int?,
        details: (json_['details'] as core.List?)
            ?.map((value) => value as core.Map<core.String, core.dynamic>)
            .toList(),
        message: json_['message'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final code = this.code;
    final details = this.details;
    final message = this.message;
    return {'code': ?code, 'details': ?details, 'message': ?message};
  }
}

/// Used by:
///
/// - dialogflow:v2 : GoogleRpcStatus
/// - dialogflow:v3 : GoogleRpcStatus
/// - securitycenter:v1 : Status
class $Status01 {
  core.int? code;

  ///
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Map<core.String, core.Object?>>? details;
  core.String? message;

  $Status01({this.code, this.details, this.message});

  $Status01.fromJson(core.Map json_)
    : this(
        code: json_['code'] as core.int?,
        details: (json_['details'] as core.List?)
            ?.map((value) => value as core.Map<core.String, core.dynamic>)
            .toList(),
        message: json_['message'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final code = this.code;
    final details = this.details;
    final message = this.message;
    return {'code': ?code, 'details': ?details, 'message': ?message};
  }
}

/// Used by:
///
/// - admob:v1 : StringList
/// - gmailpostmastertools:v2 : StringList
class $StringList00 {
  /// The string values.
  core.List<core.String>? values;

  $StringList00({this.values});

  $StringList00.fromJson(core.Map json_)
    : this(
        values: (json_['values'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final values = this.values;
    return {'values': ?values};
  }
}

/// Used by:
///
/// - agenciesandbrands:v1 : StringList
/// - curationpartners:v1 : StringList
class $StringList01 {
  /// The values
  core.List<core.String>? values;

  $StringList01({this.values});

  $StringList01.fromJson(core.Map json_)
    : this(
        values: (json_['values'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final values = this.values;
    return {'values': ?values};
  }
}

/// Used by:
///
/// - assuredworkloads:v1 : GoogleCloudAssuredworkloadsV1StringList
/// - auditmanager:v1 : StringList
class $StringList02 {
  /// The strings in the list.
  ///
  /// Required.
  core.List<core.String>? values;

  $StringList02({this.values});

  $StringList02.fromJson(core.Map json_)
    : this(
        values: (json_['values'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final values = this.values;
    return {'values': ?values};
  }
}

/// Used by:
///
/// - assuredworkloads:v1 : GoogleCloudAssuredworkloadsV1OrgPolicyPolicyRuleStringValues
/// - cloudasset:v1 : GoogleCloudAssetV1StringValues
/// - orgpolicy:v2 : GoogleCloudOrgpolicyV2PolicySpecPolicyRuleStringValues
/// - policysimulator:v1 : GoogleCloudOrgpolicyV2PolicySpecPolicyRuleStringValues
class $StringValues {
  /// List of values allowed at this resource.
  core.List<core.String>? allowedValues;

  /// List of values denied at this resource.
  core.List<core.String>? deniedValues;

  $StringValues({this.allowedValues, this.deniedValues});

  $StringValues.fromJson(core.Map json_)
    : this(
        allowedValues: (json_['allowedValues'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        deniedValues: (json_['deniedValues'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final allowedValues = this.allowedValues;
    final deniedValues = this.deniedValues;
    return {'allowedValues': ?allowedValues, 'deniedValues': ?deniedValues};
  }
}

/// Used by:
///
/// - containeranalysis:v1 : Subject
/// - ondemandscanning:v1 : Subject
class $Subject {
  /// `"": ""` Algorithms can be e.g. sha256, sha512 See
  /// https://github.com/in-toto/attestation/blob/main/spec/field_types.md#DigestSet
  core.Map<core.String, core.String>? digest;
  core.String? name;

  $Subject({this.digest, this.name});

  $Subject.fromJson(core.Map json_)
    : this(
        digest: (json_['digest'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final digest = this.digest;
    final name = this.name;
    return {'digest': ?digest, 'name': ?name};
  }
}

/// Used by:
///
/// - docs:v1 : AcceptSuggestionRequest
/// - docs:v1 : DeleteSuggestionRequest
/// - docs:v1 : RejectSuggestionRequest
class $SuggestionRequest {
  /// The ID of the suggestion.
  core.String? suggestionId;

  $SuggestionRequest({this.suggestionId});

  $SuggestionRequest.fromJson(core.Map json_)
    : this(suggestionId: json_['suggestionId'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final suggestionId = this.suggestionId;
    return {'suggestionId': ?suggestionId};
  }
}

/// Used by:
///
/// - gkebackup:v1 : GetTagsResponse
/// - gkebackup:v1 : SetTagsResponse
class $TagsResponse {
  /// A checksum based on the current bindings.
  ///
  /// This field is always set in server responses.
  core.String? etag;

  /// The full resource name of the service resource.
  ///
  /// Required.
  core.String? name;

  /// Tag keys/values directly bound to this resource.
  ///
  /// Each item in the map must be expressed as " : ". For example:
  /// "123/environment" : "production", "123/costCenter" : "marketing"
  ///
  /// Required.
  core.Map<core.String, core.String>? tags;

  $TagsResponse({this.etag, this.name, this.tags});

  $TagsResponse.fromJson(core.Map json_)
    : this(
        etag: json_['etag'] as core.String?,
        name: json_['name'] as core.String?,
        tags: (json_['tags'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final etag = this.etag;
    final name = this.name;
    final tags = this.tags;
    return {'etag': ?etag, 'name': ?name, 'tags': ?tags};
  }
}

/// Used by:
///
/// - serviceconsumermanagement:v1 : DeleteTenantProjectRequest
/// - serviceconsumermanagement:v1 : RemoveTenantProjectRequest
/// - serviceconsumermanagement:v1 : UndeleteTenantProjectRequest
class $TenantProjectRequest {
  /// Tag of the resource within the tenancy unit.
  ///
  /// Required.
  core.String? tag;

  $TenantProjectRequest({this.tag});

  $TenantProjectRequest.fromJson(core.Map json_)
    : this(tag: json_['tag'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final tag = this.tag;
    return {'tag': ?tag};
  }
}

/// Used by:
///
/// - config:v1 : TerraformVariable
/// - workloadmanager:v1 : TerraformVariable
class $TerraformVariable {
  /// Input variable value.
  ///
  /// Optional.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object? inputValue;

  $TerraformVariable({this.inputValue});

  $TerraformVariable.fromJson(core.Map json_)
    : this(inputValue: json_['inputValue']);

  core.Map<core.String, core.dynamic> toJson() {
    final inputValue = this.inputValue;
    return {'inputValue': ?inputValue};
  }
}

/// Used by:
///
/// - accesscontextmanager:v1 : TestIamPermissionsRequest
/// - agentidentity:v1 : TestIamPermissionsRequest
/// - agentregistry:v1 : GoogleIamV1TestIamPermissionsRequest
/// - analyticshub:v1 : TestIamPermissionsRequest
/// - apigateway:v1 : ApigatewayTestIamPermissionsRequest
/// - apigee:v1 : GoogleIamV1TestIamPermissionsRequest
/// - apphub:v1 : TestIamPermissionsRequest
/// - artifactregistry:v1 : TestIamPermissionsRequest
/// - backupdr:v1 : TestIamPermissionsRequest
/// - beyondcorp:v1 : GoogleIamV1TestIamPermissionsRequest
/// - biglake:v1 : TestIamPermissionsRequest
/// - bigquery:v2 : TestIamPermissionsRequest
/// - bigqueryconnection:v1 : TestIamPermissionsRequest
/// - bigquerydatapolicy:v1 : TestIamPermissionsRequest
/// - bigquerydatapolicy:v2 : TestIamPermissionsRequest
/// - bigqueryreservation:v1 : TestIamPermissionsRequest
/// - bigtableadmin:v2 : TestIamPermissionsRequest
/// - binaryauthorization:v1 : TestIamPermissionsRequest
/// - cloudbilling:v1 : TestIamPermissionsRequest
/// - cloudbuild:v2 : TestIamPermissionsRequest
/// - clouddeploy:v1 : TestIamPermissionsRequest
/// - cloudfunctions:v1 : TestIamPermissionsRequest
/// - cloudfunctions:v2 : TestIamPermissionsRequest
/// - cloudkms:v1 : TestIamPermissionsRequest
/// - cloudresourcemanager:v1 : TestIamPermissionsRequest
/// - cloudresourcemanager:v3 : TestIamPermissionsRequest
/// - cloudtasks:v2 : TestIamPermissionsRequest
/// - config:v1 : TestIamPermissionsRequest
/// - contactcenterinsights:v1 : GoogleIamV1TestIamPermissionsRequest
/// - containeranalysis:v1 : TestIamPermissionsRequest
/// - dataform:v1 : TestIamPermissionsRequest
/// - datafusion:v1 : TestIamPermissionsRequest
/// - datamigration:v1 : TestIamPermissionsRequest
/// - dns:v1 : GoogleIamV1TestIamPermissionsRequest
/// - eventarc:v1 : TestIamPermissionsRequest
/// - gkebackup:v1 : TestIamPermissionsRequest
/// - gkeonprem:v1 : TestIamPermissionsRequest
/// - healthcare:v1 : TestIamPermissionsRequest
/// - iam:v1 : TestIamPermissionsRequest
/// - iap:v1 : TestIamPermissionsRequest
/// - identitytoolkit:v2 : GoogleIamV1TestIamPermissionsRequest
/// - managedidentities:v1 : TestIamPermissionsRequest
/// - networkconnectivity:v1 : TestIamPermissionsRequest
/// - networkmanagement:v1 : TestIamPermissionsRequest
/// - networksecurity:v1 : GoogleIamV1TestIamPermissionsRequest
/// - networkservices:v1 : TestIamPermissionsRequest
/// - notebooks:v2 : TestIamPermissionsRequest
/// - privateca:v1 : TestIamPermissionsRequest
/// - pubsub:v1 : TestIamPermissionsRequest
/// - run:v2 : GoogleIamV1TestIamPermissionsRequest
/// - secretmanager:v1 : TestIamPermissionsRequest
/// - securesourcemanager:v1 : TestIamPermissionsRequest
/// - servicedirectory:v1 : TestIamPermissionsRequest
/// - servicemanagement:v1 : TestIamPermissionsRequest
/// - vmwareengine:v1 : TestIamPermissionsRequest
/// - workstations:v1 : TestIamPermissionsRequest
class $TestIamPermissionsRequest00 {
  /// The set of permissions to check for the `resource`.
  ///
  /// Permissions with wildcards (such as `*` or `storage.*`) are not allowed.
  /// For more information see
  /// [IAM Overview](https://cloud.google.com/iam/docs/overview#permissions).
  core.List<core.String>? permissions;

  $TestIamPermissionsRequest00({this.permissions});

  $TestIamPermissionsRequest00.fromJson(core.Map json_)
    : this(
        permissions: (json_['permissions'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final permissions = this.permissions;
    return {'permissions': ?permissions};
  }
}

/// Used by:
///
/// - dataplex:v1 : GoogleIamV1TestIamPermissionsRequest
/// - dataproc:v1 : TestIamPermissionsRequest
/// - logging:v2 : TestIamPermissionsRequest
class $TestIamPermissionsRequest01 {
  /// The set of permissions to check for the resource.
  ///
  /// Permissions with wildcards (such as * or storage.*) are not allowed. For
  /// more information see IAM Overview
  /// (https://cloud.google.com/iam/docs/overview#permissions).
  core.List<core.String>? permissions;

  $TestIamPermissionsRequest01({this.permissions});

  $TestIamPermissionsRequest01.fromJson(core.Map json_)
    : this(
        permissions: (json_['permissions'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final permissions = this.permissions;
    return {'permissions': ?permissions};
  }
}

/// Used by:
///
/// - accesscontextmanager:v1 : TestIamPermissionsResponse
/// - agentidentity:v1 : TestIamPermissionsResponse
/// - agentregistry:v1 : GoogleIamV1TestIamPermissionsResponse
/// - aiplatform:v1 : GoogleIamV1TestIamPermissionsResponse
/// - analyticshub:v1 : TestIamPermissionsResponse
/// - apigateway:v1 : ApigatewayTestIamPermissionsResponse
/// - apigee:v1 : GoogleIamV1TestIamPermissionsResponse
/// - apphub:v1 : TestIamPermissionsResponse
/// - artifactregistry:v1 : TestIamPermissionsResponse
/// - backupdr:v1 : TestIamPermissionsResponse
/// - beyondcorp:v1 : GoogleIamV1TestIamPermissionsResponse
/// - biglake:v1 : TestIamPermissionsResponse
/// - bigquery:v2 : TestIamPermissionsResponse
/// - bigqueryconnection:v1 : TestIamPermissionsResponse
/// - bigquerydatapolicy:v1 : TestIamPermissionsResponse
/// - bigquerydatapolicy:v2 : TestIamPermissionsResponse
/// - bigqueryreservation:v1 : TestIamPermissionsResponse
/// - bigtableadmin:v2 : TestIamPermissionsResponse
/// - binaryauthorization:v1 : TestIamPermissionsResponse
/// - cloudbilling:v1 : TestIamPermissionsResponse
/// - cloudbuild:v2 : TestIamPermissionsResponse
/// - clouddeploy:v1 : TestIamPermissionsResponse
/// - cloudfunctions:v1 : TestIamPermissionsResponse
/// - cloudfunctions:v2 : TestIamPermissionsResponse
/// - cloudkms:v1 : TestIamPermissionsResponse
/// - cloudresourcemanager:v1 : TestIamPermissionsResponse
/// - cloudresourcemanager:v3 : TestIamPermissionsResponse
/// - cloudtasks:v2 : TestIamPermissionsResponse
/// - config:v1 : TestIamPermissionsResponse
/// - contactcenterinsights:v1 : GoogleIamV1TestIamPermissionsResponse
/// - containeranalysis:v1 : TestIamPermissionsResponse
/// - dataform:v1 : TestIamPermissionsResponse
/// - datafusion:v1 : TestIamPermissionsResponse
/// - datamigration:v1 : TestIamPermissionsResponse
/// - dns:v1 : GoogleIamV1TestIamPermissionsResponse
/// - eventarc:v1 : TestIamPermissionsResponse
/// - gkebackup:v1 : TestIamPermissionsResponse
/// - gkeonprem:v1 : TestIamPermissionsResponse
/// - healthcare:v1 : TestIamPermissionsResponse
/// - iam:v1 : TestIamPermissionsResponse
/// - iap:v1 : TestIamPermissionsResponse
/// - identitytoolkit:v2 : GoogleIamV1TestIamPermissionsResponse
/// - managedidentities:v1 : TestIamPermissionsResponse
/// - networkconnectivity:v1 : TestIamPermissionsResponse
/// - networkmanagement:v1 : TestIamPermissionsResponse
/// - networksecurity:v1 : GoogleIamV1TestIamPermissionsResponse
/// - networkservices:v1 : TestIamPermissionsResponse
/// - notebooks:v2 : TestIamPermissionsResponse
/// - privateca:v1 : TestIamPermissionsResponse
/// - pubsub:v1 : TestIamPermissionsResponse
/// - run:v2 : GoogleIamV1TestIamPermissionsResponse
/// - secretmanager:v1 : TestIamPermissionsResponse
/// - securesourcemanager:v1 : TestIamPermissionsResponse
/// - servicedirectory:v1 : TestIamPermissionsResponse
/// - servicemanagement:v1 : TestIamPermissionsResponse
/// - spanner:v1 : TestIamPermissionsResponse
/// - vmwareengine:v1 : TestIamPermissionsResponse
/// - workstations:v1 : TestIamPermissionsResponse
class $TestIamPermissionsResponse00 {
  /// A subset of `TestPermissionsRequest.permissions` that the caller is
  /// allowed.
  core.List<core.String>? permissions;

  $TestIamPermissionsResponse00({this.permissions});

  $TestIamPermissionsResponse00.fromJson(core.Map json_)
    : this(
        permissions: (json_['permissions'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final permissions = this.permissions;
    return {'permissions': ?permissions};
  }
}

/// Used by:
///
/// - dataplex:v1 : GoogleIamV1TestIamPermissionsResponse
/// - dataproc:v1 : TestIamPermissionsResponse
/// - logging:v2 : TestIamPermissionsResponse
class $TestIamPermissionsResponse01 {
  /// A subset of TestPermissionsRequest.permissions that the caller is allowed.
  core.List<core.String>? permissions;

  $TestIamPermissionsResponse01({this.permissions});

  $TestIamPermissionsResponse01.fromJson(core.Map json_)
    : this(
        permissions: (json_['permissions'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final permissions = this.permissions;
    return {'permissions': ?permissions};
  }
}

/// Used by:
///
/// - language:v1 : TextSpan
/// - language:v2 : TextSpan
class $TextSpan {
  /// The API calculates the beginning offset of the content in the original
  /// document according to the EncodingType specified in the API request.
  core.int? beginOffset;

  /// The content of the text span, which is a substring of the document.
  core.String? content;

  $TextSpan({this.beginOffset, this.content});

  $TextSpan.fromJson(core.Map json_)
    : this(
        beginOffset: json_['beginOffset'] as core.int?,
        content: json_['content'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final beginOffset = this.beginOffset;
    final content = this.content;
    return {'beginOffset': ?beginOffset, 'content': ?content};
  }
}

/// Used by:
///
/// - alloydb:v1 : GoogleTypeTimeOfDay
/// - androidmanagement:v1 : TimeOfDay
/// - apigee:v1 : GoogleTypeTimeOfDay
/// - authorizedbuyersmarketplace:v1 : TimeOfDay
/// - businessprofileperformance:v1 : TimeOfDay
/// - classroom:v1 : TimeOfDay
/// - clouddeploy:v1 : TimeOfDay
/// - container:v1 : TimeOfDay
/// - dlp:v2 : GoogleTypeTimeOfDay
/// - gkebackup:v1 : TimeOfDay
/// - health:v4 : TimeOfDay
/// - jobs:v4 : TimeOfDay
/// - looker:v1 : TimeOfDay
/// - merchantapi:datasources_v1 : TimeOfDay
/// - monitoring:v3 : TimeOfDay
/// - mybusinessbusinessinformation:v1 : TimeOfDay
/// - mybusinesslodging:v1 : TimeOfDay
/// - oracledatabase:v1 : TimeOfDay
/// - redis:v1 : TimeOfDay
/// - sheets:v4 : TimeOfDay
/// - storagetransfer:v1 : TimeOfDay
/// - vmwareengine:v1 : TimeOfDay
class $TimeOfDay {
  /// Hours of a day in 24 hour format.
  ///
  /// Must be greater than or equal to 0 and typically must be less than or
  /// equal to 23. An API may choose to allow the value "24:00:00" for scenarios
  /// like business closing time.
  core.int? hours;

  /// Minutes of an hour.
  ///
  /// Must be greater than or equal to 0 and less than or equal to 59.
  core.int? minutes;

  /// Fractions of seconds, in nanoseconds.
  ///
  /// Must be greater than or equal to 0 and less than or equal to 999,999,999.
  core.int? nanos;

  /// Seconds of a minute.
  ///
  /// Must be greater than or equal to 0 and typically must be less than or
  /// equal to 59. An API may allow the value 60 if it allows leap-seconds.
  core.int? seconds;

  $TimeOfDay({this.hours, this.minutes, this.nanos, this.seconds});

  $TimeOfDay.fromJson(core.Map json_)
    : this(
        hours: json_['hours'] as core.int?,
        minutes: json_['minutes'] as core.int?,
        nanos: json_['nanos'] as core.int?,
        seconds: json_['seconds'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final hours = this.hours;
    final minutes = this.minutes;
    final nanos = this.nanos;
    final seconds = this.seconds;
    return {
      'hours': ?hours,
      'minutes': ?minutes,
      'nanos': ?nanos,
      'seconds': ?seconds,
    };
  }
}

/// Used by:
///
/// - adsense:v2 : TimeZone
/// - adsenseplatform:v1 : TimeZone
/// - authorizedbuyersmarketplace:v1 : TimeZone
/// - cloudchannel:v1 : GoogleTypeTimeZone
/// - compute:v1 : TimeZone
/// - documentai:v1 : GoogleTypeTimeZone
/// - localservices:v1 : GoogleTypeTimeZone
/// - merchantapi:accounts_v1 : TimeZone
/// - merchantapi:ordertracking_v1 : TimeZone
/// - oracledatabase:v1 : TimeZone
/// - places:v1 : GoogleTypeTimeZone
class $TimeZone {
  /// IANA Time Zone Database time zone.
  ///
  /// For example "America/New_York".
  core.String? id;

  /// IANA Time Zone Database version number.
  ///
  /// For example "2019a".
  ///
  /// Optional.
  core.String? version;

  $TimeZone({this.id, this.version});

  $TimeZone.fromJson(core.Map json_)
    : this(
        id: json_['id'] as core.String?,
        version: json_['version'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final id = this.id;
    final version = this.version;
    return {'id': ?id, 'version': ?version};
  }
}

/// Used by:
///
/// - androidenterprise:v1 : TokenPagination
/// - androidpublisher:v3 : TokenPagination
class $TokenPagination {
  /// Tokens to pass to the standard list field 'page_token'.
  ///
  /// Whenever available, tokens are preferred over manipulating start_index.
  core.String? nextPageToken;
  core.String? previousPageToken;

  $TokenPagination({this.nextPageToken, this.previousPageToken});

  $TokenPagination.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        previousPageToken: json_['previousPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final previousPageToken = this.previousPageToken;
    return {
      'nextPageToken': ?nextPageToken,
      'previousPageToken': ?previousPageToken,
    };
  }
}

/// Used by:
///
/// - cloudbuild:v2 : FetchReadTokenResponse
/// - cloudbuild:v2 : FetchReadWriteTokenResponse
class $TokenResponse00 {
  /// Expiration timestamp.
  ///
  /// Can be empty if unknown or non-expiring.
  core.String? expirationTime;

  /// The token content.
  core.String? token;

  $TokenResponse00({this.expirationTime, this.token});

  $TokenResponse00.fromJson(core.Map json_)
    : this(
        expirationTime: json_['expirationTime'] as core.String?,
        token: json_['token'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final expirationTime = this.expirationTime;
    final token = this.token;
    return {'expirationTime': ?expirationTime, 'token': ?token};
  }
}

/// Used by:
///
/// - developerconnect:v1 : FetchReadTokenResponse
/// - developerconnect:v1 : FetchReadWriteTokenResponse
class $TokenResponse01 {
  /// Expiration timestamp.
  ///
  /// Can be empty if unknown or non-expiring.
  core.String? expirationTime;

  /// The git_username to specify when making a git clone with the token.
  ///
  /// For example, for GitHub GitRepositoryLinks, this would be "x-access-token"
  core.String? gitUsername;

  /// The token content.
  core.String? token;

  $TokenResponse01({this.expirationTime, this.gitUsername, this.token});

  $TokenResponse01.fromJson(core.Map json_)
    : this(
        expirationTime: json_['expirationTime'] as core.String?,
        gitUsername: json_['gitUsername'] as core.String?,
        token: json_['token'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final expirationTime = this.expirationTime;
    final gitUsername = this.gitUsername;
    final token = this.token;
    return {
      'expirationTime': ?expirationTime,
      'gitUsername': ?gitUsername,
      'token': ?token,
    };
  }
}

/// Used by:
///
/// - containeranalysis:v1 : TokenUsage
/// - ondemandscanning:v1 : TokenUsage
class $TokenUsage {
  /// Cache matched tokens for implicit cache.
  core.String? cacheCount;

  /// Tokens in the model response.
  core.String? candidateCount;

  /// Tokens in the user request.
  core.String? promptCount;

  /// Tokens in the thinking output.
  core.String? thinkingCount;

  /// Prompt tokens for using tools.
  core.String? toolUsePromptCount;

  $TokenUsage({
    this.cacheCount,
    this.candidateCount,
    this.promptCount,
    this.thinkingCount,
    this.toolUsePromptCount,
  });

  $TokenUsage.fromJson(core.Map json_)
    : this(
        cacheCount: json_['cacheCount'] as core.String?,
        candidateCount: json_['candidateCount'] as core.String?,
        promptCount: json_['promptCount'] as core.String?,
        thinkingCount: json_['thinkingCount'] as core.String?,
        toolUsePromptCount: json_['toolUsePromptCount'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final cacheCount = this.cacheCount;
    final candidateCount = this.candidateCount;
    final promptCount = this.promptCount;
    final thinkingCount = this.thinkingCount;
    final toolUsePromptCount = this.toolUsePromptCount;
    return {
      'cacheCount': ?cacheCount,
      'candidateCount': ?candidateCount,
      'promptCount': ?promptCount,
      'thinkingCount': ?thinkingCount,
      'toolUsePromptCount': ?toolUsePromptCount,
    };
  }
}

/// Used by:
///
/// - dialogflow:v2 : GoogleCloudDialogflowV2ToolAuthenticationApiKeyConfig
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3ToolAuthenticationApiKeyConfig
class $ToolAuthenticationApiKeyConfig {
  core.String? apiKey;
  core.String? keyName;

  ///
  /// Possible string values are:
  /// - "REQUEST_LOCATION_UNSPECIFIED"
  /// - "HEADER"
  /// - "QUERY_STRING"
  core.String? requestLocation;
  core.String? secretVersionForApiKey;

  $ToolAuthenticationApiKeyConfig({
    this.apiKey,
    this.keyName,
    this.requestLocation,
    this.secretVersionForApiKey,
  });

  $ToolAuthenticationApiKeyConfig.fromJson(core.Map json_)
    : this(
        apiKey: json_['apiKey'] as core.String?,
        keyName: json_['keyName'] as core.String?,
        requestLocation: json_['requestLocation'] as core.String?,
        secretVersionForApiKey: json_['secretVersionForApiKey'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final apiKey = this.apiKey;
    final keyName = this.keyName;
    final requestLocation = this.requestLocation;
    final secretVersionForApiKey = this.secretVersionForApiKey;
    return {
      'apiKey': ?apiKey,
      'keyName': ?keyName,
      'requestLocation': ?requestLocation,
      'secretVersionForApiKey': ?secretVersionForApiKey,
    };
  }
}

/// Used by:
///
/// - dialogflow:v2 : GoogleCloudDialogflowV2ToolAuthenticationBearerTokenConfig
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3ToolAuthenticationBearerTokenConfig
class $ToolAuthenticationBearerTokenConfig {
  core.String? secretVersionForToken;
  core.String? token;

  $ToolAuthenticationBearerTokenConfig({
    this.secretVersionForToken,
    this.token,
  });

  $ToolAuthenticationBearerTokenConfig.fromJson(core.Map json_)
    : this(
        secretVersionForToken: json_['secretVersionForToken'] as core.String?,
        token: json_['token'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final secretVersionForToken = this.secretVersionForToken;
    final token = this.token;
    return {'secretVersionForToken': ?secretVersionForToken, 'token': ?token};
  }
}

/// Used by:
///
/// - dialogflow:v2 : GoogleCloudDialogflowV2ToolAuthenticationOAuthConfig
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3ToolAuthenticationOAuthConfig
class $ToolAuthenticationOAuthConfig {
  core.String? clientId;
  core.String? clientSecret;

  ///
  /// Possible string values are:
  /// - "OAUTH_GRANT_TYPE_UNSPECIFIED"
  /// - "CLIENT_CREDENTIAL"
  core.String? oauthGrantType;
  core.List<core.String>? scopes;
  core.String? secretVersionForClientSecret;
  core.String? tokenEndpoint;

  $ToolAuthenticationOAuthConfig({
    this.clientId,
    this.clientSecret,
    this.oauthGrantType,
    this.scopes,
    this.secretVersionForClientSecret,
    this.tokenEndpoint,
  });

  $ToolAuthenticationOAuthConfig.fromJson(core.Map json_)
    : this(
        clientId: json_['clientId'] as core.String?,
        clientSecret: json_['clientSecret'] as core.String?,
        oauthGrantType: json_['oauthGrantType'] as core.String?,
        scopes: (json_['scopes'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        secretVersionForClientSecret:
            json_['secretVersionForClientSecret'] as core.String?,
        tokenEndpoint: json_['tokenEndpoint'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final clientId = this.clientId;
    final clientSecret = this.clientSecret;
    final oauthGrantType = this.oauthGrantType;
    final scopes = this.scopes;
    final secretVersionForClientSecret = this.secretVersionForClientSecret;
    final tokenEndpoint = this.tokenEndpoint;
    return {
      'clientId': ?clientId,
      'clientSecret': ?clientSecret,
      'oauthGrantType': ?oauthGrantType,
      'scopes': ?scopes,
      'secretVersionForClientSecret': ?secretVersionForClientSecret,
      'tokenEndpoint': ?tokenEndpoint,
    };
  }
}

/// Used by:
///
/// - dialogflow:v2 : GoogleCloudDialogflowV2ToolAuthenticationServiceAgentAuthConfig
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3ToolAuthenticationServiceAgentAuthConfig
class $ToolAuthenticationServiceAgentAuthConfig {
  ///
  /// Possible string values are:
  /// - "SERVICE_AGENT_AUTH_UNSPECIFIED"
  /// - "ID_TOKEN"
  /// - "ACCESS_TOKEN"
  core.String? serviceAgentAuth;

  $ToolAuthenticationServiceAgentAuthConfig({this.serviceAgentAuth});

  $ToolAuthenticationServiceAgentAuthConfig.fromJson(core.Map json_)
    : this(serviceAgentAuth: json_['serviceAgentAuth'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final serviceAgentAuth = this.serviceAgentAuth;
    return {'serviceAgentAuth': ?serviceAgentAuth};
  }
}

/// Used by:
///
/// - dialogflow:v2 : GoogleCloudDialogflowV2ToolServiceDirectoryConfig
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3ToolServiceDirectoryConfig
class $ToolServiceDirectoryConfig {
  core.String? service;

  $ToolServiceDirectoryConfig({this.service});

  $ToolServiceDirectoryConfig.fromJson(core.Map json_)
    : this(service: json_['service'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final service = this.service;
    return {'service': ?service};
  }
}

/// Used by:
///
/// - dialogflow:v2 : GoogleCloudDialogflowV2ToolTLSConfigCACert
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3ToolTLSConfigCACert
class $ToolTLSConfigCACert {
  core.String? cert;
  core.List<core.int> get certAsBytes => convert.base64.decode(cert!);

  set certAsBytes(core.List<core.int> bytes_) {
    cert = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  core.String? displayName;

  $ToolTLSConfigCACert({this.cert, this.displayName});

  $ToolTLSConfigCACert.fromJson(core.Map json_)
    : this(
        cert: json_['cert'] as core.String?,
        displayName: json_['displayName'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final cert = this.cert;
    final displayName = this.displayName;
    return {'cert': ?cert, 'displayName': ?displayName};
  }
}

/// Used by:
///
/// - ces:v1 : ToolsetTool
/// - contactcenterinsights:v1 : GoogleCloudCesV1mainToolsetTool
class $ToolsetTool {
  /// The tool ID to filter the tools to retrieve the schema for.
  ///
  /// Optional.
  core.String? toolId;

  /// The resource name of the Toolset from which this tool is derived.
  ///
  /// Format:
  /// `projects/{project}/locations/{location}/apps/{app}/toolsets/{toolset}`
  ///
  /// Required.
  core.String? toolset;

  $ToolsetTool({this.toolId, this.toolset});

  $ToolsetTool.fromJson(core.Map json_)
    : this(
        toolId: json_['toolId'] as core.String?,
        toolset: json_['toolset'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final toolId = this.toolId;
    final toolset = this.toolset;
    return {'toolId': ?toolId, 'toolset': ?toolset};
  }
}

/// Used by:
///
/// - apigee:v1 : GoogleCloudApigeeV1RuntimeTraceSamplingConfig
/// - apigee:v1 : GoogleCloudApigeeV1TraceSamplingConfig
class $TraceSamplingConfig {
  /// Sampler of distributed tracing.
  ///
  /// OFF is the default value.
  /// Possible string values are:
  /// - "SAMPLER_UNSPECIFIED" : Sampler unspecified.
  /// - "OFF" : OFF means distributed trace is disabled, or the sampling
  /// probability is 0.
  /// - "PROBABILITY" : PROBABILITY means traces are captured on a probability
  /// that defined by sampling_rate. The sampling rate is limited to 0 to 0.5
  /// when this is set.
  core.String? sampler;

  /// Field sampling rate.
  ///
  /// This value is only applicable when using the PROBABILITY sampler. The
  /// supported values are \> 0 and \<= 0.5.
  core.double? samplingRate;

  $TraceSamplingConfig({this.sampler, this.samplingRate});

  $TraceSamplingConfig.fromJson(core.Map json_)
    : this(
        sampler: json_['sampler'] as core.String?,
        samplingRate: (json_['samplingRate'] as core.num?)?.toDouble(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final sampler = this.sampler;
    final samplingRate = this.samplingRate;
    return {'sampler': ?sampler, 'samplingRate': ?samplingRate};
  }
}

/// Used by:
///
/// - analyticshub:v1 : UnstructuredInference
/// - pubsub:v1 : UnstructuredInference
class $UnstructuredInference {
  /// A parameters object to be included in each inference request.
  ///
  /// The parameters object is combined with the data field of the Pub/Sub
  /// message to form the inference request.
  ///
  /// Optional.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? parameters;

  $UnstructuredInference({this.parameters});

  $UnstructuredInference.fromJson(core.Map json_)
    : this(
        parameters: json_.containsKey('parameters')
            ? json_['parameters'] as core.Map<core.String, core.dynamic>
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final parameters = this.parameters;
    return {'parameters': ?parameters};
  }
}

/// Used by:
///
/// - containeranalysis:v1 : UpgradeDistribution
/// - ondemandscanning:v1 : UpgradeDistribution
class $UpgradeDistribution {
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

  $UpgradeDistribution({
    this.classification,
    this.cpeUri,
    this.cve,
    this.severity,
  });

  $UpgradeDistribution.fromJson(core.Map json_)
    : this(
        classification: json_['classification'] as core.String?,
        cpeUri: json_['cpeUri'] as core.String?,
        cve: (json_['cve'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        severity: json_['severity'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final classification = this.classification;
    final cpeUri = this.cpeUri;
    final cve = this.cve;
    final severity = this.severity;
    return {
      'classification': ?classification,
      'cpeUri': ?cpeUri,
      'cve': ?cve,
      'severity': ?severity,
    };
  }
}

/// Used by:
///
/// - servicemanagement:v1 : UsageRule
/// - serviceusage:v1 : UsageRule
class $UsageRule {
  /// Use this rule to configure unregistered calls for the service.
  ///
  /// Unregistered calls are calls that do not contain consumer project
  /// identity. (Example: calls that do not contain an API key). WARNING: By
  /// default, API methods do not allow unregistered calls, and each method call
  /// must be identified by a consumer project identity.
  core.bool? allowUnregisteredCalls;

  /// Selects the methods to which this rule applies.
  ///
  /// Use '*' to indicate all methods in all APIs. Refer to selector for syntax
  /// details.
  core.String? selector;

  /// If true, the selected method should skip service control and the control
  /// plane features, such as quota and billing, will not be available.
  ///
  /// This flag is used by Google Cloud Endpoints to bypass checks for internal
  /// methods, such as service health check methods.
  core.bool? skipServiceControl;

  $UsageRule({
    this.allowUnregisteredCalls,
    this.selector,
    this.skipServiceControl,
  });

  $UsageRule.fromJson(core.Map json_)
    : this(
        allowUnregisteredCalls: json_['allowUnregisteredCalls'] as core.bool?,
        selector: json_['selector'] as core.String?,
        skipServiceControl: json_['skipServiceControl'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final allowUnregisteredCalls = this.allowUnregisteredCalls;
    final selector = this.selector;
    final skipServiceControl = this.skipServiceControl;
    return {
      'allowUnregisteredCalls': ?allowUnregisteredCalls,
      'selector': ?selector,
      'skipServiceControl': ?skipServiceControl,
    };
  }
}

/// Used by:
///
/// - datamanager:v1 : IngestUserIdDataStatus
/// - datamanager:v1 : RemoveUserIdDataStatus
class $UserIdDataStatus {
  core.String? recordCount;
  core.String? userIdCount;

  $UserIdDataStatus({this.recordCount, this.userIdCount});

  $UserIdDataStatus.fromJson(core.Map json_)
    : this(
        recordCount: json_['recordCount'] as core.String?,
        userIdCount: json_['userIdCount'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final recordCount = this.recordCount;
    final userIdCount = this.userIdCount;
    return {'recordCount': ?recordCount, 'userIdCount': ?userIdCount};
  }
}

/// Used by:
///
/// - identitytoolkit:v2 : GoogleCloudIdentitytoolkitAdminV2CustomStrengthOptions
/// - identitytoolkit:v2 : GoogleCloudIdentitytoolkitV2CustomStrengthOptions
class $V2CustomStrengthOptions {
  /// The password must contain a lower case character.
  core.bool? containsLowercaseCharacter;

  /// The password must contain a non alpha numeric character.
  core.bool? containsNonAlphanumericCharacter;

  /// The password must contain a number.
  core.bool? containsNumericCharacter;

  /// The password must contain an upper case character.
  core.bool? containsUppercaseCharacter;

  /// Maximum password length.
  ///
  /// No default max length
  core.int? maxPasswordLength;

  /// Minimum password length.
  ///
  /// Range from 6 to 30
  core.int? minPasswordLength;

  $V2CustomStrengthOptions({
    this.containsLowercaseCharacter,
    this.containsNonAlphanumericCharacter,
    this.containsNumericCharacter,
    this.containsUppercaseCharacter,
    this.maxPasswordLength,
    this.minPasswordLength,
  });

  $V2CustomStrengthOptions.fromJson(core.Map json_)
    : this(
        containsLowercaseCharacter:
            json_['containsLowercaseCharacter'] as core.bool?,
        containsNonAlphanumericCharacter:
            json_['containsNonAlphanumericCharacter'] as core.bool?,
        containsNumericCharacter:
            json_['containsNumericCharacter'] as core.bool?,
        containsUppercaseCharacter:
            json_['containsUppercaseCharacter'] as core.bool?,
        maxPasswordLength: json_['maxPasswordLength'] as core.int?,
        minPasswordLength: json_['minPasswordLength'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final containsLowercaseCharacter = this.containsLowercaseCharacter;
    final containsNonAlphanumericCharacter =
        this.containsNonAlphanumericCharacter;
    final containsNumericCharacter = this.containsNumericCharacter;
    final containsUppercaseCharacter = this.containsUppercaseCharacter;
    final maxPasswordLength = this.maxPasswordLength;
    final minPasswordLength = this.minPasswordLength;
    return {
      'containsLowercaseCharacter': ?containsLowercaseCharacter,
      'containsNonAlphanumericCharacter': ?containsNonAlphanumericCharacter,
      'containsNumericCharacter': ?containsNumericCharacter,
      'containsUppercaseCharacter': ?containsUppercaseCharacter,
      'maxPasswordLength': ?maxPasswordLength,
      'minPasswordLength': ?minPasswordLength,
    };
  }
}

/// Used by:
///
/// - containeranalysis:v1 : Version
/// - ondemandscanning:v1 : Version
class $Version {
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

  $Version({
    this.epoch,
    this.fullName,
    this.inclusive,
    this.kind,
    this.name,
    this.revision,
  });

  $Version.fromJson(core.Map json_)
    : this(
        epoch: json_['epoch'] as core.int?,
        fullName: json_['fullName'] as core.String?,
        inclusive: json_['inclusive'] as core.bool?,
        kind: json_['kind'] as core.String?,
        name: json_['name'] as core.String?,
        revision: json_['revision'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final epoch = this.epoch;
    final fullName = this.fullName;
    final inclusive = this.inclusive;
    final kind = this.kind;
    final name = this.name;
    final revision = this.revision;
    return {
      'epoch': ?epoch,
      'fullName': ?fullName,
      'inclusive': ?inclusive,
      'kind': ?kind,
      'name': ?name,
      'revision': ?revision,
    };
  }
}

/// Used by:
///
/// - aiplatform:v1 : GoogleCloudAiplatformV1RetrieveContextsRequestVertexRagStoreRagResource
/// - aiplatform:v1 : GoogleCloudAiplatformV1VertexRagStoreRagResource
class $VertexRagStoreRagResource {
  /// RagCorpora resource name.
  ///
  /// Format: `projects/{project}/locations/{location}/ragCorpora/{rag_corpus}`
  ///
  /// Optional.
  core.String? ragCorpus;

  /// rag_file_id.
  ///
  /// The files should be in the same rag_corpus set in rag_corpus field.
  ///
  /// Optional.
  core.List<core.String>? ragFileIds;

  $VertexRagStoreRagResource({this.ragCorpus, this.ragFileIds});

  $VertexRagStoreRagResource.fromJson(core.Map json_)
    : this(
        ragCorpus: json_['ragCorpus'] as core.String?,
        ragFileIds: (json_['ragFileIds'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final ragCorpus = this.ragCorpus;
    final ragFileIds = this.ragFileIds;
    return {'ragCorpus': ?ragCorpus, 'ragFileIds': ?ragFileIds};
  }
}

/// Used by:
///
/// - dialogflow:v2 : GoogleCloudDialogflowV2VoiceSelectionParams
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3VoiceSelectionParams
class $VoiceSelectionParams {
  core.String? name;

  ///
  /// Possible string values are:
  /// - "SSML_VOICE_GENDER_UNSPECIFIED"
  /// - "SSML_VOICE_GENDER_MALE"
  /// - "SSML_VOICE_GENDER_FEMALE"
  /// - "SSML_VOICE_GENDER_NEUTRAL"
  core.String? ssmlGender;

  $VoiceSelectionParams({this.name, this.ssmlGender});

  $VoiceSelectionParams.fromJson(core.Map json_)
    : this(
        name: json_['name'] as core.String?,
        ssmlGender: json_['ssmlGender'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final name = this.name;
    final ssmlGender = this.ssmlGender;
    return {'name': ?name, 'ssmlGender': ?ssmlGender};
  }
}

/// Used by:
///
/// - servicenetworking:v1 : DisableVpcServiceControlsRequest
/// - servicenetworking:v1 : EnableVpcServiceControlsRequest
class $VpcServiceControlsRequest {
  /// The network that the consumer is using to connect with services.
  ///
  /// Must be in the form of projects/{project}/global/networks/{network}
  /// {project} is a project number, as in '12345' {network} is network name.
  ///
  /// Required.
  core.String? consumerNetwork;

  $VpcServiceControlsRequest({this.consumerNetwork});

  $VpcServiceControlsRequest.fromJson(core.Map json_)
    : this(consumerNetwork: json_['consumerNetwork'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final consumerNetwork = this.consumerNetwork;
    return {'consumerNetwork': ?consumerNetwork};
  }
}

/// Used by:
///
/// - accesscontextmanager:v1 : VpcSubNetwork
/// - cloudasset:v1 : GoogleIdentityAccesscontextmanagerV1VpcSubNetwork
class $VpcSubNetwork {
  /// Network name.
  ///
  /// If the network is not part of the organization, the `compute.network.get`
  /// permission must be granted to the caller. Format:
  /// `//compute.googleapis.com/projects/{PROJECT_ID}/global/networks/{NETWORK_NAME}`
  /// Example:
  /// `//compute.googleapis.com/projects/my-project/global/networks/network-1`
  ///
  /// Required.
  core.String? network;

  /// CIDR block IP subnetwork specification.
  ///
  /// The IP address must be an IPv4 address and can be a public or private IP
  /// address. Note that for a CIDR IP address block, the specified IP address
  /// portion must be properly truncated (that is, all the host bits must be
  /// zero) or the input is considered malformed. For example, `"192.0.2.0/24"`
  /// is accepted, but `"192.0.2.1/24"` is not. If empty, all IP addresses are
  /// allowed.
  core.List<core.String>? vpcIpSubnetworks;

  $VpcSubNetwork({this.network, this.vpcIpSubnetworks});

  $VpcSubNetwork.fromJson(core.Map json_)
    : this(
        network: json_['network'] as core.String?,
        vpcIpSubnetworks: (json_['vpcIpSubnetworks'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final network = this.network;
    final vpcIpSubnetworks = this.vpcIpSubnetworks;
    return {'network': ?network, 'vpcIpSubnetworks': ?vpcIpSubnetworks};
  }
}

/// Used by:
///
/// - firebaseappdistribution:v1 : GoogleLongrunningWaitOperationRequest
/// - run:v2 : GoogleLongrunningWaitOperationRequest
/// - translate:v3 : WaitOperationRequest
class $WaitOperationRequest {
  /// The maximum duration to wait before timing out.
  ///
  /// If left blank, the wait will be at most the time permitted by the
  /// underlying HTTP/RPC protocol. If RPC context deadline is also specified,
  /// the shorter one will be used.
  core.String? timeout;

  $WaitOperationRequest({this.timeout});

  $WaitOperationRequest.fromJson(core.Map json_)
    : this(timeout: json_['timeout'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final timeout = this.timeout;
    return {'timeout': ?timeout};
  }
}

/// Used by:
///
/// - androidenterprise:v1 : WebAppIcon
/// - androidmanagement:v1 : WebAppIcon
class $WebAppIcon {
  /// The actual bytes of the image in a base64url encoded string (c.f. RFC4648,
  /// section 5 "Base 64 Encoding with URL and Filename Safe Alphabet").
  ///
  /// - The image type can be png or jpg. - The image should ideally be square.
  /// - The image should ideally have a size of 512x512.
  core.String? imageData;

  $WebAppIcon({this.imageData});

  $WebAppIcon.fromJson(core.Map json_)
    : this(imageData: json_['imageData'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final imageData = this.imageData;
    return {'imageData': ?imageData};
  }
}

/// Used by:
///
/// - workstations:v1 : StopWorkstationRequest
/// - workstations:v1 : SuspendWorkstationRequest
class $WorkstationRequest {
  /// If set, the request will be rejected if the latest version of the
  /// workstation on the server does not have this ETag.
  ///
  /// Optional.
  core.String? etag;

  /// If set, validate the request and preview the result, but do not actually
  /// apply it.
  ///
  /// Optional.
  core.bool? validateOnly;

  $WorkstationRequest({this.etag, this.validateOnly});

  $WorkstationRequest.fromJson(core.Map json_)
    : this(
        etag: json_['etag'] as core.String?,
        validateOnly: json_['validateOnly'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final etag = this.etag;
    final validateOnly = this.validateOnly;
    return {'etag': ?etag, 'validateOnly': ?validateOnly};
  }
}
