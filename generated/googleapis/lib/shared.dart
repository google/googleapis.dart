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

/// `AccessPolicy` is a container for `AccessLevels` (which define the necessary
/// attributes to use Google Cloud services) and `ServicePerimeters` (which
/// define regions of services able to freely pass data within a perimeter).
///
/// An access policy is globally visible within an organization, and the
/// restrictions it specifies apply to all projects within an organization.
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

/// Gets a summary of active ads in an account.
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

/// AccountPermissions contains information about a particular account
/// permission.
///
/// Some features of Campaign Manager require an account permission to be
/// present in the account.
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

/// AccountPermissionGroups contains a mapping of permission group IDs to names.
///
/// A permission group is a grouping of account permissions.
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

/// List of string parameters to supply when the action method is invoked.
///
/// For example, consider three snooze buttons: snooze now, snooze 1 day, snooze
/// next week. You might use action method = snooze(), passing the snooze type
/// and snooze time in the list of string parameters.
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

/// Ad Slot
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

/// Groups advertisers together so that reports can be generated for the entire
/// group at once.
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

/// Audience Segment.
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

/// Provides the configuration for logging a type of permissions.
///
/// Example: { "audit_log_configs": \[ { "log_type": "DATA_READ",
/// "exempted_members": \[ "user:jose@example.com" \] }, { "log_type":
/// "DATA_WRITE" } \] } This enables 'DATA_READ' and 'DATA_WRITE' logging, while
/// exempting jose@example.com from DATA_READ logging.
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

/// This message defines request authentication attributes.
///
/// Terminology is based on the JSON Web Token (JWT) standard, but the terms
/// also correlate to concepts in other standards.
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

/// User-defined authentication requirements, including support for \[JSON Web
/// Token
/// (JWT)\](https://tools.ietf.org/html/draft-ietf-oauth-json-web-token-32).
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

/// A backend rule provides configuration for an individual API element.
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

/// Metadata for the batch operations such as the current state.
///
/// This is included in the `metadata` field of the `Operation` returned by the
/// `GetOperation` call of the `google::longrunning::Operations` service.
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

/// Configuration of a specific billing destination (Currently only support bill
/// against consumer project).
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

/// Used in `policy_type` to specify how `boolean_policy` will behave at this
/// resource.
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

/// Contains information about a browser that can be targeted by ads.
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

/// Identifies a creative which has been associated with a given campaign.
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

/// Describes a change that a user has made to a resource.
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
        if (changeTime != null) 'changeTime': changeTime!.toIso8601String(),
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

/// An notification channel used to watch for resource changes.
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

/// Contains information about a city that can be targeted by ads.
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

/// Click-through URL
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

/// Click Through URL Suffix settings.
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

/// Represents a color in the RGBA color space.
///
/// This representation is designed for simplicity of conversion to/from color
/// representations in various languages over compactness. For example, the
/// fields of this representation can be trivially provided to the constructor
/// of `java.awt.Color` in Java; it can also be trivially provided to UIColor's
/// `+colorWithRed:green:blue:alpha` method in iOS; and, with just a little
/// work, it can be easily formatted into a CSS `rgba()` string in JavaScript.
/// This reference page doesn't carry information about the absolute color space
/// that should be used to interpret the RGB value (e.g. sRGB, Adobe RGB,
/// DCI-P3, BT.2020, etc.). By default, applications should assume the sRGB
/// color space. When color equality needs to be decided, implementations,
/// unless documented otherwise, treat two colors as equal if all their red,
/// green, blue, and alpha values each differ by at most 1e-5. Example (Java):
/// import com.google.type.Color; // ... public static java.awt.Color
/// fromProto(Color protocolor) { float alpha = protocolor.hasAlpha() ?
/// protocolor.getAlpha().getValue() : 1.0; return new java.awt.Color(
/// protocolor.getRed(), protocolor.getGreen(), protocolor.getBlue(), alpha); }
/// public static Color toProto(java.awt.Color color) { float red = (float)
/// color.getRed(); float green = (float) color.getGreen(); float blue = (float)
/// color.getBlue(); float denominator = 255.0; Color.Builder resultBuilder =
/// Color .newBuilder() .setRed(red / denominator) .setGreen(green /
/// denominator) .setBlue(blue / denominator); int alpha = color.getAlpha(); if
/// (alpha != 255) { result.setAlpha( FloatValue .newBuilder()
/// .setValue(((float) alpha) / denominator) .build()); } return
/// resultBuilder.build(); } // ... Example (iOS / Obj-C): // ... static
/// UIColor* fromProto(Color* protocolor) { float red = \[protocolor red\];
/// float green = \[protocolor green\]; float blue = \[protocolor blue\];
/// FloatValue* alpha_wrapper = \[protocolor alpha\]; float alpha = 1.0; if
/// (alpha_wrapper != nil) { alpha = \[alpha_wrapper value\]; } return \[UIColor
/// colorWithRed:red green:green blue:blue alpha:alpha\]; } static Color*
/// toProto(UIColor* color) { CGFloat red, green, blue, alpha; if (!\[color
/// getRed:&red green:&green blue:&blue alpha:&alpha\]) { return nil; } Color*
/// result = \[\[Color alloc\] init\]; \[result setRed:red\]; \[result
/// setGreen:green\]; \[result setBlue:blue\]; if (alpha <= 0.9999) { \[result
/// setAlpha:floatWrapperWithValue(alpha)\]; } \[result autorelease\]; return
/// result; } // ... Example (JavaScript): // ... var protoToCssColor =
/// function(rgb_color) { var redFrac = rgb_color.red || 0.0; var greenFrac =
/// rgb_color.green || 0.0; var blueFrac = rgb_color.blue || 0.0; var red =
/// Math.floor(redFrac * 255); var green = Math.floor(greenFrac * 255); var blue
/// = Math.floor(blueFrac * 255); if (!('alpha' in rgb_color)) { return
/// rgbToCssColor(red, green, blue); } var alphaFrac = rgb_color.alpha.value ||
/// 0.0; var rgbParams = \[red, green, blue\].join(','); return \['rgba(',
/// rgbParams, ',', alphaFrac, ')'\].join(''); }; var rgbToCssColor =
/// function(red, green, blue) { var rgbNumber = new Number((red << 16) | (green
/// << 8) | blue); var hexString = rgbNumber.toString(16); var missingZeros = 6
/// - hexString.length; var resultBuilder = \['#'\]; for (var i = 0; i <
/// missingZeros; i++) { resultBuilder.push('0'); }
/// resultBuilder.push(hexString); return resultBuilder.join(''); }; // ...
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

/// Contains information about an internet connection type that can be targeted
/// by ads.
///
/// Clients can use the connection type to target mobile vs. broadband users.
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

/// Organizes placements according to the contents of their associated webpages.
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

/// A context rule provides information about the context for an individual API
/// element.
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

/// Selects and configures the service controller used by the service.
///
/// The service controller handles features like abuse, quota, billing, logging,
/// monitoring, etc.
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

/// The error code and description for a conversion that failed to insert or
/// update.
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

/// Contains information about a country that can be targeted by ads.
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

/// Metadata pertaining to the Folder creation process.
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

/// A status object which is used as the `metadata` field for the Operation
/// returned by CreateProject.
///
/// It provides insight for when significant phases of Project creation have
/// completed.
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

/// Creative Asset ID.
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

/// Click-through URL
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

/// Creative Field Assignment.
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

/// Contains properties of a creative field value.
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

/// Creative Group Assignment.
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

/// A custom error rule.
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

/// A custom floodlight variable.
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

/// A custom pattern is used for defining custom HTTP verb.
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

/// The attributes, like playtime and percent onscreen, that define the Custom
/// Viewability Metric.
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

/// Represents a whole or partial calendar date, such as a birthday.
///
/// The time of day and time zone are either specified elsewhere or are
/// insignificant. The date is relative to the Gregorian Calendar. This can
/// represent one of the following: * A full date, with non-zero year, month,
/// and day values * A month and day value, with a zero year, such as an
/// anniversary * A year on its own, with zero month and day values * A year and
/// month value, with a zero day, such as a credit card expiration date Related
/// types are google.type.TimeOfDay and `google.protobuf.Timestamp`.
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

/// Represents a date range.
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

/// Day Part Targeting.
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

/// Properties of inheriting and overriding the default click-through event tag.
///
/// A campaign may override the event tag defined at the advertiser level, and
/// an ad may also override the campaign's setting further.
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

/// Detected start or end of a structural component.
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

/// Detected language for a structural component.
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

/// Google Ad Manager Settings
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

/// Represents a dimension.
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

/// Represents a dimension filter.
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

/// Represents a DimensionValue resource.
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

/// A documentation rule provides information about individual API elements.
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

/// Contains properties of a dynamic targeting key.
///
/// Dynamic targeting keys are unique, user-friendly labels, created at the
/// advertiser level in DCM, that can be assigned to ads, creatives, and
/// placements and used for targeting with Studio dynamic creatives. Use these
/// labels instead of numeric Campaign Manager IDs (such as placement IDs) to
/// save time and avoid errors in your dynamic feeds.
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

/// Defines the conditions under which an EgressPolicy matches a request.
///
/// Conditions based on information about the source of the request. Note that
/// if the destination of the request is also protected by a ServicePerimeter,
/// then that ServicePerimeter must have an IngressPolicy which allows access in
/// order for this request to succeed.
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

/// A reusable empty messages.
class $Empty {
  $Empty();

  $Empty.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map json);

  core.Map<core.String, core.dynamic> toJson() => {};
}

/// A description of how user IDs are encrypted.
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

/// `Endpoint` describes a network address of a service that serves a set of
/// APIs.
///
/// It is commonly known as a service endpoint. A service may expose any number
/// of service endpoints, and all service endpoints share the same service
/// definition, such as quota limits and monitoring metrics. Example: type:
/// google.api.Service name: library-example.googleapis.com endpoints: #
/// Declares network address `https://library-example.googleapis.com` # for
/// service `library-example.googleapis.com`. The `https` scheme # is implicit
/// for all service endpoints. Other schemes may be # supported in the future. -
/// name: library-example.googleapis.com allow_cors: false - name:
/// content-staging-library-example.googleapis.com # Allows HTTP OPTIONS calls
/// to be passed to the API frontend, for it # to decide whether the subsequent
/// cross-origin request is allowed # to proceed. allow_cors: true
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

/// Event tag override information.
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

/// Specifies a set of buckets with arbitrary widths.There are size(bounds) + 1
/// (= N) buckets.
///
/// Bucket i has the following boundaries:Upper bound (0 <= i < N-1): boundsi
/// Lower bound (1 <= i < N); boundsi - 1The bounds field must contain at least
/// one element. If bounds has only one element, then there are no finite
/// buckets, and that single element is the common boundary of the overflow and
/// underflow buckets.
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

/// Specifies an exponential sequence of buckets that have a width that is
/// proportional to the value of the lower bound.
///
/// Each bucket represents a constant relative uncertainty on a specific value
/// in the bucket.There are num_finite_buckets + 2 (= N) buckets. Bucket i has
/// the following boundaries:Upper bound (0 <= i < N-1): scale * (growth_factor
/// ^ i). Lower bound (1 <= i < N): scale * (growth_factor ^ (i - 1)).
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

/// Represents a textual expression in the Common Expression Language (CEL)
/// syntax.
///
/// CEL is a C-like expression language. The syntax and semantics of CEL are
/// documented at https://github.com/google/cel-spec. Example (Comparison):
/// title: "Summary size limit" description: "Determines if a summary is less
/// than 100 chars" expression: "document.summary.size() < 100" Example
/// (Equality): title: "Requestor is owner" description: "Determines if
/// requestor is the document owner" expression: "document.owner ==
/// request.auth.claims.email" Example (Logic): title: "Public documents"
/// description: "Determine whether the document should be publicly visible"
/// expression: "document.type != 'private' && document.type != 'internal'"
/// Example (Data Manipulation): title: "Notification string" description:
/// "Create a notification string with a timestamp." expression: "'New message
/// received at ' + string(document.create_time)" The exact variables and
/// functions that may be referenced within an expression are determined by the
/// service that evaluates it. See the service documentation for additional
/// information.
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

/// First party identity principal.
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

/// Flight
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

/// Floodlight Activity GenerateTag Response
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

/// Dynamic Tag
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

/// Message that contains the resource name and display name of a folder
/// resource.
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

/// Metadata describing a long running folder operation
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

/// A classification of the Folder Operation error.
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

/// Frequency Cap.
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

/// FsCommand.
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

/// The Google Cloud Storage location where the output will be written to.
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

/// Specifies the configuration for importing data from Cloud Storage.
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

/// The Google Cloud Storage location where the input will be read from.
class $GcsSource01 {
  /// Google Cloud Storage URI for the input file.
  ///
  /// This must only be a Google Cloud Storage object. Wildcards are not
  /// currently supported.
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

/// Encapsulates settings provided to GetIamPolicy.
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

/// Represents a part of a message possibly annotated with an entity.
///
/// The part can be an entity or purely a part of the message between two
/// entities or message start/end.
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

/// Represents article answer.
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

/// Dialogflow contexts are similar to natural language context.
///
/// If a person says to you "they are orange", you need context in order to
/// understand what "they" is referring to. Similarly, for Dialogflow to handle
/// an end-user expression like that, it needs to be provided with context in
/// order to correctly match an intent. Using contexts, you can control the flow
/// of a conversation. You can configure contexts for an intent by setting input
/// and output contexts, which are identified by string names. When an intent is
/// matched, any configured output contexts for that intent become active. While
/// any contexts are active, Dialogflow is more likely to match intents that are
/// configured with input contexts that correspond to the currently active
/// contexts. For more information about context, see the
/// [Contexts guide](https://cloud.google.com/dialogflow/docs/contexts-overview).
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

/// Contains information about a button.
class $GoogleCloudDialogflowV2IntentMessageCardButton {
  /// The text to send back to the Dialogflow API or a URI to open.
  ///
  /// Optional.
  core.String? postback;

  /// The text to show on the button.
  ///
  /// Optional.
  core.String? text;

  $GoogleCloudDialogflowV2IntentMessageCardButton({
    this.postback,
    this.text,
  });

  $GoogleCloudDialogflowV2IntentMessageCardButton.fromJson(core.Map _json)
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

/// The image response message.
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

/// Metadata in google::longrunning::Operation for Knowledge operations.
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

/// Represents a part of a message possibly annotated with an entity.
///
/// The part can be an entity or purely a part of the message between two
/// entities or message start/end.
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

/// Represents article answer.
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

/// Dialogflow contexts are similar to natural language context.
///
/// If a person says to you "they are orange", you need context in order to
/// understand what "they" is referring to. Similarly, for Dialogflow to handle
/// an end-user expression like that, it needs to be provided with context in
/// order to correctly match an intent. Using contexts, you can control the flow
/// of a conversation. You can configure contexts for an intent by setting input
/// and output contexts, which are identified by string names. When an intent is
/// matched, any configured output contexts for that intent become active. While
/// any contexts are active, Dialogflow is more likely to match intents that are
/// configured with input contexts that correspond to the currently active
/// contexts. For more information about context, see the
/// [Contexts guide](https://cloud.google.com/dialogflow/docs/contexts-overview).
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

/// Contains information about a button.
///
/// Optional.
class $GoogleCloudDialogflowV2beta1IntentMessageCardButton {
  /// The text to send back to the Dialogflow API or a URI to open.
  ///
  /// Optional.
  core.String? postback;

  /// The text to show on the button.
  ///
  /// Optional.
  core.String? text;

  $GoogleCloudDialogflowV2beta1IntentMessageCardButton({
    this.postback,
    this.text,
  });

  $GoogleCloudDialogflowV2beta1IntentMessageCardButton.fromJson(core.Map _json)
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

/// The image response message.
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

/// Rich Business Messaging (RBM) Media displayed in Cards The following
/// media-types are currently supported: Image Types * image/jpeg * image/jpg' *
/// image/gif * image/png Video Types * video/h263 * video/m4v * video/mp4 *
/// video/mpeg * video/mpeg4 * video/webm
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

/// Opens the user's default dialer app with the specified phone number but does
/// not dial automatically.
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

/// Opens the user's default web browser app to the specified uri If the user
/// has an app installed that is registered as the default handler for the URL,
/// then this app will be opened instead, and its icon will be used in the
/// suggested action UI.
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

/// Rich Business Messaging (RBM) suggested reply that the user can click
/// instead of typing in their own response.
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

/// Plays audio from a file in Telephony Gateway.
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

/// Synthesizes speech and plays back the synthesized audio to the caller in
/// Telephony Gateway.
///
/// Telephony Gateway takes the synthesizer settings from
/// `DetectIntentResponse.output_audio_config` which can either be set at
/// request-level or can come from the agent-level synthesizer config.
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

/// Transfers the call in Telephony Gateway.
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

/// An answer from Knowledge Connector.
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

/// Represents a smart reply answer.
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

/// Maintenance schedule which is exposed to customer and potentially end user,
/// indicating published upcoming future maintenance schedule
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

/// Describes provisioned dataplane resources.
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

/// SloEligibility is a tuple containing eligibility value: true if an instance
/// is eligible for SLO calculation or false if it should be excluded from all
/// SLO-related calculations along with a user-defined reason.
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

/// Message that represents an arbitrary HTTP body.
///
/// It should only be used for payload formats that can't be represented as
/// JSON, such as raw binary or an HTML page. This message can be used both in
/// streaming and non-streaming API methods in the request as well as the
/// response. It can be used as a top-level request field, which is convenient
/// if one wants to extract parameters from either the URL or HTTP template into
/// the request fields and also want access to the raw HTTP body. Example:
/// message GetResourceRequest { // A unique request id. string request_id = 1;
/// // The raw HTTP body is bound to this field. google.api.HttpBody http_body =
/// 2; } service ResourceService { rpc GetResource(GetResourceRequest) returns
/// (google.api.HttpBody); rpc UpdateResource(google.api.HttpBody) returns
/// (google.protobuf.Empty); } Example with streaming methods: service
/// CaldavService { rpc GetCalendar(stream google.api.HttpBody) returns (stream
/// google.api.HttpBody); rpc UpdateCalendar(stream google.api.HttpBody) returns
/// (stream google.api.HttpBody); } Use of this type only changes how the
/// request and response bodies are handled, all other features will continue to
/// work unchanged.
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

/// If an image was produced from a file (e.g. a PDF), this message gives
/// information about the source of that image.
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

/// The source that IngressPolicy authorizes access from.
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

/// Specifies a location to extract JWT from an API request.
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

/// A product label represented as a key-value pair.
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

/// Key Value Targeting Expression.
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

/// A description of a label.
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

/// Contains information about a language that can be targeted by ads.
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

/// Modification timestamp.
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

/// An object that represents a latitude/longitude pair.
///
/// This is expressed as a pair of doubles to represent degrees latitude and
/// degrees longitude. Unless specified otherwise, this object must conform to
/// the WGS84 standard. Values must be within normalized ranges.
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

/// A Lien represents an encumbrance on the actions that can be performed on a
/// resource.
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

/// Specifies a linear sequence of buckets that all have the same width (except
/// overflow and underflow).
///
/// Each bucket represents a constant absolute uncertainty on the specific value
/// in the bucket.There are num_finite_buckets + 2 (= N) buckets. Bucket i has
/// the following boundaries:Upper bound (0 <= i < N-1): offset + (width * i).
/// Lower bound (1 <= i < N): offset + (width * (i - 1)).
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

/// Used in `policy_type` to specify how `list_policy` behaves at this resource.
///
/// `ListPolicy` can define specific values and subtrees of Cloud Resource
/// Manager resource hierarchy (`Organizations`, `Folders`, `Projects`) that are
/// allowed or denied by setting the `allowed_values` and `denied_values`
/// fields. This is achieved by using the `under:` and optional `is:` prefixes.
/// The `under:` prefix is used to denote resource subtree values. The `is:`
/// prefix is used to denote specific values, and is required only if the value
/// contains a ":". Values prefixed with "is:" are treated the same as values
/// with no prefix. Ancestry subtrees must be in one of the following formats: -
/// "projects/", e.g. "projects/tokyo-rain-123" - "folders/", e.g.
/// "folders/1234" - "organizations/", e.g. "organizations/1234" The
/// `supports_under` field of the associated `Constraint` defines whether
/// ancestry prefixes can be used. You can set `allowed_values` and
/// `denied_values` in the same `Policy` if `all_values` is
/// `ALL_VALUES_UNSPECIFIED`. `ALLOW` or `DENY` are used to allow or deny all
/// values. If `all_values` is set to either `ALLOW` or `DENY`, `allowed_values`
/// and `denied_values` must be unset.
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

/// Remarketing List Population Rule Term.
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

/// Remarketing List Targeting Expression.
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

/// A resource that represents Google Cloud Platform location.
class $Location {
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

  $Location({
    this.displayName,
    this.labels,
    this.locationId,
    this.metadata,
    this.name,
  });

  $Location.fromJson(core.Map _json)
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

/// A resource that represents Google Cloud Platform location.
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

/// Metadata for the given google.cloud.location.Location.
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

/// Configuration of a specific logging destination (the producer project or the
/// consumer project).
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

/// Lookback configuration settings.
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

/// Media resource.
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

/// An allowed method or permission of a service specified in ApiOperation.
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

/// Represents a metric.
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

/// Additional annotations that can be used to guide the usage of a metric.
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

/// Additional annotations that can be used to guide the usage of a metric.
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

/// Bind API methods to metrics.
///
/// Binding a method to a metric causes that metric's configured quota behaviors
/// to apply to the method call.
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

/// Contains information about a metro region that can be targeted by ads.
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

/// Declares an API Interface to be included in this interface.
///
/// The including interface must redeclare all the methods from the included
/// interface, but documentation and options are inherited as follows: - If
/// after comment and whitespace stripping, the documentation string of the
/// redeclared method is empty, it will be inherited from the original method. -
/// Each annotation belonging to the service config (http, visibility) which is
/// not set in the redeclared method will be inherited. - If an http annotation
/// is inherited, the path pattern will be modified as follows. Any version
/// prefix will be replaced by the version of the including interface plus the
/// root path if specified. Example of a simple mixin: package google.acl.v1;
/// service AccessControl { // Get the underlying ACL object. rpc
/// GetAcl(GetAclRequest) returns (Acl) { option (google.api.http).get =
/// "/v1/{resource=**}:getAcl"; } } package google.storage.v2; service Storage {
/// // rpc GetAcl(GetAclRequest) returns (Acl); // Get a data record. rpc
/// GetData(GetDataRequest) returns (Data) { option (google.api.http).get =
/// "/v2/{resource=**}"; } } Example of a mixin configuration: apis: - name:
/// google.storage.v2.Storage mixins: - name: google.acl.v1.AccessControl The
/// mixin construct implies that all methods in `AccessControl` are also
/// declared with same name and request/response types in `Storage`. A
/// documentation generator or annotation processor will see the effective
/// `Storage.GetAcl` method after inheriting documentation and annotations as
/// follows: service Storage { // Get the underlying ACL object. rpc
/// GetAcl(GetAclRequest) returns (Acl) { option (google.api.http).get =
/// "/v2/{resource=**}:getAcl"; } ... } Note how the version in the path pattern
/// changed from `v1` to `v2`. If the `root` field in the mixin is specified, it
/// should be a relative path under which inherited HTTP paths are placed.
/// Example: apis: - name: google.storage.v2.Storage mixins: - name:
/// google.acl.v1.AccessControl root: acls This implies the following inherited
/// HTTP annotation: service Storage { // Get the underlying ACL object. rpc
/// GetAcl(GetAclRequest) returns (Acl) { option (google.api.http).get =
/// "/v2/acls/{resource=**}:getAcl"; } ... }
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

/// Contains information about a mobile app.
///
/// Used as a landing page deep link.
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

/// Contains information about a mobile carrier that can be targeted by ads.
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

/// Represents an amount of money with its currency type.
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

/// Auxiliary metadata for a MonitoredResource object.
///
/// MonitoredResource objects contain the minimum set of information to uniquely
/// identify a monitored resource instance. There is some other useful auxiliary
/// metadata. Monitoring and Logging use an ingestion pipeline to extract
/// metadata for cloud resources of all types, and store the metadata in this
/// message.
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

/// Configuration of a specific monitoring destination (the producer project or
/// the consumer project).
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

/// Metadata pertaining to the folder move process.
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

/// Next ID: 15
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

/// A vertex represents a 2D point in the image.
///
/// NOTE: the normalized vertex coordinates are relative to the original image
/// and range from 0 to 1.
class $NormalizedVertex {
  /// X coordinate.
  core.double? x;

  /// Y coordinate.
  core.double? y;

  $NormalizedVertex({
    this.x,
    this.y,
  });

  $NormalizedVertex.fromJson(core.Map _json)
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

/// OAuth scopes are a way to define data and permissions on data.
///
/// For example, there are scopes defined for "Read-only access to Google
/// Calendar" and "Access to Cloud Platform". Users can consent to a scope for
/// an application, giving it permission to access that data on their behalf.
/// OAuth scope specifications should be fairly coarse grained; a user will need
/// to see and understand the text description of what your scope means. In most
/// cases: use one or at most two OAuth scopes for an entire family of products.
/// If your product has multiple APIs, you should probably be sharing the OAuth
/// scope across all of those APIs. When you need finer grained OAuth consent
/// screens: talk with your product management about how developers will use
/// them in practice. Please note that even though each of the canonical scopes
/// is enough for a request to be accepted and passed to the backend, a request
/// can still fail due to the backend requiring additional scopes or
/// permissions.
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

/// Prediction for what the object in the bounding box is.
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

/// Object Filter.
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

/// Offset Position.
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

/// Omniture Integration Settings.
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

/// Contains information about an operating system that can be targeted by ads.
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

/// The operation metadata returned for the batchend services operation.
class $OperationMetadata {
  /// The full name of the resources that this operation is directly associated
  /// with.
  core.List<core.String>? resourceNames;

  $OperationMetadata({
    this.resourceNames,
  });

  $OperationMetadata.fromJson(core.Map _json)
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

/// Represents the metadata of the long-running operation.
class $OperationMetadata01 {
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

  $OperationMetadata01({
    this.apiVersion,
    this.createTime,
    this.endTime,
    this.requestedCancellation,
    this.statusMessage,
    this.target,
    this.verb,
  });

  $OperationMetadata01.fromJson(core.Map _json)
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

/// Represents the metadata of the long-running operation.
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

/// Contains metadata for the BatchAnnotateImages operation.
class $OperationMetadata03 {
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

  $OperationMetadata03({
    this.createTime,
    this.state,
    this.updateTime,
  });

  $OperationMetadata03.fromJson(core.Map _json)
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

/// Represents the metadata of a long-running operation.
class $OperationMetadata04 {
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

  $OperationMetadata04({
    this.apiVersion,
    this.cancelRequested,
    this.createTime,
    this.endTime,
    this.statusDetail,
    this.target,
    this.verb,
  });

  $OperationMetadata04.fromJson(core.Map _json)
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

/// A protocol buffer option, which can be attached to a message, field,
/// enumeration, etc.
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

/// Contact of an order.
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

/// A restriction on the OS type and version of devices making requests.
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

/// Operating system information for the VM.
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

/// Information about the current page.
///
/// List operations that supports paging return only one "page" of results. This
/// protocol buffer message describes the page that has been returned.
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

/// A (kind, ID/name) pair used to construct a key path.
///
/// If either name or ID is set, the element is complete. If neither is set, the
/// element is incomplete.
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

/// Represents a PathReportDimensionValue resource.
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

/// This message defines attributes for a node that handles a network request.
///
/// The node can be either a service or an application that sends, forwards, or
/// receives the request. Service peers should fill in `principal` and `labels`
/// as appropriate.
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

/// Contains properties of a placement strategy.
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

/// Contains information about a platform type that can be targeted by ads.
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

/// A 3D position in the image, used primarily for Face detection landmarks.
///
/// A valid Position must have both x and y coordinates. The position
/// coordinates are in the same scale as the original image.
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

/// Represents a postal address, e.g. for postal delivery or payments addresses.
///
/// Given a postal address, a postal service can deliver items to a premise,
/// P.O. Box or similar. It is not intended to model geographical locations
/// (roads, towns, mountains). In typical usage an address would be created via
/// user input or from importing existing data, depending on the type of
/// process. Advice on address input / editing: - Use an i18n-ready address
/// widget such as https://github.com/google/libaddressinput) - Users should not
/// be presented with UI elements for input or editing of fields outside
/// countries where that field is used. For more guidance on how to use this
/// schema, please see: https://support.google.com/business/answer/6397478
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

/// Contains information about a postal code that can be targeted by ads.
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

/// Pricing Period
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

/// A status object which is used as the `metadata` field for the Operation
/// returned by CreateProject.
///
/// It provides insight for when significant phases of Project creation have
/// completed.
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

/// A `Property` consists of a user-supplied name/value pair.
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

/// A message that is published by publishers and consumed by subscribers.
///
/// The message must contain either a non-empty data field or at least one
/// attribute. Note that client libraries represent this object differently
/// depending on the language. See the corresponding
/// [client library documentation](https://cloud.google.com/pubsub/docs/reference/libraries)
/// for more information. See
/// [quotas and limits](https://cloud.google.com/pubsub/quotas) for more
/// information about message limits.
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

/// `QuotaLimit` defines a specific limit that applies over a specified duration
/// for a limit type.
///
/// There can be at most one limit for a duration and limit type combination
/// defined within a `QuotaGroup`.
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

/// Represents a recipient.
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

/// Contains information about a region that can be targeted by ads.
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

/// The relationship attributes which include `type`, `source_resource_type`,
/// `target_resource_type` and `action`.
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

/// Contains properties of a remarketing list's sharing information.
///
/// Sharing allows other accounts or advertisers to target to your remarketing
/// lists. This resource can be used to manage remarketing list sharing to other
/// accounts and advertisers.
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

/// The result of replacing text.
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

/// This message defines core attributes for a resource.
///
/// A resource is an addressable (named) entity provided by the destination
/// service. For example, a file stored on a network storage service.
class $Resource {
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

  $Resource({
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

  $Resource.fromJson(core.Map _json)
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

/// A representation of a Google Cloud resource.
class $Resource01 {
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

  $Resource01({
    this.data,
    this.discoveryDocumentUri,
    this.discoveryName,
    this.location,
    this.parent,
    this.resourceUrl,
    this.version,
  });

  $Resource01.fromJson(core.Map _json)
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

/// Location information about a resource.
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

/// An RGB color.
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

/// A rule associates an asset with a targeting template for asset-level
/// targeting.
///
/// Applicable to INSTREAM_VIDEO creatives.
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

/// Set of features pertaining to the image, computed by computer vision methods
/// over safe-search verticals (for example, adult, spoof, medical, violence).
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

/// User specified security marks that are attached to the parent Security
/// Command Center resource.
///
/// Security marks are scoped within a Security Command Center organization --
/// they can be modified and viewed by all users who have proper permissions on
/// the organization.
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

/// Service identity for a service.
///
/// This is the identity that service producer should use to access consumer
/// resources.
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

/// Site Contact
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

/// Transcode Settings
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

/// Represents the dimensions of ads, placements, creatives, or creative assets.
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

/// Represents a sorted dimension.
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

/// `SourceContext` represents information about the source of a protobuf
/// element, like the file in which it is defined.
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

/// Source information used to create a Service Config
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

/// The context of a span.
///
/// This is attached to an Exemplar in Distribution values during aggregation.
/// It contains the name of a span with format:
/// projects/\[PROJECT_ID_OR_NUMBER\]/traces/\[TRACE_ID\]/spans/\[SPAN_ID\]
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

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
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

/// The Status type defines a logical error model that is suitable for different
/// programming environments, including REST APIs and RPC APIs.
///
/// It is used by gRPC (https://github.com/grpc). Each Status message contains
/// three pieces of data: error code, error message, and error details.You can
/// find out more about this error model and how to work with it in the API
/// Design Guide (https://cloud.google.com/apis/design/errors).
class $Status01 {
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

  $Status01({
    this.code,
    this.details,
    this.message,
  });

  $Status01.fromJson(core.Map _json)
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

/// Contains properties of a Campaign Manager subaccount.
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

/// Define a parameter's name and location.
///
/// The parameter may be passed as either an HTTP header or a URL query
/// parameter, and if both are passed the behavior is implementation-dependent.
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

/// Placement Tag Data
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

/// Tag Settings
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

/// Dynamic and Image Tag Settings.
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

/// Target Window.
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

/// Request message for `TestIamPermissions` method.
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

/// Response message for `TestIamPermissions` method.
class $TestIamPermissionsResponse {
  /// A subset of `TestPermissionsRequest.permissions` that the caller is
  /// allowed.
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

class $TestPermissionsResponse {
  /// A subset of `TestPermissionsRequest.permissions` that the caller is
  /// allowed.
  core.List<core.String>? permissions;

  $TestPermissionsResponse({
    this.permissions,
  });

  $TestPermissionsResponse.fromJson(core.Map _json)
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

/// Third Party Authentication Token
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

/// Third party identity principal.
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

/// Third-party Tracking URL.
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

/// Represents a time of day.
///
/// The date and time zone are either not significant or are specified
/// elsewhere. An API may choose to allow leap seconds. Related types are
/// google.type.Date and `google.protobuf.Timestamp`.
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

/// Represents a time zone from the
/// [IANA Time Zone Database](https://www.iana.org/time-zones).
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

/// Pagination information returned by a List operation when token pagination is
/// enabled.
///
/// List operations that supports paging return only one "page" of results. This
/// protocol buffer message describes the page that has been returned. When
/// using token pagination, clients should use the next/previous token to get
/// another page of the result. The presence or absence of next/previous token
/// indicates whether a next/previous page is available and provides a mean of
/// accessing this page. ListRequest.page_token should be set to either
/// next_page_token or previous_page_token to access another page.
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

/// Transcode Settings
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

/// Represents a string that might be shortened to a specified length.
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

/// A Universal Ad ID as per the VAST 4.0 spec.
///
/// Applicable to the following creative types: INSTREAM_AUDIO, INSTREAM_VIDEO
/// and VPAID.
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

/// Usage configuration rules for the service.
///
/// NOTE: Under development. Use this rule to configure unregistered calls for
/// the service. Unregistered calls are calls that do not contain consumer
/// project identity. (Example: calls that do not contain an API key). By
/// default, API methods do not allow unregistered calls, and each method call
/// must be identified by a consumer project identity. Use this rule to
/// allow/disallow unregistered calls. Example of an API that wants to allow
/// unregistered calls for entire service. usage: rules: - selector: "*"
/// allow_unregistered_calls: true Example of a method that wants to allow
/// unregistered calls. usage: rules: - selector:
/// "google.example.library.v1.LibraryService.CreateBook"
/// allow_unregistered_calls: true
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

/// User Defined Variable configuration.
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

/// A UserProfile resource lets you list all DFA user profiles that are
/// associated with a Google user account.
///
/// The profile_id needs to be specified in other API requests.
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

/// Contains properties of a user role permission.
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

/// Represents a grouping of related user role permissions.
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

/// Information related to the a standard versioned package.
///
/// This includes package info for APT, Yum, Zypper, and Googet package
/// managers.
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

/// A vertex represents a 2D point in the image.
///
/// NOTE: the vertex coordinates are in the same scale as the original image.
class $Vertex {
  /// X coordinate.
  core.int? x;

  /// Y coordinate.
  core.int? y;

  $Vertex({
    this.x,
    this.y,
  });

  $Vertex.fromJson(core.Map _json)
      : this(
          x: _json.containsKey('x') ? _json['x'] as core.int : null,
          y: _json.containsKey('y') ? _json['y'] as core.int : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (x != null) 'x': x!,
        if (y != null) 'y': y!,
      };
}

/// Video Offset
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

/// Specifies how APIs are allowed to communicate within the Service Perimeter.
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

/// Entity deduced from similar images on the Internet.
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

/// Metadata for online images.
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

/// Label to provide extra metadata for the web detection.
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

/// Information related to a Quick Fix Engineering package.
///
/// Fields are taken from Windows QuickFixEngineering Interface and match the
/// source names:
/// https://docs.microsoft.com/en-us/windows/win32/cimwin32prov/win32-quickfixengineering
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

/// Categories specified by the Windows Update.
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

/// Details related to a Zypper Patch.
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
