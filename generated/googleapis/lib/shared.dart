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
    this.title,
  });

  $AccessPolicy.fromJson(core.Map _json)
      : this(
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          parent: _json.containsKey('parent')
              ? _json['parent'] as core.String
              : null,
          title:
              _json.containsKey('title') ? _json['title'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
        if (name != null) 'name': name!,
        if (parent != null) 'parent': parent!,
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
/// - searchconsole:v1 : ApiDataRow
/// - webmasters:v3 : ApiDataRow
class $ApiDataRow {
  core.double? clicks;
  core.double? ctr;
  core.double? impressions;
  core.List<core.String>? keys;
  core.double? position;

  $ApiDataRow({
    this.clicks,
    this.ctr,
    this.impressions,
    this.keys,
    this.position,
  });

  $ApiDataRow.fromJson(core.Map _json)
      : this(
          clicks: _json.containsKey('clicks')
              ? (_json['clicks'] as core.num).toDouble()
              : null,
          ctr: _json.containsKey('ctr')
              ? (_json['ctr'] as core.num).toDouble()
              : null,
          impressions: _json.containsKey('impressions')
              ? (_json['impressions'] as core.num).toDouble()
              : null,
          keys: _json.containsKey('keys')
              ? (_json['keys'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          position: _json.containsKey('position')
              ? (_json['position'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (clicks != null) 'clicks': clicks!,
        if (ctr != null) 'ctr': ctr!,
        if (impressions != null) 'impressions': impressions!,
        if (keys != null) 'keys': keys!,
        if (position != null) 'position': position!,
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
/// - cloudchannel:v1 : GoogleCloudChannelV1AssociationInfo
/// - cloudchannel:v1 : GoogleCloudChannelV1alpha1AssociationInfo
class $AssociationInfo {
  /// The name of the base entitlement, for which this entitlement is an add-on.
  core.String? baseEntitlement;

  $AssociationInfo({
    this.baseEntitlement,
  });

  $AssociationInfo.fromJson(core.Map _json)
      : this(
          baseEntitlement: _json.containsKey('baseEntitlement')
              ? _json['baseEntitlement'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (baseEntitlement != null) 'baseEntitlement': baseEntitlement!,
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
/// - apigateway:v1 : ApigatewayAuditLogConfig
/// - apigee:v1 : GoogleIamV1AuditLogConfig
/// - bigquery:v2 : AuditLogConfig
/// - bigtableadmin:v2 : AuditLogConfig
/// - cloudasset:v1 : AuditLogConfig
/// - cloudbilling:v1 : AuditLogConfig
/// - cloudfunctions:v1 : AuditLogConfig
/// - cloudkms:v1 : AuditLogConfig
/// - cloudresourcemanager:v1 : AuditLogConfig
/// - cloudresourcemanager:v2 : AuditLogConfig
/// - cloudresourcemanager:v3 : AuditLogConfig
/// - connectors:v1 : AuditLogConfig
/// - datafusion:v1 : AuditLogConfig
/// - datamigration:v1 : AuditLogConfig
/// - deploymentmanager:v2 : AuditLogConfig
/// - eventarc:v1 : AuditLogConfig
/// - gkehub:v1 : AuditLogConfig
/// - healthcare:v1 : AuditLogConfig
/// - iam:v1 : AuditLogConfig
/// - ml:v1 : GoogleIamV1__AuditLogConfig
/// - networkconnectivity:v1 : AuditLogConfig
/// - networkmanagement:v1 : AuditLogConfig
/// - networksecurity:v1 : GoogleIamV1AuditLogConfig
/// - networkservices:v1 : AuditLogConfig
/// - policysimulator:v1 : GoogleIamV1AuditLogConfig
/// - policytroubleshooter:v1 : GoogleIamV1AuditLogConfig
/// - privateca:v1 : AuditLogConfig
/// - run:v1 : AuditLogConfig
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
/// - servicecontrol:v1 : Auth
/// - servicecontrol:v2 : Auth
class $Auth {
  /// A list of access level resource names that allow resources to be accessed
  /// by authenticated requester.
  ///
  /// It is part of Secure GCP processing for the incoming request. An access
  /// level string has the format:
  /// "//{api_service_name}/accessPolicies/{policy_id}/accessLevels/{short_name}"
  /// Example:
  /// "//accesscontextmanager.googleapis.com/accessPolicies/MY_POLICY_ID/accessLevels/MY_LEVEL"
  core.List<core.String>? accessLevels;

  /// The intended audience(s) for this authentication information.
  ///
  /// Reflects the audience (`aud`) claim within a JWT. The audience value(s)
  /// depends on the `issuer`, but typically include one or more of the
  /// following pieces of information: * The services intended to receive the
  /// credential. For example, \["https://pubsub.googleapis.com/",
  /// "https://storage.googleapis.com/"\]. * A set of service-based scopes. For
  /// example, \["https://www.googleapis.com/auth/cloud-platform"\]. * The
  /// client id of an app, such as the Firebase project id for JWTs from
  /// Firebase Auth. Consult the documentation for the credential issuer to
  /// determine the information provided.
  core.List<core.String>? audiences;

  /// Structured claims presented with the credential.
  ///
  /// JWTs include `{key: value}` pairs for standard and private claims. The
  /// following is a subset of the standard required and optional claims that
  /// would typically be presented for a Google-based JWT: {'iss':
  /// 'accounts.google.com', 'sub': '113289723416554971153', 'aud':
  /// \['123456789012', 'pubsub.googleapis.com'\], 'azp':
  /// '123456789012.apps.googleusercontent.com', 'email': 'jsmith@example.com',
  /// 'iat': 1353601026, 'exp': 1353604926} SAML assertions are similarly
  /// specified, but with an identity provider dependent structure.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? claims;

  /// The authorized presenter of the credential.
  ///
  /// Reflects the optional Authorized Presenter (`azp`) claim within a JWT or
  /// the OAuth client id. For example, a Google Cloud Platform client id looks
  /// as follows: "123456789012.apps.googleusercontent.com".
  core.String? presenter;

  /// The authenticated principal.
  ///
  /// Reflects the issuer (`iss`) and subject (`sub`) claims within a JWT. The
  /// issuer and subject should be `/` delimited, with `/` percent-encoded
  /// within the subject fragment. For Google accounts, the principal format is:
  /// "https://accounts.google.com/{id}"
  core.String? principal;

  $Auth({
    this.accessLevels,
    this.audiences,
    this.claims,
    this.presenter,
    this.principal,
  });

  $Auth.fromJson(core.Map _json)
      : this(
          accessLevels: _json.containsKey('accessLevels')
              ? (_json['accessLevels'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          audiences: _json.containsKey('audiences')
              ? (_json['audiences'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          claims: _json.containsKey('claims')
              ? _json['claims'] as core.Map<core.String, core.dynamic>
              : null,
          presenter: _json.containsKey('presenter')
              ? _json['presenter'] as core.String
              : null,
          principal: _json.containsKey('principal')
              ? _json['principal'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accessLevels != null) 'accessLevels': accessLevels!,
        if (audiences != null) 'audiences': audiences!,
        if (claims != null) 'claims': claims!,
        if (presenter != null) 'presenter': presenter!,
        if (principal != null) 'principal': principal!,
      };
}

/// Used by:
///
/// - serviceconsumermanagement:v1 : AuthRequirement
/// - servicemanagement:v1 : AuthRequirement
/// - servicenetworking:v1 : AuthRequirement
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
/// - serviceconsumermanagement:v1 : BackendRule
/// - servicemanagement:v1 : BackendRule
/// - servicenetworking:v1 : BackendRule
/// - serviceusage:v1 : BackendRule
class $BackendRule {
  /// The address of the API backend.
  ///
  /// The scheme is used to determine the backend protocol and security. The
  /// following schemes are accepted: SCHEME PROTOCOL SECURITY http:// HTTP None
  /// https:// HTTP TLS grpc:// gRPC None grpcs:// gRPC TLS It is recommended to
  /// explicitly include a scheme. Leaving out the scheme may cause constrasting
  /// behaviors across platforms. If the port is unspecified, the default is: -
  /// 80 for schemes without TLS - 443 for schemes with TLS For HTTP backends,
  /// use protocol to specify the protocol version.
  core.String? address;

  /// The number of seconds to wait for a response from a request.
  ///
  /// The default varies based on the request protocol and deployment
  /// environment.
  core.double? deadline;

  /// When disable_auth is true, a JWT ID token won't be generated and the
  /// original "Authorization" HTTP header will be preserved.
  ///
  /// If the header is used to carry the original token and is expected by the
  /// backend, this field must be set to true to preserve the header.
  core.bool? disableAuth;

  /// The JWT audience is used when generating a JWT ID token for the backend.
  ///
  /// This ID token will be added in the HTTP "authorization" header, and sent
  /// to the backend.
  core.String? jwtAudience;

  /// The number of seconds to wait for the completion of a long running
  /// operation.
  ///
  /// The default is no deadline.
  core.double? operationDeadline;

  ///
  /// Possible string values are:
  /// - "PATH_TRANSLATION_UNSPECIFIED"
  /// - "CONSTANT_ADDRESS" : Use the backend address as-is, with no modification
  /// to the path. If the URL pattern contains variables, the variable names and
  /// values will be appended to the query string. If a query string parameter
  /// and a URL pattern variable have the same name, this may result in
  /// duplicate keys in the query string. # Examples Given the following
  /// operation config: Method path: /api/company/{cid}/user/{uid} Backend
  /// address: https://example.cloudfunctions.net/getUser Requests to the
  /// following request paths will call the backend at the translated path:
  /// Request path: /api/company/widgetworks/user/johndoe Translated:
  /// https://example.cloudfunctions.net/getUser?cid=widgetworks&uid=johndoe
  /// Request path: /api/company/widgetworks/user/johndoe?timezone=EST
  /// Translated:
  /// https://example.cloudfunctions.net/getUser?timezone=EST&cid=widgetworks&uid=johndoe
  /// - "APPEND_PATH_TO_ADDRESS" : The request path will be appended to the
  /// backend address. # Examples Given the following operation config: Method
  /// path: /api/company/{cid}/user/{uid} Backend address:
  /// https://example.appspot.com Requests to the following request paths will
  /// call the backend at the translated path: Request path:
  /// /api/company/widgetworks/user/johndoe Translated:
  /// https://example.appspot.com/api/company/widgetworks/user/johndoe Request
  /// path: /api/company/widgetworks/user/johndoe?timezone=EST Translated:
  /// https://example.appspot.com/api/company/widgetworks/user/johndoe?timezone=EST
  core.String? pathTranslation;

  /// The protocol used for sending a request to the backend.
  ///
  /// The supported values are "http/1.1" and "h2". The default value is
  /// inferred from the scheme in the address field: SCHEME PROTOCOL http://
  /// http/1.1 https:// http/1.1 grpc:// h2 grpcs:// h2 For secure HTTP backends
  /// (https://) that support HTTP/2, set this field to "h2" for improved
  /// performance. Configuring this field to non-default values is only
  /// supported for secure HTTP backends. This field will be ignored for all
  /// other backends. See
  /// https://www.iana.org/assignments/tls-extensiontype-values/tls-extensiontype-values.xhtml#alpn-protocol-ids
  /// for more details on the supported values.
  core.String? protocol;

  /// Selects the methods to which this rule applies.
  ///
  /// Refer to selector for syntax details.
  core.String? selector;

  $BackendRule({
    this.address,
    this.deadline,
    this.disableAuth,
    this.jwtAudience,
    this.operationDeadline,
    this.pathTranslation,
    this.protocol,
    this.selector,
  });

  $BackendRule.fromJson(core.Map _json)
      : this(
          address: _json.containsKey('address')
              ? _json['address'] as core.String
              : null,
          deadline: _json.containsKey('deadline')
              ? (_json['deadline'] as core.num).toDouble()
              : null,
          disableAuth: _json.containsKey('disableAuth')
              ? _json['disableAuth'] as core.bool
              : null,
          jwtAudience: _json.containsKey('jwtAudience')
              ? _json['jwtAudience'] as core.String
              : null,
          operationDeadline: _json.containsKey('operationDeadline')
              ? (_json['operationDeadline'] as core.num).toDouble()
              : null,
          pathTranslation: _json.containsKey('pathTranslation')
              ? _json['pathTranslation'] as core.String
              : null,
          protocol: _json.containsKey('protocol')
              ? _json['protocol'] as core.String
              : null,
          selector: _json.containsKey('selector')
              ? _json['selector'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (address != null) 'address': address!,
        if (deadline != null) 'deadline': deadline!,
        if (disableAuth != null) 'disableAuth': disableAuth!,
        if (jwtAudience != null) 'jwtAudience': jwtAudience!,
        if (operationDeadline != null) 'operationDeadline': operationDeadline!,
        if (pathTranslation != null) 'pathTranslation': pathTranslation!,
        if (protocol != null) 'protocol': protocol!,
        if (selector != null) 'selector': selector!,
      };
}

/// Used by:
///
/// - vision:v1 : BatchOperationMetadata
/// - vision:v1 : GoogleCloudVisionV1p3beta1BatchOperationMetadata
/// - vision:v1 : GoogleCloudVisionV1p4beta1BatchOperationMetadata
class $BatchOperationMetadata {
  /// The time when the batch request is finished and
  /// google.longrunning.Operation.done is set to true.
  core.String? endTime;

  /// The current state of the batch operation.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Invalid.
  /// - "PROCESSING" : Request is actively being processed.
  /// - "SUCCESSFUL" : The request is done and at least one item has been
  /// successfully processed.
  /// - "FAILED" : The request is done and no item has been successfully
  /// processed.
  /// - "CANCELLED" : The request is done after the
  /// longrunning.Operations.CancelOperation has been called by the user. Any
  /// records that were processed before the cancel command are output as
  /// specified in the request.
  core.String? state;

  /// The time when the batch request was submitted to the server.
  core.String? submitTime;

  $BatchOperationMetadata({
    this.endTime,
    this.state,
    this.submitTime,
  });

  $BatchOperationMetadata.fromJson(core.Map _json)
      : this(
          endTime: _json.containsKey('endTime')
              ? _json['endTime'] as core.String
              : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
          submitTime: _json.containsKey('submitTime')
              ? _json['submitTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (endTime != null) 'endTime': endTime!,
        if (state != null) 'state': state!,
        if (submitTime != null) 'submitTime': submitTime!,
      };
}

/// Used by:
///
/// - serviceconsumermanagement:v1 : BillingDestination
/// - servicemanagement:v1 : BillingDestination
/// - servicenetworking:v1 : BillingDestination
/// - serviceusage:v1 : BillingDestination
class $BillingDestination {
  /// Names of the metrics to report to this billing destination.
  ///
  /// Each name must be defined in Service.metrics section.
  core.List<core.String>? metrics;

  /// The monitored resource type.
  ///
  /// The type must be defined in Service.monitored_resources section.
  core.String? monitoredResource;

  $BillingDestination({
    this.metrics,
    this.monitoredResource,
  });

  $BillingDestination.fromJson(core.Map _json)
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
/// - documentai:v1 : GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata
/// - documentai:v1 : GoogleCloudDocumentaiV1CommonOperationMetadata
/// - documentai:v1 : GoogleCloudDocumentaiV1beta3CommonOperationMetadata
class $CommonOperationMetadata {
  /// The creation time of the operation.
  core.String? createTime;

  /// The state of the operation.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Unspecified state.
  /// - "RUNNING" : Operation is still running.
  /// - "CANCELLING" : Operation is being cancelled.
  /// - "SUCCEEDED" : Operation succeeded.
  /// - "FAILED" : Operation failed.
  /// - "CANCELLED" : Operation is cancelled.
  core.String? state;

  /// A message providing more details about the current state of processing.
  core.String? stateMessage;

  /// The last update time of the operation.
  core.String? updateTime;

  $CommonOperationMetadata({
    this.createTime,
    this.state,
    this.stateMessage,
    this.updateTime,
  });

  $CommonOperationMetadata.fromJson(core.Map _json)
      : this(
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
          stateMessage: _json.containsKey('stateMessage')
              ? _json['stateMessage'] as core.String
              : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (state != null) 'state': state!,
        if (stateMessage != null) 'stateMessage': stateMessage!,
        if (updateTime != null) 'updateTime': updateTime!,
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
/// - serviceconsumermanagement:v1 : ContextRule
/// - servicemanagement:v1 : ContextRule
/// - servicenetworking:v1 : ContextRule
/// - serviceusage:v1 : ContextRule
class $ContextRule {
  /// A list of full type names or extension IDs of extensions allowed in grpc
  /// side channel from client to backend.
  core.List<core.String>? allowedRequestExtensions;

  /// A list of full type names or extension IDs of extensions allowed in grpc
  /// side channel from backend to client.
  core.List<core.String>? allowedResponseExtensions;

  /// A list of full type names of provided contexts.
  core.List<core.String>? provided;

  /// A list of full type names of requested contexts.
  core.List<core.String>? requested;

  /// Selects the methods to which this rule applies.
  ///
  /// Refer to selector for syntax details.
  core.String? selector;

  $ContextRule({
    this.allowedRequestExtensions,
    this.allowedResponseExtensions,
    this.provided,
    this.requested,
    this.selector,
  });

  $ContextRule.fromJson(core.Map _json)
      : this(
          allowedRequestExtensions:
              _json.containsKey('allowedRequestExtensions')
                  ? (_json['allowedRequestExtensions'] as core.List)
                      .map((value) => value as core.String)
                      .toList()
                  : null,
          allowedResponseExtensions:
              _json.containsKey('allowedResponseExtensions')
                  ? (_json['allowedResponseExtensions'] as core.List)
                      .map((value) => value as core.String)
                      .toList()
                  : null,
          provided: _json.containsKey('provided')
              ? (_json['provided'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          requested: _json.containsKey('requested')
              ? (_json['requested'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          selector: _json.containsKey('selector')
              ? _json['selector'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowedRequestExtensions != null)
          'allowedRequestExtensions': allowedRequestExtensions!,
        if (allowedResponseExtensions != null)
          'allowedResponseExtensions': allowedResponseExtensions!,
        if (provided != null) 'provided': provided!,
        if (requested != null) 'requested': requested!,
        if (selector != null) 'selector': selector!,
      };
}

/// Used by:
///
/// - dialogflow:v2 : GoogleCloudDialogflowCxV3ContinuousTestResult
/// - dialogflow:v2 : GoogleCloudDialogflowCxV3beta1ContinuousTestResult
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3ContinuousTestResult
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3beta1ContinuousTestResult
class $ContinuousTestResult {
  /// The resource name for the continuous test result.
  ///
  /// Format:
  /// `projects//locations//agents//environments//continuousTestResults/`.
  core.String? name;

  /// The result of this continuous test run, i.e. whether all the tests in this
  /// continuous test run pass or not.
  /// Possible string values are:
  /// - "AGGREGATED_TEST_RESULT_UNSPECIFIED" : Not specified. Should never be
  /// used.
  /// - "PASSED" : All the tests passed.
  /// - "FAILED" : At least one test did not pass.
  core.String? result;

  /// Time when the continuous testing run starts.
  core.String? runTime;

  /// A list of individual test case results names in this continuous test run.
  core.List<core.String>? testCaseResults;

  $ContinuousTestResult({
    this.name,
    this.result,
    this.runTime,
    this.testCaseResults,
  });

  $ContinuousTestResult.fromJson(core.Map _json)
      : this(
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          result: _json.containsKey('result')
              ? _json['result'] as core.String
              : null,
          runTime: _json.containsKey('runTime')
              ? _json['runTime'] as core.String
              : null,
          testCaseResults: _json.containsKey('testCaseResults')
              ? (_json['testCaseResults'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (result != null) 'result': result!,
        if (runTime != null) 'runTime': runTime!,
        if (testCaseResults != null) 'testCaseResults': testCaseResults!,
      };
}

/// Used by:
///
/// - serviceconsumermanagement:v1 : Control
/// - servicemanagement:v1 : Control
/// - servicenetworking:v1 : Control
/// - serviceusage:v1 : Control
class $Control {
  /// The service control environment to use.
  ///
  /// If empty, no control plane feature (like quota and billing) will be
  /// enabled.
  core.String? environment;

  $Control({
    this.environment,
  });

  $Control.fromJson(core.Map _json)
      : this(
          environment: _json.containsKey('environment')
              ? _json['environment'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (environment != null) 'environment': environment!,
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
/// - contactcenterinsights:v1 : GoogleCloudContactcenterinsightsV1CreateAnalysisOperationMetadata
/// - contactcenterinsights:v1 : GoogleCloudContactcenterinsightsV1alpha1CreateAnalysisOperationMetadata
class $CreateAnalysisOperationMetadata {
  /// The Conversation that this Analysis Operation belongs to.
  ///
  /// Output only.
  core.String? conversation;

  /// The time the operation was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The time the operation finished running.
  ///
  /// Output only.
  core.String? endTime;

  $CreateAnalysisOperationMetadata({
    this.conversation,
    this.createTime,
    this.endTime,
  });

  $CreateAnalysisOperationMetadata.fromJson(core.Map _json)
      : this(
          conversation: _json.containsKey('conversation')
              ? _json['conversation'] as core.String
              : null,
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          endTime: _json.containsKey('endTime')
              ? _json['endTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (conversation != null) 'conversation': conversation!,
        if (createTime != null) 'createTime': createTime!,
        if (endTime != null) 'endTime': endTime!,
      };
}

/// Used by:
///
/// - cloudresourcemanager:v1 : CreateFolderMetadata
/// - cloudresourcemanager:v2 : CreateFolderMetadata
/// - cloudresourcemanager:v3 : CreateFolderMetadata
class $CreateFolderMetadata {
  /// The display name of the folder.
  core.String? displayName;

  /// The resource name of the folder or organization we are creating the folder
  /// under.
  core.String? parent;

  $CreateFolderMetadata({
    this.displayName,
    this.parent,
  });

  $CreateFolderMetadata.fromJson(core.Map _json)
      : this(
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          parent: _json.containsKey('parent')
              ? _json['parent'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (parent != null) 'parent': parent!,
      };
}

/// Used by:
///
/// - cloudresourcemanager:v1 : CreateProjectMetadata
/// - cloudresourcemanager:v2 : CreateProjectMetadata
/// - cloudresourcemanager:v3 : CreateProjectMetadata
class $CreateProjectMetadata {
  /// Creation time of the project creation workflow.
  core.String? createTime;

  /// True if the project can be retrieved using `GetProject`.
  ///
  /// No other operations on the project are guaranteed to work until the
  /// project creation is complete.
  core.bool? gettable;

  /// True if the project creation process is complete.
  core.bool? ready;

  $CreateProjectMetadata({
    this.createTime,
    this.gettable,
    this.ready,
  });

  $CreateProjectMetadata.fromJson(core.Map _json)
      : this(
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          gettable: _json.containsKey('gettable')
              ? _json['gettable'] as core.bool
              : null,
          ready:
              _json.containsKey('ready') ? _json['ready'] as core.bool : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (gettable != null) 'gettable': gettable!,
        if (ready != null) 'ready': ready!,
      };
}

/// Used by:
///
/// - dialogflow:v2 : GoogleCloudDialogflowCxV3CreateVersionOperationMetadata
/// - dialogflow:v2 : GoogleCloudDialogflowCxV3beta1CreateVersionOperationMetadata
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3CreateVersionOperationMetadata
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3beta1CreateVersionOperationMetadata
class $CreateVersionOperationMetadata {
  /// Name of the created version.
  ///
  /// Format: `projects//locations//agents//flows//versions/`.
  core.String? version;

  $CreateVersionOperationMetadata({
    this.version,
  });

  $CreateVersionOperationMetadata.fromJson(core.Map _json)
      : this(
          version: _json.containsKey('version')
              ? _json['version'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (version != null) 'version': version!,
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
/// - serviceconsumermanagement:v1 : CustomErrorRule
/// - servicemanagement:v1 : CustomErrorRule
/// - servicenetworking:v1 : CustomErrorRule
/// - serviceusage:v1 : CustomErrorRule
class $CustomErrorRule {
  /// Mark this message as possible payload in error response.
  ///
  /// Otherwise, objects of this type will be filtered when they appear in error
  /// payload.
  core.bool? isErrorType;

  /// Selects messages to which this rule applies.
  ///
  /// Refer to selector for syntax details.
  core.String? selector;

  $CustomErrorRule({
    this.isErrorType,
    this.selector,
  });

  $CustomErrorRule.fromJson(core.Map _json)
      : this(
          isErrorType: _json.containsKey('isErrorType')
              ? _json['isErrorType'] as core.bool
              : null,
          selector: _json.containsKey('selector')
              ? _json['selector'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (isErrorType != null) 'isErrorType': isErrorType!,
        if (selector != null) 'selector': selector!,
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
/// - serviceconsumermanagement:v1 : CustomHttpPattern
/// - servicemanagement:v1 : CustomHttpPattern
/// - servicenetworking:v1 : CustomHttpPattern
/// - serviceusage:v1 : CustomHttpPattern
class $CustomHttpPattern {
  /// The name of this custom HTTP verb.
  core.String? kind;

  /// The path matched by this custom verb.
  core.String? path;

  $CustomHttpPattern({
    this.kind,
    this.path,
  });

  $CustomHttpPattern.fromJson(core.Map _json)
      : this(
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          path: _json.containsKey('path') ? _json['path'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (path != null) 'path': path!,
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
/// - cloudchannel:v1 : GoogleCloudChannelV1CustomerEvent
/// - cloudchannel:v1 : GoogleCloudChannelV1alpha1CustomerEvent
class $CustomerEvent {
  /// Resource name of the customer.
  ///
  /// Format: accounts/{account_id}/customers/{customer_id}
  core.String? customer;

  /// Type of event which happened on the customer.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Default value. This state doesn't show unless an
  /// error occurs.
  /// - "PRIMARY_DOMAIN_CHANGED" : Primary domain for customer was changed.
  /// - "PRIMARY_DOMAIN_VERIFIED" : Primary domain of the customer has been
  /// verified.
  core.String? eventType;

  $CustomerEvent({
    this.customer,
    this.eventType,
  });

  $CustomerEvent.fromJson(core.Map _json)
      : this(
          customer: _json.containsKey('customer')
              ? _json['customer'] as core.String
              : null,
          eventType: _json.containsKey('eventType')
              ? _json['eventType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (customer != null) 'customer': customer!,
        if (eventType != null) 'eventType': eventType!,
      };
}

/// Used by:
///
/// - admob:v1 : Date
/// - adsense:v2 : Date
/// - androidmanagement:v1 : Date
/// - billingbudgets:v1 : GoogleTypeDate
/// - classroom:v1 : Date
/// - cloudasset:v1 : Date
/// - composer:v1 : Date
/// - content:v2.1 : Date
/// - displayvideo:v1 : Date
/// - dlp:v2 : GoogleTypeDate
/// - documentai:v1 : GoogleTypeDate
/// - file:v1 : Date
/// - managedidentities:v1 : Date
/// - memcache:v1 : Date
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
/// - contactcenterinsights:v1 : GoogleCloudContactcenterinsightsV1DeleteIssueModelRequest
/// - contactcenterinsights:v1 : GoogleCloudContactcenterinsightsV1alpha1DeleteIssueModelRequest
class $DeleteIssueModelRequest {
  /// The name of the issue model to delete.
  ///
  /// Required.
  core.String? name;

  $DeleteIssueModelRequest({
    this.name,
  });

  $DeleteIssueModelRequest.fromJson(core.Map _json)
      : this(
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
      };
}

/// Used by:
///
/// - contactcenterinsights:v1 : GoogleCloudContactcenterinsightsV1DeployIssueModelRequest
/// - contactcenterinsights:v1 : GoogleCloudContactcenterinsightsV1alpha1DeployIssueModelRequest
class $DeployIssueModelRequest {
  /// The issue model to deploy.
  ///
  /// Required.
  core.String? name;

  $DeployIssueModelRequest({
    this.name,
  });

  $DeployIssueModelRequest.fromJson(core.Map _json)
      : this(
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
      };
}

/// Used by:
///
/// - videointelligence:v1 : GoogleCloudVideointelligenceV1_DetectedAttribute
/// - videointelligence:v1 : GoogleCloudVideointelligenceV1beta2_DetectedAttribute
/// - videointelligence:v1 : GoogleCloudVideointelligenceV1p1beta1_DetectedAttribute
/// - videointelligence:v1 : GoogleCloudVideointelligenceV1p2beta1_DetectedAttribute
/// - videointelligence:v1 : GoogleCloudVideointelligenceV1p3beta1_DetectedAttribute
class $DetectedAttribute {
  /// Detected attribute confidence.
  ///
  /// Range \[0, 1\].
  core.double? confidence;

  /// The name of the attribute, for example, glasses, dark_glasses, mouth_open.
  ///
  /// A full list of supported type names will be provided in the document.
  core.String? name;

  /// Text value of the detection result.
  ///
  /// For example, the value for "HairColor" can be "black", "blonde", etc.
  core.String? value;

  $DetectedAttribute({
    this.confidence,
    this.name,
    this.value,
  });

  $DetectedAttribute.fromJson(core.Map _json)
      : this(
          confidence: _json.containsKey('confidence')
              ? (_json['confidence'] as core.num).toDouble()
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          value:
              _json.containsKey('value') ? _json['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (confidence != null) 'confidence': confidence!,
        if (name != null) 'name': name!,
        if (value != null) 'value': value!,
      };
}

/// Used by:
///
/// - vision:v1 : DetectedBreak
/// - vision:v1 : GoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak
/// - vision:v1 : GoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak
/// - vision:v1 : GoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak
/// - vision:v1 : GoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak
class $DetectedBreak {
  /// True if break prepends the element.
  core.bool? isPrefix;

  /// Detected break type.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown break label type.
  /// - "SPACE" : Regular space.
  /// - "SURE_SPACE" : Sure space (very wide).
  /// - "EOL_SURE_SPACE" : Line-wrapping break.
  /// - "HYPHEN" : End-line hyphen that is not present in text; does not
  /// co-occur with `SPACE`, `LEADER_SPACE`, or `LINE_BREAK`.
  /// - "LINE_BREAK" : Line break that ends a paragraph.
  core.String? type;

  $DetectedBreak({
    this.isPrefix,
    this.type,
  });

  $DetectedBreak.fromJson(core.Map _json)
      : this(
          isPrefix: _json.containsKey('isPrefix')
              ? _json['isPrefix'] as core.bool
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (isPrefix != null) 'isPrefix': isPrefix!,
        if (type != null) 'type': type!,
      };
}

/// Used by:
///
/// - documentai:v1 : GoogleCloudDocumentaiV1DocumentPageDetectedLanguage
/// - documentai:v1 : GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage
/// - documentai:v1 : GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage
/// - vision:v1 : DetectedLanguage
/// - vision:v1 : GoogleCloudVisionV1p1beta1TextAnnotationDetectedLanguage
/// - vision:v1 : GoogleCloudVisionV1p2beta1TextAnnotationDetectedLanguage
/// - vision:v1 : GoogleCloudVisionV1p3beta1TextAnnotationDetectedLanguage
/// - vision:v1 : GoogleCloudVisionV1p4beta1TextAnnotationDetectedLanguage
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
/// - documentai:v1 : GoogleCloudDocumentaiV1DocumentEntityRelation
/// - documentai:v1 : GoogleCloudDocumentaiV1beta1DocumentEntityRelation
/// - documentai:v1 : GoogleCloudDocumentaiV1beta2DocumentEntityRelation
class $DocumentEntityRelation {
  /// Object entity id.
  core.String? objectId;

  /// Relationship description.
  core.String? relation;

  /// Subject entity id.
  core.String? subjectId;

  $DocumentEntityRelation({
    this.objectId,
    this.relation,
    this.subjectId,
  });

  $DocumentEntityRelation.fromJson(core.Map _json)
      : this(
          objectId: _json.containsKey('objectId')
              ? _json['objectId'] as core.String
              : null,
          relation: _json.containsKey('relation')
              ? _json['relation'] as core.String
              : null,
          subjectId: _json.containsKey('subjectId')
              ? _json['subjectId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (objectId != null) 'objectId': objectId!,
        if (relation != null) 'relation': relation!,
        if (subjectId != null) 'subjectId': subjectId!,
      };
}

/// Used by:
///
/// - documentai:v1 : GoogleCloudDocumentaiV1DocumentPageDimension
/// - documentai:v1 : GoogleCloudDocumentaiV1beta1DocumentPageDimension
/// - documentai:v1 : GoogleCloudDocumentaiV1beta2DocumentPageDimension
class $DocumentPageDimension {
  /// Page height.
  core.double? height;

  /// Dimension unit.
  core.String? unit;

  /// Page width.
  core.double? width;

  $DocumentPageDimension({
    this.height,
    this.unit,
    this.width,
  });

  $DocumentPageDimension.fromJson(core.Map _json)
      : this(
          height: _json.containsKey('height')
              ? (_json['height'] as core.num).toDouble()
              : null,
          unit: _json.containsKey('unit') ? _json['unit'] as core.String : null,
          width: _json.containsKey('width')
              ? (_json['width'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (height != null) 'height': height!,
        if (unit != null) 'unit': unit!,
        if (width != null) 'width': width!,
      };
}

/// Used by:
///
/// - documentai:v1 : GoogleCloudDocumentaiV1DocumentPageImage
/// - documentai:v1 : GoogleCloudDocumentaiV1beta1DocumentPageImage
/// - documentai:v1 : GoogleCloudDocumentaiV1beta2DocumentPageImage
class $DocumentPageImage {
  /// Raw byte content of the image.
  core.String? content;
  core.List<core.int> get contentAsBytes => convert.base64.decode(content!);

  set contentAsBytes(core.List<core.int> _bytes) {
    content =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Height of the image in pixels.
  core.int? height;

  /// Encoding mime type for the image.
  core.String? mimeType;

  /// Width of the image in pixels.
  core.int? width;

  $DocumentPageImage({
    this.content,
    this.height,
    this.mimeType,
    this.width,
  });

  $DocumentPageImage.fromJson(core.Map _json)
      : this(
          content: _json.containsKey('content')
              ? _json['content'] as core.String
              : null,
          height:
              _json.containsKey('height') ? _json['height'] as core.int : null,
          mimeType: _json.containsKey('mimeType')
              ? _json['mimeType'] as core.String
              : null,
          width: _json.containsKey('width') ? _json['width'] as core.int : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (content != null) 'content': content!,
        if (height != null) 'height': height!,
        if (mimeType != null) 'mimeType': mimeType!,
        if (width != null) 'width': width!,
      };
}

/// Used by:
///
/// - documentai:v1 : GoogleCloudDocumentaiV1DocumentPageMatrix
/// - documentai:v1 : GoogleCloudDocumentaiV1beta1DocumentPageMatrix
/// - documentai:v1 : GoogleCloudDocumentaiV1beta2DocumentPageMatrix
class $DocumentPageMatrix {
  /// Number of columns in the matrix.
  core.int? cols;

  /// The matrix data.
  core.String? data;
  core.List<core.int> get dataAsBytes => convert.base64.decode(data!);

  set dataAsBytes(core.List<core.int> _bytes) {
    data =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Number of rows in the matrix.
  core.int? rows;

  /// This encodes information about what data type the matrix uses.
  ///
  /// For example, 0 (CV_8U) is an unsigned 8-bit image. For the full list of
  /// OpenCV primitive data types, please refer to
  /// https://docs.opencv.org/4.3.0/d1/d1b/group__core__hal__interface.html
  core.int? type;

  $DocumentPageMatrix({
    this.cols,
    this.data,
    this.rows,
    this.type,
  });

  $DocumentPageMatrix.fromJson(core.Map _json)
      : this(
          cols: _json.containsKey('cols') ? _json['cols'] as core.int : null,
          data: _json.containsKey('data') ? _json['data'] as core.String : null,
          rows: _json.containsKey('rows') ? _json['rows'] as core.int : null,
          type: _json.containsKey('type') ? _json['type'] as core.int : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cols != null) 'cols': cols!,
        if (data != null) 'data': data!,
        if (rows != null) 'rows': rows!,
        if (type != null) 'type': type!,
      };
}

/// Used by:
///
/// - documentai:v1 : GoogleCloudDocumentaiV1DocumentPageTokenDetectedBreak
/// - documentai:v1 : GoogleCloudDocumentaiV1beta1DocumentPageTokenDetectedBreak
/// - documentai:v1 : GoogleCloudDocumentaiV1beta2DocumentPageTokenDetectedBreak
class $DocumentPageTokenDetectedBreak {
  /// Detected break type.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Unspecified break type.
  /// - "SPACE" : A single whitespace.
  /// - "WIDE_SPACE" : A wider whitespace.
  /// - "HYPHEN" : A hyphen that indicates that a token has been split across
  /// lines.
  core.String? type;

  $DocumentPageTokenDetectedBreak({
    this.type,
  });

  $DocumentPageTokenDetectedBreak.fromJson(core.Map _json)
      : this(
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (type != null) 'type': type!,
      };
}

/// Used by:
///
/// - documentai:v1 : GoogleCloudDocumentaiV1DocumentProvenanceParent
/// - documentai:v1 : GoogleCloudDocumentaiV1beta1DocumentProvenanceParent
/// - documentai:v1 : GoogleCloudDocumentaiV1beta2DocumentProvenanceParent
class $DocumentProvenanceParent {
  /// The id of the parent provenance.
  core.int? id;

  /// The index of the parent item in the corresponding item list (eg.
  ///
  /// list of entities, properties within entities, etc.) on parent revision.
  core.int? index;

  /// The index of the \[Document.revisions\] identifying the parent revision.
  core.int? revision;

  $DocumentProvenanceParent({
    this.id,
    this.index,
    this.revision,
  });

  $DocumentProvenanceParent.fromJson(core.Map _json)
      : this(
          id: _json.containsKey('id') ? _json['id'] as core.int : null,
          index: _json.containsKey('index') ? _json['index'] as core.int : null,
          revision: _json.containsKey('revision')
              ? _json['revision'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
        if (index != null) 'index': index!,
        if (revision != null) 'revision': revision!,
      };
}

/// Used by:
///
/// - documentai:v1 : GoogleCloudDocumentaiV1DocumentRevisionHumanReview
/// - documentai:v1 : GoogleCloudDocumentaiV1beta1DocumentRevisionHumanReview
/// - documentai:v1 : GoogleCloudDocumentaiV1beta2DocumentRevisionHumanReview
class $DocumentRevisionHumanReview {
  /// Human review state.
  ///
  /// e.g. `requested`, `succeeded`, `rejected`.
  core.String? state;

  /// A message providing more details about the current state of processing.
  ///
  /// For example, the rejection reason when the state is `rejected`.
  core.String? stateMessage;

  $DocumentRevisionHumanReview({
    this.state,
    this.stateMessage,
  });

  $DocumentRevisionHumanReview.fromJson(core.Map _json)
      : this(
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
          stateMessage: _json.containsKey('stateMessage')
              ? _json['stateMessage'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (state != null) 'state': state!,
        if (stateMessage != null) 'stateMessage': stateMessage!,
      };
}

/// Used by:
///
/// - documentai:v1 : GoogleCloudDocumentaiV1DocumentShardInfo
/// - documentai:v1 : GoogleCloudDocumentaiV1beta1DocumentShardInfo
/// - documentai:v1 : GoogleCloudDocumentaiV1beta2DocumentShardInfo
class $DocumentShardInfo {
  /// Total number of shards.
  core.String? shardCount;

  /// The 0-based index of this shard.
  core.String? shardIndex;

  /// The index of the first character in Document.text in the overall document
  /// global text.
  core.String? textOffset;

  $DocumentShardInfo({
    this.shardCount,
    this.shardIndex,
    this.textOffset,
  });

  $DocumentShardInfo.fromJson(core.Map _json)
      : this(
          shardCount: _json.containsKey('shardCount')
              ? _json['shardCount'] as core.String
              : null,
          shardIndex: _json.containsKey('shardIndex')
              ? _json['shardIndex'] as core.String
              : null,
          textOffset: _json.containsKey('textOffset')
              ? _json['textOffset'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (shardCount != null) 'shardCount': shardCount!,
        if (shardIndex != null) 'shardIndex': shardIndex!,
        if (textOffset != null) 'textOffset': textOffset!,
      };
}

/// Used by:
///
/// - documentai:v1 : GoogleCloudDocumentaiV1DocumentStyleFontSize
/// - documentai:v1 : GoogleCloudDocumentaiV1beta1DocumentStyleFontSize
/// - documentai:v1 : GoogleCloudDocumentaiV1beta2DocumentStyleFontSize
class $DocumentStyleFontSize {
  /// Font size for the text.
  core.double? size;

  /// Unit for the font size.
  ///
  /// Follows CSS naming (in, px, pt, etc.).
  core.String? unit;

  $DocumentStyleFontSize({
    this.size,
    this.unit,
  });

  $DocumentStyleFontSize.fromJson(core.Map _json)
      : this(
          size: _json.containsKey('size')
              ? (_json['size'] as core.num).toDouble()
              : null,
          unit: _json.containsKey('unit') ? _json['unit'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (size != null) 'size': size!,
        if (unit != null) 'unit': unit!,
      };
}

/// Used by:
///
/// - documentai:v1 : GoogleCloudDocumentaiV1DocumentTextAnchorTextSegment
/// - documentai:v1 : GoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment
/// - documentai:v1 : GoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment
class $DocumentTextAnchorTextSegment {
  /// TextSegment half open end UTF-8 char index in the Document.text.
  core.String? endIndex;

  /// TextSegment start UTF-8 char index in the Document.text.
  core.String? startIndex;

  $DocumentTextAnchorTextSegment({
    this.endIndex,
    this.startIndex,
  });

  $DocumentTextAnchorTextSegment.fromJson(core.Map _json)
      : this(
          endIndex: _json.containsKey('endIndex')
              ? _json['endIndex'] as core.String
              : null,
          startIndex: _json.containsKey('startIndex')
              ? _json['startIndex'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (endIndex != null) 'endIndex': endIndex!,
        if (startIndex != null) 'startIndex': startIndex!,
      };
}

/// Used by:
///
/// - serviceconsumermanagement:v1 : DocumentationRule
/// - servicemanagement:v1 : DocumentationRule
/// - servicenetworking:v1 : DocumentationRule
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
/// - dialogflow:v2 : GoogleCloudDialogflowCxV3DtmfInput
/// - dialogflow:v2 : GoogleCloudDialogflowCxV3beta1DtmfInput
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3DtmfInput
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3beta1DtmfInput
class $DtmfInput {
  /// The dtmf digits.
  core.String? digits;

  /// The finish digit (if any).
  core.String? finishDigit;

  $DtmfInput({
    this.digits,
    this.finishDigit,
  });

  $DtmfInput.fromJson(core.Map _json)
      : this(
          digits: _json.containsKey('digits')
              ? _json['digits'] as core.String
              : null,
          finishDigit: _json.containsKey('finishDigit')
              ? _json['finishDigit'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (digits != null) 'digits': digits!,
        if (finishDigit != null) 'finishDigit': finishDigit!,
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
/// - accesscontextmanager:v1 : AccessContextManagerOperationMetadata
/// - accesscontextmanager:v1 : CancelOperationRequest
/// - accesscontextmanager:v1 : Empty
/// - accesscontextmanager:v1 : GcpUserAccessBindingOperationMetadata
/// - admin:directory_v1 : Empty
/// - androiddeviceprovisioning:v1 : Empty
/// - androidmanagement:v1 : Empty
/// - androidmanagement:v1 : IssueCommandResponse
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
/// - artifactregistry:v1 : CancelOperationRequest
/// - artifactregistry:v1 : Empty
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
/// - baremetalsolution:v1 : ResetInstanceRequest
/// - baremetalsolution:v1 : ResetInstanceResponse
/// - bigquerydatatransfer:v1 : CheckValidCredsRequest
/// - bigquerydatatransfer:v1 : Empty
/// - bigqueryreservation:v1 : Empty
/// - bigtableadmin:v2 : Empty
/// - bigtableadmin:v2 : GenerateConsistencyTokenRequest
/// - bigtableadmin:v2 : UpdateAppProfileMetadata
/// - billingbudgets:v1 : GoogleCloudBillingBudgetsV1LastPeriodAmount
/// - billingbudgets:v1 : GoogleProtobufEmpty
/// - binaryauthorization:v1 : Empty
/// - books:v1 : Empty
/// - chat:v1 : Empty
/// - chat:v1 : GoogleAppsCardV1Divider
/// - chromepolicy:v1 : GoogleProtobufEmpty
/// - classroom:v1 : Empty
/// - classroom:v1 : ReclaimStudentSubmissionRequest
/// - classroom:v1 : ReturnStudentSubmissionRequest
/// - classroom:v1 : TurnInStudentSubmissionRequest
/// - cloudasset:v1 : AnalyzeIamPolicyLongrunningResponse
/// - cloudasset:v1 : Empty
/// - cloudasset:v1 : GoogleCloudOrgpolicyV1RestoreDefault
/// - cloudbuild:v1 : CancelOperationRequest
/// - cloudbuild:v1 : Empty
/// - cloudbuild:v1 : ReceiveTriggerWebhookResponse
/// - cloudchannel:v1 : GoogleLongrunningCancelOperationRequest
/// - cloudchannel:v1 : GoogleProtobufEmpty
/// - clouddebugger:v2 : Empty
/// - clouddebugger:v2 : UpdateActiveBreakpointResponse
/// - cloudfunctions:v1 : GenerateUploadUrlRequest
/// - cloudfunctions:v1 : Retry
/// - cloudidentity:v1 : CreateGroupMetadata
/// - cloudidentity:v1 : CreateMembershipMetadata
/// - cloudidentity:v1 : DeleteGroupMetadata
/// - cloudidentity:v1 : DeleteMembershipMetadata
/// - cloudidentity:v1 : GetMembershipGraphMetadata
/// - cloudidentity:v1 : GoogleAppsCloudidentityDevicesV1ApproveDeviceUserMetadata
/// - cloudidentity:v1 : GoogleAppsCloudidentityDevicesV1BlockDeviceUserMetadata
/// - cloudidentity:v1 : GoogleAppsCloudidentityDevicesV1CancelWipeDeviceMetadata
/// - cloudidentity:v1 : GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserMetadata
/// - cloudidentity:v1 : GoogleAppsCloudidentityDevicesV1CreateDeviceMetadata
/// - cloudidentity:v1 : GoogleAppsCloudidentityDevicesV1DeleteDeviceMetadata
/// - cloudidentity:v1 : GoogleAppsCloudidentityDevicesV1DeleteDeviceUserMetadata
/// - cloudidentity:v1 : GoogleAppsCloudidentityDevicesV1ListEndpointAppsMetadata
/// - cloudidentity:v1 : GoogleAppsCloudidentityDevicesV1SignoutDeviceUserMetadata
/// - cloudidentity:v1 : GoogleAppsCloudidentityDevicesV1UpdateClientStateMetadata
/// - cloudidentity:v1 : GoogleAppsCloudidentityDevicesV1UpdateDeviceMetadata
/// - cloudidentity:v1 : GoogleAppsCloudidentityDevicesV1WipeDeviceMetadata
/// - cloudidentity:v1 : GoogleAppsCloudidentityDevicesV1WipeDeviceUserMetadata
/// - cloudidentity:v1 : UpdateGroupMetadata
/// - cloudidentity:v1 : UpdateMembershipMetadata
/// - cloudiot:v1 : BindDeviceToGatewayResponse
/// - cloudiot:v1 : Empty
/// - cloudiot:v1 : SendCommandToDeviceResponse
/// - cloudiot:v1 : UnbindDeviceFromGatewayResponse
/// - cloudkms:v1 : DestroyCryptoKeyVersionRequest
/// - cloudkms:v1 : RestoreCryptoKeyVersionRequest
/// - cloudresourcemanager:v1 : BooleanConstraint
/// - cloudresourcemanager:v1 : CreateTagBindingMetadata
/// - cloudresourcemanager:v1 : CreateTagKeyMetadata
/// - cloudresourcemanager:v1 : CreateTagValueMetadata
/// - cloudresourcemanager:v1 : DeleteFolderMetadata
/// - cloudresourcemanager:v1 : DeleteOrganizationMetadata
/// - cloudresourcemanager:v1 : DeleteProjectMetadata
/// - cloudresourcemanager:v1 : DeleteTagBindingMetadata
/// - cloudresourcemanager:v1 : DeleteTagKeyMetadata
/// - cloudresourcemanager:v1 : DeleteTagValueMetadata
/// - cloudresourcemanager:v1 : Empty
/// - cloudresourcemanager:v1 : GetAncestryRequest
/// - cloudresourcemanager:v1 : MoveProjectMetadata
/// - cloudresourcemanager:v1 : RestoreDefault
/// - cloudresourcemanager:v1 : UndeleteFolderMetadata
/// - cloudresourcemanager:v1 : UndeleteOrganizationMetadata
/// - cloudresourcemanager:v1 : UndeleteProjectMetadata
/// - cloudresourcemanager:v1 : UndeleteProjectRequest
/// - cloudresourcemanager:v1 : UpdateFolderMetadata
/// - cloudresourcemanager:v1 : UpdateProjectMetadata
/// - cloudresourcemanager:v1 : UpdateTagKeyMetadata
/// - cloudresourcemanager:v1 : UpdateTagValueMetadata
/// - cloudresourcemanager:v2 : CreateTagBindingMetadata
/// - cloudresourcemanager:v2 : CreateTagKeyMetadata
/// - cloudresourcemanager:v2 : CreateTagValueMetadata
/// - cloudresourcemanager:v2 : DeleteFolderMetadata
/// - cloudresourcemanager:v2 : DeleteOrganizationMetadata
/// - cloudresourcemanager:v2 : DeleteProjectMetadata
/// - cloudresourcemanager:v2 : DeleteTagBindingMetadata
/// - cloudresourcemanager:v2 : DeleteTagKeyMetadata
/// - cloudresourcemanager:v2 : DeleteTagValueMetadata
/// - cloudresourcemanager:v2 : MoveProjectMetadata
/// - cloudresourcemanager:v2 : UndeleteFolderMetadata
/// - cloudresourcemanager:v2 : UndeleteFolderRequest
/// - cloudresourcemanager:v2 : UndeleteOrganizationMetadata
/// - cloudresourcemanager:v2 : UndeleteProjectMetadata
/// - cloudresourcemanager:v2 : UpdateFolderMetadata
/// - cloudresourcemanager:v2 : UpdateProjectMetadata
/// - cloudresourcemanager:v2 : UpdateTagKeyMetadata
/// - cloudresourcemanager:v2 : UpdateTagValueMetadata
/// - cloudresourcemanager:v3 : CreateTagBindingMetadata
/// - cloudresourcemanager:v3 : CreateTagKeyMetadata
/// - cloudresourcemanager:v3 : CreateTagValueMetadata
/// - cloudresourcemanager:v3 : DeleteFolderMetadata
/// - cloudresourcemanager:v3 : DeleteOrganizationMetadata
/// - cloudresourcemanager:v3 : DeleteProjectMetadata
/// - cloudresourcemanager:v3 : DeleteTagBindingMetadata
/// - cloudresourcemanager:v3 : DeleteTagKeyMetadata
/// - cloudresourcemanager:v3 : DeleteTagValueMetadata
/// - cloudresourcemanager:v3 : Empty
/// - cloudresourcemanager:v3 : MoveProjectMetadata
/// - cloudresourcemanager:v3 : UndeleteFolderMetadata
/// - cloudresourcemanager:v3 : UndeleteFolderRequest
/// - cloudresourcemanager:v3 : UndeleteOrganizationMetadata
/// - cloudresourcemanager:v3 : UndeleteProjectMetadata
/// - cloudresourcemanager:v3 : UndeleteProjectRequest
/// - cloudresourcemanager:v3 : UpdateFolderMetadata
/// - cloudresourcemanager:v3 : UpdateProjectMetadata
/// - cloudresourcemanager:v3 : UpdateTagKeyMetadata
/// - cloudresourcemanager:v3 : UpdateTagValueMetadata
/// - cloudscheduler:v1 : Empty
/// - cloudscheduler:v1 : PauseJobRequest
/// - cloudscheduler:v1 : ResumeJobRequest
/// - cloudscheduler:v1 : RunJobRequest
/// - cloudsearch:v1 : InitializeCustomerRequest
/// - cloudsearch:v1 : QuerySuggestion
/// - cloudshell:v1 : AddPublicKeyMetadata
/// - cloudshell:v1 : AuthorizeEnvironmentMetadata
/// - cloudshell:v1 : AuthorizeEnvironmentResponse
/// - cloudshell:v1 : CancelOperationRequest
/// - cloudshell:v1 : CreateEnvironmentMetadata
/// - cloudshell:v1 : DeleteEnvironmentMetadata
/// - cloudshell:v1 : Empty
/// - cloudshell:v1 : RemovePublicKeyMetadata
/// - cloudshell:v1 : RemovePublicKeyResponse
/// - cloudtasks:v2 : Empty
/// - cloudtasks:v2 : PauseQueueRequest
/// - cloudtasks:v2 : PurgeQueueRequest
/// - cloudtasks:v2 : ResumeQueueRequest
/// - cloudtrace:v2 : Empty
/// - composer:v1 : Empty
/// - connectors:v1 : CancelOperationRequest
/// - connectors:v1 : Empty
/// - contactcenterinsights:v1 : GoogleCloudContactcenterinsightsV1DeployIssueModelResponse
/// - contactcenterinsights:v1 : GoogleCloudContactcenterinsightsV1ExportInsightsDataResponse
/// - contactcenterinsights:v1 : GoogleCloudContactcenterinsightsV1HoldData
/// - contactcenterinsights:v1 : GoogleCloudContactcenterinsightsV1InterruptionData
/// - contactcenterinsights:v1 : GoogleCloudContactcenterinsightsV1SilenceData
/// - contactcenterinsights:v1 : GoogleCloudContactcenterinsightsV1UndeployIssueModelResponse
/// - contactcenterinsights:v1 : GoogleCloudContactcenterinsightsV1alpha1DeployIssueModelResponse
/// - contactcenterinsights:v1 : GoogleCloudContactcenterinsightsV1alpha1ExportInsightsDataResponse
/// - contactcenterinsights:v1 : GoogleCloudContactcenterinsightsV1alpha1UndeployIssueModelResponse
/// - contactcenterinsights:v1 : GoogleProtobufEmpty
/// - container:v1 : Empty
/// - container:v1 : MeshCertificates
/// - content:v2.1 : ActivateBuyOnGoogleProgramRequest
/// - content:v2.1 : CaptureOrderRequest
/// - content:v2.1 : PauseBuyOnGoogleProgramRequest
/// - content:v2.1 : RequestReviewBuyOnGoogleProgramRequest
/// - datacatalog:v1 : Empty
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
/// - dataproc:v1 : CancelJobRequest
/// - dataproc:v1 : DiagnoseClusterRequest
/// - dataproc:v1 : Empty
/// - datastore:v1 : Empty
/// - datastore:v1 : ReadOnly
/// - datastore:v1 : ReserveIdsResponse
/// - datastore:v1 : RollbackResponse
/// - dialogflow:v2 : GoogleCloudDialogflowCxV3ExportTestCasesMetadata
/// - dialogflow:v2 : GoogleCloudDialogflowCxV3ResponseMessageEndInteraction
/// - dialogflow:v2 : GoogleCloudDialogflowCxV3RunTestCaseMetadata
/// - dialogflow:v2 : GoogleCloudDialogflowCxV3beta1ExportTestCasesMetadata
/// - dialogflow:v2 : GoogleCloudDialogflowCxV3beta1ResponseMessageEndInteraction
/// - dialogflow:v2 : GoogleCloudDialogflowCxV3beta1RunTestCaseMetadata
/// - dialogflow:v2 : GoogleCloudDialogflowV2CompleteConversationRequest
/// - dialogflow:v2 : GoogleCloudDialogflowV2TrainAgentRequest
/// - dialogflow:v2 : GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionShareLocation
/// - dialogflow:v2 : GoogleProtobufEmpty
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3ExportTestCasesMetadata
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3ResponseMessageEndInteraction
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3RunContinuousTestRequest
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3RunTestCaseMetadata
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3StartExperimentRequest
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3StopExperimentRequest
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3TrainFlowRequest
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3beta1ExportTestCasesMetadata
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3beta1ResponseMessageEndInteraction
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3beta1RunTestCaseMetadata
/// - dialogflow:v3 : GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionShareLocation
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
/// - documentai:v1 : GoogleCloudDocumentaiUiv1beta3BatchDeleteDocumentsResponse
/// - documentai:v1 : GoogleCloudDocumentaiUiv1beta3BatchMoveDocumentsResponse
/// - documentai:v1 : GoogleCloudDocumentaiUiv1beta3DeployProcessorVersionResponse
/// - documentai:v1 : GoogleCloudDocumentaiUiv1beta3DisableProcessorResponse
/// - documentai:v1 : GoogleCloudDocumentaiUiv1beta3EnableProcessorResponse
/// - documentai:v1 : GoogleCloudDocumentaiUiv1beta3ImportDocumentsResponse
/// - documentai:v1 : GoogleCloudDocumentaiUiv1beta3SetDefaultProcessorVersionResponse
/// - documentai:v1 : GoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionResponse
/// - documentai:v1 : GoogleCloudDocumentaiV1BatchProcessResponse
/// - documentai:v1 : GoogleCloudDocumentaiV1DeployProcessorVersionRequest
/// - documentai:v1 : GoogleCloudDocumentaiV1DeployProcessorVersionResponse
/// - documentai:v1 : GoogleCloudDocumentaiV1DisableProcessorRequest
/// - documentai:v1 : GoogleCloudDocumentaiV1DisableProcessorResponse
/// - documentai:v1 : GoogleCloudDocumentaiV1EnableProcessorRequest
/// - documentai:v1 : GoogleCloudDocumentaiV1EnableProcessorResponse
/// - documentai:v1 : GoogleCloudDocumentaiV1SetDefaultProcessorVersionResponse
/// - documentai:v1 : GoogleCloudDocumentaiV1UndeployProcessorVersionRequest
/// - documentai:v1 : GoogleCloudDocumentaiV1UndeployProcessorVersionResponse
/// - documentai:v1 : GoogleCloudDocumentaiV1beta3BatchProcessResponse
/// - documentai:v1 : GoogleCloudDocumentaiV1beta3DeployProcessorVersionResponse
/// - documentai:v1 : GoogleCloudDocumentaiV1beta3DisableProcessorResponse
/// - documentai:v1 : GoogleCloudDocumentaiV1beta3EnableProcessorResponse
/// - documentai:v1 : GoogleCloudDocumentaiV1beta3SetDefaultProcessorVersionResponse
/// - documentai:v1 : GoogleCloudDocumentaiV1beta3UndeployProcessorVersionResponse
/// - documentai:v1 : GoogleProtobufEmpty
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
/// - firestore:v1 : GoogleFirestoreAdminV1LocationMetadata
/// - firestore:v1 : GoogleLongrunningCancelOperationRequest
/// - gameservices:v1 : CancelOperationRequest
/// - gameservices:v1 : Empty
/// - gameservices:v1 : FetchDeploymentStateRequest
/// - gkehub:v1 : CancelOperationRequest
/// - gkehub:v1 : Empty
/// - healthcare:v1 : ArchiveUserDataMappingRequest
/// - healthcare:v1 : ArchiveUserDataMappingResponse
/// - healthcare:v1 : CancelOperationRequest
/// - healthcare:v1 : DeidentifySummary
/// - healthcare:v1 : Empty
/// - healthcare:v1 : ExportDicomDataResponse
/// - healthcare:v1 : ExportMessagesResponse
/// - healthcare:v1 : ExportResourcesResponse
/// - healthcare:v1 : GoogleCloudHealthcareV1DeidentifyDeidentifyDicomStoreSummary
/// - healthcare:v1 : GoogleCloudHealthcareV1DeidentifyDeidentifyFhirStoreSummary
/// - healthcare:v1 : ImportDicomDataResponse
/// - healthcare:v1 : ImportMessagesResponse
/// - healthcare:v1 : ImportResourcesResponse
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
/// - memcache:v1 : GoogleCloudMemcacheV1ZoneMetadata
/// - memcache:v1 : ZoneMetadata
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
/// - notebooks:v1 : UpgradeInstanceRequest
/// - ondemandscanning:v1 : Empty
/// - orgpolicy:v2 : GoogleCloudOrgpolicyV2ConstraintBooleanConstraint
/// - orgpolicy:v2 : GoogleProtobufEmpty
/// - osconfig:v1 : CancelOperationRequest
/// - osconfig:v1 : CancelPatchJobRequest
/// - osconfig:v1 : Empty
/// - osconfig:v1 : GooSettings
/// - oslogin:v1 : Empty
/// - paymentsresellersubscription:v1 : GoogleCloudPaymentsResellerSubscriptionV1EntitleSubscriptionRequest
/// - paymentsresellersubscription:v1 : GoogleCloudPaymentsResellerSubscriptionV1UndoCancelSubscriptionRequest
/// - people:v1 : Empty
/// - playablelocations:v3 : GoogleMapsPlayablelocationsV3LogImpressionsResponse
/// - playablelocations:v3 : GoogleMapsPlayablelocationsV3LogPlayerReportsResponse
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
/// - pubsublite:v1 : SeekSubscriptionResponse
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
/// - redis:v1 : GoogleCloudRedisV1ZoneMetadata
/// - retail:v2 : GoogleCloudRetailV2AddFulfillmentPlacesMetadata
/// - retail:v2 : GoogleCloudRetailV2AddFulfillmentPlacesResponse
/// - retail:v2 : GoogleCloudRetailV2PurgeMetadata
/// - retail:v2 : GoogleCloudRetailV2RejoinUserEventsMetadata
/// - retail:v2 : GoogleCloudRetailV2RemoveFulfillmentPlacesMetadata
/// - retail:v2 : GoogleCloudRetailV2RemoveFulfillmentPlacesResponse
/// - retail:v2 : GoogleCloudRetailV2SetInventoryMetadata
/// - retail:v2 : GoogleCloudRetailV2SetInventoryResponse
/// - retail:v2 : GoogleCloudRetailV2alphaAddFulfillmentPlacesMetadata
/// - retail:v2 : GoogleCloudRetailV2alphaAddFulfillmentPlacesResponse
/// - retail:v2 : GoogleCloudRetailV2alphaEnrollSolutionMetadata
/// - retail:v2 : GoogleCloudRetailV2alphaPurgeMetadata
/// - retail:v2 : GoogleCloudRetailV2alphaRejoinUserEventsMetadata
/// - retail:v2 : GoogleCloudRetailV2alphaRemoveFulfillmentPlacesMetadata
/// - retail:v2 : GoogleCloudRetailV2alphaRemoveFulfillmentPlacesResponse
/// - retail:v2 : GoogleCloudRetailV2alphaSetInventoryMetadata
/// - retail:v2 : GoogleCloudRetailV2alphaSetInventoryResponse
/// - retail:v2 : GoogleCloudRetailV2betaAddFulfillmentPlacesMetadata
/// - retail:v2 : GoogleCloudRetailV2betaAddFulfillmentPlacesResponse
/// - retail:v2 : GoogleCloudRetailV2betaPurgeMetadata
/// - retail:v2 : GoogleCloudRetailV2betaRejoinUserEventsMetadata
/// - retail:v2 : GoogleCloudRetailV2betaRemoveFulfillmentPlacesMetadata
/// - retail:v2 : GoogleCloudRetailV2betaRemoveFulfillmentPlacesResponse
/// - retail:v2 : GoogleCloudRetailV2betaSetInventoryMetadata
/// - retail:v2 : GoogleCloudRetailV2betaSetInventoryResponse
/// - retail:v2 : GoogleProtobufEmpty
/// - runtimeconfig:v1 : CancelOperationRequest
/// - runtimeconfig:v1 : Empty
/// - safebrowsing:v4 : GoogleProtobufEmpty
/// - script:v1 : Empty
/// - secretmanager:v1 : Empty
/// - securitycenter:v1 : Empty
/// - securitycenter:v1 : RunAssetDiscoveryRequest
/// - serviceconsumermanagement:v1 : CancelOperationRequest
/// - serviceconsumermanagement:v1 : Empty
/// - serviceconsumermanagement:v1 : V1Beta1DisableConsumerResponse
/// - serviceconsumermanagement:v1 : V1Beta1EnableConsumerResponse
/// - serviceconsumermanagement:v1 : V1Beta1RefreshConsumerResponse
/// - serviceconsumermanagement:v1 : V1DisableConsumerResponse
/// - serviceconsumermanagement:v1 : V1EnableConsumerResponse
/// - serviceconsumermanagement:v1 : V1RefreshConsumerResponse
/// - servicecontrol:v2 : ReportResponse
/// - servicedirectory:v1 : Empty
/// - servicemanagement:v1 : DeleteServiceStrategy
/// - servicemanagement:v1 : EnableServiceResponse
/// - servicenetworking:v1 : AddDnsRecordSetMetadata
/// - servicenetworking:v1 : AddDnsZoneMetadata
/// - servicenetworking:v1 : AddRolesMetadata
/// - servicenetworking:v1 : CancelOperationRequest
/// - servicenetworking:v1 : ConsumerConfigMetadata
/// - servicenetworking:v1 : DeleteConnectionMetadata
/// - servicenetworking:v1 : DeletePeeredDnsDomainMetadata
/// - servicenetworking:v1 : Empty
/// - servicenetworking:v1 : PartialDeleteConnectionMetadata
/// - servicenetworking:v1 : PeeredDnsDomainMetadata
/// - servicenetworking:v1 : RemoveDnsRecordSetMetadata
/// - servicenetworking:v1 : RemoveDnsRecordSetResponse
/// - servicenetworking:v1 : RemoveDnsZoneMetadata
/// - servicenetworking:v1 : RemoveDnsZoneResponse
/// - servicenetworking:v1 : UpdateDnsRecordSetMetadata
/// - serviceusage:v1 : CancelOperationRequest
/// - serviceusage:v1 : CreateAdminQuotaPolicyMetadata
/// - serviceusage:v1 : DeleteAdminQuotaPolicyMetadata
/// - serviceusage:v1 : Empty
/// - serviceusage:v1 : EnableServiceRequest
/// - serviceusage:v1 : GetServiceIdentityMetadata
/// - serviceusage:v1 : ImportAdminOverridesMetadata
/// - serviceusage:v1 : ImportAdminQuotaPoliciesMetadata
/// - serviceusage:v1 : ImportConsumerOverridesMetadata
/// - serviceusage:v1 : UpdateAdminQuotaPolicyMetadata
/// - sheets:v4 : ClearValuesRequest
/// - sourcerepo:v1 : Empty
/// - sourcerepo:v1 : SyncRepoRequest
/// - spanner:v1 : Empty
/// - spanner:v1 : PartitionedDml
/// - spanner:v1 : ReadWrite
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
/// - serviceconsumermanagement:v1 : Endpoint
/// - servicemanagement:v1 : Endpoint
/// - servicenetworking:v1 : Endpoint
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
/// - cloudchannel:v1 : GoogleCloudChannelV1EntitlementEvent
/// - cloudchannel:v1 : GoogleCloudChannelV1alpha1EntitlementEvent
class $EntitlementEvent {
  /// Resource name of an entitlement of the form:
  /// accounts/{account_id}/customers/{customer_id}/entitlements/{entitlement_id}
  core.String? entitlement;

  /// Type of event which happened on the entitlement.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Default value. This state doesn't show unless an
  /// error occurs.
  /// - "CREATED" : A new entitlement was created.
  /// - "PRICE_PLAN_SWITCHED" : The offer type associated with an entitlement
  /// was changed. This is not triggered if an entitlement converts from a
  /// commit offer to a flexible offer as part of a renewal.
  /// - "COMMITMENT_CHANGED" : Annual commitment for a commit plan was changed.
  /// - "RENEWED" : An annual entitlement was renewed.
  /// - "SUSPENDED" : Entitlement was suspended.
  /// - "ACTIVATED" : Entitlement was unsuspended.
  /// - "CANCELLED" : Entitlement was cancelled.
  /// - "SKU_CHANGED" : Entitlement was upgraded or downgraded (e.g. from Google
  /// Workspace Business Standard to Google Workspace Business Plus).
  /// - "RENEWAL_SETTING_CHANGED" : The renewal settings of an entitlement has
  /// changed.
  /// - "PAID_SERVICE_STARTED" : Paid service has started on trial entitlement.
  /// - "LICENSE_ASSIGNMENT_CHANGED" : License was assigned to or revoked from a
  /// user.
  /// - "LICENSE_CAP_CHANGED" : License cap was changed for the entitlement.
  core.String? eventType;

  $EntitlementEvent({
    this.entitlement,
    this.eventType,
  });

  $EntitlementEvent.fromJson(core.Map _json)
      : this(
          entitlement: _json.containsKey('entitlement')
              ? _json['entitlement'] as core.String
              : null,
          eventType: _json.containsKey('eventType')
              ? _json['eventType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (entitlement != null) 'entitlement': entitlement!,
        if (eventType != null) 'eventType': eventType!,
      };
}

/// Used by:
///
/// - videointelligence:v1 : GoogleCloudVideointelligenceV1_Entity
/// - videointelligence:v1 : GoogleCloudVideointelligenceV1beta2_Entity
/// - videointelligence:v1 : GoogleCloudVideointelligenceV1p1beta1_Entity
/// - videointelligence:v1 : GoogleCloudVideointelligenceV1p2beta1_Entity
/// - videointelligence:v1 : GoogleCloudVideointelligenceV1p3beta1_Entity
class $Entity {
  /// Textual description, e.g., `Fixed-gear bicycle`.
  core.String? description;

  /// Opaque entity ID.
  ///
  /// Some IDs may be available in
  /// [Google Knowledge Graph Search API](https://developers.google.com/knowledge-graph/).
  core.String? entityId;

  /// Language code for `description` in BCP-47 format.
  core.String? languageCode;

  $Entity({
    this.description,
    this.entityId,
    this.languageCode,
  });

  $Entity.fromJson(core.Map _json)
      : this(
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          entityId: _json.containsKey('entityId')
              ? _json['entityId'] as core.String
              : null,
          languageCode: _json.containsKey('languageCode')
              ? _json['languageCode'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (entityId != null) 'entityId': entityId!,
        if (languageCode != null) 'languageCode': languageCode!,
      };
}

/// Used by:
///
/// - datastore:v1 : GoogleDatastoreAdminV1EntityFilter
/// - datastore:v1 : GoogleDatastoreAdminV1beta1EntityFilter
class $EntityFilter {
  /// If empty, then this represents all kinds.
  core.List<core.String>? kinds;

  /// An empty list represents all namespaces.
  ///
  /// This is the preferred usage for projects that don't use namespaces. An
  /// empty string element represents the default namespace. This should be used
  /// if the project has data in non-default namespaces, but doesn't want to
  /// include them. Each namespace in this list must be unique.
  core.List<core.String>? namespaceIds;

  $EntityFilter({
    this.kinds,
    this.namespaceIds,
  });

  $EntityFilter.fromJson(core.Map _json)
      : this(
          kinds: _json.containsKey('kinds')
              ? (_json['kinds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          namespaceIds: _json.containsKey('namespaceIds')
              ? (_json['namespaceIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kinds != null) 'kinds': kinds!,
        if (namespaceIds != null) 'namespaceIds': namespaceIds!,
      };
}

/// Used by:
///
/// - dialogflow:v2 : GoogleCloudDialogflowV2EntityTypeEntity
/// - dialogflow:v2 : GoogleCloudDialogflowV2beta1EntityTypeEntity
/// - dialogflow:v3 : GoogleCloudDialogflowV2EntityTypeEntity
/// - dialogflow:v3 : GoogleCloudDialogflowV2beta1EntityTypeEntity
class $EntityTypeEntity {
  /// A collection of value synonyms.
  ///
  /// For example, if the entity type is *vegetable*, and `value` is
  /// *scallions*, a synonym could be *green onions*. For `KIND_LIST` entity
  /// types: * This collection must contain exactly one synonym equal to
  /// `value`.
  ///
  /// Required.
  core.List<core.String>? synonyms;

  /// The primary value associated with this entity entry.
  ///
  /// For example, if the entity type is *vegetable*, the value could be
  /// *scallions*. For `KIND_MAP` entity types: * A reference value to be used
  /// in place of synonyms. For `KIND_LIST` entity types: * A string that can
  /// contain references to other entity types (with or without aliases).
  ///
  /// Required.
  core.String? value;

  $EntityTypeEntity({
    this.synonyms,
    this.value,
  });

  $EntityTypeEntity.fromJson(core.Map _json)
      : this(
          synonyms: _json.containsKey('synonyms')
              ? (_json['synonyms'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          value:
              _json.containsKey('value') ? _json['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (synonyms != null) 'synonyms': synonyms!,
        if (value != null) 'value': value!,
      };
}

/// Used by:
///
/// - dialogflow:v2 : GoogleCloudDialogflowCxV3EnvironmentTestCasesConfig
/// - dialogflow:v2 : GoogleCloudDialogflowCxV3beta1EnvironmentTestCasesConfig
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3EnvironmentTestCasesConfig
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3beta1EnvironmentTestCasesConfig
class $EnvironmentTestCasesConfig {
  /// Whether to run test cases in TestCasesConfig.test_cases periodically.
  ///
  /// Default false. If set to ture, run once a day.
  core.bool? enableContinuousRun;

  /// Whether to run test cases in TestCasesConfig.test_cases before deploying a
  /// flow version to the environment.
  ///
  /// Default false.
  core.bool? enablePredeploymentRun;

  /// A list of test case names to run.
  ///
  /// They should be under the same agent. Format of each test case name:
  /// `projects//locations/ /agents//testCases/`
  core.List<core.String>? testCases;

  $EnvironmentTestCasesConfig({
    this.enableContinuousRun,
    this.enablePredeploymentRun,
    this.testCases,
  });

  $EnvironmentTestCasesConfig.fromJson(core.Map _json)
      : this(
          enableContinuousRun: _json.containsKey('enableContinuousRun')
              ? _json['enableContinuousRun'] as core.bool
              : null,
          enablePredeploymentRun: _json.containsKey('enablePredeploymentRun')
              ? _json['enablePredeploymentRun'] as core.bool
              : null,
          testCases: _json.containsKey('testCases')
              ? (_json['testCases'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enableContinuousRun != null)
          'enableContinuousRun': enableContinuousRun!,
        if (enablePredeploymentRun != null)
          'enablePredeploymentRun': enablePredeploymentRun!,
        if (testCases != null) 'testCases': testCases!,
      };
}

/// Used by:
///
/// - dialogflow:v2 : GoogleCloudDialogflowCxV3EnvironmentVersionConfig
/// - dialogflow:v2 : GoogleCloudDialogflowCxV3beta1EnvironmentVersionConfig
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3EnvironmentVersionConfig
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3beta1EnvironmentVersionConfig
class $EnvironmentVersionConfig {
  /// Format: projects//locations//agents//flows//versions/.
  ///
  /// Required.
  core.String? version;

  $EnvironmentVersionConfig({
    this.version,
  });

  $EnvironmentVersionConfig.fromJson(core.Map _json)
      : this(
          version: _json.containsKey('version')
              ? _json['version'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (version != null) 'version': version!,
      };
}

/// Used by:
///
/// - dialogflow:v2 : GoogleCloudDialogflowCxV3EventInput
/// - dialogflow:v2 : GoogleCloudDialogflowCxV3beta1EventInput
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3EventInput
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3beta1EventInput
class $EventInput00 {
  /// Name of the event.
  core.String? event;

  $EventInput00({
    this.event,
  });

  $EventInput00.fromJson(core.Map _json)
      : this(
          event:
              _json.containsKey('event') ? _json['event'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (event != null) 'event': event!,
      };
}

/// Used by:
///
/// - dialogflow:v2 : GoogleCloudDialogflowV2EventInput
/// - dialogflow:v2 : GoogleCloudDialogflowV2beta1EventInput
/// - dialogflow:v3 : GoogleCloudDialogflowV2EventInput
/// - dialogflow:v3 : GoogleCloudDialogflowV2beta1EventInput
class $EventInput01 {
  /// The language of this query.
  ///
  /// See
  /// [Language Support](https://cloud.google.com/dialogflow/docs/reference/language)
  /// for a list of the currently supported language codes. Note that queries in
  /// the same session do not necessarily need to specify the same language.
  ///
  /// Required.
  core.String? languageCode;

  /// The unique identifier of the event.
  ///
  /// Required.
  core.String? name;

  /// The collection of parameters associated with the event.
  ///
  /// Depending on your protocol or client library language, this is a map,
  /// associative array, symbol table, dictionary, or JSON object composed of a
  /// collection of (MapKey, MapValue) pairs: - MapKey type: string - MapKey
  /// value: parameter name - MapValue type: - If parameter's entity type is a
  /// composite entity: map - Else: depending on parameter value type, could be
  /// one of string, number, boolean, null, list or map - MapValue value: - If
  /// parameter's entity type is a composite entity: map from composite entity
  /// property names to property values - Else: parameter value
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? parameters;

  $EventInput01({
    this.languageCode,
    this.name,
    this.parameters,
  });

  $EventInput01.fromJson(core.Map _json)
      : this(
          languageCode: _json.containsKey('languageCode')
              ? _json['languageCode'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          parameters: _json.containsKey('parameters')
              ? _json['parameters'] as core.Map<core.String, core.dynamic>
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (languageCode != null) 'languageCode': languageCode!,
        if (name != null) 'name': name!,
        if (parameters != null) 'parameters': parameters!,
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
/// - videointelligence:v1 : GoogleCloudVideointelligenceV1_ExplicitContentFrame
/// - videointelligence:v1 : GoogleCloudVideointelligenceV1beta2_ExplicitContentFrame
/// - videointelligence:v1 : GoogleCloudVideointelligenceV1p1beta1_ExplicitContentFrame
/// - videointelligence:v1 : GoogleCloudVideointelligenceV1p2beta1_ExplicitContentFrame
/// - videointelligence:v1 : GoogleCloudVideointelligenceV1p3beta1_ExplicitContentFrame
class $ExplicitContentFrame {
  /// Likelihood of the pornography content..
  /// Possible string values are:
  /// - "LIKELIHOOD_UNSPECIFIED" : Unspecified likelihood.
  /// - "VERY_UNLIKELY" : Very unlikely.
  /// - "UNLIKELY" : Unlikely.
  /// - "POSSIBLE" : Possible.
  /// - "LIKELY" : Likely.
  /// - "VERY_LIKELY" : Very likely.
  core.String? pornographyLikelihood;

  /// Time-offset, relative to the beginning of the video, corresponding to the
  /// video frame for this location.
  core.String? timeOffset;

  $ExplicitContentFrame({
    this.pornographyLikelihood,
    this.timeOffset,
  });

  $ExplicitContentFrame.fromJson(core.Map _json)
      : this(
          pornographyLikelihood: _json.containsKey('pornographyLikelihood')
              ? _json['pornographyLikelihood'] as core.String
              : null,
          timeOffset: _json.containsKey('timeOffset')
              ? _json['timeOffset'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (pornographyLikelihood != null)
          'pornographyLikelihood': pornographyLikelihood!,
        if (timeOffset != null) 'timeOffset': timeOffset!,
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
/// - dialogflow:v2 : GoogleCloudDialogflowCxV3ExportAgentResponse
/// - dialogflow:v2 : GoogleCloudDialogflowCxV3beta1ExportAgentResponse
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3ExportAgentResponse
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3beta1ExportAgentResponse
class $ExportAgentResponse00 {
  /// Uncompressed raw byte content for agent.
  core.String? agentContent;
  core.List<core.int> get agentContentAsBytes =>
      convert.base64.decode(agentContent!);

  set agentContentAsBytes(core.List<core.int> _bytes) {
    agentContent =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// The URI to a file containing the exported agent.
  ///
  /// This field is populated only if `agent_uri` is specified in
  /// ExportAgentRequest.
  core.String? agentUri;

  $ExportAgentResponse00({
    this.agentContent,
    this.agentUri,
  });

  $ExportAgentResponse00.fromJson(core.Map _json)
      : this(
          agentContent: _json.containsKey('agentContent')
              ? _json['agentContent'] as core.String
              : null,
          agentUri: _json.containsKey('agentUri')
              ? _json['agentUri'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (agentContent != null) 'agentContent': agentContent!,
        if (agentUri != null) 'agentUri': agentUri!,
      };
}

/// Used by:
///
/// - dialogflow:v2 : GoogleCloudDialogflowV2ExportAgentResponse
/// - dialogflow:v2 : GoogleCloudDialogflowV2beta1ExportAgentResponse
/// - dialogflow:v3 : GoogleCloudDialogflowV2ExportAgentResponse
/// - dialogflow:v3 : GoogleCloudDialogflowV2beta1ExportAgentResponse
class $ExportAgentResponse01 {
  /// Zip compressed raw byte content for agent.
  core.String? agentContent;
  core.List<core.int> get agentContentAsBytes =>
      convert.base64.decode(agentContent!);

  set agentContentAsBytes(core.List<core.int> _bytes) {
    agentContent =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// The URI to a file containing the exported agent.
  ///
  /// This field is populated only if `agent_uri` is specified in
  /// `ExportAgentRequest`.
  core.String? agentUri;

  $ExportAgentResponse01({
    this.agentContent,
    this.agentUri,
  });

  $ExportAgentResponse01.fromJson(core.Map _json)
      : this(
          agentContent: _json.containsKey('agentContent')
              ? _json['agentContent'] as core.String
              : null,
          agentUri: _json.containsKey('agentUri')
              ? _json['agentUri'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (agentContent != null) 'agentContent': agentContent!,
        if (agentUri != null) 'agentUri': agentUri!,
      };
}

/// Used by:
///
/// - retail:v2 : GoogleCloudRetailV2alphaExportErrorsConfig
/// - retail:v2 : GoogleCloudRetailV2betaExportErrorsConfig
class $ExportErrorsConfig {
  /// Google Cloud Storage path for import errors.
  ///
  /// This must be an empty, existing Cloud Storage bucket. Export errors will
  /// be written to a file in this bucket, one per line, as a JSON-encoded
  /// `google.rpc.Status` message.
  core.String? gcsPrefix;

  $ExportErrorsConfig({
    this.gcsPrefix,
  });

  $ExportErrorsConfig.fromJson(core.Map _json)
      : this(
          gcsPrefix: _json.containsKey('gcsPrefix')
              ? _json['gcsPrefix'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (gcsPrefix != null) 'gcsPrefix': gcsPrefix!,
      };
}

/// Used by:
///
/// - dialogflow:v2 : GoogleCloudDialogflowCxV3ExportFlowResponse
/// - dialogflow:v2 : GoogleCloudDialogflowCxV3beta1ExportFlowResponse
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3ExportFlowResponse
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3beta1ExportFlowResponse
class $ExportFlowResponse {
  /// Uncompressed raw byte content for flow.
  core.String? flowContent;
  core.List<core.int> get flowContentAsBytes =>
      convert.base64.decode(flowContent!);

  set flowContentAsBytes(core.List<core.int> _bytes) {
    flowContent =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// The URI to a file containing the exported flow.
  ///
  /// This field is populated only if `flow_uri` is specified in
  /// ExportFlowRequest.
  core.String? flowUri;

  $ExportFlowResponse({
    this.flowContent,
    this.flowUri,
  });

  $ExportFlowResponse.fromJson(core.Map _json)
      : this(
          flowContent: _json.containsKey('flowContent')
              ? _json['flowContent'] as core.String
              : null,
          flowUri: _json.containsKey('flowUri')
              ? _json['flowUri'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (flowContent != null) 'flowContent': flowContent!,
        if (flowUri != null) 'flowUri': flowUri!,
      };
}

/// Used by:
///
/// - contactcenterinsights:v1 : GoogleCloudContactcenterinsightsV1ExportInsightsDataRequestBigQueryDestination
/// - contactcenterinsights:v1 : GoogleCloudContactcenterinsightsV1alpha1ExportInsightsDataRequestBigQueryDestination
class $ExportInsightsDataRequestBigQueryDestination {
  /// The name of the BigQuery dataset that the snapshot result should be
  /// exported to.
  ///
  /// If this dataset does not exist, the export call returns an
  /// INVALID_ARGUMENT error.
  ///
  /// Required.
  core.String? dataset;

  /// A project ID or number.
  ///
  /// If specified, then export will attempt to write data to this project
  /// instead of the resource project. Otherwise, the resource project will be
  /// used.
  core.String? projectId;

  /// The BigQuery table name to which the insights data should be written.
  ///
  /// If this table does not exist, the export call returns an INVALID_ARGUMENT
  /// error.
  core.String? table;

  $ExportInsightsDataRequestBigQueryDestination({
    this.dataset,
    this.projectId,
    this.table,
  });

  $ExportInsightsDataRequestBigQueryDestination.fromJson(core.Map _json)
      : this(
          dataset: _json.containsKey('dataset')
              ? _json['dataset'] as core.String
              : null,
          projectId: _json.containsKey('projectId')
              ? _json['projectId'] as core.String
              : null,
          table:
              _json.containsKey('table') ? _json['table'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataset != null) 'dataset': dataset!,
        if (projectId != null) 'projectId': projectId!,
        if (table != null) 'table': table!,
      };
}

/// Used by:
///
/// - retail:v2 : GoogleCloudRetailV2alphaExportMetadata
/// - retail:v2 : GoogleCloudRetailV2betaExportMetadata
class $ExportMetadata {
  /// Operation create time.
  core.String? createTime;

  /// Operation last update time.
  ///
  /// If the operation is done, this is also the finish time.
  core.String? updateTime;

  $ExportMetadata({
    this.createTime,
    this.updateTime,
  });

  $ExportMetadata.fromJson(core.Map _json)
      : this(
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (updateTime != null) 'updateTime': updateTime!,
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
/// - dialogflow:v2 : GoogleCloudDialogflowCxV3ExportTestCasesResponse
/// - dialogflow:v2 : GoogleCloudDialogflowCxV3beta1ExportTestCasesResponse
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3ExportTestCasesResponse
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3beta1ExportTestCasesResponse
class $ExportTestCasesResponse {
  /// Uncompressed raw byte content for test cases.
  core.String? content;
  core.List<core.int> get contentAsBytes => convert.base64.decode(content!);

  set contentAsBytes(core.List<core.int> _bytes) {
    content =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// The URI to a file containing the exported test cases.
  ///
  /// This field is populated only if `gcs_uri` is specified in
  /// ExportTestCasesRequest.
  core.String? gcsUri;

  $ExportTestCasesResponse({
    this.content,
    this.gcsUri,
  });

  $ExportTestCasesResponse.fromJson(core.Map _json)
      : this(
          content: _json.containsKey('content')
              ? _json['content'] as core.String
              : null,
          gcsUri: _json.containsKey('gcsUri')
              ? _json['gcsUri'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (content != null) 'content': content!,
        if (gcsUri != null) 'gcsUri': gcsUri!,
      };
}

/// Used by:
///
/// - accesscontextmanager:v1 : Expr
/// - apigateway:v1 : ApigatewayExpr
/// - apigee:v1 : GoogleTypeExpr
/// - bigquery:v2 : Expr
/// - bigtableadmin:v2 : Expr
/// - binaryauthorization:v1 : Expr
/// - cloudasset:v1 : Expr
/// - cloudbilling:v1 : Expr
/// - cloudfunctions:v1 : Expr
/// - cloudiot:v1 : Expr
/// - cloudkms:v1 : Expr
/// - cloudresourcemanager:v1 : Expr
/// - cloudresourcemanager:v2 : Expr
/// - cloudresourcemanager:v3 : Expr
/// - cloudtasks:v2 : Expr
/// - compute:v1 : Expr
/// - connectors:v1 : Expr
/// - datacatalog:v1 : Expr
/// - datafusion:v1 : Expr
/// - datamigration:v1 : Expr
/// - dataproc:v1 : Expr
/// - deploymentmanager:v2 : Expr
/// - eventarc:v1 : Expr
/// - gameservices:v1 : Expr
/// - gkehub:v1 : Expr
/// - healthcare:v1 : Expr
/// - iam:v1 : Expr
/// - iap:v1 : Expr
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
/// - secretmanager:v1 : Expr
/// - securitycenter:v1 : Expr
/// - servicedirectory:v1 : Expr
/// - servicemanagement:v1 : Expr
/// - sourcerepo:v1 : Expr
/// - spanner:v1 : Expr
/// - sts:v1 : GoogleTypeExpr
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
/// - dialogflow:v2 : GoogleCloudDialogflowV2FaqAnswer
/// - dialogflow:v2 : GoogleCloudDialogflowV2beta1FaqAnswer
/// - dialogflow:v3 : GoogleCloudDialogflowV2FaqAnswer
/// - dialogflow:v3 : GoogleCloudDialogflowV2beta1FaqAnswer
class $FaqAnswer {
  /// The piece of text from the `source` knowledge base document.
  core.String? answer;

  /// The name of answer record, in the format of
  /// "projects//locations//answerRecords/"
  core.String? answerRecord;

  /// The system's confidence score that this Knowledge answer is a good match
  /// for this conversational query, range from 0.0 (completely uncertain) to
  /// 1.0 (completely certain).
  core.double? confidence;

  /// A map that contains metadata about the answer and the document from which
  /// it originates.
  core.Map<core.String, core.String>? metadata;

  /// The corresponding FAQ question.
  core.String? question;

  /// Indicates which Knowledge Document this answer was extracted from.
  ///
  /// Format: `projects//locations//agent/knowledgeBases//documents/`.
  core.String? source;

  $FaqAnswer({
    this.answer,
    this.answerRecord,
    this.confidence,
    this.metadata,
    this.question,
    this.source,
  });

  $FaqAnswer.fromJson(core.Map _json)
      : this(
          answer: _json.containsKey('answer')
              ? _json['answer'] as core.String
              : null,
          answerRecord: _json.containsKey('answerRecord')
              ? _json['answerRecord'] as core.String
              : null,
          confidence: _json.containsKey('confidence')
              ? (_json['confidence'] as core.num).toDouble()
              : null,
          metadata: _json.containsKey('metadata')
              ? (_json['metadata'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          question: _json.containsKey('question')
              ? _json['question'] as core.String
              : null,
          source: _json.containsKey('source')
              ? _json['source'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (answer != null) 'answer': answer!,
        if (answerRecord != null) 'answerRecord': answerRecord!,
        if (confidence != null) 'confidence': confidence!,
        if (metadata != null) 'metadata': metadata!,
        if (question != null) 'question': question!,
        if (source != null) 'source': source!,
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
/// - servicecontrol:v1 : FirstPartyPrincipal
/// - servicecontrol:v2 : FirstPartyPrincipal
class $FirstPartyPrincipal {
  /// The email address of a Google account.
  ///
  /// .
  core.String? principalEmail;

  /// Metadata about the service that uses the service account.
  ///
  /// .
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? serviceMetadata;

  $FirstPartyPrincipal({
    this.principalEmail,
    this.serviceMetadata,
  });

  $FirstPartyPrincipal.fromJson(core.Map _json)
      : this(
          principalEmail: _json.containsKey('principalEmail')
              ? _json['principalEmail'] as core.String
              : null,
          serviceMetadata: _json.containsKey('serviceMetadata')
              ? _json['serviceMetadata'] as core.Map<core.String, core.dynamic>
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (principalEmail != null) 'principalEmail': principalEmail!,
        if (serviceMetadata != null) 'serviceMetadata': serviceMetadata!,
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
/// - securitycenter:v1 : Folder
/// - securitycenter:v1 : GoogleCloudSecuritycenterV1p1beta1Folder
class $Folder {
  /// Full resource name of this folder.
  ///
  /// See:
  /// https://cloud.google.com/apis/design/resource_names#full_resource_name
  core.String? resourceFolder;

  /// The user defined display name for this folder.
  core.String? resourceFolderDisplayName;

  $Folder({
    this.resourceFolder,
    this.resourceFolderDisplayName,
  });

  $Folder.fromJson(core.Map _json)
      : this(
          resourceFolder: _json.containsKey('resourceFolder')
              ? _json['resourceFolder'] as core.String
              : null,
          resourceFolderDisplayName:
              _json.containsKey('resourceFolderDisplayName')
                  ? _json['resourceFolderDisplayName'] as core.String
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (resourceFolder != null) 'resourceFolder': resourceFolder!,
        if (resourceFolderDisplayName != null)
          'resourceFolderDisplayName': resourceFolderDisplayName!,
      };
}

/// Used by:
///
/// - cloudresourcemanager:v1 : CloudresourcemanagerGoogleCloudResourcemanagerV2alpha1FolderOperation
/// - cloudresourcemanager:v1 : CloudresourcemanagerGoogleCloudResourcemanagerV2beta1FolderOperation
/// - cloudresourcemanager:v1 : FolderOperation
/// - cloudresourcemanager:v2 : CloudresourcemanagerGoogleCloudResourcemanagerV2alpha1FolderOperation
/// - cloudresourcemanager:v2 : CloudresourcemanagerGoogleCloudResourcemanagerV2beta1FolderOperation
/// - cloudresourcemanager:v2 : FolderOperation
/// - cloudresourcemanager:v3 : CloudresourcemanagerGoogleCloudResourcemanagerV2alpha1FolderOperation
/// - cloudresourcemanager:v3 : CloudresourcemanagerGoogleCloudResourcemanagerV2beta1FolderOperation
/// - cloudresourcemanager:v3 : FolderOperation
class $FolderOperation {
  /// The resource name of the folder or organization we are either creating the
  /// folder under or moving the folder to.
  core.String? destinationParent;

  /// The display name of the folder.
  core.String? displayName;

  /// The type of this operation.
  /// Possible string values are:
  /// - "OPERATION_TYPE_UNSPECIFIED" : Operation type not specified.
  /// - "CREATE" : A create folder operation.
  /// - "MOVE" : A move folder operation.
  core.String? operationType;

  /// The resource name of the folder's parent.
  ///
  /// Only applicable when the operation_type is MOVE.
  core.String? sourceParent;

  $FolderOperation({
    this.destinationParent,
    this.displayName,
    this.operationType,
    this.sourceParent,
  });

  $FolderOperation.fromJson(core.Map _json)
      : this(
          destinationParent: _json.containsKey('destinationParent')
              ? _json['destinationParent'] as core.String
              : null,
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          operationType: _json.containsKey('operationType')
              ? _json['operationType'] as core.String
              : null,
          sourceParent: _json.containsKey('sourceParent')
              ? _json['sourceParent'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (destinationParent != null) 'destinationParent': destinationParent!,
        if (displayName != null) 'displayName': displayName!,
        if (operationType != null) 'operationType': operationType!,
        if (sourceParent != null) 'sourceParent': sourceParent!,
      };
}

/// Used by:
///
/// - cloudresourcemanager:v1 : FolderOperationError
/// - cloudresourcemanager:v2 : FolderOperationError
/// - cloudresourcemanager:v3 : FolderOperationError
class $FolderOperationError {
  /// The type of operation error experienced.
  /// Possible string values are:
  /// - "ERROR_TYPE_UNSPECIFIED" : The error type was unrecognized or
  /// unspecified.
  /// - "ACTIVE_FOLDER_HEIGHT_VIOLATION" : The attempted action would violate
  /// the max folder depth constraint.
  /// - "MAX_CHILD_FOLDERS_VIOLATION" : The attempted action would violate the
  /// max child folders constraint.
  /// - "FOLDER_NAME_UNIQUENESS_VIOLATION" : The attempted action would violate
  /// the locally-unique folder display_name constraint.
  /// - "RESOURCE_DELETED_VIOLATION" : The resource being moved has been
  /// deleted.
  /// - "PARENT_DELETED_VIOLATION" : The resource a folder was being added to
  /// has been deleted.
  /// - "CYCLE_INTRODUCED_VIOLATION" : The attempted action would introduce
  /// cycle in resource path.
  /// - "FOLDER_BEING_MOVED_VIOLATION" : The attempted action would move a
  /// folder that is already being moved.
  /// - "FOLDER_TO_DELETE_NON_EMPTY_VIOLATION" : The folder the caller is trying
  /// to delete contains active resources.
  /// - "DELETED_FOLDER_HEIGHT_VIOLATION" : The attempted action would violate
  /// the max deleted folder depth constraint.
  core.String? errorMessageId;

  $FolderOperationError({
    this.errorMessageId,
  });

  $FolderOperationError.fromJson(core.Map _json)
      : this(
          errorMessageId: _json.containsKey('errorMessageId')
              ? _json['errorMessageId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (errorMessageId != null) 'errorMessageId': errorMessageId!,
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
/// - dialogflow:v2 : GoogleCloudDialogflowCxV3FulfillmentSetParameterAction
/// - dialogflow:v2 : GoogleCloudDialogflowCxV3beta1FulfillmentSetParameterAction
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3FulfillmentSetParameterAction
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3beta1FulfillmentSetParameterAction
class $FulfillmentSetParameterAction {
  /// Display name of the parameter.
  core.String? parameter;

  /// The new value of the parameter.
  ///
  /// A null value clears the parameter.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object? value;

  $FulfillmentSetParameterAction({
    this.parameter,
    this.value,
  });

  $FulfillmentSetParameterAction.fromJson(core.Map _json)
      : this(
          parameter: _json.containsKey('parameter')
              ? _json['parameter'] as core.String
              : null,
          value: _json.containsKey('value') ? _json['value'] : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (parameter != null) 'parameter': parameter!,
        if (value != null) 'value': value!,
      };
}

/// Used by:
///
/// - vision:v1 : GcsDestination
/// - vision:v1 : GoogleCloudVisionV1p1beta1GcsDestination
/// - vision:v1 : GoogleCloudVisionV1p2beta1GcsDestination
/// - vision:v1 : GoogleCloudVisionV1p3beta1GcsDestination
/// - vision:v1 : GoogleCloudVisionV1p4beta1GcsDestination
class $GcsDestination {
  /// Google Cloud Storage URI prefix where the results will be stored.
  ///
  /// Results will be in JSON format and preceded by its corresponding input URI
  /// prefix. This field can either represent a gcs file prefix or gcs
  /// directory. In either case, the uri should be unique because in order to
  /// get all of the output files, you will need to do a wildcard gcs search on
  /// the uri prefix you provide. Examples: * File Prefix:
  /// gs://bucket-name/here/filenameprefix The output files will be created in
  /// gs://bucket-name/here/ and the names of the output files will begin with
  /// "filenameprefix". * Directory Prefix: gs://bucket-name/some/location/ The
  /// output files will be created in gs://bucket-name/some/location/ and the
  /// names of the output files could be anything because there was no filename
  /// prefix specified. If multiple outputs, each response is still
  /// AnnotateFileResponse, each of which contains some subset of the full list
  /// of AnnotateImageResponse. Multiple outputs can happen if, for example, the
  /// output JSON is too large and overflows into multiple sharded files.
  core.String? uri;

  $GcsDestination({
    this.uri,
  });

  $GcsDestination.fromJson(core.Map _json)
      : this(
          uri: _json.containsKey('uri') ? _json['uri'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (uri != null) 'uri': uri!,
      };
}

/// Used by:
///
/// - vision:v1 : GcsSource
/// - vision:v1 : GoogleCloudVisionV1p1beta1GcsSource
/// - vision:v1 : GoogleCloudVisionV1p2beta1GcsSource
/// - vision:v1 : GoogleCloudVisionV1p3beta1GcsSource
/// - vision:v1 : GoogleCloudVisionV1p4beta1GcsSource
class $GcsSource00 {
  /// Google Cloud Storage URI for the input file.
  ///
  /// This must only be a Google Cloud Storage object. Wildcards are not
  /// currently supported.
  core.String? uri;

  $GcsSource00({
    this.uri,
  });

  $GcsSource00.fromJson(core.Map _json)
      : this(
          uri: _json.containsKey('uri') ? _json['uri'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (uri != null) 'uri': uri!,
      };
}

/// Used by:
///
/// - healthcare:v1 : GcsSource
/// - healthcare:v1 : GoogleCloudHealthcareV1FhirGcsSource
class $GcsSource01 {
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

  $GcsSource01({
    this.uri,
  });

  $GcsSource01.fromJson(core.Map _json)
      : this(
          uri: _json.containsKey('uri') ? _json['uri'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (uri != null) 'uri': uri!,
      };
}

/// Used by:
///
/// - bigquery:v2 : GetPolicyOptions
/// - bigtableadmin:v2 : GetPolicyOptions
/// - cloudiot:v1 : GetPolicyOptions
/// - cloudresourcemanager:v1 : GetPolicyOptions
/// - cloudresourcemanager:v2 : GetPolicyOptions
/// - cloudresourcemanager:v3 : GetPolicyOptions
/// - cloudtasks:v2 : GetPolicyOptions
/// - datacatalog:v1 : GetPolicyOptions
/// - iap:v1 : GetPolicyOptions
/// - securitycenter:v1 : GetPolicyOptions
/// - servicedirectory:v1 : GetPolicyOptions
/// - servicemanagement:v1 : GetPolicyOptions
/// - spanner:v1 : GetPolicyOptions
class $GetPolicyOptions {
  /// The policy format version to be returned.
  ///
  /// Valid values are 0, 1, and 3. Requests specifying an invalid value will be
  /// rejected. Requests for policies with any conditional bindings must specify
  /// version 3. Policies without any conditional bindings may specify any valid
  /// value or leave the field unset. To learn which resources support
  /// conditions in their IAM policies, see the
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
/// - dialogflow:v2 : GoogleCloudDialogflowV2AnnotatedMessagePart
/// - dialogflow:v3 : GoogleCloudDialogflowV2AnnotatedMessagePart
class $GoogleCloudDialogflowV2AnnotatedMessagePart {
  /// The
  /// [Dialogflow system entity type](https://cloud.google.com/dialogflow/docs/reference/system-entities)
  /// of this message part.
  ///
  /// If this is empty, Dialogflow could not annotate the phrase part with a
  /// system entity.
  core.String? entityType;

  /// The
  /// [Dialogflow system entity formatted value ](https://cloud.google.com/dialogflow/docs/reference/system-entities)
  /// of this message part.
  ///
  /// For example for a system entity of type `@sys.unit-currency`, this may
  /// contain: { "amount": 5, "currency": "USD" }
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object? formattedValue;

  /// A part of a message possibly annotated with an entity.
  core.String? text;

  $GoogleCloudDialogflowV2AnnotatedMessagePart({
    this.entityType,
    this.formattedValue,
    this.text,
  });

  $GoogleCloudDialogflowV2AnnotatedMessagePart.fromJson(core.Map _json)
      : this(
          entityType: _json.containsKey('entityType')
              ? _json['entityType'] as core.String
              : null,
          formattedValue: _json.containsKey('formattedValue')
              ? _json['formattedValue']
              : null,
          text: _json.containsKey('text') ? _json['text'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (entityType != null) 'entityType': entityType!,
        if (formattedValue != null) 'formattedValue': formattedValue!,
        if (text != null) 'text': text!,
      };
}

/// Used by:
///
/// - dialogflow:v2 : GoogleCloudDialogflowV2ArticleAnswer
/// - dialogflow:v3 : GoogleCloudDialogflowV2ArticleAnswer
class $GoogleCloudDialogflowV2ArticleAnswer {
  /// The name of answer record, in the format of
  /// "projects//locations//answerRecords/"
  core.String? answerRecord;

  /// Article match confidence.
  ///
  /// The system's confidence score that this article is a good match for this
  /// conversation, as a value from 0.0 (completely uncertain) to 1.0
  /// (completely certain).
  core.double? confidence;

  /// A map that contains metadata about the answer and the document from which
  /// it originates.
  core.Map<core.String, core.String>? metadata;

  /// Article snippets.
  core.List<core.String>? snippets;

  /// The article title.
  core.String? title;

  /// The article URI.
  core.String? uri;

  $GoogleCloudDialogflowV2ArticleAnswer({
    this.answerRecord,
    this.confidence,
    this.metadata,
    this.snippets,
    this.title,
    this.uri,
  });

  $GoogleCloudDialogflowV2ArticleAnswer.fromJson(core.Map _json)
      : this(
          answerRecord: _json.containsKey('answerRecord')
              ? _json['answerRecord'] as core.String
              : null,
          confidence: _json.containsKey('confidence')
              ? (_json['confidence'] as core.num).toDouble()
              : null,
          metadata: _json.containsKey('metadata')
              ? (_json['metadata'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          snippets: _json.containsKey('snippets')
              ? (_json['snippets'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          title:
              _json.containsKey('title') ? _json['title'] as core.String : null,
          uri: _json.containsKey('uri') ? _json['uri'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (answerRecord != null) 'answerRecord': answerRecord!,
        if (confidence != null) 'confidence': confidence!,
        if (metadata != null) 'metadata': metadata!,
        if (snippets != null) 'snippets': snippets!,
        if (title != null) 'title': title!,
        if (uri != null) 'uri': uri!,
      };
}

/// Used by:
///
/// - dialogflow:v2 : GoogleCloudDialogflowV2Context
/// - dialogflow:v3 : GoogleCloudDialogflowV2Context
class $GoogleCloudDialogflowV2Context {
  /// The number of conversational query requests after which the context
  /// expires.
  ///
  /// The default is `0`. If set to `0`, the context expires immediately.
  /// Contexts expire automatically after 20 minutes if there are no matching
  /// queries.
  ///
  /// Optional.
  core.int? lifespanCount;

  /// The unique identifier of the context.
  ///
  /// Format: `projects//agent/sessions//contexts/`, or
  /// `projects//agent/environments//users//sessions//contexts/`. The `Context
  /// ID` is always converted to lowercase, may only contain characters in
  /// a-zA-Z0-9_-% and may be at most 250 bytes long. If `Environment ID` is not
  /// specified, we assume default 'draft' environment. If `User ID` is not
  /// specified, we assume default '-' user. The following context names are
  /// reserved for internal use by Dialogflow. You should not use these contexts
  /// or create contexts with these names: * `__system_counters__` *
  /// `*_id_dialog_context` * `*_dialog_params_size`
  ///
  /// Required.
  core.String? name;

  /// The collection of parameters associated with this context.
  ///
  /// Depending on your protocol or client library language, this is a map,
  /// associative array, symbol table, dictionary, or JSON object composed of a
  /// collection of (MapKey, MapValue) pairs: - MapKey type: string - MapKey
  /// value: parameter name - MapValue type: - If parameter's entity type is a
  /// composite entity: map - Else: depending on parameter value type, could be
  /// one of string, number, boolean, null, list or map - MapValue value: - If
  /// parameter's entity type is a composite entity: map from composite entity
  /// property names to property values - Else: parameter value
  ///
  /// Optional.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? parameters;

  $GoogleCloudDialogflowV2Context({
    this.lifespanCount,
    this.name,
    this.parameters,
  });

  $GoogleCloudDialogflowV2Context.fromJson(core.Map _json)
      : this(
          lifespanCount: _json.containsKey('lifespanCount')
              ? _json['lifespanCount'] as core.int
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          parameters: _json.containsKey('parameters')
              ? _json['parameters'] as core.Map<core.String, core.dynamic>
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (lifespanCount != null) 'lifespanCount': lifespanCount!,
        if (name != null) 'name': name!,
        if (parameters != null) 'parameters': parameters!,
      };
}

/// Used by:
///
/// - dialogflow:v2 : GoogleCloudDialogflowV2IntentMessageImage
/// - dialogflow:v3 : GoogleCloudDialogflowV2IntentMessageImage
class $GoogleCloudDialogflowV2IntentMessageImage {
  /// A text description of the image to be used for accessibility, e.g., screen
  /// readers.
  ///
  /// Optional.
  core.String? accessibilityText;

  /// The public URI to an image file.
  ///
  /// Optional.
  core.String? imageUri;

  $GoogleCloudDialogflowV2IntentMessageImage({
    this.accessibilityText,
    this.imageUri,
  });

  $GoogleCloudDialogflowV2IntentMessageImage.fromJson(core.Map _json)
      : this(
          accessibilityText: _json.containsKey('accessibilityText')
              ? _json['accessibilityText'] as core.String
              : null,
          imageUri: _json.containsKey('imageUri')
              ? _json['imageUri'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accessibilityText != null) 'accessibilityText': accessibilityText!,
        if (imageUri != null) 'imageUri': imageUri!,
      };
}

/// Used by:
///
/// - dialogflow:v2 : GoogleCloudDialogflowV2KnowledgeOperationMetadata
/// - dialogflow:v3 : GoogleCloudDialogflowV2KnowledgeOperationMetadata
class $GoogleCloudDialogflowV2KnowledgeOperationMetadata {
  /// The current state of this operation.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : State unspecified.
  /// - "PENDING" : The operation has been created.
  /// - "RUNNING" : The operation is currently running.
  /// - "DONE" : The operation is done, either cancelled or completed.
  core.String? state;

  $GoogleCloudDialogflowV2KnowledgeOperationMetadata({
    this.state,
  });

  $GoogleCloudDialogflowV2KnowledgeOperationMetadata.fromJson(core.Map _json)
      : this(
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (state != null) 'state': state!,
      };
}

/// Used by:
///
/// - dialogflow:v2 : GoogleCloudDialogflowV2beta1AnnotatedMessagePart
/// - dialogflow:v3 : GoogleCloudDialogflowV2beta1AnnotatedMessagePart
class $GoogleCloudDialogflowV2beta1AnnotatedMessagePart {
  /// The
  /// [Dialogflow system entity type](https://cloud.google.com/dialogflow/docs/reference/system-entities)
  /// of this message part.
  ///
  /// If this is empty, Dialogflow could not annotate the phrase part with a
  /// system entity.
  ///
  /// Optional.
  core.String? entityType;

  /// The
  /// [Dialogflow system entity formatted value ](https://cloud.google.com/dialogflow/docs/reference/system-entities)
  /// of this message part.
  ///
  /// For example for a system entity of type `@sys.unit-currency`, this may
  /// contain: { "amount": 5, "currency": "USD" }
  ///
  /// Optional.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object? formattedValue;

  /// A part of a message possibly annotated with an entity.
  ///
  /// Required.
  core.String? text;

  $GoogleCloudDialogflowV2beta1AnnotatedMessagePart({
    this.entityType,
    this.formattedValue,
    this.text,
  });

  $GoogleCloudDialogflowV2beta1AnnotatedMessagePart.fromJson(core.Map _json)
      : this(
          entityType: _json.containsKey('entityType')
              ? _json['entityType'] as core.String
              : null,
          formattedValue: _json.containsKey('formattedValue')
              ? _json['formattedValue']
              : null,
          text: _json.containsKey('text') ? _json['text'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (entityType != null) 'entityType': entityType!,
        if (formattedValue != null) 'formattedValue': formattedValue!,
        if (text != null) 'text': text!,
      };
}

/// Used by:
///
/// - dialogflow:v2 : GoogleCloudDialogflowV2beta1ArticleAnswer
/// - dialogflow:v3 : GoogleCloudDialogflowV2beta1ArticleAnswer
class $GoogleCloudDialogflowV2beta1ArticleAnswer {
  /// The name of answer record, in the format of
  /// "projects//locations//answerRecords/"
  core.String? answerRecord;

  /// A map that contains metadata about the answer and the document from which
  /// it originates.
  core.Map<core.String, core.String>? metadata;

  /// Article snippets.
  ///
  /// Output only.
  core.List<core.String>? snippets;

  /// The article title.
  core.String? title;

  /// The article URI.
  core.String? uri;

  $GoogleCloudDialogflowV2beta1ArticleAnswer({
    this.answerRecord,
    this.metadata,
    this.snippets,
    this.title,
    this.uri,
  });

  $GoogleCloudDialogflowV2beta1ArticleAnswer.fromJson(core.Map _json)
      : this(
          answerRecord: _json.containsKey('answerRecord')
              ? _json['answerRecord'] as core.String
              : null,
          metadata: _json.containsKey('metadata')
              ? (_json['metadata'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          snippets: _json.containsKey('snippets')
              ? (_json['snippets'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          title:
              _json.containsKey('title') ? _json['title'] as core.String : null,
          uri: _json.containsKey('uri') ? _json['uri'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (answerRecord != null) 'answerRecord': answerRecord!,
        if (metadata != null) 'metadata': metadata!,
        if (snippets != null) 'snippets': snippets!,
        if (title != null) 'title': title!,
        if (uri != null) 'uri': uri!,
      };
}

/// Used by:
///
/// - dialogflow:v2 : GoogleCloudDialogflowV2beta1Context
/// - dialogflow:v3 : GoogleCloudDialogflowV2beta1Context
class $GoogleCloudDialogflowV2beta1Context {
  /// The number of conversational query requests after which the context
  /// expires.
  ///
  /// The default is `0`. If set to `0`, the context expires immediately.
  /// Contexts expire automatically after 20 minutes if there are no matching
  /// queries.
  ///
  /// Optional.
  core.int? lifespanCount;

  /// The unique identifier of the context.
  ///
  /// Supported formats: - `projects//agent/sessions//contexts/`, -
  /// `projects//locations//agent/sessions//contexts/`, -
  /// `projects//agent/environments//users//sessions//contexts/`, -
  /// `projects//locations//agent/environments//users//sessions//contexts/`, The
  /// `Context ID` is always converted to lowercase, may only contain characters
  /// in a-zA-Z0-9_-% and may be at most 250 bytes long. If `Environment ID` is
  /// not specified, we assume default 'draft' environment. If `User ID` is not
  /// specified, we assume default '-' user. The following context names are
  /// reserved for internal use by Dialogflow. You should not use these contexts
  /// or create contexts with these names: * `__system_counters__` *
  /// `*_id_dialog_context` * `*_dialog_params_size`
  ///
  /// Required.
  core.String? name;

  /// The collection of parameters associated with this context.
  ///
  /// Depending on your protocol or client library language, this is a map,
  /// associative array, symbol table, dictionary, or JSON object composed of a
  /// collection of (MapKey, MapValue) pairs: - MapKey type: string - MapKey
  /// value: parameter name - MapValue type: - If parameter's entity type is a
  /// composite entity: map - Else: depending on parameter value type, could be
  /// one of string, number, boolean, null, list or map - MapValue value: - If
  /// parameter's entity type is a composite entity: map from composite entity
  /// property names to property values - Else: parameter value
  ///
  /// Optional.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? parameters;

  $GoogleCloudDialogflowV2beta1Context({
    this.lifespanCount,
    this.name,
    this.parameters,
  });

  $GoogleCloudDialogflowV2beta1Context.fromJson(core.Map _json)
      : this(
          lifespanCount: _json.containsKey('lifespanCount')
              ? _json['lifespanCount'] as core.int
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          parameters: _json.containsKey('parameters')
              ? _json['parameters'] as core.Map<core.String, core.dynamic>
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (lifespanCount != null) 'lifespanCount': lifespanCount!,
        if (name != null) 'name': name!,
        if (parameters != null) 'parameters': parameters!,
      };
}

/// Used by:
///
/// - dialogflow:v2 : GoogleCloudDialogflowV2beta1IntentMessageImage
/// - dialogflow:v3 : GoogleCloudDialogflowV2beta1IntentMessageImage
class $GoogleCloudDialogflowV2beta1IntentMessageImage {
  /// A text description of the image to be used for accessibility, e.g., screen
  /// readers.
  ///
  /// Required if image_uri is set for CarouselSelect.
  core.String? accessibilityText;

  /// The public URI to an image file.
  ///
  /// Optional.
  core.String? imageUri;

  $GoogleCloudDialogflowV2beta1IntentMessageImage({
    this.accessibilityText,
    this.imageUri,
  });

  $GoogleCloudDialogflowV2beta1IntentMessageImage.fromJson(core.Map _json)
      : this(
          accessibilityText: _json.containsKey('accessibilityText')
              ? _json['accessibilityText'] as core.String
              : null,
          imageUri: _json.containsKey('imageUri')
              ? _json['imageUri'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accessibilityText != null) 'accessibilityText': accessibilityText!,
        if (imageUri != null) 'imageUri': imageUri!,
      };
}

/// Used by:
///
/// - dialogflow:v2 : GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia
/// - dialogflow:v3 : GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia
class $GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia {
  /// Publicly reachable URI of the file.
  ///
  /// The RBM platform determines the MIME type of the file from the
  /// content-type field in the HTTP headers when the platform fetches the file.
  /// The content-type field must be present and accurate in the HTTP response
  /// from the URL.
  ///
  /// Required.
  core.String? fileUri;

  /// Required for cards with vertical orientation.
  ///
  /// The height of the media within a rich card with a vertical layout. For a
  /// standalone card with horizontal layout, height is not customizable, and
  /// this field is ignored.
  /// Possible string values are:
  /// - "HEIGHT_UNSPECIFIED" : Not specified.
  /// - "SHORT" : 112 DP.
  /// - "MEDIUM" : 168 DP.
  /// - "TALL" : 264 DP. Not available for rich card carousels when the card
  /// width is set to small.
  core.String? height;

  /// Publicly reachable URI of the thumbnail.If you don't provide a thumbnail
  /// URI, the RBM platform displays a blank placeholder thumbnail until the
  /// user's device downloads the file.
  ///
  /// Depending on the user's setting, the file may not download automatically
  /// and may require the user to tap a download button.
  ///
  /// Optional.
  core.String? thumbnailUri;

  $GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia({
    this.fileUri,
    this.height,
    this.thumbnailUri,
  });

  $GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia.fromJson(
      core.Map _json)
      : this(
          fileUri: _json.containsKey('fileUri')
              ? _json['fileUri'] as core.String
              : null,
          height: _json.containsKey('height')
              ? _json['height'] as core.String
              : null,
          thumbnailUri: _json.containsKey('thumbnailUri')
              ? _json['thumbnailUri'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fileUri != null) 'fileUri': fileUri!,
        if (height != null) 'height': height!,
        if (thumbnailUri != null) 'thumbnailUri': thumbnailUri!,
      };
}

/// Used by:
///
/// - dialogflow:v2 : GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionDial
/// - dialogflow:v3 : GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionDial
class $GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionDial {
  /// The phone number to fill in the default dialer app.
  ///
  /// This field should be in [E.164](https://en.wikipedia.org/wiki/E.164)
  /// format. An example of a correctly formatted phone number: +15556767888.
  ///
  /// Required.
  core.String? phoneNumber;

  $GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionDial({
    this.phoneNumber,
  });

  $GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionDial.fromJson(
      core.Map _json)
      : this(
          phoneNumber: _json.containsKey('phoneNumber')
              ? _json['phoneNumber'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (phoneNumber != null) 'phoneNumber': phoneNumber!,
      };
}

/// Used by:
///
/// - dialogflow:v2 : GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionOpenUri
/// - dialogflow:v3 : GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionOpenUri
class $GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionOpenUri {
  /// The uri to open on the user device
  ///
  /// Required.
  core.String? uri;

  $GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionOpenUri({
    this.uri,
  });

  $GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionOpenUri.fromJson(
      core.Map _json)
      : this(
          uri: _json.containsKey('uri') ? _json['uri'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (uri != null) 'uri': uri!,
      };
}

/// Used by:
///
/// - dialogflow:v2 : GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply
/// - dialogflow:v3 : GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply
class $GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply {
  /// Opaque payload that the Dialogflow receives in a user event when the user
  /// taps the suggested reply.
  ///
  /// This data will be also forwarded to webhook to allow performing custom
  /// business logic.
  core.String? postbackData;

  /// Suggested reply text.
  core.String? text;

  $GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply({
    this.postbackData,
    this.text,
  });

  $GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply.fromJson(
      core.Map _json)
      : this(
          postbackData: _json.containsKey('postbackData')
              ? _json['postbackData'] as core.String
              : null,
          text: _json.containsKey('text') ? _json['text'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (postbackData != null) 'postbackData': postbackData!,
        if (text != null) 'text': text!,
      };
}

/// Used by:
///
/// - dialogflow:v2 : GoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio
/// - dialogflow:v3 : GoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio
class $GoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio {
  /// URI to a Google Cloud Storage object containing the audio to play, e.g.,
  /// "gs://bucket/object".
  ///
  /// The object must contain a single channel (mono) of linear PCM audio (2
  /// bytes / sample) at 8kHz. This object must be readable by the
  /// `service-@gcp-sa-dialogflow.iam.gserviceaccount.com` service account where
  /// is the number of the Telephony Gateway project (usually the same as the
  /// Dialogflow agent project). If the Google Cloud Storage bucket is in the
  /// Telephony Gateway project, this permission is added by default when
  /// enabling the Dialogflow V2 API. For audio from other sources, consider
  /// using the `TelephonySynthesizeSpeech` message with SSML.
  ///
  /// Required.
  core.String? audioUri;

  $GoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio({
    this.audioUri,
  });

  $GoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio.fromJson(
      core.Map _json)
      : this(
          audioUri: _json.containsKey('audioUri')
              ? _json['audioUri'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (audioUri != null) 'audioUri': audioUri!,
      };
}

/// Used by:
///
/// - dialogflow:v2 : GoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech
/// - dialogflow:v3 : GoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech
class $GoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech {
  /// The SSML to be synthesized.
  ///
  /// For more information, see
  /// [SSML](https://developers.google.com/actions/reference/ssml).
  core.String? ssml;

  /// The raw text to be synthesized.
  core.String? text;

  $GoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech({
    this.ssml,
    this.text,
  });

  $GoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech.fromJson(
      core.Map _json)
      : this(
          ssml: _json.containsKey('ssml') ? _json['ssml'] as core.String : null,
          text: _json.containsKey('text') ? _json['text'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (ssml != null) 'ssml': ssml!,
        if (text != null) 'text': text!,
      };
}

/// Used by:
///
/// - dialogflow:v2 : GoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall
/// - dialogflow:v3 : GoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall
class $GoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall {
  /// The phone number to transfer the call to in
  /// [E.164 format](https://en.wikipedia.org/wiki/E.164).
  ///
  /// We currently only allow transferring to US numbers (+1xxxyyyzzzz).
  ///
  /// Required.
  core.String? phoneNumber;

  $GoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall({
    this.phoneNumber,
  });

  $GoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall.fromJson(
      core.Map _json)
      : this(
          phoneNumber: _json.containsKey('phoneNumber')
              ? _json['phoneNumber'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (phoneNumber != null) 'phoneNumber': phoneNumber!,
      };
}

/// Used by:
///
/// - dialogflow:v2 : GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer
/// - dialogflow:v3 : GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer
class $GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer {
  /// The piece of text from the `source` knowledge base document that answers
  /// this conversational query.
  core.String? answer;

  /// The corresponding FAQ question if the answer was extracted from a FAQ
  /// Document, empty otherwise.
  core.String? faqQuestion;

  /// The system's confidence score that this Knowledge answer is a good match
  /// for this conversational query.
  ///
  /// The range is from 0.0 (completely uncertain) to 1.0 (completely certain).
  /// Note: The confidence score is likely to vary somewhat (possibly even for
  /// identical requests), as the underlying model is under constant
  /// improvement. It may be deprecated in the future. We recommend using
  /// `match_confidence_level` which should be generally more stable.
  core.double? matchConfidence;

  /// The system's confidence level that this knowledge answer is a good match
  /// for this conversational query.
  ///
  /// NOTE: The confidence level for a given `` pair may change without notice,
  /// as it depends on models that are constantly being improved. However, it
  /// will change less frequently than the confidence score below, and should be
  /// preferred for referencing the quality of an answer.
  /// Possible string values are:
  /// - "MATCH_CONFIDENCE_LEVEL_UNSPECIFIED" : Not specified.
  /// - "LOW" : Indicates that the confidence is low.
  /// - "MEDIUM" : Indicates our confidence is medium.
  /// - "HIGH" : Indicates our confidence is high.
  core.String? matchConfidenceLevel;

  /// Indicates which Knowledge Document this answer was extracted from.
  ///
  /// Format: `projects//knowledgeBases//documents/`.
  core.String? source;

  $GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer({
    this.answer,
    this.faqQuestion,
    this.matchConfidence,
    this.matchConfidenceLevel,
    this.source,
  });

  $GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer.fromJson(core.Map _json)
      : this(
          answer: _json.containsKey('answer')
              ? _json['answer'] as core.String
              : null,
          faqQuestion: _json.containsKey('faqQuestion')
              ? _json['faqQuestion'] as core.String
              : null,
          matchConfidence: _json.containsKey('matchConfidence')
              ? (_json['matchConfidence'] as core.num).toDouble()
              : null,
          matchConfidenceLevel: _json.containsKey('matchConfidenceLevel')
              ? _json['matchConfidenceLevel'] as core.String
              : null,
          source: _json.containsKey('source')
              ? _json['source'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (answer != null) 'answer': answer!,
        if (faqQuestion != null) 'faqQuestion': faqQuestion!,
        if (matchConfidence != null) 'matchConfidence': matchConfidence!,
        if (matchConfidenceLevel != null)
          'matchConfidenceLevel': matchConfidenceLevel!,
        if (source != null) 'source': source!,
      };
}

/// Used by:
///
/// - dialogflow:v2 : GoogleCloudDialogflowV2beta1SmartReplyAnswer
/// - dialogflow:v3 : GoogleCloudDialogflowV2beta1SmartReplyAnswer
class $GoogleCloudDialogflowV2beta1SmartReplyAnswer {
  /// The name of answer record, in the format of
  /// "projects//locations//answerRecords/"
  core.String? answerRecord;

  /// Smart reply confidence.
  ///
  /// The system's confidence score that this reply is a good match for this
  /// conversation, as a value from 0.0 (completely uncertain) to 1.0
  /// (completely certain).
  core.double? confidence;

  /// The content of the reply.
  core.String? reply;

  $GoogleCloudDialogflowV2beta1SmartReplyAnswer({
    this.answerRecord,
    this.confidence,
    this.reply,
  });

  $GoogleCloudDialogflowV2beta1SmartReplyAnswer.fromJson(core.Map _json)
      : this(
          answerRecord: _json.containsKey('answerRecord')
              ? _json['answerRecord'] as core.String
              : null,
          confidence: _json.containsKey('confidence')
              ? (_json['confidence'] as core.num).toDouble()
              : null,
          reply:
              _json.containsKey('reply') ? _json['reply'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (answerRecord != null) 'answerRecord': answerRecord!,
        if (confidence != null) 'confidence': confidence!,
        if (reply != null) 'reply': reply!,
      };
}

/// Used by:
///
/// - file:v1 : GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule
/// - managedidentities:v1 : GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule
/// - memcache:v1 : GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule
class $GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule {
  /// This field is deprecated, and will be always set to true since reschedule
  /// can happen multiple times now.
  ///
  /// This field should not be removed until all service producers remove this
  /// for their customers.
  core.bool? canReschedule;

  /// The scheduled end time for the maintenance.
  core.String? endTime;

  /// The rollout management policy this maintenance schedule is associated
  /// with.
  ///
  /// When doing reschedule update request, the reschedule should be against
  /// this given policy.
  core.String? rolloutManagementPolicy;

  /// schedule_deadline_time is the time deadline any schedule start time cannot
  /// go beyond, including reschedule.
  ///
  /// It's normally the initial schedule start time plus maintenance window
  /// length (1 day or 1 week). Maintenance cannot be scheduled to start beyond
  /// this deadline.
  core.String? scheduleDeadlineTime;

  /// The scheduled start time for the maintenance.
  core.String? startTime;

  $GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule({
    this.canReschedule,
    this.endTime,
    this.rolloutManagementPolicy,
    this.scheduleDeadlineTime,
    this.startTime,
  });

  $GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule.fromJson(
      core.Map _json)
      : this(
          canReschedule: _json.containsKey('canReschedule')
              ? _json['canReschedule'] as core.bool
              : null,
          endTime: _json.containsKey('endTime')
              ? _json['endTime'] as core.String
              : null,
          rolloutManagementPolicy: _json.containsKey('rolloutManagementPolicy')
              ? _json['rolloutManagementPolicy'] as core.String
              : null,
          scheduleDeadlineTime: _json.containsKey('scheduleDeadlineTime')
              ? _json['scheduleDeadlineTime'] as core.String
              : null,
          startTime: _json.containsKey('startTime')
              ? _json['startTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (canReschedule != null) 'canReschedule': canReschedule!,
        if (endTime != null) 'endTime': endTime!,
        if (rolloutManagementPolicy != null)
          'rolloutManagementPolicy': rolloutManagementPolicy!,
        if (scheduleDeadlineTime != null)
          'scheduleDeadlineTime': scheduleDeadlineTime!,
        if (startTime != null) 'startTime': startTime!,
      };
}

/// Used by:
///
/// - file:v1 : GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource
/// - managedidentities:v1 : GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource
/// - memcache:v1 : GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource
class $GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource {
  /// Type of the resource.
  ///
  /// This can be either a GCP resource or a custom one (e.g. another cloud
  /// provider's VM). For GCP compute resources use singular form of the names
  /// listed in GCP compute API documentation
  /// (https://cloud.google.com/compute/docs/reference/rest/v1/), prefixed with
  /// 'compute-', for example: 'compute-instance', 'compute-disk',
  /// 'compute-autoscaler'.
  core.String? resourceType;

  /// URL identifying the resource, e.g.
  /// "https://www.googleapis.com/compute/v1/projects/...)".
  core.String? resourceUrl;

  $GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource({
    this.resourceType,
    this.resourceUrl,
  });

  $GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource.fromJson(
      core.Map _json)
      : this(
          resourceType: _json.containsKey('resourceType')
              ? _json['resourceType'] as core.String
              : null,
          resourceUrl: _json.containsKey('resourceUrl')
              ? _json['resourceUrl'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (resourceType != null) 'resourceType': resourceType!,
        if (resourceUrl != null) 'resourceUrl': resourceUrl!,
      };
}

/// Used by:
///
/// - file:v1 : GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility
/// - managedidentities:v1 : GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility
/// - memcache:v1 : GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility
class $GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility {
  /// Whether an instance is eligible or ineligible.
  core.bool? eligible;

  /// User-defined reason for the current value of instance eligibility.
  ///
  /// Usually, this can be directly mapped to the internal state. An empty
  /// reason is allowed.
  core.String? reason;

  $GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility({
    this.eligible,
    this.reason,
  });

  $GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility.fromJson(
      core.Map _json)
      : this(
          eligible: _json.containsKey('eligible')
              ? _json['eligible'] as core.bool
              : null,
          reason: _json.containsKey('reason')
              ? _json['reason'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (eligible != null) 'eligible': eligible!,
        if (reason != null) 'reason': reason!,
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
/// - documentai:v1 : GoogleCloudDocumentaiV1HumanReviewStatus
/// - documentai:v1 : GoogleCloudDocumentaiV1beta3HumanReviewStatus
class $HumanReviewStatus {
  /// The name of the operation triggered by the processed document.
  ///
  /// This field is populated only when the \[state\] is
  /// \[HUMAN_REVIEW_IN_PROGRESS\]. It has the same response type and metadata
  /// as the long running operation returned by \[ReviewDocument\] method.
  core.String? humanReviewOperation;

  /// The state of human review on the processing request.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Human review state is unspecified. Most likely due
  /// to an internal error.
  /// - "SKIPPED" : Human review is skipped for the document. This can happen
  /// because human review is not enabled on the processor or the processing
  /// request has been set to skip this document.
  /// - "VALIDATION_PASSED" : Human review validation is triggered and passed,
  /// so no review is needed.
  /// - "IN_PROGRESS" : Human review validation is triggered and the document is
  /// under review.
  /// - "ERROR" : Some error happened during triggering human review, see the
  /// \[state_message\] for details.
  core.String? state;

  /// A message providing more details about the human review state.
  core.String? stateMessage;

  $HumanReviewStatus({
    this.humanReviewOperation,
    this.state,
    this.stateMessage,
  });

  $HumanReviewStatus.fromJson(core.Map _json)
      : this(
          humanReviewOperation: _json.containsKey('humanReviewOperation')
              ? _json['humanReviewOperation'] as core.String
              : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
          stateMessage: _json.containsKey('stateMessage')
              ? _json['stateMessage'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (humanReviewOperation != null)
          'humanReviewOperation': humanReviewOperation!,
        if (state != null) 'state': state!,
        if (stateMessage != null) 'stateMessage': stateMessage!,
      };
}

/// Used by:
///
/// - vision:v1 : GoogleCloudVisionV1p1beta1ImageAnnotationContext
/// - vision:v1 : GoogleCloudVisionV1p2beta1ImageAnnotationContext
/// - vision:v1 : GoogleCloudVisionV1p3beta1ImageAnnotationContext
/// - vision:v1 : GoogleCloudVisionV1p4beta1ImageAnnotationContext
/// - vision:v1 : ImageAnnotationContext
class $ImageAnnotationContext {
  /// If the file was a PDF or TIFF, this field gives the page number within the
  /// file used to produce the image.
  core.int? pageNumber;

  /// The URI of the file used to produce the image.
  core.String? uri;

  $ImageAnnotationContext({
    this.pageNumber,
    this.uri,
  });

  $ImageAnnotationContext.fromJson(core.Map _json)
      : this(
          pageNumber: _json.containsKey('pageNumber')
              ? _json['pageNumber'] as core.int
              : null,
          uri: _json.containsKey('uri') ? _json['uri'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (pageNumber != null) 'pageNumber': pageNumber!,
        if (uri != null) 'uri': uri!,
      };
}

/// Used by:
///
/// - retail:v2 : GoogleCloudRetailV2ImportErrorsConfig
/// - retail:v2 : GoogleCloudRetailV2alphaImportErrorsConfig
/// - retail:v2 : GoogleCloudRetailV2betaImportErrorsConfig
class $ImportErrorsConfig {
  /// Google Cloud Storage path for import errors.
  ///
  /// This must be an empty, existing Cloud Storage bucket. Import errors will
  /// be written to a file in this bucket, one per line, as a JSON-encoded
  /// `google.rpc.Status` message.
  core.String? gcsPrefix;

  $ImportErrorsConfig({
    this.gcsPrefix,
  });

  $ImportErrorsConfig.fromJson(core.Map _json)
      : this(
          gcsPrefix: _json.containsKey('gcsPrefix')
              ? _json['gcsPrefix'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (gcsPrefix != null) 'gcsPrefix': gcsPrefix!,
      };
}

/// Used by:
///
/// - dialogflow:v2 : GoogleCloudDialogflowCxV3ImportFlowResponse
/// - dialogflow:v2 : GoogleCloudDialogflowCxV3beta1ImportFlowResponse
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3ImportFlowResponse
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3beta1ImportFlowResponse
class $ImportFlowResponse {
  /// The unique identifier of the new flow.
  ///
  /// Format: `projects//locations//agents//flows/`.
  core.String? flow;

  $ImportFlowResponse({
    this.flow,
  });

  $ImportFlowResponse.fromJson(core.Map _json)
      : this(
          flow: _json.containsKey('flow') ? _json['flow'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (flow != null) 'flow': flow!,
      };
}

/// Used by:
///
/// - retail:v2 : GoogleCloudRetailV2ImportMetadata
/// - retail:v2 : GoogleCloudRetailV2alphaImportMetadata
/// - retail:v2 : GoogleCloudRetailV2betaImportMetadata
class $ImportMetadata {
  /// Operation create time.
  core.String? createTime;

  /// Count of entries that encountered errors while processing.
  core.String? failureCount;

  /// Pub/Sub topic for receiving notification.
  ///
  /// If this field is set, when the import is finished, a notification will be
  /// sent to specified Pub/Sub topic. The message data will be JSON string of a
  /// Operation. Format of the Pub/Sub topic is
  /// `projects/{project}/topics/{topic}`.
  core.String? notificationPubsubTopic;

  /// Id of the request / operation.
  ///
  /// This is parroting back the requestId that was passed in the request.
  core.String? requestId;

  /// Count of entries that were processed successfully.
  core.String? successCount;

  /// Operation last update time.
  ///
  /// If the operation is done, this is also the finish time.
  core.String? updateTime;

  $ImportMetadata({
    this.createTime,
    this.failureCount,
    this.notificationPubsubTopic,
    this.requestId,
    this.successCount,
    this.updateTime,
  });

  $ImportMetadata.fromJson(core.Map _json)
      : this(
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          failureCount: _json.containsKey('failureCount')
              ? _json['failureCount'] as core.String
              : null,
          notificationPubsubTopic: _json.containsKey('notificationPubsubTopic')
              ? _json['notificationPubsubTopic'] as core.String
              : null,
          requestId: _json.containsKey('requestId')
              ? _json['requestId'] as core.String
              : null,
          successCount: _json.containsKey('successCount')
              ? _json['successCount'] as core.String
              : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (failureCount != null) 'failureCount': failureCount!,
        if (notificationPubsubTopic != null)
          'notificationPubsubTopic': notificationPubsubTopic!,
        if (requestId != null) 'requestId': requestId!,
        if (successCount != null) 'successCount': successCount!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// Used by:
///
/// - dialogflow:v2 : GoogleCloudDialogflowCxV3ImportTestCasesResponse
/// - dialogflow:v2 : GoogleCloudDialogflowCxV3beta1ImportTestCasesResponse
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3ImportTestCasesResponse
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3beta1ImportTestCasesResponse
class $ImportTestCasesResponse {
  /// The unique identifiers of the new test cases.
  ///
  /// Format: `projects//locations//agents//testCases/`.
  core.List<core.String>? names;

  $ImportTestCasesResponse({
    this.names,
  });

  $ImportTestCasesResponse.fromJson(core.Map _json)
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
/// - dialogflow:v2 : GoogleCloudDialogflowCxV3InputAudioConfig
/// - dialogflow:v2 : GoogleCloudDialogflowCxV3beta1InputAudioConfig
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3InputAudioConfig
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3beta1InputAudioConfig
class $InputAudioConfig {
  /// Audio encoding of the audio content to process.
  ///
  /// Required.
  /// Possible string values are:
  /// - "AUDIO_ENCODING_UNSPECIFIED" : Not specified.
  /// - "AUDIO_ENCODING_LINEAR_16" : Uncompressed 16-bit signed little-endian
  /// samples (Linear PCM).
  /// - "AUDIO_ENCODING_FLAC" :
  /// \[`FLAC`\](https://xiph.org/flac/documentation.html) (Free Lossless Audio
  /// Codec) is the recommended encoding because it is lossless (therefore
  /// recognition is not compromised) and requires only about half the bandwidth
  /// of `LINEAR16`. `FLAC` stream encoding supports 16-bit and 24-bit samples,
  /// however, not all fields in `STREAMINFO` are supported.
  /// - "AUDIO_ENCODING_MULAW" : 8-bit samples that compand 14-bit audio samples
  /// using G.711 PCMU/mu-law.
  /// - "AUDIO_ENCODING_AMR" : Adaptive Multi-Rate Narrowband codec.
  /// `sample_rate_hertz` must be 8000.
  /// - "AUDIO_ENCODING_AMR_WB" : Adaptive Multi-Rate Wideband codec.
  /// `sample_rate_hertz` must be 16000.
  /// - "AUDIO_ENCODING_OGG_OPUS" : Opus encoded audio frames in Ogg container
  /// ([OggOpus](https://wiki.xiph.org/OggOpus)). `sample_rate_hertz` must be
  /// 16000.
  /// - "AUDIO_ENCODING_SPEEX_WITH_HEADER_BYTE" : Although the use of lossy
  /// encodings is not recommended, if a very low bitrate encoding is required,
  /// `OGG_OPUS` is highly preferred over Speex encoding. The
  /// [Speex](https://speex.org/) encoding supported by Dialogflow API has a
  /// header byte in each block, as in MIME type
  /// `audio/x-speex-with-header-byte`. It is a variant of the RTP Speex
  /// encoding defined in [RFC 5574](https://tools.ietf.org/html/rfc5574). The
  /// stream is a sequence of blocks, one block per RTP packet. Each block
  /// starts with a byte containing the length of the block, in bytes, followed
  /// by one or more frames of Speex data, padded to an integral number of bytes
  /// (octets) as specified in RFC 5574. In other words, each RTP header is
  /// replaced with a single byte containing the block length. Only Speex
  /// wideband is supported. `sample_rate_hertz` must be 16000.
  core.String? audioEncoding;

  /// If `true`, Dialogflow returns SpeechWordInfo in StreamingRecognitionResult
  /// with information about the recognized speech words, e.g. start and end
  /// time offsets.
  ///
  /// If false or unspecified, Speech doesn't return any word-level information.
  ///
  /// Optional.
  core.bool? enableWordInfo;

  /// Which Speech model to select for the given request.
  ///
  /// Select the model best suited to your domain to get best results. If a
  /// model is not explicitly specified, then we auto-select a model based on
  /// the parameters in the InputAudioConfig. If enhanced speech model is
  /// enabled for the agent and an enhanced version of the specified model for
  /// the language does not exist, then the speech is recognized using the
  /// standard version of the specified model. Refer to
  /// [Cloud Speech API documentation](https://cloud.google.com/speech-to-text/docs/basics#select-model)
  /// for more details.
  ///
  /// Optional.
  core.String? model;

  /// Which variant of the Speech model to use.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "SPEECH_MODEL_VARIANT_UNSPECIFIED" : No model variant specified. In this
  /// case Dialogflow defaults to USE_BEST_AVAILABLE.
  /// - "USE_BEST_AVAILABLE" : Use the best available variant of the Speech
  /// model that the caller is eligible for. Please see the
  /// [Dialogflow docs](https://cloud.google.com/dialogflow/docs/data-logging)
  /// for how to make your project eligible for enhanced models.
  /// - "USE_STANDARD" : Use standard model variant even if an enhanced model is
  /// available. See the
  /// [Cloud Speech documentation](https://cloud.google.com/speech-to-text/docs/enhanced-models)
  /// for details about enhanced models.
  /// - "USE_ENHANCED" : Use an enhanced model variant: * If an enhanced variant
  /// does not exist for the given model and request language, Dialogflow falls
  /// back to the standard variant. The
  /// [Cloud Speech documentation](https://cloud.google.com/speech-to-text/docs/enhanced-models)
  /// describes which models have enhanced variants. * If the API caller isn't
  /// eligible for enhanced models, Dialogflow returns an error. Please see the
  /// [Dialogflow docs](https://cloud.google.com/dialogflow/docs/data-logging)
  /// for how to make your project eligible.
  core.String? modelVariant;

  /// A list of strings containing words and phrases that the speech recognizer
  /// should recognize with higher likelihood.
  ///
  /// See
  /// [the Cloud Speech documentation](https://cloud.google.com/speech-to-text/docs/basics#phrase-hints)
  /// for more details.
  ///
  /// Optional.
  core.List<core.String>? phraseHints;

  /// Sample rate (in Hertz) of the audio content sent in the query.
  ///
  /// Refer to
  /// [Cloud Speech API documentation](https://cloud.google.com/speech-to-text/docs/basics)
  /// for more details.
  core.int? sampleRateHertz;

  /// If `false` (default), recognition does not cease until the client closes
  /// the stream.
  ///
  /// If `true`, the recognizer will detect a single spoken utterance in input
  /// audio. Recognition ceases when it detects the audio's voice has stopped or
  /// paused. In this case, once a detected intent is received, the client
  /// should close the stream and start a new request with a new stream as
  /// needed. Note: This setting is relevant only for streaming methods.
  ///
  /// Optional.
  core.bool? singleUtterance;

  $InputAudioConfig({
    this.audioEncoding,
    this.enableWordInfo,
    this.model,
    this.modelVariant,
    this.phraseHints,
    this.sampleRateHertz,
    this.singleUtterance,
  });

  $InputAudioConfig.fromJson(core.Map _json)
      : this(
          audioEncoding: _json.containsKey('audioEncoding')
              ? _json['audioEncoding'] as core.String
              : null,
          enableWordInfo: _json.containsKey('enableWordInfo')
              ? _json['enableWordInfo'] as core.bool
              : null,
          model:
              _json.containsKey('model') ? _json['model'] as core.String : null,
          modelVariant: _json.containsKey('modelVariant')
              ? _json['modelVariant'] as core.String
              : null,
          phraseHints: _json.containsKey('phraseHints')
              ? (_json['phraseHints'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          sampleRateHertz: _json.containsKey('sampleRateHertz')
              ? _json['sampleRateHertz'] as core.int
              : null,
          singleUtterance: _json.containsKey('singleUtterance')
              ? _json['singleUtterance'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (audioEncoding != null) 'audioEncoding': audioEncoding!,
        if (enableWordInfo != null) 'enableWordInfo': enableWordInfo!,
        if (model != null) 'model': model!,
        if (modelVariant != null) 'modelVariant': modelVariant!,
        if (phraseHints != null) 'phraseHints': phraseHints!,
        if (sampleRateHertz != null) 'sampleRateHertz': sampleRateHertz!,
        if (singleUtterance != null) 'singleUtterance': singleUtterance!,
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
/// - dialogflow:v2 : GoogleCloudDialogflowV2IntentFollowupIntentInfo
/// - dialogflow:v2 : GoogleCloudDialogflowV2beta1IntentFollowupIntentInfo
/// - dialogflow:v3 : GoogleCloudDialogflowV2IntentFollowupIntentInfo
/// - dialogflow:v3 : GoogleCloudDialogflowV2beta1IntentFollowupIntentInfo
class $IntentFollowupIntentInfo {
  /// The unique identifier of the followup intent.
  ///
  /// Format: `projects//agent/intents/`.
  core.String? followupIntentName;

  /// The unique identifier of the followup intent's parent.
  ///
  /// Format: `projects//agent/intents/`.
  core.String? parentFollowupIntentName;

  $IntentFollowupIntentInfo({
    this.followupIntentName,
    this.parentFollowupIntentName,
  });

  $IntentFollowupIntentInfo.fromJson(core.Map _json)
      : this(
          followupIntentName: _json.containsKey('followupIntentName')
              ? _json['followupIntentName'] as core.String
              : null,
          parentFollowupIntentName:
              _json.containsKey('parentFollowupIntentName')
                  ? _json['parentFollowupIntentName'] as core.String
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (followupIntentName != null)
          'followupIntentName': followupIntentName!,
        if (parentFollowupIntentName != null)
          'parentFollowupIntentName': parentFollowupIntentName!,
      };
}

/// Used by:
///
/// - dialogflow:v2 : GoogleCloudDialogflowCxV3IntentInput
/// - dialogflow:v2 : GoogleCloudDialogflowCxV3beta1IntentInput
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3IntentInput
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3beta1IntentInput
class $IntentInput {
  /// The unique identifier of the intent.
  ///
  /// Format: `projects//locations//agents//intents/`.
  ///
  /// Required.
  core.String? intent;

  $IntentInput({
    this.intent,
  });

  $IntentInput.fromJson(core.Map _json)
      : this(
          intent: _json.containsKey('intent')
              ? _json['intent'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (intent != null) 'intent': intent!,
      };
}

/// Used by:
///
/// - dialogflow:v2 : GoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenUriAction
/// - dialogflow:v2 : GoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenUriAction
/// - dialogflow:v3 : GoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenUriAction
/// - dialogflow:v3 : GoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenUriAction
class $IntentMessageBasicCardButtonOpenUriAction {
  /// The HTTP or HTTPS scheme URI.
  ///
  /// Required.
  core.String? uri;

  $IntentMessageBasicCardButtonOpenUriAction({
    this.uri,
  });

  $IntentMessageBasicCardButtonOpenUriAction.fromJson(core.Map _json)
      : this(
          uri: _json.containsKey('uri') ? _json['uri'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (uri != null) 'uri': uri!,
      };
}

/// Used by:
///
/// - dialogflow:v2 : GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction
/// - dialogflow:v2 : GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction
/// - dialogflow:v3 : GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction
/// - dialogflow:v3 : GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction
class $IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction {
  /// URL
  ///
  /// Required.
  core.String? url;

  /// Specifies the type of viewer that is used when opening the URL.
  ///
  /// Defaults to opening via web browser.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "URL_TYPE_HINT_UNSPECIFIED" : Unspecified
  /// - "AMP_ACTION" : Url would be an amp action
  /// - "AMP_CONTENT" : URL that points directly to AMP content, or to a
  /// canonical URL which refers to AMP content via .
  core.String? urlTypeHint;

  $IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction({
    this.url,
    this.urlTypeHint,
  });

  $IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction.fromJson(
      core.Map _json)
      : this(
          url: _json.containsKey('url') ? _json['url'] as core.String : null,
          urlTypeHint: _json.containsKey('urlTypeHint')
              ? _json['urlTypeHint'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (url != null) 'url': url!,
        if (urlTypeHint != null) 'urlTypeHint': urlTypeHint!,
      };
}

/// Used by:
///
/// - dialogflow:v2 : GoogleCloudDialogflowV2IntentMessageCardButton
/// - dialogflow:v2 : GoogleCloudDialogflowV2beta1IntentMessageCardButton
/// - dialogflow:v3 : GoogleCloudDialogflowV2IntentMessageCardButton
/// - dialogflow:v3 : GoogleCloudDialogflowV2beta1IntentMessageCardButton
class $IntentMessageCardButton {
  /// The text to send back to the Dialogflow API or a URI to open.
  ///
  /// Optional.
  core.String? postback;

  /// The text to show on the button.
  ///
  /// Optional.
  core.String? text;

  $IntentMessageCardButton({
    this.postback,
    this.text,
  });

  $IntentMessageCardButton.fromJson(core.Map _json)
      : this(
          postback: _json.containsKey('postback')
              ? _json['postback'] as core.String
              : null,
          text: _json.containsKey('text') ? _json['text'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (postback != null) 'postback': postback!,
        if (text != null) 'text': text!,
      };
}

/// Used by:
///
/// - dialogflow:v2 : GoogleCloudDialogflowV2IntentMessageColumnProperties
/// - dialogflow:v2 : GoogleCloudDialogflowV2beta1IntentMessageColumnProperties
/// - dialogflow:v3 : GoogleCloudDialogflowV2IntentMessageColumnProperties
/// - dialogflow:v3 : GoogleCloudDialogflowV2beta1IntentMessageColumnProperties
class $IntentMessageColumnProperties {
  /// Column heading.
  ///
  /// Required.
  core.String? header;

  /// Defines text alignment for all cells in this column.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "HORIZONTAL_ALIGNMENT_UNSPECIFIED" : Text is aligned to the leading edge
  /// of the column.
  /// - "LEADING" : Text is aligned to the leading edge of the column.
  /// - "CENTER" : Text is centered in the column.
  /// - "TRAILING" : Text is aligned to the trailing edge of the column.
  core.String? horizontalAlignment;

  $IntentMessageColumnProperties({
    this.header,
    this.horizontalAlignment,
  });

  $IntentMessageColumnProperties.fromJson(core.Map _json)
      : this(
          header: _json.containsKey('header')
              ? _json['header'] as core.String
              : null,
          horizontalAlignment: _json.containsKey('horizontalAlignment')
              ? _json['horizontalAlignment'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (header != null) 'header': header!,
        if (horizontalAlignment != null)
          'horizontalAlignment': horizontalAlignment!,
      };
}

/// Used by:
///
/// - dialogflow:v2 : GoogleCloudDialogflowV2IntentMessageLinkOutSuggestion
/// - dialogflow:v2 : GoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion
/// - dialogflow:v3 : GoogleCloudDialogflowV2IntentMessageLinkOutSuggestion
/// - dialogflow:v3 : GoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion
class $IntentMessageLinkOutSuggestion {
  /// The name of the app or site this chip is linking to.
  ///
  /// Required.
  core.String? destinationName;

  /// The URI of the app or site to open when the user taps the suggestion chip.
  ///
  /// Required.
  core.String? uri;

  $IntentMessageLinkOutSuggestion({
    this.destinationName,
    this.uri,
  });

  $IntentMessageLinkOutSuggestion.fromJson(core.Map _json)
      : this(
          destinationName: _json.containsKey('destinationName')
              ? _json['destinationName'] as core.String
              : null,
          uri: _json.containsKey('uri') ? _json['uri'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (destinationName != null) 'destinationName': destinationName!,
        if (uri != null) 'uri': uri!,
      };
}

/// Used by:
///
/// - dialogflow:v2 : GoogleCloudDialogflowV2IntentMessageQuickReplies
/// - dialogflow:v2 : GoogleCloudDialogflowV2beta1IntentMessageQuickReplies
/// - dialogflow:v3 : GoogleCloudDialogflowV2IntentMessageQuickReplies
/// - dialogflow:v3 : GoogleCloudDialogflowV2beta1IntentMessageQuickReplies
class $IntentMessageQuickReplies {
  /// The collection of quick replies.
  ///
  /// Optional.
  core.List<core.String>? quickReplies;

  /// The title of the collection of quick replies.
  ///
  /// Optional.
  core.String? title;

  $IntentMessageQuickReplies({
    this.quickReplies,
    this.title,
  });

  $IntentMessageQuickReplies.fromJson(core.Map _json)
      : this(
          quickReplies: _json.containsKey('quickReplies')
              ? (_json['quickReplies'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          title:
              _json.containsKey('title') ? _json['title'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (quickReplies != null) 'quickReplies': quickReplies!,
        if (title != null) 'title': title!,
      };
}

/// Used by:
///
/// - dialogflow:v2 : GoogleCloudDialogflowV2IntentMessageSelectItemInfo
/// - dialogflow:v2 : GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo
/// - dialogflow:v3 : GoogleCloudDialogflowV2IntentMessageSelectItemInfo
/// - dialogflow:v3 : GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo
class $IntentMessageSelectItemInfo {
  /// A unique key that will be sent back to the agent if this response is
  /// given.
  ///
  /// Required.
  core.String? key;

  /// A list of synonyms that can also be used to trigger this item in dialog.
  ///
  /// Optional.
  core.List<core.String>? synonyms;

  $IntentMessageSelectItemInfo({
    this.key,
    this.synonyms,
  });

  $IntentMessageSelectItemInfo.fromJson(core.Map _json)
      : this(
          key: _json.containsKey('key') ? _json['key'] as core.String : null,
          synonyms: _json.containsKey('synonyms')
              ? (_json['synonyms'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (key != null) 'key': key!,
        if (synonyms != null) 'synonyms': synonyms!,
      };
}

/// Used by:
///
/// - dialogflow:v2 : GoogleCloudDialogflowV2IntentMessageSimpleResponse
/// - dialogflow:v2 : GoogleCloudDialogflowV2beta1IntentMessageSimpleResponse
/// - dialogflow:v3 : GoogleCloudDialogflowV2IntentMessageSimpleResponse
/// - dialogflow:v3 : GoogleCloudDialogflowV2beta1IntentMessageSimpleResponse
class $IntentMessageSimpleResponse {
  /// The text to display.
  ///
  /// Optional.
  core.String? displayText;

  /// One of text_to_speech or ssml must be provided.
  ///
  /// Structured spoken response to the user in the SSML format. Mutually
  /// exclusive with text_to_speech.
  core.String? ssml;

  /// One of text_to_speech or ssml must be provided.
  ///
  /// The plain text of the speech output. Mutually exclusive with ssml.
  core.String? textToSpeech;

  $IntentMessageSimpleResponse({
    this.displayText,
    this.ssml,
    this.textToSpeech,
  });

  $IntentMessageSimpleResponse.fromJson(core.Map _json)
      : this(
          displayText: _json.containsKey('displayText')
              ? _json['displayText'] as core.String
              : null,
          ssml: _json.containsKey('ssml') ? _json['ssml'] as core.String : null,
          textToSpeech: _json.containsKey('textToSpeech')
              ? _json['textToSpeech'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayText != null) 'displayText': displayText!,
        if (ssml != null) 'ssml': ssml!,
        if (textToSpeech != null) 'textToSpeech': textToSpeech!,
      };
}

/// Used by:
///
/// - dialogflow:v2 : GoogleCloudDialogflowV2IntentMessageSuggestion
/// - dialogflow:v2 : GoogleCloudDialogflowV2beta1IntentMessageSuggestion
/// - dialogflow:v3 : GoogleCloudDialogflowV2IntentMessageSuggestion
/// - dialogflow:v3 : GoogleCloudDialogflowV2beta1IntentMessageSuggestion
class $IntentMessageSuggestion {
  /// The text shown the in the suggestion chip.
  ///
  /// Required.
  core.String? title;

  $IntentMessageSuggestion({
    this.title,
  });

  $IntentMessageSuggestion.fromJson(core.Map _json)
      : this(
          title:
              _json.containsKey('title') ? _json['title'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (title != null) 'title': title!,
      };
}

/// Used by:
///
/// - dialogflow:v2 : GoogleCloudDialogflowV2IntentMessageTableCardCell
/// - dialogflow:v2 : GoogleCloudDialogflowV2beta1IntentMessageTableCardCell
/// - dialogflow:v3 : GoogleCloudDialogflowV2IntentMessageTableCardCell
/// - dialogflow:v3 : GoogleCloudDialogflowV2beta1IntentMessageTableCardCell
class $IntentMessageTableCardCell {
  /// Text in this cell.
  ///
  /// Required.
  core.String? text;

  $IntentMessageTableCardCell({
    this.text,
  });

  $IntentMessageTableCardCell.fromJson(core.Map _json)
      : this(
          text: _json.containsKey('text') ? _json['text'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (text != null) 'text': text!,
      };
}

/// Used by:
///
/// - dialogflow:v2 : GoogleCloudDialogflowV2IntentMessageText
/// - dialogflow:v2 : GoogleCloudDialogflowV2beta1IntentMessageText
/// - dialogflow:v3 : GoogleCloudDialogflowV2IntentMessageText
/// - dialogflow:v3 : GoogleCloudDialogflowV2beta1IntentMessageText
class $IntentMessageText {
  /// The collection of the agent's responses.
  ///
  /// Optional.
  core.List<core.String>? text;

  $IntentMessageText({
    this.text,
  });

  $IntentMessageText.fromJson(core.Map _json)
      : this(
          text: _json.containsKey('text')
              ? (_json['text'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (text != null) 'text': text!,
      };
}

/// Used by:
///
/// - dialogflow:v2 : GoogleCloudDialogflowCxV3IntentParameter
/// - dialogflow:v2 : GoogleCloudDialogflowCxV3beta1IntentParameter
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3IntentParameter
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3beta1IntentParameter
class $IntentParameter00 {
  /// The entity type of the parameter.
  ///
  /// Format: `projects/-/locations/-/agents/-/entityTypes/` for system entity
  /// types (for example,
  /// `projects/-/locations/-/agents/-/entityTypes/sys.date`), or
  /// `projects//locations//agents//entityTypes/` for developer entity types.
  ///
  /// Required.
  core.String? entityType;

  /// The unique identifier of the parameter.
  ///
  /// This field is used by training phrases to annotate their parts.
  ///
  /// Required.
  core.String? id;

  /// Indicates whether the parameter represents a list of values.
  core.bool? isList;

  /// Indicates whether the parameter content should be redacted in log.
  ///
  /// If redaction is enabled, the parameter content will be replaced by
  /// parameter name during logging. Note: the parameter content is subject to
  /// redaction if either parameter level redaction or entity type level
  /// redaction is enabled.
  core.bool? redact;

  $IntentParameter00({
    this.entityType,
    this.id,
    this.isList,
    this.redact,
  });

  $IntentParameter00.fromJson(core.Map _json)
      : this(
          entityType: _json.containsKey('entityType')
              ? _json['entityType'] as core.String
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          isList:
              _json.containsKey('isList') ? _json['isList'] as core.bool : null,
          redact:
              _json.containsKey('redact') ? _json['redact'] as core.bool : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (entityType != null) 'entityType': entityType!,
        if (id != null) 'id': id!,
        if (isList != null) 'isList': isList!,
        if (redact != null) 'redact': redact!,
      };
}

/// Used by:
///
/// - dialogflow:v2 : GoogleCloudDialogflowV2IntentParameter
/// - dialogflow:v2 : GoogleCloudDialogflowV2beta1IntentParameter
/// - dialogflow:v3 : GoogleCloudDialogflowV2IntentParameter
/// - dialogflow:v3 : GoogleCloudDialogflowV2beta1IntentParameter
class $IntentParameter01 {
  /// The default value to use when the `value` yields an empty result.
  ///
  /// Default values can be extracted from contexts by using the following
  /// syntax: `#context_name.parameter_name`.
  ///
  /// Optional.
  core.String? defaultValue;

  /// The name of the parameter.
  ///
  /// Required.
  core.String? displayName;

  /// The name of the entity type, prefixed with `@`, that describes values of
  /// the parameter.
  ///
  /// If the parameter is required, this must be provided.
  ///
  /// Optional.
  core.String? entityTypeDisplayName;

  /// Indicates whether the parameter represents a list of values.
  ///
  /// Optional.
  core.bool? isList;

  /// Indicates whether the parameter is required.
  ///
  /// That is, whether the intent cannot be completed without collecting the
  /// parameter value.
  ///
  /// Optional.
  core.bool? mandatory;

  /// The unique identifier of this parameter.
  core.String? name;

  /// The collection of prompts that the agent can present to the user in order
  /// to collect a value for the parameter.
  ///
  /// Optional.
  core.List<core.String>? prompts;

  /// The definition of the parameter value.
  ///
  /// It can be: - a constant string, - a parameter value defined as
  /// `$parameter_name`, - an original parameter value defined as
  /// `$parameter_name.original`, - a parameter value from some context defined
  /// as `#context_name.parameter_name`.
  ///
  /// Optional.
  core.String? value;

  $IntentParameter01({
    this.defaultValue,
    this.displayName,
    this.entityTypeDisplayName,
    this.isList,
    this.mandatory,
    this.name,
    this.prompts,
    this.value,
  });

  $IntentParameter01.fromJson(core.Map _json)
      : this(
          defaultValue: _json.containsKey('defaultValue')
              ? _json['defaultValue'] as core.String
              : null,
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          entityTypeDisplayName: _json.containsKey('entityTypeDisplayName')
              ? _json['entityTypeDisplayName'] as core.String
              : null,
          isList:
              _json.containsKey('isList') ? _json['isList'] as core.bool : null,
          mandatory: _json.containsKey('mandatory')
              ? _json['mandatory'] as core.bool
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          prompts: _json.containsKey('prompts')
              ? (_json['prompts'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          value:
              _json.containsKey('value') ? _json['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (defaultValue != null) 'defaultValue': defaultValue!,
        if (displayName != null) 'displayName': displayName!,
        if (entityTypeDisplayName != null)
          'entityTypeDisplayName': entityTypeDisplayName!,
        if (isList != null) 'isList': isList!,
        if (mandatory != null) 'mandatory': mandatory!,
        if (name != null) 'name': name!,
        if (prompts != null) 'prompts': prompts!,
        if (value != null) 'value': value!,
      };
}

/// Used by:
///
/// - dialogflow:v2 : GoogleCloudDialogflowCxV3IntentTrainingPhrasePart
/// - dialogflow:v2 : GoogleCloudDialogflowCxV3beta1IntentTrainingPhrasePart
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3IntentTrainingPhrasePart
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3beta1IntentTrainingPhrasePart
class $IntentTrainingPhrasePart00 {
  /// The parameter used to annotate this part of the training phrase.
  ///
  /// This field is required for annotated parts of the training phrase.
  core.String? parameterId;

  /// The text for this part.
  ///
  /// Required.
  core.String? text;

  $IntentTrainingPhrasePart00({
    this.parameterId,
    this.text,
  });

  $IntentTrainingPhrasePart00.fromJson(core.Map _json)
      : this(
          parameterId: _json.containsKey('parameterId')
              ? _json['parameterId'] as core.String
              : null,
          text: _json.containsKey('text') ? _json['text'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (parameterId != null) 'parameterId': parameterId!,
        if (text != null) 'text': text!,
      };
}

/// Used by:
///
/// - dialogflow:v2 : GoogleCloudDialogflowV2IntentTrainingPhrasePart
/// - dialogflow:v2 : GoogleCloudDialogflowV2beta1IntentTrainingPhrasePart
/// - dialogflow:v3 : GoogleCloudDialogflowV2IntentTrainingPhrasePart
/// - dialogflow:v3 : GoogleCloudDialogflowV2beta1IntentTrainingPhrasePart
class $IntentTrainingPhrasePart01 {
  /// The parameter name for the value extracted from the annotated part of the
  /// example.
  ///
  /// This field is required for annotated parts of the training phrase.
  ///
  /// Optional.
  core.String? alias;

  /// The entity type name prefixed with `@`.
  ///
  /// This field is required for annotated parts of the training phrase.
  ///
  /// Optional.
  core.String? entityType;

  /// The text for this part.
  ///
  /// Required.
  core.String? text;

  /// Indicates whether the text was manually annotated.
  ///
  /// This field is set to true when the Dialogflow Console is used to manually
  /// annotate the part. When creating an annotated part with the API, you must
  /// set this to true.
  ///
  /// Optional.
  core.bool? userDefined;

  $IntentTrainingPhrasePart01({
    this.alias,
    this.entityType,
    this.text,
    this.userDefined,
  });

  $IntentTrainingPhrasePart01.fromJson(core.Map _json)
      : this(
          alias:
              _json.containsKey('alias') ? _json['alias'] as core.String : null,
          entityType: _json.containsKey('entityType')
              ? _json['entityType'] as core.String
              : null,
          text: _json.containsKey('text') ? _json['text'] as core.String : null,
          userDefined: _json.containsKey('userDefined')
              ? _json['userDefined'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (alias != null) 'alias': alias!,
        if (entityType != null) 'entityType': entityType!,
        if (text != null) 'text': text!,
        if (userDefined != null) 'userDefined': userDefined!,
      };
}

/// Used by:
///
/// - contactcenterinsights:v1 : GoogleCloudContactcenterinsightsV1IssueModelInputDataConfig
/// - contactcenterinsights:v1 : GoogleCloudContactcenterinsightsV1alpha1IssueModelInputDataConfig
class $IssueModelInputDataConfig {
  /// A filter to reduce the conversations used for training the model to a
  /// specific subset.
  core.String? filter;

  /// Medium of conversations used in training data.
  ///
  /// This field is being deprecated. To specify the medium to be used in
  /// training a new issue model, set the `medium` field on `filter`.
  /// Possible string values are:
  /// - "MEDIUM_UNSPECIFIED" : Default value, if unspecified will default to
  /// PHONE_CALL.
  /// - "PHONE_CALL" : The format for conversations that took place over the
  /// phone.
  /// - "CHAT" : The format for conversations that took place over chat.
  core.String? medium;

  /// Number of conversations used in training.
  ///
  /// Output only.
  ///
  /// Output only.
  core.String? trainingConversationsCount;

  $IssueModelInputDataConfig({
    this.filter,
    this.medium,
    this.trainingConversationsCount,
  });

  $IssueModelInputDataConfig.fromJson(core.Map _json)
      : this(
          filter: _json.containsKey('filter')
              ? _json['filter'] as core.String
              : null,
          medium: _json.containsKey('medium')
              ? _json['medium'] as core.String
              : null,
          trainingConversationsCount:
              _json.containsKey('trainingConversationsCount')
                  ? _json['trainingConversationsCount'] as core.String
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (filter != null) 'filter': filter!,
        if (medium != null) 'medium': medium!,
        if (trainingConversationsCount != null)
          'trainingConversationsCount': trainingConversationsCount!,
      };
}

/// Used by:
///
/// - contactcenterinsights:v1 : GoogleCloudContactcenterinsightsV1IssueModelLabelStatsIssueStats
/// - contactcenterinsights:v1 : GoogleCloudContactcenterinsightsV1alpha1IssueModelLabelStatsIssueStats
class $IssueModelLabelStatsIssueStats {
  /// Issue resource.
  ///
  /// Format:
  /// projects/{project}/locations/{location}/issueModels/{issue_model}/issues/{issue}
  core.String? issue;

  /// Number of conversations attached to the issue at this point in time.
  core.String? labeledConversationsCount;

  $IssueModelLabelStatsIssueStats({
    this.issue,
    this.labeledConversationsCount,
  });

  $IssueModelLabelStatsIssueStats.fromJson(core.Map _json)
      : this(
          issue:
              _json.containsKey('issue') ? _json['issue'] as core.String : null,
          labeledConversationsCount:
              _json.containsKey('labeledConversationsCount')
                  ? _json['labeledConversationsCount'] as core.String
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (issue != null) 'issue': issue!,
        if (labeledConversationsCount != null)
          'labeledConversationsCount': labeledConversationsCount!,
      };
}

/// Used by:
///
/// - binaryauthorization:v1 : Jwt
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
/// - serviceconsumermanagement:v1 : JwtLocation
/// - servicemanagement:v1 : JwtLocation
/// - servicenetworking:v1 : JwtLocation
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
/// - vision:v1 : GoogleCloudVisionV1p1beta1ProductKeyValue
/// - vision:v1 : GoogleCloudVisionV1p2beta1ProductKeyValue
/// - vision:v1 : GoogleCloudVisionV1p3beta1ProductKeyValue
/// - vision:v1 : GoogleCloudVisionV1p4beta1ProductKeyValue
/// - vision:v1 : KeyValue
class $KeyValue {
  /// The key of the label attached to the product.
  ///
  /// Cannot be empty and cannot exceed 128 bytes.
  core.String? key;

  /// The value of the label attached to the product.
  ///
  /// Cannot be empty and cannot exceed 128 bytes.
  core.String? value;

  $KeyValue({
    this.key,
    this.value,
  });

  $KeyValue.fromJson(core.Map _json)
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
/// - dialogflow:v2 : GoogleCloudDialogflowCxV3GenericKnowledgeOperationMetadata
/// - dialogflow:v2 : GoogleCloudDialogflowCxV3beta1GenericKnowledgeOperationMetadata
/// - dialogflow:v2 : GoogleCloudDialogflowV2beta1KnowledgeOperationMetadata
/// - dialogflow:v2 : GoogleCloudDialogflowV3alpha1GenericKnowledgeOperationMetadata
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3GenericKnowledgeOperationMetadata
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3beta1GenericKnowledgeOperationMetadata
/// - dialogflow:v3 : GoogleCloudDialogflowV2beta1KnowledgeOperationMetadata
/// - dialogflow:v3 : GoogleCloudDialogflowV3alpha1GenericKnowledgeOperationMetadata
class $KnowledgeOperationMetadata {
  /// The current state of this operation.
  ///
  /// Required. Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : State unspecified.
  /// - "PENDING" : The operation has been created.
  /// - "RUNNING" : The operation is currently running.
  /// - "DONE" : The operation is done, either cancelled or completed.
  core.String? state;

  $KnowledgeOperationMetadata({
    this.state,
  });

  $KnowledgeOperationMetadata.fromJson(core.Map _json)
      : this(
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (state != null) 'state': state!,
      };
}

/// Used by:
///
/// - logging:v2 : LabelDescriptor
/// - serviceconsumermanagement:v1 : LabelDescriptor
/// - servicemanagement:v1 : LabelDescriptor
/// - servicenetworking:v1 : LabelDescriptor
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
/// - videointelligence:v1 : GoogleCloudVideointelligenceV1_LabelFrame
/// - videointelligence:v1 : GoogleCloudVideointelligenceV1beta2_LabelFrame
/// - videointelligence:v1 : GoogleCloudVideointelligenceV1p1beta1_LabelFrame
/// - videointelligence:v1 : GoogleCloudVideointelligenceV1p2beta1_LabelFrame
/// - videointelligence:v1 : GoogleCloudVideointelligenceV1p3beta1_LabelFrame
class $LabelFrame {
  /// Confidence that the label is accurate.
  ///
  /// Range: \[0, 1\].
  core.double? confidence;

  /// Time-offset, relative to the beginning of the video, corresponding to the
  /// video frame for this location.
  core.String? timeOffset;

  $LabelFrame({
    this.confidence,
    this.timeOffset,
  });

  $LabelFrame.fromJson(core.Map _json)
      : this(
          confidence: _json.containsKey('confidence')
              ? (_json['confidence'] as core.num).toDouble()
              : null,
          timeOffset: _json.containsKey('timeOffset')
              ? _json['timeOffset'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (confidence != null) 'confidence': confidence!,
        if (timeOffset != null) 'timeOffset': timeOffset!,
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
/// - playablelocations:v3 : GoogleTypeLatLng
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
  /// Manager hierarchy): Given the following resource hierarchy O1->{F1, F2};
  /// F1->{P1}; F2->{P2, P3}, `organizations/foo` has a `Policy` with values:
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
/// - bigquerydatatransfer:v1 : Location
/// - bigtableadmin:v2 : Location
/// - cloudfunctions:v1 : Location
/// - cloudkms:v1 : Location
/// - cloudscheduler:v1 : Location
/// - cloudtasks:v2 : Location
/// - connectors:v1 : Location
/// - datafusion:v1 : Location
/// - datamigration:v1 : Location
/// - dialogflow:v2 : GoogleCloudLocationLocation
/// - dialogflow:v3 : GoogleCloudLocationLocation
/// - documentai:v1 : GoogleCloudLocationLocation
/// - eventarc:v1 : Location
/// - file:v1 : Location
/// - firestore:v1 : Location
/// - gameservices:v1 : Location
/// - gkehub:v1 : Location
/// - healthcare:v1 : Location
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
/// - appengine:v1 : GoogleAppengineV1betaLocationMetadata
/// - appengine:v1 : LocationMetadata
class $LocationMetadata {
  /// App Engine flexible environment is available in the given
  /// location.@OutputOnly
  core.bool? flexibleEnvironmentAvailable;

  /// Search API
  /// (https://cloud.google.com/appengine/docs/standard/python/search) is
  /// available in the given location.
  ///
  /// Output only.
  core.bool? searchApiAvailable;

  /// App Engine standard environment is available in the given
  /// location.@OutputOnly
  core.bool? standardEnvironmentAvailable;

  $LocationMetadata({
    this.flexibleEnvironmentAvailable,
    this.searchApiAvailable,
    this.standardEnvironmentAvailable,
  });

  $LocationMetadata.fromJson(core.Map _json)
      : this(
          flexibleEnvironmentAvailable:
              _json.containsKey('flexibleEnvironmentAvailable')
                  ? _json['flexibleEnvironmentAvailable'] as core.bool
                  : null,
          searchApiAvailable: _json.containsKey('searchApiAvailable')
              ? _json['searchApiAvailable'] as core.bool
              : null,
          standardEnvironmentAvailable:
              _json.containsKey('standardEnvironmentAvailable')
                  ? _json['standardEnvironmentAvailable'] as core.bool
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (flexibleEnvironmentAvailable != null)
          'flexibleEnvironmentAvailable': flexibleEnvironmentAvailable!,
        if (searchApiAvailable != null)
          'searchApiAvailable': searchApiAvailable!,
        if (standardEnvironmentAvailable != null)
          'standardEnvironmentAvailable': standardEnvironmentAvailable!,
      };
}

/// Used by:
///
/// - serviceconsumermanagement:v1 : LoggingDestination
/// - servicemanagement:v1 : LoggingDestination
/// - servicenetworking:v1 : LoggingDestination
/// - serviceusage:v1 : LoggingDestination
class $LoggingDestination {
  /// Names of the logs to be sent to this destination.
  ///
  /// Each name must be defined in the Service.logs section. If the log name is
  /// not a domain scoped name, it will be automatically prefixed with the
  /// service name followed by "/".
  core.List<core.String>? logs;

  /// The monitored resource type.
  ///
  /// The type must be defined in the Service.monitored_resources section.
  core.String? monitoredResource;

  $LoggingDestination({
    this.logs,
    this.monitoredResource,
  });

  $LoggingDestination.fromJson(core.Map _json)
      : this(
          logs: _json.containsKey('logs')
              ? (_json['logs'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          monitoredResource: _json.containsKey('monitoredResource')
              ? _json['monitoredResource'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (logs != null) 'logs': logs!,
        if (monitoredResource != null) 'monitoredResource': monitoredResource!,
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
/// - serviceconsumermanagement:v1 : MetricDescriptorMetadata
/// - servicemanagement:v1 : MetricDescriptorMetadata
/// - servicenetworking:v1 : MetricDescriptorMetadata
/// - serviceusage:v1 : MetricDescriptorMetadata
class $MetricDescriptorMetadata00 {
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
  /// their projects allowlisted. Alpha releases don’t have to be feature
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
  /// removed. For more information, see the “Deprecation Policy” section of our
  /// [Terms of Service](https://cloud.google.com/terms/) and the
  /// [Google Cloud Platform Subject to the Deprecation Policy](https://cloud.google.com/terms/deprecation)
  /// documentation.
  core.String? launchStage;

  /// The sampling period of metric data points.
  ///
  /// For metrics which are written periodically, consecutive data points are
  /// stored at this time interval, excluding data loss due to errors. Metrics
  /// with a higher granularity have a smaller sampling period.
  core.String? samplePeriod;

  $MetricDescriptorMetadata00({
    this.ingestDelay,
    this.launchStage,
    this.samplePeriod,
  });

  $MetricDescriptorMetadata00.fromJson(core.Map _json)
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
/// - logging:v2 : MetricDescriptorMetadata
/// - monitoring:v3 : MetricDescriptorMetadata
class $MetricDescriptorMetadata01 {
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
  /// their projects allowlisted. Alpha releases don’t have to be feature
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
  /// removed. For more information, see the “Deprecation Policy” section of our
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

  $MetricDescriptorMetadata01({
    this.ingestDelay,
    this.launchStage,
    this.samplePeriod,
  });

  $MetricDescriptorMetadata01.fromJson(core.Map _json)
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
/// - serviceconsumermanagement:v1 : MetricRule
/// - servicemanagement:v1 : MetricRule
/// - servicenetworking:v1 : MetricRule
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
/// - serviceconsumermanagement:v1 : Mixin
/// - servicemanagement:v1 : Mixin
/// - servicenetworking:v1 : Mixin
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
/// - serviceconsumermanagement:v1 : MonitoringDestination
/// - servicemanagement:v1 : MonitoringDestination
/// - servicenetworking:v1 : MonitoringDestination
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
/// - cloudresourcemanager:v1 : MoveFolderMetadata
/// - cloudresourcemanager:v2 : MoveFolderMetadata
/// - cloudresourcemanager:v3 : MoveFolderMetadata
class $MoveFolderMetadata {
  /// The resource name of the folder or organization to move the folder to.
  core.String? destinationParent;

  /// The display name of the folder.
  core.String? displayName;

  /// The resource name of the folder's parent.
  core.String? sourceParent;

  $MoveFolderMetadata({
    this.destinationParent,
    this.displayName,
    this.sourceParent,
  });

  $MoveFolderMetadata.fromJson(core.Map _json)
      : this(
          destinationParent: _json.containsKey('destinationParent')
              ? _json['destinationParent'] as core.String
              : null,
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          sourceParent: _json.containsKey('sourceParent')
              ? _json['sourceParent'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (destinationParent != null) 'destinationParent': destinationParent!,
        if (displayName != null) 'displayName': displayName!,
        if (sourceParent != null) 'sourceParent': sourceParent!,
      };
}

/// Used by:
///
/// - jobs:v3 : NamespacedDebugInput
/// - jobs:v4 : NamespacedDebugInput
class $NamespacedDebugInput {
  /// Set of experiment names to be absolutely forced.
  ///
  /// These experiments will be forced without evaluating the conditions.
  core.List<core.String>? absolutelyForcedExpNames;

  /// Set of experiment tags to be absolutely forced.
  ///
  /// The experiments with these tags will be forced without evaluating the
  /// conditions.
  core.List<core.String>? absolutelyForcedExpTags;

  /// Set of experiment ids to be absolutely forced.
  ///
  /// These ids will be forced without evaluating the conditions.
  core.List<core.int>? absolutelyForcedExps;

  /// Set of experiment names to be conditionally forced.
  ///
  /// These experiments will be forced only if their conditions and their parent
  /// domain's conditions are true.
  core.List<core.String>? conditionallyForcedExpNames;

  /// Set of experiment tags to be conditionally forced.
  ///
  /// The experiments with these tags will be forced only if their conditions
  /// and their parent domain's conditions are true.
  core.List<core.String>? conditionallyForcedExpTags;

  /// Set of experiment ids to be conditionally forced.
  ///
  /// These ids will be forced only if their conditions and their parent
  /// domain's conditions are true.
  core.List<core.int>? conditionallyForcedExps;

  /// If true, disable automatic enrollment selection (at all diversion points).
  ///
  /// Automatic enrollment selection means experiment selection process based on
  /// the experiment's automatic enrollment condition. This does not disable
  /// selection of forced experiments.
  core.bool? disableAutomaticEnrollmentSelection;

  /// Set of experiment names to be disabled.
  ///
  /// If an experiment is disabled, it is never selected nor forced. If an
  /// aggregate experiment is disabled, its partitions are disabled together. If
  /// an experiment with an enrollment is disabled, the enrollment is disabled
  /// together. If a name corresponds to a domain, the domain itself and all
  /// descendant experiments and domains are disabled together.
  core.List<core.String>? disableExpNames;

  /// Set of experiment tags to be disabled.
  ///
  /// All experiments that are tagged with one or more of these tags are
  /// disabled. If an experiment is disabled, it is never selected nor forced.
  /// If an aggregate experiment is disabled, its partitions are disabled
  /// together. If an experiment with an enrollment is disabled, the enrollment
  /// is disabled together.
  core.List<core.String>? disableExpTags;

  /// Set of experiment ids to be disabled.
  ///
  /// If an experiment is disabled, it is never selected nor forced. If an
  /// aggregate experiment is disabled, its partitions are disabled together. If
  /// an experiment with an enrollment is disabled, the enrollment is disabled
  /// together. If an ID corresponds to a domain, the domain itself and all
  /// descendant experiments and domains are disabled together.
  core.List<core.int>? disableExps;

  /// If true, disable manual enrollment selection (at all diversion points).
  ///
  /// Manual enrollment selection means experiment selection process based on
  /// the request's manual enrollment states (a.k.a. opt-in experiments). This
  /// does not disable selection of forced experiments.
  core.bool? disableManualEnrollmentSelection;

  /// If true, disable organic experiment selection (at all diversion points).
  ///
  /// Organic selection means experiment selection process based on traffic
  /// allocation and diversion condition evaluation. This does not disable
  /// selection of forced experiments. This is useful in cases when it is not
  /// known whether experiment selection behavior is responsible for a error or
  /// breakage. Disabling organic selection may help to isolate the cause of a
  /// given problem.
  core.bool? disableOrganicSelection;

  /// Flags to force in a particular experiment state.
  ///
  /// Map from flag name to flag value.
  core.Map<core.String, core.String>? forcedFlags;

  /// Rollouts to force in a particular experiment state.
  ///
  /// Map from rollout name to rollout value.
  core.Map<core.String, core.bool>? forcedRollouts;

  $NamespacedDebugInput({
    this.absolutelyForcedExpNames,
    this.absolutelyForcedExpTags,
    this.absolutelyForcedExps,
    this.conditionallyForcedExpNames,
    this.conditionallyForcedExpTags,
    this.conditionallyForcedExps,
    this.disableAutomaticEnrollmentSelection,
    this.disableExpNames,
    this.disableExpTags,
    this.disableExps,
    this.disableManualEnrollmentSelection,
    this.disableOrganicSelection,
    this.forcedFlags,
    this.forcedRollouts,
  });

  $NamespacedDebugInput.fromJson(core.Map _json)
      : this(
          absolutelyForcedExpNames:
              _json.containsKey('absolutelyForcedExpNames')
                  ? (_json['absolutelyForcedExpNames'] as core.List)
                      .map((value) => value as core.String)
                      .toList()
                  : null,
          absolutelyForcedExpTags: _json.containsKey('absolutelyForcedExpTags')
              ? (_json['absolutelyForcedExpTags'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          absolutelyForcedExps: _json.containsKey('absolutelyForcedExps')
              ? (_json['absolutelyForcedExps'] as core.List)
                  .map((value) => value as core.int)
                  .toList()
              : null,
          conditionallyForcedExpNames:
              _json.containsKey('conditionallyForcedExpNames')
                  ? (_json['conditionallyForcedExpNames'] as core.List)
                      .map((value) => value as core.String)
                      .toList()
                  : null,
          conditionallyForcedExpTags:
              _json.containsKey('conditionallyForcedExpTags')
                  ? (_json['conditionallyForcedExpTags'] as core.List)
                      .map((value) => value as core.String)
                      .toList()
                  : null,
          conditionallyForcedExps: _json.containsKey('conditionallyForcedExps')
              ? (_json['conditionallyForcedExps'] as core.List)
                  .map((value) => value as core.int)
                  .toList()
              : null,
          disableAutomaticEnrollmentSelection:
              _json.containsKey('disableAutomaticEnrollmentSelection')
                  ? _json['disableAutomaticEnrollmentSelection'] as core.bool
                  : null,
          disableExpNames: _json.containsKey('disableExpNames')
              ? (_json['disableExpNames'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          disableExpTags: _json.containsKey('disableExpTags')
              ? (_json['disableExpTags'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          disableExps: _json.containsKey('disableExps')
              ? (_json['disableExps'] as core.List)
                  .map((value) => value as core.int)
                  .toList()
              : null,
          disableManualEnrollmentSelection:
              _json.containsKey('disableManualEnrollmentSelection')
                  ? _json['disableManualEnrollmentSelection'] as core.bool
                  : null,
          disableOrganicSelection: _json.containsKey('disableOrganicSelection')
              ? _json['disableOrganicSelection'] as core.bool
              : null,
          forcedFlags: _json.containsKey('forcedFlags')
              ? (_json['forcedFlags'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          forcedRollouts: _json.containsKey('forcedRollouts')
              ? (_json['forcedRollouts'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.bool,
                  ),
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (absolutelyForcedExpNames != null)
          'absolutelyForcedExpNames': absolutelyForcedExpNames!,
        if (absolutelyForcedExpTags != null)
          'absolutelyForcedExpTags': absolutelyForcedExpTags!,
        if (absolutelyForcedExps != null)
          'absolutelyForcedExps': absolutelyForcedExps!,
        if (conditionallyForcedExpNames != null)
          'conditionallyForcedExpNames': conditionallyForcedExpNames!,
        if (conditionallyForcedExpTags != null)
          'conditionallyForcedExpTags': conditionallyForcedExpTags!,
        if (conditionallyForcedExps != null)
          'conditionallyForcedExps': conditionallyForcedExps!,
        if (disableAutomaticEnrollmentSelection != null)
          'disableAutomaticEnrollmentSelection':
              disableAutomaticEnrollmentSelection!,
        if (disableExpNames != null) 'disableExpNames': disableExpNames!,
        if (disableExpTags != null) 'disableExpTags': disableExpTags!,
        if (disableExps != null) 'disableExps': disableExps!,
        if (disableManualEnrollmentSelection != null)
          'disableManualEnrollmentSelection': disableManualEnrollmentSelection!,
        if (disableOrganicSelection != null)
          'disableOrganicSelection': disableOrganicSelection!,
        if (forcedFlags != null) 'forcedFlags': forcedFlags!,
        if (forcedRollouts != null) 'forcedRollouts': forcedRollouts!,
      };
}

/// Used by:
///
/// - videointelligence:v1 : GoogleCloudVideointelligenceV1_NormalizedBoundingBox
/// - videointelligence:v1 : GoogleCloudVideointelligenceV1beta2_NormalizedBoundingBox
/// - videointelligence:v1 : GoogleCloudVideointelligenceV1p1beta1_NormalizedBoundingBox
/// - videointelligence:v1 : GoogleCloudVideointelligenceV1p2beta1_NormalizedBoundingBox
/// - videointelligence:v1 : GoogleCloudVideointelligenceV1p3beta1_NormalizedBoundingBox
class $NormalizedBoundingBox {
  /// Bottom Y coordinate.
  core.double? bottom;

  /// Left X coordinate.
  core.double? left;

  /// Right X coordinate.
  core.double? right;

  /// Top Y coordinate.
  core.double? top;

  $NormalizedBoundingBox({
    this.bottom,
    this.left,
    this.right,
    this.top,
  });

  $NormalizedBoundingBox.fromJson(core.Map _json)
      : this(
          bottom: _json.containsKey('bottom')
              ? (_json['bottom'] as core.num).toDouble()
              : null,
          left: _json.containsKey('left')
              ? (_json['left'] as core.num).toDouble()
              : null,
          right: _json.containsKey('right')
              ? (_json['right'] as core.num).toDouble()
              : null,
          top: _json.containsKey('top')
              ? (_json['top'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bottom != null) 'bottom': bottom!,
        if (left != null) 'left': left!,
        if (right != null) 'right': right!,
        if (top != null) 'top': top!,
      };
}

/// Used by:
///
/// - videointelligence:v1 : GoogleCloudVideointelligenceV1_NormalizedVertex
/// - videointelligence:v1 : GoogleCloudVideointelligenceV1beta2_NormalizedVertex
/// - videointelligence:v1 : GoogleCloudVideointelligenceV1p1beta1_NormalizedVertex
/// - videointelligence:v1 : GoogleCloudVideointelligenceV1p2beta1_NormalizedVertex
/// - videointelligence:v1 : GoogleCloudVideointelligenceV1p3beta1_NormalizedVertex
/// - vision:v1 : GoogleCloudVisionV1p1beta1NormalizedVertex
/// - vision:v1 : GoogleCloudVisionV1p2beta1NormalizedVertex
/// - vision:v1 : GoogleCloudVisionV1p3beta1NormalizedVertex
/// - vision:v1 : GoogleCloudVisionV1p4beta1NormalizedVertex
/// - vision:v1 : NormalizedVertex
class $NormalizedVertex00 {
  /// X coordinate.
  core.double? x;

  /// Y coordinate.
  core.double? y;

  $NormalizedVertex00({
    this.x,
    this.y,
  });

  $NormalizedVertex00.fromJson(core.Map _json)
      : this(
          x: _json.containsKey('x')
              ? (_json['x'] as core.num).toDouble()
              : null,
          y: _json.containsKey('y')
              ? (_json['y'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (x != null) 'x': x!,
        if (y != null) 'y': y!,
      };
}

/// Used by:
///
/// - documentai:v1 : GoogleCloudDocumentaiV1NormalizedVertex
/// - documentai:v1 : GoogleCloudDocumentaiV1beta1NormalizedVertex
/// - documentai:v1 : GoogleCloudDocumentaiV1beta2NormalizedVertex
class $NormalizedVertex01 {
  /// X coordinate.
  core.double? x;

  /// Y coordinate (starts from the top of the image).
  core.double? y;

  $NormalizedVertex01({
    this.x,
    this.y,
  });

  $NormalizedVertex01.fromJson(core.Map _json)
      : this(
          x: _json.containsKey('x')
              ? (_json['x'] as core.num).toDouble()
              : null,
          y: _json.containsKey('y')
              ? (_json['y'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (x != null) 'x': x!,
        if (y != null) 'y': y!,
      };
}

/// Used by:
///
/// - serviceconsumermanagement:v1 : OAuthRequirements
/// - servicemanagement:v1 : OAuthRequirements
/// - servicenetworking:v1 : OAuthRequirements
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
/// - vision:v1 : GoogleCloudVisionV1p1beta1ProductSearchResultsObjectAnnotation
/// - vision:v1 : GoogleCloudVisionV1p2beta1ProductSearchResultsObjectAnnotation
/// - vision:v1 : GoogleCloudVisionV1p3beta1ProductSearchResultsObjectAnnotation
/// - vision:v1 : GoogleCloudVisionV1p4beta1ProductSearchResultsObjectAnnotation
/// - vision:v1 : ObjectAnnotation
class $ObjectAnnotation {
  /// The BCP-47 language code, such as "en-US" or "sr-Latn".
  ///
  /// For more information, see
  /// http://www.unicode.org/reports/tr35/#Unicode_locale_identifier.
  core.String? languageCode;

  /// Object ID that should align with EntityAnnotation mid.
  core.String? mid;

  /// Object name, expressed in its `language_code` language.
  core.String? name;

  /// Score of the result.
  ///
  /// Range \[0, 1\].
  core.double? score;

  $ObjectAnnotation({
    this.languageCode,
    this.mid,
    this.name,
    this.score,
  });

  $ObjectAnnotation.fromJson(core.Map _json)
      : this(
          languageCode: _json.containsKey('languageCode')
              ? _json['languageCode'] as core.String
              : null,
          mid: _json.containsKey('mid') ? _json['mid'] as core.String : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          score: _json.containsKey('score')
              ? (_json['score'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (languageCode != null) 'languageCode': languageCode!,
        if (mid != null) 'mid': mid!,
        if (name != null) 'name': name!,
        if (score != null) 'score': score!,
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
/// - managedidentities:v1 : GoogleCloudManagedidentitiesV1OpMetadata
/// - managedidentities:v1 : GoogleCloudManagedidentitiesV1alpha1OpMetadata
/// - managedidentities:v1 : GoogleCloudManagedidentitiesV1beta1OpMetadata
class $OpMetadata {
  /// API version used to start the operation.
  ///
  /// Output only.
  core.String? apiVersion;

  /// The time the operation was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The time the operation finished running.
  ///
  /// Output only.
  core.String? endTime;

  /// Identifies whether the user has requested cancellation of the operation.
  ///
  /// Operations that have successfully been cancelled have Operation.error
  /// value with a google.rpc.Status.code of 1, corresponding to
  /// `Code.CANCELLED`.
  ///
  /// Output only.
  core.bool? requestedCancellation;

  /// Server-defined resource path for the target of the operation.
  ///
  /// Output only.
  core.String? target;

  /// Name of the verb executed by the operation.
  ///
  /// Output only.
  core.String? verb;

  $OpMetadata({
    this.apiVersion,
    this.createTime,
    this.endTime,
    this.requestedCancellation,
    this.target,
    this.verb,
  });

  $OpMetadata.fromJson(core.Map _json)
      : this(
          apiVersion: _json.containsKey('apiVersion')
              ? _json['apiVersion'] as core.String
              : null,
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          endTime: _json.containsKey('endTime')
              ? _json['endTime'] as core.String
              : null,
          requestedCancellation: _json.containsKey('requestedCancellation')
              ? _json['requestedCancellation'] as core.bool
              : null,
          target: _json.containsKey('target')
              ? _json['target'] as core.String
              : null,
          verb: _json.containsKey('verb') ? _json['verb'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (apiVersion != null) 'apiVersion': apiVersion!,
        if (createTime != null) 'createTime': createTime!,
        if (endTime != null) 'endTime': endTime!,
        if (requestedCancellation != null)
          'requestedCancellation': requestedCancellation!,
        if (target != null) 'target': target!,
        if (verb != null) 'verb': verb!,
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
/// - cloudbuild:v1 : GoogleDevtoolsCloudbuildV2OperationMetadata
/// - connectors:v1 : OperationMetadata
/// - datamigration:v1 : GoogleCloudClouddmsV1OperationMetadata
/// - eventarc:v1 : OperationMetadata
/// - networksecurity:v1 : OperationMetadata
/// - networkservices:v1 : OperationMetadata
/// - privateca:v1 : OperationMetadata
class $OperationMetadata00 {
  /// API version used to start the operation.
  ///
  /// Output only.
  core.String? apiVersion;

  /// The time the operation was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The time the operation finished running.
  ///
  /// Output only.
  core.String? endTime;

  /// Identifies whether the user has requested cancellation of the operation.
  ///
  /// Operations that have successfully been cancelled have Operation.error
  /// value with a google.rpc.Status.code of 1, corresponding to
  /// `Code.CANCELLED`.
  ///
  /// Output only.
  core.bool? requestedCancellation;

  /// Human-readable status of the operation, if any.
  ///
  /// Output only.
  core.String? statusMessage;

  /// Server-defined resource path for the target of the operation.
  ///
  /// Output only.
  core.String? target;

  /// Name of the verb executed by the operation.
  ///
  /// Output only.
  core.String? verb;

  $OperationMetadata00({
    this.apiVersion,
    this.createTime,
    this.endTime,
    this.requestedCancellation,
    this.statusMessage,
    this.target,
    this.verb,
  });

  $OperationMetadata00.fromJson(core.Map _json)
      : this(
          apiVersion: _json.containsKey('apiVersion')
              ? _json['apiVersion'] as core.String
              : null,
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          endTime: _json.containsKey('endTime')
              ? _json['endTime'] as core.String
              : null,
          requestedCancellation: _json.containsKey('requestedCancellation')
              ? _json['requestedCancellation'] as core.bool
              : null,
          statusMessage: _json.containsKey('statusMessage')
              ? _json['statusMessage'] as core.String
              : null,
          target: _json.containsKey('target')
              ? _json['target'] as core.String
              : null,
          verb: _json.containsKey('verb') ? _json['verb'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (apiVersion != null) 'apiVersion': apiVersion!,
        if (createTime != null) 'createTime': createTime!,
        if (endTime != null) 'endTime': endTime!,
        if (requestedCancellation != null)
          'requestedCancellation': requestedCancellation!,
        if (statusMessage != null) 'statusMessage': statusMessage!,
        if (target != null) 'target': target!,
        if (verb != null) 'verb': verb!,
      };
}

/// Used by:
///
/// - vision:v1 : GoogleCloudVisionV1p1beta1OperationMetadata
/// - vision:v1 : GoogleCloudVisionV1p2beta1OperationMetadata
/// - vision:v1 : GoogleCloudVisionV1p3beta1OperationMetadata
/// - vision:v1 : GoogleCloudVisionV1p4beta1OperationMetadata
/// - vision:v1 : OperationMetadata
class $OperationMetadata01 {
  /// The time when the batch request was received.
  core.String? createTime;

  /// Current state of the batch operation.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Invalid.
  /// - "CREATED" : Request is received.
  /// - "RUNNING" : Request is actively being processed.
  /// - "DONE" : The batch processing is done.
  /// - "CANCELLED" : The batch processing was cancelled.
  core.String? state;

  /// The time when the operation result was last updated.
  core.String? updateTime;

  $OperationMetadata01({
    this.createTime,
    this.state,
    this.updateTime,
  });

  $OperationMetadata01.fromJson(core.Map _json)
      : this(
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (state != null) 'state': state!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// Used by:
///
/// - cloudbuild:v1 : OperationMetadata
/// - file:v1 : OperationMetadata
/// - managedidentities:v1 : OperationMetadata
/// - tpu:v1 : OperationMetadata
class $OperationMetadata02 {
  /// API version used to start the operation.
  ///
  /// Output only.
  core.String? apiVersion;

  /// Identifies whether the user has requested cancellation of the operation.
  ///
  /// Operations that have been cancelled successfully have Operation.error
  /// value with a google.rpc.Status.code of 1, corresponding to
  /// `Code.CANCELLED`.
  ///
  /// Output only.
  core.bool? cancelRequested;

  /// The time the operation was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The time the operation finished running.
  ///
  /// Output only.
  core.String? endTime;

  /// Human-readable status of the operation, if any.
  ///
  /// Output only.
  core.String? statusDetail;

  /// Server-defined resource path for the target of the operation.
  ///
  /// Output only.
  core.String? target;

  /// Name of the verb executed by the operation.
  ///
  /// Output only.
  core.String? verb;

  $OperationMetadata02({
    this.apiVersion,
    this.cancelRequested,
    this.createTime,
    this.endTime,
    this.statusDetail,
    this.target,
    this.verb,
  });

  $OperationMetadata02.fromJson(core.Map _json)
      : this(
          apiVersion: _json.containsKey('apiVersion')
              ? _json['apiVersion'] as core.String
              : null,
          cancelRequested: _json.containsKey('cancelRequested')
              ? _json['cancelRequested'] as core.bool
              : null,
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          endTime: _json.containsKey('endTime')
              ? _json['endTime'] as core.String
              : null,
          statusDetail: _json.containsKey('statusDetail')
              ? _json['statusDetail'] as core.String
              : null,
          target: _json.containsKey('target')
              ? _json['target'] as core.String
              : null,
          verb: _json.containsKey('verb') ? _json['verb'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (apiVersion != null) 'apiVersion': apiVersion!,
        if (cancelRequested != null) 'cancelRequested': cancelRequested!,
        if (createTime != null) 'createTime': createTime!,
        if (endTime != null) 'endTime': endTime!,
        if (statusDetail != null) 'statusDetail': statusDetail!,
        if (target != null) 'target': target!,
        if (verb != null) 'verb': verb!,
      };
}

/// Used by:
///
/// - cloudbuild:v1 : CreateGitHubEnterpriseConfigOperationMetadata
/// - cloudbuild:v1 : ProcessAppManifestCallbackOperationMetadata
class $OperationMetadata03 {
  /// Time the operation was completed.
  core.String? completeTime;

  /// Time the operation was created.
  core.String? createTime;

  /// The resource name of the GitHubEnterprise to be created.
  ///
  /// Format:
  /// `projects/{project}/locations/{location}/githubEnterpriseConfigs/{id}`.
  core.String? githubEnterpriseConfig;

  $OperationMetadata03({
    this.completeTime,
    this.createTime,
    this.githubEnterpriseConfig,
  });

  $OperationMetadata03.fromJson(core.Map _json)
      : this(
          completeTime: _json.containsKey('completeTime')
              ? _json['completeTime'] as core.String
              : null,
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          githubEnterpriseConfig: _json.containsKey('githubEnterpriseConfig')
              ? _json['githubEnterpriseConfig'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (completeTime != null) 'completeTime': completeTime!,
        if (createTime != null) 'createTime': createTime!,
        if (githubEnterpriseConfig != null)
          'githubEnterpriseConfig': githubEnterpriseConfig!,
      };
}

/// Used by:
///
/// - documentai:v1 : GoogleCloudDocumentaiV1beta1OperationMetadata
/// - documentai:v1 : GoogleCloudDocumentaiV1beta2OperationMetadata
class $OperationMetadata04 {
  /// The creation time of the operation.
  core.String? createTime;

  /// The state of the current batch processing.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The default value. This value is used if the state
  /// is omitted.
  /// - "ACCEPTED" : Request is received.
  /// - "WAITING" : Request operation is waiting for scheduling.
  /// - "RUNNING" : Request is being processed.
  /// - "SUCCEEDED" : The batch processing completed successfully.
  /// - "CANCELLED" : The batch processing was cancelled.
  /// - "FAILED" : The batch processing has failed.
  core.String? state;

  /// A message providing more details about the current state of processing.
  core.String? stateMessage;

  /// The last update time of the operation.
  core.String? updateTime;

  $OperationMetadata04({
    this.createTime,
    this.state,
    this.stateMessage,
    this.updateTime,
  });

  $OperationMetadata04.fromJson(core.Map _json)
      : this(
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
          stateMessage: _json.containsKey('stateMessage')
              ? _json['stateMessage'] as core.String
              : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (state != null) 'state': state!,
        if (stateMessage != null) 'stateMessage': stateMessage!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// Used by:
///
/// - memcache:v1 : GoogleCloudMemcacheV1OperationMetadata
/// - memcache:v1 : OperationMetadata
class $OperationMetadata05 {
  /// API version used to start the operation.
  ///
  /// Output only.
  core.String? apiVersion;

  /// Identifies whether the user has requested cancellation of the operation.
  ///
  /// Operations that have successfully been cancelled have Operation.error
  /// value with a google.rpc.Status.code of 1, corresponding to
  /// `Code.CANCELLED`.
  ///
  /// Output only.
  core.bool? cancelRequested;

  /// Time when the operation was created.
  ///
  /// Output only.
  core.String? createTime;

  /// Time when the operation finished running.
  ///
  /// Output only.
  core.String? endTime;

  /// Human-readable status of the operation, if any.
  ///
  /// Output only.
  core.String? statusDetail;

  /// Server-defined resource path for the target of the operation.
  ///
  /// Output only.
  core.String? target;

  /// Name of the verb executed by the operation.
  ///
  /// Output only.
  core.String? verb;

  $OperationMetadata05({
    this.apiVersion,
    this.cancelRequested,
    this.createTime,
    this.endTime,
    this.statusDetail,
    this.target,
    this.verb,
  });

  $OperationMetadata05.fromJson(core.Map _json)
      : this(
          apiVersion: _json.containsKey('apiVersion')
              ? _json['apiVersion'] as core.String
              : null,
          cancelRequested: _json.containsKey('cancelRequested')
              ? _json['cancelRequested'] as core.bool
              : null,
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          endTime: _json.containsKey('endTime')
              ? _json['endTime'] as core.String
              : null,
          statusDetail: _json.containsKey('statusDetail')
              ? _json['statusDetail'] as core.String
              : null,
          target: _json.containsKey('target')
              ? _json['target'] as core.String
              : null,
          verb: _json.containsKey('verb') ? _json['verb'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (apiVersion != null) 'apiVersion': apiVersion!,
        if (cancelRequested != null) 'cancelRequested': cancelRequested!,
        if (createTime != null) 'createTime': createTime!,
        if (endTime != null) 'endTime': endTime!,
        if (statusDetail != null) 'statusDetail': statusDetail!,
        if (target != null) 'target': target!,
        if (verb != null) 'verb': verb!,
      };
}

/// Used by:
///
/// - serviceusage:v1 : GoogleApiServiceusageV1OperationMetadata
/// - serviceusage:v1 : OperationMetadata
class $OperationMetadata06 {
  /// The full name of the resources that this operation is directly associated
  /// with.
  core.List<core.String>? resourceNames;

  $OperationMetadata06({
    this.resourceNames,
  });

  $OperationMetadata06.fromJson(core.Map _json)
      : this(
          resourceNames: _json.containsKey('resourceNames')
              ? (_json['resourceNames'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (resourceNames != null) 'resourceNames': resourceNames!,
      };
}

/// Used by:
///
/// - bigtableadmin:v2 : OperationProgress
/// - spanner:v1 : OperationProgress
class $OperationProgress {
  /// If set, the time at which this operation failed or was completed
  /// successfully.
  core.String? endTime;

  /// Percent completion of the operation.
  ///
  /// Values are between 0 and 100 inclusive.
  core.int? progressPercent;

  /// Time the request was received.
  core.String? startTime;

  $OperationProgress({
    this.endTime,
    this.progressPercent,
    this.startTime,
  });

  $OperationProgress.fromJson(core.Map _json)
      : this(
          endTime: _json.containsKey('endTime')
              ? _json['endTime'] as core.String
              : null,
          progressPercent: _json.containsKey('progressPercent')
              ? _json['progressPercent'] as core.int
              : null,
          startTime: _json.containsKey('startTime')
              ? _json['startTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (endTime != null) 'endTime': endTime!,
        if (progressPercent != null) 'progressPercent': progressPercent!,
        if (startTime != null) 'startTime': startTime!,
      };
}

/// Used by:
///
/// - serviceconsumermanagement:v1 : Option
/// - servicemanagement:v1 : Option
/// - servicenetworking:v1 : Option
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
/// - dialogflow:v2 : GoogleCloudDialogflowV2OriginalDetectIntentRequest
/// - dialogflow:v2 : GoogleCloudDialogflowV2beta1OriginalDetectIntentRequest
/// - dialogflow:v3 : GoogleCloudDialogflowV2OriginalDetectIntentRequest
/// - dialogflow:v3 : GoogleCloudDialogflowV2beta1OriginalDetectIntentRequest
class $OriginalDetectIntentRequest {
  /// This field is set to the value of the `QueryParameters.payload` field
  /// passed in the request.
  ///
  /// Some integrations that query a Dialogflow agent may provide additional
  /// information in the payload. In particular, for the Dialogflow Phone
  /// Gateway integration, this field has the form: { "telephony": {
  /// "caller_id": "+18558363987" } } Note: The caller ID field (`caller_id`)
  /// will be redacted for Trial Edition agents and populated with the caller ID
  /// in [E.164 format](https://en.wikipedia.org/wiki/E.164) for Essentials
  /// Edition agents.
  ///
  /// Optional.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? payload;

  /// The source of this request, e.g., `google`, `facebook`, `slack`.
  ///
  /// It is set by Dialogflow-owned servers.
  core.String? source;

  /// The version of the protocol used for this request.
  ///
  /// This field is AoG-specific.
  ///
  /// Optional.
  core.String? version;

  $OriginalDetectIntentRequest({
    this.payload,
    this.source,
    this.version,
  });

  $OriginalDetectIntentRequest.fromJson(core.Map _json)
      : this(
          payload: _json.containsKey('payload')
              ? _json['payload'] as core.Map<core.String, core.dynamic>
              : null,
          source: _json.containsKey('source')
              ? _json['source'] as core.String
              : null,
          version: _json.containsKey('version')
              ? _json['version'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (payload != null) 'payload': payload!,
        if (source != null) 'source': source!,
        if (version != null) 'version': version!,
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
/// - dialogflow:v2 : GoogleCloudDialogflowCxV3PageInfoFormInfoParameterInfo
/// - dialogflow:v2 : GoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3PageInfoFormInfoParameterInfo
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo
class $PageInfoFormInfoParameterInfo {
  /// Always present for WebhookRequest.
  ///
  /// Required for WebhookResponse. The human-readable name of the parameter,
  /// unique within the form. This field cannot be modified by the webhook.
  core.String? displayName;

  /// Optional for WebhookRequest.
  ///
  /// Ignored for WebhookResponse. Indicates if the parameter value was just
  /// collected on the last conversation turn.
  core.bool? justCollected;

  /// Optional for both WebhookRequest and WebhookResponse.
  ///
  /// Indicates whether the parameter is required. Optional parameters will not
  /// trigger prompts; however, they are filled if the user specifies them.
  /// Required parameters must be filled before form filling concludes.
  core.bool? required;

  /// Always present for WebhookRequest.
  ///
  /// Required for WebhookResponse. The state of the parameter. This field can
  /// be set to INVALID by the webhook to invalidate the parameter; other values
  /// set by the webhook will be ignored.
  /// Possible string values are:
  /// - "PARAMETER_STATE_UNSPECIFIED" : Not specified. This value should be
  /// never used.
  /// - "EMPTY" : Indicates that the parameter does not have a value.
  /// - "INVALID" : Indicates that the parameter value is invalid. This field
  /// can be used by the webhook to invalidate the parameter and ask the server
  /// to collect it from the user again.
  /// - "FILLED" : Indicates that the parameter has a value.
  core.String? state;

  /// Optional for both WebhookRequest and WebhookResponse.
  ///
  /// The value of the parameter. This field can be set by the webhook to change
  /// the parameter value.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object? value;

  $PageInfoFormInfoParameterInfo({
    this.displayName,
    this.justCollected,
    this.required,
    this.state,
    this.value,
  });

  $PageInfoFormInfoParameterInfo.fromJson(core.Map _json)
      : this(
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          justCollected: _json.containsKey('justCollected')
              ? _json['justCollected'] as core.bool
              : null,
          required: _json.containsKey('required')
              ? _json['required'] as core.bool
              : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
          value: _json.containsKey('value') ? _json['value'] : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (justCollected != null) 'justCollected': justCollected!,
        if (required != null) 'required': required!,
        if (state != null) 'state': state!,
        if (value != null) 'value': value!,
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
/// - servicecontrol:v1 : Peer
/// - servicecontrol:v2 : Peer
class $Peer {
  /// The IP address of the peer.
  core.String? ip;

  /// The labels associated with the peer.
  core.Map<core.String, core.String>? labels;

  /// The network port of the peer.
  core.String? port;

  /// The identity of this peer.
  ///
  /// Similar to `Request.auth.principal`, but relative to the peer instead of
  /// the request. For example, the idenity associated with a load balancer that
  /// forwared the request.
  core.String? principal;

  /// The CLDR country/region code associated with the above IP address.
  ///
  /// If the IP address is private, the `region_code` should reflect the
  /// physical location where this peer is running.
  core.String? regionCode;

  $Peer({
    this.ip,
    this.labels,
    this.port,
    this.principal,
    this.regionCode,
  });

  $Peer.fromJson(core.Map _json)
      : this(
          ip: _json.containsKey('ip') ? _json['ip'] as core.String : null,
          labels: _json.containsKey('labels')
              ? (_json['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          port: _json.containsKey('port') ? _json['port'] as core.String : null,
          principal: _json.containsKey('principal')
              ? _json['principal'] as core.String
              : null,
          regionCode: _json.containsKey('regionCode')
              ? _json['regionCode'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (ip != null) 'ip': ip!,
        if (labels != null) 'labels': labels!,
        if (port != null) 'port': port!,
        if (principal != null) 'principal': principal!,
        if (regionCode != null) 'regionCode': regionCode!,
      };
}

/// Used by:
///
/// - cloudchannel:v1 : GoogleCloudChannelV1Period
/// - cloudchannel:v1 : GoogleCloudChannelV1alpha1Period
class $Period {
  /// Total duration of Period Type defined.
  core.int? duration;

  /// Period Type.
  /// Possible string values are:
  /// - "PERIOD_TYPE_UNSPECIFIED" : Not used.
  /// - "DAY" : Day.
  /// - "MONTH" : Month.
  /// - "YEAR" : Year.
  core.String? periodType;

  $Period({
    this.duration,
    this.periodType,
  });

  $Period.fromJson(core.Map _json)
      : this(
          duration: _json.containsKey('duration')
              ? _json['duration'] as core.int
              : null,
          periodType: _json.containsKey('periodType')
              ? _json['periodType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (duration != null) 'duration': duration!,
        if (periodType != null) 'periodType': periodType!,
      };
}

/// Used by:
///
/// - apigateway:v1 : ApigatewayTestIamPermissionsResponse
/// - apigee:v1 : GoogleIamV1TestIamPermissionsResponse
/// - bigquery:v2 : TestIamPermissionsResponse
/// - bigtableadmin:v2 : TestIamPermissionsResponse
/// - binaryauthorization:v1 : TestIamPermissionsResponse
/// - cloudbilling:v1 : TestIamPermissionsResponse
/// - cloudfunctions:v1 : TestIamPermissionsResponse
/// - cloudiot:v1 : TestIamPermissionsResponse
/// - cloudkms:v1 : TestIamPermissionsResponse
/// - cloudresourcemanager:v1 : TestIamPermissionsResponse
/// - cloudresourcemanager:v2 : TestIamPermissionsResponse
/// - cloudresourcemanager:v3 : TestIamPermissionsResponse
/// - cloudtasks:v2 : TestIamPermissionsResponse
/// - compute:v1 : TestPermissionsResponse
/// - connectors:v1 : TestIamPermissionsResponse
/// - datacatalog:v1 : TestIamPermissionsResponse
/// - datafusion:v1 : TestIamPermissionsResponse
/// - datamigration:v1 : TestIamPermissionsResponse
/// - deploymentmanager:v2 : TestPermissionsResponse
/// - eventarc:v1 : TestIamPermissionsResponse
/// - gameservices:v1 : TestIamPermissionsResponse
/// - gkehub:v1 : TestIamPermissionsResponse
/// - healthcare:v1 : TestIamPermissionsResponse
/// - iam:v1 : TestIamPermissionsResponse
/// - iap:v1 : TestIamPermissionsResponse
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
/// - vision:v1 : GoogleCloudVisionV1p1beta1Position
/// - vision:v1 : GoogleCloudVisionV1p2beta1Position
/// - vision:v1 : GoogleCloudVisionV1p3beta1Position
/// - vision:v1 : GoogleCloudVisionV1p4beta1Position
/// - vision:v1 : Position
class $Position {
  /// X coordinate.
  core.double? x;

  /// Y coordinate.
  core.double? y;

  /// Z coordinate (or depth).
  core.double? z;

  $Position({
    this.x,
    this.y,
    this.z,
  });

  $Position.fromJson(core.Map _json)
      : this(
          x: _json.containsKey('x')
              ? (_json['x'] as core.num).toDouble()
              : null,
          y: _json.containsKey('y')
              ? (_json['y'] as core.num).toDouble()
              : null,
          z: _json.containsKey('z')
              ? (_json['z'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (x != null) 'x': x!,
        if (y != null) 'y': y!,
        if (z != null) 'z': z!,
      };
}

/// Used by:
///
/// - cloudchannel:v1 : GoogleTypePostalAddress
/// - documentai:v1 : GoogleTypePostalAddress
/// - jobs:v3 : PostalAddress
/// - jobs:v4 : PostalAddress
/// - mybusinessaccountmanagement:v1 : PostalAddress
/// - mybusinessbusinessinformation:v1 : PostalAddress
/// - mybusinessverifications:v1 : PostalAddress
class $PostalAddress {
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

  $PostalAddress.fromJson(core.Map _json)
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
/// - datastore:v1 : GoogleDatastoreAdminV1Progress
/// - datastore:v1 : GoogleDatastoreAdminV1beta1Progress
class $Progress {
  /// The amount of work that has been completed.
  ///
  /// Note that this may be greater than work_estimated.
  core.String? workCompleted;

  /// An estimate of how much work needs to be performed.
  ///
  /// May be zero if the work estimate is unavailable.
  core.String? workEstimated;

  $Progress({
    this.workCompleted,
    this.workEstimated,
  });

  $Progress.fromJson(core.Map _json)
      : this(
          workCompleted: _json.containsKey('workCompleted')
              ? _json['workCompleted'] as core.String
              : null,
          workEstimated: _json.containsKey('workEstimated')
              ? _json['workEstimated'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (workCompleted != null) 'workCompleted': workCompleted!,
        if (workEstimated != null) 'workEstimated': workEstimated!,
      };
}

/// Used by:
///
/// - cloudresourcemanager:v1 : ProjectCreationStatus
/// - cloudresourcemanager:v2 : ProjectCreationStatus
/// - cloudresourcemanager:v3 : ProjectCreationStatus
class $ProjectCreationStatus {
  /// Creation time of the project creation workflow.
  core.String? createTime;

  /// True if the project can be retrieved using GetProject.
  ///
  /// No other operations on the project are guaranteed to work until the
  /// project creation is complete.
  core.bool? gettable;

  /// True if the project creation process is complete.
  core.bool? ready;

  $ProjectCreationStatus({
    this.createTime,
    this.gettable,
    this.ready,
  });

  $ProjectCreationStatus.fromJson(core.Map _json)
      : this(
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          gettable: _json.containsKey('gettable')
              ? _json['gettable'] as core.bool
              : null,
          ready:
              _json.containsKey('ready') ? _json['ready'] as core.bool : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (gettable != null) 'gettable': gettable!,
        if (ready != null) 'ready': ready!,
      };
}

/// Used by:
///
/// - clouddebugger:v2 : ProjectRepoId
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
/// - vision:v1 : GoogleCloudVisionV1p1beta1Property
/// - vision:v1 : GoogleCloudVisionV1p2beta1Property
/// - vision:v1 : GoogleCloudVisionV1p3beta1Property
/// - vision:v1 : GoogleCloudVisionV1p4beta1Property
/// - vision:v1 : Property
class $Property {
  /// Name of the property.
  core.String? name;

  /// Value of numeric properties.
  core.String? uint64Value;

  /// Value of the property.
  core.String? value;

  $Property({
    this.name,
    this.uint64Value,
    this.value,
  });

  $Property.fromJson(core.Map _json)
      : this(
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          uint64Value: _json.containsKey('uint64Value')
              ? _json['uint64Value'] as core.String
              : null,
          value:
              _json.containsKey('value') ? _json['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (uint64Value != null) 'uint64Value': uint64Value!,
        if (value != null) 'value': value!,
      };
}

/// Used by:
///
/// - cloudchannel:v1 : GoogleCloudChannelV1ProvisionedService
/// - cloudchannel:v1 : GoogleCloudChannelV1alpha1ProvisionedService
class $ProvisionedService {
  /// The product pertaining to the provisioning resource as specified in the
  /// Offer.
  ///
  /// Output only.
  core.String? productId;

  /// Provisioning ID of the entitlement.
  ///
  /// For Google Workspace, this would be the underlying Subscription ID.
  ///
  /// Output only.
  core.String? provisioningId;

  /// The SKU pertaining to the provisioning resource as specified in the Offer.
  ///
  /// Output only.
  core.String? skuId;

  $ProvisionedService({
    this.productId,
    this.provisioningId,
    this.skuId,
  });

  $ProvisionedService.fromJson(core.Map _json)
      : this(
          productId: _json.containsKey('productId')
              ? _json['productId'] as core.String
              : null,
          provisioningId: _json.containsKey('provisioningId')
              ? _json['provisioningId'] as core.String
              : null,
          skuId:
              _json.containsKey('skuId') ? _json['skuId'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (productId != null) 'productId': productId!,
        if (provisioningId != null) 'provisioningId': provisioningId!,
        if (skuId != null) 'skuId': skuId!,
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
/// - cloudscheduler:v1 : PubsubMessage
/// - pubsub:v1 : PubsubMessage
class $PubsubMessage {
  /// Attributes for this message.
  ///
  /// If this field is empty, the message must contain non-empty data. This can
  /// be used to filter messages on the subscription.
  core.Map<core.String, core.String>? attributes;

  /// The message data field.
  ///
  /// If this field is empty, the message must contain at least one attribute.
  core.String? data;
  core.List<core.int> get dataAsBytes => convert.base64.decode(data!);

  set dataAsBytes(core.List<core.int> _bytes) {
    data =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
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
  /// specify the same `ordering_key` value.
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

  $PubsubMessage.fromJson(core.Map _json)
      : this(
          attributes: _json.containsKey('attributes')
              ? (_json['attributes'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          data: _json.containsKey('data') ? _json['data'] as core.String : null,
          messageId: _json.containsKey('messageId')
              ? _json['messageId'] as core.String
              : null,
          orderingKey: _json.containsKey('orderingKey')
              ? _json['orderingKey'] as core.String
              : null,
          publishTime: _json.containsKey('publishTime')
              ? _json['publishTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (attributes != null) 'attributes': attributes!,
        if (data != null) 'data': data!,
        if (messageId != null) 'messageId': messageId!,
        if (orderingKey != null) 'orderingKey': orderingKey!,
        if (publishTime != null) 'publishTime': publishTime!,
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
/// - retail:v2 : GoogleCloudRetailV2PurgeUserEventsResponse
/// - retail:v2 : GoogleCloudRetailV2alphaPurgeUserEventsResponse
/// - retail:v2 : GoogleCloudRetailV2betaPurgeUserEventsResponse
class $PurgeUserEventsResponse {
  /// The total count of events purged as a result of the operation.
  core.String? purgedEventsCount;

  $PurgeUserEventsResponse({
    this.purgedEventsCount,
  });

  $PurgeUserEventsResponse.fromJson(core.Map _json)
      : this(
          purgedEventsCount: _json.containsKey('purgedEventsCount')
              ? _json['purgedEventsCount'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (purgedEventsCount != null) 'purgedEventsCount': purgedEventsCount!,
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
/// - serviceconsumermanagement:v1 : QuotaLimit
/// - servicemanagement:v1 : QuotaLimit
/// - servicenetworking:v1 : QuotaLimit
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
/// - retail:v2 : GoogleCloudRetailV2RejoinUserEventsResponse
/// - retail:v2 : GoogleCloudRetailV2alphaRejoinUserEventsResponse
/// - retail:v2 : GoogleCloudRetailV2betaRejoinUserEventsResponse
class $RejoinUserEventsResponse {
  /// Number of user events that were joined with latest product catalog.
  core.String? rejoinedUserEventsCount;

  $RejoinUserEventsResponse({
    this.rejoinedUserEventsCount,
  });

  $RejoinUserEventsResponse.fromJson(core.Map _json)
      : this(
          rejoinedUserEventsCount: _json.containsKey('rejoinedUserEventsCount')
              ? _json['rejoinedUserEventsCount'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (rejoinedUserEventsCount != null)
          'rejoinedUserEventsCount': rejoinedUserEventsCount!,
      };
}

/// Used by:
///
/// - cloudasset:v1 : GoogleCloudAssetV1p7beta1RelatedAsset
/// - cloudasset:v1 : RelatedAsset
class $RelatedAsset {
  /// The ancestors of an asset in Google Cloud
  /// [resource hierarchy](https://cloud.google.com/resource-manager/docs/cloud-platform-resource-hierarchy),
  /// represented as a list of relative resource names.
  ///
  /// An ancestry path starts with the closest ancestor in the hierarchy and
  /// ends at root. Example: `["projects/123456789", "folders/5432",
  /// "organizations/1234"]`
  core.List<core.String>? ancestors;

  /// The full name of the asset.
  ///
  /// Example:
  /// `//compute.googleapis.com/projects/my_project_123/zones/zone1/instances/instance1`
  /// See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names#full_resource_name)
  /// for more information.
  core.String? asset;

  /// The type of the asset.
  ///
  /// Example: `compute.googleapis.com/Disk` See
  /// [Supported asset types](https://cloud.google.com/asset-inventory/docs/supported-asset-types)
  /// for more information.
  core.String? assetType;

  $RelatedAsset({
    this.ancestors,
    this.asset,
    this.assetType,
  });

  $RelatedAsset.fromJson(core.Map _json)
      : this(
          ancestors: _json.containsKey('ancestors')
              ? (_json['ancestors'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          asset:
              _json.containsKey('asset') ? _json['asset'] as core.String : null,
          assetType: _json.containsKey('assetType')
              ? _json['assetType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (ancestors != null) 'ancestors': ancestors!,
        if (asset != null) 'asset': asset!,
        if (assetType != null) 'assetType': assetType!,
      };
}

/// Used by:
///
/// - cloudasset:v1 : GoogleCloudAssetV1p7beta1RelationshipAttributes
/// - cloudasset:v1 : RelationshipAttributes
class $RelationshipAttributes {
  /// The detail of the relationship, e.g. `contains`, `attaches`
  core.String? action;

  /// The source asset type.
  ///
  /// Example: `compute.googleapis.com/Instance`
  core.String? sourceResourceType;

  /// The target asset type.
  ///
  /// Example: `compute.googleapis.com/Disk`
  core.String? targetResourceType;

  /// The unique identifier of the relationship type.
  ///
  /// Example: `INSTANCE_TO_INSTANCEGROUP`
  core.String? type;

  $RelationshipAttributes({
    this.action,
    this.sourceResourceType,
    this.targetResourceType,
    this.type,
  });

  $RelationshipAttributes.fromJson(core.Map _json)
      : this(
          action: _json.containsKey('action')
              ? _json['action'] as core.String
              : null,
          sourceResourceType: _json.containsKey('sourceResourceType')
              ? _json['sourceResourceType'] as core.String
              : null,
          targetResourceType: _json.containsKey('targetResourceType')
              ? _json['targetResourceType'] as core.String
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (action != null) 'action': action!,
        if (sourceResourceType != null)
          'sourceResourceType': sourceResourceType!,
        if (targetResourceType != null)
          'targetResourceType': targetResourceType!,
        if (type != null) 'type': type!,
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
/// - policysimulator:v1 : GoogleCloudPolicysimulatorV1ReplayOperationMetadata
/// - policysimulator:v1 : GoogleCloudPolicysimulatorV1beta1ReplayOperationMetadata
class $ReplayOperationMetadata {
  /// Time when the request was received.
  core.String? startTime;

  $ReplayOperationMetadata({
    this.startTime,
  });

  $ReplayOperationMetadata.fromJson(core.Map _json)
      : this(
          startTime: _json.containsKey('startTime')
              ? _json['startTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (startTime != null) 'startTime': startTime!,
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
  /// /^a-z0-9{0,62}$/. Values must match the regex
  /// /^\[a-zA-Z0-9_./-\]{0,255}$/.
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
/// - cloudasset:v1 : GoogleCloudAssetV1p7beta1Resource
/// - cloudasset:v1 : Resource
class $Resource00 {
  /// The content of the resource, in which some sensitive fields are removed
  /// and may not be present.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? data;

  /// The URL of the discovery document containing the resource's JSON schema.
  ///
  /// Example: `https://www.googleapis.com/discovery/v1/apis/compute/v1/rest`
  /// This value is unspecified for resources that do not have an API based on a
  /// discovery document, such as Cloud Bigtable.
  core.String? discoveryDocumentUri;

  /// The JSON schema name listed in the discovery document.
  ///
  /// Example: `Project` This value is unspecified for resources that do not
  /// have an API based on a discovery document, such as Cloud Bigtable.
  core.String? discoveryName;

  /// The location of the resource in Google Cloud, such as its zone and region.
  ///
  /// For more information, see https://cloud.google.com/about/locations/.
  core.String? location;

  /// The full name of the immediate parent of this resource.
  ///
  /// See
  /// [Resource Names](https://cloud.google.com/apis/design/resource_names#full_resource_name)
  /// for more information. For Google Cloud assets, this value is the parent
  /// resource defined in the
  /// [Cloud IAM policy hierarchy](https://cloud.google.com/iam/docs/overview#policy_hierarchy).
  /// Example: `//cloudresourcemanager.googleapis.com/projects/my_project_123`
  /// For third-party assets, this field may be set differently.
  core.String? parent;

  /// The REST URL for accessing the resource.
  ///
  /// An HTTP `GET` request using this URL returns the resource itself. Example:
  /// `https://cloudresourcemanager.googleapis.com/v1/projects/my-project-123`
  /// This value is unspecified for resources without a REST API.
  core.String? resourceUrl;

  /// The API version.
  ///
  /// Example: `v1`
  core.String? version;

  $Resource00({
    this.data,
    this.discoveryDocumentUri,
    this.discoveryName,
    this.location,
    this.parent,
    this.resourceUrl,
    this.version,
  });

  $Resource00.fromJson(core.Map _json)
      : this(
          data: _json.containsKey('data')
              ? _json['data'] as core.Map<core.String, core.dynamic>
              : null,
          discoveryDocumentUri: _json.containsKey('discoveryDocumentUri')
              ? _json['discoveryDocumentUri'] as core.String
              : null,
          discoveryName: _json.containsKey('discoveryName')
              ? _json['discoveryName'] as core.String
              : null,
          location: _json.containsKey('location')
              ? _json['location'] as core.String
              : null,
          parent: _json.containsKey('parent')
              ? _json['parent'] as core.String
              : null,
          resourceUrl: _json.containsKey('resourceUrl')
              ? _json['resourceUrl'] as core.String
              : null,
          version: _json.containsKey('version')
              ? _json['version'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (data != null) 'data': data!,
        if (discoveryDocumentUri != null)
          'discoveryDocumentUri': discoveryDocumentUri!,
        if (discoveryName != null) 'discoveryName': discoveryName!,
        if (location != null) 'location': location!,
        if (parent != null) 'parent': parent!,
        if (resourceUrl != null) 'resourceUrl': resourceUrl!,
        if (version != null) 'version': version!,
      };
}

/// Used by:
///
/// - servicecontrol:v1 : Resource
/// - servicecontrol:v2 : Resource
class $Resource01 {
  /// Annotations is an unstructured key-value map stored with a resource that
  /// may be set by external tools to store and retrieve arbitrary metadata.
  ///
  /// They are not queryable and should be preserved when modifying objects.
  /// More info: https://kubernetes.io/docs/user-guide/annotations
  core.Map<core.String, core.String>? annotations;

  /// The timestamp when the resource was created.
  ///
  /// This may be either the time creation was initiated or when it was
  /// completed.
  ///
  /// Output only.
  core.String? createTime;

  /// The timestamp when the resource was deleted.
  ///
  /// If the resource is not deleted, this must be empty.
  ///
  /// Output only.
  core.String? deleteTime;

  /// Mutable.
  ///
  /// The display name set by clients. Must be <= 63 characters.
  core.String? displayName;

  /// An opaque value that uniquely identifies a version or generation of a
  /// resource.
  ///
  /// It can be used to confirm that the client and server agree on the ordering
  /// of a resource being written.
  ///
  /// Output only.
  core.String? etag;

  /// The labels or tags on the resource, such as AWS resource tags and
  /// Kubernetes resource labels.
  core.Map<core.String, core.String>? labels;

  /// The location of the resource.
  ///
  /// The location encoding is specific to the service provider, and new
  /// encoding may be introduced as the service evolves. For Google Cloud
  /// products, the encoding is what is used by Google Cloud APIs, such as
  /// `us-east1`, `aws-us-east-1`, and `azure-eastus2`. The semantics of
  /// `location` is identical to the `cloud.googleapis.com/location` label used
  /// by some Google Cloud APIs.
  ///
  /// Immutable.
  core.String? location;

  /// The stable identifier (name) of a resource on the `service`.
  ///
  /// A resource can be logically identified as
  /// "//{resource.service}/{resource.name}". The differences between a resource
  /// name and a URI are: * Resource name is a logical identifier, independent
  /// of network protocol and API version. For example,
  /// `//pubsub.googleapis.com/projects/123/topics/news-feed`. * URI often
  /// includes protocol and version information, so it can be used directly by
  /// applications. For example,
  /// `https://pubsub.googleapis.com/v1/projects/123/topics/news-feed`. See
  /// https://cloud.google.com/apis/design/resource_names for details.
  core.String? name;

  /// The name of the service that this resource belongs to, such as
  /// `pubsub.googleapis.com`.
  ///
  /// The service may be different from the DNS hostname that actually serves
  /// the request.
  core.String? service;

  /// The type of the resource.
  ///
  /// The syntax is platform-specific because different platforms define their
  /// resources differently. For Google APIs, the type format must be
  /// "{service}/{kind}", such as "pubsub.googleapis.com/Topic".
  core.String? type;

  /// The unique identifier of the resource.
  ///
  /// UID is unique in the time and space for this resource within the scope of
  /// the service. It is typically generated by the server on successful
  /// creation of a resource and must not be changed. UID is used to uniquely
  /// identify resources with resource name reuses. This should be a UUID4.
  core.String? uid;

  /// The timestamp when the resource was last updated.
  ///
  /// Any change to the resource made by users must refresh this value. Changes
  /// to a resource made by the service should refresh this value.
  ///
  /// Output only.
  core.String? updateTime;

  $Resource01({
    this.annotations,
    this.createTime,
    this.deleteTime,
    this.displayName,
    this.etag,
    this.labels,
    this.location,
    this.name,
    this.service,
    this.type,
    this.uid,
    this.updateTime,
  });

  $Resource01.fromJson(core.Map _json)
      : this(
          annotations: _json.containsKey('annotations')
              ? (_json['annotations'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          deleteTime: _json.containsKey('deleteTime')
              ? _json['deleteTime'] as core.String
              : null,
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
          labels: _json.containsKey('labels')
              ? (_json['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          location: _json.containsKey('location')
              ? _json['location'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          service: _json.containsKey('service')
              ? _json['service'] as core.String
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
          uid: _json.containsKey('uid') ? _json['uid'] as core.String : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (annotations != null) 'annotations': annotations!,
        if (createTime != null) 'createTime': createTime!,
        if (deleteTime != null) 'deleteTime': deleteTime!,
        if (displayName != null) 'displayName': displayName!,
        if (etag != null) 'etag': etag!,
        if (labels != null) 'labels': labels!,
        if (location != null) 'location': location!,
        if (name != null) 'name': name!,
        if (service != null) 'service': service!,
        if (type != null) 'type': type!,
        if (uid != null) 'uid': uid!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// Used by:
///
/// - servicecontrol:v1 : ResourceLocation
/// - servicecontrol:v2 : ResourceLocation
class $ResourceLocation {
  /// The locations of a resource after the execution of the operation.
  ///
  /// Requests to create or delete a location based resource must populate the
  /// 'current_locations' field and not the 'original_locations' field. For
  /// example: "europe-west1-a" "us-east1" "nam3"
  core.List<core.String>? currentLocations;

  /// The locations of a resource prior to the execution of the operation.
  ///
  /// Requests that mutate the resource's location must populate both the
  /// 'original_locations' as well as the 'current_locations' fields. For
  /// example: "europe-west1-a" "us-east1" "nam3"
  core.List<core.String>? originalLocations;

  $ResourceLocation({
    this.currentLocations,
    this.originalLocations,
  });

  $ResourceLocation.fromJson(core.Map _json)
      : this(
          currentLocations: _json.containsKey('currentLocations')
              ? (_json['currentLocations'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          originalLocations: _json.containsKey('originalLocations')
              ? (_json['originalLocations'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (currentLocations != null) 'currentLocations': currentLocations!,
        if (originalLocations != null) 'originalLocations': originalLocations!,
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
/// - dialogflow:v2 : GoogleCloudDialogflowCxV3ResponseMessageConversationSuccess
/// - dialogflow:v2 : GoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccess
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3ResponseMessageConversationSuccess
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccess
class $ResponseMessageConversationSuccess {
  /// Custom metadata.
  ///
  /// Dialogflow doesn't impose any structure on this.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? metadata;

  $ResponseMessageConversationSuccess({
    this.metadata,
  });

  $ResponseMessageConversationSuccess.fromJson(core.Map _json)
      : this(
          metadata: _json.containsKey('metadata')
              ? _json['metadata'] as core.Map<core.String, core.dynamic>
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (metadata != null) 'metadata': metadata!,
      };
}

/// Used by:
///
/// - dialogflow:v2 : GoogleCloudDialogflowCxV3ResponseMessageLiveAgentHandoff
/// - dialogflow:v2 : GoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3ResponseMessageLiveAgentHandoff
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff
class $ResponseMessageLiveAgentHandoff {
  /// Custom metadata for your handoff procedure.
  ///
  /// Dialogflow doesn't impose any structure on this.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? metadata;

  $ResponseMessageLiveAgentHandoff({
    this.metadata,
  });

  $ResponseMessageLiveAgentHandoff.fromJson(core.Map _json)
      : this(
          metadata: _json.containsKey('metadata')
              ? _json['metadata'] as core.Map<core.String, core.dynamic>
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (metadata != null) 'metadata': metadata!,
      };
}

/// Used by:
///
/// - dialogflow:v2 : GoogleCloudDialogflowCxV3ResponseMessageMixedAudioSegment
/// - dialogflow:v2 : GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegment
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3ResponseMessageMixedAudioSegment
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegment
class $ResponseMessageMixedAudioSegment {
  /// Whether the playback of this segment can be interrupted by the end user's
  /// speech and the client should then start the next Dialogflow request.
  ///
  /// Output only.
  core.bool? allowPlaybackInterruption;

  /// Raw audio synthesized from the Dialogflow agent's response using the
  /// output config specified in the request.
  core.String? audio;
  core.List<core.int> get audioAsBytes => convert.base64.decode(audio!);

  set audioAsBytes(core.List<core.int> _bytes) {
    audio =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Client-specific URI that points to an audio clip accessible to the client.
  ///
  /// Dialogflow does not impose any validation on it.
  core.String? uri;

  $ResponseMessageMixedAudioSegment({
    this.allowPlaybackInterruption,
    this.audio,
    this.uri,
  });

  $ResponseMessageMixedAudioSegment.fromJson(core.Map _json)
      : this(
          allowPlaybackInterruption:
              _json.containsKey('allowPlaybackInterruption')
                  ? _json['allowPlaybackInterruption'] as core.bool
                  : null,
          audio:
              _json.containsKey('audio') ? _json['audio'] as core.String : null,
          uri: _json.containsKey('uri') ? _json['uri'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowPlaybackInterruption != null)
          'allowPlaybackInterruption': allowPlaybackInterruption!,
        if (audio != null) 'audio': audio!,
        if (uri != null) 'uri': uri!,
      };
}

/// Used by:
///
/// - dialogflow:v2 : GoogleCloudDialogflowCxV3ResponseMessageOutputAudioText
/// - dialogflow:v2 : GoogleCloudDialogflowCxV3beta1ResponseMessageOutputAudioText
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3ResponseMessageOutputAudioText
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3beta1ResponseMessageOutputAudioText
class $ResponseMessageOutputAudioText {
  /// Whether the playback of this message can be interrupted by the end user's
  /// speech and the client can then starts the next Dialogflow request.
  ///
  /// Output only.
  core.bool? allowPlaybackInterruption;

  /// The SSML text to be synthesized.
  ///
  /// For more information, see \[SSML\](/speech/text-to-speech/docs/ssml).
  core.String? ssml;

  /// The raw text to be synthesized.
  core.String? text;

  $ResponseMessageOutputAudioText({
    this.allowPlaybackInterruption,
    this.ssml,
    this.text,
  });

  $ResponseMessageOutputAudioText.fromJson(core.Map _json)
      : this(
          allowPlaybackInterruption:
              _json.containsKey('allowPlaybackInterruption')
                  ? _json['allowPlaybackInterruption'] as core.bool
                  : null,
          ssml: _json.containsKey('ssml') ? _json['ssml'] as core.String : null,
          text: _json.containsKey('text') ? _json['text'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowPlaybackInterruption != null)
          'allowPlaybackInterruption': allowPlaybackInterruption!,
        if (ssml != null) 'ssml': ssml!,
        if (text != null) 'text': text!,
      };
}

/// Used by:
///
/// - dialogflow:v2 : GoogleCloudDialogflowCxV3ResponseMessagePlayAudio
/// - dialogflow:v2 : GoogleCloudDialogflowCxV3beta1ResponseMessagePlayAudio
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3ResponseMessagePlayAudio
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3beta1ResponseMessagePlayAudio
class $ResponseMessagePlayAudio {
  /// Whether the playback of this message can be interrupted by the end user's
  /// speech and the client can then starts the next Dialogflow request.
  ///
  /// Output only.
  core.bool? allowPlaybackInterruption;

  /// URI of the audio clip.
  ///
  /// Dialogflow does not impose any validation on this value. It is specific to
  /// the client that reads it.
  ///
  /// Required.
  core.String? audioUri;

  $ResponseMessagePlayAudio({
    this.allowPlaybackInterruption,
    this.audioUri,
  });

  $ResponseMessagePlayAudio.fromJson(core.Map _json)
      : this(
          allowPlaybackInterruption:
              _json.containsKey('allowPlaybackInterruption')
                  ? _json['allowPlaybackInterruption'] as core.bool
                  : null,
          audioUri: _json.containsKey('audioUri')
              ? _json['audioUri'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowPlaybackInterruption != null)
          'allowPlaybackInterruption': allowPlaybackInterruption!,
        if (audioUri != null) 'audioUri': audioUri!,
      };
}

/// Used by:
///
/// - dialogflow:v2 : GoogleCloudDialogflowCxV3ResponseMessageText
/// - dialogflow:v2 : GoogleCloudDialogflowCxV3beta1ResponseMessageText
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3ResponseMessageText
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3beta1ResponseMessageText
class $ResponseMessageText {
  /// Whether the playback of this message can be interrupted by the end user's
  /// speech and the client can then starts the next Dialogflow request.
  ///
  /// Output only.
  core.bool? allowPlaybackInterruption;

  /// A collection of text responses.
  ///
  /// Required.
  core.List<core.String>? text;

  $ResponseMessageText({
    this.allowPlaybackInterruption,
    this.text,
  });

  $ResponseMessageText.fromJson(core.Map _json)
      : this(
          allowPlaybackInterruption:
              _json.containsKey('allowPlaybackInterruption')
                  ? _json['allowPlaybackInterruption'] as core.bool
                  : null,
          text: _json.containsKey('text')
              ? (_json['text'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowPlaybackInterruption != null)
          'allowPlaybackInterruption': allowPlaybackInterruption!,
        if (text != null) 'text': text!,
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
/// - documentai:v1 : GoogleCloudDocumentaiV1ReviewDocumentResponse
/// - documentai:v1 : GoogleCloudDocumentaiV1beta3ReviewDocumentResponse
class $ReviewDocumentResponse {
  /// The Cloud Storage uri for the human reviewed document.
  core.String? gcsDestination;

  $ReviewDocumentResponse({
    this.gcsDestination,
  });

  $ReviewDocumentResponse.fromJson(core.Map _json)
      : this(
          gcsDestination: _json.containsKey('gcsDestination')
              ? _json['gcsDestination'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (gcsDestination != null) 'gcsDestination': gcsDestination!,
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
/// - securitycenter:v1 : GoogleCloudSecuritycenterV1RunAssetDiscoveryResponse
/// - securitycenter:v1 : GoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponse
/// - securitycenter:v1 : GoogleCloudSecuritycenterV1p1beta1RunAssetDiscoveryResponse
class $RunAssetDiscoveryResponse {
  /// The duration between asset discovery run start and end
  core.String? duration;

  /// The state of an asset discovery run.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Asset discovery run state was unspecified.
  /// - "COMPLETED" : Asset discovery run completed successfully.
  /// - "SUPERSEDED" : Asset discovery run was cancelled with tasks still
  /// pending, as another run for the same organization was started with a
  /// higher priority.
  /// - "TERMINATED" : Asset discovery run was killed and terminated.
  core.String? state;

  $RunAssetDiscoveryResponse({
    this.duration,
    this.state,
  });

  $RunAssetDiscoveryResponse.fromJson(core.Map _json)
      : this(
          duration: _json.containsKey('duration')
              ? _json['duration'] as core.String
              : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (duration != null) 'duration': duration!,
        if (state != null) 'state': state!,
      };
}

/// Used by:
///
/// - vision:v1 : GoogleCloudVisionV1p1beta1SafeSearchAnnotation
/// - vision:v1 : GoogleCloudVisionV1p2beta1SafeSearchAnnotation
/// - vision:v1 : GoogleCloudVisionV1p3beta1SafeSearchAnnotation
/// - vision:v1 : GoogleCloudVisionV1p4beta1SafeSearchAnnotation
/// - vision:v1 : SafeSearchAnnotation
class $SafeSearchAnnotation {
  /// Represents the adult content likelihood for the image.
  ///
  /// Adult content may contain elements such as nudity, pornographic images or
  /// cartoons, or sexual activities.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown likelihood.
  /// - "VERY_UNLIKELY" : It is very unlikely.
  /// - "UNLIKELY" : It is unlikely.
  /// - "POSSIBLE" : It is possible.
  /// - "LIKELY" : It is likely.
  /// - "VERY_LIKELY" : It is very likely.
  core.String? adult;

  /// Likelihood that this is a medical image.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown likelihood.
  /// - "VERY_UNLIKELY" : It is very unlikely.
  /// - "UNLIKELY" : It is unlikely.
  /// - "POSSIBLE" : It is possible.
  /// - "LIKELY" : It is likely.
  /// - "VERY_LIKELY" : It is very likely.
  core.String? medical;

  /// Likelihood that the request image contains racy content.
  ///
  /// Racy content may include (but is not limited to) skimpy or sheer clothing,
  /// strategically covered nudity, lewd or provocative poses, or close-ups of
  /// sensitive body areas.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown likelihood.
  /// - "VERY_UNLIKELY" : It is very unlikely.
  /// - "UNLIKELY" : It is unlikely.
  /// - "POSSIBLE" : It is possible.
  /// - "LIKELY" : It is likely.
  /// - "VERY_LIKELY" : It is very likely.
  core.String? racy;

  /// Spoof likelihood.
  ///
  /// The likelihood that an modification was made to the image's canonical
  /// version to make it appear funny or offensive.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown likelihood.
  /// - "VERY_UNLIKELY" : It is very unlikely.
  /// - "UNLIKELY" : It is unlikely.
  /// - "POSSIBLE" : It is possible.
  /// - "LIKELY" : It is likely.
  /// - "VERY_LIKELY" : It is very likely.
  core.String? spoof;

  /// Likelihood that this image contains violent content.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown likelihood.
  /// - "VERY_UNLIKELY" : It is very unlikely.
  /// - "UNLIKELY" : It is unlikely.
  /// - "POSSIBLE" : It is possible.
  /// - "LIKELY" : It is likely.
  /// - "VERY_LIKELY" : It is very likely.
  core.String? violence;

  $SafeSearchAnnotation({
    this.adult,
    this.medical,
    this.racy,
    this.spoof,
    this.violence,
  });

  $SafeSearchAnnotation.fromJson(core.Map _json)
      : this(
          adult:
              _json.containsKey('adult') ? _json['adult'] as core.String : null,
          medical: _json.containsKey('medical')
              ? _json['medical'] as core.String
              : null,
          racy: _json.containsKey('racy') ? _json['racy'] as core.String : null,
          spoof:
              _json.containsKey('spoof') ? _json['spoof'] as core.String : null,
          violence: _json.containsKey('violence')
              ? _json['violence'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (adult != null) 'adult': adult!,
        if (medical != null) 'medical': medical!,
        if (racy != null) 'racy': racy!,
        if (spoof != null) 'spoof': spoof!,
        if (violence != null) 'violence': violence!,
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
/// - securitycenter:v1 : GoogleCloudSecuritycenterV1p1beta1SecurityMarks
/// - securitycenter:v1 : SecurityMarks
class $SecurityMarks {
  /// The canonical name of the marks.
  ///
  /// Examples:
  /// "organizations/{organization_id}/assets/{asset_id}/securityMarks"
  /// "folders/{folder_id}/assets/{asset_id}/securityMarks"
  /// "projects/{project_number}/assets/{asset_id}/securityMarks"
  /// "organizations/{organization_id}/sources/{source_id}/findings/{finding_id}/securityMarks"
  /// "folders/{folder_id}/sources/{source_id}/findings/{finding_id}/securityMarks"
  /// "projects/{project_number}/sources/{source_id}/findings/{finding_id}/securityMarks"
  core.String? canonicalName;

  /// Mutable user specified security marks belonging to the parent resource.
  ///
  /// Constraints are as follows: * Keys and values are treated as case
  /// insensitive * Keys must be between 1 - 256 characters (inclusive) * Keys
  /// must be letters, numbers, underscores, or dashes * Values have leading and
  /// trailing whitespace trimmed, remaining characters must be between 1 - 4096
  /// characters (inclusive)
  core.Map<core.String, core.String>? marks;

  /// The relative resource name of the SecurityMarks.
  ///
  /// See:
  /// https://cloud.google.com/apis/design/resource_names#relative_resource_name
  /// Examples:
  /// "organizations/{organization_id}/assets/{asset_id}/securityMarks"
  /// "organizations/{organization_id}/sources/{source_id}/findings/{finding_id}/securityMarks".
  core.String? name;

  $SecurityMarks({
    this.canonicalName,
    this.marks,
    this.name,
  });

  $SecurityMarks.fromJson(core.Map _json)
      : this(
          canonicalName: _json.containsKey('canonicalName')
              ? _json['canonicalName'] as core.String
              : null,
          marks: _json.containsKey('marks')
              ? (_json['marks'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (canonicalName != null) 'canonicalName': canonicalName!,
        if (marks != null) 'marks': marks!,
        if (name != null) 'name': name!,
      };
}

/// Used by:
///
/// - serviceusage:v1 : GoogleApiServiceusageV1beta1ServiceIdentity
/// - serviceusage:v1 : ServiceIdentity
class $ServiceIdentity {
  /// The email address of the service account that a service producer would use
  /// to access consumer resources.
  core.String? email;

  /// The unique and stable id of the service account.
  ///
  /// https://cloud.google.com/iam/reference/rest/v1/projects.serviceAccounts#ServiceAccount
  core.String? uniqueId;

  $ServiceIdentity({
    this.email,
    this.uniqueId,
  });

  $ServiceIdentity.fromJson(core.Map _json)
      : this(
          email:
              _json.containsKey('email') ? _json['email'] as core.String : null,
          uniqueId: _json.containsKey('uniqueId')
              ? _json['uniqueId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (email != null) 'email': email!,
        if (uniqueId != null) 'uniqueId': uniqueId!,
      };
}

/// Used by:
///
/// - dialogflow:v2 : GoogleCloudDialogflowCxV3SessionInfo
/// - dialogflow:v2 : GoogleCloudDialogflowCxV3beta1SessionInfo
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3SessionInfo
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3beta1SessionInfo
class $SessionInfo {
  /// Optional for WebhookRequest.
  ///
  /// Optional for WebhookResponse. All parameters collected from forms and
  /// intents during the session. Parameters can be created, updated, or removed
  /// by the webhook. To remove a parameter from the session, the webhook should
  /// explicitly set the parameter value to null in WebhookResponse. The map is
  /// keyed by parameters' display names.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? parameters;

  /// Always present for WebhookRequest.
  ///
  /// Ignored for WebhookResponse. The unique identifier of the session. This
  /// field can be used by the webhook to identify a session. Format:
  /// `projects//locations//agents//sessions/` or
  /// `projects//locations//agents//environments//sessions/` if environment is
  /// specified.
  core.String? session;

  $SessionInfo({
    this.parameters,
    this.session,
  });

  $SessionInfo.fromJson(core.Map _json)
      : this(
          parameters: _json.containsKey('parameters')
              ? _json['parameters'] as core.Map<core.String, core.dynamic>
              : null,
          session: _json.containsKey('session')
              ? _json['session'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (parameters != null) 'parameters': parameters!,
        if (session != null) 'session': session!,
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
/// - dialogflow:v2 : GoogleCloudDialogflowCxV3WebhookRequestSentimentAnalysisResult
/// - dialogflow:v2 : GoogleCloudDialogflowCxV3beta1WebhookRequestSentimentAnalysisResult
/// - dialogflow:v2 : GoogleCloudDialogflowV2Sentiment
/// - dialogflow:v2 : GoogleCloudDialogflowV2beta1Sentiment
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3SentimentAnalysisResult
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3WebhookRequestSentimentAnalysisResult
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3beta1WebhookRequestSentimentAnalysisResult
/// - dialogflow:v3 : GoogleCloudDialogflowV2Sentiment
/// - dialogflow:v3 : GoogleCloudDialogflowV2beta1Sentiment
class $Shared00 {
  /// A non-negative number in the \[0, +inf) range, which represents the
  /// absolute magnitude of sentiment, regardless of score (positive or
  /// negative).
  core.double? magnitude;

  /// Sentiment score between -1.0 (negative sentiment) and 1.0 (positive
  /// sentiment).
  core.double? score;

  $Shared00({
    this.magnitude,
    this.score,
  });

  $Shared00.fromJson(core.Map _json)
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
/// - documentai:v1 : GoogleCloudDocumentaiV1beta1GcsDestination
/// - documentai:v1 : GoogleCloudDocumentaiV1beta1GcsSource
/// - documentai:v1 : GoogleCloudDocumentaiV1beta2GcsDestination
/// - documentai:v1 : GoogleCloudDocumentaiV1beta2GcsSource
class $Shared01 {
  core.String? uri;

  $Shared01({
    this.uri,
  });

  $Shared01.fromJson(core.Map _json)
      : this(
          uri: _json.containsKey('uri') ? _json['uri'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (uri != null) 'uri': uri!,
      };
}

/// Used by:
///
/// - osconfig:v1 : OSPolicyResourcePackageResourceAPT
/// - osconfig:v1 : OSPolicyResourcePackageResourceGooGet
/// - osconfig:v1 : OSPolicyResourcePackageResourceYUM
/// - osconfig:v1 : OSPolicyResourcePackageResourceZypper
class $Shared02 {
  /// Package name.
  ///
  /// Required.
  core.String? name;

  $Shared02({
    this.name,
  });

  $Shared02.fromJson(core.Map _json)
      : this(
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
      };
}

/// Used by:
///
/// - appengine:v1 : CreateVersionMetadataV1
/// - appengine:v1 : CreateVersionMetadataV1Alpha
/// - appengine:v1 : CreateVersionMetadataV1Beta
class $Shared03 {
  /// The Cloud Build ID if one was created as part of the version create.
  ///
  /// @OutputOnly
  core.String? cloudBuildId;

  $Shared03({
    this.cloudBuildId,
  });

  $Shared03.fromJson(core.Map _json)
      : this(
          cloudBuildId: _json.containsKey('cloudBuildId')
              ? _json['cloudBuildId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cloudBuildId != null) 'cloudBuildId': cloudBuildId!,
      };
}

/// Used by:
///
/// - chat:v1 : GoogleAppsCardV1SuggestionItem
/// - chat:v1 : TextParagraph
class $Shared04 {
  core.String? text;

  $Shared04({
    this.text,
  });

  $Shared04.fromJson(core.Map _json)
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
class $Shared05 {
  /// Email address of the service account.
  core.String? email;

  /// The list of scopes to be made available for this service account.
  core.List<core.String>? scopes;

  $Shared05({
    this.email,
    this.scopes,
  });

  $Shared05.fromJson(core.Map _json)
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
class $Shared06 {
  /// The currency of the price.
  core.String? currency;

  /// The price represented as a number.
  core.String? value;

  $Shared06({
    this.currency,
    this.value,
  });

  $Shared06.fromJson(core.Map _json)
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
/// - ondemandscanning:v1 : AnalyzePackagesMetadata
/// - ondemandscanning:v1 : AnalyzePackagesMetadataV1
class $Shared07 {
  /// When the scan was created.
  core.String? createTime;

  /// The resource URI of the container image being scanned.
  core.String? resourceUri;

  $Shared07({
    this.createTime,
    this.resourceUri,
  });

  $Shared07.fromJson(core.Map _json)
      : this(
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          resourceUri: _json.containsKey('resourceUri')
              ? _json['resourceUri'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (resourceUri != null) 'resourceUri': resourceUri!,
      };
}

/// Used by:
///
/// - ondemandscanning:v1 : AnalyzePackagesResponse
/// - ondemandscanning:v1 : AnalyzePackagesResponseV1
class $Shared08 {
  /// The name of the scan resource created by this successful scan.
  core.String? scan;

  $Shared08({
    this.scan,
  });

  $Shared08.fromJson(core.Map _json)
      : this(
          scan: _json.containsKey('scan') ? _json['scan'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (scan != null) 'scan': scan!,
      };
}

/// Used by:
///
/// - ondemandscanning:v1 : BuilderConfig
/// - youtube:v3 : AbuseType
class $Shared09 {
  core.String? id;

  $Shared09({
    this.id,
  });

  $Shared09.fromJson(core.Map _json)
      : this(
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
      };
}

/// Used by:
///
/// - osconfig:v1 : OSPolicyAssignmentInstanceFilterInventory
/// - osconfig:v1 : OSPolicyInventoryFilter
class $Shared10 {
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

  $Shared10({
    this.osShortName,
    this.osVersion,
  });

  $Shared10.fromJson(core.Map _json)
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
class $Shared11 {
  core.String? value;

  $Shared11({
    this.value,
  });

  $Shared11.fromJson(core.Map _json)
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
/// - serviceconsumermanagement:v1 : SourceContext
/// - servicemanagement:v1 : SourceContext
/// - servicenetworking:v1 : SourceContext
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
/// - serviceconsumermanagement:v1 : SourceInfo
/// - servicemanagement:v1 : SourceInfo
/// - servicenetworking:v1 : SourceInfo
/// - serviceusage:v1 : SourceInfo
class $SourceInfo {
  /// All files used during config generation.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Map<core.String, core.Object?>>? sourceFiles;

  $SourceInfo({
    this.sourceFiles,
  });

  $SourceInfo.fromJson(core.Map _json)
      : this(
          sourceFiles: _json.containsKey('sourceFiles')
              ? (_json['sourceFiles'] as core.List)
                  .map((value) => value as core.Map<core.String, core.dynamic>)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (sourceFiles != null) 'sourceFiles': sourceFiles!,
      };
}

/// Used by:
///
/// - servicecontrol:v1 : SpanContext
/// - servicecontrol:v2 : SpanContext
class $SpanContext {
  /// The resource name of the span.
  ///
  /// The format is:
  /// projects/\[PROJECT_ID_OR_NUMBER\]/traces/\[TRACE_ID\]/spans/\[SPAN_ID\]
  /// `[TRACE_ID]` is a unique identifier for a trace within a project; it is a
  /// 32-character hexadecimal encoding of a 16-byte array. `[SPAN_ID]` is a
  /// unique identifier for a span within a trace; it is a 16-character
  /// hexadecimal encoding of an 8-byte array.
  core.String? spanName;

  $SpanContext({
    this.spanName,
  });

  $SpanContext.fromJson(core.Map _json)
      : this(
          spanName: _json.containsKey('spanName')
              ? _json['spanName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (spanName != null) 'spanName': spanName!,
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
/// - bigquerydatatransfer:v1 : Status
/// - bigqueryreservation:v1 : Status
/// - bigtableadmin:v2 : Status
/// - chromemanagement:v1 : GoogleRpcStatus
/// - cloudasset:v1 : Status
/// - cloudbuild:v1 : Status
/// - cloudchannel:v1 : GoogleRpcStatus
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
/// - datafusion:v1 : Status
/// - datamigration:v1 : Status
/// - dataproc:v1 : Status
/// - datastore:v1 : Status
/// - dialogflow:v2 : GoogleRpcStatus
/// - dialogflow:v3 : GoogleRpcStatus
/// - displayvideo:v1 : Status
/// - dlp:v2 : GoogleRpcStatus
/// - documentai:v1 : GoogleRpcStatus
/// - eventarc:v1 : GoogleRpcStatus
/// - file:v1 : Status
/// - firebasehosting:v1 : Status
/// - firebaseml:v1 : Status
/// - firestore:v1 : Status
/// - gameservices:v1 : Status
/// - gkehub:v1 : GoogleRpcStatus
/// - healthcare:v1 : Status
/// - iam:v1 : Status
/// - jobs:v4 : Status
/// - language:v1 : Status
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
/// - translate:v3 : Status
/// - vault:v1 : Status
/// - videointelligence:v1 : GoogleRpc_Status
/// - vision:v1 : Status
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
/// - serviceconsumermanagement:v1 : SystemParameter
/// - servicemanagement:v1 : SystemParameter
/// - servicenetworking:v1 : SystemParameter
/// - serviceusage:v1 : SystemParameter
class $SystemParameter {
  /// Define the HTTP header name to use for the parameter.
  ///
  /// It is case insensitive.
  core.String? httpHeader;

  /// Define the name of the parameter, such as "api_key" .
  ///
  /// It is case sensitive.
  core.String? name;

  /// Define the URL query parameter name to use for the parameter.
  ///
  /// It is case sensitive.
  core.String? urlQueryParameter;

  $SystemParameter({
    this.httpHeader,
    this.name,
    this.urlQueryParameter,
  });

  $SystemParameter.fromJson(core.Map _json)
      : this(
          httpHeader: _json.containsKey('httpHeader')
              ? _json['httpHeader'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          urlQueryParameter: _json.containsKey('urlQueryParameter')
              ? _json['urlQueryParameter'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (httpHeader != null) 'httpHeader': httpHeader!,
        if (name != null) 'name': name!,
        if (urlQueryParameter != null) 'urlQueryParameter': urlQueryParameter!,
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
/// - dialogflow:v2 : GoogleCloudDialogflowCxV3TestConfig
/// - dialogflow:v2 : GoogleCloudDialogflowCxV3beta1TestConfig
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3TestConfig
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3beta1TestConfig
class $TestConfig {
  /// Flow name.
  ///
  /// If not set, default start flow is assumed. Format:
  /// `projects//locations//agents//flows/`.
  core.String? flow;

  /// Session parameters to be compared when calculating differences.
  core.List<core.String>? trackingParameters;

  $TestConfig({
    this.flow,
    this.trackingParameters,
  });

  $TestConfig.fromJson(core.Map _json)
      : this(
          flow: _json.containsKey('flow') ? _json['flow'] as core.String : null,
          trackingParameters: _json.containsKey('trackingParameters')
              ? (_json['trackingParameters'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (flow != null) 'flow': flow!,
        if (trackingParameters != null)
          'trackingParameters': trackingParameters!,
      };
}

/// Used by:
///
/// - apigateway:v1 : ApigatewayTestIamPermissionsRequest
/// - apigee:v1 : GoogleIamV1TestIamPermissionsRequest
/// - bigquery:v2 : TestIamPermissionsRequest
/// - bigtableadmin:v2 : TestIamPermissionsRequest
/// - binaryauthorization:v1 : TestIamPermissionsRequest
/// - cloudbilling:v1 : TestIamPermissionsRequest
/// - cloudfunctions:v1 : TestIamPermissionsRequest
/// - cloudiot:v1 : TestIamPermissionsRequest
/// - cloudkms:v1 : TestIamPermissionsRequest
/// - cloudresourcemanager:v1 : TestIamPermissionsRequest
/// - cloudresourcemanager:v2 : TestIamPermissionsRequest
/// - cloudresourcemanager:v3 : TestIamPermissionsRequest
/// - cloudtasks:v2 : TestIamPermissionsRequest
/// - connectors:v1 : TestIamPermissionsRequest
/// - datacatalog:v1 : TestIamPermissionsRequest
/// - datafusion:v1 : TestIamPermissionsRequest
/// - datamigration:v1 : TestIamPermissionsRequest
/// - eventarc:v1 : TestIamPermissionsRequest
/// - gameservices:v1 : TestIamPermissionsRequest
/// - gkehub:v1 : TestIamPermissionsRequest
/// - healthcare:v1 : TestIamPermissionsRequest
/// - iam:v1 : TestIamPermissionsRequest
/// - iap:v1 : TestIamPermissionsRequest
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
/// - secretmanager:v1 : TestIamPermissionsRequest
/// - securitycenter:v1 : TestIamPermissionsRequest
/// - servicedirectory:v1 : TestIamPermissionsRequest
/// - servicemanagement:v1 : TestIamPermissionsRequest
/// - sourcerepo:v1 : TestIamPermissionsRequest
class $TestIamPermissionsRequest {
  /// The set of permissions to check for the `resource`.
  ///
  /// Permissions with wildcards (such as '*' or 'storage.*') are not allowed.
  /// For more information see
  /// [IAM Overview](https://cloud.google.com/iam/docs/overview#permissions).
  core.List<core.String>? permissions;

  $TestIamPermissionsRequest({
    this.permissions,
  });

  $TestIamPermissionsRequest.fromJson(core.Map _json)
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
/// - dialogflow:v2 : GoogleCloudDialogflowCxV3TestRunDifference
/// - dialogflow:v2 : GoogleCloudDialogflowCxV3beta1TestRunDifference
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3TestRunDifference
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3beta1TestRunDifference
class $TestRunDifference {
  /// A description of the diff, showing the actual output vs expected output.
  core.String? description;

  /// The type of diff.
  /// Possible string values are:
  /// - "DIFF_TYPE_UNSPECIFIED" : Should never be used.
  /// - "INTENT" : The intent.
  /// - "PAGE" : The page.
  /// - "PARAMETERS" : The parameters.
  /// - "UTTERANCE" : The message utterance.
  core.String? type;

  $TestRunDifference({
    this.description,
    this.type,
  });

  $TestRunDifference.fromJson(core.Map _json)
      : this(
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (type != null) 'type': type!,
      };
}

/// Used by:
///
/// - dialogflow:v2 : GoogleCloudDialogflowCxV3TextInput
/// - dialogflow:v2 : GoogleCloudDialogflowCxV3beta1TextInput
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3TextInput
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3beta1TextInput
class $TextInput {
  /// The UTF-8 encoded natural language text to be processed.
  ///
  /// Text length must not exceed 256 characters.
  ///
  /// Required.
  core.String? text;

  $TextInput({
    this.text,
  });

  $TextInput.fromJson(core.Map _json)
      : this(
          text: _json.containsKey('text') ? _json['text'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (text != null) 'text': text!,
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
/// - servicecontrol:v1 : ThirdPartyPrincipal
/// - servicecontrol:v2 : ThirdPartyPrincipal
class $ThirdPartyPrincipal {
  /// Metadata about third party identity.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? thirdPartyClaims;

  $ThirdPartyPrincipal({
    this.thirdPartyClaims,
  });

  $ThirdPartyPrincipal.fromJson(core.Map _json)
      : this(
          thirdPartyClaims: _json.containsKey('thirdPartyClaims')
              ? _json['thirdPartyClaims'] as core.Map<core.String, core.dynamic>
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (thirdPartyClaims != null) 'thirdPartyClaims': thirdPartyClaims!,
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
/// - file:v1 : TimeOfDay
/// - jobs:v3 : TimeOfDay
/// - jobs:v4 : TimeOfDay
/// - managedidentities:v1 : TimeOfDay
/// - memcache:v1 : TimeOfDay
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
  /// supported values are > 0 and <= 0.5.
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
/// - cloudchannel:v1 : GoogleCloudChannelV1TrialSettings
/// - cloudchannel:v1 : GoogleCloudChannelV1alpha1TrialSettings
class $TrialSettings {
  /// Date when the trial ends.
  ///
  /// The value is in milliseconds using the UNIX Epoch format. See an example
  /// [Epoch converter](https://www.epochconverter.com).
  core.String? endTime;

  /// Determines if the entitlement is in a trial or not: * `true` - The
  /// entitlement is in trial.
  ///
  /// * `false` - The entitlement is not in trial.
  core.bool? trial;

  $TrialSettings({
    this.endTime,
    this.trial,
  });

  $TrialSettings.fromJson(core.Map _json)
      : this(
          endTime: _json.containsKey('endTime')
              ? _json['endTime'] as core.String
              : null,
          trial:
              _json.containsKey('trial') ? _json['trial'] as core.bool : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (endTime != null) 'endTime': endTime!,
        if (trial != null) 'trial': trial!,
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
/// - contactcenterinsights:v1 : GoogleCloudContactcenterinsightsV1UndeployIssueModelRequest
/// - contactcenterinsights:v1 : GoogleCloudContactcenterinsightsV1alpha1UndeployIssueModelRequest
class $UndeployIssueModelRequest {
  /// The issue model to undeploy.
  ///
  /// Required.
  core.String? name;

  $UndeployIssueModelRequest({
    this.name,
  });

  $UndeployIssueModelRequest.fromJson(core.Map _json)
      : this(
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
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
/// - serviceconsumermanagement:v1 : UsageRule
/// - servicemanagement:v1 : UsageRule
/// - servicenetworking:v1 : UsageRule
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
  /// contain the following characters: ""<>".
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
/// - retail:v2 : GoogleCloudRetailV2UserEventImportSummary
/// - retail:v2 : GoogleCloudRetailV2alphaUserEventImportSummary
/// - retail:v2 : GoogleCloudRetailV2betaUserEventImportSummary
class $UserEventImportSummary {
  /// Count of user events imported with complete existing catalog information.
  core.String? joinedEventsCount;

  /// Count of user events imported, but with catalog information not found in
  /// the imported catalog.
  core.String? unjoinedEventsCount;

  $UserEventImportSummary({
    this.joinedEventsCount,
    this.unjoinedEventsCount,
  });

  $UserEventImportSummary.fromJson(core.Map _json)
      : this(
          joinedEventsCount: _json.containsKey('joinedEventsCount')
              ? _json['joinedEventsCount'] as core.String
              : null,
          unjoinedEventsCount: _json.containsKey('unjoinedEventsCount')
              ? _json['unjoinedEventsCount'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (joinedEventsCount != null) 'joinedEventsCount': joinedEventsCount!,
        if (unjoinedEventsCount != null)
          'unjoinedEventsCount': unjoinedEventsCount!,
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
/// - cloudchannel:v1 : GoogleCloudChannelV1Value
/// - cloudchannel:v1 : GoogleCloudChannelV1alpha1Value
class $Value {
  /// Represents a boolean value.
  core.bool? boolValue;

  /// Represents a double value.
  core.double? doubleValue;

  /// Represents an int64 value.
  core.String? int64Value;

  /// Represents an 'Any' proto value.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? protoValue;

  /// Represents a string value.
  core.String? stringValue;

  $Value({
    this.boolValue,
    this.doubleValue,
    this.int64Value,
    this.protoValue,
    this.stringValue,
  });

  $Value.fromJson(core.Map _json)
      : this(
          boolValue: _json.containsKey('boolValue')
              ? _json['boolValue'] as core.bool
              : null,
          doubleValue: _json.containsKey('doubleValue')
              ? (_json['doubleValue'] as core.num).toDouble()
              : null,
          int64Value: _json.containsKey('int64Value')
              ? _json['int64Value'] as core.String
              : null,
          protoValue: _json.containsKey('protoValue')
              ? _json['protoValue'] as core.Map<core.String, core.dynamic>
              : null,
          stringValue: _json.containsKey('stringValue')
              ? _json['stringValue'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (boolValue != null) 'boolValue': boolValue!,
        if (doubleValue != null) 'doubleValue': doubleValue!,
        if (int64Value != null) 'int64Value': int64Value!,
        if (protoValue != null) 'protoValue': protoValue!,
        if (stringValue != null) 'stringValue': stringValue!,
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
/// - vision:v1 : GoogleCloudVisionV1p1beta1Vertex
/// - vision:v1 : GoogleCloudVisionV1p2beta1Vertex
/// - vision:v1 : GoogleCloudVisionV1p3beta1Vertex
/// - vision:v1 : GoogleCloudVisionV1p4beta1Vertex
/// - vision:v1 : Vertex
class $Vertex00 {
  /// X coordinate.
  core.int? x;

  /// Y coordinate.
  core.int? y;

  $Vertex00({
    this.x,
    this.y,
  });

  $Vertex00.fromJson(core.Map _json)
      : this(
          x: _json.containsKey('x') ? _json['x'] as core.int : null,
          y: _json.containsKey('y') ? _json['y'] as core.int : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (x != null) 'x': x!,
        if (y != null) 'y': y!,
      };
}

/// Used by:
///
/// - documentai:v1 : GoogleCloudDocumentaiV1Vertex
/// - documentai:v1 : GoogleCloudDocumentaiV1beta1Vertex
/// - documentai:v1 : GoogleCloudDocumentaiV1beta2Vertex
class $Vertex01 {
  /// X coordinate.
  core.int? x;

  /// Y coordinate (starts from the top of the image).
  core.int? y;

  $Vertex01({
    this.x,
    this.y,
  });

  $Vertex01.fromJson(core.Map _json)
      : this(
          x: _json.containsKey('x') ? _json['x'] as core.int : null,
          y: _json.containsKey('y') ? _json['y'] as core.int : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (x != null) 'x': x!,
        if (y != null) 'y': y!,
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
/// - videointelligence:v1 : GoogleCloudVideointelligenceV1_VideoSegment
/// - videointelligence:v1 : GoogleCloudVideointelligenceV1beta2_VideoSegment
/// - videointelligence:v1 : GoogleCloudVideointelligenceV1p1beta1_VideoSegment
/// - videointelligence:v1 : GoogleCloudVideointelligenceV1p2beta1_VideoSegment
/// - videointelligence:v1 : GoogleCloudVideointelligenceV1p3beta1_VideoSegment
class $VideoSegment {
  /// Time-offset, relative to the beginning of the video, corresponding to the
  /// end of the segment (inclusive).
  core.String? endTimeOffset;

  /// Time-offset, relative to the beginning of the video, corresponding to the
  /// start of the segment (inclusive).
  core.String? startTimeOffset;

  $VideoSegment({
    this.endTimeOffset,
    this.startTimeOffset,
  });

  $VideoSegment.fromJson(core.Map _json)
      : this(
          endTimeOffset: _json.containsKey('endTimeOffset')
              ? _json['endTimeOffset'] as core.String
              : null,
          startTimeOffset: _json.containsKey('startTimeOffset')
              ? _json['startTimeOffset'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (endTimeOffset != null) 'endTimeOffset': endTimeOffset!,
        if (startTimeOffset != null) 'startTimeOffset': startTimeOffset!,
      };
}

/// Used by:
///
/// - serviceconsumermanagement:v1 : V1AddVisibilityLabelsResponse
/// - serviceconsumermanagement:v1 : V1RemoveVisibilityLabelsResponse
class $VisibilityLabelsResponse {
  /// The updated set of visibility labels for this consumer on this service.
  core.List<core.String>? labels;

  $VisibilityLabelsResponse({
    this.labels,
  });

  $VisibilityLabelsResponse.fromJson(core.Map _json)
      : this(
          labels: _json.containsKey('labels')
              ? (_json['labels'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (labels != null) 'labels': labels!,
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
/// - vision:v1 : GoogleCloudVisionV1p1beta1WebDetectionWebEntity
/// - vision:v1 : GoogleCloudVisionV1p2beta1WebDetectionWebEntity
/// - vision:v1 : GoogleCloudVisionV1p3beta1WebDetectionWebEntity
/// - vision:v1 : GoogleCloudVisionV1p4beta1WebDetectionWebEntity
/// - vision:v1 : WebEntity
class $WebEntity {
  /// Canonical description of the entity, in English.
  core.String? description;

  /// Opaque entity ID.
  core.String? entityId;

  /// Overall relevancy score for the entity.
  ///
  /// Not normalized and not comparable across different image queries.
  core.double? score;

  $WebEntity({
    this.description,
    this.entityId,
    this.score,
  });

  $WebEntity.fromJson(core.Map _json)
      : this(
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          entityId: _json.containsKey('entityId')
              ? _json['entityId'] as core.String
              : null,
          score: _json.containsKey('score')
              ? (_json['score'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (entityId != null) 'entityId': entityId!,
        if (score != null) 'score': score!,
      };
}

/// Used by:
///
/// - vision:v1 : GoogleCloudVisionV1p1beta1WebDetectionWebImage
/// - vision:v1 : GoogleCloudVisionV1p2beta1WebDetectionWebImage
/// - vision:v1 : GoogleCloudVisionV1p3beta1WebDetectionWebImage
/// - vision:v1 : GoogleCloudVisionV1p4beta1WebDetectionWebImage
/// - vision:v1 : WebImage
class $WebImage {
  /// (Deprecated) Overall relevancy score for the image.
  core.double? score;

  /// The result image URL.
  core.String? url;

  $WebImage({
    this.score,
    this.url,
  });

  $WebImage.fromJson(core.Map _json)
      : this(
          score: _json.containsKey('score')
              ? (_json['score'] as core.num).toDouble()
              : null,
          url: _json.containsKey('url') ? _json['url'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (score != null) 'score': score!,
        if (url != null) 'url': url!,
      };
}

/// Used by:
///
/// - vision:v1 : GoogleCloudVisionV1p1beta1WebDetectionWebLabel
/// - vision:v1 : GoogleCloudVisionV1p2beta1WebDetectionWebLabel
/// - vision:v1 : GoogleCloudVisionV1p3beta1WebDetectionWebLabel
/// - vision:v1 : GoogleCloudVisionV1p4beta1WebDetectionWebLabel
/// - vision:v1 : WebLabel
class $WebLabel {
  /// Label for extra metadata.
  core.String? label;

  /// The BCP-47 language code for `label`, such as "en-US" or "sr-Latn".
  ///
  /// For more information, see
  /// http://www.unicode.org/reports/tr35/#Unicode_locale_identifier.
  core.String? languageCode;

  $WebLabel({
    this.label,
    this.languageCode,
  });

  $WebLabel.fromJson(core.Map _json)
      : this(
          label:
              _json.containsKey('label') ? _json['label'] as core.String : null,
          languageCode: _json.containsKey('languageCode')
              ? _json['languageCode'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (label != null) 'label': label!,
        if (languageCode != null) 'languageCode': languageCode!,
      };
}

/// Used by:
///
/// - dialogflow:v2 : GoogleCloudDialogflowCxV3WebhookRequestFulfillmentInfo
/// - dialogflow:v2 : GoogleCloudDialogflowCxV3beta1WebhookRequestFulfillmentInfo
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3WebhookRequestFulfillmentInfo
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3beta1WebhookRequestFulfillmentInfo
class $WebhookRequestFulfillmentInfo {
  /// Always present.
  ///
  /// The tag used to identify which fulfillment is being called.
  core.String? tag;

  $WebhookRequestFulfillmentInfo({
    this.tag,
  });

  $WebhookRequestFulfillmentInfo.fromJson(core.Map _json)
      : this(
          tag: _json.containsKey('tag') ? _json['tag'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (tag != null) 'tag': tag!,
      };
}

/// Used by:
///
/// - dialogflow:v2 : GoogleCloudDialogflowCxV3WebhookRequestIntentInfoIntentParameterValue
/// - dialogflow:v2 : GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfoIntentParameterValue
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3WebhookRequestIntentInfoIntentParameterValue
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfoIntentParameterValue
class $WebhookRequestIntentInfoIntentParameterValue {
  /// Always present.
  ///
  /// Original text value extracted from user utterance.
  core.String? originalValue;

  /// Always present.
  ///
  /// Structured value for the parameter extracted from user utterance.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object? resolvedValue;

  $WebhookRequestIntentInfoIntentParameterValue({
    this.originalValue,
    this.resolvedValue,
  });

  $WebhookRequestIntentInfoIntentParameterValue.fromJson(core.Map _json)
      : this(
          originalValue: _json.containsKey('originalValue')
              ? _json['originalValue'] as core.String
              : null,
          resolvedValue: _json.containsKey('resolvedValue')
              ? _json['resolvedValue']
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (originalValue != null) 'originalValue': originalValue!,
        if (resolvedValue != null) 'resolvedValue': resolvedValue!,
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
/// - videointelligence:v1 : GoogleCloudVideointelligenceV1_WordInfo
/// - videointelligence:v1 : GoogleCloudVideointelligenceV1beta2_WordInfo
/// - videointelligence:v1 : GoogleCloudVideointelligenceV1p1beta1_WordInfo
/// - videointelligence:v1 : GoogleCloudVideointelligenceV1p2beta1_WordInfo
/// - videointelligence:v1 : GoogleCloudVideointelligenceV1p3beta1_WordInfo
class $WordInfo {
  /// The confidence estimate between 0.0 and 1.0.
  ///
  /// A higher number indicates an estimated greater likelihood that the
  /// recognized words are correct. This field is set only for the top
  /// alternative. This field is not guaranteed to be accurate and users should
  /// not rely on it to be always provided. The default of 0.0 is a sentinel
  /// value indicating `confidence` was not set.
  ///
  /// Output only.
  core.double? confidence;

  /// Time offset relative to the beginning of the audio, and corresponding to
  /// the end of the spoken word.
  ///
  /// This field is only set if `enable_word_time_offsets=true` and only in the
  /// top hypothesis. This is an experimental feature and the accuracy of the
  /// time offset can vary.
  core.String? endTime;

  /// A distinct integer value is assigned for every speaker within the audio.
  ///
  /// This field specifies which one of those speakers was detected to have
  /// spoken this word. Value ranges from 1 up to diarization_speaker_count, and
  /// is only set if speaker diarization is enabled.
  ///
  /// Output only.
  core.int? speakerTag;

  /// Time offset relative to the beginning of the audio, and corresponding to
  /// the start of the spoken word.
  ///
  /// This field is only set if `enable_word_time_offsets=true` and only in the
  /// top hypothesis. This is an experimental feature and the accuracy of the
  /// time offset can vary.
  core.String? startTime;

  /// The word corresponding to this set of information.
  core.String? word;

  $WordInfo({
    this.confidence,
    this.endTime,
    this.speakerTag,
    this.startTime,
    this.word,
  });

  $WordInfo.fromJson(core.Map _json)
      : this(
          confidence: _json.containsKey('confidence')
              ? (_json['confidence'] as core.num).toDouble()
              : null,
          endTime: _json.containsKey('endTime')
              ? _json['endTime'] as core.String
              : null,
          speakerTag: _json.containsKey('speakerTag')
              ? _json['speakerTag'] as core.int
              : null,
          startTime: _json.containsKey('startTime')
              ? _json['startTime'] as core.String
              : null,
          word: _json.containsKey('word') ? _json['word'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (confidence != null) 'confidence': confidence!,
        if (endTime != null) 'endTime': endTime!,
        if (speakerTag != null) 'speakerTag': speakerTag!,
        if (startTime != null) 'startTime': startTime!,
        if (word != null) 'word': word!,
      };
}

/// Used by:
///
/// - assuredworkloads:v1 : GoogleCloudAssuredworkloadsV1WorkloadKMSSettings
/// - assuredworkloads:v1 : GoogleCloudAssuredworkloadsV1beta1WorkloadKMSSettings
class $WorkloadKMSSettings {
  /// Input only.
  ///
  /// Immutable. The time at which the Key Management Service will automatically
  /// create a new version of the crypto key and mark it as the primary.
  ///
  /// Required.
  core.String? nextRotationTime;

  /// Input only.
  ///
  /// Immutable. \[next_rotation_time\] will be advanced by this period when the
  /// Key Management Service automatically rotates a key. Must be at least 24
  /// hours and at most 876,000 hours.
  ///
  /// Required.
  core.String? rotationPeriod;

  $WorkloadKMSSettings({
    this.nextRotationTime,
    this.rotationPeriod,
  });

  $WorkloadKMSSettings.fromJson(core.Map _json)
      : this(
          nextRotationTime: _json.containsKey('nextRotationTime')
              ? _json['nextRotationTime'] as core.String
              : null,
          rotationPeriod: _json.containsKey('rotationPeriod')
              ? _json['rotationPeriod'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextRotationTime != null) 'nextRotationTime': nextRotationTime!,
        if (rotationPeriod != null) 'rotationPeriod': rotationPeriod!,
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
