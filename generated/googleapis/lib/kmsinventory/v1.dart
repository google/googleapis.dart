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

/// KMS Inventory API - v1
///
/// For more information, see <https://cloud.google.com/kms/>
///
/// Create an instance of [KmsinventoryApi] to access these resources:
///
/// - [OrganizationsResource]
///   - [OrganizationsProtectedResourcesResource]
/// - [ProjectsResource]
///   - [ProjectsCryptoKeysResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsKeyRingsResource]
///       - [ProjectsLocationsKeyRingsCryptoKeysResource]
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

class KmsinventoryApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  OrganizationsResource get organizations => OrganizationsResource(_requester);
  ProjectsResource get projects => ProjectsResource(_requester);

  KmsinventoryApi(
    http.Client client, {
    core.String rootUrl = 'https://kmsinventory.googleapis.com/',
    core.String servicePath = '',
  }) : _requester = commons.ApiRequester(
         client,
         rootUrl,
         servicePath,
         requestHeaders,
       );
}

class OrganizationsResource {
  final commons.ApiRequester _requester;

  OrganizationsProtectedResourcesResource get protectedResources =>
      OrganizationsProtectedResourcesResource(_requester);

  OrganizationsResource(commons.ApiRequester client) : _requester = client;
}

class OrganizationsProtectedResourcesResource {
  final commons.ApiRequester _requester;

  OrganizationsProtectedResourcesResource(commons.ApiRequester client)
    : _requester = client;

  /// Returns metadata about the resources protected by the given Cloud KMS
  /// CryptoKey in the given Cloud organization.
  ///
  /// Request parameters:
  ///
  /// [scope] - Required. Resource name of the organization. Example:
  /// organizations/123
  /// Value must have pattern `^organizations/\[^/\]+$`.
  ///
  /// [cryptoKey] - Required. The resource name of the CryptoKey.
  ///
  /// [pageSize] - The maximum number of resources to return. The service may
  /// return fewer than this value. If unspecified, at most 500 resources will
  /// be returned. The maximum value is 500; values above 500 will be coerced to
  /// 500.
  ///
  /// [pageToken] - A page token, received from a previous
  /// KeyTrackingService.SearchProtectedResources call. Provide this to retrieve
  /// the subsequent page. When paginating, all other parameters provided to
  /// KeyTrackingService.SearchProtectedResources must match the call that
  /// provided the page token.
  ///
  /// [resourceTypes] - Optional. A list of resource types that this request
  /// searches for. If empty, it will search all the
  /// [trackable resource types](https://cloud.google.com/kms/docs/view-key-usage#tracked-resource-types).
  /// Regular expressions are also supported. For example: *
  /// `compute.googleapis.com.*` snapshots resources whose type starts with
  /// `compute.googleapis.com`. * `.*Image` snapshots resources whose type ends
  /// with `Image`. * `.*Image.*` snapshots resources whose type contains
  /// `Image`. See [RE2](https://github.com/google/re2/wiki/Syntax) for all
  /// supported regular expression syntax. If the regular expression does not
  /// match any supported resource type, an INVALID_ARGUMENT error will be
  /// returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudKmsInventoryV1SearchProtectedResourcesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudKmsInventoryV1SearchProtectedResourcesResponse>
  search(
    core.String scope, {
    core.String? cryptoKey,
    core.int? pageSize,
    core.String? pageToken,
    core.List<core.String>? resourceTypes,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (cryptoKey != null) 'cryptoKey': [cryptoKey],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (resourceTypes != null) 'resourceTypes': resourceTypes,
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$scope') + '/protectedResources:search';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudKmsInventoryV1SearchProtectedResourcesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsCryptoKeysResource get cryptoKeys =>
      ProjectsCryptoKeysResource(_requester);
  ProjectsLocationsResource get locations =>
      ProjectsLocationsResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsCryptoKeysResource {
  final commons.ApiRequester _requester;

  ProjectsCryptoKeysResource(commons.ApiRequester client) : _requester = client;

  /// Returns cryptographic keys managed by Cloud KMS in a given Cloud project.
  ///
  /// Note that this data is sourced from snapshots, meaning it may not
  /// completely reflect the actual state of key metadata at call time.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The Google Cloud project for which to retrieve key
  /// metadata, in the format `projects / * `
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. The maximum number of keys to return. The service
  /// may return fewer than this value. If unspecified, at most 1000 keys will
  /// be returned. The maximum value is 1000; values above 1000 will be coerced
  /// to 1000.
  ///
  /// [pageToken] - Optional. Pass this into a subsequent request in order to
  /// receive the next page of results.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudKmsInventoryV1ListCryptoKeysResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudKmsInventoryV1ListCryptoKeysResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/cryptoKeys';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudKmsInventoryV1ListCryptoKeysResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsKeyRingsResource get keyRings =>
      ProjectsLocationsKeyRingsResource(_requester);

  ProjectsLocationsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsLocationsKeyRingsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsKeyRingsCryptoKeysResource get cryptoKeys =>
      ProjectsLocationsKeyRingsCryptoKeysResource(_requester);

  ProjectsLocationsKeyRingsResource(commons.ApiRequester client)
    : _requester = client;
}

class ProjectsLocationsKeyRingsCryptoKeysResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsKeyRingsCryptoKeysResource(commons.ApiRequester client)
    : _requester = client;

  /// Returns aggregate information about the resources protected by the given
  /// Cloud KMS CryptoKey.
  ///
  /// Only resources within the same Cloud organization as the key will be
  /// returned. The project that holds the key must be part of an organization
  /// in order for this call to succeed.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the CryptoKey.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/keyRings/\[^/\]+/cryptoKeys/.*$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudKmsInventoryV1ProtectedResourcesSummary].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudKmsInventoryV1ProtectedResourcesSummary>
  getProtectedResourcesSummary(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$name') + '/protectedResourcesSummary';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudKmsInventoryV1ProtectedResourcesSummary.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

/// Response message for KeyDashboardService.ListCryptoKeys.
class GoogleCloudKmsInventoryV1ListCryptoKeysResponse {
  /// The list of CryptoKeys.
  core.List<GoogleCloudKmsV1CryptoKey>? cryptoKeys;

  /// The page token returned from the previous response if the next page is
  /// desired.
  core.String? nextPageToken;

  GoogleCloudKmsInventoryV1ListCryptoKeysResponse({
    this.cryptoKeys,
    this.nextPageToken,
  });

  GoogleCloudKmsInventoryV1ListCryptoKeysResponse.fromJson(core.Map json_)
    : this(
        cryptoKeys:
            (json_['cryptoKeys'] as core.List?)
                ?.map(
                  (value) => GoogleCloudKmsV1CryptoKey.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (cryptoKeys != null) 'cryptoKeys': cryptoKeys!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// Metadata about a resource protected by a Cloud KMS key.
class GoogleCloudKmsInventoryV1ProtectedResource {
  /// The Cloud product that owns the resource.
  ///
  /// Example: `compute`
  core.String? cloudProduct;

  /// The time at which this resource was created.
  ///
  /// The granularity is in seconds. Timestamp.nanos will always be 0.
  ///
  /// Output only.
  core.String? createTime;

  /// The name of the Cloud KMS
  /// [CryptoKeyVersion](https://cloud.google.com/kms/docs/reference/rest/v1/projects.locations.keyRings.cryptoKeys.cryptoKeyVersions?hl=en)
  /// used to protect this resource via CMEK.
  ///
  /// This field is empty if the Google Cloud product owning the resource does
  /// not provide key version data to Asset Inventory. If there are multiple key
  /// versions protecting the resource, then this is same value as the first
  /// element of crypto_key_versions.
  core.String? cryptoKeyVersion;

  /// The names of the Cloud KMS
  /// [CryptoKeyVersion](https://cloud.google.com/kms/docs/reference/rest/v1/projects.locations.keyRings.cryptoKeys.cryptoKeyVersions?hl=en)
  /// used to protect this resource via CMEK.
  ///
  /// This field is empty if the Google Cloud product owning the resource does
  /// not provide key versions data to Asset Inventory. The first element of
  /// this field is stored in crypto_key_version.
  core.List<core.String>? cryptoKeyVersions;

  /// A key-value pair of the resource's labels (v1) to their values.
  core.Map<core.String, core.String>? labels;

  /// Location can be `global`, regional like `us-east1`, or zonal like
  /// `us-west1-b`.
  core.String? location;

  /// The full resource name of the resource.
  ///
  /// Example:
  /// `//compute.googleapis.com/projects/my_project_123/zones/zone1/instances/instance1`.
  core.String? name;

  /// Format: `projects/{PROJECT_NUMBER}`.
  core.String? project;

  /// The ID of the project that owns the resource.
  core.String? projectId;

  /// Example: `compute.googleapis.com/Disk`
  core.String? resourceType;

  GoogleCloudKmsInventoryV1ProtectedResource({
    this.cloudProduct,
    this.createTime,
    this.cryptoKeyVersion,
    this.cryptoKeyVersions,
    this.labels,
    this.location,
    this.name,
    this.project,
    this.projectId,
    this.resourceType,
  });

  GoogleCloudKmsInventoryV1ProtectedResource.fromJson(core.Map json_)
    : this(
        cloudProduct: json_['cloudProduct'] as core.String?,
        createTime: json_['createTime'] as core.String?,
        cryptoKeyVersion: json_['cryptoKeyVersion'] as core.String?,
        cryptoKeyVersions:
            (json_['cryptoKeyVersions'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        location: json_['location'] as core.String?,
        name: json_['name'] as core.String?,
        project: json_['project'] as core.String?,
        projectId: json_['projectId'] as core.String?,
        resourceType: json_['resourceType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (cloudProduct != null) 'cloudProduct': cloudProduct!,
    if (createTime != null) 'createTime': createTime!,
    if (cryptoKeyVersion != null) 'cryptoKeyVersion': cryptoKeyVersion!,
    if (cryptoKeyVersions != null) 'cryptoKeyVersions': cryptoKeyVersions!,
    if (labels != null) 'labels': labels!,
    if (location != null) 'location': location!,
    if (name != null) 'name': name!,
    if (project != null) 'project': project!,
    if (projectId != null) 'projectId': projectId!,
    if (resourceType != null) 'resourceType': resourceType!,
  };
}

/// Aggregate information about the resources protected by a Cloud KMS key in
/// the same Cloud organization as the key.
class GoogleCloudKmsInventoryV1ProtectedResourcesSummary {
  /// The number of resources protected by the key grouped by Cloud product.
  core.Map<core.String, core.String>? cloudProducts;

  /// The number of resources protected by the key grouped by region.
  core.Map<core.String, core.String>? locations;

  /// The full name of the ProtectedResourcesSummary resource.
  ///
  /// Example:
  /// projects/test-project/locations/us/keyRings/test-keyring/cryptoKeys/test-key/protectedResourcesSummary
  core.String? name;

  /// The number of distinct Cloud projects in the same Cloud organization as
  /// the key that have resources protected by the key.
  core.int? projectCount;

  /// The total number of protected resources in the same Cloud organization as
  /// the key.
  core.String? resourceCount;

  /// The number of resources protected by the key grouped by resource type.
  core.Map<core.String, core.String>? resourceTypes;

  GoogleCloudKmsInventoryV1ProtectedResourcesSummary({
    this.cloudProducts,
    this.locations,
    this.name,
    this.projectCount,
    this.resourceCount,
    this.resourceTypes,
  });

  GoogleCloudKmsInventoryV1ProtectedResourcesSummary.fromJson(core.Map json_)
    : this(
        cloudProducts: (json_['cloudProducts']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        locations: (json_['locations'] as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        name: json_['name'] as core.String?,
        projectCount: json_['projectCount'] as core.int?,
        resourceCount: json_['resourceCount'] as core.String?,
        resourceTypes: (json_['resourceTypes']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (cloudProducts != null) 'cloudProducts': cloudProducts!,
    if (locations != null) 'locations': locations!,
    if (name != null) 'name': name!,
    if (projectCount != null) 'projectCount': projectCount!,
    if (resourceCount != null) 'resourceCount': resourceCount!,
    if (resourceTypes != null) 'resourceTypes': resourceTypes!,
  };
}

/// Response message for KeyTrackingService.SearchProtectedResources.
class GoogleCloudKmsInventoryV1SearchProtectedResourcesResponse {
  /// A token that can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// Protected resources for this page.
  core.List<GoogleCloudKmsInventoryV1ProtectedResource>? protectedResources;

  GoogleCloudKmsInventoryV1SearchProtectedResourcesResponse({
    this.nextPageToken,
    this.protectedResources,
  });

  GoogleCloudKmsInventoryV1SearchProtectedResourcesResponse.fromJson(
    core.Map json_,
  ) : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        protectedResources:
            (json_['protectedResources'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudKmsInventoryV1ProtectedResource.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (protectedResources != null) 'protectedResources': protectedResources!,
  };
}

/// A CryptoKey represents a logical key that can be used for cryptographic
/// operations.
///
/// A CryptoKey is made up of zero or more versions, which represent the actual
/// key material used in cryptographic operations.
class GoogleCloudKmsV1CryptoKey {
  /// The time at which this CryptoKey was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The resource name of the backend environment where the key material for
  /// all CryptoKeyVersions associated with this CryptoKey reside and where all
  /// related cryptographic operations are performed.
  ///
  /// Only applicable if CryptoKeyVersions have a ProtectionLevel of
  /// EXTERNAL_VPC, with the resource name in the format `projects / *
  /// /locations / * /ekmConnections / * `. Note, this list is non-exhaustive
  /// and may apply to additional ProtectionLevels in the future.
  ///
  /// Immutable.
  core.String? cryptoKeyBackend;

  /// The period of time that versions of this key spend in the
  /// DESTROY_SCHEDULED state before transitioning to DESTROYED.
  ///
  /// If not specified at creation time, the default duration is 30 days.
  ///
  /// Immutable.
  core.String? destroyScheduledDuration;

  /// Whether this key may contain imported versions only.
  ///
  /// Immutable.
  core.bool? importOnly;

  /// The policy used for Key Access Justifications Policy Enforcement.
  ///
  /// If this field is present and this key is enrolled in Key Access
  /// Justifications Policy Enforcement, the policy will be evaluated in
  /// encrypt, decrypt, and sign operations, and the operation will fail if
  /// rejected by the policy. The policy is defined by specifying zero or more
  /// allowed justification codes.
  /// https://cloud.google.com/assured-workloads/key-access-justifications/docs/justification-codes
  /// By default, this field is absent, and all justification codes are allowed.
  ///
  /// Optional.
  GoogleCloudKmsV1KeyAccessJustificationsPolicy? keyAccessJustificationsPolicy;

  /// Labels with user-defined metadata.
  ///
  /// For more information, see
  /// [Labeling Keys](https://cloud.google.com/kms/docs/labeling-keys).
  core.Map<core.String, core.String>? labels;

  /// The resource name for this CryptoKey in the format `projects / *
  /// /locations / * /keyRings / * /cryptoKeys / * `.
  ///
  /// Output only.
  core.String? name;

  /// At next_rotation_time, the Key Management Service will automatically: 1.
  ///
  /// Create a new version of this CryptoKey. 2. Mark the new version as
  /// primary. Key rotations performed manually via CreateCryptoKeyVersion and
  /// UpdateCryptoKeyPrimaryVersion do not affect next_rotation_time. Keys with
  /// purpose ENCRYPT_DECRYPT support automatic rotation. For other keys, this
  /// field must be omitted.
  core.String? nextRotationTime;

  /// A copy of the "primary" CryptoKeyVersion that will be used by Encrypt when
  /// this CryptoKey is given in EncryptRequest.name.
  ///
  /// The CryptoKey's primary version can be updated via
  /// UpdateCryptoKeyPrimaryVersion. Keys with purpose ENCRYPT_DECRYPT may have
  /// a primary. For other keys, this field will be omitted.
  ///
  /// Output only.
  GoogleCloudKmsV1CryptoKeyVersion? primary;

  /// The immutable purpose of this CryptoKey.
  ///
  /// Immutable.
  /// Possible string values are:
  /// - "CRYPTO_KEY_PURPOSE_UNSPECIFIED" : Not specified.
  /// - "ENCRYPT_DECRYPT" : CryptoKeys with this purpose may be used with
  /// Encrypt and Decrypt.
  /// - "ASYMMETRIC_SIGN" : CryptoKeys with this purpose may be used with
  /// AsymmetricSign and GetPublicKey.
  /// - "ASYMMETRIC_DECRYPT" : CryptoKeys with this purpose may be used with
  /// AsymmetricDecrypt and GetPublicKey.
  /// - "RAW_ENCRYPT_DECRYPT" : CryptoKeys with this purpose may be used with
  /// RawEncrypt and RawDecrypt. This purpose is meant to be used for
  /// interoperable symmetric encryption and does not support automatic
  /// CryptoKey rotation.
  /// - "MAC" : CryptoKeys with this purpose may be used with MacSign.
  /// - "KEY_ENCAPSULATION" : CryptoKeys with this purpose may be used with
  /// GetPublicKey and Decapsulate.
  core.String? purpose;

  /// next_rotation_time will be advanced by this period when the service
  /// automatically rotates a key.
  ///
  /// Must be at least 24 hours and at most 876,000 hours. If rotation_period is
  /// set, next_rotation_time must also be set. Keys with purpose
  /// ENCRYPT_DECRYPT support automatic rotation. For other keys, this field
  /// must be omitted.
  core.String? rotationPeriod;

  /// A template describing settings for new CryptoKeyVersion instances.
  ///
  /// The properties of new CryptoKeyVersion instances created by either
  /// CreateCryptoKeyVersion or auto-rotation are controlled by this template.
  GoogleCloudKmsV1CryptoKeyVersionTemplate? versionTemplate;

  GoogleCloudKmsV1CryptoKey({
    this.createTime,
    this.cryptoKeyBackend,
    this.destroyScheduledDuration,
    this.importOnly,
    this.keyAccessJustificationsPolicy,
    this.labels,
    this.name,
    this.nextRotationTime,
    this.primary,
    this.purpose,
    this.rotationPeriod,
    this.versionTemplate,
  });

  GoogleCloudKmsV1CryptoKey.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        cryptoKeyBackend: json_['cryptoKeyBackend'] as core.String?,
        destroyScheduledDuration:
            json_['destroyScheduledDuration'] as core.String?,
        importOnly: json_['importOnly'] as core.bool?,
        keyAccessJustificationsPolicy:
            json_.containsKey('keyAccessJustificationsPolicy')
                ? GoogleCloudKmsV1KeyAccessJustificationsPolicy.fromJson(
                  json_['keyAccessJustificationsPolicy']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        name: json_['name'] as core.String?,
        nextRotationTime: json_['nextRotationTime'] as core.String?,
        primary:
            json_.containsKey('primary')
                ? GoogleCloudKmsV1CryptoKeyVersion.fromJson(
                  json_['primary'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        purpose: json_['purpose'] as core.String?,
        rotationPeriod: json_['rotationPeriod'] as core.String?,
        versionTemplate:
            json_.containsKey('versionTemplate')
                ? GoogleCloudKmsV1CryptoKeyVersionTemplate.fromJson(
                  json_['versionTemplate']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (createTime != null) 'createTime': createTime!,
    if (cryptoKeyBackend != null) 'cryptoKeyBackend': cryptoKeyBackend!,
    if (destroyScheduledDuration != null)
      'destroyScheduledDuration': destroyScheduledDuration!,
    if (importOnly != null) 'importOnly': importOnly!,
    if (keyAccessJustificationsPolicy != null)
      'keyAccessJustificationsPolicy': keyAccessJustificationsPolicy!,
    if (labels != null) 'labels': labels!,
    if (name != null) 'name': name!,
    if (nextRotationTime != null) 'nextRotationTime': nextRotationTime!,
    if (primary != null) 'primary': primary!,
    if (purpose != null) 'purpose': purpose!,
    if (rotationPeriod != null) 'rotationPeriod': rotationPeriod!,
    if (versionTemplate != null) 'versionTemplate': versionTemplate!,
  };
}

/// A CryptoKeyVersion represents an individual cryptographic key, and the
/// associated key material.
///
/// An ENABLED version can be used for cryptographic operations. For security
/// reasons, the raw cryptographic key material represented by a
/// CryptoKeyVersion can never be viewed or exported. It can only be used to
/// encrypt, decrypt, or sign data when an authorized user or application
/// invokes Cloud KMS.
class GoogleCloudKmsV1CryptoKeyVersion {
  /// The CryptoKeyVersionAlgorithm that this CryptoKeyVersion supports.
  ///
  /// Output only.
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
  /// - "PQ_SIGN_ML_DSA_65" : The post-quantum Module-Lattice-Based Digital
  /// Signature Algorithm, at security level 3. Randomized version.
  /// - "PQ_SIGN_SLH_DSA_SHA2_128S" : The post-quantum stateless hash-based
  /// digital signature algorithm, at security level 1. Randomized version.
  /// - "PQ_SIGN_HASH_SLH_DSA_SHA2_128S_SHA256" : The post-quantum stateless
  /// hash-based digital signature algorithm, at security level 1. Randomized
  /// pre-hash version supporting SHA256 digests.
  core.String? algorithm;

  /// Statement that was generated and signed by the HSM at key creation time.
  ///
  /// Use this statement to verify attributes of the key as stored on the HSM,
  /// independently of Google. Only provided for key versions with
  /// protection_level HSM.
  ///
  /// Output only.
  GoogleCloudKmsV1KeyOperationAttestation? attestation;

  /// The time at which this CryptoKeyVersion was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The time this CryptoKeyVersion's key material was destroyed.
  ///
  /// Only present if state is DESTROYED.
  ///
  /// Output only.
  core.String? destroyEventTime;

  /// The time this CryptoKeyVersion's key material is scheduled for
  /// destruction.
  ///
  /// Only present if state is DESTROY_SCHEDULED.
  ///
  /// Output only.
  core.String? destroyTime;

  /// The root cause of the most recent external destruction failure.
  ///
  /// Only present if state is EXTERNAL_DESTRUCTION_FAILED.
  ///
  /// Output only.
  core.String? externalDestructionFailureReason;

  /// ExternalProtectionLevelOptions stores a group of additional fields for
  /// configuring a CryptoKeyVersion that are specific to the EXTERNAL
  /// protection level and EXTERNAL_VPC protection levels.
  GoogleCloudKmsV1ExternalProtectionLevelOptions?
  externalProtectionLevelOptions;

  /// The time this CryptoKeyVersion's key material was generated.
  ///
  /// Output only.
  core.String? generateTime;

  /// The root cause of the most recent generation failure.
  ///
  /// Only present if state is GENERATION_FAILED.
  ///
  /// Output only.
  core.String? generationFailureReason;

  /// The root cause of the most recent import failure.
  ///
  /// Only present if state is IMPORT_FAILED.
  ///
  /// Output only.
  core.String? importFailureReason;

  /// The name of the ImportJob used in the most recent import of this
  /// CryptoKeyVersion.
  ///
  /// Only present if the underlying key material was imported.
  ///
  /// Output only.
  core.String? importJob;

  /// The time at which this CryptoKeyVersion's key material was most recently
  /// imported.
  ///
  /// Output only.
  core.String? importTime;

  /// The resource name for this CryptoKeyVersion in the format `projects / *
  /// /locations / * /keyRings / * /cryptoKeys / * /cryptoKeyVersions / * `.
  ///
  /// Output only.
  core.String? name;

  /// The ProtectionLevel describing how crypto operations are performed with
  /// this CryptoKeyVersion.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "PROTECTION_LEVEL_UNSPECIFIED" : Not specified.
  /// - "SOFTWARE" : Crypto operations are performed in software.
  /// - "HSM" : Crypto operations are performed in a Hardware Security Module.
  /// - "EXTERNAL" : Crypto operations are performed by an external key manager.
  /// - "EXTERNAL_VPC" : Crypto operations are performed in an EKM-over-VPC
  /// backend.
  core.String? protectionLevel;

  /// Whether or not this key version is eligible for reimport, by being
  /// specified as a target in ImportCryptoKeyVersionRequest.crypto_key_version.
  ///
  /// Output only.
  core.bool? reimportEligible;

  /// The current state of the CryptoKeyVersion.
  /// Possible string values are:
  /// - "CRYPTO_KEY_VERSION_STATE_UNSPECIFIED" : Not specified.
  /// - "PENDING_GENERATION" : This version is still being generated. It may not
  /// be used, enabled, disabled, or destroyed yet. Cloud KMS will automatically
  /// mark this version ENABLED as soon as the version is ready.
  /// - "ENABLED" : This version may be used for cryptographic operations.
  /// - "DISABLED" : This version may not be used, but the key material is still
  /// available, and the version can be placed back into the ENABLED state.
  /// - "DESTROYED" : The key material of this version is destroyed and no
  /// longer stored. This version may only become ENABLED again if this version
  /// is reimport_eligible and the original key material is reimported with a
  /// call to KeyManagementService.ImportCryptoKeyVersion.
  /// - "DESTROY_SCHEDULED" : This version is scheduled for destruction, and
  /// will be destroyed soon. Call RestoreCryptoKeyVersion to put it back into
  /// the DISABLED state.
  /// - "PENDING_IMPORT" : This version is still being imported. It may not be
  /// used, enabled, disabled, or destroyed yet. Cloud KMS will automatically
  /// mark this version ENABLED as soon as the version is ready.
  /// - "IMPORT_FAILED" : This version was not imported successfully. It may not
  /// be used, enabled, disabled, or destroyed. The submitted key material has
  /// been discarded. Additional details can be found in
  /// CryptoKeyVersion.import_failure_reason.
  /// - "GENERATION_FAILED" : This version was not generated successfully. It
  /// may not be used, enabled, disabled, or destroyed. Additional details can
  /// be found in CryptoKeyVersion.generation_failure_reason.
  /// - "PENDING_EXTERNAL_DESTRUCTION" : This version was destroyed, and it may
  /// not be used or enabled again. Cloud KMS is waiting for the corresponding
  /// key material residing in an external key manager to be destroyed.
  /// - "EXTERNAL_DESTRUCTION_FAILED" : This version was destroyed, and it may
  /// not be used or enabled again. However, Cloud KMS could not confirm that
  /// the corresponding key material residing in an external key manager was
  /// destroyed. Additional details can be found in
  /// CryptoKeyVersion.external_destruction_failure_reason.
  core.String? state;

  GoogleCloudKmsV1CryptoKeyVersion({
    this.algorithm,
    this.attestation,
    this.createTime,
    this.destroyEventTime,
    this.destroyTime,
    this.externalDestructionFailureReason,
    this.externalProtectionLevelOptions,
    this.generateTime,
    this.generationFailureReason,
    this.importFailureReason,
    this.importJob,
    this.importTime,
    this.name,
    this.protectionLevel,
    this.reimportEligible,
    this.state,
  });

  GoogleCloudKmsV1CryptoKeyVersion.fromJson(core.Map json_)
    : this(
        algorithm: json_['algorithm'] as core.String?,
        attestation:
            json_.containsKey('attestation')
                ? GoogleCloudKmsV1KeyOperationAttestation.fromJson(
                  json_['attestation'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        createTime: json_['createTime'] as core.String?,
        destroyEventTime: json_['destroyEventTime'] as core.String?,
        destroyTime: json_['destroyTime'] as core.String?,
        externalDestructionFailureReason:
            json_['externalDestructionFailureReason'] as core.String?,
        externalProtectionLevelOptions:
            json_.containsKey('externalProtectionLevelOptions')
                ? GoogleCloudKmsV1ExternalProtectionLevelOptions.fromJson(
                  json_['externalProtectionLevelOptions']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        generateTime: json_['generateTime'] as core.String?,
        generationFailureReason:
            json_['generationFailureReason'] as core.String?,
        importFailureReason: json_['importFailureReason'] as core.String?,
        importJob: json_['importJob'] as core.String?,
        importTime: json_['importTime'] as core.String?,
        name: json_['name'] as core.String?,
        protectionLevel: json_['protectionLevel'] as core.String?,
        reimportEligible: json_['reimportEligible'] as core.bool?,
        state: json_['state'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (algorithm != null) 'algorithm': algorithm!,
    if (attestation != null) 'attestation': attestation!,
    if (createTime != null) 'createTime': createTime!,
    if (destroyEventTime != null) 'destroyEventTime': destroyEventTime!,
    if (destroyTime != null) 'destroyTime': destroyTime!,
    if (externalDestructionFailureReason != null)
      'externalDestructionFailureReason': externalDestructionFailureReason!,
    if (externalProtectionLevelOptions != null)
      'externalProtectionLevelOptions': externalProtectionLevelOptions!,
    if (generateTime != null) 'generateTime': generateTime!,
    if (generationFailureReason != null)
      'generationFailureReason': generationFailureReason!,
    if (importFailureReason != null)
      'importFailureReason': importFailureReason!,
    if (importJob != null) 'importJob': importJob!,
    if (importTime != null) 'importTime': importTime!,
    if (name != null) 'name': name!,
    if (protectionLevel != null) 'protectionLevel': protectionLevel!,
    if (reimportEligible != null) 'reimportEligible': reimportEligible!,
    if (state != null) 'state': state!,
  };
}

/// A CryptoKeyVersionTemplate specifies the properties to use when creating a
/// new CryptoKeyVersion, either manually with CreateCryptoKeyVersion or
/// automatically as a result of auto-rotation.
typedef GoogleCloudKmsV1CryptoKeyVersionTemplate = $CryptoKeyVersionTemplate;

/// ExternalProtectionLevelOptions stores a group of additional fields for
/// configuring a CryptoKeyVersion that are specific to the EXTERNAL protection
/// level and EXTERNAL_VPC protection levels.
typedef GoogleCloudKmsV1ExternalProtectionLevelOptions =
    $ExternalProtectionLevelOptions;

/// A KeyAccessJustificationsPolicy specifies zero or more allowed AccessReason
/// values for encrypt, decrypt, and sign operations on a CryptoKey.
typedef GoogleCloudKmsV1KeyAccessJustificationsPolicy =
    $KeyAccessJustificationsPolicy;

/// Contains an HSM-generated attestation about a key operation.
///
/// For more information, see
/// [Verifying attestations](https://cloud.google.com/kms/docs/attest-key).
class GoogleCloudKmsV1KeyOperationAttestation {
  /// The certificate chains needed to validate the attestation
  ///
  /// Output only.
  GoogleCloudKmsV1KeyOperationAttestationCertificateChains? certChains;

  /// The attestation data provided by the HSM when the key operation was
  /// performed.
  ///
  /// Output only.
  core.String? content;
  core.List<core.int> get contentAsBytes => convert.base64.decode(content!);

  set contentAsBytes(core.List<core.int> bytes_) {
    content = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  /// The format of the attestation data.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "ATTESTATION_FORMAT_UNSPECIFIED" : Not specified.
  /// - "CAVIUM_V1_COMPRESSED" : Cavium HSM attestation compressed with gzip.
  /// Note that this format is defined by Cavium and subject to change at any
  /// time. See
  /// https://www.marvell.com/products/security-solutions/nitrox-hs-adapters/software-key-attestation.html.
  /// - "CAVIUM_V2_COMPRESSED" : Cavium HSM attestation V2 compressed with gzip.
  /// This is a new format introduced in Cavium's version 3.2-08.
  core.String? format;

  GoogleCloudKmsV1KeyOperationAttestation({
    this.certChains,
    this.content,
    this.format,
  });

  GoogleCloudKmsV1KeyOperationAttestation.fromJson(core.Map json_)
    : this(
        certChains:
            json_.containsKey('certChains')
                ? GoogleCloudKmsV1KeyOperationAttestationCertificateChains.fromJson(
                  json_['certChains'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        content: json_['content'] as core.String?,
        format: json_['format'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (certChains != null) 'certChains': certChains!,
    if (content != null) 'content': content!,
    if (format != null) 'format': format!,
  };
}

/// Certificate chains needed to verify the attestation.
///
/// Certificates in chains are PEM-encoded and are ordered based on
/// https://tools.ietf.org/html/rfc5246#section-7.4.2.
typedef GoogleCloudKmsV1KeyOperationAttestationCertificateChains =
    $CertificateChains;
