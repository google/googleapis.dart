/// Shared types to minimize the package size. Do not use directly.
@core.Deprecated(
  'Avoid importing this library. '
  'Use the members defined in the target API library instead.',
)
library $shared;

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

import 'dart:convert' as convert;
import 'dart:core' as core;

/// Used by:
///
/// - accesscontextmanager:v1 : AccessPolicy
/// - cloudasset:v1 : GoogleIdentityAccesscontextmanagerV1AccessPolicy
class $AccessPolicy {
  /// An opaque identifier for the current version of the `AccessPolicy`.
  ///
  /// This will always be a strongly validated etag, meaning that two Access
  /// Polices will be identical if and only if their etags are identical.
  /// Clients should not expect this to be in any specific format.
  ///
  /// Output only.
  core.String? etag;

  /// Resource name of the `AccessPolicy`.
  ///
  /// Format: `accessPolicies/{access_policy}`
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

  /// The scopes of a policy define which resources an ACM policy can restrict,
  /// and where ACM resources can be referenced.
  ///
  /// For example, a policy with scopes=\["folders/123"\] has the following
  /// behavior: - vpcsc perimeters can only restrict projects within folders/123
  /// - access levels can only be referenced by resources within folders/123. If
  /// empty, there are no limitations on which resources can be restricted by an
  /// ACM policy, and there are no limitations on where ACM resources can be
  /// referenced. Only one policy can include a given scope (attempting to
  /// create a second policy which includes "folders/123" will result in an
  /// error). Currently, scopes cannot be modified after a policy is created.
  /// Currently, policies can only have a single scope. Format: list of
  /// `folders/{folder_number}` or `projects/{project_number}`
  core.List<core.String>? scopes;

  /// Human readable title.
  ///
  /// Does not affect behavior.
  ///
  /// Required.
  core.String? title;

  $AccessPolicy({
    this.etag,
    this.name,
    this.parent,
    this.scopes,
    this.title,
  });

  $AccessPolicy.fromJson(core.Map _json)
      : this(
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          parent: _json.containsKey('parent')
              ? _json['parent'] as core.String
              : null,
          scopes: _json.containsKey('scopes')
              ? (_json['scopes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          title:
              _json.containsKey('title') ? _json['title'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
        if (name != null) 'name': name!,
        if (parent != null) 'parent': parent!,
        if (scopes != null) 'scopes': scopes!,
        if (title != null) 'title': title!,
      };
}

/// Used by:
///
/// - dfareporting:v3.4 : AccountActiveAdSummary
/// - dfareporting:v3.5 : AccountActiveAdSummary
class $AccountActiveAdSummary {
  /// ID of the account.
  core.String? accountId;

  /// Ads that have been activated for the account
  core.String? activeAds;

  /// Maximum number of active ads allowed for the account.
  /// Possible string values are:
  /// - "ACTIVE_ADS_TIER_40K"
  /// - "ACTIVE_ADS_TIER_75K"
  /// - "ACTIVE_ADS_TIER_100K"
  /// - "ACTIVE_ADS_TIER_200K"
  /// - "ACTIVE_ADS_TIER_300K"
  /// - "ACTIVE_ADS_TIER_500K"
  /// - "ACTIVE_ADS_TIER_750K"
  /// - "ACTIVE_ADS_TIER_1M"
  core.String? activeAdsLimitTier;

  /// Ads that can be activated for the account.
  core.String? availableAds;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#accountActiveAdSummary".
  core.String? kind;

  $AccountActiveAdSummary({
    this.accountId,
    this.activeAds,
    this.activeAdsLimitTier,
    this.availableAds,
    this.kind,
  });

  $AccountActiveAdSummary.fromJson(core.Map _json)
      : this(
          accountId: _json.containsKey('accountId')
              ? _json['accountId'] as core.String
              : null,
          activeAds: _json.containsKey('activeAds')
              ? _json['activeAds'] as core.String
              : null,
          activeAdsLimitTier: _json.containsKey('activeAdsLimitTier')
              ? _json['activeAdsLimitTier'] as core.String
              : null,
          availableAds: _json.containsKey('availableAds')
              ? _json['availableAds'] as core.String
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountId != null) 'accountId': accountId!,
        if (activeAds != null) 'activeAds': activeAds!,
        if (activeAdsLimitTier != null)
          'activeAdsLimitTier': activeAdsLimitTier!,
        if (availableAds != null) 'availableAds': availableAds!,
        if (kind != null) 'kind': kind!,
      };
}

/// Used by:
///
/// - dfareporting:v3.4 : AccountPermission
/// - dfareporting:v3.5 : AccountPermission
class $AccountPermission {
  /// Account profiles associated with this account permission.
  ///
  /// Possible values are: - "ACCOUNT_PROFILE_BASIC" -
  /// "ACCOUNT_PROFILE_STANDARD"
  core.List<core.String>? accountProfiles;

  /// ID of this account permission.
  core.String? id;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#accountPermission".
  core.String? kind;

  /// Administrative level required to enable this account permission.
  /// Possible string values are:
  /// - "USER"
  /// - "ADMINISTRATOR"
  core.String? level;

  /// Name of this account permission.
  core.String? name;

  /// Permission group of this account permission.
  core.String? permissionGroupId;

  $AccountPermission({
    this.accountProfiles,
    this.id,
    this.kind,
    this.level,
    this.name,
    this.permissionGroupId,
  });

  $AccountPermission.fromJson(core.Map _json)
      : this(
          accountProfiles: _json.containsKey('accountProfiles')
              ? (_json['accountProfiles'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          level:
              _json.containsKey('level') ? _json['level'] as core.String : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          permissionGroupId: _json.containsKey('permissionGroupId')
              ? _json['permissionGroupId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountProfiles != null) 'accountProfiles': accountProfiles!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (level != null) 'level': level!,
        if (name != null) 'name': name!,
        if (permissionGroupId != null) 'permissionGroupId': permissionGroupId!,
      };
}

/// Used by:
///
/// - dfareporting:v3.4 : AccountPermissionGroup
/// - dfareporting:v3.5 : AccountPermissionGroup
class $AccountPermissionGroup {
  /// ID of this account permission group.
  core.String? id;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#accountPermissionGroup".
  core.String? kind;

  /// Name of this account permission group.
  core.String? name;

  $AccountPermissionGroup({
    this.id,
    this.kind,
    this.name,
  });

  $AccountPermissionGroup.fromJson(core.Map _json)
      : this(
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (name != null) 'name': name!,
      };
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

  $ActionParameter({
    this.key,
    this.value,
  });

  $ActionParameter.fromJson(core.Map _json)
      : this(
          key: _json.containsKey('key') ? _json['key'] as core.String : null,
          value:
              _json.containsKey('value') ? _json['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (key != null) 'key': key!,
        if (value != null) 'value': value!,
      };
}

/// Used by:
///
/// - dfareporting:v3.4 : AdSlot
/// - dfareporting:v3.5 : AdSlot
class $AdSlot {
  /// Comment for this ad slot.
  core.String? comment;

  /// Ad slot compatibility.
  ///
  /// DISPLAY and DISPLAY_INTERSTITIAL refer to rendering either on desktop,
  /// mobile devices or in mobile apps for regular or interstitial ads
  /// respectively. APP and APP_INTERSTITIAL are for rendering in mobile apps.
  /// IN_STREAM_VIDEO refers to rendering in in-stream video ads developed with
  /// the VAST standard.
  /// Possible string values are:
  /// - "DISPLAY"
  /// - "DISPLAY_INTERSTITIAL"
  /// - "APP"
  /// - "APP_INTERSTITIAL"
  /// - "IN_STREAM_VIDEO"
  /// - "IN_STREAM_AUDIO"
  core.String? compatibility;

  /// Height of this ad slot.
  core.String? height;

  /// ID of the placement from an external platform that is linked to this ad
  /// slot.
  core.String? linkedPlacementId;

  /// Name of this ad slot.
  core.String? name;

  /// Payment source type of this ad slot.
  /// Possible string values are:
  /// - "PLANNING_PAYMENT_SOURCE_TYPE_AGENCY_PAID"
  /// - "PLANNING_PAYMENT_SOURCE_TYPE_PUBLISHER_PAID"
  core.String? paymentSourceType;

  /// Primary ad slot of a roadblock inventory item.
  core.bool? primary;

  /// Width of this ad slot.
  core.String? width;

  $AdSlot({
    this.comment,
    this.compatibility,
    this.height,
    this.linkedPlacementId,
    this.name,
    this.paymentSourceType,
    this.primary,
    this.width,
  });

  $AdSlot.fromJson(core.Map _json)
      : this(
          comment: _json.containsKey('comment')
              ? _json['comment'] as core.String
              : null,
          compatibility: _json.containsKey('compatibility')
              ? _json['compatibility'] as core.String
              : null,
          height: _json.containsKey('height')
              ? _json['height'] as core.String
              : null,
          linkedPlacementId: _json.containsKey('linkedPlacementId')
              ? _json['linkedPlacementId'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          paymentSourceType: _json.containsKey('paymentSourceType')
              ? _json['paymentSourceType'] as core.String
              : null,
          primary: _json.containsKey('primary')
              ? _json['primary'] as core.bool
              : null,
          width:
              _json.containsKey('width') ? _json['width'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (comment != null) 'comment': comment!,
        if (compatibility != null) 'compatibility': compatibility!,
        if (height != null) 'height': height!,
        if (linkedPlacementId != null) 'linkedPlacementId': linkedPlacementId!,
        if (name != null) 'name': name!,
        if (paymentSourceType != null) 'paymentSourceType': paymentSourceType!,
        if (primary != null) 'primary': primary!,
        if (width != null) 'width': width!,
      };
}

/// Used by:
///
/// - dfareporting:v3.4 : AdvertiserGroup
/// - dfareporting:v3.5 : AdvertiserGroup
class $AdvertiserGroup {
  /// Account ID of this advertiser group.
  ///
  /// This is a read-only field that can be left blank.
  core.String? accountId;

  /// ID of this advertiser group.
  ///
  /// This is a read-only, auto-generated field.
  core.String? id;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#advertiserGroup".
  core.String? kind;

  /// Name of this advertiser group.
  ///
  /// This is a required field and must be less than 256 characters long and
  /// unique among advertiser groups of the same account.
  core.String? name;

  $AdvertiserGroup({
    this.accountId,
    this.id,
    this.kind,
    this.name,
  });

  $AdvertiserGroup.fromJson(core.Map _json)
      : this(
          accountId: _json.containsKey('accountId')
              ? _json['accountId'] as core.String
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountId != null) 'accountId': accountId!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (name != null) 'name': name!,
      };
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

  $AliasContext({
    this.kind,
    this.name,
  });

  $AliasContext.fromJson(core.Map _json)
      : this(
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (name != null) 'name': name!,
      };
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

  $Artifact({
    this.checksum,
    this.id,
    this.names,
  });

  $Artifact.fromJson(core.Map _json)
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

/// Used by:
///
/// - artifactregistry:v1 : ImportAptArtifactsGcsSource
/// - artifactregistry:v1 : ImportYumArtifactsGcsSource
class $ArtifactsGcsSource {
  /// Cloud Storage paths URI (e.g., gs://my_bucket//my_object).
  core.List<core.String>? uris;

  /// Supports URI wildcards for matching multiple objects from a single URI.
  core.bool? useWildcards;

  $ArtifactsGcsSource({
    this.uris,
    this.useWildcards,
  });

  $ArtifactsGcsSource.fromJson(core.Map _json)
      : this(
          uris: _json.containsKey('uris')
              ? (_json['uris'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          useWildcards: _json.containsKey('useWildcards')
              ? _json['useWildcards'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (uris != null) 'uris': uris!,
        if (useWildcards != null) 'useWildcards': useWildcards!,
      };
}

/// Used by:
///
/// - ml:v1 : GoogleCloudMlV1__IntegratedGradientsAttribution
/// - ml:v1 : GoogleCloudMlV1__XraiAttribution
class $Attribution {
  /// Number of steps for approximating the path integral.
  ///
  /// A good value to start is 50 and gradually increase until the sum to diff
  /// property is met within the desired error range.
  core.int? numIntegralSteps;

  $Attribution({
    this.numIntegralSteps,
  });

  $Attribution.fromJson(core.Map _json)
      : this(
          numIntegralSteps: _json.containsKey('numIntegralSteps')
              ? _json['numIntegralSteps'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (numIntegralSteps != null) 'numIntegralSteps': numIntegralSteps!,
      };
}

/// Used by:
///
/// - dfareporting:v3.4 : AudienceSegment
/// - dfareporting:v3.5 : AudienceSegment
class $AudienceSegment {
  /// Weight allocated to this segment.
  ///
  /// The weight assigned will be understood in proportion to the weights
  /// assigned to other segments in the same segment group. Acceptable values
  /// are 1 to 1000, inclusive.
  core.int? allocation;

  /// ID of this audience segment.
  ///
  /// This is a read-only, auto-generated field.
  core.String? id;

  /// Name of this audience segment.
  ///
  /// This is a required field and must be less than 65 characters long.
  core.String? name;

  $AudienceSegment({
    this.allocation,
    this.id,
    this.name,
  });

  $AudienceSegment.fromJson(core.Map _json)
      : this(
          allocation: _json.containsKey('allocation')
              ? _json['allocation'] as core.int
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allocation != null) 'allocation': allocation!,
        if (id != null) 'id': id!,
        if (name != null) 'name': name!,
      };
}

/// Used by:
///
/// - accesscontextmanager:v1 : AuditLogConfig
/// - apigateway:v1 : ApigatewayAuditLogConfig
/// - apigee:v1 : GoogleIamV1AuditLogConfig
/// - bigquery:v2 : AuditLogConfig
/// - bigtableadmin:v2 : AuditLogConfig
/// - cloudasset:v1 : AuditLogConfig
/// - cloudbilling:v1 : AuditLogConfig
/// - clouddeploy:v1 : AuditLogConfig
/// - cloudfunctions:v1 : AuditLogConfig
/// - cloudkms:v1 : AuditLogConfig
/// - cloudresourcemanager:v1 : AuditLogConfig
/// - cloudresourcemanager:v2 : AuditLogConfig
/// - cloudresourcemanager:v3 : AuditLogConfig
/// - connectors:v1 : AuditLogConfig
/// - datafusion:v1 : AuditLogConfig
/// - datamigration:v1 : AuditLogConfig
/// - dataplex:v1 : GoogleIamV1AuditLogConfig
/// - deploymentmanager:v2 : AuditLogConfig
/// - domains:v1 : AuditLogConfig
/// - eventarc:v1 : AuditLogConfig
/// - gkehub:v1 : AuditLogConfig
/// - healthcare:v1 : AuditLogConfig
/// - iam:v1 : AuditLogConfig
/// - ids:v1 : AuditLogConfig
/// - ml:v1 : GoogleIamV1__AuditLogConfig
/// - networkconnectivity:v1 : AuditLogConfig
/// - networkmanagement:v1 : AuditLogConfig
/// - networksecurity:v1 : GoogleIamV1AuditLogConfig
/// - networkservices:v1 : AuditLogConfig
/// - policysimulator:v1 : GoogleIamV1AuditLogConfig
/// - policytroubleshooter:v1 : GoogleIamV1AuditLogConfig
/// - privateca:v1 : AuditLogConfig
/// - run:v1 : AuditLogConfig
/// - run:v2 : GoogleIamV1AuditLogConfig
/// - secretmanager:v1 : AuditLogConfig
/// - securitycenter:v1 : AuditLogConfig
/// - servicemanagement:v1 : AuditLogConfig
/// - sourcerepo:v1 : AuditLogConfig
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

  $AuditLogConfig({
    this.exemptedMembers,
    this.logType,
  });

  $AuditLogConfig.fromJson(core.Map _json)
      : this(
          exemptedMembers: _json.containsKey('exemptedMembers')
              ? (_json['exemptedMembers'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          logType: _json.containsKey('logType')
              ? _json['logType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (exemptedMembers != null) 'exemptedMembers': exemptedMembers!,
        if (logType != null) 'logType': logType!,
      };
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

  $AuthRequirement({
    this.audiences,
    this.providerId,
  });

  $AuthRequirement.fromJson(core.Map _json)
      : this(
          audiences: _json.containsKey('audiences')
              ? _json['audiences'] as core.String
              : null,
          providerId: _json.containsKey('providerId')
              ? _json['providerId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (audiences != null) 'audiences': audiences!,
        if (providerId != null) 'providerId': providerId!,
      };
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

  $BooleanPolicy({
    this.enforced,
  });

  $BooleanPolicy.fromJson(core.Map _json)
      : this(
          enforced: _json.containsKey('enforced')
              ? _json['enforced'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enforced != null) 'enforced': enforced!,
      };
}

/// Used by:
///
/// - dfareporting:v3.4 : Browser
/// - dfareporting:v3.5 : Browser
class $Browser {
  /// ID referring to this grouping of browser and version numbers.
  ///
  /// This is the ID used for targeting.
  core.String? browserVersionId;

  /// DART ID of this browser.
  ///
  /// This is the ID used when generating reports.
  core.String? dartId;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#browser".
  core.String? kind;

  /// Major version number (leftmost number) of this browser.
  ///
  /// For example, for Chrome 5.0.376.86 beta, this field should be set to 5. An
  /// asterisk (*) may be used to target any version number, and a question mark
  /// (?) may be used to target cases where the version number cannot be
  /// identified. For example, Chrome *.* targets any version of Chrome: 1.2,
  /// 2.5, 3.5, and so on. Chrome 3.* targets Chrome 3.1, 3.5, but not 4.0.
  /// Firefox ?.? targets cases where the ad server knows the browser is Firefox
  /// but can't tell which version it is.
  core.String? majorVersion;

  /// Minor version number (number after first dot on left) of this browser.
  ///
  /// For example, for Chrome 5.0.375.86 beta, this field should be set to 0. An
  /// asterisk (*) may be used to target any version number, and a question mark
  /// (?) may be used to target cases where the version number cannot be
  /// identified. For example, Chrome *.* targets any version of Chrome: 1.2,
  /// 2.5, 3.5, and so on. Chrome 3.* targets Chrome 3.1, 3.5, but not 4.0.
  /// Firefox ?.? targets cases where the ad server knows the browser is Firefox
  /// but can't tell which version it is.
  core.String? minorVersion;

  /// Name of this browser.
  core.String? name;

  $Browser({
    this.browserVersionId,
    this.dartId,
    this.kind,
    this.majorVersion,
    this.minorVersion,
    this.name,
  });

  $Browser.fromJson(core.Map _json)
      : this(
          browserVersionId: _json.containsKey('browserVersionId')
              ? _json['browserVersionId'] as core.String
              : null,
          dartId: _json.containsKey('dartId')
              ? _json['dartId'] as core.String
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          majorVersion: _json.containsKey('majorVersion')
              ? _json['majorVersion'] as core.String
              : null,
          minorVersion: _json.containsKey('minorVersion')
              ? _json['minorVersion'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (browserVersionId != null) 'browserVersionId': browserVersionId!,
        if (dartId != null) 'dartId': dartId!,
        if (kind != null) 'kind': kind!,
        if (majorVersion != null) 'majorVersion': majorVersion!,
        if (minorVersion != null) 'minorVersion': minorVersion!,
        if (name != null) 'name': name!,
      };
}

/// Used by:
///
/// - containeranalysis:v1 : CVSS
/// - ondemandscanning:v1 : CVSS
class $CVSS {
  ///
  /// Possible string values are:
  /// - "ATTACK_COMPLEXITY_UNSPECIFIED"
  /// - "ATTACK_COMPLEXITY_LOW"
  /// - "ATTACK_COMPLEXITY_HIGH"
  core.String? attackComplexity;

  /// Base Metrics Represents the intrinsic characteristics of a vulnerability
  /// that are constant over time and across user environments.
  /// Possible string values are:
  /// - "ATTACK_VECTOR_UNSPECIFIED"
  /// - "ATTACK_VECTOR_NETWORK"
  /// - "ATTACK_VECTOR_ADJACENT"
  /// - "ATTACK_VECTOR_LOCAL"
  /// - "ATTACK_VECTOR_PHYSICAL"
  core.String? attackVector;

  ///
  /// Possible string values are:
  /// - "AUTHENTICATION_UNSPECIFIED"
  /// - "AUTHENTICATION_MULTIPLE"
  /// - "AUTHENTICATION_SINGLE"
  /// - "AUTHENTICATION_NONE"
  core.String? authentication;

  ///
  /// Possible string values are:
  /// - "IMPACT_UNSPECIFIED"
  /// - "IMPACT_HIGH"
  /// - "IMPACT_LOW"
  /// - "IMPACT_NONE"
  core.String? availabilityImpact;

  /// The base score is a function of the base metric scores.
  core.double? baseScore;

  ///
  /// Possible string values are:
  /// - "IMPACT_UNSPECIFIED"
  /// - "IMPACT_HIGH"
  /// - "IMPACT_LOW"
  /// - "IMPACT_NONE"
  core.String? confidentialityImpact;
  core.double? exploitabilityScore;
  core.double? impactScore;

  ///
  /// Possible string values are:
  /// - "IMPACT_UNSPECIFIED"
  /// - "IMPACT_HIGH"
  /// - "IMPACT_LOW"
  /// - "IMPACT_NONE"
  core.String? integrityImpact;

  ///
  /// Possible string values are:
  /// - "PRIVILEGES_REQUIRED_UNSPECIFIED"
  /// - "PRIVILEGES_REQUIRED_NONE"
  /// - "PRIVILEGES_REQUIRED_LOW"
  /// - "PRIVILEGES_REQUIRED_HIGH"
  core.String? privilegesRequired;

  ///
  /// Possible string values are:
  /// - "SCOPE_UNSPECIFIED"
  /// - "SCOPE_UNCHANGED"
  /// - "SCOPE_CHANGED"
  core.String? scope;

  ///
  /// Possible string values are:
  /// - "USER_INTERACTION_UNSPECIFIED"
  /// - "USER_INTERACTION_NONE"
  /// - "USER_INTERACTION_REQUIRED"
  core.String? userInteraction;

  $CVSS({
    this.attackComplexity,
    this.attackVector,
    this.authentication,
    this.availabilityImpact,
    this.baseScore,
    this.confidentialityImpact,
    this.exploitabilityScore,
    this.impactScore,
    this.integrityImpact,
    this.privilegesRequired,
    this.scope,
    this.userInteraction,
  });

  $CVSS.fromJson(core.Map _json)
      : this(
          attackComplexity: _json.containsKey('attackComplexity')
              ? _json['attackComplexity'] as core.String
              : null,
          attackVector: _json.containsKey('attackVector')
              ? _json['attackVector'] as core.String
              : null,
          authentication: _json.containsKey('authentication')
              ? _json['authentication'] as core.String
              : null,
          availabilityImpact: _json.containsKey('availabilityImpact')
              ? _json['availabilityImpact'] as core.String
              : null,
          baseScore: _json.containsKey('baseScore')
              ? (_json['baseScore'] as core.num).toDouble()
              : null,
          confidentialityImpact: _json.containsKey('confidentialityImpact')
              ? _json['confidentialityImpact'] as core.String
              : null,
          exploitabilityScore: _json.containsKey('exploitabilityScore')
              ? (_json['exploitabilityScore'] as core.num).toDouble()
              : null,
          impactScore: _json.containsKey('impactScore')
              ? (_json['impactScore'] as core.num).toDouble()
              : null,
          integrityImpact: _json.containsKey('integrityImpact')
              ? _json['integrityImpact'] as core.String
              : null,
          privilegesRequired: _json.containsKey('privilegesRequired')
              ? _json['privilegesRequired'] as core.String
              : null,
          scope:
              _json.containsKey('scope') ? _json['scope'] as core.String : null,
          userInteraction: _json.containsKey('userInteraction')
              ? _json['userInteraction'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (attackComplexity != null) 'attackComplexity': attackComplexity!,
        if (attackVector != null) 'attackVector': attackVector!,
        if (authentication != null) 'authentication': authentication!,
        if (availabilityImpact != null)
          'availabilityImpact': availabilityImpact!,
        if (baseScore != null) 'baseScore': baseScore!,
        if (confidentialityImpact != null)
          'confidentialityImpact': confidentialityImpact!,
        if (exploitabilityScore != null)
          'exploitabilityScore': exploitabilityScore!,
        if (impactScore != null) 'impactScore': impactScore!,
        if (integrityImpact != null) 'integrityImpact': integrityImpact!,
        if (privilegesRequired != null)
          'privilegesRequired': privilegesRequired!,
        if (scope != null) 'scope': scope!,
        if (userInteraction != null) 'userInteraction': userInteraction!,
      };
}

/// Used by:
///
/// - dfareporting:v3.4 : CampaignCreativeAssociation
/// - dfareporting:v3.5 : CampaignCreativeAssociation
class $CampaignCreativeAssociation {
  /// ID of the creative associated with the campaign.
  ///
  /// This is a required field.
  core.String? creativeId;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#campaignCreativeAssociation".
  core.String? kind;

  $CampaignCreativeAssociation({
    this.creativeId,
    this.kind,
  });

  $CampaignCreativeAssociation.fromJson(core.Map _json)
      : this(
          creativeId: _json.containsKey('creativeId')
              ? _json['creativeId'] as core.String
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (creativeId != null) 'creativeId': creativeId!,
        if (kind != null) 'kind': kind!,
      };
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

  $Category({
    this.categoryId,
    this.name,
  });

  $Category.fromJson(core.Map _json)
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

/// Used by:
///
/// - compute:v1 : BackendBucketCdnPolicyBypassCacheOnRequestHeader
/// - compute:v1 : BackendServiceCdnPolicyBypassCacheOnRequestHeader
class $CdnPolicyBypassCacheOnRequestHeader {
  /// The header field name to match on when bypassing cache.
  ///
  /// Values are case-insensitive.
  core.String? headerName;

  $CdnPolicyBypassCacheOnRequestHeader({
    this.headerName,
  });

  $CdnPolicyBypassCacheOnRequestHeader.fromJson(core.Map _json)
      : this(
          headerName: _json.containsKey('headerName')
              ? _json['headerName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (headerName != null) 'headerName': headerName!,
      };
}

/// Used by:
///
/// - compute:v1 : BackendBucketCdnPolicyNegativeCachingPolicy
/// - compute:v1 : BackendServiceCdnPolicyNegativeCachingPolicy
class $CdnPolicyNegativeCachingPolicy {
  /// The HTTP status code to define a TTL against.
  ///
  /// Only HTTP status codes 300, 301, 302, 307, 308, 404, 405, 410, 421, 451
  /// and 501 are can be specified as values, and you cannot specify a status
  /// code more than once.
  core.int? code;

  /// The TTL (in seconds) for which to cache responses with the corresponding
  /// status code.
  ///
  /// The maximum allowed value is 1800s (30 minutes), noting that infrequently
  /// accessed objects may be evicted from the cache before the defined TTL.
  core.int? ttl;

  $CdnPolicyNegativeCachingPolicy({
    this.code,
    this.ttl,
  });

  $CdnPolicyNegativeCachingPolicy.fromJson(core.Map _json)
      : this(
          code: _json.containsKey('code') ? _json['code'] as core.int : null,
          ttl: _json.containsKey('ttl') ? _json['ttl'] as core.int : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (code != null) 'code': code!,
        if (ttl != null) 'ttl': ttl!,
      };
}

/// Used by:
///
/// - dfareporting:v3.4 : ChangeLog
/// - dfareporting:v3.5 : ChangeLog
class $ChangeLog {
  /// Account ID of the modified object.
  core.String? accountId;

  /// Action which caused the change.
  core.String? action;
  core.DateTime? changeTime;

  /// Field name of the object which changed.
  core.String? fieldName;

  /// ID of this change log.
  core.String? id;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#changeLog".
  core.String? kind;

  /// New value of the object field.
  core.String? newValue;

  /// ID of the object of this change log.
  ///
  /// The object could be a campaign, placement, ad, or other type.
  core.String? objectId;

  /// Object type of the change log.
  core.String? objectType;

  /// Old value of the object field.
  core.String? oldValue;

  /// Subaccount ID of the modified object.
  core.String? subaccountId;

  /// Transaction ID of this change log.
  ///
  /// When a single API call results in many changes, each change will have a
  /// separate ID in the change log but will share the same transactionId.
  core.String? transactionId;

  /// ID of the user who modified the object.
  core.String? userProfileId;

  /// User profile name of the user who modified the object.
  core.String? userProfileName;

  $ChangeLog({
    this.accountId,
    this.action,
    this.changeTime,
    this.fieldName,
    this.id,
    this.kind,
    this.newValue,
    this.objectId,
    this.objectType,
    this.oldValue,
    this.subaccountId,
    this.transactionId,
    this.userProfileId,
    this.userProfileName,
  });

  $ChangeLog.fromJson(core.Map _json)
      : this(
          accountId: _json.containsKey('accountId')
              ? _json['accountId'] as core.String
              : null,
          action: _json.containsKey('action')
              ? _json['action'] as core.String
              : null,
          changeTime: _json.containsKey('changeTime')
              ? core.DateTime.parse(_json['changeTime'] as core.String)
              : null,
          fieldName: _json.containsKey('fieldName')
              ? _json['fieldName'] as core.String
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          newValue: _json.containsKey('newValue')
              ? _json['newValue'] as core.String
              : null,
          objectId: _json.containsKey('objectId')
              ? _json['objectId'] as core.String
              : null,
          objectType: _json.containsKey('objectType')
              ? _json['objectType'] as core.String
              : null,
          oldValue: _json.containsKey('oldValue')
              ? _json['oldValue'] as core.String
              : null,
          subaccountId: _json.containsKey('subaccountId')
              ? _json['subaccountId'] as core.String
              : null,
          transactionId: _json.containsKey('transactionId')
              ? _json['transactionId'] as core.String
              : null,
          userProfileId: _json.containsKey('userProfileId')
              ? _json['userProfileId'] as core.String
              : null,
          userProfileName: _json.containsKey('userProfileName')
              ? _json['userProfileName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountId != null) 'accountId': accountId!,
        if (action != null) 'action': action!,
        if (changeTime != null)
          'changeTime': changeTime!.toUtc().toIso8601String(),
        if (fieldName != null) 'fieldName': fieldName!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (newValue != null) 'newValue': newValue!,
        if (objectId != null) 'objectId': objectId!,
        if (objectType != null) 'objectType': objectType!,
        if (oldValue != null) 'oldValue': oldValue!,
        if (subaccountId != null) 'subaccountId': subaccountId!,
        if (transactionId != null) 'transactionId': transactionId!,
        if (userProfileId != null) 'userProfileId': userProfileId!,
        if (userProfileName != null) 'userProfileName': userProfileName!,
      };
}

/// Used by:
///
/// - calendar:v3 : Channel
/// - drive:v2 : Channel
/// - drive:v3 : Channel
class $Channel {
  /// The address where notifications are delivered for this channel.
  core.String? address;

  /// Date and time of notification channel expiration, expressed as a Unix
  /// timestamp, in milliseconds.
  ///
  /// Optional.
  core.String? expiration;

  /// A UUID or similar unique string that identifies this channel.
  core.String? id;

  /// Identifies this as a notification channel used to watch for changes to a
  /// resource, which is "api#channel".
  core.String? kind;

  /// Additional parameters controlling delivery channel behavior.
  ///
  /// Optional.
  core.Map<core.String, core.String>? params;

  /// A Boolean value to indicate whether payload is wanted.
  ///
  /// Optional.
  core.bool? payload;

  /// An opaque ID that identifies the resource being watched on this channel.
  ///
  /// Stable across different API versions.
  core.String? resourceId;

  /// A version-specific identifier for the watched resource.
  core.String? resourceUri;

  /// An arbitrary string delivered to the target address with each notification
  /// delivered over this channel.
  ///
  /// Optional.
  core.String? token;

  /// The type of delivery mechanism used for this channel.
  ///
  /// Valid values are "web_hook" (or "webhook"). Both values refer to a channel
  /// where Http requests are used to deliver messages.
  core.String? type;

  $Channel({
    this.address,
    this.expiration,
    this.id,
    this.kind,
    this.params,
    this.payload,
    this.resourceId,
    this.resourceUri,
    this.token,
    this.type,
  });

  $Channel.fromJson(core.Map _json)
      : this(
          address: _json.containsKey('address')
              ? _json['address'] as core.String
              : null,
          expiration: _json.containsKey('expiration')
              ? _json['expiration'] as core.String
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          params: _json.containsKey('params')
              ? (_json['params'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          payload: _json.containsKey('payload')
              ? _json['payload'] as core.bool
              : null,
          resourceId: _json.containsKey('resourceId')
              ? _json['resourceId'] as core.String
              : null,
          resourceUri: _json.containsKey('resourceUri')
              ? _json['resourceUri'] as core.String
              : null,
          token:
              _json.containsKey('token') ? _json['token'] as core.String : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (address != null) 'address': address!,
        if (expiration != null) 'expiration': expiration!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (params != null) 'params': params!,
        if (payload != null) 'payload': payload!,
        if (resourceId != null) 'resourceId': resourceId!,
        if (resourceUri != null) 'resourceUri': resourceUri!,
        if (token != null) 'token': token!,
        if (type != null) 'type': type!,
      };
}

/// Used by:
///
/// - safebrowsing:v4 : GoogleSecuritySafebrowsingV4Checksum
/// - webrisk:v1 : GoogleCloudWebriskV1ComputeThreatListDiffResponseChecksum
class $Checksum {
  /// The SHA256 hash of the client state; that is, of the sorted list of all
  /// hashes present in the database.
  core.String? sha256;
  core.List<core.int> get sha256AsBytes => convert.base64.decode(sha256!);

  set sha256AsBytes(core.List<core.int> _bytes) {
    sha256 =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  $Checksum({
    this.sha256,
  });

  $Checksum.fromJson(core.Map _json)
      : this(
          sha256: _json.containsKey('sha256')
              ? _json['sha256'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (sha256 != null) 'sha256': sha256!,
      };
}

/// Used by:
///
/// - dfareporting:v3.4 : City
/// - dfareporting:v3.5 : City
class $City {
  /// Country code of the country to which this city belongs.
  core.String? countryCode;

  /// DART ID of the country to which this city belongs.
  core.String? countryDartId;

  /// DART ID of this city.
  ///
  /// This is the ID used for targeting and generating reports.
  core.String? dartId;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#city".
  core.String? kind;

  /// Metro region code of the metro region (DMA) to which this city belongs.
  core.String? metroCode;

  /// ID of the metro region (DMA) to which this city belongs.
  core.String? metroDmaId;

  /// Name of this city.
  core.String? name;

  /// Region code of the region to which this city belongs.
  core.String? regionCode;

  /// DART ID of the region to which this city belongs.
  core.String? regionDartId;

  $City({
    this.countryCode,
    this.countryDartId,
    this.dartId,
    this.kind,
    this.metroCode,
    this.metroDmaId,
    this.name,
    this.regionCode,
    this.regionDartId,
  });

  $City.fromJson(core.Map _json)
      : this(
          countryCode: _json.containsKey('countryCode')
              ? _json['countryCode'] as core.String
              : null,
          countryDartId: _json.containsKey('countryDartId')
              ? _json['countryDartId'] as core.String
              : null,
          dartId: _json.containsKey('dartId')
              ? _json['dartId'] as core.String
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          metroCode: _json.containsKey('metroCode')
              ? _json['metroCode'] as core.String
              : null,
          metroDmaId: _json.containsKey('metroDmaId')
              ? _json['metroDmaId'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          regionCode: _json.containsKey('regionCode')
              ? _json['regionCode'] as core.String
              : null,
          regionDartId: _json.containsKey('regionDartId')
              ? _json['regionDartId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (countryCode != null) 'countryCode': countryCode!,
        if (countryDartId != null) 'countryDartId': countryDartId!,
        if (dartId != null) 'dartId': dartId!,
        if (kind != null) 'kind': kind!,
        if (metroCode != null) 'metroCode': metroCode!,
        if (metroDmaId != null) 'metroDmaId': metroDmaId!,
        if (name != null) 'name': name!,
        if (regionCode != null) 'regionCode': regionCode!,
        if (regionDartId != null) 'regionDartId': regionDartId!,
      };
}

/// Used by:
///
/// - dfareporting:v3.4 : ClickThroughUrl
/// - dfareporting:v3.5 : ClickThroughUrl
class $ClickThroughUrl {
  /// Read-only convenience field representing the actual URL that will be used
  /// for this click-through.
  ///
  /// The URL is computed as follows: - If defaultLandingPage is enabled then
  /// the campaign's default landing page URL is assigned to this field. - If
  /// defaultLandingPage is not enabled and a landingPageId is specified then
  /// that landing page's URL is assigned to this field. - If neither of the
  /// above cases apply, then the customClickThroughUrl is assigned to this
  /// field.
  core.String? computedClickThroughUrl;

  /// Custom click-through URL.
  ///
  /// Applicable if the defaultLandingPage field is set to false and the
  /// landingPageId field is left unset.
  core.String? customClickThroughUrl;

  /// Whether the campaign default landing page is used.
  core.bool? defaultLandingPage;

  /// ID of the landing page for the click-through URL.
  ///
  /// Applicable if the defaultLandingPage field is set to false.
  core.String? landingPageId;

  $ClickThroughUrl({
    this.computedClickThroughUrl,
    this.customClickThroughUrl,
    this.defaultLandingPage,
    this.landingPageId,
  });

  $ClickThroughUrl.fromJson(core.Map _json)
      : this(
          computedClickThroughUrl: _json.containsKey('computedClickThroughUrl')
              ? _json['computedClickThroughUrl'] as core.String
              : null,
          customClickThroughUrl: _json.containsKey('customClickThroughUrl')
              ? _json['customClickThroughUrl'] as core.String
              : null,
          defaultLandingPage: _json.containsKey('defaultLandingPage')
              ? _json['defaultLandingPage'] as core.bool
              : null,
          landingPageId: _json.containsKey('landingPageId')
              ? _json['landingPageId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (computedClickThroughUrl != null)
          'computedClickThroughUrl': computedClickThroughUrl!,
        if (customClickThroughUrl != null)
          'customClickThroughUrl': customClickThroughUrl!,
        if (defaultLandingPage != null)
          'defaultLandingPage': defaultLandingPage!,
        if (landingPageId != null) 'landingPageId': landingPageId!,
      };
}

/// Used by:
///
/// - dfareporting:v3.4 : ClickThroughUrlSuffixProperties
/// - dfareporting:v3.5 : ClickThroughUrlSuffixProperties
class $ClickThroughUrlSuffixProperties {
  /// Click-through URL suffix to apply to all ads in this entity's scope.
  ///
  /// Must be less than 128 characters long.
  core.String? clickThroughUrlSuffix;

  /// Whether this entity should override the inherited click-through URL suffix
  /// with its own defined value.
  core.bool? overrideInheritedSuffix;

  $ClickThroughUrlSuffixProperties({
    this.clickThroughUrlSuffix,
    this.overrideInheritedSuffix,
  });

  $ClickThroughUrlSuffixProperties.fromJson(core.Map _json)
      : this(
          clickThroughUrlSuffix: _json.containsKey('clickThroughUrlSuffix')
              ? _json['clickThroughUrlSuffix'] as core.String
              : null,
          overrideInheritedSuffix: _json.containsKey('overrideInheritedSuffix')
              ? _json['overrideInheritedSuffix'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (clickThroughUrlSuffix != null)
          'clickThroughUrlSuffix': clickThroughUrlSuffix!,
        if (overrideInheritedSuffix != null)
          'overrideInheritedSuffix': overrideInheritedSuffix!,
      };
}

/// Used by:
///
/// - chat:v1 : Color
/// - documentai:v1 : GoogleTypeColor
/// - fcm:v1 : Color
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

  $Color({
    this.alpha,
    this.blue,
    this.green,
    this.red,
  });

  $Color.fromJson(core.Map _json)
      : this(
          alpha: _json.containsKey('alpha')
              ? (_json['alpha'] as core.num).toDouble()
              : null,
          blue: _json.containsKey('blue')
              ? (_json['blue'] as core.num).toDouble()
              : null,
          green: _json.containsKey('green')
              ? (_json['green'] as core.num).toDouble()
              : null,
          red: _json.containsKey('red')
              ? (_json['red'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (alpha != null) 'alpha': alpha!,
        if (blue != null) 'blue': blue!,
        if (green != null) 'green': green!,
        if (red != null) 'red': red!,
      };
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

  $Command({
    this.args,
    this.dir,
    this.env,
    this.id,
    this.name,
    this.waitFor,
  });

  $Command.fromJson(core.Map _json)
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

  $Completeness({
    this.arguments,
    this.environment,
    this.materials,
  });

  $Completeness.fromJson(core.Map _json)
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

/// Used by:
///
/// - dfareporting:v3.4 : ConnectionType
/// - dfareporting:v3.5 : ConnectionType
class $ConnectionType {
  /// ID of this connection type.
  core.String? id;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#connectionType".
  core.String? kind;

  /// Name of this connection type.
  core.String? name;

  $ConnectionType({
    this.id,
    this.kind,
    this.name,
  });

  $ConnectionType.fromJson(core.Map _json)
      : this(
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (name != null) 'name': name!,
      };
}

/// Used by:
///
/// - dfareporting:v3.4 : ContentCategory
/// - dfareporting:v3.5 : ContentCategory
class $ContentCategory {
  /// Account ID of this content category.
  ///
  /// This is a read-only field that can be left blank.
  core.String? accountId;

  /// ID of this content category.
  ///
  /// This is a read-only, auto-generated field.
  core.String? id;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#contentCategory".
  core.String? kind;

  /// Name of this content category.
  ///
  /// This is a required field and must be less than 256 characters long and
  /// unique among content categories of the same account.
  core.String? name;

  $ContentCategory({
    this.accountId,
    this.id,
    this.kind,
    this.name,
  });

  $ContentCategory.fromJson(core.Map _json)
      : this(
          accountId: _json.containsKey('accountId')
              ? _json['accountId'] as core.String
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountId != null) 'accountId': accountId!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (name != null) 'name': name!,
      };
}

/// Used by:
///
/// - dfareporting:v3.4 : ConversionError
/// - dfareporting:v3.5 : ConversionError
class $ConversionError {
  /// The error code.
  /// Possible string values are:
  /// - "INVALID_ARGUMENT"
  /// - "INTERNAL"
  /// - "PERMISSION_DENIED"
  /// - "NOT_FOUND"
  core.String? code;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#conversionError".
  core.String? kind;

  /// A description of the error.
  core.String? message;

  $ConversionError({
    this.code,
    this.kind,
    this.message,
  });

  $ConversionError.fromJson(core.Map _json)
      : this(
          code: _json.containsKey('code') ? _json['code'] as core.String : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          message: _json.containsKey('message')
              ? _json['message'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (code != null) 'code': code!,
        if (kind != null) 'kind': kind!,
        if (message != null) 'message': message!,
      };
}

/// Used by:
///
/// - dfareporting:v3.4 : Country
/// - dfareporting:v3.5 : Country
class $Country {
  /// Country code.
  core.String? countryCode;

  /// DART ID of this country.
  ///
  /// This is the ID used for targeting and generating reports.
  core.String? dartId;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#country".
  core.String? kind;

  /// Name of this country.
  core.String? name;

  /// Whether ad serving supports secure servers in this country.
  core.bool? sslEnabled;

  $Country({
    this.countryCode,
    this.dartId,
    this.kind,
    this.name,
    this.sslEnabled,
  });

  $Country.fromJson(core.Map _json)
      : this(
          countryCode: _json.containsKey('countryCode')
              ? _json['countryCode'] as core.String
              : null,
          dartId: _json.containsKey('dartId')
              ? _json['dartId'] as core.String
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          sslEnabled: _json.containsKey('sslEnabled')
              ? _json['sslEnabled'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (countryCode != null) 'countryCode': countryCode!,
        if (dartId != null) 'dartId': dartId!,
        if (kind != null) 'kind': kind!,
        if (name != null) 'name': name!,
        if (sslEnabled != null) 'sslEnabled': sslEnabled!,
      };
}

/// Used by:
///
/// - dfareporting:v3.4 : CreativeAssetId
/// - dfareporting:v3.5 : CreativeAssetId
class $CreativeAssetId {
  /// Name of the creative asset.
  ///
  /// This is a required field while inserting an asset. After insertion, this
  /// assetIdentifier is used to identify the uploaded asset. Characters in the
  /// name must be alphanumeric or one of the following: ".-_ ". Spaces are
  /// allowed.
  core.String? name;

  /// Type of asset to upload.
  ///
  /// This is a required field. FLASH and IMAGE are no longer supported for new
  /// uploads. All image assets should use HTML_IMAGE.
  /// Possible string values are:
  /// - "IMAGE"
  /// - "FLASH"
  /// - "VIDEO"
  /// - "HTML"
  /// - "HTML_IMAGE"
  /// - "AUDIO"
  core.String? type;

  $CreativeAssetId({
    this.name,
    this.type,
  });

  $CreativeAssetId.fromJson(core.Map _json)
      : this(
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (type != null) 'type': type!,
      };
}

/// Used by:
///
/// - dfareporting:v3.4 : CreativeClickThroughUrl
/// - dfareporting:v3.5 : CreativeClickThroughUrl
class $CreativeClickThroughUrl {
  /// Read-only convenience field representing the actual URL that will be used
  /// for this click-through.
  ///
  /// The URL is computed as follows: - If landingPageId is specified then that
  /// landing page's URL is assigned to this field. - Otherwise, the
  /// customClickThroughUrl is assigned to this field.
  core.String? computedClickThroughUrl;

  /// Custom click-through URL.
  ///
  /// Applicable if the landingPageId field is left unset.
  core.String? customClickThroughUrl;

  /// ID of the landing page for the click-through URL.
  core.String? landingPageId;

  $CreativeClickThroughUrl({
    this.computedClickThroughUrl,
    this.customClickThroughUrl,
    this.landingPageId,
  });

  $CreativeClickThroughUrl.fromJson(core.Map _json)
      : this(
          computedClickThroughUrl: _json.containsKey('computedClickThroughUrl')
              ? _json['computedClickThroughUrl'] as core.String
              : null,
          customClickThroughUrl: _json.containsKey('customClickThroughUrl')
              ? _json['customClickThroughUrl'] as core.String
              : null,
          landingPageId: _json.containsKey('landingPageId')
              ? _json['landingPageId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (computedClickThroughUrl != null)
          'computedClickThroughUrl': computedClickThroughUrl!,
        if (customClickThroughUrl != null)
          'customClickThroughUrl': customClickThroughUrl!,
        if (landingPageId != null) 'landingPageId': landingPageId!,
      };
}

/// Used by:
///
/// - dfareporting:v3.4 : CreativeFieldAssignment
/// - dfareporting:v3.5 : CreativeFieldAssignment
class $CreativeFieldAssignment {
  /// ID of the creative field.
  core.String? creativeFieldId;

  /// ID of the creative field value.
  core.String? creativeFieldValueId;

  $CreativeFieldAssignment({
    this.creativeFieldId,
    this.creativeFieldValueId,
  });

  $CreativeFieldAssignment.fromJson(core.Map _json)
      : this(
          creativeFieldId: _json.containsKey('creativeFieldId')
              ? _json['creativeFieldId'] as core.String
              : null,
          creativeFieldValueId: _json.containsKey('creativeFieldValueId')
              ? _json['creativeFieldValueId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (creativeFieldId != null) 'creativeFieldId': creativeFieldId!,
        if (creativeFieldValueId != null)
          'creativeFieldValueId': creativeFieldValueId!,
      };
}

/// Used by:
///
/// - dfareporting:v3.4 : CreativeFieldValue
/// - dfareporting:v3.5 : CreativeFieldValue
class $CreativeFieldValue {
  /// ID of this creative field value.
  ///
  /// This is a read-only, auto-generated field.
  core.String? id;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#creativeFieldValue".
  core.String? kind;

  /// Value of this creative field value.
  ///
  /// It needs to be less than 256 characters in length and unique per creative
  /// field.
  core.String? value;

  $CreativeFieldValue({
    this.id,
    this.kind,
    this.value,
  });

  $CreativeFieldValue.fromJson(core.Map _json)
      : this(
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          value:
              _json.containsKey('value') ? _json['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (value != null) 'value': value!,
      };
}

/// Used by:
///
/// - dfareporting:v3.4 : CreativeGroupAssignment
/// - dfareporting:v3.5 : CreativeGroupAssignment
class $CreativeGroupAssignment {
  /// ID of the creative group to be assigned.
  core.String? creativeGroupId;

  /// Creative group number of the creative group assignment.
  /// Possible string values are:
  /// - "CREATIVE_GROUP_ONE"
  /// - "CREATIVE_GROUP_TWO"
  core.String? creativeGroupNumber;

  $CreativeGroupAssignment({
    this.creativeGroupId,
    this.creativeGroupNumber,
  });

  $CreativeGroupAssignment.fromJson(core.Map _json)
      : this(
          creativeGroupId: _json.containsKey('creativeGroupId')
              ? _json['creativeGroupId'] as core.String
              : null,
          creativeGroupNumber: _json.containsKey('creativeGroupNumber')
              ? _json['creativeGroupNumber'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (creativeGroupId != null) 'creativeGroupId': creativeGroupId!,
        if (creativeGroupNumber != null)
          'creativeGroupNumber': creativeGroupNumber!,
      };
}

/// Used by:
///
/// - dfareporting:v3.4 : CustomFloodlightVariable
/// - dfareporting:v3.5 : CustomFloodlightVariable
class $CustomFloodlightVariable {
  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#customFloodlightVariable".
  core.String? kind;

  /// The type of custom floodlight variable to supply a value for.
  ///
  /// These map to the "u\[1-20\]=" in the tags.
  /// Possible string values are:
  /// - "U1"
  /// - "U2"
  /// - "U3"
  /// - "U4"
  /// - "U5"
  /// - "U6"
  /// - "U7"
  /// - "U8"
  /// - "U9"
  /// - "U10"
  /// - "U11"
  /// - "U12"
  /// - "U13"
  /// - "U14"
  /// - "U15"
  /// - "U16"
  /// - "U17"
  /// - "U18"
  /// - "U19"
  /// - "U20"
  /// - "U21"
  /// - "U22"
  /// - "U23"
  /// - "U24"
  /// - "U25"
  /// - "U26"
  /// - "U27"
  /// - "U28"
  /// - "U29"
  /// - "U30"
  /// - "U31"
  /// - "U32"
  /// - "U33"
  /// - "U34"
  /// - "U35"
  /// - "U36"
  /// - "U37"
  /// - "U38"
  /// - "U39"
  /// - "U40"
  /// - "U41"
  /// - "U42"
  /// - "U43"
  /// - "U44"
  /// - "U45"
  /// - "U46"
  /// - "U47"
  /// - "U48"
  /// - "U49"
  /// - "U50"
  /// - "U51"
  /// - "U52"
  /// - "U53"
  /// - "U54"
  /// - "U55"
  /// - "U56"
  /// - "U57"
  /// - "U58"
  /// - "U59"
  /// - "U60"
  /// - "U61"
  /// - "U62"
  /// - "U63"
  /// - "U64"
  /// - "U65"
  /// - "U66"
  /// - "U67"
  /// - "U68"
  /// - "U69"
  /// - "U70"
  /// - "U71"
  /// - "U72"
  /// - "U73"
  /// - "U74"
  /// - "U75"
  /// - "U76"
  /// - "U77"
  /// - "U78"
  /// - "U79"
  /// - "U80"
  /// - "U81"
  /// - "U82"
  /// - "U83"
  /// - "U84"
  /// - "U85"
  /// - "U86"
  /// - "U87"
  /// - "U88"
  /// - "U89"
  /// - "U90"
  /// - "U91"
  /// - "U92"
  /// - "U93"
  /// - "U94"
  /// - "U95"
  /// - "U96"
  /// - "U97"
  /// - "U98"
  /// - "U99"
  /// - "U100"
  core.String? type;

  /// The value of the custom floodlight variable.
  ///
  /// The length of string must not exceed 100 characters.
  core.String? value;

  $CustomFloodlightVariable({
    this.kind,
    this.type,
    this.value,
  });

  $CustomFloodlightVariable.fromJson(core.Map _json)
      : this(
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
          value:
              _json.containsKey('value') ? _json['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (type != null) 'type': type!,
        if (value != null) 'value': value!,
      };
}

/// Used by:
///
/// - dfareporting:v3.4 : CustomViewabilityMetricConfiguration
/// - dfareporting:v3.5 : CustomViewabilityMetricConfiguration
class $CustomViewabilityMetricConfiguration {
  /// Whether the video must be audible to count an impression.
  core.bool? audible;

  /// The time in milliseconds the video must play for the Custom Viewability
  /// Metric to count an impression.
  ///
  /// If both this and timePercent are specified, the earlier of the two will be
  /// used.
  core.int? timeMillis;

  /// The percentage of video that must play for the Custom Viewability Metric
  /// to count an impression.
  ///
  /// If both this and timeMillis are specified, the earlier of the two will be
  /// used.
  core.int? timePercent;

  /// The percentage of video that must be on screen for the Custom Viewability
  /// Metric to count an impression.
  core.int? viewabilityPercent;

  $CustomViewabilityMetricConfiguration({
    this.audible,
    this.timeMillis,
    this.timePercent,
    this.viewabilityPercent,
  });

  $CustomViewabilityMetricConfiguration.fromJson(core.Map _json)
      : this(
          audible: _json.containsKey('audible')
              ? _json['audible'] as core.bool
              : null,
          timeMillis: _json.containsKey('timeMillis')
              ? _json['timeMillis'] as core.int
              : null,
          timePercent: _json.containsKey('timePercent')
              ? _json['timePercent'] as core.int
              : null,
          viewabilityPercent: _json.containsKey('viewabilityPercent')
              ? _json['viewabilityPercent'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (audible != null) 'audible': audible!,
        if (timeMillis != null) 'timeMillis': timeMillis!,
        if (timePercent != null) 'timePercent': timePercent!,
        if (viewabilityPercent != null)
          'viewabilityPercent': viewabilityPercent!,
      };
}

/// Used by:
///
/// - admob:v1 : Date
/// - adsense:v2 : Date
/// - androidmanagement:v1 : Date
/// - billingbudgets:v1 : GoogleTypeDate
/// - chromemanagement:v1 : GoogleTypeDate
/// - chromepolicy:v1 : GoogleTypeDate
/// - classroom:v1 : Date
/// - cloudasset:v1 : Date
/// - clouddeploy:v1 : Date
/// - composer:v1 : Date
/// - content:v2.1 : Date
/// - displayvideo:v1 : Date
/// - dlp:v2 : GoogleTypeDate
/// - documentai:v1 : GoogleTypeDate
/// - mybusinessbusinesscalls:v1 : Date
/// - mybusinessbusinessinformation:v1 : Date
/// - osconfig:v1 : Date
/// - people:v1 : Date
/// - policysimulator:v1 : GoogleTypeDate
/// - realtimebidding:v1 : Date
/// - retail:v2 : GoogleTypeDate
/// - storagetransfer:v1 : Date
/// - testing:v1 : Date
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

  $Date({
    this.day,
    this.month,
    this.year,
  });

  $Date.fromJson(core.Map _json)
      : this(
          day: _json.containsKey('day') ? _json['day'] as core.int : null,
          month: _json.containsKey('month') ? _json['month'] as core.int : null,
          year: _json.containsKey('year') ? _json['year'] as core.int : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (day != null) 'day': day!,
        if (month != null) 'month': month!,
        if (year != null) 'year': year!,
      };
}

/// Used by:
///
/// - dfareporting:v3.4 : DateRange
/// - dfareporting:v3.5 : DateRange
class $DateRange {
  core.DateTime? endDate;

  /// The kind of resource this is, in this case dfareporting#dateRange.
  core.String? kind;

  /// The date range relative to the date of when the report is run.
  /// Possible string values are:
  /// - "TODAY"
  /// - "YESTERDAY"
  /// - "WEEK_TO_DATE"
  /// - "MONTH_TO_DATE"
  /// - "QUARTER_TO_DATE"
  /// - "YEAR_TO_DATE"
  /// - "PREVIOUS_WEEK"
  /// - "PREVIOUS_MONTH"
  /// - "PREVIOUS_QUARTER"
  /// - "PREVIOUS_YEAR"
  /// - "LAST_7_DAYS"
  /// - "LAST_30_DAYS"
  /// - "LAST_90_DAYS"
  /// - "LAST_365_DAYS"
  /// - "LAST_24_MONTHS"
  /// - "LAST_14_DAYS"
  /// - "LAST_60_DAYS"
  core.String? relativeDateRange;
  core.DateTime? startDate;

  $DateRange({
    this.endDate,
    this.kind,
    this.relativeDateRange,
    this.startDate,
  });

  $DateRange.fromJson(core.Map _json)
      : this(
          endDate: _json.containsKey('endDate')
              ? core.DateTime.parse(_json['endDate'] as core.String)
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          relativeDateRange: _json.containsKey('relativeDateRange')
              ? _json['relativeDateRange'] as core.String
              : null,
          startDate: _json.containsKey('startDate')
              ? core.DateTime.parse(_json['startDate'] as core.String)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (endDate != null)
          'endDate':
              "${(endDate!).year.toString().padLeft(4, '0')}-${(endDate!).month.toString().padLeft(2, '0')}-${(endDate!).day.toString().padLeft(2, '0')}",
        if (kind != null) 'kind': kind!,
        if (relativeDateRange != null) 'relativeDateRange': relativeDateRange!,
        if (startDate != null)
          'startDate':
              "${(startDate!).year.toString().padLeft(4, '0')}-${(startDate!).month.toString().padLeft(2, '0')}-${(startDate!).day.toString().padLeft(2, '0')}",
      };
}

/// Used by:
///
/// - dfareporting:v3.4 : DayPartTargeting
/// - dfareporting:v3.5 : DayPartTargeting
class $DayPartTargeting {
  /// Days of the week when the ad will serve.
  ///
  /// Acceptable values are: - "SUNDAY" - "MONDAY" - "TUESDAY" - "WEDNESDAY" -
  /// "THURSDAY" - "FRIDAY" - "SATURDAY"
  core.List<core.String>? daysOfWeek;

  /// Hours of the day when the ad will serve, where 0 is midnight to 1 AM and
  /// 23 is 11 PM to midnight.
  ///
  /// Can be specified with days of week, in which case the ad would serve
  /// during these hours on the specified days. For example if Monday,
  /// Wednesday, Friday are the days of week specified and 9-10am, 3-5pm (hours
  /// 9, 15, and 16) is specified, the ad would serve Monday, Wednesdays, and
  /// Fridays at 9-10am and 3-5pm. Acceptable values are 0 to 23, inclusive.
  core.List<core.int>? hoursOfDay;

  /// Whether or not to use the user's local time.
  ///
  /// If false, the America/New York time zone applies.
  core.bool? userLocalTime;

  $DayPartTargeting({
    this.daysOfWeek,
    this.hoursOfDay,
    this.userLocalTime,
  });

  $DayPartTargeting.fromJson(core.Map _json)
      : this(
          daysOfWeek: _json.containsKey('daysOfWeek')
              ? (_json['daysOfWeek'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          hoursOfDay: _json.containsKey('hoursOfDay')
              ? (_json['hoursOfDay'] as core.List)
                  .map((value) => value as core.int)
                  .toList()
              : null,
          userLocalTime: _json.containsKey('userLocalTime')
              ? _json['userLocalTime'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (daysOfWeek != null) 'daysOfWeek': daysOfWeek!,
        if (hoursOfDay != null) 'hoursOfDay': hoursOfDay!,
        if (userLocalTime != null) 'userLocalTime': userLocalTime!,
      };
}

/// Used by:
///
/// - cloudsearch:v1 : ResponseDebugInfo
/// - cloudsearch:v1 : ResultDebugInfo
class $DebugInfo {
  /// General debug info formatted for display.
  core.String? formattedDebugInfo;

  $DebugInfo({
    this.formattedDebugInfo,
  });

  $DebugInfo.fromJson(core.Map _json)
      : this(
          formattedDebugInfo: _json.containsKey('formattedDebugInfo')
              ? _json['formattedDebugInfo'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (formattedDebugInfo != null)
          'formattedDebugInfo': formattedDebugInfo!,
      };
}

/// Used by:
///
/// - dfareporting:v3.4 : DefaultClickThroughEventTagProperties
/// - dfareporting:v3.5 : DefaultClickThroughEventTagProperties
class $DefaultClickThroughEventTagProperties {
  /// ID of the click-through event tag to apply to all ads in this entity's
  /// scope.
  core.String? defaultClickThroughEventTagId;

  /// Whether this entity should override the inherited default click-through
  /// event tag with its own defined value.
  core.bool? overrideInheritedEventTag;

  $DefaultClickThroughEventTagProperties({
    this.defaultClickThroughEventTagId,
    this.overrideInheritedEventTag,
  });

  $DefaultClickThroughEventTagProperties.fromJson(core.Map _json)
      : this(
          defaultClickThroughEventTagId:
              _json.containsKey('defaultClickThroughEventTagId')
                  ? _json['defaultClickThroughEventTagId'] as core.String
                  : null,
          overrideInheritedEventTag:
              _json.containsKey('overrideInheritedEventTag')
                  ? _json['overrideInheritedEventTag'] as core.bool
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (defaultClickThroughEventTagId != null)
          'defaultClickThroughEventTagId': defaultClickThroughEventTagId!,
        if (overrideInheritedEventTag != null)
          'overrideInheritedEventTag': overrideInheritedEventTag!,
      };
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

  $DeploymentOccurrence.fromJson(core.Map _json)
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

/// Used by:
///
/// - documentai:v1 : GoogleCloudDocumentaiV1DocumentPageDetectedLanguage
/// - vision:v1 : DetectedLanguage
class $DetectedLanguage {
  /// Confidence of detected language.
  ///
  /// Range \[0, 1\].
  core.double? confidence;

  /// The BCP-47 language code, such as "en-US" or "sr-Latn".
  ///
  /// For more information, see
  /// http://www.unicode.org/reports/tr35/#Unicode_locale_identifier.
  core.String? languageCode;

  $DetectedLanguage({
    this.confidence,
    this.languageCode,
  });

  $DetectedLanguage.fromJson(core.Map _json)
      : this(
          confidence: _json.containsKey('confidence')
              ? (_json['confidence'] as core.num).toDouble()
              : null,
          languageCode: _json.containsKey('languageCode')
              ? _json['languageCode'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (confidence != null) 'confidence': confidence!,
        if (languageCode != null) 'languageCode': languageCode!,
      };
}

/// Used by:
///
/// - dfareporting:v3.4 : DfpSettings
/// - dfareporting:v3.5 : DfpSettings
class $DfpSettings {
  /// Ad Manager network code for this directory site.
  core.String? dfpNetworkCode;

  /// Ad Manager network name for this directory site.
  core.String? dfpNetworkName;

  /// Whether this directory site accepts programmatic placements.
  core.bool? programmaticPlacementAccepted;

  /// Whether this directory site accepts publisher-paid tags.
  core.bool? pubPaidPlacementAccepted;

  /// Whether this directory site is available only via Publisher Portal.
  core.bool? publisherPortalOnly;

  $DfpSettings({
    this.dfpNetworkCode,
    this.dfpNetworkName,
    this.programmaticPlacementAccepted,
    this.pubPaidPlacementAccepted,
    this.publisherPortalOnly,
  });

  $DfpSettings.fromJson(core.Map _json)
      : this(
          dfpNetworkCode: _json.containsKey('dfpNetworkCode')
              ? _json['dfpNetworkCode'] as core.String
              : null,
          dfpNetworkName: _json.containsKey('dfpNetworkName')
              ? _json['dfpNetworkName'] as core.String
              : null,
          programmaticPlacementAccepted:
              _json.containsKey('programmaticPlacementAccepted')
                  ? _json['programmaticPlacementAccepted'] as core.bool
                  : null,
          pubPaidPlacementAccepted:
              _json.containsKey('pubPaidPlacementAccepted')
                  ? _json['pubPaidPlacementAccepted'] as core.bool
                  : null,
          publisherPortalOnly: _json.containsKey('publisherPortalOnly')
              ? _json['publisherPortalOnly'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dfpNetworkCode != null) 'dfpNetworkCode': dfpNetworkCode!,
        if (dfpNetworkName != null) 'dfpNetworkName': dfpNetworkName!,
        if (programmaticPlacementAccepted != null)
          'programmaticPlacementAccepted': programmaticPlacementAccepted!,
        if (pubPaidPlacementAccepted != null)
          'pubPaidPlacementAccepted': pubPaidPlacementAccepted!,
        if (publisherPortalOnly != null)
          'publisherPortalOnly': publisherPortalOnly!,
      };
}

/// Used by:
///
/// - dfareporting:v3.4 : Dimension
/// - dfareporting:v3.5 : Dimension
class $Dimension {
  /// The kind of resource this is, in this case dfareporting#dimension.
  core.String? kind;

  /// The dimension name, e.g. dfa:advertiser
  core.String? name;

  $Dimension({
    this.kind,
    this.name,
  });

  $Dimension.fromJson(core.Map _json)
      : this(
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (name != null) 'name': name!,
      };
}

/// Used by:
///
/// - dfareporting:v3.4 : DimensionFilter
/// - dfareporting:v3.5 : DimensionFilter
class $DimensionFilter {
  /// The name of the dimension to filter.
  core.String? dimensionName;

  /// The kind of resource this is, in this case dfareporting#dimensionFilter.
  core.String? kind;

  /// The value of the dimension to filter.
  core.String? value;

  $DimensionFilter({
    this.dimensionName,
    this.kind,
    this.value,
  });

  $DimensionFilter.fromJson(core.Map _json)
      : this(
          dimensionName: _json.containsKey('dimensionName')
              ? _json['dimensionName'] as core.String
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          value:
              _json.containsKey('value') ? _json['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dimensionName != null) 'dimensionName': dimensionName!,
        if (kind != null) 'kind': kind!,
        if (value != null) 'value': value!,
      };
}

/// Used by:
///
/// - dfareporting:v3.4 : DimensionValue
/// - dfareporting:v3.5 : DimensionValue
class $DimensionValue {
  /// The name of the dimension.
  core.String? dimensionName;

  /// The eTag of this response for caching purposes.
  core.String? etag;

  /// The ID associated with the value if available.
  core.String? id;

  /// The kind of resource this is, in this case dfareporting#dimensionValue.
  core.String? kind;

  /// Determines how the 'value' field is matched when filtering.
  ///
  /// If not specified, defaults to EXACT. If set to WILDCARD_EXPRESSION, '*' is
  /// allowed as a placeholder for variable length character sequences, and it
  /// can be escaped with a backslash. Note, only paid search dimensions
  /// ('dfa:paidSearch*') allow a matchType other than EXACT.
  /// Possible string values are:
  /// - "EXACT"
  /// - "BEGINS_WITH"
  /// - "CONTAINS"
  /// - "WILDCARD_EXPRESSION"
  core.String? matchType;

  /// The value of the dimension.
  core.String? value;

  $DimensionValue({
    this.dimensionName,
    this.etag,
    this.id,
    this.kind,
    this.matchType,
    this.value,
  });

  $DimensionValue.fromJson(core.Map _json)
      : this(
          dimensionName: _json.containsKey('dimensionName')
              ? _json['dimensionName'] as core.String
              : null,
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          matchType: _json.containsKey('matchType')
              ? _json['matchType'] as core.String
              : null,
          value:
              _json.containsKey('value') ? _json['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dimensionName != null) 'dimensionName': dimensionName!,
        if (etag != null) 'etag': etag!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (matchType != null) 'matchType': matchType!,
        if (value != null) 'value': value!,
      };
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

  $DiscoverySpecCsvOptions.fromJson(core.Map _json)
      : this(
          delimiter: _json.containsKey('delimiter')
              ? _json['delimiter'] as core.String
              : null,
          disableTypeInference: _json.containsKey('disableTypeInference')
              ? _json['disableTypeInference'] as core.bool
              : null,
          encoding: _json.containsKey('encoding')
              ? _json['encoding'] as core.String
              : null,
          headerRows: _json.containsKey('headerRows')
              ? _json['headerRows'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (delimiter != null) 'delimiter': delimiter!,
        if (disableTypeInference != null)
          'disableTypeInference': disableTypeInference!,
        if (encoding != null) 'encoding': encoding!,
        if (headerRows != null) 'headerRows': headerRows!,
      };
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

  $DiscoverySpecJsonOptions({
    this.disableTypeInference,
    this.encoding,
  });

  $DiscoverySpecJsonOptions.fromJson(core.Map _json)
      : this(
          disableTypeInference: _json.containsKey('disableTypeInference')
              ? _json['disableTypeInference'] as core.bool
              : null,
          encoding: _json.containsKey('encoding')
              ? _json['encoding'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (disableTypeInference != null)
          'disableTypeInference': disableTypeInference!,
        if (encoding != null) 'encoding': encoding!,
      };
}

/// Used by:
///
/// - compute:v1 : DisksRemoveResourcePoliciesRequest
/// - compute:v1 : RegionDisksRemoveResourcePoliciesRequest
class $DisksRemoveResourcePoliciesRequest {
  /// Resource policies to be removed from this disk.
  core.List<core.String>? resourcePolicies;

  $DisksRemoveResourcePoliciesRequest({
    this.resourcePolicies,
  });

  $DisksRemoveResourcePoliciesRequest.fromJson(core.Map _json)
      : this(
          resourcePolicies: _json.containsKey('resourcePolicies')
              ? (_json['resourcePolicies'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (resourcePolicies != null) 'resourcePolicies': resourcePolicies!,
      };
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
    this.selector,
  });

  $DocumentationRule.fromJson(core.Map _json)
      : this(
          deprecationDescription: _json.containsKey('deprecationDescription')
              ? _json['deprecationDescription'] as core.String
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          selector: _json.containsKey('selector')
              ? _json['selector'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (deprecationDescription != null)
          'deprecationDescription': deprecationDescription!,
        if (description != null) 'description': description!,
        if (selector != null) 'selector': selector!,
      };
}

/// Used by:
///
/// - dfareporting:v3.4 : DynamicTargetingKey
/// - dfareporting:v3.5 : DynamicTargetingKey
class $DynamicTargetingKey {
  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#dynamicTargetingKey".
  core.String? kind;

  /// Name of this dynamic targeting key.
  ///
  /// This is a required field. Must be less than 256 characters long and cannot
  /// contain commas. All characters are converted to lowercase.
  core.String? name;

  /// ID of the object of this dynamic targeting key.
  ///
  /// This is a required field.
  core.String? objectId;

  /// Type of the object of this dynamic targeting key.
  ///
  /// This is a required field.
  /// Possible string values are:
  /// - "OBJECT_ADVERTISER"
  /// - "OBJECT_AD"
  /// - "OBJECT_CREATIVE"
  /// - "OBJECT_PLACEMENT"
  core.String? objectType;

  $DynamicTargetingKey({
    this.kind,
    this.name,
    this.objectId,
    this.objectType,
  });

  $DynamicTargetingKey.fromJson(core.Map _json)
      : this(
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          objectId: _json.containsKey('objectId')
              ? _json['objectId'] as core.String
              : null,
          objectType: _json.containsKey('objectType')
              ? _json['objectType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (name != null) 'name': name!,
        if (objectId != null) 'objectId': objectId!,
        if (objectType != null) 'objectType': objectType!,
      };
}

/// Used by:
///
/// - accesscontextmanager:v1 : EgressFrom
/// - cloudasset:v1 : GoogleIdentityAccesscontextmanagerV1EgressFrom
class $EgressFrom {
  /// A list of identities that are allowed access through this
  /// \[EgressPolicy\].
  ///
  /// Should be in the format of email address. The email address should
  /// represent individual user or service account only.
  core.List<core.String>? identities;

  /// Specifies the type of identities that are allowed access to outside the
  /// perimeter.
  ///
  /// If left unspecified, then members of `identities` field will be allowed
  /// access.
  /// Possible string values are:
  /// - "IDENTITY_TYPE_UNSPECIFIED" : No blanket identity group specified.
  /// - "ANY_IDENTITY" : Authorize access from all identities outside the
  /// perimeter.
  /// - "ANY_USER_ACCOUNT" : Authorize access from all human users outside the
  /// perimeter.
  /// - "ANY_SERVICE_ACCOUNT" : Authorize access from all service accounts
  /// outside the perimeter.
  core.String? identityType;

  $EgressFrom({
    this.identities,
    this.identityType,
  });

  $EgressFrom.fromJson(core.Map _json)
      : this(
          identities: _json.containsKey('identities')
              ? (_json['identities'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          identityType: _json.containsKey('identityType')
              ? _json['identityType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (identities != null) 'identities': identities!,
        if (identityType != null) 'identityType': identityType!,
      };
}

/// Used by:
///
/// - accessapproval:v1 : DismissApprovalRequestMessage
/// - accessapproval:v1 : Empty
/// - accesscontextmanager:v1 : CancelOperationRequest
/// - accesscontextmanager:v1 : Empty
/// - admin:directory_v1 : Empty
/// - androiddeviceprovisioning:v1 : Empty
/// - androidmanagement:v1 : Empty
/// - apigateway:v1 : ApigatewayCancelOperationRequest
/// - apigateway:v1 : Empty
/// - apigee:v1 : GoogleCloudApigeeV1ActivateNatAddressRequest
/// - apigee:v1 : GoogleCloudApigeeV1ExpireDeveloperSubscriptionRequest
/// - apigee:v1 : GoogleCloudApigeeV1GenerateDownloadUrlRequest
/// - apigee:v1 : GoogleCloudApigeeV1GenerateUploadUrlRequest
/// - apigee:v1 : GoogleCloudApigeeV1GetSyncAuthorizationRequest
/// - apigee:v1 : GoogleCloudApigeeV1ReportInstanceStatusResponse
/// - apigee:v1 : GoogleProtobufEmpty
/// - apikeys:v2 : V2UndeleteKeyRequest
/// - appengine:v1 : Empty
/// - appengine:v1 : RepairApplicationRequest
/// - artifactregistry:v1 : Empty
/// - artifactregistry:v1 : UploadAptArtifactRequest
/// - artifactregistry:v1 : UploadGooGetArtifactRequest
/// - artifactregistry:v1 : UploadYumArtifactRequest
/// - assuredworkloads:v1 : GoogleProtobufEmpty
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
/// - baremetalsolution:v1 : CancelOperationRequest
/// - baremetalsolution:v1 : Empty
/// - baremetalsolution:v1 : ResetInstanceRequest
/// - baremetalsolution:v1 : ResetInstanceResponse
/// - baremetalsolution:v2 : Empty
/// - baremetalsolution:v2 : ResetInstanceRequest
/// - baremetalsolution:v2 : RestoreVolumeSnapshotRequest
/// - baremetalsolution:v2 : StartInstanceRequest
/// - bigquerydatatransfer:v1 : CheckValidCredsRequest
/// - bigquerydatatransfer:v1 : Empty
/// - bigqueryreservation:v1 : Empty
/// - bigtableadmin:v2 : Empty
/// - bigtableadmin:v2 : GenerateConsistencyTokenRequest
/// - billingbudgets:v1 : GoogleCloudBillingBudgetsV1LastPeriodAmount
/// - billingbudgets:v1 : GoogleProtobufEmpty
/// - binaryauthorization:v1 : Empty
/// - books:v1 : Empty
/// - certificatemanager:v1 : CancelOperationRequest
/// - certificatemanager:v1 : Empty
/// - chat:v1 : Empty
/// - chat:v1 : GoogleAppsCardV1Divider
/// - chromepolicy:v1 : GoogleProtobufEmpty
/// - civicinfo:v2 : MessageSet
/// - classroom:v1 : Empty
/// - classroom:v1 : ReclaimStudentSubmissionRequest
/// - classroom:v1 : ReturnStudentSubmissionRequest
/// - classroom:v1 : TurnInStudentSubmissionRequest
/// - cloudasset:v1 : Empty
/// - cloudasset:v1 : GoogleCloudOrgpolicyV1RestoreDefault
/// - cloudbuild:v1 : CancelOperationRequest
/// - cloudbuild:v1 : Empty
/// - cloudbuild:v1 : ReceiveTriggerWebhookResponse
/// - cloudchannel:v1 : GoogleLongrunningCancelOperationRequest
/// - cloudchannel:v1 : GoogleProtobufEmpty
/// - clouddebugger:v2 : Empty
/// - clouddebugger:v2 : UpdateActiveBreakpointResponse
/// - clouddeploy:v1 : ApproveRolloutResponse
/// - clouddeploy:v1 : CancelOperationRequest
/// - clouddeploy:v1 : Empty
/// - cloudfunctions:v1 : GenerateUploadUrlRequest
/// - cloudfunctions:v1 : Retry
/// - cloudiot:v1 : BindDeviceToGatewayResponse
/// - cloudiot:v1 : Empty
/// - cloudiot:v1 : SendCommandToDeviceResponse
/// - cloudiot:v1 : UnbindDeviceFromGatewayResponse
/// - cloudkms:v1 : DestroyCryptoKeyVersionRequest
/// - cloudkms:v1 : RestoreCryptoKeyVersionRequest
/// - cloudresourcemanager:v1 : BooleanConstraint
/// - cloudresourcemanager:v1 : Empty
/// - cloudresourcemanager:v1 : GetAncestryRequest
/// - cloudresourcemanager:v1 : RestoreDefault
/// - cloudresourcemanager:v1 : UndeleteProjectRequest
/// - cloudresourcemanager:v2 : UndeleteFolderRequest
/// - cloudresourcemanager:v3 : Empty
/// - cloudresourcemanager:v3 : UndeleteFolderRequest
/// - cloudresourcemanager:v3 : UndeleteProjectRequest
/// - cloudscheduler:v1 : Empty
/// - cloudscheduler:v1 : PauseJobRequest
/// - cloudscheduler:v1 : ResumeJobRequest
/// - cloudscheduler:v1 : RunJobRequest
/// - cloudsearch:v1 : InitializeCustomerRequest
/// - cloudsearch:v1 : QuerySuggestion
/// - cloudshell:v1 : CancelOperationRequest
/// - cloudshell:v1 : Empty
/// - cloudtasks:v2 : Empty
/// - cloudtasks:v2 : PauseQueueRequest
/// - cloudtasks:v2 : PurgeQueueRequest
/// - cloudtasks:v2 : ResumeQueueRequest
/// - cloudtrace:v2 : Empty
/// - composer:v1 : Empty
/// - connectors:v1 : CancelOperationRequest
/// - connectors:v1 : Empty
/// - contactcenterinsights:v1 : GoogleCloudContactcenterinsightsV1HoldData
/// - contactcenterinsights:v1 : GoogleCloudContactcenterinsightsV1InterruptionData
/// - contactcenterinsights:v1 : GoogleCloudContactcenterinsightsV1SilenceData
/// - contactcenterinsights:v1 : GoogleProtobufEmpty
/// - container:v1 : Empty
/// - containeranalysis:v1 : Empty
/// - content:v2.1 : ActivateBuyOnGoogleProgramRequest
/// - content:v2.1 : CaptureOrderRequest
/// - content:v2.1 : PauseBuyOnGoogleProgramRequest
/// - content:v2.1 : RequestReviewBuyOnGoogleProgramRequest
/// - datacatalog:v1 : Empty
/// - datacatalog:v1 : GoogleCloudDatacatalogV1PhysicalSchemaCsvSchema
/// - datacatalog:v1 : GoogleCloudDatacatalogV1PhysicalSchemaOrcSchema
/// - datacatalog:v1 : GoogleCloudDatacatalogV1PhysicalSchemaParquetSchema
/// - datacatalog:v1 : GoogleCloudDatacatalogV1StarEntryRequest
/// - datacatalog:v1 : GoogleCloudDatacatalogV1StarEntryResponse
/// - datacatalog:v1 : GoogleCloudDatacatalogV1UnstarEntryRequest
/// - datacatalog:v1 : GoogleCloudDatacatalogV1UnstarEntryResponse
/// - datafusion:v1 : CancelOperationRequest
/// - datafusion:v1 : Empty
/// - datafusion:v1 : RestartInstanceRequest
/// - datamigration:v1 : CancelOperationRequest
/// - datamigration:v1 : Empty
/// - datamigration:v1 : PromoteMigrationJobRequest
/// - datamigration:v1 : RestartMigrationJobRequest
/// - datamigration:v1 : ResumeMigrationJobRequest
/// - datamigration:v1 : StartMigrationJobRequest
/// - datamigration:v1 : StaticIpConnectivity
/// - datamigration:v1 : StopMigrationJobRequest
/// - datamigration:v1 : VerifyMigrationJobRequest
/// - datapipelines:v1 : GoogleCloudDatapipelinesV1RunPipelineRequest
/// - datapipelines:v1 : GoogleCloudDatapipelinesV1StopPipelineRequest
/// - datapipelines:v1 : GoogleProtobufEmpty
/// - dataplex:v1 : Empty
/// - dataplex:v1 : GoogleCloudDataplexV1ActionInvalidDataOrganization
/// - dataplex:v1 : GoogleCloudDataplexV1ActionMissingData
/// - dataplex:v1 : GoogleCloudDataplexV1ActionMissingResource
/// - dataplex:v1 : GoogleCloudDataplexV1ActionUnauthorizedResource
/// - dataplex:v1 : GoogleCloudDataplexV1CancelJobRequest
/// - dataplex:v1 : GoogleLongrunningCancelOperationRequest
/// - dataproc:v1 : CancelJobRequest
/// - dataproc:v1 : DiagnoseClusterRequest
/// - dataproc:v1 : Empty
/// - datastore:v1 : Empty
/// - datastore:v1 : ReadOnly
/// - datastore:v1 : ReserveIdsResponse
/// - datastore:v1 : RollbackResponse
/// - datastream:v1 : AvroFileFormat
/// - datastream:v1 : BackfillNoneStrategy
/// - datastream:v1 : CancelOperationRequest
/// - datastream:v1 : Empty
/// - datastream:v1 : StartBackfillJobRequest
/// - datastream:v1 : StaticServiceIpConnectivity
/// - datastream:v1 : StopBackfillJobRequest
/// - dialogflow:v2 : GoogleCloudDialogflowV2CompleteConversationRequest
/// - dialogflow:v2 : GoogleCloudDialogflowV2TrainAgentRequest
/// - dialogflow:v2 : GoogleProtobufEmpty
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3ResponseMessageEndInteraction
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3RunContinuousTestRequest
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3StartExperimentRequest
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3StopExperimentRequest
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3TrainFlowRequest
/// - dialogflow:v3 : GoogleProtobufEmpty
/// - displayvideo:v1 : ActivateManualTriggerRequest
/// - displayvideo:v1 : DeactivateManualTriggerRequest
/// - displayvideo:v1 : Empty
/// - dlp:v2 : GooglePrivacyDlpV2ActivateJobTriggerRequest
/// - dlp:v2 : GooglePrivacyDlpV2CancelDlpJobRequest
/// - dlp:v2 : GooglePrivacyDlpV2FinishDlpJobRequest
/// - dlp:v2 : GooglePrivacyDlpV2HybridInspectResponse
/// - dlp:v2 : GooglePrivacyDlpV2JobNotificationEmails
/// - dlp:v2 : GooglePrivacyDlpV2LeaveUntransformed
/// - dlp:v2 : GooglePrivacyDlpV2Manual
/// - dlp:v2 : GooglePrivacyDlpV2PublishFindingsToCloudDataCatalog
/// - dlp:v2 : GooglePrivacyDlpV2PublishSummaryToCscc
/// - dlp:v2 : GooglePrivacyDlpV2PublishToStackdriver
/// - dlp:v2 : GooglePrivacyDlpV2RedactConfig
/// - dlp:v2 : GooglePrivacyDlpV2ReplaceWithInfoTypeConfig
/// - dlp:v2 : GooglePrivacyDlpV2SurrogateType
/// - dlp:v2 : GooglePrivacyDlpV2ThrowError
/// - dlp:v2 : GoogleProtobufEmpty
/// - dns:v1 : ResourceRecordSetsDeleteResponse
/// - docs:v1 : EmbeddedDrawingProperties
/// - docs:v1 : EmbeddedDrawingPropertiesSuggestionState
/// - documentai:v1 : GoogleCloudDocumentaiV1DeployProcessorVersionRequest
/// - documentai:v1 : GoogleCloudDocumentaiV1DisableProcessorRequest
/// - documentai:v1 : GoogleCloudDocumentaiV1EnableProcessorRequest
/// - documentai:v1 : GoogleCloudDocumentaiV1UndeployProcessorVersionRequest
/// - documentai:v1 : GoogleProtobufEmpty
/// - domains:v1 : ExportRegistrationRequest
/// - domains:v1 : ResetAuthorizationCodeRequest
/// - driveactivity:v2 : Administrator
/// - driveactivity:v2 : AnonymousUser
/// - driveactivity:v2 : Anyone
/// - driveactivity:v2 : DeletedUser
/// - driveactivity:v2 : DriveFile
/// - driveactivity:v2 : Edit
/// - driveactivity:v2 : File
/// - driveactivity:v2 : Legacy
/// - driveactivity:v2 : New
/// - driveactivity:v2 : NoConsolidation
/// - driveactivity:v2 : UnknownUser
/// - driveactivity:v2 : Upload
/// - essentialcontacts:v1 : GoogleProtobufEmpty
/// - eventarc:v1 : Empty
/// - eventarc:v1 : GoogleLongrunningCancelOperationRequest
/// - file:v1 : CancelOperationRequest
/// - file:v1 : Empty
/// - firebasehosting:v1 : CancelOperationRequest
/// - firebasehosting:v1 : Empty
/// - firebaseml:v1 : CancelOperationRequest
/// - firebaseml:v1 : Empty
/// - firebaserules:v1 : Empty
/// - firestore:v1 : Empty
/// - firestore:v1 : GoogleLongrunningCancelOperationRequest
/// - gameservices:v1 : CancelOperationRequest
/// - gameservices:v1 : Empty
/// - gameservices:v1 : FetchDeploymentStateRequest
/// - gkehub:v1 : AppDevExperienceFeatureSpec
/// - gkehub:v1 : CancelOperationRequest
/// - gkehub:v1 : Empty
/// - healthcare:v1 : ArchiveUserDataMappingRequest
/// - healthcare:v1 : ArchiveUserDataMappingResponse
/// - healthcare:v1 : CancelOperationRequest
/// - healthcare:v1 : Empty
/// - healthcare:v1 : RedactConfig
/// - healthcare:v1 : ReplaceWithInfoTypeConfig
/// - homegraph:v1 : Empty
/// - homegraph:v1 : RequestSyncDevicesResponse
/// - iam:v1 : DisableServiceAccountKeyRequest
/// - iam:v1 : DisableServiceAccountRequest
/// - iam:v1 : Empty
/// - iam:v1 : EnableServiceAccountKeyRequest
/// - iam:v1 : EnableServiceAccountRequest
/// - iam:v1 : UndeleteServiceAccountRequest
/// - iam:v1 : UndeleteWorkloadIdentityPoolProviderRequest
/// - iam:v1 : UndeleteWorkloadIdentityPoolRequest
/// - iap:v1 : Empty
/// - iap:v1 : ResetIdentityAwareProxyClientSecretRequest
/// - ids:v1 : CancelOperationRequest
/// - ids:v1 : Empty
/// - jobs:v3 : Empty
/// - jobs:v4 : Empty
/// - keep:v1 : Empty
/// - keep:v1 : Family
/// - licensing:v1 : Empty
/// - logging:v2 : CancelOperationRequest
/// - logging:v2 : Empty
/// - logging:v2 : UndeleteBucketRequest
/// - logging:v2 : WriteLogEntriesResponse
/// - managedidentities:v1 : CancelOperationRequest
/// - managedidentities:v1 : Empty
/// - managedidentities:v1 : ResetAdminPasswordRequest
/// - manufacturers:v1 : Empty
/// - memcache:v1 : CancelOperationRequest
/// - memcache:v1 : Empty
/// - ml:v1 : GoogleCloudMlV1__CancelJobRequest
/// - ml:v1 : GoogleCloudMlV1__CheckTrialEarlyStoppingStateRequest
/// - ml:v1 : GoogleCloudMlV1__ListOptimalTrialsRequest
/// - ml:v1 : GoogleCloudMlV1__SetDefaultVersionRequest
/// - ml:v1 : GoogleCloudMlV1__StopTrialRequest
/// - ml:v1 : GoogleProtobuf__Empty
/// - monitoring:v3 : AvailabilityCriteria
/// - monitoring:v3 : Custom
/// - monitoring:v3 : Empty
/// - monitoring:v3 : SendNotificationChannelVerificationCodeRequest
/// - mybusinessaccountmanagement:v1 : AcceptInvitationRequest
/// - mybusinessaccountmanagement:v1 : DeclineInvitationRequest
/// - mybusinessaccountmanagement:v1 : Empty
/// - mybusinessbusinessinformation:v1 : ClearLocationAssociationRequest
/// - mybusinessbusinessinformation:v1 : Empty
/// - mybusinessplaceactions:v1 : Empty
/// - mybusinessqanda:v1 : Empty
/// - mybusinessverifications:v1 : ComplyWithGuidelines
/// - mybusinessverifications:v1 : ResolveOwnershipConflict
/// - mybusinessverifications:v1 : WaitForVoiceOfMerchant
/// - networkconnectivity:v1 : Empty
/// - networkconnectivity:v1 : GoogleLongrunningCancelOperationRequest
/// - networkmanagement:v1 : CancelOperationRequest
/// - networkmanagement:v1 : Empty
/// - networkmanagement:v1 : RerunConnectivityTestRequest
/// - networksecurity:v1 : CancelOperationRequest
/// - networksecurity:v1 : Empty
/// - networkservices:v1 : CancelOperationRequest
/// - networkservices:v1 : Empty
/// - notebooks:v1 : CancelOperationRequest
/// - notebooks:v1 : Empty
/// - notebooks:v1 : ResetInstanceRequest
/// - notebooks:v1 : ResetRuntimeRequest
/// - notebooks:v1 : StartInstanceRequest
/// - notebooks:v1 : StartRuntimeRequest
/// - notebooks:v1 : StopInstanceRequest
/// - notebooks:v1 : StopRuntimeRequest
/// - notebooks:v1 : TriggerScheduleRequest
/// - ondemandscanning:v1 : Empty
/// - orgpolicy:v2 : GoogleCloudOrgpolicyV2ConstraintBooleanConstraint
/// - orgpolicy:v2 : GoogleProtobufEmpty
/// - osconfig:v1 : CancelOperationRequest
/// - osconfig:v1 : CancelPatchJobRequest
/// - osconfig:v1 : Empty
/// - osconfig:v1 : GooSettings
/// - osconfig:v1 : PausePatchDeploymentRequest
/// - osconfig:v1 : ResumePatchDeploymentRequest
/// - oslogin:v1 : Empty
/// - paymentsresellersubscription:v1 : GoogleCloudPaymentsResellerSubscriptionV1EntitleSubscriptionRequest
/// - paymentsresellersubscription:v1 : GoogleCloudPaymentsResellerSubscriptionV1UndoCancelSubscriptionRequest
/// - people:v1 : Empty
/// - privateca:v1 : CancelOperationRequest
/// - privateca:v1 : Empty
/// - pubsub:v1 : DetachSubscriptionResponse
/// - pubsub:v1 : Empty
/// - pubsub:v1 : SeekResponse
/// - pubsub:v1 : ValidateMessageResponse
/// - pubsub:v1 : ValidateSchemaResponse
/// - pubsublite:v1 : CancelOperationRequest
/// - pubsublite:v1 : CommitCursorResponse
/// - pubsublite:v1 : Empty
/// - realtimebidding:v1 : ActivatePretargetingConfigRequest
/// - realtimebidding:v1 : CloseUserListRequest
/// - realtimebidding:v1 : Empty
/// - realtimebidding:v1 : OpenUserListRequest
/// - realtimebidding:v1 : SuspendPretargetingConfigRequest
/// - realtimebidding:v1 : WatchCreativesRequest
/// - recaptchaenterprise:v1 : GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentResponse
/// - recaptchaenterprise:v1 : GoogleCloudRecaptchaenterpriseV1MigrateKeyRequest
/// - recaptchaenterprise:v1 : GoogleProtobufEmpty
/// - redis:v1 : Empty
/// - retail:v2 : GoogleProtobufEmpty
/// - run:v1 : RunJobRequest
/// - run:v2 : GoogleProtobufEmpty
/// - runtimeconfig:v1 : CancelOperationRequest
/// - runtimeconfig:v1 : Empty
/// - safebrowsing:v4 : GoogleProtobufEmpty
/// - script:v1 : Empty
/// - secretmanager:v1 : Empty
/// - securitycenter:v1 : Empty
/// - securitycenter:v1 : RunAssetDiscoveryRequest
/// - serviceconsumermanagement:v1 : CancelOperationRequest
/// - serviceconsumermanagement:v1 : Empty
/// - servicecontrol:v2 : ReportResponse
/// - servicedirectory:v1 : Empty
/// - servicemanagement:v1 : DeleteServiceStrategy
/// - servicenetworking:v1 : CancelOperationRequest
/// - servicenetworking:v1 : Empty
/// - serviceusage:v1 : CancelOperationRequest
/// - serviceusage:v1 : Empty
/// - serviceusage:v1 : EnableServiceRequest
/// - sheets:v4 : ClearValuesRequest
/// - sourcerepo:v1 : Empty
/// - sourcerepo:v1 : SyncRepoRequest
/// - spanner:v1 : Empty
/// - spanner:v1 : PartitionedDml
/// - spanner:v1 : ReadWrite
/// - speech:v1 : Empty
/// - storagetransfer:v1 : CancelOperationRequest
/// - storagetransfer:v1 : Empty
/// - storagetransfer:v1 : PauseTransferOperationRequest
/// - storagetransfer:v1 : ResumeTransferOperationRequest
/// - streetviewpublish:v1 : Empty
/// - testing:v1 : GoogleAuto
/// - testing:v1 : LauncherActivityIntent
/// - tpu:v1 : Empty
/// - tpu:v1 : StartNodeRequest
/// - tpu:v1 : StopNodeRequest
/// - trafficdirector:v2 : NullMatch
/// - transcoder:v1 : Empty
/// - translate:v3 : CancelOperationRequest
/// - translate:v3 : Empty
/// - vault:v1 : CancelOperationRequest
/// - vault:v1 : CloseMatterRequest
/// - vault:v1 : Empty
/// - vault:v1 : ReopenMatterRequest
/// - vault:v1 : UndeleteMatterRequest
/// - verifiedaccess:v1 : Empty
/// - videointelligence:v1 : GoogleLongrunning_CancelOperationRequest
/// - videointelligence:v1 : GoogleProtobuf_Empty
/// - vision:v1 : CancelOperationRequest
/// - vision:v1 : Empty
/// - vmmigration:v1 : CancelCloneJobRequest
/// - vmmigration:v1 : CancelCutoverJobRequest
/// - vmmigration:v1 : CancelOperationRequest
/// - vmmigration:v1 : Empty
/// - vmmigration:v1 : FinalizeMigrationRequest
/// - vmmigration:v1 : PauseMigrationRequest
/// - vmmigration:v1 : ResumeMigrationRequest
/// - vmmigration:v1 : StartMigrationRequest
/// - webrisk:v1 : GoogleLongrunningCancelOperationRequest
/// - webrisk:v1 : GoogleProtobufEmpty
/// - websecurityscanner:v1 : Empty
/// - websecurityscanner:v1 : StartScanRunRequest
/// - websecurityscanner:v1 : StopScanRunRequest
/// - workflowexecutions:v1 : CancelExecutionRequest
/// - workflows:v1 : Empty
/// - youtube:v3 : TestItemTestItemSnippet
/// - youtube:v3 : TokenPagination
/// - youtube:v3 : VideoProjectDetails
/// - youtubereporting:v1 : Empty
class $Empty {
  $Empty();

  $Empty.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.dynamic> toJson() => {};
}

/// Used by:
///
/// - dfareporting:v3.4 : EncryptionInfo
/// - dfareporting:v3.5 : EncryptionInfo
class $EncryptionInfo {
  /// The encryption entity ID.
  ///
  /// This should match the encryption configuration for ad serving or Data
  /// Transfer.
  core.String? encryptionEntityId;

  /// The encryption entity type.
  ///
  /// This should match the encryption configuration for ad serving or Data
  /// Transfer.
  /// Possible string values are:
  /// - "ENCRYPTION_ENTITY_TYPE_UNKNOWN"
  /// - "DCM_ACCOUNT"
  /// - "DCM_ADVERTISER"
  /// - "DBM_PARTNER"
  /// - "DBM_ADVERTISER"
  /// - "ADWORDS_CUSTOMER"
  /// - "DFP_NETWORK_CODE"
  core.String? encryptionEntityType;

  /// Describes whether the encrypted cookie was received from ad serving (the
  /// %m macro) or from Data Transfer.
  /// Possible string values are:
  /// - "ENCRYPTION_SCOPE_UNKNOWN"
  /// - "AD_SERVING"
  /// - "DATA_TRANSFER"
  core.String? encryptionSource;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#encryptionInfo".
  core.String? kind;

  $EncryptionInfo({
    this.encryptionEntityId,
    this.encryptionEntityType,
    this.encryptionSource,
    this.kind,
  });

  $EncryptionInfo.fromJson(core.Map _json)
      : this(
          encryptionEntityId: _json.containsKey('encryptionEntityId')
              ? _json['encryptionEntityId'] as core.String
              : null,
          encryptionEntityType: _json.containsKey('encryptionEntityType')
              ? _json['encryptionEntityType'] as core.String
              : null,
          encryptionSource: _json.containsKey('encryptionSource')
              ? _json['encryptionSource'] as core.String
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (encryptionEntityId != null)
          'encryptionEntityId': encryptionEntityId!,
        if (encryptionEntityType != null)
          'encryptionEntityType': encryptionEntityType!,
        if (encryptionSource != null) 'encryptionSource': encryptionSource!,
        if (kind != null) 'kind': kind!,
      };
}

/// Used by:
///
/// - servicemanagement:v1 : Endpoint
/// - serviceusage:v1 : Endpoint
class $Endpoint {
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

  $Endpoint({
    this.allowCors,
    this.name,
    this.target,
  });

  $Endpoint.fromJson(core.Map _json)
      : this(
          allowCors: _json.containsKey('allowCors')
              ? _json['allowCors'] as core.bool
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          target: _json.containsKey('target')
              ? _json['target'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowCors != null) 'allowCors': allowCors!,
        if (name != null) 'name': name!,
        if (target != null) 'target': target!,
      };
}

/// Used by:
///
/// - containeranalysis:v1 : EnvelopeSignature
/// - ondemandscanning:v1 : EnvelopeSignature
class $EnvelopeSignature {
  core.String? keyid;
  core.String? sig;
  core.List<core.int> get sigAsBytes => convert.base64.decode(sig!);

  set sigAsBytes(core.List<core.int> _bytes) {
    sig =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  $EnvelopeSignature({
    this.keyid,
    this.sig,
  });

  $EnvelopeSignature.fromJson(core.Map _json)
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

/// Used by:
///
/// - dfareporting:v3.4 : EventTagOverride
/// - dfareporting:v3.5 : EventTagOverride
class $EventTagOverride {
  /// Whether this override is enabled.
  core.bool? enabled;

  /// ID of this event tag override.
  ///
  /// This is a read-only, auto-generated field.
  core.String? id;

  $EventTagOverride({
    this.enabled,
    this.id,
  });

  $EventTagOverride.fromJson(core.Map _json)
      : this(
          enabled: _json.containsKey('enabled')
              ? _json['enabled'] as core.bool
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enabled != null) 'enabled': enabled!,
        if (id != null) 'id': id!,
      };
}

/// Used by:
///
/// - logging:v2 : Explicit
/// - monitoring:v3 : Explicit
class $Explicit {
  /// The values must be monotonically increasing.
  core.List<core.double>? bounds;

  $Explicit({
    this.bounds,
  });

  $Explicit.fromJson(core.Map _json)
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

  $Exponential({
    this.growthFactor,
    this.numFiniteBuckets,
    this.scale,
  });

  $Exponential.fromJson(core.Map _json)
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

/// Used by:
///
/// - vault:v1 : GroupsExportOptions
/// - vault:v1 : HangoutsChatExportOptions
class $ExportOptions {
  /// The file format for exported messages.
  /// Possible string values are:
  /// - "EXPORT_FORMAT_UNSPECIFIED" : No export format specified.
  /// - "MBOX" : Export as MBOX.
  /// - "PST" : Export as PST.
  core.String? exportFormat;

  $ExportOptions({
    this.exportFormat,
  });

  $ExportOptions.fromJson(core.Map _json)
      : this(
          exportFormat: _json.containsKey('exportFormat')
              ? _json['exportFormat'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (exportFormat != null) 'exportFormat': exportFormat!,
      };
}

/// Used by:
///
/// - accesscontextmanager:v1 : Expr
/// - apigateway:v1 : ApigatewayExpr
/// - apigee:v1 : GoogleTypeExpr
/// - artifactregistry:v1 : Expr
/// - bigquery:v2 : Expr
/// - bigtableadmin:v2 : Expr
/// - binaryauthorization:v1 : Expr
/// - cloudasset:v1 : Expr
/// - cloudbilling:v1 : Expr
/// - clouddeploy:v1 : Expr
/// - cloudfunctions:v1 : Expr
/// - cloudiot:v1 : Expr
/// - cloudkms:v1 : Expr
/// - cloudresourcemanager:v1 : Expr
/// - cloudresourcemanager:v2 : Expr
/// - cloudresourcemanager:v3 : Expr
/// - cloudtasks:v2 : Expr
/// - compute:v1 : Expr
/// - connectors:v1 : Expr
/// - containeranalysis:v1 : Expr
/// - datacatalog:v1 : Expr
/// - datafusion:v1 : Expr
/// - datamigration:v1 : Expr
/// - dataplex:v1 : GoogleTypeExpr
/// - dataproc:v1 : Expr
/// - deploymentmanager:v2 : Expr
/// - domains:v1 : Expr
/// - eventarc:v1 : Expr
/// - gameservices:v1 : Expr
/// - gkehub:v1 : Expr
/// - healthcare:v1 : Expr
/// - iam:v1 : Expr
/// - iap:v1 : Expr
/// - ids:v1 : Expr
/// - managedidentities:v1 : Expr
/// - ml:v1 : GoogleType__Expr
/// - networkconnectivity:v1 : Expr
/// - networkmanagement:v1 : Expr
/// - networksecurity:v1 : Expr
/// - networkservices:v1 : Expr
/// - notebooks:v1 : Expr
/// - orgpolicy:v2 : GoogleTypeExpr
/// - policysimulator:v1 : GoogleTypeExpr
/// - policytroubleshooter:v1 : GoogleTypeExpr
/// - privateca:v1 : Expr
/// - pubsub:v1 : Expr
/// - run:v1 : Expr
/// - run:v2 : GoogleTypeExpr
/// - secretmanager:v1 : Expr
/// - securitycenter:v1 : Expr
/// - servicedirectory:v1 : Expr
/// - servicemanagement:v1 : Expr
/// - sourcerepo:v1 : Expr
/// - spanner:v1 : Expr
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

  $Expr({
    this.description,
    this.expression,
    this.location,
    this.title,
  });

  $Expr.fromJson(core.Map _json)
      : this(
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          expression: _json.containsKey('expression')
              ? _json['expression'] as core.String
              : null,
          location: _json.containsKey('location')
              ? _json['location'] as core.String
              : null,
          title:
              _json.containsKey('title') ? _json['title'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (expression != null) 'expression': expression!,
        if (location != null) 'location': location!,
        if (title != null) 'title': title!,
      };
}

/// Used by:
///
/// - fcm:v1 : AndroidFcmOptions
/// - fcm:v1 : FcmOptions
class $FcmOptions {
  /// Label associated with the message's analytics data.
  core.String? analyticsLabel;

  $FcmOptions({
    this.analyticsLabel,
  });

  $FcmOptions.fromJson(core.Map _json)
      : this(
          analyticsLabel: _json.containsKey('analyticsLabel')
              ? _json['analyticsLabel'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (analyticsLabel != null) 'analyticsLabel': analyticsLabel!,
      };
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

  $Fingerprint({
    this.v1Name,
    this.v2Blob,
    this.v2Name,
  });

  $Fingerprint.fromJson(core.Map _json)
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

/// Used by:
///
/// - dfareporting:v3.4 : Flight
/// - dfareporting:v3.5 : Flight
class $Flight {
  core.DateTime? endDate;

  /// Rate or cost of this flight.
  core.String? rateOrCost;
  core.DateTime? startDate;

  /// Units of this flight.
  core.String? units;

  $Flight({
    this.endDate,
    this.rateOrCost,
    this.startDate,
    this.units,
  });

  $Flight.fromJson(core.Map _json)
      : this(
          endDate: _json.containsKey('endDate')
              ? core.DateTime.parse(_json['endDate'] as core.String)
              : null,
          rateOrCost: _json.containsKey('rateOrCost')
              ? _json['rateOrCost'] as core.String
              : null,
          startDate: _json.containsKey('startDate')
              ? core.DateTime.parse(_json['startDate'] as core.String)
              : null,
          units:
              _json.containsKey('units') ? _json['units'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (endDate != null)
          'endDate':
              "${(endDate!).year.toString().padLeft(4, '0')}-${(endDate!).month.toString().padLeft(2, '0')}-${(endDate!).day.toString().padLeft(2, '0')}",
        if (rateOrCost != null) 'rateOrCost': rateOrCost!,
        if (startDate != null)
          'startDate':
              "${(startDate!).year.toString().padLeft(4, '0')}-${(startDate!).month.toString().padLeft(2, '0')}-${(startDate!).day.toString().padLeft(2, '0')}",
        if (units != null) 'units': units!,
      };
}

/// Used by:
///
/// - dfareporting:v3.4 : FloodlightActivitiesGenerateTagResponse
/// - dfareporting:v3.5 : FloodlightActivitiesGenerateTagResponse
class $FloodlightActivitiesGenerateTagResponse {
  /// Generated tag for this Floodlight activity.
  ///
  /// For global site tags, this is the event snippet.
  core.String? floodlightActivityTag;

  /// The global snippet section of a global site tag.
  ///
  /// The global site tag sets new cookies on your domain, which will store a
  /// unique identifier for a user or the ad click that brought the user to your
  /// site. Learn more.
  core.String? globalSiteTagGlobalSnippet;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string
  /// "dfareporting#floodlightActivitiesGenerateTagResponse".
  core.String? kind;

  $FloodlightActivitiesGenerateTagResponse({
    this.floodlightActivityTag,
    this.globalSiteTagGlobalSnippet,
    this.kind,
  });

  $FloodlightActivitiesGenerateTagResponse.fromJson(core.Map _json)
      : this(
          floodlightActivityTag: _json.containsKey('floodlightActivityTag')
              ? _json['floodlightActivityTag'] as core.String
              : null,
          globalSiteTagGlobalSnippet:
              _json.containsKey('globalSiteTagGlobalSnippet')
                  ? _json['globalSiteTagGlobalSnippet'] as core.String
                  : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (floodlightActivityTag != null)
          'floodlightActivityTag': floodlightActivityTag!,
        if (globalSiteTagGlobalSnippet != null)
          'globalSiteTagGlobalSnippet': globalSiteTagGlobalSnippet!,
        if (kind != null) 'kind': kind!,
      };
}

/// Used by:
///
/// - dfareporting:v3.4 : FloodlightActivityDynamicTag
/// - dfareporting:v3.5 : FloodlightActivityDynamicTag
class $FloodlightActivityDynamicTag {
  /// ID of this dynamic tag.
  ///
  /// This is a read-only, auto-generated field.
  core.String? id;

  /// Name of this tag.
  core.String? name;

  /// Tag code.
  core.String? tag;

  $FloodlightActivityDynamicTag({
    this.id,
    this.name,
    this.tag,
  });

  $FloodlightActivityDynamicTag.fromJson(core.Map _json)
      : this(
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          tag: _json.containsKey('tag') ? _json['tag'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
        if (name != null) 'name': name!,
        if (tag != null) 'tag': tag!,
      };
}

/// Used by:
///
/// - dfareporting:v3.4 : FrequencyCap
/// - dfareporting:v3.5 : FrequencyCap
class $FrequencyCap {
  /// Duration of time, in seconds, for this frequency cap.
  ///
  /// The maximum duration is 90 days. Acceptable values are 1 to 7776000,
  /// inclusive.
  core.String? duration;

  /// Number of times an individual user can be served the ad within the
  /// specified duration.
  ///
  /// Acceptable values are 1 to 15, inclusive.
  core.String? impressions;

  $FrequencyCap({
    this.duration,
    this.impressions,
  });

  $FrequencyCap.fromJson(core.Map _json)
      : this(
          duration: _json.containsKey('duration')
              ? _json['duration'] as core.String
              : null,
          impressions: _json.containsKey('impressions')
              ? _json['impressions'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (duration != null) 'duration': duration!,
        if (impressions != null) 'impressions': impressions!,
      };
}

/// Used by:
///
/// - dfareporting:v3.4 : FsCommand
/// - dfareporting:v3.5 : FsCommand
class $FsCommand {
  /// Distance from the left of the browser.Applicable when positionOption is
  /// DISTANCE_FROM_TOP_LEFT_CORNER.
  core.int? left;

  /// Position in the browser where the window will open.
  /// Possible string values are:
  /// - "CENTERED"
  /// - "DISTANCE_FROM_TOP_LEFT_CORNER"
  core.String? positionOption;

  /// Distance from the top of the browser.
  ///
  /// Applicable when positionOption is DISTANCE_FROM_TOP_LEFT_CORNER.
  core.int? top;

  /// Height of the window.
  core.int? windowHeight;

  /// Width of the window.
  core.int? windowWidth;

  $FsCommand({
    this.left,
    this.positionOption,
    this.top,
    this.windowHeight,
    this.windowWidth,
  });

  $FsCommand.fromJson(core.Map _json)
      : this(
          left: _json.containsKey('left') ? _json['left'] as core.int : null,
          positionOption: _json.containsKey('positionOption')
              ? _json['positionOption'] as core.String
              : null,
          top: _json.containsKey('top') ? _json['top'] as core.int : null,
          windowHeight: _json.containsKey('windowHeight')
              ? _json['windowHeight'] as core.int
              : null,
          windowWidth: _json.containsKey('windowWidth')
              ? _json['windowWidth'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (left != null) 'left': left!,
        if (positionOption != null) 'positionOption': positionOption!,
        if (top != null) 'top': top!,
        if (windowHeight != null) 'windowHeight': windowHeight!,
        if (windowWidth != null) 'windowWidth': windowWidth!,
      };
}

/// Used by:
///
/// - healthcare:v1 : GcsSource
/// - healthcare:v1 : GoogleCloudHealthcareV1FhirGcsSource
class $GcsSource {
  /// Points to a Cloud Storage URI containing file(s) to import.
  ///
  /// The URI must be in the following format: `gs://{bucket_id}/{object_id}`.
  /// The URI can include wildcards in `object_id` and thus identify multiple
  /// files. Supported wildcards: * `*` to match 0 or more non-separator
  /// characters * `**` to match 0 or more characters (including separators).
  /// Must be used at the end of a path and with no other wildcards in the path.
  /// Can also be used with a file extension (such as .ndjson), which imports
  /// all files with the extension in the specified directory and its
  /// sub-directories. For example, `gs://my-bucket/my-directory / * *.ndjson`
  /// imports all files with `.ndjson` extensions in `my-directory/` and its
  /// sub-directories. * `?` to match 1 character Files matching the wildcard
  /// are expected to contain content only, no metadata.
  core.String? uri;

  $GcsSource({
    this.uri,
  });

  $GcsSource.fromJson(core.Map _json)
      : this(
          uri: _json.containsKey('uri') ? _json['uri'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (uri != null) 'uri': uri!,
      };
}

/// Used by:
///
/// - accesscontextmanager:v1 : GetPolicyOptions
/// - bigquery:v2 : GetPolicyOptions
/// - bigtableadmin:v2 : GetPolicyOptions
/// - cloudiot:v1 : GetPolicyOptions
/// - cloudresourcemanager:v1 : GetPolicyOptions
/// - cloudresourcemanager:v2 : GetPolicyOptions
/// - cloudresourcemanager:v3 : GetPolicyOptions
/// - cloudtasks:v2 : GetPolicyOptions
/// - containeranalysis:v1 : GetPolicyOptions
/// - datacatalog:v1 : GetPolicyOptions
/// - iap:v1 : GetPolicyOptions
/// - securitycenter:v1 : GetPolicyOptions
/// - servicedirectory:v1 : GetPolicyOptions
/// - servicemanagement:v1 : GetPolicyOptions
/// - spanner:v1 : GetPolicyOptions
class $GetPolicyOptions {
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

  $GetPolicyOptions({
    this.requestedPolicyVersion,
  });

  $GetPolicyOptions.fromJson(core.Map _json)
      : this(
          requestedPolicyVersion: _json.containsKey('requestedPolicyVersion')
              ? _json['requestedPolicyVersion'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (requestedPolicyVersion != null)
          'requestedPolicyVersion': requestedPolicyVersion!,
      };
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

  $GitSourceContext({
    this.revisionId,
    this.url,
  });

  $GitSourceContext.fromJson(core.Map _json)
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

/// Used by:
///
/// - appengine:v1 : ApiEndpointHandler
/// - appengine:v1 : ScriptHandler
class $Handler {
  /// Path to the script from the application root directory.
  core.String? scriptPath;

  $Handler({
    this.scriptPath,
  });

  $Handler.fromJson(core.Map _json)
      : this(
          scriptPath: _json.containsKey('scriptPath')
              ? _json['scriptPath'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (scriptPath != null) 'scriptPath': scriptPath!,
      };
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

  set valueAsBytes(core.List<core.int> _bytes) {
    value =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  $Hash({
    this.type,
    this.value,
  });

  $Hash.fromJson(core.Map _json)
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

/// Used by:
///
/// - compute:v1 : UrlMapTestHeader
/// - websecurityscanner:v1 : Header
class $Header {
  /// Header name.
  core.String? name;

  /// Header value.
  core.String? value;

  $Header({
    this.name,
    this.value,
  });

  $Header.fromJson(core.Map _json)
      : this(
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          value:
              _json.containsKey('value') ? _json['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (value != null) 'value': value!,
      };
}

/// Used by:
///
/// - adsense:v2 : HttpBody
/// - apigee:v1 : GoogleApiHttpBody
/// - cloudbuild:v1 : HttpBody
/// - domainsrdap:v1 : HttpBody
/// - healthcare:v1 : HttpBody
/// - ml:v1 : GoogleApi__HttpBody
/// - retail:v2 : GoogleApiHttpBody
class $HttpBody {
  /// The HTTP Content-Type header value specifying the content type of the
  /// body.
  core.String? contentType;

  /// The HTTP request/response body as raw binary.
  core.String? data;
  core.List<core.int> get dataAsBytes => convert.base64.decode(data!);

  set dataAsBytes(core.List<core.int> _bytes) {
    data =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Application specific response metadata.
  ///
  /// Must be set in the first response for streaming APIs.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Map<core.String, core.Object?>>? extensions;

  $HttpBody({
    this.contentType,
    this.data,
    this.extensions,
  });

  $HttpBody.fromJson(core.Map _json)
      : this(
          contentType: _json.containsKey('contentType')
              ? _json['contentType'] as core.String
              : null,
          data: _json.containsKey('data') ? _json['data'] as core.String : null,
          extensions: _json.containsKey('extensions')
              ? (_json['extensions'] as core.List)
                  .map((value) => value as core.Map<core.String, core.dynamic>)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (contentType != null) 'contentType': contentType!,
        if (data != null) 'data': data!,
        if (extensions != null) 'extensions': extensions!,
      };
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

  $Identity({
    this.revision,
    this.updateId,
  });

  $Identity.fromJson(core.Map _json)
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

/// Used by:
///
/// - accesscontextmanager:v1 : IngressSource
/// - cloudasset:v1 : GoogleIdentityAccesscontextmanagerV1IngressSource
class $IngressSource {
  /// An AccessLevel resource name that allow resources within the
  /// ServicePerimeters to be accessed from the internet.
  ///
  /// AccessLevels listed must be in the same policy as this ServicePerimeter.
  /// Referencing a nonexistent AccessLevel will cause an error. If no
  /// AccessLevel names are listed, resources within the perimeter can only be
  /// accessed via Google Cloud calls with request origins within the perimeter.
  /// Example: `accessPolicies/MY_POLICY/accessLevels/MY_LEVEL`. If a single `*`
  /// is specified for `access_level`, then all IngressSources will be allowed.
  core.String? accessLevel;

  /// A Google Cloud resource that is allowed to ingress the perimeter.
  ///
  /// Requests from these resources will be allowed to access perimeter data.
  /// Currently only projects are allowed. Format: `projects/{project_number}`
  /// The project may be in any Google Cloud organization, not just the
  /// organization that the perimeter is defined in. `*` is not allowed, the
  /// case of allowing all Google Cloud resources only is not supported.
  core.String? resource;

  $IngressSource({
    this.accessLevel,
    this.resource,
  });

  $IngressSource.fromJson(core.Map _json)
      : this(
          accessLevel: _json.containsKey('accessLevel')
              ? _json['accessLevel'] as core.String
              : null,
          resource: _json.containsKey('resource')
              ? _json['resource'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accessLevel != null) 'accessLevel': accessLevel!,
        if (resource != null) 'resource': resource!,
      };
}

/// Used by:
///
/// - compute:v1 : InstanceGroupManagersAbandonInstancesRequest
/// - compute:v1 : RegionInstanceGroupManagersAbandonInstancesRequest
class $InstanceGroupManagersAbandonInstancesRequest {
  /// The URLs of one or more instances to abandon.
  ///
  /// This can be a full URL or a partial URL, such as
  /// zones/\[ZONE\]/instances/\[INSTANCE_NAME\].
  core.List<core.String>? instances;

  $InstanceGroupManagersAbandonInstancesRequest({
    this.instances,
  });

  $InstanceGroupManagersAbandonInstancesRequest.fromJson(core.Map _json)
      : this(
          instances: _json.containsKey('instances')
              ? (_json['instances'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (instances != null) 'instances': instances!,
      };
}

/// Used by:
///
/// - compute:v1 : InstanceGroupManagersApplyUpdatesRequest
/// - compute:v1 : RegionInstanceGroupManagersApplyUpdatesRequest
class $InstanceGroupManagersApplyUpdatesRequest {
  /// Flag to update all instances instead of specified list of “instances”.
  ///
  /// If the flag is set to true then the instances may not be specified in the
  /// request.
  core.bool? allInstances;

  /// The list of URLs of one or more instances for which you want to apply
  /// updates.
  ///
  /// Each URL can be a full URL or a partial URL, such as
  /// zones/\[ZONE\]/instances/\[INSTANCE_NAME\].
  core.List<core.String>? instances;

  /// The minimal action that you want to perform on each instance during the
  /// update: - REPLACE: At minimum, delete the instance and create it again.
  ///
  /// - RESTART: Stop the instance and start it again. - REFRESH: Do not stop
  /// the instance. - NONE: Do not disrupt the instance at all. By default, the
  /// minimum action is NONE. If your update requires a more disruptive action
  /// than you set with this flag, the necessary action is performed to execute
  /// the update.
  /// Possible string values are:
  /// - "NONE" : Do not perform any action.
  /// - "REFRESH" : Updates applied in runtime, instances will not be disrupted.
  /// - "REPLACE" : Old instances will be deleted. New instances will be created
  /// from the target template.
  /// - "RESTART" : Every instance will be restarted.
  core.String? minimalAction;

  /// The most disruptive action that you want to perform on each instance
  /// during the update: - REPLACE: Delete the instance and create it again.
  ///
  /// - RESTART: Stop the instance and start it again. - REFRESH: Do not stop
  /// the instance. - NONE: Do not disrupt the instance at all. By default, the
  /// most disruptive allowed action is REPLACE. If your update requires a more
  /// disruptive action than you set with this flag, the update request will
  /// fail.
  /// Possible string values are:
  /// - "NONE" : Do not perform any action.
  /// - "REFRESH" : Updates applied in runtime, instances will not be disrupted.
  /// - "REPLACE" : Old instances will be deleted. New instances will be created
  /// from the target template.
  /// - "RESTART" : Every instance will be restarted.
  core.String? mostDisruptiveAllowedAction;

  $InstanceGroupManagersApplyUpdatesRequest({
    this.allInstances,
    this.instances,
    this.minimalAction,
    this.mostDisruptiveAllowedAction,
  });

  $InstanceGroupManagersApplyUpdatesRequest.fromJson(core.Map _json)
      : this(
          allInstances: _json.containsKey('allInstances')
              ? _json['allInstances'] as core.bool
              : null,
          instances: _json.containsKey('instances')
              ? (_json['instances'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          minimalAction: _json.containsKey('minimalAction')
              ? _json['minimalAction'] as core.String
              : null,
          mostDisruptiveAllowedAction:
              _json.containsKey('mostDisruptiveAllowedAction')
                  ? _json['mostDisruptiveAllowedAction'] as core.String
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allInstances != null) 'allInstances': allInstances!,
        if (instances != null) 'instances': instances!,
        if (minimalAction != null) 'minimalAction': minimalAction!,
        if (mostDisruptiveAllowedAction != null)
          'mostDisruptiveAllowedAction': mostDisruptiveAllowedAction!,
      };
}

/// Used by:
///
/// - compute:v1 : InstanceGroupManagersDeleteInstancesRequest
/// - compute:v1 : RegionInstanceGroupManagersDeleteInstancesRequest
class $InstanceGroupManagersDeleteInstancesRequest {
  /// The URLs of one or more instances to delete.
  ///
  /// This can be a full URL or a partial URL, such as
  /// zones/\[ZONE\]/instances/\[INSTANCE_NAME\].
  core.List<core.String>? instances;

  /// Specifies whether the request should proceed despite the inclusion of
  /// instances that are not members of the group or that are already in the
  /// process of being deleted or abandoned.
  ///
  /// If this field is set to `false` and such an instance is specified in the
  /// request, the operation fails. The operation always fails if the request
  /// contains a malformed instance URL or a reference to an instance that
  /// exists in a zone or region other than the group's zone or region.
  core.bool? skipInstancesOnValidationError;

  $InstanceGroupManagersDeleteInstancesRequest({
    this.instances,
    this.skipInstancesOnValidationError,
  });

  $InstanceGroupManagersDeleteInstancesRequest.fromJson(core.Map _json)
      : this(
          instances: _json.containsKey('instances')
              ? (_json['instances'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          skipInstancesOnValidationError:
              _json.containsKey('skipInstancesOnValidationError')
                  ? _json['skipInstancesOnValidationError'] as core.bool
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (instances != null) 'instances': instances!,
        if (skipInstancesOnValidationError != null)
          'skipInstancesOnValidationError': skipInstancesOnValidationError!,
      };
}

/// Used by:
///
/// - sheets:v4 : Interval
/// - versionhistory:v1 : Interval
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

  $Interval({
    this.endTime,
    this.startTime,
  });

  $Interval.fromJson(core.Map _json)
      : this(
          endTime: _json.containsKey('endTime')
              ? _json['endTime'] as core.String
              : null,
          startTime: _json.containsKey('startTime')
              ? _json['startTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (endTime != null) 'endTime': endTime!,
        if (startTime != null) 'startTime': startTime!,
      };
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

  $Jwt({
    this.compactJwt,
  });

  $Jwt.fromJson(core.Map _json)
      : this(
          compactJwt: _json.containsKey('compactJwt')
              ? _json['compactJwt'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (compactJwt != null) 'compactJwt': compactJwt!,
      };
}

/// Used by:
///
/// - servicemanagement:v1 : JwtLocation
/// - serviceusage:v1 : JwtLocation
class $JwtLocation {
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

  $JwtLocation({
    this.header,
    this.query,
    this.valuePrefix,
  });

  $JwtLocation.fromJson(core.Map _json)
      : this(
          header: _json.containsKey('header')
              ? _json['header'] as core.String
              : null,
          query:
              _json.containsKey('query') ? _json['query'] as core.String : null,
          valuePrefix: _json.containsKey('valuePrefix')
              ? _json['valuePrefix'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (header != null) 'header': header!,
        if (query != null) 'query': query!,
        if (valuePrefix != null) 'valuePrefix': valuePrefix!,
      };
}

/// Used by:
///
/// - dfareporting:v3.4 : KeyValueTargetingExpression
/// - dfareporting:v3.5 : KeyValueTargetingExpression
class $KeyValueTargetingExpression {
  /// Keyword expression being targeted by the ad.
  core.String? expression;

  $KeyValueTargetingExpression({
    this.expression,
  });

  $KeyValueTargetingExpression.fromJson(core.Map _json)
      : this(
          expression: _json.containsKey('expression')
              ? _json['expression'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (expression != null) 'expression': expression!,
      };
}

/// Used by:
///
/// - datastore:v1 : KindExpression
/// - dlp:v2 : GooglePrivacyDlpV2KindExpression
class $KindExpression {
  /// The name of the kind.
  core.String? name;

  $KindExpression({
    this.name,
  });

  $KindExpression.fromJson(core.Map _json)
      : this(
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
      };
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

  $LabelDescriptor({
    this.description,
    this.key,
    this.valueType,
  });

  $LabelDescriptor.fromJson(core.Map _json)
      : this(
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          key: _json.containsKey('key') ? _json['key'] as core.String : null,
          valueType: _json.containsKey('valueType')
              ? _json['valueType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (key != null) 'key': key!,
        if (valueType != null) 'valueType': valueType!,
      };
}

/// Used by:
///
/// - deploymentmanager:v2 : DeploymentLabelEntry
/// - deploymentmanager:v2 : DeploymentUpdateLabelEntry
class $LabelEntry {
  /// Key of the label
  core.String? key;

  /// Value of the label
  core.String? value;

  $LabelEntry({
    this.key,
    this.value,
  });

  $LabelEntry.fromJson(core.Map _json)
      : this(
          key: _json.containsKey('key') ? _json['key'] as core.String : null,
          value:
              _json.containsKey('value') ? _json['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (key != null) 'key': key!,
        if (value != null) 'value': value!,
      };
}

/// Used by:
///
/// - dfareporting:v3.4 : Language
/// - dfareporting:v3.5 : Language
class $Language {
  /// Language ID of this language.
  ///
  /// This is the ID used for targeting and generating reports.
  core.String? id;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#language".
  core.String? kind;

  /// Format of language code is an ISO 639 two-letter language code optionally
  /// followed by an underscore followed by an ISO 3166 code.
  ///
  /// Examples are "en" for English or "zh_CN" for Simplified Chinese.
  core.String? languageCode;

  /// Name of this language.
  core.String? name;

  $Language({
    this.id,
    this.kind,
    this.languageCode,
    this.name,
  });

  $Language.fromJson(core.Map _json)
      : this(
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          languageCode: _json.containsKey('languageCode')
              ? _json['languageCode'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (languageCode != null) 'languageCode': languageCode!,
        if (name != null) 'name': name!,
      };
}

/// Used by:
///
/// - dfareporting:v3.4 : LastModifiedInfo
/// - dfareporting:v3.5 : LastModifiedInfo
class $LastModifiedInfo {
  /// Timestamp of the last change in milliseconds since epoch.
  core.String? time;

  $LastModifiedInfo({
    this.time,
  });

  $LastModifiedInfo.fromJson(core.Map _json)
      : this(
          time: _json.containsKey('time') ? _json['time'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (time != null) 'time': time!,
      };
}

/// Used by:
///
/// - datastore:v1 : LatLng
/// - dialogflow:v2 : GoogleTypeLatLng
/// - dialogflow:v3 : GoogleTypeLatLng
/// - firestore:v1 : LatLng
/// - jobs:v3 : LatLng
/// - jobs:v4 : LatLng
/// - mybusinessbusinessinformation:v1 : LatLng
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

  $LatLng({
    this.latitude,
    this.longitude,
  });

  $LatLng.fromJson(core.Map _json)
      : this(
          latitude: _json.containsKey('latitude')
              ? (_json['latitude'] as core.num).toDouble()
              : null,
          longitude: _json.containsKey('longitude')
              ? (_json['longitude'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (latitude != null) 'latitude': latitude!,
        if (longitude != null) 'longitude': longitude!,
      };
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

  $Layer({
    this.arguments,
    this.directive,
  });

  $Layer.fromJson(core.Map _json)
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

  $Lien.fromJson(core.Map _json)
      : this(
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          origin: _json.containsKey('origin')
              ? _json['origin'] as core.String
              : null,
          parent: _json.containsKey('parent')
              ? _json['parent'] as core.String
              : null,
          reason: _json.containsKey('reason')
              ? _json['reason'] as core.String
              : null,
          restrictions: _json.containsKey('restrictions')
              ? (_json['restrictions'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (name != null) 'name': name!,
        if (origin != null) 'origin': origin!,
        if (parent != null) 'parent': parent!,
        if (reason != null) 'reason': reason!,
        if (restrictions != null) 'restrictions': restrictions!,
      };
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

  $Linear({
    this.numFiniteBuckets,
    this.offset,
    this.width,
  });

  $Linear.fromJson(core.Map _json)
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

  $ListPolicy.fromJson(core.Map _json)
      : this(
          allValues: _json.containsKey('allValues')
              ? _json['allValues'] as core.String
              : null,
          allowedValues: _json.containsKey('allowedValues')
              ? (_json['allowedValues'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          deniedValues: _json.containsKey('deniedValues')
              ? (_json['deniedValues'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          inheritFromParent: _json.containsKey('inheritFromParent')
              ? _json['inheritFromParent'] as core.bool
              : null,
          suggestedValue: _json.containsKey('suggestedValue')
              ? _json['suggestedValue'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allValues != null) 'allValues': allValues!,
        if (allowedValues != null) 'allowedValues': allowedValues!,
        if (deniedValues != null) 'deniedValues': deniedValues!,
        if (inheritFromParent != null) 'inheritFromParent': inheritFromParent!,
        if (suggestedValue != null) 'suggestedValue': suggestedValue!,
      };
}

/// Used by:
///
/// - dfareporting:v3.4 : ListPopulationTerm
/// - dfareporting:v3.5 : ListPopulationTerm
class $ListPopulationTerm {
  /// Will be true if the term should check if the user is in the list and false
  /// if the term should check if the user is not in the list.
  ///
  /// This field is only relevant when type is set to LIST_MEMBERSHIP_TERM.
  /// False by default.
  core.bool? contains;

  /// Whether to negate the comparison result of this term during rule
  /// evaluation.
  ///
  /// This field is only relevant when type is left unset or set to
  /// CUSTOM_VARIABLE_TERM or REFERRER_TERM.
  core.bool? negation;

  /// Comparison operator of this term.
  ///
  /// This field is only relevant when type is left unset or set to
  /// CUSTOM_VARIABLE_TERM or REFERRER_TERM.
  /// Possible string values are:
  /// - "NUM_EQUALS"
  /// - "NUM_LESS_THAN"
  /// - "NUM_LESS_THAN_EQUAL"
  /// - "NUM_GREATER_THAN"
  /// - "NUM_GREATER_THAN_EQUAL"
  /// - "STRING_EQUALS"
  /// - "STRING_CONTAINS"
  core.String? operator;

  /// ID of the list in question.
  ///
  /// This field is only relevant when type is set to LIST_MEMBERSHIP_TERM.
  core.String? remarketingListId;

  /// List population term type determines the applicable fields in this object.
  ///
  /// If left unset or set to CUSTOM_VARIABLE_TERM, then variableName,
  /// variableFriendlyName, operator, value, and negation are applicable. If set
  /// to LIST_MEMBERSHIP_TERM then remarketingListId and contains are
  /// applicable. If set to REFERRER_TERM then operator, value, and negation are
  /// applicable.
  /// Possible string values are:
  /// - "CUSTOM_VARIABLE_TERM"
  /// - "LIST_MEMBERSHIP_TERM"
  /// - "REFERRER_TERM"
  core.String? type;

  /// Literal to compare the variable to.
  ///
  /// This field is only relevant when type is left unset or set to
  /// CUSTOM_VARIABLE_TERM or REFERRER_TERM.
  core.String? value;

  /// Friendly name of this term's variable.
  ///
  /// This is a read-only, auto-generated field. This field is only relevant
  /// when type is left unset or set to CUSTOM_VARIABLE_TERM.
  core.String? variableFriendlyName;

  /// Name of the variable (U1, U2, etc.) being compared in this term.
  ///
  /// This field is only relevant when type is set to null, CUSTOM_VARIABLE_TERM
  /// or REFERRER_TERM.
  core.String? variableName;

  $ListPopulationTerm({
    this.contains,
    this.negation,
    this.operator,
    this.remarketingListId,
    this.type,
    this.value,
    this.variableFriendlyName,
    this.variableName,
  });

  $ListPopulationTerm.fromJson(core.Map _json)
      : this(
          contains: _json.containsKey('contains')
              ? _json['contains'] as core.bool
              : null,
          negation: _json.containsKey('negation')
              ? _json['negation'] as core.bool
              : null,
          operator: _json.containsKey('operator')
              ? _json['operator'] as core.String
              : null,
          remarketingListId: _json.containsKey('remarketingListId')
              ? _json['remarketingListId'] as core.String
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
          value:
              _json.containsKey('value') ? _json['value'] as core.String : null,
          variableFriendlyName: _json.containsKey('variableFriendlyName')
              ? _json['variableFriendlyName'] as core.String
              : null,
          variableName: _json.containsKey('variableName')
              ? _json['variableName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (contains != null) 'contains': contains!,
        if (negation != null) 'negation': negation!,
        if (operator != null) 'operator': operator!,
        if (remarketingListId != null) 'remarketingListId': remarketingListId!,
        if (type != null) 'type': type!,
        if (value != null) 'value': value!,
        if (variableFriendlyName != null)
          'variableFriendlyName': variableFriendlyName!,
        if (variableName != null) 'variableName': variableName!,
      };
}

/// Used by:
///
/// - dfareporting:v3.4 : ListTargetingExpression
/// - dfareporting:v3.5 : ListTargetingExpression
class $ListTargetingExpression {
  /// Expression describing which lists are being targeted by the ad.
  core.String? expression;

  $ListTargetingExpression({
    this.expression,
  });

  $ListTargetingExpression.fromJson(core.Map _json)
      : this(
          expression: _json.containsKey('expression')
              ? _json['expression'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (expression != null) 'expression': expression!,
      };
}

/// Used by:
///
/// - apigateway:v1 : ApigatewayLocation
/// - baremetalsolution:v2 : Location
/// - bigquerydatatransfer:v1 : Location
/// - bigtableadmin:v2 : Location
/// - certificatemanager:v1 : Location
/// - clouddeploy:v1 : Location
/// - cloudfunctions:v1 : Location
/// - cloudkms:v1 : Location
/// - cloudscheduler:v1 : Location
/// - cloudtasks:v2 : Location
/// - connectors:v1 : Location
/// - datafusion:v1 : Location
/// - datamigration:v1 : Location
/// - datastream:v1 : Location
/// - dialogflow:v2 : GoogleCloudLocationLocation
/// - dialogflow:v3 : GoogleCloudLocationLocation
/// - documentai:v1 : GoogleCloudLocationLocation
/// - domains:v1 : Location
/// - eventarc:v1 : Location
/// - file:v1 : Location
/// - firestore:v1 : Location
/// - gameservices:v1 : Location
/// - gkehub:v1 : Location
/// - healthcare:v1 : Location
/// - ids:v1 : Location
/// - managedidentities:v1 : Location
/// - memcache:v1 : Location
/// - networkconnectivity:v1 : Location
/// - networkmanagement:v1 : Location
/// - networksecurity:v1 : Location
/// - networkservices:v1 : Location
/// - notebooks:v1 : Location
/// - privateca:v1 : Location
/// - run:v1 : Location
/// - secretmanager:v1 : Location
/// - servicedirectory:v1 : Location
/// - tpu:v1 : Location
/// - translate:v3 : Location
/// - vmmigration:v1 : Location
/// - workflows:v1 : Location
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

  $Location00.fromJson(core.Map _json)
      : this(
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          labels: _json.containsKey('labels')
              ? (_json['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          locationId: _json.containsKey('locationId')
              ? _json['locationId'] as core.String
              : null,
          metadata: _json.containsKey('metadata')
              ? _json['metadata'] as core.Map<core.String, core.dynamic>
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (labels != null) 'labels': labels!,
        if (locationId != null) 'locationId': locationId!,
        if (metadata != null) 'metadata': metadata!,
        if (name != null) 'name': name!,
      };
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

  $Location01.fromJson(core.Map _json)
      : this(
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          labels: _json.containsKey('labels')
              ? (_json['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          locationId: _json.containsKey('locationId')
              ? _json['locationId'] as core.String
              : null,
          metadata: _json.containsKey('metadata')
              ? _json['metadata'] as core.Map<core.String, core.dynamic>
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (labels != null) 'labels': labels!,
        if (locationId != null) 'locationId': locationId!,
        if (metadata != null) 'metadata': metadata!,
        if (name != null) 'name': name!,
      };
}

/// Used by:
///
/// - dfareporting:v3.4 : LookbackConfiguration
/// - dfareporting:v3.5 : LookbackConfiguration
class $LookbackConfiguration {
  /// Lookback window, in days, from the last time a given user clicked on one
  /// of your ads.
  ///
  /// If you enter 0, clicks will not be considered as triggering events for
  /// floodlight tracking. If you leave this field blank, the default value for
  /// your account will be used. Acceptable values are 0 to 90, inclusive.
  core.int? clickDuration;

  /// Lookback window, in days, from the last time a given user viewed one of
  /// your ads.
  ///
  /// If you enter 0, impressions will not be considered as triggering events
  /// for floodlight tracking. If you leave this field blank, the default value
  /// for your account will be used. Acceptable values are 0 to 90, inclusive.
  core.int? postImpressionActivitiesDuration;

  $LookbackConfiguration({
    this.clickDuration,
    this.postImpressionActivitiesDuration,
  });

  $LookbackConfiguration.fromJson(core.Map _json)
      : this(
          clickDuration: _json.containsKey('clickDuration')
              ? _json['clickDuration'] as core.int
              : null,
          postImpressionActivitiesDuration:
              _json.containsKey('postImpressionActivitiesDuration')
                  ? _json['postImpressionActivitiesDuration'] as core.int
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (clickDuration != null) 'clickDuration': clickDuration!,
        if (postImpressionActivitiesDuration != null)
          'postImpressionActivitiesDuration': postImpressionActivitiesDuration!,
      };
}

/// Used by:
///
/// - containeranalysis:v1 : Material
/// - ondemandscanning:v1 : Material
class $Material {
  core.Map<core.String, core.String>? digest;
  core.String? uri;

  $Material({
    this.digest,
    this.uri,
  });

  $Material.fromJson(core.Map _json)
      : this(
          digest: _json.containsKey('digest')
              ? (_json['digest'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          uri: _json.containsKey('uri') ? _json['uri'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (digest != null) 'digest': digest!,
        if (uri != null) 'uri': uri!,
      };
}

/// Used by:
///
/// - chat:v1 : Media
/// - cloudsearch:v1 : Media
/// - displayvideo:v1 : GoogleBytestreamMedia
class $Media {
  /// Name of the media resource.
  core.String? resourceName;

  $Media({
    this.resourceName,
  });

  $Media.fromJson(core.Map _json)
      : this(
          resourceName: _json.containsKey('resourceName')
              ? _json['resourceName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (resourceName != null) 'resourceName': resourceName!,
      };
}

/// Used by:
///
/// - accesscontextmanager:v1 : MethodSelector
/// - cloudasset:v1 : GoogleIdentityAccesscontextmanagerV1MethodSelector
class $MethodSelector {
  /// Value for `method` should be a valid method name for the corresponding
  /// `service_name` in ApiOperation.
  ///
  /// If `*` used as value for `method`, then ALL methods and permissions are
  /// allowed.
  core.String? method;

  /// Value for `permission` should be a valid Cloud IAM permission for the
  /// corresponding `service_name` in ApiOperation.
  core.String? permission;

  $MethodSelector({
    this.method,
    this.permission,
  });

  $MethodSelector.fromJson(core.Map _json)
      : this(
          method: _json.containsKey('method')
              ? _json['method'] as core.String
              : null,
          permission: _json.containsKey('permission')
              ? _json['permission'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (method != null) 'method': method!,
        if (permission != null) 'permission': permission!,
      };
}

/// Used by:
///
/// - dfareporting:v3.4 : Metric
/// - dfareporting:v3.5 : Metric
class $Metric {
  /// The kind of resource this is, in this case dfareporting#metric.
  core.String? kind;

  /// The metric name, e.g. dfa:impressions
  core.String? name;

  $Metric({
    this.kind,
    this.name,
  });

  $Metric.fromJson(core.Map _json)
      : this(
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (name != null) 'name': name!,
      };
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
  core.String? launchStage;

  /// The sampling period of metric data points.
  ///
  /// For metrics which are written periodically, consecutive data points are
  /// stored at this time interval, excluding data loss due to errors. Metrics
  /// with a higher granularity have a smaller sampling period.
  core.String? samplePeriod;

  $MetricDescriptorMetadata({
    this.ingestDelay,
    this.launchStage,
    this.samplePeriod,
  });

  $MetricDescriptorMetadata.fromJson(core.Map _json)
      : this(
          ingestDelay: _json.containsKey('ingestDelay')
              ? _json['ingestDelay'] as core.String
              : null,
          launchStage: _json.containsKey('launchStage')
              ? _json['launchStage'] as core.String
              : null,
          samplePeriod: _json.containsKey('samplePeriod')
              ? _json['samplePeriod'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (ingestDelay != null) 'ingestDelay': ingestDelay!,
        if (launchStage != null) 'launchStage': launchStage!,
        if (samplePeriod != null) 'samplePeriod': samplePeriod!,
      };
}

/// Used by:
///
/// - servicemanagement:v1 : MetricRule
/// - serviceusage:v1 : MetricRule
class $MetricRule {
  /// Metrics to update when the selected methods are called, and the associated
  /// cost applied to each metric.
  ///
  /// The key of the map is the metric name, and the values are the amount
  /// increased for the metric against which the quota limits are defined. The
  /// value must not be negative.
  core.Map<core.String, core.String>? metricCosts;

  /// Selects the methods to which this rule applies.
  ///
  /// Refer to selector for syntax details.
  core.String? selector;

  $MetricRule({
    this.metricCosts,
    this.selector,
  });

  $MetricRule.fromJson(core.Map _json)
      : this(
          metricCosts: _json.containsKey('metricCosts')
              ? (_json['metricCosts'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          selector: _json.containsKey('selector')
              ? _json['selector'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (metricCosts != null) 'metricCosts': metricCosts!,
        if (selector != null) 'selector': selector!,
      };
}

/// Used by:
///
/// - dfareporting:v3.4 : Metro
/// - dfareporting:v3.5 : Metro
class $Metro {
  /// Country code of the country to which this metro region belongs.
  core.String? countryCode;

  /// DART ID of the country to which this metro region belongs.
  core.String? countryDartId;

  /// DART ID of this metro region.
  core.String? dartId;

  /// DMA ID of this metro region.
  ///
  /// This is the ID used for targeting and generating reports, and is
  /// equivalent to metro_code.
  core.String? dmaId;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#metro".
  core.String? kind;

  /// Metro code of this metro region.
  ///
  /// This is equivalent to dma_id.
  core.String? metroCode;

  /// Name of this metro region.
  core.String? name;

  $Metro({
    this.countryCode,
    this.countryDartId,
    this.dartId,
    this.dmaId,
    this.kind,
    this.metroCode,
    this.name,
  });

  $Metro.fromJson(core.Map _json)
      : this(
          countryCode: _json.containsKey('countryCode')
              ? _json['countryCode'] as core.String
              : null,
          countryDartId: _json.containsKey('countryDartId')
              ? _json['countryDartId'] as core.String
              : null,
          dartId: _json.containsKey('dartId')
              ? _json['dartId'] as core.String
              : null,
          dmaId:
              _json.containsKey('dmaId') ? _json['dmaId'] as core.String : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          metroCode: _json.containsKey('metroCode')
              ? _json['metroCode'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (countryCode != null) 'countryCode': countryCode!,
        if (countryDartId != null) 'countryDartId': countryDartId!,
        if (dartId != null) 'dartId': dartId!,
        if (dmaId != null) 'dmaId': dmaId!,
        if (kind != null) 'kind': kind!,
        if (metroCode != null) 'metroCode': metroCode!,
        if (name != null) 'name': name!,
      };
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

  $Mixin({
    this.name,
    this.root,
  });

  $Mixin.fromJson(core.Map _json)
      : this(
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          root: _json.containsKey('root') ? _json['root'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (root != null) 'root': root!,
      };
}

/// Used by:
///
/// - dfareporting:v3.4 : MobileApp
/// - dfareporting:v3.5 : MobileApp
class $MobileApp {
  /// Mobile app directory.
  /// Possible string values are:
  /// - "UNKNOWN"
  /// - "APPLE_APP_STORE"
  /// - "GOOGLE_PLAY_STORE"
  core.String? directory;

  /// ID of this mobile app.
  core.String? id;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#mobileApp".
  core.String? kind;

  /// Publisher name.
  core.String? publisherName;

  /// Title of this mobile app.
  core.String? title;

  $MobileApp({
    this.directory,
    this.id,
    this.kind,
    this.publisherName,
    this.title,
  });

  $MobileApp.fromJson(core.Map _json)
      : this(
          directory: _json.containsKey('directory')
              ? _json['directory'] as core.String
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          publisherName: _json.containsKey('publisherName')
              ? _json['publisherName'] as core.String
              : null,
          title:
              _json.containsKey('title') ? _json['title'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (directory != null) 'directory': directory!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (publisherName != null) 'publisherName': publisherName!,
        if (title != null) 'title': title!,
      };
}

/// Used by:
///
/// - dfareporting:v3.4 : MobileCarrier
/// - dfareporting:v3.5 : MobileCarrier
class $MobileCarrier {
  /// Country code of the country to which this mobile carrier belongs.
  core.String? countryCode;

  /// DART ID of the country to which this mobile carrier belongs.
  core.String? countryDartId;

  /// ID of this mobile carrier.
  core.String? id;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#mobileCarrier".
  core.String? kind;

  /// Name of this mobile carrier.
  core.String? name;

  $MobileCarrier({
    this.countryCode,
    this.countryDartId,
    this.id,
    this.kind,
    this.name,
  });

  $MobileCarrier.fromJson(core.Map _json)
      : this(
          countryCode: _json.containsKey('countryCode')
              ? _json['countryCode'] as core.String
              : null,
          countryDartId: _json.containsKey('countryDartId')
              ? _json['countryDartId'] as core.String
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (countryCode != null) 'countryCode': countryCode!,
        if (countryDartId != null) 'countryDartId': countryDartId!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (name != null) 'name': name!,
      };
}

/// Used by:
///
/// - androidpublisher:v3 : Money
/// - apigee:v1 : GoogleTypeMoney
/// - authorizedbuyersmarketplace:v1 : Money
/// - billingbudgets:v1 : GoogleTypeMoney
/// - cloudbilling:v1 : Money
/// - cloudchannel:v1 : GoogleTypeMoney
/// - displayvideo:v1 : Money
/// - documentai:v1 : GoogleTypeMoney
/// - domains:v1 : Money
/// - jobs:v3 : Money
/// - jobs:v4 : Money
/// - mybusinessbusinessinformation:v1 : Money
/// - recommender:v1 : GoogleTypeMoney
/// - servicecontrol:v1 : Money
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

  $Money({
    this.currencyCode,
    this.nanos,
    this.units,
  });

  $Money.fromJson(core.Map _json)
      : this(
          currencyCode: _json.containsKey('currencyCode')
              ? _json['currencyCode'] as core.String
              : null,
          nanos: _json.containsKey('nanos') ? _json['nanos'] as core.int : null,
          units:
              _json.containsKey('units') ? _json['units'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (currencyCode != null) 'currencyCode': currencyCode!,
        if (nanos != null) 'nanos': nanos!,
        if (units != null) 'units': units!,
      };
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

  $MonitoredResourceMetadata({
    this.systemLabels,
    this.userLabels,
  });

  $MonitoredResourceMetadata.fromJson(core.Map _json)
      : this(
          systemLabels: _json.containsKey('systemLabels')
              ? _json['systemLabels'] as core.Map<core.String, core.dynamic>
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
        if (systemLabels != null) 'systemLabels': systemLabels!,
        if (userLabels != null) 'userLabels': userLabels!,
      };
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

  $MonitoringDestination({
    this.metrics,
    this.monitoredResource,
  });

  $MonitoringDestination.fromJson(core.Map _json)
      : this(
          metrics: _json.containsKey('metrics')
              ? (_json['metrics'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          monitoredResource: _json.containsKey('monitoredResource')
              ? _json['monitoredResource'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (metrics != null) 'metrics': metrics!,
        if (monitoredResource != null) 'monitoredResource': monitoredResource!,
      };
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

  $NonCompliantFile({
    this.displayCommand,
    this.path,
    this.reason,
  });

  $NonCompliantFile.fromJson(core.Map _json)
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

  $OAuthRequirements({
    this.canonicalScopes,
  });

  $OAuthRequirements.fromJson(core.Map _json)
      : this(
          canonicalScopes: _json.containsKey('canonicalScopes')
              ? _json['canonicalScopes'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (canonicalScopes != null) 'canonicalScopes': canonicalScopes!,
      };
}

/// Used by:
///
/// - dfareporting:v3.4 : ObjectFilter
/// - dfareporting:v3.5 : ObjectFilter
class $ObjectFilter {
  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#objectFilter".
  core.String? kind;

  /// Applicable when status is ASSIGNED.
  ///
  /// The user has access to objects with these object IDs.
  core.List<core.String>? objectIds;

  /// Status of the filter.
  ///
  /// NONE means the user has access to none of the objects. ALL means the user
  /// has access to all objects. ASSIGNED means the user has access to the
  /// objects with IDs in the objectIds list.
  /// Possible string values are:
  /// - "NONE"
  /// - "ASSIGNED"
  /// - "ALL"
  core.String? status;

  $ObjectFilter({
    this.kind,
    this.objectIds,
    this.status,
  });

  $ObjectFilter.fromJson(core.Map _json)
      : this(
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          objectIds: _json.containsKey('objectIds')
              ? (_json['objectIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          status: _json.containsKey('status')
              ? _json['status'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (objectIds != null) 'objectIds': objectIds!,
        if (status != null) 'status': status!,
      };
}

/// Used by:
///
/// - dfareporting:v3.4 : OffsetPosition
/// - dfareporting:v3.5 : OffsetPosition
class $OffsetPosition {
  /// Offset distance from left side of an asset or a window.
  core.int? left;

  /// Offset distance from top side of an asset or a window.
  core.int? top;

  $OffsetPosition({
    this.left,
    this.top,
  });

  $OffsetPosition.fromJson(core.Map _json)
      : this(
          left: _json.containsKey('left') ? _json['left'] as core.int : null,
          top: _json.containsKey('top') ? _json['top'] as core.int : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (left != null) 'left': left!,
        if (top != null) 'top': top!,
      };
}

/// Used by:
///
/// - dfareporting:v3.4 : OmnitureSettings
/// - dfareporting:v3.5 : OmnitureSettings
class $OmnitureSettings {
  /// Whether placement cost data will be sent to Omniture.
  ///
  /// This property can be enabled only if omnitureIntegrationEnabled is true.
  core.bool? omnitureCostDataEnabled;

  /// Whether Omniture integration is enabled.
  ///
  /// This property can be enabled only when the "Advanced Ad Serving" account
  /// setting is enabled.
  core.bool? omnitureIntegrationEnabled;

  $OmnitureSettings({
    this.omnitureCostDataEnabled,
    this.omnitureIntegrationEnabled,
  });

  $OmnitureSettings.fromJson(core.Map _json)
      : this(
          omnitureCostDataEnabled: _json.containsKey('omnitureCostDataEnabled')
              ? _json['omnitureCostDataEnabled'] as core.bool
              : null,
          omnitureIntegrationEnabled:
              _json.containsKey('omnitureIntegrationEnabled')
                  ? _json['omnitureIntegrationEnabled'] as core.bool
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (omnitureCostDataEnabled != null)
          'omnitureCostDataEnabled': omnitureCostDataEnabled!,
        if (omnitureIntegrationEnabled != null)
          'omnitureIntegrationEnabled': omnitureIntegrationEnabled!,
      };
}

/// Used by:
///
/// - dfareporting:v3.4 : OperatingSystem
/// - dfareporting:v3.5 : OperatingSystem
class $OperatingSystem {
  /// DART ID of this operating system.
  ///
  /// This is the ID used for targeting.
  core.String? dartId;

  /// Whether this operating system is for desktop.
  core.bool? desktop;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#operatingSystem".
  core.String? kind;

  /// Whether this operating system is for mobile.
  core.bool? mobile;

  /// Name of this operating system.
  core.String? name;

  $OperatingSystem({
    this.dartId,
    this.desktop,
    this.kind,
    this.mobile,
    this.name,
  });

  $OperatingSystem.fromJson(core.Map _json)
      : this(
          dartId: _json.containsKey('dartId')
              ? _json['dartId'] as core.String
              : null,
          desktop: _json.containsKey('desktop')
              ? _json['desktop'] as core.bool
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          mobile:
              _json.containsKey('mobile') ? _json['mobile'] as core.bool : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dartId != null) 'dartId': dartId!,
        if (desktop != null) 'desktop': desktop!,
        if (kind != null) 'kind': kind!,
        if (mobile != null) 'mobile': mobile!,
        if (name != null) 'name': name!,
      };
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

  $Option({
    this.name,
    this.value,
  });

  $Option.fromJson(core.Map _json)
      : this(
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          value: _json.containsKey('value')
              ? _json['value'] as core.Map<core.String, core.dynamic>
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (value != null) 'value': value!,
      };
}

/// Used by:
///
/// - content:v2.1 : OrderAddress
/// - content:v2.1 : TestOrderAddress
class $OrderAddress {
  /// CLDR country code (e.g. "US").
  core.String? country;

  /// Strings representing the lines of the printed label for mailing the order,
  /// for example: John Smith 1600 Amphitheatre Parkway Mountain View, CA, 94043
  /// United States
  core.List<core.String>? fullAddress;

  /// Whether the address is a post office box.
  core.bool? isPostOfficeBox;

  /// City, town or commune.
  ///
  /// May also include dependent localities or sublocalities (e.g. neighborhoods
  /// or suburbs).
  core.String? locality;

  /// Postal Code or ZIP (e.g. "94043").
  core.String? postalCode;

  /// Name of the recipient.
  core.String? recipientName;

  /// Top-level administrative subdivision of the country.
  ///
  /// For example, a state like California ("CA") or a province like Quebec
  /// ("QC").
  core.String? region;

  /// Street-level part of the address.
  core.List<core.String>? streetAddress;

  $OrderAddress({
    this.country,
    this.fullAddress,
    this.isPostOfficeBox,
    this.locality,
    this.postalCode,
    this.recipientName,
    this.region,
    this.streetAddress,
  });

  $OrderAddress.fromJson(core.Map _json)
      : this(
          country: _json.containsKey('country')
              ? _json['country'] as core.String
              : null,
          fullAddress: _json.containsKey('fullAddress')
              ? (_json['fullAddress'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          isPostOfficeBox: _json.containsKey('isPostOfficeBox')
              ? _json['isPostOfficeBox'] as core.bool
              : null,
          locality: _json.containsKey('locality')
              ? _json['locality'] as core.String
              : null,
          postalCode: _json.containsKey('postalCode')
              ? _json['postalCode'] as core.String
              : null,
          recipientName: _json.containsKey('recipientName')
              ? _json['recipientName'] as core.String
              : null,
          region: _json.containsKey('region')
              ? _json['region'] as core.String
              : null,
          streetAddress: _json.containsKey('streetAddress')
              ? (_json['streetAddress'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (country != null) 'country': country!,
        if (fullAddress != null) 'fullAddress': fullAddress!,
        if (isPostOfficeBox != null) 'isPostOfficeBox': isPostOfficeBox!,
        if (locality != null) 'locality': locality!,
        if (postalCode != null) 'postalCode': postalCode!,
        if (recipientName != null) 'recipientName': recipientName!,
        if (region != null) 'region': region!,
        if (streetAddress != null) 'streetAddress': streetAddress!,
      };
}

/// Used by:
///
/// - dfareporting:v3.4 : OrderContact
/// - dfareporting:v3.5 : OrderContact
class $OrderContact {
  /// Free-form information about this contact.
  ///
  /// It could be any information related to this contact in addition to type,
  /// title, name, and signature user profile ID.
  core.String? contactInfo;

  /// Name of this contact.
  core.String? contactName;

  /// Title of this contact.
  core.String? contactTitle;

  /// Type of this contact.
  /// Possible string values are:
  /// - "PLANNING_ORDER_CONTACT_BUYER_CONTACT"
  /// - "PLANNING_ORDER_CONTACT_BUYER_BILLING_CONTACT"
  /// - "PLANNING_ORDER_CONTACT_SELLER_CONTACT"
  core.String? contactType;

  /// ID of the user profile containing the signature that will be embedded into
  /// order documents.
  core.String? signatureUserProfileId;

  $OrderContact({
    this.contactInfo,
    this.contactName,
    this.contactTitle,
    this.contactType,
    this.signatureUserProfileId,
  });

  $OrderContact.fromJson(core.Map _json)
      : this(
          contactInfo: _json.containsKey('contactInfo')
              ? _json['contactInfo'] as core.String
              : null,
          contactName: _json.containsKey('contactName')
              ? _json['contactName'] as core.String
              : null,
          contactTitle: _json.containsKey('contactTitle')
              ? _json['contactTitle'] as core.String
              : null,
          contactType: _json.containsKey('contactType')
              ? _json['contactType'] as core.String
              : null,
          signatureUserProfileId: _json.containsKey('signatureUserProfileId')
              ? _json['signatureUserProfileId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (contactInfo != null) 'contactInfo': contactInfo!,
        if (contactName != null) 'contactName': contactName!,
        if (contactTitle != null) 'contactTitle': contactTitle!,
        if (contactType != null) 'contactType': contactType!,
        if (signatureUserProfileId != null)
          'signatureUserProfileId': signatureUserProfileId!,
      };
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
  /// - "ANDROID" : An Android operating system.
  /// - "IOS" : An iOS operating system.
  core.String? osType;

  /// Only allows requests from devices with a verified Chrome OS.
  ///
  /// Verifications includes requirements that the device is enterprise-managed,
  /// conformant to domain policies, and the caller has permission to call the
  /// API targeted by the request.
  core.bool? requireVerifiedChromeOs;

  $OsConstraint({
    this.minimumVersion,
    this.osType,
    this.requireVerifiedChromeOs,
  });

  $OsConstraint.fromJson(core.Map _json)
      : this(
          minimumVersion: _json.containsKey('minimumVersion')
              ? _json['minimumVersion'] as core.String
              : null,
          osType: _json.containsKey('osType')
              ? _json['osType'] as core.String
              : null,
          requireVerifiedChromeOs: _json.containsKey('requireVerifiedChromeOs')
              ? _json['requireVerifiedChromeOs'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (minimumVersion != null) 'minimumVersion': minimumVersion!,
        if (osType != null) 'osType': osType!,
        if (requireVerifiedChromeOs != null)
          'requireVerifiedChromeOs': requireVerifiedChromeOs!,
      };
}

/// Used by:
///
/// - cloudasset:v1 : OsInfo
/// - osconfig:v1 : InventoryOsInfo
class $OsInfo {
  /// The system architecture of the operating system.
  core.String? architecture;

  /// The VM hostname.
  core.String? hostname;

  /// The kernel release of the operating system.
  core.String? kernelRelease;

  /// The kernel version of the operating system.
  core.String? kernelVersion;

  /// The operating system long name.
  ///
  /// For example 'Debian GNU/Linux 9' or 'Microsoft Window Server 2019
  /// Datacenter'.
  core.String? longName;

  /// The current version of the OS Config agent running on the VM.
  core.String? osconfigAgentVersion;

  /// The operating system short name.
  ///
  /// For example, 'windows' or 'debian'.
  core.String? shortName;

  /// The version of the operating system.
  core.String? version;

  $OsInfo({
    this.architecture,
    this.hostname,
    this.kernelRelease,
    this.kernelVersion,
    this.longName,
    this.osconfigAgentVersion,
    this.shortName,
    this.version,
  });

  $OsInfo.fromJson(core.Map _json)
      : this(
          architecture: _json.containsKey('architecture')
              ? _json['architecture'] as core.String
              : null,
          hostname: _json.containsKey('hostname')
              ? _json['hostname'] as core.String
              : null,
          kernelRelease: _json.containsKey('kernelRelease')
              ? _json['kernelRelease'] as core.String
              : null,
          kernelVersion: _json.containsKey('kernelVersion')
              ? _json['kernelVersion'] as core.String
              : null,
          longName: _json.containsKey('longName')
              ? _json['longName'] as core.String
              : null,
          osconfigAgentVersion: _json.containsKey('osconfigAgentVersion')
              ? _json['osconfigAgentVersion'] as core.String
              : null,
          shortName: _json.containsKey('shortName')
              ? _json['shortName'] as core.String
              : null,
          version: _json.containsKey('version')
              ? _json['version'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (architecture != null) 'architecture': architecture!,
        if (hostname != null) 'hostname': hostname!,
        if (kernelRelease != null) 'kernelRelease': kernelRelease!,
        if (kernelVersion != null) 'kernelVersion': kernelVersion!,
        if (longName != null) 'longName': longName!,
        if (osconfigAgentVersion != null)
          'osconfigAgentVersion': osconfigAgentVersion!,
        if (shortName != null) 'shortName': shortName!,
        if (version != null) 'version': version!,
      };
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

  $PageInfo({
    this.resultPerPage,
    this.startIndex,
    this.totalResults,
  });

  $PageInfo.fromJson(core.Map _json)
      : this(
          resultPerPage: _json.containsKey('resultPerPage')
              ? _json['resultPerPage'] as core.int
              : null,
          startIndex: _json.containsKey('startIndex')
              ? _json['startIndex'] as core.int
              : null,
          totalResults: _json.containsKey('totalResults')
              ? _json['totalResults'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (resultPerPage != null) 'resultPerPage': resultPerPage!,
        if (startIndex != null) 'startIndex': startIndex!,
        if (totalResults != null) 'totalResults': totalResults!,
      };
}

/// Used by:
///
/// - datastore:v1 : PartitionId
/// - dlp:v2 : GooglePrivacyDlpV2PartitionId
class $PartitionId {
  /// If not empty, the ID of the namespace to which the entities belong.
  core.String? namespaceId;

  /// The ID of the project to which the entities belong.
  core.String? projectId;

  $PartitionId({
    this.namespaceId,
    this.projectId,
  });

  $PartitionId.fromJson(core.Map _json)
      : this(
          namespaceId: _json.containsKey('namespaceId')
              ? _json['namespaceId'] as core.String
              : null,
          projectId: _json.containsKey('projectId')
              ? _json['projectId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (namespaceId != null) 'namespaceId': namespaceId!,
        if (projectId != null) 'projectId': projectId!,
      };
}

/// Used by:
///
/// - datastore:v1 : PathElement
/// - dlp:v2 : GooglePrivacyDlpV2PathElement
class $PathElement {
  /// The auto-allocated ID of the entity.
  ///
  /// Never equal to zero. Values less than zero are discouraged and may not be
  /// supported in the future.
  core.String? id;

  /// The kind of the entity.
  ///
  /// A kind matching regex `__.*__` is reserved/read-only. A kind must not
  /// contain more than 1500 bytes when UTF-8 encoded. Cannot be `""`.
  core.String? kind;

  /// The name of the entity.
  ///
  /// A name matching regex `__.*__` is reserved/read-only. A name must not be
  /// more than 1500 bytes when UTF-8 encoded. Cannot be `""`.
  core.String? name;

  $PathElement({
    this.id,
    this.kind,
    this.name,
  });

  $PathElement.fromJson(core.Map _json)
      : this(
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (name != null) 'name': name!,
      };
}

/// Used by:
///
/// - dfareporting:v3.4 : PathReportDimensionValue
/// - dfareporting:v3.5 : PathReportDimensionValue
class $PathReportDimensionValue {
  /// The name of the dimension.
  core.String? dimensionName;

  /// The possible ID's associated with the value if available.
  core.List<core.String>? ids;

  /// The kind of resource this is, in this case
  /// dfareporting#pathReportDimensionValue.
  core.String? kind;

  /// Determines how the 'value' field is matched when filtering.
  ///
  /// If not specified, defaults to EXACT. If set to WILDCARD_EXPRESSION, '*' is
  /// allowed as a placeholder for variable length character sequences, and it
  /// can be escaped with a backslash. Note, only paid search dimensions
  /// ('dfa:paidSearch*') allow a matchType other than EXACT.
  /// Possible string values are:
  /// - "EXACT"
  /// - "BEGINS_WITH"
  /// - "CONTAINS"
  /// - "WILDCARD_EXPRESSION"
  core.String? matchType;

  /// The possible values of the dimension.
  core.List<core.String>? values;

  $PathReportDimensionValue({
    this.dimensionName,
    this.ids,
    this.kind,
    this.matchType,
    this.values,
  });

  $PathReportDimensionValue.fromJson(core.Map _json)
      : this(
          dimensionName: _json.containsKey('dimensionName')
              ? _json['dimensionName'] as core.String
              : null,
          ids: _json.containsKey('ids')
              ? (_json['ids'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          matchType: _json.containsKey('matchType')
              ? _json['matchType'] as core.String
              : null,
          values: _json.containsKey('values')
              ? (_json['values'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dimensionName != null) 'dimensionName': dimensionName!,
        if (ids != null) 'ids': ids!,
        if (kind != null) 'kind': kind!,
        if (matchType != null) 'matchType': matchType!,
        if (values != null) 'values': values!,
      };
}

/// Used by:
///
/// - accesscontextmanager:v1 : TestIamPermissionsResponse
/// - apigateway:v1 : ApigatewayTestIamPermissionsResponse
/// - apigee:v1 : GoogleIamV1TestIamPermissionsResponse
/// - artifactregistry:v1 : TestIamPermissionsResponse
/// - bigquery:v2 : TestIamPermissionsResponse
/// - bigtableadmin:v2 : TestIamPermissionsResponse
/// - binaryauthorization:v1 : TestIamPermissionsResponse
/// - cloudbilling:v1 : TestIamPermissionsResponse
/// - clouddeploy:v1 : TestIamPermissionsResponse
/// - cloudfunctions:v1 : TestIamPermissionsResponse
/// - cloudiot:v1 : TestIamPermissionsResponse
/// - cloudkms:v1 : TestIamPermissionsResponse
/// - cloudresourcemanager:v1 : TestIamPermissionsResponse
/// - cloudresourcemanager:v2 : TestIamPermissionsResponse
/// - cloudresourcemanager:v3 : TestIamPermissionsResponse
/// - cloudtasks:v2 : TestIamPermissionsResponse
/// - compute:v1 : TestPermissionsResponse
/// - connectors:v1 : TestIamPermissionsResponse
/// - containeranalysis:v1 : TestIamPermissionsResponse
/// - datacatalog:v1 : TestIamPermissionsResponse
/// - datafusion:v1 : TestIamPermissionsResponse
/// - datamigration:v1 : TestIamPermissionsResponse
/// - deploymentmanager:v2 : TestPermissionsResponse
/// - domains:v1 : TestIamPermissionsResponse
/// - eventarc:v1 : TestIamPermissionsResponse
/// - gameservices:v1 : TestIamPermissionsResponse
/// - gkehub:v1 : TestIamPermissionsResponse
/// - healthcare:v1 : TestIamPermissionsResponse
/// - iam:v1 : TestIamPermissionsResponse
/// - iap:v1 : TestIamPermissionsResponse
/// - ids:v1 : TestIamPermissionsResponse
/// - managedidentities:v1 : TestIamPermissionsResponse
/// - ml:v1 : GoogleIamV1__TestIamPermissionsResponse
/// - networkconnectivity:v1 : TestIamPermissionsResponse
/// - networkmanagement:v1 : TestIamPermissionsResponse
/// - networksecurity:v1 : GoogleIamV1TestIamPermissionsResponse
/// - networkservices:v1 : TestIamPermissionsResponse
/// - notebooks:v1 : TestIamPermissionsResponse
/// - privateca:v1 : TestIamPermissionsResponse
/// - pubsub:v1 : TestIamPermissionsResponse
/// - run:v1 : TestIamPermissionsResponse
/// - run:v2 : GoogleIamV1TestIamPermissionsResponse
/// - secretmanager:v1 : TestIamPermissionsResponse
/// - securitycenter:v1 : TestIamPermissionsResponse
/// - servicedirectory:v1 : TestIamPermissionsResponse
/// - servicemanagement:v1 : TestIamPermissionsResponse
/// - sourcerepo:v1 : TestIamPermissionsResponse
/// - spanner:v1 : TestIamPermissionsResponse
class $PermissionsResponse {
  /// A subset of `TestPermissionsRequest.permissions` that the caller is
  /// allowed.
  core.List<core.String>? permissions;

  $PermissionsResponse({
    this.permissions,
  });

  $PermissionsResponse.fromJson(core.Map _json)
      : this(
          permissions: _json.containsKey('permissions')
              ? (_json['permissions'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (permissions != null) 'permissions': permissions!,
      };
}

/// Used by:
///
/// - dfareporting:v3.4 : PlacementStrategy
/// - dfareporting:v3.5 : PlacementStrategy
class $PlacementStrategy {
  /// Account ID of this placement strategy.This is a read-only field that can
  /// be left blank.
  core.String? accountId;

  /// ID of this placement strategy.
  ///
  /// This is a read-only, auto-generated field.
  core.String? id;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#placementStrategy".
  core.String? kind;

  /// Name of this placement strategy.
  ///
  /// This is a required field. It must be less than 256 characters long and
  /// unique among placement strategies of the same account.
  core.String? name;

  $PlacementStrategy({
    this.accountId,
    this.id,
    this.kind,
    this.name,
  });

  $PlacementStrategy.fromJson(core.Map _json)
      : this(
          accountId: _json.containsKey('accountId')
              ? _json['accountId'] as core.String
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountId != null) 'accountId': accountId!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (name != null) 'name': name!,
      };
}

/// Used by:
///
/// - dfareporting:v3.4 : PlatformType
/// - dfareporting:v3.5 : PlatformType
class $PlatformType {
  /// ID of this platform type.
  core.String? id;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#platformType".
  core.String? kind;

  /// Name of this platform type.
  core.String? name;

  $PlatformType({
    this.id,
    this.kind,
    this.name,
  });

  $PlatformType.fromJson(core.Map _json)
      : this(
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (name != null) 'name': name!,
      };
}

/// Used by:
///
/// - cloudchannel:v1 : GoogleTypePostalAddress
/// - documentai:v1 : GoogleTypePostalAddress
/// - domains:v1 : PostalAddress
/// - jobs:v3 : PostalAddress
/// - jobs:v4 : PostalAddress
class $PostalAddress00 {
  /// Unstructured address lines describing the lower levels of an address.
  ///
  /// Because values in address_lines do not have type information and may
  /// sometimes contain multiple values in a single field (e.g. "Austin, TX"),
  /// it is important that the line order is clear. The order of address lines
  /// should be "envelope order" for the country/region of the address. In
  /// places where this can vary (e.g. Japan), address_language is used to make
  /// it explicit (e.g. "ja" for large-to-small ordering and "ja-Latn" or "en"
  /// for small-to-large). This way, the most specific line of an address can be
  /// selected based on the language. The minimum permitted structural
  /// representation of an address consists of a region_code with all remaining
  /// information placed in the address_lines. It would be possible to format
  /// such an address very approximately without geocoding, but no semantic
  /// reasoning could be made about any of the address components until it was
  /// at least partially resolved. Creating an address only containing a
  /// region_code and address_lines, and then geocoding is the recommended way
  /// to handle completely unstructured addresses (as opposed to guessing which
  /// parts of the address should be localities or administrative areas).
  core.List<core.String>? addressLines;

  /// Highest administrative subdivision which is used for postal addresses of a
  /// country or region.
  ///
  /// For example, this can be a state, a province, an oblast, or a prefecture.
  /// Specifically, for Spain this is the province and not the autonomous
  /// community (e.g. "Barcelona" and not "Catalonia"). Many countries don't use
  /// an administrative area in postal addresses. E.g. in Switzerland this
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

  /// Generally refers to the city/town portion of the address.
  ///
  /// Examples: US city, IT comune, UK post town. In regions of the world where
  /// localities are not well defined or do not fit into this structure well,
  /// leave locality empty and use address_lines.
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
  /// the address (e.g. state/zip validation in the U.S.A.).
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
  /// correct. See http://cldr.unicode.org/ and
  /// http://www.unicode.org/cldr/charts/30/supplemental/territory_information.html
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
  /// string like "CEDEX", optionally followed by a number (e.g. "CEDEX 7"), or
  /// just a number alone, representing the "sector code" (Jamaica), "delivery
  /// area indicator" (Malawi) or "post office indicator" (e.g. Côte d'Ivoire).
  ///
  /// Optional.
  core.String? sortingCode;

  /// Sublocality of the address.
  ///
  /// For example, this can be neighborhoods, boroughs, districts.
  ///
  /// Optional.
  core.String? sublocality;

  $PostalAddress00({
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

  $PostalAddress00.fromJson(core.Map _json)
      : this(
          addressLines: _json.containsKey('addressLines')
              ? (_json['addressLines'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          administrativeArea: _json.containsKey('administrativeArea')
              ? _json['administrativeArea'] as core.String
              : null,
          languageCode: _json.containsKey('languageCode')
              ? _json['languageCode'] as core.String
              : null,
          locality: _json.containsKey('locality')
              ? _json['locality'] as core.String
              : null,
          organization: _json.containsKey('organization')
              ? _json['organization'] as core.String
              : null,
          postalCode: _json.containsKey('postalCode')
              ? _json['postalCode'] as core.String
              : null,
          recipients: _json.containsKey('recipients')
              ? (_json['recipients'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          regionCode: _json.containsKey('regionCode')
              ? _json['regionCode'] as core.String
              : null,
          revision: _json.containsKey('revision')
              ? _json['revision'] as core.int
              : null,
          sortingCode: _json.containsKey('sortingCode')
              ? _json['sortingCode'] as core.String
              : null,
          sublocality: _json.containsKey('sublocality')
              ? _json['sublocality'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (addressLines != null) 'addressLines': addressLines!,
        if (administrativeArea != null)
          'administrativeArea': administrativeArea!,
        if (languageCode != null) 'languageCode': languageCode!,
        if (locality != null) 'locality': locality!,
        if (organization != null) 'organization': organization!,
        if (postalCode != null) 'postalCode': postalCode!,
        if (recipients != null) 'recipients': recipients!,
        if (regionCode != null) 'regionCode': regionCode!,
        if (revision != null) 'revision': revision!,
        if (sortingCode != null) 'sortingCode': sortingCode!,
        if (sublocality != null) 'sublocality': sublocality!,
      };
}

/// Used by:
///
/// - mybusinessaccountmanagement:v1 : PostalAddress
/// - mybusinessbusinessinformation:v1 : PostalAddress
/// - mybusinessverifications:v1 : PostalAddress
class $PostalAddress01 {
  /// Unstructured address lines describing the lower levels of an address.
  ///
  /// Because values in address_lines do not have type information and may
  /// sometimes contain multiple values in a single field (e.g. "Austin, TX"),
  /// it is important that the line order is clear. The order of address lines
  /// should be "envelope order" for the country/region of the address. In
  /// places where this can vary (e.g. Japan), address_language is used to make
  /// it explicit (e.g. "ja" for large-to-small ordering and "ja-Latn" or "en"
  /// for small-to-large). This way, the most specific line of an address can be
  /// selected based on the language. The minimum permitted structural
  /// representation of an address consists of a region_code with all remaining
  /// information placed in the address_lines. It would be possible to format
  /// such an address very approximately without geocoding, but no semantic
  /// reasoning could be made about any of the address components until it was
  /// at least partially resolved. Creating an address only containing a
  /// region_code and address_lines, and then geocoding is the recommended way
  /// to handle completely unstructured addresses (as opposed to guessing which
  /// parts of the address should be localities or administrative areas).
  core.List<core.String>? addressLines;

  /// Highest administrative subdivision which is used for postal addresses of a
  /// country or region.
  ///
  /// For example, this can be a state, a province, an oblast, or a prefecture.
  /// Specifically, for Spain this is the province and not the autonomous
  /// community (e.g. "Barcelona" and not "Catalonia"). Many countries don't use
  /// an administrative area in postal addresses. E.g. in Switzerland this
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

  /// Generally refers to the city/town portion of the address.
  ///
  /// Examples: US city, IT comune, UK post town. In regions of the world where
  /// localities are not well defined or do not fit into this structure well,
  /// leave locality empty and use address_lines.
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
  /// the address (e.g. state/zip validation in the U.S.A.).
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
  /// string like "CEDEX", optionally followed by a number (e.g. "CEDEX 7"), or
  /// just a number alone, representing the "sector code" (Jamaica), "delivery
  /// area indicator" (Malawi) or "post office indicator" (e.g. Côte d'Ivoire).
  ///
  /// Optional.
  core.String? sortingCode;

  /// Sublocality of the address.
  ///
  /// For example, this can be neighborhoods, boroughs, districts.
  ///
  /// Optional.
  core.String? sublocality;

  $PostalAddress01({
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

  $PostalAddress01.fromJson(core.Map _json)
      : this(
          addressLines: _json.containsKey('addressLines')
              ? (_json['addressLines'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          administrativeArea: _json.containsKey('administrativeArea')
              ? _json['administrativeArea'] as core.String
              : null,
          languageCode: _json.containsKey('languageCode')
              ? _json['languageCode'] as core.String
              : null,
          locality: _json.containsKey('locality')
              ? _json['locality'] as core.String
              : null,
          organization: _json.containsKey('organization')
              ? _json['organization'] as core.String
              : null,
          postalCode: _json.containsKey('postalCode')
              ? _json['postalCode'] as core.String
              : null,
          recipients: _json.containsKey('recipients')
              ? (_json['recipients'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          regionCode: _json.containsKey('regionCode')
              ? _json['regionCode'] as core.String
              : null,
          revision: _json.containsKey('revision')
              ? _json['revision'] as core.int
              : null,
          sortingCode: _json.containsKey('sortingCode')
              ? _json['sortingCode'] as core.String
              : null,
          sublocality: _json.containsKey('sublocality')
              ? _json['sublocality'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (addressLines != null) 'addressLines': addressLines!,
        if (administrativeArea != null)
          'administrativeArea': administrativeArea!,
        if (languageCode != null) 'languageCode': languageCode!,
        if (locality != null) 'locality': locality!,
        if (organization != null) 'organization': organization!,
        if (postalCode != null) 'postalCode': postalCode!,
        if (recipients != null) 'recipients': recipients!,
        if (regionCode != null) 'regionCode': regionCode!,
        if (revision != null) 'revision': revision!,
        if (sortingCode != null) 'sortingCode': sortingCode!,
        if (sublocality != null) 'sublocality': sublocality!,
      };
}

/// Used by:
///
/// - dfareporting:v3.4 : PostalCode
/// - dfareporting:v3.5 : PostalCode
class $PostalCode {
  /// Postal code.
  ///
  /// This is equivalent to the id field.
  core.String? code;

  /// Country code of the country to which this postal code belongs.
  core.String? countryCode;

  /// DART ID of the country to which this postal code belongs.
  core.String? countryDartId;

  /// ID of this postal code.
  core.String? id;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#postalCode".
  core.String? kind;

  $PostalCode({
    this.code,
    this.countryCode,
    this.countryDartId,
    this.id,
    this.kind,
  });

  $PostalCode.fromJson(core.Map _json)
      : this(
          code: _json.containsKey('code') ? _json['code'] as core.String : null,
          countryCode: _json.containsKey('countryCode')
              ? _json['countryCode'] as core.String
              : null,
          countryDartId: _json.containsKey('countryDartId')
              ? _json['countryDartId'] as core.String
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (code != null) 'code': code!,
        if (countryCode != null) 'countryCode': countryCode!,
        if (countryDartId != null) 'countryDartId': countryDartId!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
      };
}

/// Used by:
///
/// - dfareporting:v3.4 : PricingSchedulePricingPeriod
/// - dfareporting:v3.5 : PricingSchedulePricingPeriod
class $PricingSchedulePricingPeriod {
  core.DateTime? endDate;

  /// Comments for this pricing period.
  core.String? pricingComment;

  /// Rate or cost of this pricing period in nanos (i.e., multipled by
  /// 1000000000).
  ///
  /// Acceptable values are 0 to 1000000000000000000, inclusive.
  core.String? rateOrCostNanos;
  core.DateTime? startDate;

  /// Units of this pricing period.
  ///
  /// Acceptable values are 0 to 10000000000, inclusive.
  core.String? units;

  $PricingSchedulePricingPeriod({
    this.endDate,
    this.pricingComment,
    this.rateOrCostNanos,
    this.startDate,
    this.units,
  });

  $PricingSchedulePricingPeriod.fromJson(core.Map _json)
      : this(
          endDate: _json.containsKey('endDate')
              ? core.DateTime.parse(_json['endDate'] as core.String)
              : null,
          pricingComment: _json.containsKey('pricingComment')
              ? _json['pricingComment'] as core.String
              : null,
          rateOrCostNanos: _json.containsKey('rateOrCostNanos')
              ? _json['rateOrCostNanos'] as core.String
              : null,
          startDate: _json.containsKey('startDate')
              ? core.DateTime.parse(_json['startDate'] as core.String)
              : null,
          units:
              _json.containsKey('units') ? _json['units'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (endDate != null)
          'endDate':
              "${(endDate!).year.toString().padLeft(4, '0')}-${(endDate!).month.toString().padLeft(2, '0')}-${(endDate!).day.toString().padLeft(2, '0')}",
        if (pricingComment != null) 'pricingComment': pricingComment!,
        if (rateOrCostNanos != null) 'rateOrCostNanos': rateOrCostNanos!,
        if (startDate != null)
          'startDate':
              "${(startDate!).year.toString().padLeft(4, '0')}-${(startDate!).month.toString().padLeft(2, '0')}-${(startDate!).day.toString().padLeft(2, '0')}",
        if (units != null) 'units': units!,
      };
}

/// Used by:
///
/// - clouddebugger:v2 : ProjectRepoId
/// - containeranalysis:v1 : ProjectRepoId
/// - ondemandscanning:v1 : ProjectRepoId
class $ProjectRepoId {
  /// The ID of the project.
  core.String? projectId;

  /// The name of the repo.
  ///
  /// Leave empty for the default repo.
  core.String? repoName;

  $ProjectRepoId({
    this.projectId,
    this.repoName,
  });

  $ProjectRepoId.fromJson(core.Map _json)
      : this(
          projectId: _json.containsKey('projectId')
              ? _json['projectId'] as core.String
              : null,
          repoName: _json.containsKey('repoName')
              ? _json['repoName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (projectId != null) 'projectId': projectId!,
        if (repoName != null) 'repoName': repoName!,
      };
}

/// Used by:
///
/// - compute:v1 : TargetSslProxiesSetProxyHeaderRequest
/// - compute:v1 : TargetTcpProxiesSetProxyHeaderRequest
class $ProxiesSetProxyHeaderRequest {
  /// The new type of proxy header to append before sending data to the backend.
  ///
  /// NONE or PROXY_V1 are allowed.
  /// Possible string values are:
  /// - "NONE"
  /// - "PROXY_V1"
  core.String? proxyHeader;

  $ProxiesSetProxyHeaderRequest({
    this.proxyHeader,
  });

  $ProxiesSetProxyHeaderRequest.fromJson(core.Map _json)
      : this(
          proxyHeader: _json.containsKey('proxyHeader')
              ? _json['proxyHeader'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (proxyHeader != null) 'proxyHeader': proxyHeader!,
      };
}

/// Used by:
///
/// - androidpublisher:v3 : ProductPurchasesAcknowledgeRequest
/// - androidpublisher:v3 : SubscriptionPurchasesAcknowledgeRequest
class $PurchasesAcknowledgeRequest {
  /// Payload to attach to the purchase.
  core.String? developerPayload;

  $PurchasesAcknowledgeRequest({
    this.developerPayload,
  });

  $PurchasesAcknowledgeRequest.fromJson(core.Map _json)
      : this(
          developerPayload: _json.containsKey('developerPayload')
              ? _json['developerPayload'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (developerPayload != null) 'developerPayload': developerPayload!,
      };
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

  $Query({
    this.endTime,
    this.startTime,
    this.terms,
  });

  $Query.fromJson(core.Map _json)
      : this(
          endTime: _json.containsKey('endTime')
              ? _json['endTime'] as core.String
              : null,
          startTime: _json.containsKey('startTime')
              ? _json['startTime'] as core.String
              : null,
          terms:
              _json.containsKey('terms') ? _json['terms'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (endTime != null) 'endTime': endTime!,
        if (startTime != null) 'startTime': startTime!,
        if (terms != null) 'terms': terms!,
      };
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

  /// Specify the unit of the quota limit.
  ///
  /// It uses the same syntax as Metric.unit. The supported unit kinds are
  /// determined by the quota backend system. Here are some examples: *
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
    this.unit,
    this.values,
  });

  $QuotaLimit.fromJson(core.Map _json)
      : this(
          defaultLimit: _json.containsKey('defaultLimit')
              ? _json['defaultLimit'] as core.String
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          duration: _json.containsKey('duration')
              ? _json['duration'] as core.String
              : null,
          freeTier: _json.containsKey('freeTier')
              ? _json['freeTier'] as core.String
              : null,
          maxLimit: _json.containsKey('maxLimit')
              ? _json['maxLimit'] as core.String
              : null,
          metric: _json.containsKey('metric')
              ? _json['metric'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          unit: _json.containsKey('unit') ? _json['unit'] as core.String : null,
          values: _json.containsKey('values')
              ? (_json['values'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (defaultLimit != null) 'defaultLimit': defaultLimit!,
        if (description != null) 'description': description!,
        if (displayName != null) 'displayName': displayName!,
        if (duration != null) 'duration': duration!,
        if (freeTier != null) 'freeTier': freeTier!,
        if (maxLimit != null) 'maxLimit': maxLimit!,
        if (metric != null) 'metric': metric!,
        if (name != null) 'name': name!,
        if (unit != null) 'unit': unit!,
        if (values != null) 'values': values!,
      };
}

/// Used by:
///
/// - safebrowsing:v4 : GoogleSecuritySafebrowsingV4RawIndices
/// - webrisk:v1 : GoogleCloudWebriskV1RawIndices
class $RawIndices {
  /// The indices to remove from a lexicographically-sorted local list.
  core.List<core.int>? indices;

  $RawIndices({
    this.indices,
  });

  $RawIndices.fromJson(core.Map _json)
      : this(
          indices: _json.containsKey('indices')
              ? (_json['indices'] as core.List)
                  .map((value) => value as core.int)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (indices != null) 'indices': indices!,
      };
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

  $Recipe.fromJson(core.Map _json)
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

/// Used by:
///
/// - dfareporting:v3.4 : Recipient
/// - dfareporting:v3.5 : Recipient
class $Recipient {
  /// The delivery type for the recipient.
  /// Possible string values are:
  /// - "LINK"
  /// - "ATTACHMENT"
  core.String? deliveryType;

  /// The email address of the recipient.
  core.String? email;

  /// The kind of resource this is, in this case dfareporting#recipient.
  core.String? kind;

  $Recipient({
    this.deliveryType,
    this.email,
    this.kind,
  });

  $Recipient.fromJson(core.Map _json)
      : this(
          deliveryType: _json.containsKey('deliveryType')
              ? _json['deliveryType'] as core.String
              : null,
          email:
              _json.containsKey('email') ? _json['email'] as core.String : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (deliveryType != null) 'deliveryType': deliveryType!,
        if (email != null) 'email': email!,
        if (kind != null) 'kind': kind!,
      };
}

/// Used by:
///
/// - dfareporting:v3.4 : Region
/// - dfareporting:v3.5 : Region
class $Region {
  /// Country code of the country to which this region belongs.
  core.String? countryCode;

  /// DART ID of the country to which this region belongs.
  core.String? countryDartId;

  /// DART ID of this region.
  core.String? dartId;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#region".
  core.String? kind;

  /// Name of this region.
  core.String? name;

  /// Region code.
  core.String? regionCode;

  $Region({
    this.countryCode,
    this.countryDartId,
    this.dartId,
    this.kind,
    this.name,
    this.regionCode,
  });

  $Region.fromJson(core.Map _json)
      : this(
          countryCode: _json.containsKey('countryCode')
              ? _json['countryCode'] as core.String
              : null,
          countryDartId: _json.containsKey('countryDartId')
              ? _json['countryDartId'] as core.String
              : null,
          dartId: _json.containsKey('dartId')
              ? _json['dartId'] as core.String
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          regionCode: _json.containsKey('regionCode')
              ? _json['regionCode'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (countryCode != null) 'countryCode': countryCode!,
        if (countryDartId != null) 'countryDartId': countryDartId!,
        if (dartId != null) 'dartId': dartId!,
        if (kind != null) 'kind': kind!,
        if (name != null) 'name': name!,
        if (regionCode != null) 'regionCode': regionCode!,
      };
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

  $RelatedUrl({
    this.label,
    this.url,
  });

  $RelatedUrl.fromJson(core.Map _json)
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

/// Used by:
///
/// - dfareporting:v3.4 : RemarketingListShare
/// - dfareporting:v3.5 : RemarketingListShare
class $RemarketingListShare {
  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#remarketingListShare".
  core.String? kind;

  /// Remarketing list ID.
  ///
  /// This is a read-only, auto-generated field.
  core.String? remarketingListId;

  /// Accounts that the remarketing list is shared with.
  core.List<core.String>? sharedAccountIds;

  /// Advertisers that the remarketing list is shared with.
  core.List<core.String>? sharedAdvertiserIds;

  $RemarketingListShare({
    this.kind,
    this.remarketingListId,
    this.sharedAccountIds,
    this.sharedAdvertiserIds,
  });

  $RemarketingListShare.fromJson(core.Map _json)
      : this(
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          remarketingListId: _json.containsKey('remarketingListId')
              ? _json['remarketingListId'] as core.String
              : null,
          sharedAccountIds: _json.containsKey('sharedAccountIds')
              ? (_json['sharedAccountIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          sharedAdvertiserIds: _json.containsKey('sharedAdvertiserIds')
              ? (_json['sharedAdvertiserIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (remarketingListId != null) 'remarketingListId': remarketingListId!,
        if (sharedAccountIds != null) 'sharedAccountIds': sharedAccountIds!,
        if (sharedAdvertiserIds != null)
          'sharedAdvertiserIds': sharedAdvertiserIds!,
      };
}

/// Used by:
///
/// - docs:v1 : ReplaceAllTextResponse
/// - slides:v1 : ReplaceAllTextResponse
class $ReplaceAllTextResponse {
  /// The number of occurrences changed by replacing all text.
  core.int? occurrencesChanged;

  $ReplaceAllTextResponse({
    this.occurrencesChanged,
  });

  $ReplaceAllTextResponse.fromJson(core.Map _json)
      : this(
          occurrencesChanged: _json.containsKey('occurrencesChanged')
              ? _json['occurrencesChanged'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (occurrencesChanged != null)
          'occurrencesChanged': occurrencesChanged!,
      };
}

/// Used by:
///
/// - compute:v1 : InstanceGroupManagersDeletePerInstanceConfigsReq
/// - compute:v1 : RegionInstanceGroupManagerDeleteInstanceConfigReq
class $Req {
  /// The list of instance names for which we want to delete per-instance
  /// configs on this managed instance group.
  core.List<core.String>? names;

  $Req({
    this.names,
  });

  $Req.fromJson(core.Map _json)
      : this(
          names: _json.containsKey('names')
              ? (_json['names'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (names != null) 'names': names!,
      };
}

/// Used by:
///
/// - cloudidentity:v1 : GoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest
/// - cloudidentity:v1 : GoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest
/// - cloudidentity:v1 : GoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest
/// - cloudidentity:v1 : GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest
/// - cloudidentity:v1 : GoogleAppsCloudidentityDevicesV1WipeDeviceRequest
/// - cloudidentity:v1 : GoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest
class $Request00 {
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

  $Request00({
    this.customer,
  });

  $Request00.fromJson(core.Map _json)
      : this(
          customer: _json.containsKey('customer')
              ? _json['customer'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (customer != null) 'customer': customer!,
      };
}

/// Used by:
///
/// - cloudchannel:v1 : GoogleCloudChannelV1ActivateEntitlementRequest
/// - cloudchannel:v1 : GoogleCloudChannelV1CancelEntitlementRequest
/// - cloudchannel:v1 : GoogleCloudChannelV1StartPaidServiceRequest
/// - cloudchannel:v1 : GoogleCloudChannelV1SuspendEntitlementRequest
class $Request01 {
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

  $Request01({
    this.requestId,
  });

  $Request01.fromJson(core.Map _json)
      : this(
          requestId: _json.containsKey('requestId')
              ? _json['requestId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (requestId != null) 'requestId': requestId!,
      };
}

/// Used by:
///
/// - privateca:v1 : DisableCertificateAuthorityRequest
/// - privateca:v1 : EnableCertificateAuthorityRequest
/// - privateca:v1 : FetchCaCertsRequest
/// - privateca:v1 : UndeleteCertificateAuthorityRequest
class $Request02 {
  /// An ID to identify requests.
  ///
  /// Specify a unique request ID so that if you must retry your request, the
  /// server will know to ignore the request if it has already been completed.
  /// The server will guarantee that for at least 60 minutes since the first
  /// request. For example, consider a situation where you make an initial
  /// request and t he request times out. If you make the request again with the
  /// same request ID, the server can check if original operation with the same
  /// request ID was received, and if so, will ignore the second request. This
  /// prevents clients from accidentally creating duplicate commitments. The
  /// request ID must be a valid UUID with the exception that zero UUID is not
  /// supported (00000000-0000-0000-0000-000000000000).
  ///
  /// Optional.
  core.String? requestId;

  $Request02({
    this.requestId,
  });

  $Request02.fromJson(core.Map _json)
      : this(
          requestId: _json.containsKey('requestId')
              ? _json['requestId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (requestId != null) 'requestId': requestId!,
      };
}

/// Used by:
///
/// - recommender:v1 : GoogleCloudRecommenderV1MarkRecommendationClaimedRequest
/// - recommender:v1 : GoogleCloudRecommenderV1MarkRecommendationFailedRequest
/// - recommender:v1 : GoogleCloudRecommenderV1MarkRecommendationSucceededRequest
class $Request03 {
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

  $Request03({
    this.etag,
    this.stateMetadata,
  });

  $Request03.fromJson(core.Map _json)
      : this(
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
          stateMetadata: _json.containsKey('stateMetadata')
              ? (_json['stateMetadata'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
        if (stateMetadata != null) 'stateMetadata': stateMetadata!,
      };
}

/// Used by:
///
/// - cloudresourcemanager:v1 : ListAvailableOrgPolicyConstraintsRequest
/// - cloudresourcemanager:v1 : ListOrgPoliciesRequest
class $Request04 {
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

  $Request04({
    this.pageSize,
    this.pageToken,
  });

  $Request04.fromJson(core.Map _json)
      : this(
          pageSize: _json.containsKey('pageSize')
              ? _json['pageSize'] as core.int
              : null,
          pageToken: _json.containsKey('pageToken')
              ? _json['pageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (pageSize != null) 'pageSize': pageSize!,
        if (pageToken != null) 'pageToken': pageToken!,
      };
}

/// Used by:
///
/// - compute:v1 : InstanceGroupManagersRecreateInstancesRequest
/// - compute:v1 : RegionInstanceGroupManagersRecreateRequest
class $Request05 {
  /// The URLs of one or more instances to recreate.
  ///
  /// This can be a full URL or a partial URL, such as
  /// zones/\[ZONE\]/instances/\[INSTANCE_NAME\].
  core.List<core.String>? instances;

  $Request05({
    this.instances,
  });

  $Request05.fromJson(core.Map _json)
      : this(
          instances: _json.containsKey('instances')
              ? (_json['instances'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (instances != null) 'instances': instances!,
      };
}

/// Used by:
///
/// - content:v2.1 : RequestReviewFreeListingsRequest
/// - content:v2.1 : RequestReviewShoppingAdsRequest
class $Request06 {
  /// The code \[ISO 3166-1
  /// alpha-2\](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) of the country
  /// for which review is to be requested.
  core.String? regionCode;

  $Request06({
    this.regionCode,
  });

  $Request06.fromJson(core.Map _json)
      : this(
          regionCode: _json.containsKey('regionCode')
              ? _json['regionCode'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (regionCode != null) 'regionCode': regionCode!,
      };
}

/// Used by:
///
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3ValidateAgentRequest
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3ValidateFlowRequest
class $Request07 {
  /// If not specified, the agent's default language is used.
  core.String? languageCode;

  $Request07({
    this.languageCode,
  });

  $Request07.fromJson(core.Map _json)
      : this(
          languageCode: _json.containsKey('languageCode')
              ? _json['languageCode'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (languageCode != null) 'languageCode': languageCode!,
      };
}

/// Used by:
///
/// - sheets:v4 : BatchClearValuesByDataFilterResponse
/// - sheets:v4 : BatchClearValuesResponse
class $Response {
  /// The ranges that were cleared, in A1 notation.
  ///
  /// If the requests are for an unbounded range or a ranger larger than the
  /// bounds of the sheet, this is the actual ranges that were cleared, bounded
  /// to the sheet's limits.
  core.List<core.String>? clearedRanges;

  /// The spreadsheet the updates were applied to.
  core.String? spreadsheetId;

  $Response({
    this.clearedRanges,
    this.spreadsheetId,
  });

  $Response.fromJson(core.Map _json)
      : this(
          clearedRanges: _json.containsKey('clearedRanges')
              ? (_json['clearedRanges'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          spreadsheetId: _json.containsKey('spreadsheetId')
              ? _json['spreadsheetId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (clearedRanges != null) 'clearedRanges': clearedRanges!,
        if (spreadsheetId != null) 'spreadsheetId': spreadsheetId!,
      };
}

/// Used by:
///
/// - jobs:v3 : ResponseMetadata
/// - jobs:v4 : ResponseMetadata
class $ResponseMetadata {
  /// A unique id associated with this call.
  ///
  /// This id is logged for tracking purposes.
  core.String? requestId;

  $ResponseMetadata({
    this.requestId,
  });

  $ResponseMetadata.fromJson(core.Map _json)
      : this(
          requestId: _json.containsKey('requestId')
              ? _json['requestId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (requestId != null) 'requestId': requestId!,
      };
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

  $RgbColor({
    this.blue,
    this.green,
    this.red,
  });

  $RgbColor.fromJson(core.Map _json)
      : this(
          blue: _json.containsKey('blue')
              ? (_json['blue'] as core.num).toDouble()
              : null,
          green: _json.containsKey('green')
              ? (_json['green'] as core.num).toDouble()
              : null,
          red: _json.containsKey('red')
              ? (_json['red'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (blue != null) 'blue': blue!,
        if (green != null) 'green': green!,
        if (red != null) 'red': red!,
      };
}

/// Used by:
///
/// - dfareporting:v3.4 : Rule
/// - dfareporting:v3.5 : Rule
class $Rule {
  /// A creativeAssets\[\].id.
  ///
  /// This should refer to one of the parent assets in this creative. This is a
  /// required field.
  core.String? assetId;

  /// A user-friendly name for this rule.
  ///
  /// This is a required field.
  core.String? name;

  /// A targeting template ID.
  ///
  /// The targeting from the targeting template will be used to determine
  /// whether this asset should be served. This is a required field.
  core.String? targetingTemplateId;

  $Rule({
    this.assetId,
    this.name,
    this.targetingTemplateId,
  });

  $Rule.fromJson(core.Map _json)
      : this(
          assetId: _json.containsKey('assetId')
              ? _json['assetId'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          targetingTemplateId: _json.containsKey('targetingTemplateId')
              ? _json['targetingTemplateId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (assetId != null) 'assetId': assetId!,
        if (name != null) 'name': name!,
        if (targetingTemplateId != null)
          'targetingTemplateId': targetingTemplateId!,
      };
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

  $SecretVersionRequest({
    this.etag,
  });

  $SecretVersionRequest.fromJson(core.Map _json)
      : this(
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
      };
}

/// Used by:
///
/// - compute:v1 : RegionSetLabelsRequest
/// - compute:v1 : ZoneSetLabelsRequest
class $SetLabelsRequest {
  /// The fingerprint of the previous set of labels for this resource, used to
  /// detect conflicts.
  ///
  /// The fingerprint is initially generated by Compute Engine and changes after
  /// every request to modify or update labels. You must always provide an
  /// up-to-date fingerprint hash in order to update or change labels. Make a
  /// get() request to the resource to get the latest fingerprint.
  core.String? labelFingerprint;
  core.List<core.int> get labelFingerprintAsBytes =>
      convert.base64.decode(labelFingerprint!);

  set labelFingerprintAsBytes(core.List<core.int> _bytes) {
    labelFingerprint =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// The labels to set for this resource.
  core.Map<core.String, core.String>? labels;

  $SetLabelsRequest({
    this.labelFingerprint,
    this.labels,
  });

  $SetLabelsRequest.fromJson(core.Map _json)
      : this(
          labelFingerprint: _json.containsKey('labelFingerprint')
              ? _json['labelFingerprint'] as core.String
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
        if (labelFingerprint != null) 'labelFingerprint': labelFingerprint!,
        if (labels != null) 'labels': labels!,
      };
}

/// Used by:
///
/// - tagmanager:v1 : SetupTag
/// - tagmanager:v2 : SetupTag
class $SetupTag {
  /// If true, fire the main tag if and only if the setup tag fires
  /// successfully.
  ///
  /// If false, fire the main tag regardless of setup tag firing status.
  core.bool? stopOnSetupFailure;

  /// The name of the setup tag.
  core.String? tagName;

  $SetupTag({
    this.stopOnSetupFailure,
    this.tagName,
  });

  $SetupTag.fromJson(core.Map _json)
      : this(
          stopOnSetupFailure: _json.containsKey('stopOnSetupFailure')
              ? _json['stopOnSetupFailure'] as core.bool
              : null,
          tagName: _json.containsKey('tagName')
              ? _json['tagName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (stopOnSetupFailure != null)
          'stopOnSetupFailure': stopOnSetupFailure!,
        if (tagName != null) 'tagName': tagName!,
      };
}

/// Used by:
///
/// - containeranalysis:v1 : BuilderConfig
/// - containeranalysis:v1 : SlsaBuilder
/// - ondemandscanning:v1 : BuilderConfig
/// - ondemandscanning:v1 : SlsaBuilder
/// - youtube:v3 : AbuseType
class $Shared00 {
  core.String? id;

  $Shared00({
    this.id,
  });

  $Shared00.fromJson(core.Map _json)
      : this(
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
      };
}

/// Used by:
///
/// - osconfig:v1 : OSPolicyResourcePackageResourceAPT
/// - osconfig:v1 : OSPolicyResourcePackageResourceGooGet
/// - osconfig:v1 : OSPolicyResourcePackageResourceYUM
/// - osconfig:v1 : OSPolicyResourcePackageResourceZypper
class $Shared01 {
  /// Package name.
  ///
  /// Required.
  core.String? name;

  $Shared01({
    this.name,
  });

  $Shared01.fromJson(core.Map _json)
      : this(
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
      };
}

/// Used by:
///
/// - chat:v1 : GoogleAppsCardV1SuggestionItem
/// - chat:v1 : TextParagraph
class $Shared02 {
  core.String? text;

  $Shared02({
    this.text,
  });

  $Shared02.fromJson(core.Map _json)
      : this(
          text: _json.containsKey('text') ? _json['text'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (text != null) 'text': text!,
      };
}

/// Used by:
///
/// - compute:v1 : InstancesSetServiceAccountRequest
/// - compute:v1 : ServiceAccount
class $Shared03 {
  /// Email address of the service account.
  core.String? email;

  /// The list of scopes to be made available for this service account.
  core.List<core.String>? scopes;

  $Shared03({
    this.email,
    this.scopes,
  });

  $Shared03.fromJson(core.Map _json)
      : this(
          email:
              _json.containsKey('email') ? _json['email'] as core.String : null,
          scopes: _json.containsKey('scopes')
              ? (_json['scopes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (email != null) 'email': email!,
        if (scopes != null) 'scopes': scopes!,
      };
}

/// Used by:
///
/// - content:v2.1 : Price
/// - content:v2.1 : PriceAmount
class $Shared04 {
  /// The currency of the price.
  core.String? currency;

  /// The price represented as a number.
  core.String? value;

  $Shared04({
    this.currency,
    this.value,
  });

  $Shared04.fromJson(core.Map _json)
      : this(
          currency: _json.containsKey('currency')
              ? _json['currency'] as core.String
              : null,
          value:
              _json.containsKey('value') ? _json['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (currency != null) 'currency': currency!,
        if (value != null) 'value': value!,
      };
}

/// Used by:
///
/// - dialogflow:v2 : GoogleCloudDialogflowV2Sentiment
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3SentimentAnalysisResult
class $Shared05 {
  /// A non-negative number in the \[0, +inf) range, which represents the
  /// absolute magnitude of sentiment, regardless of score (positive or
  /// negative).
  core.double? magnitude;

  /// Sentiment score between -1.0 (negative sentiment) and 1.0 (positive
  /// sentiment).
  core.double? score;

  $Shared05({
    this.magnitude,
    this.score,
  });

  $Shared05.fromJson(core.Map _json)
      : this(
          magnitude: _json.containsKey('magnitude')
              ? (_json['magnitude'] as core.num).toDouble()
              : null,
          score: _json.containsKey('score')
              ? (_json['score'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (magnitude != null) 'magnitude': magnitude!,
        if (score != null) 'score': score!,
      };
}

/// Used by:
///
/// - osconfig:v1 : OSPolicyAssignmentInstanceFilterInventory
/// - osconfig:v1 : OSPolicyInventoryFilter
class $Shared06 {
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

  $Shared06({
    this.osShortName,
    this.osVersion,
  });

  $Shared06.fromJson(core.Map _json)
      : this(
          osShortName: _json.containsKey('osShortName')
              ? _json['osShortName'] as core.String
              : null,
          osVersion: _json.containsKey('osVersion')
              ? _json['osVersion'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (osShortName != null) 'osShortName': osShortName!,
        if (osVersion != null) 'osVersion': osVersion!,
      };
}

/// Used by:
///
/// - youtube:v3 : CommentSnippetAuthorChannelId
/// - youtube:v3 : LanguageTag
class $Shared07 {
  core.String? value;

  $Shared07({
    this.value,
  });

  $Shared07.fromJson(core.Map _json)
      : this(
          value:
              _json.containsKey('value') ? _json['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (value != null) 'value': value!,
      };
}

/// Used by:
///
/// - notebooks:v1 : RuntimeShieldedInstanceConfig
/// - notebooks:v1 : ShieldedInstanceConfig
class $ShieldedInstanceConfig {
  /// Defines whether the instance has integrity monitoring enabled.
  ///
  /// Enables monitoring and attestation of the boot integrity of the instance.
  /// The attestation is performed against the integrity policy baseline. This
  /// baseline is initially derived from the implicitly trusted boot image when
  /// the instance is created. Enabled by default.
  core.bool? enableIntegrityMonitoring;

  /// Defines whether the instance has Secure Boot enabled.
  ///
  /// Secure Boot helps ensure that the system only runs authentic software by
  /// verifying the digital signature of all boot components, and halting the
  /// boot process if signature verification fails. Disabled by default.
  core.bool? enableSecureBoot;

  /// Defines whether the instance has the vTPM enabled.
  ///
  /// Enabled by default.
  core.bool? enableVtpm;

  $ShieldedInstanceConfig({
    this.enableIntegrityMonitoring,
    this.enableSecureBoot,
    this.enableVtpm,
  });

  $ShieldedInstanceConfig.fromJson(core.Map _json)
      : this(
          enableIntegrityMonitoring:
              _json.containsKey('enableIntegrityMonitoring')
                  ? _json['enableIntegrityMonitoring'] as core.bool
                  : null,
          enableSecureBoot: _json.containsKey('enableSecureBoot')
              ? _json['enableSecureBoot'] as core.bool
              : null,
          enableVtpm: _json.containsKey('enableVtpm')
              ? _json['enableVtpm'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enableIntegrityMonitoring != null)
          'enableIntegrityMonitoring': enableIntegrityMonitoring!,
        if (enableSecureBoot != null) 'enableSecureBoot': enableSecureBoot!,
        if (enableVtpm != null) 'enableVtpm': enableVtpm!,
      };
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

  set signatureAsBytes(core.List<core.int> _bytes) {
    signature =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  $Signature({
    this.publicKeyId,
    this.signature,
  });

  $Signature.fromJson(core.Map _json)
      : this(
          publicKeyId: _json.containsKey('publicKeyId')
              ? _json['publicKeyId'] as core.String
              : null,
          signature: _json.containsKey('signature')
              ? _json['signature'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (publicKeyId != null) 'publicKeyId': publicKeyId!,
        if (signature != null) 'signature': signature!,
      };
}

/// Used by:
///
/// - dfareporting:v3.4 : SiteContact
/// - dfareporting:v3.5 : SiteContact
class $SiteContact {
  /// Address of this site contact.
  core.String? address;

  /// Site contact type.
  /// Possible string values are:
  /// - "SALES_PERSON"
  /// - "TRAFFICKER"
  core.String? contactType;

  /// Email address of this site contact.
  ///
  /// This is a required field.
  core.String? email;

  /// First name of this site contact.
  core.String? firstName;

  /// ID of this site contact.
  ///
  /// This is a read-only, auto-generated field.
  core.String? id;

  /// Last name of this site contact.
  core.String? lastName;

  /// Primary phone number of this site contact.
  core.String? phone;

  /// Title or designation of this site contact.
  core.String? title;

  $SiteContact({
    this.address,
    this.contactType,
    this.email,
    this.firstName,
    this.id,
    this.lastName,
    this.phone,
    this.title,
  });

  $SiteContact.fromJson(core.Map _json)
      : this(
          address: _json.containsKey('address')
              ? _json['address'] as core.String
              : null,
          contactType: _json.containsKey('contactType')
              ? _json['contactType'] as core.String
              : null,
          email:
              _json.containsKey('email') ? _json['email'] as core.String : null,
          firstName: _json.containsKey('firstName')
              ? _json['firstName'] as core.String
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          lastName: _json.containsKey('lastName')
              ? _json['lastName'] as core.String
              : null,
          phone:
              _json.containsKey('phone') ? _json['phone'] as core.String : null,
          title:
              _json.containsKey('title') ? _json['title'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (address != null) 'address': address!,
        if (contactType != null) 'contactType': contactType!,
        if (email != null) 'email': email!,
        if (firstName != null) 'firstName': firstName!,
        if (id != null) 'id': id!,
        if (lastName != null) 'lastName': lastName!,
        if (phone != null) 'phone': phone!,
        if (title != null) 'title': title!,
      };
}

/// Used by:
///
/// - dfareporting:v3.4 : SiteTranscodeSetting
/// - dfareporting:v3.5 : SiteTranscodeSetting
class $SiteTranscodeSetting {
  /// Allowlist of video formats to be served to this site template.
  ///
  /// Set this list to null or empty to serve all video formats.
  core.List<core.int>? enabledVideoFormats;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#siteTranscodeSetting".
  core.String? kind;

  $SiteTranscodeSetting({
    this.enabledVideoFormats,
    this.kind,
  });

  $SiteTranscodeSetting.fromJson(core.Map _json)
      : this(
          enabledVideoFormats: _json.containsKey('enabledVideoFormats')
              ? (_json['enabledVideoFormats'] as core.List)
                  .map((value) => value as core.int)
                  .toList()
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enabledVideoFormats != null)
          'enabledVideoFormats': enabledVideoFormats!,
        if (kind != null) 'kind': kind!,
      };
}

/// Used by:
///
/// - dfareporting:v3.4 : Size
/// - dfareporting:v3.5 : Size
class $Size {
  /// Height of this size.
  ///
  /// Acceptable values are 0 to 32767, inclusive.
  core.int? height;

  /// IAB standard size.
  ///
  /// This is a read-only, auto-generated field.
  core.bool? iab;

  /// ID of this size.
  ///
  /// This is a read-only, auto-generated field.
  core.String? id;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#size".
  core.String? kind;

  /// Width of this size.
  ///
  /// Acceptable values are 0 to 32767, inclusive.
  core.int? width;

  $Size({
    this.height,
    this.iab,
    this.id,
    this.kind,
    this.width,
  });

  $Size.fromJson(core.Map _json)
      : this(
          height:
              _json.containsKey('height') ? _json['height'] as core.int : null,
          iab: _json.containsKey('iab') ? _json['iab'] as core.bool : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          width: _json.containsKey('width') ? _json['width'] as core.int : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (height != null) 'height': height!,
        if (iab != null) 'iab': iab!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (width != null) 'width': width!,
      };
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

  $SlsaRecipe.fromJson(core.Map _json)
      : this(
          arguments: _json.containsKey('arguments')
              ? _json['arguments'] as core.Map<core.String, core.dynamic>
              : null,
          definedInMaterial: _json.containsKey('definedInMaterial')
              ? _json['definedInMaterial'] as core.String
              : null,
          entryPoint: _json.containsKey('entryPoint')
              ? _json['entryPoint'] as core.String
              : null,
          environment: _json.containsKey('environment')
              ? _json['environment'] as core.Map<core.String, core.dynamic>
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

/// Used by:
///
/// - dfareporting:v3.4 : SortedDimension
/// - dfareporting:v3.5 : SortedDimension
class $SortedDimension {
  /// The kind of resource this is, in this case dfareporting#sortedDimension.
  core.String? kind;

  /// The name of the dimension.
  core.String? name;

  /// An optional sort order for the dimension column.
  /// Possible string values are:
  /// - "ASCENDING"
  /// - "DESCENDING"
  core.String? sortOrder;

  $SortedDimension({
    this.kind,
    this.name,
    this.sortOrder,
  });

  $SortedDimension.fromJson(core.Map _json)
      : this(
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          sortOrder: _json.containsKey('sortOrder')
              ? _json['sortOrder'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (name != null) 'name': name!,
        if (sortOrder != null) 'sortOrder': sortOrder!,
      };
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

  $SourceContext({
    this.fileName,
  });

  $SourceContext.fromJson(core.Map _json)
      : this(
          fileName: _json.containsKey('fileName')
              ? _json['fileName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fileName != null) 'fileName': fileName!,
      };
}

/// Used by:
///
/// - drive:v2 : StartPageToken
/// - drive:v3 : StartPageToken
class $StartPageToken {
  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "drive#startPageToken".
  core.String? kind;

  /// The starting page token for listing changes.
  core.String? startPageToken;

  $StartPageToken({
    this.kind,
    this.startPageToken,
  });

  $StartPageToken.fromJson(core.Map _json)
      : this(
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          startPageToken: _json.containsKey('startPageToken')
              ? _json['startPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (startPageToken != null) 'startPageToken': startPageToken!,
      };
}

/// Used by:
///
/// - accesscontextmanager:v1 : Status
/// - androiddeviceprovisioning:v1 : Status
/// - androidmanagement:v1 : Status
/// - apigateway:v1 : ApigatewayStatus
/// - apigee:v1 : GoogleRpcStatus
/// - apikeys:v2 : Status
/// - appengine:v1 : Status
/// - artifactregistry:v1 : Status
/// - assuredworkloads:v1 : GoogleRpcStatus
/// - baremetalsolution:v1 : Status
/// - baremetalsolution:v2 : Status
/// - bigquerydatatransfer:v1 : Status
/// - bigqueryreservation:v1 : Status
/// - bigtableadmin:v2 : Status
/// - certificatemanager:v1 : Status
/// - chromemanagement:v1 : GoogleRpcStatus
/// - cloudasset:v1 : Status
/// - cloudbuild:v1 : Status
/// - cloudchannel:v1 : GoogleRpcStatus
/// - clouddeploy:v1 : Status
/// - cloudfunctions:v1 : Status
/// - cloudidentity:v1 : Status
/// - cloudiot:v1 : Status
/// - cloudresourcemanager:v1 : Status
/// - cloudresourcemanager:v2 : Status
/// - cloudresourcemanager:v3 : Status
/// - cloudscheduler:v1 : Status
/// - cloudsearch:v1 : Status
/// - cloudshell:v1 : Status
/// - cloudtasks:v2 : Status
/// - cloudtrace:v2 : Status
/// - composer:v1 : Status
/// - connectors:v1 : Status
/// - contactcenterinsights:v1 : GoogleRpcStatus
/// - container:v1 : Status
/// - containeranalysis:v1 : Status
/// - datafusion:v1 : Status
/// - datamigration:v1 : Status
/// - datapipelines:v1 : GoogleRpcStatus
/// - dataplex:v1 : GoogleRpcStatus
/// - dataproc:v1 : Status
/// - datastore:v1 : Status
/// - datastream:v1 : Status
/// - dialogflow:v2 : GoogleRpcStatus
/// - dialogflow:v3 : GoogleRpcStatus
/// - displayvideo:v1 : Status
/// - dlp:v2 : GoogleRpcStatus
/// - documentai:v1 : GoogleRpcStatus
/// - domains:v1 : Status
/// - eventarc:v1 : GoogleRpcStatus
/// - file:v1 : Status
/// - firebasehosting:v1 : Status
/// - firebaseml:v1 : Status
/// - firestore:v1 : Status
/// - gameservices:v1 : Status
/// - gkehub:v1 : GoogleRpcStatus
/// - healthcare:v1 : Status
/// - iam:v1 : Status
/// - ids:v1 : Status
/// - jobs:v4 : Status
/// - logging:v2 : Status
/// - managedidentities:v1 : Status
/// - memcache:v1 : Status
/// - ml:v1 : GoogleRpc__Status
/// - monitoring:v3 : Status
/// - networkconnectivity:v1 : GoogleRpcStatus
/// - networkmanagement:v1 : Status
/// - networksecurity:v1 : Status
/// - networkservices:v1 : Status
/// - notebooks:v1 : Status
/// - ondemandscanning:v1 : Status
/// - osconfig:v1 : Status
/// - people:v1 : Status
/// - policysimulator:v1 : GoogleRpcStatus
/// - privateca:v1 : Status
/// - pubsublite:v1 : Status
/// - redis:v1 : Status
/// - retail:v2 : GoogleRpcStatus
/// - run:v1 : GoogleRpcStatus
/// - run:v2 : GoogleRpcStatus
/// - runtimeconfig:v1 : Status
/// - securitycenter:v1 : Status
/// - serviceconsumermanagement:v1 : Status
/// - servicecontrol:v1 : Status
/// - servicecontrol:v2 : Status
/// - servicemanagement:v1 : Status
/// - servicenetworking:v1 : Status
/// - serviceusage:v1 : Status
/// - sourcerepo:v1 : Status
/// - spanner:v1 : Status
/// - speech:v1 : Status
/// - storagetransfer:v1 : Status
/// - streetviewpublish:v1 : Status
/// - tpu:v1 : Status
/// - transcoder:v1 : Status
/// - translate:v3 : Status
/// - vault:v1 : Status
/// - videointelligence:v1 : GoogleRpc_Status
/// - vision:v1 : Status
/// - vmmigration:v1 : Status
/// - webrisk:v1 : GoogleRpcStatus
/// - workflows:v1 : Status
class $Status {
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

  $Status({
    this.code,
    this.details,
    this.message,
  });

  $Status.fromJson(core.Map _json)
      : this(
          code: _json.containsKey('code') ? _json['code'] as core.int : null,
          details: _json.containsKey('details')
              ? (_json['details'] as core.List)
                  .map((value) => value as core.Map<core.String, core.dynamic>)
                  .toList()
              : null,
          message: _json.containsKey('message')
              ? _json['message'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (code != null) 'code': code!,
        if (details != null) 'details': details!,
        if (message != null) 'message': message!,
      };
}

/// Used by:
///
/// - dfareporting:v3.4 : Subaccount
/// - dfareporting:v3.5 : Subaccount
class $Subaccount {
  /// ID of the account that contains this subaccount.
  ///
  /// This is a read-only field that can be left blank.
  core.String? accountId;

  /// IDs of the available user role permissions for this subaccount.
  core.List<core.String>? availablePermissionIds;

  /// ID of this subaccount.
  ///
  /// This is a read-only, auto-generated field.
  core.String? id;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#subaccount".
  core.String? kind;

  /// Name of this subaccount.
  ///
  /// This is a required field. Must be less than 128 characters long and be
  /// unique among subaccounts of the same account.
  core.String? name;

  $Subaccount({
    this.accountId,
    this.availablePermissionIds,
    this.id,
    this.kind,
    this.name,
  });

  $Subaccount.fromJson(core.Map _json)
      : this(
          accountId: _json.containsKey('accountId')
              ? _json['accountId'] as core.String
              : null,
          availablePermissionIds: _json.containsKey('availablePermissionIds')
              ? (_json['availablePermissionIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountId != null) 'accountId': accountId!,
        if (availablePermissionIds != null)
          'availablePermissionIds': availablePermissionIds!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (name != null) 'name': name!,
      };
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

  $Subject({
    this.digest,
    this.name,
  });

  $Subject.fromJson(core.Map _json)
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

/// Used by:
///
/// - dfareporting:v3.4 : TagData
/// - dfareporting:v3.5 : TagData
class $TagData {
  /// Ad associated with this placement tag.
  ///
  /// Applicable only when format is PLACEMENT_TAG_TRACKING.
  core.String? adId;

  /// Tag string to record a click.
  core.String? clickTag;

  /// Creative associated with this placement tag.
  ///
  /// Applicable only when format is PLACEMENT_TAG_TRACKING.
  core.String? creativeId;

  /// TagData tag format of this tag.
  /// Possible string values are:
  /// - "PLACEMENT_TAG_STANDARD"
  /// - "PLACEMENT_TAG_IFRAME_JAVASCRIPT"
  /// - "PLACEMENT_TAG_IFRAME_ILAYER"
  /// - "PLACEMENT_TAG_INTERNAL_REDIRECT"
  /// - "PLACEMENT_TAG_JAVASCRIPT"
  /// - "PLACEMENT_TAG_INTERSTITIAL_IFRAME_JAVASCRIPT"
  /// - "PLACEMENT_TAG_INTERSTITIAL_INTERNAL_REDIRECT"
  /// - "PLACEMENT_TAG_INTERSTITIAL_JAVASCRIPT"
  /// - "PLACEMENT_TAG_CLICK_COMMANDS"
  /// - "PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH"
  /// - "PLACEMENT_TAG_TRACKING"
  /// - "PLACEMENT_TAG_TRACKING_IFRAME"
  /// - "PLACEMENT_TAG_TRACKING_JAVASCRIPT"
  /// - "PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH_VAST_3"
  /// - "PLACEMENT_TAG_IFRAME_JAVASCRIPT_LEGACY"
  /// - "PLACEMENT_TAG_JAVASCRIPT_LEGACY"
  /// - "PLACEMENT_TAG_INTERSTITIAL_IFRAME_JAVASCRIPT_LEGACY"
  /// - "PLACEMENT_TAG_INTERSTITIAL_JAVASCRIPT_LEGACY"
  /// - "PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH_VAST_4"
  /// - "PLACEMENT_TAG_TRACKING_THIRD_PARTY_MEASUREMENT"
  core.String? format;

  /// Tag string for serving an ad.
  core.String? impressionTag;

  $TagData({
    this.adId,
    this.clickTag,
    this.creativeId,
    this.format,
    this.impressionTag,
  });

  $TagData.fromJson(core.Map _json)
      : this(
          adId: _json.containsKey('adId') ? _json['adId'] as core.String : null,
          clickTag: _json.containsKey('clickTag')
              ? _json['clickTag'] as core.String
              : null,
          creativeId: _json.containsKey('creativeId')
              ? _json['creativeId'] as core.String
              : null,
          format: _json.containsKey('format')
              ? _json['format'] as core.String
              : null,
          impressionTag: _json.containsKey('impressionTag')
              ? _json['impressionTag'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (adId != null) 'adId': adId!,
        if (clickTag != null) 'clickTag': clickTag!,
        if (creativeId != null) 'creativeId': creativeId!,
        if (format != null) 'format': format!,
        if (impressionTag != null) 'impressionTag': impressionTag!,
      };
}

/// Used by:
///
/// - dfareporting:v3.4 : TagSetting
/// - dfareporting:v3.5 : TagSetting
class $TagSetting {
  /// Additional key-values to be included in tags.
  ///
  /// Each key-value pair must be of the form key=value, and pairs must be
  /// separated by a semicolon (;). Keys and values must not contain commas. For
  /// example, id=2;color=red is a valid value for this field.
  core.String? additionalKeyValues;

  /// Whether static landing page URLs should be included in the tags.
  ///
  /// This setting applies only to placements.
  core.bool? includeClickThroughUrls;

  /// Whether click-tracking string should be included in the tags.
  core.bool? includeClickTracking;

  /// Option specifying how keywords are embedded in ad tags.
  ///
  /// This setting can be used to specify whether keyword placeholders are
  /// inserted in placement tags for this site. Publishers can then add keywords
  /// to those placeholders.
  /// Possible string values are:
  /// - "PLACEHOLDER_WITH_LIST_OF_KEYWORDS"
  /// - "IGNORE"
  /// - "GENERATE_SEPARATE_TAG_FOR_EACH_KEYWORD"
  core.String? keywordOption;

  $TagSetting({
    this.additionalKeyValues,
    this.includeClickThroughUrls,
    this.includeClickTracking,
    this.keywordOption,
  });

  $TagSetting.fromJson(core.Map _json)
      : this(
          additionalKeyValues: _json.containsKey('additionalKeyValues')
              ? _json['additionalKeyValues'] as core.String
              : null,
          includeClickThroughUrls: _json.containsKey('includeClickThroughUrls')
              ? _json['includeClickThroughUrls'] as core.bool
              : null,
          includeClickTracking: _json.containsKey('includeClickTracking')
              ? _json['includeClickTracking'] as core.bool
              : null,
          keywordOption: _json.containsKey('keywordOption')
              ? _json['keywordOption'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (additionalKeyValues != null)
          'additionalKeyValues': additionalKeyValues!,
        if (includeClickThroughUrls != null)
          'includeClickThroughUrls': includeClickThroughUrls!,
        if (includeClickTracking != null)
          'includeClickTracking': includeClickTracking!,
        if (keywordOption != null) 'keywordOption': keywordOption!,
      };
}

/// Used by:
///
/// - dfareporting:v3.4 : TagSettings
/// - dfareporting:v3.5 : TagSettings
class $TagSettings {
  /// Whether dynamic floodlight tags are enabled.
  core.bool? dynamicTagEnabled;

  /// Whether image tags are enabled.
  core.bool? imageTagEnabled;

  $TagSettings({
    this.dynamicTagEnabled,
    this.imageTagEnabled,
  });

  $TagSettings.fromJson(core.Map _json)
      : this(
          dynamicTagEnabled: _json.containsKey('dynamicTagEnabled')
              ? _json['dynamicTagEnabled'] as core.bool
              : null,
          imageTagEnabled: _json.containsKey('imageTagEnabled')
              ? _json['imageTagEnabled'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dynamicTagEnabled != null) 'dynamicTagEnabled': dynamicTagEnabled!,
        if (imageTagEnabled != null) 'imageTagEnabled': imageTagEnabled!,
      };
}

/// Used by:
///
/// - dfareporting:v3.4 : TargetWindow
/// - dfareporting:v3.5 : TargetWindow
class $TargetWindow {
  /// User-entered value.
  core.String? customHtml;

  /// Type of browser window for which the backup image of the flash creative
  /// can be displayed.
  /// Possible string values are:
  /// - "NEW_WINDOW"
  /// - "CURRENT_WINDOW"
  /// - "CUSTOM"
  core.String? targetWindowOption;

  $TargetWindow({
    this.customHtml,
    this.targetWindowOption,
  });

  $TargetWindow.fromJson(core.Map _json)
      : this(
          customHtml: _json.containsKey('customHtml')
              ? _json['customHtml'] as core.String
              : null,
          targetWindowOption: _json.containsKey('targetWindowOption')
              ? _json['targetWindowOption'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (customHtml != null) 'customHtml': customHtml!,
        if (targetWindowOption != null)
          'targetWindowOption': targetWindowOption!,
      };
}

/// Used by:
///
/// - tagmanager:v1 : TeardownTag
/// - tagmanager:v2 : TeardownTag
class $TeardownTag {
  /// If true, fire the teardown tag if and only if the main tag fires
  /// successfully.
  ///
  /// If false, fire the teardown tag regardless of main tag firing status.
  core.bool? stopTeardownOnFailure;

  /// The name of the teardown tag.
  core.String? tagName;

  $TeardownTag({
    this.stopTeardownOnFailure,
    this.tagName,
  });

  $TeardownTag.fromJson(core.Map _json)
      : this(
          stopTeardownOnFailure: _json.containsKey('stopTeardownOnFailure')
              ? _json['stopTeardownOnFailure'] as core.bool
              : null,
          tagName: _json.containsKey('tagName')
              ? _json['tagName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (stopTeardownOnFailure != null)
          'stopTeardownOnFailure': stopTeardownOnFailure!,
        if (tagName != null) 'tagName': tagName!,
      };
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

  $TenantProjectRequest({
    this.tag,
  });

  $TenantProjectRequest.fromJson(core.Map _json)
      : this(
          tag: _json.containsKey('tag') ? _json['tag'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (tag != null) 'tag': tag!,
      };
}

/// Used by:
///
/// - accesscontextmanager:v1 : TestIamPermissionsRequest
/// - apigateway:v1 : ApigatewayTestIamPermissionsRequest
/// - apigee:v1 : GoogleIamV1TestIamPermissionsRequest
/// - artifactregistry:v1 : TestIamPermissionsRequest
/// - bigquery:v2 : TestIamPermissionsRequest
/// - bigtableadmin:v2 : TestIamPermissionsRequest
/// - binaryauthorization:v1 : TestIamPermissionsRequest
/// - cloudbilling:v1 : TestIamPermissionsRequest
/// - clouddeploy:v1 : TestIamPermissionsRequest
/// - cloudfunctions:v1 : TestIamPermissionsRequest
/// - cloudiot:v1 : TestIamPermissionsRequest
/// - cloudkms:v1 : TestIamPermissionsRequest
/// - cloudresourcemanager:v1 : TestIamPermissionsRequest
/// - cloudresourcemanager:v2 : TestIamPermissionsRequest
/// - cloudresourcemanager:v3 : TestIamPermissionsRequest
/// - cloudtasks:v2 : TestIamPermissionsRequest
/// - connectors:v1 : TestIamPermissionsRequest
/// - containeranalysis:v1 : TestIamPermissionsRequest
/// - datacatalog:v1 : TestIamPermissionsRequest
/// - datafusion:v1 : TestIamPermissionsRequest
/// - datamigration:v1 : TestIamPermissionsRequest
/// - domains:v1 : TestIamPermissionsRequest
/// - eventarc:v1 : TestIamPermissionsRequest
/// - gameservices:v1 : TestIamPermissionsRequest
/// - gkehub:v1 : TestIamPermissionsRequest
/// - healthcare:v1 : TestIamPermissionsRequest
/// - iam:v1 : TestIamPermissionsRequest
/// - iap:v1 : TestIamPermissionsRequest
/// - ids:v1 : TestIamPermissionsRequest
/// - managedidentities:v1 : TestIamPermissionsRequest
/// - ml:v1 : GoogleIamV1__TestIamPermissionsRequest
/// - networkconnectivity:v1 : TestIamPermissionsRequest
/// - networkmanagement:v1 : TestIamPermissionsRequest
/// - networksecurity:v1 : GoogleIamV1TestIamPermissionsRequest
/// - networkservices:v1 : TestIamPermissionsRequest
/// - notebooks:v1 : TestIamPermissionsRequest
/// - privateca:v1 : TestIamPermissionsRequest
/// - pubsub:v1 : TestIamPermissionsRequest
/// - run:v1 : TestIamPermissionsRequest
/// - run:v2 : GoogleIamV1TestIamPermissionsRequest
/// - secretmanager:v1 : TestIamPermissionsRequest
/// - securitycenter:v1 : TestIamPermissionsRequest
/// - servicedirectory:v1 : TestIamPermissionsRequest
/// - servicemanagement:v1 : TestIamPermissionsRequest
/// - sourcerepo:v1 : TestIamPermissionsRequest
class $TestIamPermissionsRequest00 {
  /// The set of permissions to check for the `resource`.
  ///
  /// Permissions with wildcards (such as '*' or 'storage.*') are not allowed.
  /// For more information see
  /// [IAM Overview](https://cloud.google.com/iam/docs/overview#permissions).
  core.List<core.String>? permissions;

  $TestIamPermissionsRequest00({
    this.permissions,
  });

  $TestIamPermissionsRequest00.fromJson(core.Map _json)
      : this(
          permissions: _json.containsKey('permissions')
              ? (_json['permissions'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (permissions != null) 'permissions': permissions!,
      };
}

/// Used by:
///
/// - dataplex:v1 : GoogleIamV1TestIamPermissionsRequest
/// - dataproc:v1 : TestIamPermissionsRequest
class $TestIamPermissionsRequest01 {
  /// The set of permissions to check for the resource.
  ///
  /// Permissions with wildcards (such as '*' or 'storage.*') are not allowed.
  /// For more information see IAM Overview
  /// (https://cloud.google.com/iam/docs/overview#permissions).
  core.List<core.String>? permissions;

  $TestIamPermissionsRequest01({
    this.permissions,
  });

  $TestIamPermissionsRequest01.fromJson(core.Map _json)
      : this(
          permissions: _json.containsKey('permissions')
              ? (_json['permissions'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (permissions != null) 'permissions': permissions!,
      };
}

/// Used by:
///
/// - dataplex:v1 : GoogleIamV1TestIamPermissionsResponse
/// - dataproc:v1 : TestIamPermissionsResponse
class $TestIamPermissionsResponse {
  /// A subset of TestPermissionsRequest.permissions that the caller is allowed.
  core.List<core.String>? permissions;

  $TestIamPermissionsResponse({
    this.permissions,
  });

  $TestIamPermissionsResponse.fromJson(core.Map _json)
      : this(
          permissions: _json.containsKey('permissions')
              ? (_json['permissions'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (permissions != null) 'permissions': permissions!,
      };
}

/// Used by:
///
/// - compute:v1 : TestPermissionsRequest
/// - deploymentmanager:v2 : TestPermissionsRequest
class $TestPermissionsRequest {
  /// The set of permissions to check for the 'resource'.
  ///
  /// Permissions with wildcards (such as '*' or 'storage.*') are not allowed.
  core.List<core.String>? permissions;

  $TestPermissionsRequest({
    this.permissions,
  });

  $TestPermissionsRequest.fromJson(core.Map _json)
      : this(
          permissions: _json.containsKey('permissions')
              ? (_json['permissions'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (permissions != null) 'permissions': permissions!,
      };
}

/// Used by:
///
/// - dfareporting:v3.4 : ThirdPartyAuthenticationToken
/// - dfareporting:v3.5 : ThirdPartyAuthenticationToken
class $ThirdPartyAuthenticationToken {
  /// Name of the third-party authentication token.
  core.String? name;

  /// Value of the third-party authentication token.
  ///
  /// This is a read-only, auto-generated field.
  core.String? value;

  $ThirdPartyAuthenticationToken({
    this.name,
    this.value,
  });

  $ThirdPartyAuthenticationToken.fromJson(core.Map _json)
      : this(
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          value:
              _json.containsKey('value') ? _json['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (value != null) 'value': value!,
      };
}

/// Used by:
///
/// - dfareporting:v3.4 : ThirdPartyTrackingUrl
/// - dfareporting:v3.5 : ThirdPartyTrackingUrl
class $ThirdPartyTrackingUrl {
  /// Third-party URL type for in-stream video and in-stream audio creatives.
  /// Possible string values are:
  /// - "IMPRESSION"
  /// - "CLICK_TRACKING"
  /// - "VIDEO_START"
  /// - "VIDEO_FIRST_QUARTILE"
  /// - "VIDEO_MIDPOINT"
  /// - "VIDEO_THIRD_QUARTILE"
  /// - "VIDEO_COMPLETE"
  /// - "VIDEO_MUTE"
  /// - "VIDEO_PAUSE"
  /// - "VIDEO_REWIND"
  /// - "VIDEO_FULLSCREEN"
  /// - "VIDEO_STOP"
  /// - "VIDEO_CUSTOM"
  /// - "SURVEY"
  /// - "RICH_MEDIA_IMPRESSION"
  /// - "RICH_MEDIA_RM_IMPRESSION"
  /// - "RICH_MEDIA_BACKUP_IMPRESSION"
  /// - "VIDEO_SKIP"
  /// - "VIDEO_PROGRESS"
  core.String? thirdPartyUrlType;

  /// URL for the specified third-party URL type.
  core.String? url;

  $ThirdPartyTrackingUrl({
    this.thirdPartyUrlType,
    this.url,
  });

  $ThirdPartyTrackingUrl.fromJson(core.Map _json)
      : this(
          thirdPartyUrlType: _json.containsKey('thirdPartyUrlType')
              ? _json['thirdPartyUrlType'] as core.String
              : null,
          url: _json.containsKey('url') ? _json['url'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (thirdPartyUrlType != null) 'thirdPartyUrlType': thirdPartyUrlType!,
        if (url != null) 'url': url!,
      };
}

/// Used by:
///
/// - authorizedbuyersmarketplace:v1 : TimeOfDay
/// - classroom:v1 : TimeOfDay
/// - dlp:v2 : GoogleTypeTimeOfDay
/// - jobs:v3 : TimeOfDay
/// - jobs:v4 : TimeOfDay
/// - mybusinessbusinessinformation:v1 : TimeOfDay
/// - mybusinesslodging:v1 : TimeOfDay
/// - osconfig:v1 : TimeOfDay
/// - redis:v1 : TimeOfDay
/// - sheets:v4 : TimeOfDay
/// - storagetransfer:v1 : TimeOfDay
class $TimeOfDay {
  /// Hours of day in 24 hour format.
  ///
  /// Should be from 0 to 23. An API may choose to allow the value "24:00:00"
  /// for scenarios like business closing time.
  core.int? hours;

  /// Minutes of hour of day.
  ///
  /// Must be from 0 to 59.
  core.int? minutes;

  /// Fractions of seconds in nanoseconds.
  ///
  /// Must be from 0 to 999,999,999.
  core.int? nanos;

  /// Seconds of minutes of the time.
  ///
  /// Must normally be from 0 to 59. An API may allow the value 60 if it allows
  /// leap-seconds.
  core.int? seconds;

  $TimeOfDay({
    this.hours,
    this.minutes,
    this.nanos,
    this.seconds,
  });

  $TimeOfDay.fromJson(core.Map _json)
      : this(
          hours: _json.containsKey('hours') ? _json['hours'] as core.int : null,
          minutes: _json.containsKey('minutes')
              ? _json['minutes'] as core.int
              : null,
          nanos: _json.containsKey('nanos') ? _json['nanos'] as core.int : null,
          seconds: _json.containsKey('seconds')
              ? _json['seconds'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (hours != null) 'hours': hours!,
        if (minutes != null) 'minutes': minutes!,
        if (nanos != null) 'nanos': nanos!,
        if (seconds != null) 'seconds': seconds!,
      };
}

/// Used by:
///
/// - adsense:v2 : TimeZone
/// - authorizedbuyersmarketplace:v1 : TimeZone
/// - content:v2.1 : TimeZone
/// - documentai:v1 : GoogleTypeTimeZone
/// - localservices:v1 : GoogleTypeTimeZone
/// - osconfig:v1 : TimeZone
class $TimeZone {
  /// IANA Time Zone Database time zone, e.g. "America/New_York".
  core.String? id;

  /// IANA Time Zone Database version number, e.g. "2019a".
  ///
  /// Optional.
  core.String? version;

  $TimeZone({
    this.id,
    this.version,
  });

  $TimeZone.fromJson(core.Map _json)
      : this(
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          version: _json.containsKey('version')
              ? _json['version'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
        if (version != null) 'version': version!,
      };
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

  $TokenPagination({
    this.nextPageToken,
    this.previousPageToken,
  });

  $TokenPagination.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          previousPageToken: _json.containsKey('previousPageToken')
              ? _json['previousPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (previousPageToken != null) 'previousPageToken': previousPageToken!,
      };
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

  $TraceSamplingConfig({
    this.sampler,
    this.samplingRate,
  });

  $TraceSamplingConfig.fromJson(core.Map _json)
      : this(
          sampler: _json.containsKey('sampler')
              ? _json['sampler'] as core.String
              : null,
          samplingRate: _json.containsKey('samplingRate')
              ? (_json['samplingRate'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (sampler != null) 'sampler': sampler!,
        if (samplingRate != null) 'samplingRate': samplingRate!,
      };
}

/// Used by:
///
/// - dfareporting:v3.4 : TranscodeSetting
/// - dfareporting:v3.5 : TranscodeSetting
class $TranscodeSetting {
  /// Allowlist of video formats to be served to this placement.
  ///
  /// Set this list to null or empty to serve all video formats.
  core.List<core.int>? enabledVideoFormats;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#transcodeSetting".
  core.String? kind;

  $TranscodeSetting({
    this.enabledVideoFormats,
    this.kind,
  });

  $TranscodeSetting.fromJson(core.Map _json)
      : this(
          enabledVideoFormats: _json.containsKey('enabledVideoFormats')
              ? (_json['enabledVideoFormats'] as core.List)
                  .map((value) => value as core.int)
                  .toList()
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enabledVideoFormats != null)
          'enabledVideoFormats': enabledVideoFormats!,
        if (kind != null) 'kind': kind!,
      };
}

/// Used by:
///
/// - cloudtrace:v2 : TruncatableString
/// - servicecontrol:v1 : TruncatableString
class $TruncatableString {
  /// The number of bytes removed from the original string.
  ///
  /// If this value is 0, then the string was not shortened.
  core.int? truncatedByteCount;

  /// The shortened string.
  ///
  /// For example, if the original string is 500 bytes long and the limit of the
  /// string is 128 bytes, then `value` contains the first 128 bytes of the
  /// 500-byte string. Truncation always happens on a UTF8 character boundary.
  /// If there are multi-byte characters in the string, then the length of the
  /// shortened string might be less than the size limit.
  core.String? value;

  $TruncatableString({
    this.truncatedByteCount,
    this.value,
  });

  $TruncatableString.fromJson(core.Map _json)
      : this(
          truncatedByteCount: _json.containsKey('truncatedByteCount')
              ? _json['truncatedByteCount'] as core.int
              : null,
          value:
              _json.containsKey('value') ? _json['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (truncatedByteCount != null)
          'truncatedByteCount': truncatedByteCount!,
        if (value != null) 'value': value!,
      };
}

/// Used by:
///
/// - dfareporting:v3.4 : UniversalAdId
/// - dfareporting:v3.5 : UniversalAdId
class $UniversalAdId {
  /// Registry used for the Ad ID value.
  /// Possible string values are:
  /// - "OTHER"
  /// - "AD_ID_OFFICIAL"
  /// - "CLEARCAST"
  /// - "DCM"
  core.String? registry;

  /// ID value for this creative.
  ///
  /// Only alphanumeric characters and the following symbols are valid: "_/\-".
  /// Maximum length is 64 characters. Read only when registry is DCM.
  core.String? value;

  $UniversalAdId({
    this.registry,
    this.value,
  });

  $UniversalAdId.fromJson(core.Map _json)
      : this(
          registry: _json.containsKey('registry')
              ? _json['registry'] as core.String
              : null,
          value:
              _json.containsKey('value') ? _json['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (registry != null) 'registry': registry!,
        if (value != null) 'value': value!,
      };
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

  $UpgradeDistribution.fromJson(core.Map _json)
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

/// Used by:
///
/// - servicemanagement:v1 : UsageRule
/// - serviceusage:v1 : UsageRule
class $UsageRule {
  /// If true, the selected method allows unregistered calls, e.g. calls that
  /// don't identify any user or application.
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

  $UsageRule.fromJson(core.Map _json)
      : this(
          allowUnregisteredCalls: _json.containsKey('allowUnregisteredCalls')
              ? _json['allowUnregisteredCalls'] as core.bool
              : null,
          selector: _json.containsKey('selector')
              ? _json['selector'] as core.String
              : null,
          skipServiceControl: _json.containsKey('skipServiceControl')
              ? _json['skipServiceControl'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowUnregisteredCalls != null)
          'allowUnregisteredCalls': allowUnregisteredCalls!,
        if (selector != null) 'selector': selector!,
        if (skipServiceControl != null)
          'skipServiceControl': skipServiceControl!,
      };
}

/// Used by:
///
/// - dfareporting:v3.4 : UserDefinedVariableConfiguration
/// - dfareporting:v3.5 : UserDefinedVariableConfiguration
class $UserDefinedVariableConfiguration {
  /// Data type for the variable.
  ///
  /// This is a required field.
  /// Possible string values are:
  /// - "STRING"
  /// - "NUMBER"
  core.String? dataType;

  /// User-friendly name for the variable which will appear in reports.
  ///
  /// This is a required field, must be less than 64 characters long, and cannot
  /// contain the following characters: ""\<\>".
  core.String? reportName;

  /// Variable name in the tag.
  ///
  /// This is a required field.
  /// Possible string values are:
  /// - "U1"
  /// - "U2"
  /// - "U3"
  /// - "U4"
  /// - "U5"
  /// - "U6"
  /// - "U7"
  /// - "U8"
  /// - "U9"
  /// - "U10"
  /// - "U11"
  /// - "U12"
  /// - "U13"
  /// - "U14"
  /// - "U15"
  /// - "U16"
  /// - "U17"
  /// - "U18"
  /// - "U19"
  /// - "U20"
  /// - "U21"
  /// - "U22"
  /// - "U23"
  /// - "U24"
  /// - "U25"
  /// - "U26"
  /// - "U27"
  /// - "U28"
  /// - "U29"
  /// - "U30"
  /// - "U31"
  /// - "U32"
  /// - "U33"
  /// - "U34"
  /// - "U35"
  /// - "U36"
  /// - "U37"
  /// - "U38"
  /// - "U39"
  /// - "U40"
  /// - "U41"
  /// - "U42"
  /// - "U43"
  /// - "U44"
  /// - "U45"
  /// - "U46"
  /// - "U47"
  /// - "U48"
  /// - "U49"
  /// - "U50"
  /// - "U51"
  /// - "U52"
  /// - "U53"
  /// - "U54"
  /// - "U55"
  /// - "U56"
  /// - "U57"
  /// - "U58"
  /// - "U59"
  /// - "U60"
  /// - "U61"
  /// - "U62"
  /// - "U63"
  /// - "U64"
  /// - "U65"
  /// - "U66"
  /// - "U67"
  /// - "U68"
  /// - "U69"
  /// - "U70"
  /// - "U71"
  /// - "U72"
  /// - "U73"
  /// - "U74"
  /// - "U75"
  /// - "U76"
  /// - "U77"
  /// - "U78"
  /// - "U79"
  /// - "U80"
  /// - "U81"
  /// - "U82"
  /// - "U83"
  /// - "U84"
  /// - "U85"
  /// - "U86"
  /// - "U87"
  /// - "U88"
  /// - "U89"
  /// - "U90"
  /// - "U91"
  /// - "U92"
  /// - "U93"
  /// - "U94"
  /// - "U95"
  /// - "U96"
  /// - "U97"
  /// - "U98"
  /// - "U99"
  /// - "U100"
  core.String? variableType;

  $UserDefinedVariableConfiguration({
    this.dataType,
    this.reportName,
    this.variableType,
  });

  $UserDefinedVariableConfiguration.fromJson(core.Map _json)
      : this(
          dataType: _json.containsKey('dataType')
              ? _json['dataType'] as core.String
              : null,
          reportName: _json.containsKey('reportName')
              ? _json['reportName'] as core.String
              : null,
          variableType: _json.containsKey('variableType')
              ? _json['variableType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataType != null) 'dataType': dataType!,
        if (reportName != null) 'reportName': reportName!,
        if (variableType != null) 'variableType': variableType!,
      };
}

/// Used by:
///
/// - dfareporting:v3.4 : UserProfile
/// - dfareporting:v3.5 : UserProfile
class $UserProfile {
  /// The account ID to which this profile belongs.
  core.String? accountId;

  /// The account name this profile belongs to.
  core.String? accountName;

  /// Etag of this resource.
  core.String? etag;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#userProfile".
  core.String? kind;

  /// The unique ID of the user profile.
  core.String? profileId;

  /// The sub account ID this profile belongs to if applicable.
  core.String? subAccountId;

  /// The sub account name this profile belongs to if applicable.
  core.String? subAccountName;

  /// The user name.
  core.String? userName;

  $UserProfile({
    this.accountId,
    this.accountName,
    this.etag,
    this.kind,
    this.profileId,
    this.subAccountId,
    this.subAccountName,
    this.userName,
  });

  $UserProfile.fromJson(core.Map _json)
      : this(
          accountId: _json.containsKey('accountId')
              ? _json['accountId'] as core.String
              : null,
          accountName: _json.containsKey('accountName')
              ? _json['accountName'] as core.String
              : null,
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          profileId: _json.containsKey('profileId')
              ? _json['profileId'] as core.String
              : null,
          subAccountId: _json.containsKey('subAccountId')
              ? _json['subAccountId'] as core.String
              : null,
          subAccountName: _json.containsKey('subAccountName')
              ? _json['subAccountName'] as core.String
              : null,
          userName: _json.containsKey('userName')
              ? _json['userName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountId != null) 'accountId': accountId!,
        if (accountName != null) 'accountName': accountName!,
        if (etag != null) 'etag': etag!,
        if (kind != null) 'kind': kind!,
        if (profileId != null) 'profileId': profileId!,
        if (subAccountId != null) 'subAccountId': subAccountId!,
        if (subAccountName != null) 'subAccountName': subAccountName!,
        if (userName != null) 'userName': userName!,
      };
}

/// Used by:
///
/// - dfareporting:v3.4 : UserRolePermission
/// - dfareporting:v3.5 : UserRolePermission
class $UserRolePermission {
  /// Levels of availability for a user role permission.
  /// Possible string values are:
  /// - "NOT_AVAILABLE_BY_DEFAULT"
  /// - "ACCOUNT_BY_DEFAULT"
  /// - "SUBACCOUNT_AND_ACCOUNT_BY_DEFAULT"
  /// - "ACCOUNT_ALWAYS"
  /// - "SUBACCOUNT_AND_ACCOUNT_ALWAYS"
  /// - "USER_PROFILE_ONLY"
  core.String? availability;

  /// ID of this user role permission.
  core.String? id;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#userRolePermission".
  core.String? kind;

  /// Name of this user role permission.
  core.String? name;

  /// ID of the permission group that this user role permission belongs to.
  core.String? permissionGroupId;

  $UserRolePermission({
    this.availability,
    this.id,
    this.kind,
    this.name,
    this.permissionGroupId,
  });

  $UserRolePermission.fromJson(core.Map _json)
      : this(
          availability: _json.containsKey('availability')
              ? _json['availability'] as core.String
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          permissionGroupId: _json.containsKey('permissionGroupId')
              ? _json['permissionGroupId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (availability != null) 'availability': availability!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (name != null) 'name': name!,
        if (permissionGroupId != null) 'permissionGroupId': permissionGroupId!,
      };
}

/// Used by:
///
/// - dfareporting:v3.4 : UserRolePermissionGroup
/// - dfareporting:v3.5 : UserRolePermissionGroup
class $UserRolePermissionGroup {
  /// ID of this user role permission.
  core.String? id;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#userRolePermissionGroup".
  core.String? kind;

  /// Name of this user role permission group.
  core.String? name;

  $UserRolePermissionGroup({
    this.id,
    this.kind,
    this.name,
  });

  $UserRolePermissionGroup.fromJson(core.Map _json)
      : this(
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (name != null) 'name': name!,
      };
}

/// Used by:
///
/// - policysimulator:v1 : GoogleCloudPolicysimulatorV1AccessTuple
/// - policytroubleshooter:v1 : GoogleCloudPolicytroubleshooterV1AccessTuple
class $V1AccessTuple {
  /// The full resource name that identifies the resource.
  ///
  /// For example,
  /// `//compute.googleapis.com/projects/my-project/zones/us-central1-a/instances/my-instance`.
  /// For examples of full resource names for Google Cloud services, see
  /// https://cloud.google.com/iam/help/troubleshooter/full-resource-names.
  ///
  /// Required.
  core.String? fullResourceName;

  /// The IAM permission to check for the specified principal and resource.
  ///
  /// For a complete list of IAM permissions, see
  /// https://cloud.google.com/iam/help/permissions/reference. For a complete
  /// list of predefined IAM roles and the permissions in each role, see
  /// https://cloud.google.com/iam/help/roles/reference.
  ///
  /// Required.
  core.String? permission;

  /// The principal whose access you want to check, in the form of the email
  /// address that represents that principal.
  ///
  /// For example, `alice@example.com` or
  /// `my-service-account@my-project.iam.gserviceaccount.com`. The principal
  /// must be a Google Account or a service account. Other types of principals
  /// are not supported.
  ///
  /// Required.
  core.String? principal;

  $V1AccessTuple({
    this.fullResourceName,
    this.permission,
    this.principal,
  });

  $V1AccessTuple.fromJson(core.Map _json)
      : this(
          fullResourceName: _json.containsKey('fullResourceName')
              ? _json['fullResourceName'] as core.String
              : null,
          permission: _json.containsKey('permission')
              ? _json['permission'] as core.String
              : null,
          principal: _json.containsKey('principal')
              ? _json['principal'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fullResourceName != null) 'fullResourceName': fullResourceName!,
        if (permission != null) 'permission': permission!,
        if (principal != null) 'principal': principal!,
      };
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

  $Version.fromJson(core.Map _json)
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

/// Used by:
///
/// - cloudasset:v1 : VersionedPackage
/// - osconfig:v1 : InventoryVersionedPackage
class $VersionedPackage {
  /// The system architecture this package is intended for.
  core.String? architecture;

  /// The name of the package.
  core.String? packageName;

  /// The version of the package.
  core.String? version;

  $VersionedPackage({
    this.architecture,
    this.packageName,
    this.version,
  });

  $VersionedPackage.fromJson(core.Map _json)
      : this(
          architecture: _json.containsKey('architecture')
              ? _json['architecture'] as core.String
              : null,
          packageName: _json.containsKey('packageName')
              ? _json['packageName'] as core.String
              : null,
          version: _json.containsKey('version')
              ? _json['version'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (architecture != null) 'architecture': architecture!,
        if (packageName != null) 'packageName': packageName!,
        if (version != null) 'version': version!,
      };
}

/// Used by:
///
/// - dfareporting:v3.4 : VideoOffset
/// - dfareporting:v3.5 : VideoOffset
class $VideoOffset {
  /// Duration, as a percentage of video duration.
  ///
  /// Do not set when offsetSeconds is set. Acceptable values are 0 to 100,
  /// inclusive.
  core.int? offsetPercentage;

  /// Duration, in seconds.
  ///
  /// Do not set when offsetPercentage is set. Acceptable values are 0 to 86399,
  /// inclusive.
  core.int? offsetSeconds;

  $VideoOffset({
    this.offsetPercentage,
    this.offsetSeconds,
  });

  $VideoOffset.fromJson(core.Map _json)
      : this(
          offsetPercentage: _json.containsKey('offsetPercentage')
              ? _json['offsetPercentage'] as core.int
              : null,
          offsetSeconds: _json.containsKey('offsetSeconds')
              ? _json['offsetSeconds'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (offsetPercentage != null) 'offsetPercentage': offsetPercentage!,
        if (offsetSeconds != null) 'offsetSeconds': offsetSeconds!,
      };
}

/// Used by:
///
/// - accesscontextmanager:v1 : VpcAccessibleServices
/// - cloudasset:v1 : GoogleIdentityAccesscontextmanagerV1VpcAccessibleServices
class $VpcAccessibleServices {
  /// The list of APIs usable within the Service Perimeter.
  ///
  /// Must be empty unless 'enable_restriction' is True. You can specify a list
  /// of individual services, as well as include the 'RESTRICTED-SERVICES'
  /// value, which automatically includes all of the services protected by the
  /// perimeter.
  core.List<core.String>? allowedServices;

  /// Whether to restrict API calls within the Service Perimeter to the list of
  /// APIs specified in 'allowed_services'.
  core.bool? enableRestriction;

  $VpcAccessibleServices({
    this.allowedServices,
    this.enableRestriction,
  });

  $VpcAccessibleServices.fromJson(core.Map _json)
      : this(
          allowedServices: _json.containsKey('allowedServices')
              ? (_json['allowedServices'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          enableRestriction: _json.containsKey('enableRestriction')
              ? _json['enableRestriction'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowedServices != null) 'allowedServices': allowedServices!,
        if (enableRestriction != null) 'enableRestriction': enableRestriction!,
      };
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

  $VpcServiceControlsRequest({
    this.consumerNetwork,
  });

  $VpcServiceControlsRequest.fromJson(core.Map _json)
      : this(
          consumerNetwork: _json.containsKey('consumerNetwork')
              ? _json['consumerNetwork'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (consumerNetwork != null) 'consumerNetwork': consumerNetwork!,
      };
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

  $WebAppIcon({
    this.imageData,
  });

  $WebAppIcon.fromJson(core.Map _json)
      : this(
          imageData: _json.containsKey('imageData')
              ? _json['imageData'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (imageData != null) 'imageData': imageData!,
      };
}

/// Used by:
///
/// - cloudasset:v1 : WindowsQuickFixEngineeringPackage
/// - osconfig:v1 : InventoryWindowsQuickFixEngineeringPackage
class $WindowsQuickFixEngineeringPackage {
  /// A short textual description of the QFE update.
  core.String? caption;

  /// A textual description of the QFE update.
  core.String? description;

  /// Unique identifier associated with a particular QFE update.
  core.String? hotFixId;

  /// Date that the QFE update was installed.
  ///
  /// Mapped from installed_on field.
  core.String? installTime;

  $WindowsQuickFixEngineeringPackage({
    this.caption,
    this.description,
    this.hotFixId,
    this.installTime,
  });

  $WindowsQuickFixEngineeringPackage.fromJson(core.Map _json)
      : this(
          caption: _json.containsKey('caption')
              ? _json['caption'] as core.String
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          hotFixId: _json.containsKey('hotFixId')
              ? _json['hotFixId'] as core.String
              : null,
          installTime: _json.containsKey('installTime')
              ? _json['installTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (caption != null) 'caption': caption!,
        if (description != null) 'description': description!,
        if (hotFixId != null) 'hotFixId': hotFixId!,
        if (installTime != null) 'installTime': installTime!,
      };
}

/// Used by:
///
/// - cloudasset:v1 : WindowsUpdateCategory
/// - osconfig:v1 : InventoryWindowsUpdatePackageWindowsUpdateCategory
class $WindowsUpdateCategory {
  /// The identifier of the windows update category.
  core.String? id;

  /// The name of the windows update category.
  core.String? name;

  $WindowsUpdateCategory({
    this.id,
    this.name,
  });

  $WindowsUpdateCategory.fromJson(core.Map _json)
      : this(
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
        if (name != null) 'name': name!,
      };
}

/// Used by:
///
/// - cloudasset:v1 : ZypperPatch
/// - osconfig:v1 : InventoryZypperPatch
class $ZypperPatch {
  /// The category of the patch.
  core.String? category;

  /// The name of the patch.
  core.String? patchName;

  /// The severity specified for this patch
  core.String? severity;

  /// Any summary information provided about this patch.
  core.String? summary;

  $ZypperPatch({
    this.category,
    this.patchName,
    this.severity,
    this.summary,
  });

  $ZypperPatch.fromJson(core.Map _json)
      : this(
          category: _json.containsKey('category')
              ? _json['category'] as core.String
              : null,
          patchName: _json.containsKey('patchName')
              ? _json['patchName'] as core.String
              : null,
          severity: _json.containsKey('severity')
              ? _json['severity'] as core.String
              : null,
          summary: _json.containsKey('summary')
              ? _json['summary'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (category != null) 'category': category!,
        if (patchName != null) 'patchName': patchName!,
        if (severity != null) 'severity': severity!,
        if (summary != null) 'summary': summary!,
      };
}
