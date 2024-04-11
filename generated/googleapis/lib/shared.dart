/// Shared types to minimize the package size. Do not use directly.
@core.Deprecated(
  'Avoid importing this library. '
  'Use the members defined in the target API library instead.',
)
library;

// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
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

  /// The scopes of the AccessPolicy.
  ///
  /// Scopes define which resources a policy can restrict and where its
  /// resources can be referenced. For example, policy A with
  /// `scopes=["folders/123"]` has the following behavior: - ServicePerimeter
  /// can only restrict projects within `folders/123`. - ServicePerimeter within
  /// policy A can only reference access levels defined within policy A. - Only
  /// one policy can include a given scope; thus, attempting to create a second
  /// policy which includes `folders/123` will result in an error. If no scopes
  /// are provided, then any resource within the organization can be restricted.
  /// Scopes cannot be modified after a policy is created. Policies can only
  /// have a single scope. Format: list of `folders/{folder_number}` or
  /// `projects/{project_number}`
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

  $AccessPolicy.fromJson(core.Map json_)
      : this(
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          parent: json_.containsKey('parent')
              ? json_['parent'] as core.String
              : null,
          scopes: json_.containsKey('scopes')
              ? (json_['scopes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          title:
              json_.containsKey('title') ? json_['title'] as core.String : null,
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

  $ActionParameter.fromJson(core.Map json_)
      : this(
          key: json_.containsKey('key') ? json_['key'] as core.String : null,
          value:
              json_.containsKey('value') ? json_['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (key != null) 'key': key!,
        if (value != null) 'value': value!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : ActiveViewVideoViewabilityMetricConfig
/// - displayvideo:v3 : ActiveViewVideoViewabilityMetricConfig
class $ActiveViewVideoViewabilityMetricConfig {
  /// The display name of the custom metric.
  ///
  /// Required.
  core.String? displayName;

  /// The minimum visible video duration required (in seconds) in order for an
  /// impression to be recorded.
  ///
  /// You must specify minimum_duration, minimum_quartile or both. If both are
  /// specified, an impression meets the metric criteria if either requirement
  /// is met (whichever happens first).
  /// Possible string values are:
  /// - "VIDEO_DURATION_UNSPECIFIED" : Value is not specified or is unknown in
  /// this version.
  /// - "VIDEO_DURATION_SECONDS_NONE" : No duration value.
  /// - "VIDEO_DURATION_SECONDS_0" : 0 seconds.
  /// - "VIDEO_DURATION_SECONDS_1" : 1 second.
  /// - "VIDEO_DURATION_SECONDS_2" : 2 seconds.
  /// - "VIDEO_DURATION_SECONDS_3" : 3 seconds.
  /// - "VIDEO_DURATION_SECONDS_4" : 4 seconds.
  /// - "VIDEO_DURATION_SECONDS_5" : 5 seconds.
  /// - "VIDEO_DURATION_SECONDS_6" : 6 seconds.
  /// - "VIDEO_DURATION_SECONDS_7" : 7 seconds.
  /// - "VIDEO_DURATION_SECONDS_8" : 8 seconds.
  /// - "VIDEO_DURATION_SECONDS_9" : 9 seconds.
  /// - "VIDEO_DURATION_SECONDS_10" : 10 seconds.
  /// - "VIDEO_DURATION_SECONDS_11" : 11 seconds.
  /// - "VIDEO_DURATION_SECONDS_12" : 12 seconds.
  /// - "VIDEO_DURATION_SECONDS_13" : 13 seconds.
  /// - "VIDEO_DURATION_SECONDS_14" : 14 seconds.
  /// - "VIDEO_DURATION_SECONDS_15" : 15 seconds.
  /// - "VIDEO_DURATION_SECONDS_30" : 30 seconds.
  /// - "VIDEO_DURATION_SECONDS_45" : 45 seconds.
  /// - "VIDEO_DURATION_SECONDS_60" : 60 seconds.
  core.String? minimumDuration;

  /// The minimum visible video duration required, based on the video quartiles,
  /// in order for an impression to be recorded.
  ///
  /// You must specify minimum_duration, minimum_quartile or both. If both are
  /// specified, an impression meets the metric criteria if either requirement
  /// is met (whichever happens first).
  /// Possible string values are:
  /// - "VIDEO_DURATION_QUARTILE_UNSPECIFIED" : Value is not specified or is
  /// unknown in this version.
  /// - "VIDEO_DURATION_QUARTILE_NONE" : No quartile value.
  /// - "VIDEO_DURATION_QUARTILE_FIRST" : First quartile.
  /// - "VIDEO_DURATION_QUARTILE_SECOND" : Second quartile (midpoint).
  /// - "VIDEO_DURATION_QUARTILE_THIRD" : Third quartile.
  /// - "VIDEO_DURATION_QUARTILE_FOURTH" : Fourth quartile (completion).
  core.String? minimumQuartile;

  /// The minimum percentage of the video ad's pixels visible on the screen in
  /// order for an impression to be recorded.
  ///
  /// Required.
  /// Possible string values are:
  /// - "VIEWABILITY_PERCENT_UNSPECIFIED" : Value is not specified or is unknown
  /// in this version.
  /// - "VIEWABILITY_PERCENT_0" : 0% viewable.
  /// - "VIEWABILITY_PERCENT_25" : 25% viewable.
  /// - "VIEWABILITY_PERCENT_50" : 50% viewable.
  /// - "VIEWABILITY_PERCENT_75" : 75% viewable.
  /// - "VIEWABILITY_PERCENT_100" : 100% viewable.
  core.String? minimumViewability;

  /// The minimum percentage of the video ad's volume required in order for an
  /// impression to be recorded.
  ///
  /// Required.
  /// Possible string values are:
  /// - "VIDEO_VOLUME_PERCENT_UNSPECIFIED" : Value is not specified or is
  /// unknown in this version.
  /// - "VIDEO_VOLUME_PERCENT_0" : 0% volume.
  /// - "VIDEO_VOLUME_PERCENT_10" : 10% volume.
  core.String? minimumVolume;

  $ActiveViewVideoViewabilityMetricConfig({
    this.displayName,
    this.minimumDuration,
    this.minimumQuartile,
    this.minimumViewability,
    this.minimumVolume,
  });

  $ActiveViewVideoViewabilityMetricConfig.fromJson(core.Map json_)
      : this(
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          minimumDuration: json_.containsKey('minimumDuration')
              ? json_['minimumDuration'] as core.String
              : null,
          minimumQuartile: json_.containsKey('minimumQuartile')
              ? json_['minimumQuartile'] as core.String
              : null,
          minimumViewability: json_.containsKey('minimumViewability')
              ? json_['minimumViewability'] as core.String
              : null,
          minimumVolume: json_.containsKey('minimumVolume')
              ? json_['minimumVolume'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (minimumDuration != null) 'minimumDuration': minimumDuration!,
        if (minimumQuartile != null) 'minimumQuartile': minimumQuartile!,
        if (minimumViewability != null)
          'minimumViewability': minimumViewability!,
        if (minimumVolume != null) 'minimumVolume': minimumVolume!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : AdUrl
/// - displayvideo:v3 : AdUrl
class $AdUrl {
  /// The type of the Ad URL.
  /// Possible string values are:
  /// - "AD_URL_TYPE_UNSPECIFIED" : Unknown or unspecified.
  /// - "AD_URL_TYPE_BEACON_IMPRESSION" : A 1x1 tracking pixel to ping when an
  /// impression of a creative is delivered.
  /// - "AD_URL_TYPE_BEACON_EXPANDABLE_DCM_IMPRESSION" : Expandable DCM
  /// impression beacon. At serving time, it is expanded to several beacons.
  /// - "AD_URL_TYPE_BEACON_CLICK" : Tracking URL to ping when the click event
  /// is triggered.
  /// - "AD_URL_TYPE_BEACON_SKIP" : Tracking URL to ping when the skip event is
  /// triggered.
  core.String? type;

  /// The URL string value.
  core.String? url;

  $AdUrl({
    this.type,
    this.url,
  });

  $AdUrl.fromJson(core.Map json_)
      : this(
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
          url: json_.containsKey('url') ? json_['url'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (type != null) 'type': type!,
        if (url != null) 'url': url!,
      };
}

/// Used by:
///
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
          addresses: json_.containsKey('addresses')
              ? (json_['addresses'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          avoidBuggyIps: json_.containsKey('avoidBuggyIps')
              ? json_['avoidBuggyIps'] as core.bool
              : null,
          manualAssign: json_.containsKey('manualAssign')
              ? json_['manualAssign'] as core.bool
              : null,
          pool: json_.containsKey('pool') ? json_['pool'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (addresses != null) 'addresses': addresses!,
        if (avoidBuggyIps != null) 'avoidBuggyIps': avoidBuggyIps!,
        if (manualAssign != null) 'manualAssign': manualAssign!,
        if (pool != null) 'pool': pool!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : Adloox
/// - displayvideo:v3 : Adloox
class $Adloox {
  /// Adloox's brand safety settings.
  core.List<core.String>? excludedAdlooxCategories;

  $Adloox({
    this.excludedAdlooxCategories,
  });

  $Adloox.fromJson(core.Map json_)
      : this(
          excludedAdlooxCategories:
              json_.containsKey('excludedAdlooxCategories')
                  ? (json_['excludedAdlooxCategories'] as core.List)
                      .map((value) => value as core.String)
                      .toList()
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (excludedAdlooxCategories != null)
          'excludedAdlooxCategories': excludedAdlooxCategories!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : AdvertiserBillingConfig
/// - displayvideo:v3 : AdvertiserBillingConfig
class $AdvertiserBillingConfig {
  /// The ID of a billing profile assigned to the advertiser.
  ///
  /// Optional.
  core.String? billingProfileId;

  $AdvertiserBillingConfig({
    this.billingProfileId,
  });

  $AdvertiserBillingConfig.fromJson(core.Map json_)
      : this(
          billingProfileId: json_.containsKey('billingProfileId')
              ? json_['billingProfileId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (billingProfileId != null) 'billingProfileId': billingProfileId!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : AdvertiserCreativeConfig
/// - displayvideo:v3 : AdvertiserCreativeConfig
class $AdvertiserCreativeConfig {
  /// Whether or not the advertiser is enabled for dynamic creatives.
  core.bool? dynamicCreativeEnabled;

  /// An ID for configuring campaign monitoring provided by Integral Ad Service
  /// (IAS).
  ///
  /// The DV360 system will append an IAS "Campaign Monitor" tag containing this
  /// ID to the creative tag.
  core.String? iasClientId;

  /// Whether or not to disable Google's About this Ad feature that adds badging
  /// (to identify the content as an ad) and transparency information (on
  /// interaction with About this Ad) to your ads for Online Behavioral
  /// Advertising (OBA) and regulatory requirements.
  ///
  /// About this Ad gives users greater control over the ads they see and helps
  /// you explain why they're seeing your ad. \[Learn
  /// more\](//support.google.com/displayvideo/answer/14315795). If you choose
  /// to set this field to `true`, note that ads served through Display & Video
  /// 360 must comply to the following: * Be Online Behavioral Advertising (OBA)
  /// compliant, as per your contract with Google Marketing Platform. * In the
  /// European Economic Area (EEA), include transparency information and a
  /// mechanism for users to report illegal content in ads. If using an
  /// alternative ad badging, transparency, and reporting solution, you must
  /// ensure it includes the required transparency information and illegal
  /// content flagging mechanism and that you notify Google of any illegal
  /// content reports using the appropriate
  /// \[form\](//support.google.com/legal/troubleshooter/1114905?sjid=6787484030557261960-EU#ts=2981967%2C2982031%2C12980091).
  core.bool? obaComplianceDisabled;

  /// By setting this field to `true`, you, on behalf of your company, authorize
  /// Google to use video creatives associated with this Display & Video 360
  /// advertiser to provide reporting and features related to the advertiser's
  /// television campaigns.
  ///
  /// Applicable only when the advertiser has a CM360 hybrid ad server
  /// configuration.
  core.bool? videoCreativeDataSharingAuthorized;

  $AdvertiserCreativeConfig({
    this.dynamicCreativeEnabled,
    this.iasClientId,
    this.obaComplianceDisabled,
    this.videoCreativeDataSharingAuthorized,
  });

  $AdvertiserCreativeConfig.fromJson(core.Map json_)
      : this(
          dynamicCreativeEnabled: json_.containsKey('dynamicCreativeEnabled')
              ? json_['dynamicCreativeEnabled'] as core.bool
              : null,
          iasClientId: json_.containsKey('iasClientId')
              ? json_['iasClientId'] as core.String
              : null,
          obaComplianceDisabled: json_.containsKey('obaComplianceDisabled')
              ? json_['obaComplianceDisabled'] as core.bool
              : null,
          videoCreativeDataSharingAuthorized:
              json_.containsKey('videoCreativeDataSharingAuthorized')
                  ? json_['videoCreativeDataSharingAuthorized'] as core.bool
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dynamicCreativeEnabled != null)
          'dynamicCreativeEnabled': dynamicCreativeEnabled!,
        if (iasClientId != null) 'iasClientId': iasClientId!,
        if (obaComplianceDisabled != null)
          'obaComplianceDisabled': obaComplianceDisabled!,
        if (videoCreativeDataSharingAuthorized != null)
          'videoCreativeDataSharingAuthorized':
              videoCreativeDataSharingAuthorized!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : AdvertiserGeneralConfig
/// - displayvideo:v3 : AdvertiserGeneralConfig
class $AdvertiserGeneralConfig {
  /// Advertiser's currency in ISO 4217 format.
  ///
  /// Accepted codes and the currencies they represent are: Currency Code :
  /// Currency Name * `ARS` : Argentine Peso * `AUD` : Australian Dollar * `BRL`
  /// : Brazilian Real * `CAD` : Canadian Dollar * `CHF` : Swiss Franc * `CLP` :
  /// Chilean Peso * `CNY` : Chinese Yuan * `COP` : Colombian Peso * `CZK` :
  /// Czech Koruna * `DKK` : Danish Krone * `EGP` : Egyption Pound * `EUR` :
  /// Euro * `GBP` : British Pound * `HKD` : Hong Kong Dollar * `HUF` :
  /// Hungarian Forint * `IDR` : Indonesian Rupiah * `ILS` : Israeli Shekel *
  /// `INR` : Indian Rupee * `JPY` : Japanese Yen * `KRW` : South Korean Won *
  /// `MXN` : Mexican Pesos * `MYR` : Malaysian Ringgit * `NGN` : Nigerian Naira
  /// * `NOK` : Norwegian Krone * `NZD` : New Zealand Dollar * `PEN` : Peruvian
  /// Nuevo Sol * `PLN` : Polish Zloty * `RON` : New Romanian Leu * `RUB` :
  /// Russian Ruble * `SEK` : Swedish Krona * `TRY` : Turkish Lira * `TWD` : New
  /// Taiwan Dollar * `USD` : US Dollar * `ZAR` : South African Rand
  ///
  /// Required. Immutable.
  core.String? currencyCode;

  /// The domain URL of the advertiser's primary website.
  ///
  /// The system will send this information to publishers that require website
  /// URL to associate a campaign with an advertiser. Provide a URL with no path
  /// or query string, beginning with `http:` or `https:`. For example,
  /// http://www.example.com
  ///
  /// Required.
  core.String? domainUrl;

  /// The standard TZ database name of the advertiser's time zone.
  ///
  /// For example, `America/New_York`. See more at:
  /// https://en.wikipedia.org/wiki/List_of_tz_database_time_zones For CM360
  /// hybrid advertisers, the time zone is the same as that of the associated
  /// CM360 account; for third-party only advertisers, the time zone is the same
  /// as that of the parent partner.
  ///
  /// Output only.
  core.String? timeZone;

  $AdvertiserGeneralConfig({
    this.currencyCode,
    this.domainUrl,
    this.timeZone,
  });

  $AdvertiserGeneralConfig.fromJson(core.Map json_)
      : this(
          currencyCode: json_.containsKey('currencyCode')
              ? json_['currencyCode'] as core.String
              : null,
          domainUrl: json_.containsKey('domainUrl')
              ? json_['domainUrl'] as core.String
              : null,
          timeZone: json_.containsKey('timeZone')
              ? json_['timeZone'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (currencyCode != null) 'currencyCode': currencyCode!,
        if (domainUrl != null) 'domainUrl': domainUrl!,
        if (timeZone != null) 'timeZone': timeZone!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : AdvertiserTargetingConfig
/// - displayvideo:v3 : AdvertiserTargetingConfig
class $AdvertiserTargetingConfig {
  /// Whether or not connected TV devices are exempt from viewability targeting
  /// for all video line items under the advertiser.
  core.bool? exemptTvFromViewabilityTargeting;

  $AdvertiserTargetingConfig({
    this.exemptTvFromViewabilityTargeting,
  });

  $AdvertiserTargetingConfig.fromJson(core.Map json_)
      : this(
          exemptTvFromViewabilityTargeting:
              json_.containsKey('exemptTvFromViewabilityTargeting')
                  ? json_['exemptTvFromViewabilityTargeting'] as core.bool
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (exemptTvFromViewabilityTargeting != null)
          'exemptTvFromViewabilityTargeting': exemptTvFromViewabilityTargeting!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : AgeRangeAssignedTargetingOptionDetails
/// - displayvideo:v3 : AgeRangeAssignedTargetingOptionDetails
class $AgeRangeAssignedTargetingOptionDetails {
  /// The age range of an audience.
  ///
  /// We only support targeting a continuous age range of an audience. Thus, the
  /// age range represented in this field can be 1) targeted solely, or, 2) part
  /// of a larger continuous age range. The reach of a continuous age range
  /// targeting can be expanded by also targeting an audience of an unknown age.
  ///
  /// Required.
  /// Possible string values are:
  /// - "AGE_RANGE_UNSPECIFIED" : Default value when age range is not specified
  /// in this version. This enum is a placeholder for default value and does not
  /// represent a real age range option.
  /// - "AGE_RANGE_18_24" : The age range of the audience is 18 to 24.
  /// - "AGE_RANGE_25_34" : The age range of the audience is 25 to 34.
  /// - "AGE_RANGE_35_44" : The age range of the audience is 35 to 44.
  /// - "AGE_RANGE_45_54" : The age range of the audience is 45 to 54.
  /// - "AGE_RANGE_55_64" : The age range of the audience is 55 to 64.
  /// - "AGE_RANGE_65_PLUS" : The age range of the audience is 65 and up.
  /// - "AGE_RANGE_UNKNOWN" : The age range of the audience is unknown.
  /// - "AGE_RANGE_18_20" : The age range of the audience is 18 to 20, only
  /// supported for the AdGroup of YouTube Programmatic Reservation line item.
  /// - "AGE_RANGE_21_24" : The age range of the audience is 21 to 24, only
  /// supported for the AdGroup of YouTube Programmatic Reservation line item.
  /// - "AGE_RANGE_25_29" : The age range of the audience is 25 to 29, only
  /// supported for the AdGroup of YouTube Programmatic Reservation line item.
  /// - "AGE_RANGE_30_34" : The age range of the audience is 30 to 34, only
  /// supported for the AdGroup of YouTube Programmatic Reservation line item.
  /// - "AGE_RANGE_35_39" : The age range of the audience is 35 to 39, only
  /// supported for the AdGroup of YouTube Programmatic Reservation line item.
  /// - "AGE_RANGE_40_44" : The age range of the audience is 40 to 44, only
  /// supported for the AdGroup of YouTube Programmatic Reservation line item.
  /// - "AGE_RANGE_45_49" : The age range of the audience is 45 to 49, only
  /// supported for the AdGroup of YouTube Programmatic Reservation line item.
  /// - "AGE_RANGE_50_54" : The age range of the audience is 50 to 54, only
  /// supported for the AdGroup of YouTube Programmatic Reservation line item.
  /// - "AGE_RANGE_55_59" : The age range of the audience is 55 to 59, only
  /// supported for the AdGroup of YouTube Programmatic Reservation line item.
  /// - "AGE_RANGE_60_64" : The age range of the audience is 60 to 64, only
  /// supported for the AdGroup of YouTube Programmatic Reservation line item.
  core.String? ageRange;

  $AgeRangeAssignedTargetingOptionDetails({
    this.ageRange,
  });

  $AgeRangeAssignedTargetingOptionDetails.fromJson(core.Map json_)
      : this(
          ageRange: json_.containsKey('ageRange')
              ? json_['ageRange'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (ageRange != null) 'ageRange': ageRange!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : AgeRangeTargetingOptionDetails
/// - displayvideo:v3 : AgeRangeTargetingOptionDetails
class $AgeRangeTargetingOptionDetails {
  /// The age range of an audience.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "AGE_RANGE_UNSPECIFIED" : Default value when age range is not specified
  /// in this version. This enum is a placeholder for default value and does not
  /// represent a real age range option.
  /// - "AGE_RANGE_18_24" : The age range of the audience is 18 to 24.
  /// - "AGE_RANGE_25_34" : The age range of the audience is 25 to 34.
  /// - "AGE_RANGE_35_44" : The age range of the audience is 35 to 44.
  /// - "AGE_RANGE_45_54" : The age range of the audience is 45 to 54.
  /// - "AGE_RANGE_55_64" : The age range of the audience is 55 to 64.
  /// - "AGE_RANGE_65_PLUS" : The age range of the audience is 65 and up.
  /// - "AGE_RANGE_UNKNOWN" : The age range of the audience is unknown.
  /// - "AGE_RANGE_18_20" : The age range of the audience is 18 to 20, only
  /// supported for the AdGroup of YouTube Programmatic Reservation line item.
  /// - "AGE_RANGE_21_24" : The age range of the audience is 21 to 24, only
  /// supported for the AdGroup of YouTube Programmatic Reservation line item.
  /// - "AGE_RANGE_25_29" : The age range of the audience is 25 to 29, only
  /// supported for the AdGroup of YouTube Programmatic Reservation line item.
  /// - "AGE_RANGE_30_34" : The age range of the audience is 30 to 34, only
  /// supported for the AdGroup of YouTube Programmatic Reservation line item.
  /// - "AGE_RANGE_35_39" : The age range of the audience is 35 to 39, only
  /// supported for the AdGroup of YouTube Programmatic Reservation line item.
  /// - "AGE_RANGE_40_44" : The age range of the audience is 40 to 44, only
  /// supported for the AdGroup of YouTube Programmatic Reservation line item.
  /// - "AGE_RANGE_45_49" : The age range of the audience is 45 to 49, only
  /// supported for the AdGroup of YouTube Programmatic Reservation line item.
  /// - "AGE_RANGE_50_54" : The age range of the audience is 50 to 54, only
  /// supported for the AdGroup of YouTube Programmatic Reservation line item.
  /// - "AGE_RANGE_55_59" : The age range of the audience is 55 to 59, only
  /// supported for the AdGroup of YouTube Programmatic Reservation line item.
  /// - "AGE_RANGE_60_64" : The age range of the audience is 60 to 64, only
  /// supported for the AdGroup of YouTube Programmatic Reservation line item.
  core.String? ageRange;

  $AgeRangeTargetingOptionDetails({
    this.ageRange,
  });

  $AgeRangeTargetingOptionDetails.fromJson(core.Map json_)
      : this(
          ageRange: json_.containsKey('ageRange')
              ? json_['ageRange'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (ageRange != null) 'ageRange': ageRange!,
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

  $AliasContext.fromJson(core.Map json_)
      : this(
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (name != null) 'name': name!,
      };
}

/// Used by:
///
/// - containeranalysis:v1 : AnalysisCompleted
/// - ondemandscanning:v1 : AnalysisCompleted
class $AnalysisCompleted {
  core.List<core.String>? analysisType;

  $AnalysisCompleted({
    this.analysisType,
  });

  $AnalysisCompleted.fromJson(core.Map json_)
      : this(
          analysisType: json_.containsKey('analysisType')
              ? (json_['analysisType'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (analysisType != null) 'analysisType': analysisType!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : AppAssignedTargetingOptionDetails
/// - displayvideo:v3 : AppAssignedTargetingOptionDetails
class $AppAssignedTargetingOptionDetails {
  /// The ID of the app.
  ///
  /// Android's Play store app uses bundle ID, for example
  /// `com.google.android.gm`. Apple's App store app ID uses 9 digit string, for
  /// example `422689480`.
  ///
  /// Required.
  core.String? appId;

  /// Indicates the platform of the targeted app.
  ///
  /// If this field is not specified, the app platform will be assumed to be
  /// mobile (i.e., Android or iOS), and we will derive the appropriate mobile
  /// platform from the app ID.
  /// Possible string values are:
  /// - "APP_PLATFORM_UNSPECIFIED" : Default value when app platform is not
  /// specified in this version. This enum is a placeholder for default value
  /// and does not represent a real platform option.
  /// - "APP_PLATFORM_IOS" : The app platform is iOS.
  /// - "APP_PLATFORM_ANDROID" : The app platform is Android.
  /// - "APP_PLATFORM_ROKU" : The app platform is Roku.
  /// - "APP_PLATFORM_AMAZON_FIRETV" : The app platform is Amazon FireTV.
  /// - "APP_PLATFORM_PLAYSTATION" : The app platform is Playstation.
  /// - "APP_PLATFORM_APPLE_TV" : The app platform is Apple TV.
  /// - "APP_PLATFORM_XBOX" : The app platform is Xbox.
  /// - "APP_PLATFORM_SAMSUNG_TV" : The app platform is Samsung TV.
  /// - "APP_PLATFORM_ANDROID_TV" : The app platform is Android TV.
  /// - "APP_PLATFORM_GENERIC_CTV" : The app platform is a CTV platform that is
  /// not explicitly listed elsewhere.
  /// - "APP_PLATFORM_LG_TV" : The app platform is LG TV.
  /// - "APP_PLATFORM_VIZIO_TV" : The app platform is VIZIO TV.
  core.String? appPlatform;

  /// The display name of the app.
  ///
  /// Output only.
  core.String? displayName;

  /// Indicates if this option is being negatively targeted.
  core.bool? negative;

  $AppAssignedTargetingOptionDetails({
    this.appId,
    this.appPlatform,
    this.displayName,
    this.negative,
  });

  $AppAssignedTargetingOptionDetails.fromJson(core.Map json_)
      : this(
          appId:
              json_.containsKey('appId') ? json_['appId'] as core.String : null,
          appPlatform: json_.containsKey('appPlatform')
              ? json_['appPlatform'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          negative: json_.containsKey('negative')
              ? json_['negative'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (appId != null) 'appId': appId!,
        if (appPlatform != null) 'appPlatform': appPlatform!,
        if (displayName != null) 'displayName': displayName!,
        if (negative != null) 'negative': negative!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : AppCategoryAssignedTargetingOptionDetails
/// - displayvideo:v3 : AppCategoryAssignedTargetingOptionDetails
class $AppCategoryAssignedTargetingOptionDetails {
  /// The display name of the app category.
  ///
  /// Output only.
  core.String? displayName;

  /// Indicates if this option is being negatively targeted.
  core.bool? negative;

  /// The targeting_option_id field when targeting_type is
  /// `TARGETING_TYPE_APP_CATEGORY`.
  ///
  /// Required.
  core.String? targetingOptionId;

  $AppCategoryAssignedTargetingOptionDetails({
    this.displayName,
    this.negative,
    this.targetingOptionId,
  });

  $AppCategoryAssignedTargetingOptionDetails.fromJson(core.Map json_)
      : this(
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          negative: json_.containsKey('negative')
              ? json_['negative'] as core.bool
              : null,
          targetingOptionId: json_.containsKey('targetingOptionId')
              ? json_['targetingOptionId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (negative != null) 'negative': negative!,
        if (targetingOptionId != null) 'targetingOptionId': targetingOptionId!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : AppCategoryTargetingOptionDetails
/// - displayvideo:v3 : AppCategoryTargetingOptionDetails
class $AppCategoryTargetingOptionDetails {
  /// The name of the app collection.
  ///
  /// Output only.
  core.String? displayName;

  $AppCategoryTargetingOptionDetails({
    this.displayName,
  });

  $AppCategoryTargetingOptionDetails.fromJson(core.Map json_)
      : this(
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
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

  $Artifact.fromJson(core.Map json_)
      : this(
          checksum: json_.containsKey('checksum')
              ? json_['checksum'] as core.String
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          names: json_.containsKey('names')
              ? (json_['names'] as core.List)
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

  $ArtifactsGcsSource.fromJson(core.Map json_)
      : this(
          uris: json_.containsKey('uris')
              ? (json_['uris'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          useWildcards: json_.containsKey('useWildcards')
              ? json_['useWildcards'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (uris != null) 'uris': uris!,
        if (useWildcards != null) 'useWildcards': useWildcards!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : Asset
/// - displayvideo:v3 : Asset
class $Asset {
  /// The asset content.
  ///
  /// For uploaded assets, the content is the serving path.
  core.String? content;

  /// Media ID of the uploaded asset.
  ///
  /// This is a unique identifier for the asset. This ID can be passed to other
  /// API calls, e.g. CreateCreative to associate the asset with a creative. The
  /// Media ID space updated on **April 5, 2023**. Update media IDs cached
  /// before **April 5, 2023** by retrieving the new media ID from associated
  /// creative resources or re-uploading the asset.
  core.String? mediaId;

  $Asset({
    this.content,
    this.mediaId,
  });

  $Asset.fromJson(core.Map json_)
      : this(
          content: json_.containsKey('content')
              ? json_['content'] as core.String
              : null,
          mediaId: json_.containsKey('mediaId')
              ? json_['mediaId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (content != null) 'content': content!,
        if (mediaId != null) 'mediaId': mediaId!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : AssignedInventorySource
/// - displayvideo:v3 : AssignedInventorySource
class $AssignedInventorySource {
  /// The unique ID of the assigned inventory source.
  ///
  /// The ID is only unique within a given inventory source group. It may be
  /// reused in other contexts.
  ///
  /// Output only.
  core.String? assignedInventorySourceId;

  /// The ID of the inventory source entity being targeted.
  ///
  /// Required.
  core.String? inventorySourceId;

  /// The resource name of the assigned inventory source.
  ///
  /// Output only.
  core.String? name;

  $AssignedInventorySource({
    this.assignedInventorySourceId,
    this.inventorySourceId,
    this.name,
  });

  $AssignedInventorySource.fromJson(core.Map json_)
      : this(
          assignedInventorySourceId:
              json_.containsKey('assignedInventorySourceId')
                  ? json_['assignedInventorySourceId'] as core.String
                  : null,
          inventorySourceId: json_.containsKey('inventorySourceId')
              ? json_['inventorySourceId'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (assignedInventorySourceId != null)
          'assignedInventorySourceId': assignedInventorySourceId!,
        if (inventorySourceId != null) 'inventorySourceId': inventorySourceId!,
        if (name != null) 'name': name!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : AssignedLocation
/// - displayvideo:v3 : AssignedLocation
class $AssignedLocation {
  /// The unique ID of the assigned location.
  ///
  /// The ID is only unique within a location list. It may be reused in other
  /// contexts.
  ///
  /// Output only.
  core.String? assignedLocationId;

  /// The resource name of the assigned location.
  ///
  /// Output only.
  core.String? name;

  /// The ID of the targeting option assigned to the location list.
  ///
  /// Required.
  core.String? targetingOptionId;

  $AssignedLocation({
    this.assignedLocationId,
    this.name,
    this.targetingOptionId,
  });

  $AssignedLocation.fromJson(core.Map json_)
      : this(
          assignedLocationId: json_.containsKey('assignedLocationId')
              ? json_['assignedLocationId'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          targetingOptionId: json_.containsKey('targetingOptionId')
              ? json_['targetingOptionId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (assignedLocationId != null)
          'assignedLocationId': assignedLocationId!,
        if (name != null) 'name': name!,
        if (targetingOptionId != null) 'targetingOptionId': targetingOptionId!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : AssignedUserRole
/// - displayvideo:v3 : AssignedUserRole
class $AssignedUserRole {
  /// The ID of the advertiser that the assigend user role applies to.
  core.String? advertiserId;

  /// The ID of the assigned user role.
  ///
  /// Output only.
  core.String? assignedUserRoleId;

  /// The ID of the partner that the assigned user role applies to.
  core.String? partnerId;

  /// The user role to assign to a user for the entity.
  ///
  /// Required.
  /// Possible string values are:
  /// - "USER_ROLE_UNSPECIFIED" : Default value when the user role is not
  /// specified or is unknown in this version.
  /// - "ADMIN" : The user can manage campaigns, creatives, insertion orders,
  /// line items, and reports for the entity. They can view and edit billing
  /// information, create or modify users, and enable or disable exchanges. This
  /// role can only be assigned for a partner entity.
  /// - "ADMIN_PARTNER_CLIENT" : The user can manage campaigns, creatives,
  /// insertion orders, line items, and reports for the entity. They can create
  /// and modify other `ADMIN_PARTNER_CLIENT` users and view billing
  /// information. They cannot view revenue models, markups, or any other
  /// reseller-sensitive fields. This role can only be assigned for a partner
  /// entity.
  /// - "STANDARD" : The user can manage campaigns, creatives, insertion orders,
  /// line items, and reports for the entity. They cannot create and modify
  /// users or view billing information.
  /// - "STANDARD_PLANNER" : The user can view all campaigns, creatives,
  /// insertion orders, line items, and reports for the entity, including all
  /// cost data. They can create and modify planning-related features, including
  /// plans and inventory.
  /// - "STANDARD_PLANNER_LIMITED" : The user can view all campaigns, creatives,
  /// insertion orders, line items, and reports for the entity. They can create
  /// or modify planning-related features, including plans and inventory. They
  /// have no access to cost data and cannot start, accept, or negotiate deals.
  /// - "STANDARD_PARTNER_CLIENT" : The user can manage campaigns, creatives,
  /// insertion orders, line items, and reports for the entity. They cannot
  /// create or modify other users or view billing information. They cannot view
  /// revenue models, markups, or any other reseller-sensitive fields. This role
  /// can only be assigned for an advertiser entity.
  /// - "READ_ONLY" : The user can only build reports and view data for the
  /// entity.
  /// - "REPORTING_ONLY" : The user can only create and manage reports.
  /// - "LIMITED_REPORTING_ONLY" : The user can only create and manage the
  /// following client-safe reports: General, Audience Performance,
  /// Cross-Partner, Keyword, Order ID, Category, and Third-Party Data Provider.
  /// - "CREATIVE" : The user can view media plan information they need to
  /// collaborate, but can't view cost-related data or Marketplace.
  /// - "CREATIVE_ADMIN" : The user can view media plan information they need to
  /// collaborate, but can't view cost-related data or Marketplace. In addition,
  /// they can add other creative admins or creative users to the entity.
  core.String? userRole;

  $AssignedUserRole({
    this.advertiserId,
    this.assignedUserRoleId,
    this.partnerId,
    this.userRole,
  });

  $AssignedUserRole.fromJson(core.Map json_)
      : this(
          advertiserId: json_.containsKey('advertiserId')
              ? json_['advertiserId'] as core.String
              : null,
          assignedUserRoleId: json_.containsKey('assignedUserRoleId')
              ? json_['assignedUserRoleId'] as core.String
              : null,
          partnerId: json_.containsKey('partnerId')
              ? json_['partnerId'] as core.String
              : null,
          userRole: json_.containsKey('userRole')
              ? json_['userRole'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (advertiserId != null) 'advertiserId': advertiserId!,
        if (assignedUserRoleId != null)
          'assignedUserRoleId': assignedUserRoleId!,
        if (partnerId != null) 'partnerId': partnerId!,
        if (userRole != null) 'userRole': userRole!,
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

  $Attribution.fromJson(core.Map json_)
      : this(
          numIntegralSteps: json_.containsKey('numIntegralSteps')
              ? json_['numIntegralSteps'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (numIntegralSteps != null) 'numIntegralSteps': numIntegralSteps!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : AudioContentTypeAssignedTargetingOptionDetails
/// - displayvideo:v3 : AudioContentTypeAssignedTargetingOptionDetails
class $AudioContentTypeAssignedTargetingOptionDetails {
  /// The audio content type.
  ///
  /// Required.
  /// Possible string values are:
  /// - "AUDIO_CONTENT_TYPE_UNSPECIFIED" : Audio content type is not specified
  /// in this version. This enum is a place holder for a default value and does
  /// not represent a real content stream type.
  /// - "AUDIO_CONTENT_TYPE_UNKNOWN" : The audio content type is unknown.
  /// - "AUDIO_CONTENT_TYPE_MUSIC" : The audio content type is music.
  /// - "AUDIO_CONTENT_TYPE_BROADCAST" : The audio content type is broadcast.
  /// - "AUDIO_CONTENT_TYPE_PODCAST" : The audio content type is podcast.
  core.String? audioContentType;

  $AudioContentTypeAssignedTargetingOptionDetails({
    this.audioContentType,
  });

  $AudioContentTypeAssignedTargetingOptionDetails.fromJson(core.Map json_)
      : this(
          audioContentType: json_.containsKey('audioContentType')
              ? json_['audioContentType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (audioContentType != null) 'audioContentType': audioContentType!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : AudioContentTypeTargetingOptionDetails
/// - displayvideo:v3 : AudioContentTypeTargetingOptionDetails
class $AudioContentTypeTargetingOptionDetails {
  /// The audio content type.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "AUDIO_CONTENT_TYPE_UNSPECIFIED" : Audio content type is not specified
  /// in this version. This enum is a place holder for a default value and does
  /// not represent a real content stream type.
  /// - "AUDIO_CONTENT_TYPE_UNKNOWN" : The audio content type is unknown.
  /// - "AUDIO_CONTENT_TYPE_MUSIC" : The audio content type is music.
  /// - "AUDIO_CONTENT_TYPE_BROADCAST" : The audio content type is broadcast.
  /// - "AUDIO_CONTENT_TYPE_PODCAST" : The audio content type is podcast.
  core.String? audioContentType;

  $AudioContentTypeTargetingOptionDetails({
    this.audioContentType,
  });

  $AudioContentTypeTargetingOptionDetails.fromJson(core.Map json_)
      : this(
          audioContentType: json_.containsKey('audioContentType')
              ? json_['audioContentType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (audioContentType != null) 'audioContentType': audioContentType!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : AudioVideoOffset
/// - displayvideo:v3 : AudioVideoOffset
class $AudioVideoOffset {
  /// The offset in percentage of the audio or video duration.
  core.String? percentage;

  /// The offset in seconds from the start of the audio or video.
  core.String? seconds;

  $AudioVideoOffset({
    this.percentage,
    this.seconds,
  });

  $AudioVideoOffset.fromJson(core.Map json_)
      : this(
          percentage: json_.containsKey('percentage')
              ? json_['percentage'] as core.String
              : null,
          seconds: json_.containsKey('seconds')
              ? json_['seconds'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (percentage != null) 'percentage': percentage!,
        if (seconds != null) 'seconds': seconds!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : AuditAdvertiserResponse
/// - displayvideo:v3 : AuditAdvertiserResponse
class $AuditAdvertiserResponse {
  /// The number of individual targeting options from the following targeting
  /// types that are assigned to a line item under this advertiser.
  ///
  /// These individual targeting options count towards the limit of 4500000 ad
  /// group targeting options per advertiser. Qualifying Targeting types: *
  /// Channels, URLs, apps, and collections * Demographic * Google Audiences,
  /// including Affinity, Custom Affinity, and In-market audiences * Inventory
  /// source * Keyword * Mobile app category * User lists * Video targeting *
  /// Viewability
  core.String? adGroupCriteriaCount;

  /// The number of individual targeting options from the following targeting
  /// types that are assigned to a line item under this advertiser.
  ///
  /// These individual targeting options count towards the limit of 900000
  /// campaign targeting options per advertiser. Qualifying Targeting types: *
  /// Position * Browser * Connection speed * Day and time * Device and
  /// operating system * Digital content label * Sensitive categories *
  /// Environment * Geography, including business chains and proximity * ISP *
  /// Language * Third-party verification
  core.String? campaignCriteriaCount;

  /// The number of channels created under this advertiser.
  ///
  /// These channels count towards the limit of 1000 channels per advertiser.
  core.String? channelsCount;

  /// The number of negative keyword lists created under this advertiser.
  ///
  /// These negative keyword lists count towards the limit of 20 negative
  /// keyword lists per advertiser.
  core.String? negativeKeywordListsCount;

  /// The number of negatively targeted channels created under this advertiser.
  ///
  /// These negatively targeted channels count towards the limit of 5 negatively
  /// targeted channels per advertiser.
  core.String? negativelyTargetedChannelsCount;

  /// The number of ACTIVE and PAUSED campaigns under this advertiser.
  ///
  /// These campaigns count towards the limit of 9999 campaigns per advertiser.
  core.String? usedCampaignsCount;

  /// The number of ACTIVE, PAUSED and DRAFT insertion orders under this
  /// advertiser.
  ///
  /// These insertion orders count towards the limit of 9999 insertion orders
  /// per advertiser.
  core.String? usedInsertionOrdersCount;

  /// The number of ACTIVE, PAUSED, and DRAFT line items under this advertiser.
  ///
  /// These line items count towards the limit of 9999 line items per
  /// advertiser.
  core.String? usedLineItemsCount;

  $AuditAdvertiserResponse({
    this.adGroupCriteriaCount,
    this.campaignCriteriaCount,
    this.channelsCount,
    this.negativeKeywordListsCount,
    this.negativelyTargetedChannelsCount,
    this.usedCampaignsCount,
    this.usedInsertionOrdersCount,
    this.usedLineItemsCount,
  });

  $AuditAdvertiserResponse.fromJson(core.Map json_)
      : this(
          adGroupCriteriaCount: json_.containsKey('adGroupCriteriaCount')
              ? json_['adGroupCriteriaCount'] as core.String
              : null,
          campaignCriteriaCount: json_.containsKey('campaignCriteriaCount')
              ? json_['campaignCriteriaCount'] as core.String
              : null,
          channelsCount: json_.containsKey('channelsCount')
              ? json_['channelsCount'] as core.String
              : null,
          negativeKeywordListsCount:
              json_.containsKey('negativeKeywordListsCount')
                  ? json_['negativeKeywordListsCount'] as core.String
                  : null,
          negativelyTargetedChannelsCount:
              json_.containsKey('negativelyTargetedChannelsCount')
                  ? json_['negativelyTargetedChannelsCount'] as core.String
                  : null,
          usedCampaignsCount: json_.containsKey('usedCampaignsCount')
              ? json_['usedCampaignsCount'] as core.String
              : null,
          usedInsertionOrdersCount:
              json_.containsKey('usedInsertionOrdersCount')
                  ? json_['usedInsertionOrdersCount'] as core.String
                  : null,
          usedLineItemsCount: json_.containsKey('usedLineItemsCount')
              ? json_['usedLineItemsCount'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (adGroupCriteriaCount != null)
          'adGroupCriteriaCount': adGroupCriteriaCount!,
        if (campaignCriteriaCount != null)
          'campaignCriteriaCount': campaignCriteriaCount!,
        if (channelsCount != null) 'channelsCount': channelsCount!,
        if (negativeKeywordListsCount != null)
          'negativeKeywordListsCount': negativeKeywordListsCount!,
        if (negativelyTargetedChannelsCount != null)
          'negativelyTargetedChannelsCount': negativelyTargetedChannelsCount!,
        if (usedCampaignsCount != null)
          'usedCampaignsCount': usedCampaignsCount!,
        if (usedInsertionOrdersCount != null)
          'usedInsertionOrdersCount': usedInsertionOrdersCount!,
        if (usedLineItemsCount != null)
          'usedLineItemsCount': usedLineItemsCount!,
      };
}

/// Used by:
///
/// - accesscontextmanager:v1 : AuditLogConfig
/// - analyticshub:v1 : AuditLogConfig
/// - apigateway:v1 : ApigatewayAuditLogConfig
/// - apigee:v1 : GoogleIamV1AuditLogConfig
/// - apphub:v1 : AuditLogConfig
/// - backupdr:v1 : AuditLogConfig
/// - beyondcorp:v1 : GoogleIamV1AuditLogConfig
/// - bigquery:v2 : AuditLogConfig
/// - bigqueryconnection:v1 : AuditLogConfig
/// - bigquerydatapolicy:v1 : AuditLogConfig
/// - bigtableadmin:v2 : AuditLogConfig
/// - cloudasset:v1 : AuditLogConfig
/// - cloudbilling:v1 : AuditLogConfig
/// - cloudbuild:v2 : AuditLogConfig
/// - clouddeploy:v1 : AuditLogConfig
/// - cloudfunctions:v1 : AuditLogConfig
/// - cloudfunctions:v2 : AuditLogConfig
/// - cloudkms:v1 : AuditLogConfig
/// - cloudresourcemanager:v1 : AuditLogConfig
/// - cloudresourcemanager:v2 : AuditLogConfig
/// - cloudresourcemanager:v3 : AuditLogConfig
/// - connectors:v1 : AuditLogConfig
/// - contentwarehouse:v1 : GoogleIamV1AuditLogConfig
/// - datafusion:v1 : AuditLogConfig
/// - datamigration:v1 : AuditLogConfig
/// - dataplex:v1 : GoogleIamV1AuditLogConfig
/// - deploymentmanager:v2 : AuditLogConfig
/// - dns:v1 : GoogleIamV1AuditLogConfig
/// - domains:v1 : AuditLogConfig
/// - eventarc:v1 : AuditLogConfig
/// - gkebackup:v1 : AuditLogConfig
/// - gkehub:v1 : AuditLogConfig
/// - healthcare:v1 : AuditLogConfig
/// - iam:v1 : AuditLogConfig
/// - identitytoolkit:v2 : GoogleIamV1AuditLogConfig
/// - ids:v1 : AuditLogConfig
/// - looker:v1 : AuditLogConfig
/// - metastore:v1 : AuditLogConfig
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

  $AuditLogConfig({
    this.exemptedMembers,
    this.logType,
  });

  $AuditLogConfig.fromJson(core.Map json_)
      : this(
          exemptedMembers: json_.containsKey('exemptedMembers')
              ? (json_['exemptedMembers'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          logType: json_.containsKey('logType')
              ? json_['logType'] as core.String
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

  $AuthRequirement.fromJson(core.Map json_)
      : this(
          audiences: json_.containsKey('audiences')
              ? json_['audiences'] as core.String
              : null,
          providerId: json_.containsKey('providerId')
              ? json_['providerId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (audiences != null) 'audiences': audiences!,
        if (providerId != null) 'providerId': providerId!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : AuthorizedSellerStatusAssignedTargetingOptionDetails
/// - displayvideo:v3 : AuthorizedSellerStatusAssignedTargetingOptionDetails
class $AuthorizedSellerStatusAssignedTargetingOptionDetails {
  /// The authorized seller status to target.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "AUTHORIZED_SELLER_STATUS_UNSPECIFIED" : Default value when authorized
  /// seller status is not specified in this version. This enum is a placeholder
  /// for the default value, or "Authorized Direct Sellers and Resellers" in the
  /// UI.
  /// - "AUTHORIZED_SELLER_STATUS_AUTHORIZED_DIRECT_SELLERS_ONLY" : Only
  /// authorized sellers that directly own the inventory being monetized, as
  /// indicated by a DIRECT declaration in the ads.txt file. This value is
  /// equivalent to "Authorized Direct Sellers" in the UI.
  /// - "AUTHORIZED_SELLER_STATUS_AUTHORIZED_AND_NON_PARTICIPATING_PUBLISHERS" :
  /// All authorized sellers, including publishers that have not posted an
  /// ads.txt file. Display & Video 360 automatically disallows unauthorized
  /// sellers. This value is equivalent to "Authorized and Non-Participating
  /// Publishers" in the UI.
  core.String? authorizedSellerStatus;

  /// The targeting_option_id of a TargetingOption of type
  /// `TARGETING_TYPE_AUTHORIZED_SELLER_STATUS`.
  ///
  /// Required.
  core.String? targetingOptionId;

  $AuthorizedSellerStatusAssignedTargetingOptionDetails({
    this.authorizedSellerStatus,
    this.targetingOptionId,
  });

  $AuthorizedSellerStatusAssignedTargetingOptionDetails.fromJson(core.Map json_)
      : this(
          authorizedSellerStatus: json_.containsKey('authorizedSellerStatus')
              ? json_['authorizedSellerStatus'] as core.String
              : null,
          targetingOptionId: json_.containsKey('targetingOptionId')
              ? json_['targetingOptionId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (authorizedSellerStatus != null)
          'authorizedSellerStatus': authorizedSellerStatus!,
        if (targetingOptionId != null) 'targetingOptionId': targetingOptionId!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : AuthorizedSellerStatusTargetingOptionDetails
/// - displayvideo:v3 : AuthorizedSellerStatusTargetingOptionDetails
class $AuthorizedSellerStatusTargetingOptionDetails {
  /// The authorized seller status.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "AUTHORIZED_SELLER_STATUS_UNSPECIFIED" : Default value when authorized
  /// seller status is not specified in this version. This enum is a placeholder
  /// for the default value, or "Authorized Direct Sellers and Resellers" in the
  /// UI.
  /// - "AUTHORIZED_SELLER_STATUS_AUTHORIZED_DIRECT_SELLERS_ONLY" : Only
  /// authorized sellers that directly own the inventory being monetized, as
  /// indicated by a DIRECT declaration in the ads.txt file. This value is
  /// equivalent to "Authorized Direct Sellers" in the UI.
  /// - "AUTHORIZED_SELLER_STATUS_AUTHORIZED_AND_NON_PARTICIPATING_PUBLISHERS" :
  /// All authorized sellers, including publishers that have not posted an
  /// ads.txt file. Display & Video 360 automatically disallows unauthorized
  /// sellers. This value is equivalent to "Authorized and Non-Participating
  /// Publishers" in the UI.
  core.String? authorizedSellerStatus;

  $AuthorizedSellerStatusTargetingOptionDetails({
    this.authorizedSellerStatus,
  });

  $AuthorizedSellerStatusTargetingOptionDetails.fromJson(core.Map json_)
      : this(
          authorizedSellerStatus: json_.containsKey('authorizedSellerStatus')
              ? json_['authorizedSellerStatus'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (authorizedSellerStatus != null)
          'authorizedSellerStatus': authorizedSellerStatus!,
      };
}

/// Used by:
///
/// - identitytoolkit:v1 : GoogleCloudIdentitytoolkitV1AutoRetrievalInfo
/// - identitytoolkit:v2 : GoogleCloudIdentitytoolkitV2AutoRetrievalInfo
class $AutoRetrievalInfo {
  /// The Android app's signature hash for Google Play Service's SMS Retriever
  /// API.
  core.String? appSignatureHash;

  $AutoRetrievalInfo({
    this.appSignatureHash,
  });

  $AutoRetrievalInfo.fromJson(core.Map json_)
      : this(
          appSignatureHash: json_.containsKey('appSignatureHash')
              ? json_['appSignatureHash'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (appSignatureHash != null) 'appSignatureHash': appSignatureHash!,
      };
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

  /// Read handle passed from Bigstore -\> Scotty for a GCS download.
  ///
  /// This is a signed, serialized blobstore2.ReadHandle proto which must never
  /// be set outside of Bigstore, and is not applicable to non-GCS media
  /// downloads.
  core.String? downloadReadHandle;
  core.List<core.int> get downloadReadHandleAsBytes =>
      convert.base64.decode(downloadReadHandle!);

  set downloadReadHandleAsBytes(core.List<core.int> bytes_) {
    downloadReadHandle =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// The blob read token.
  ///
  /// Needed to read blobs that have not been replicated. Might not be available
  /// until the final call.
  core.String? readToken;

  /// Metadata passed from Blobstore -\> Scotty for a new GCS upload.
  ///
  /// This is a signed, serialized blobstore2.BlobMetadataContainer proto which
  /// must never be consumed outside of Bigstore, and is not applicable to
  /// non-GCS media uploads.
  core.String? uploadMetadataContainer;
  core.List<core.int> get uploadMetadataContainerAsBytes =>
      convert.base64.decode(uploadMetadataContainer!);

  set uploadMetadataContainerAsBytes(core.List<core.int> bytes_) {
    uploadMetadataContainer =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  $Blobstore2Info({
    this.blobGeneration,
    this.blobId,
    this.downloadReadHandle,
    this.readToken,
    this.uploadMetadataContainer,
  });

  $Blobstore2Info.fromJson(core.Map json_)
      : this(
          blobGeneration: json_.containsKey('blobGeneration')
              ? json_['blobGeneration'] as core.String
              : null,
          blobId: json_.containsKey('blobId')
              ? json_['blobId'] as core.String
              : null,
          downloadReadHandle: json_.containsKey('downloadReadHandle')
              ? json_['downloadReadHandle'] as core.String
              : null,
          readToken: json_.containsKey('readToken')
              ? json_['readToken'] as core.String
              : null,
          uploadMetadataContainer: json_.containsKey('uploadMetadataContainer')
              ? json_['uploadMetadataContainer'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (blobGeneration != null) 'blobGeneration': blobGeneration!,
        if (blobId != null) 'blobId': blobId!,
        if (downloadReadHandle != null)
          'downloadReadHandle': downloadReadHandle!,
        if (readToken != null) 'readToken': readToken!,
        if (uploadMetadataContainer != null)
          'uploadMetadataContainer': uploadMetadataContainer!,
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

  $BooleanPolicy.fromJson(core.Map json_)
      : this(
          enforced: json_.containsKey('enforced')
              ? json_['enforced'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enforced != null) 'enforced': enforced!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : BrowserAssignedTargetingOptionDetails
/// - displayvideo:v3 : BrowserAssignedTargetingOptionDetails
class $BrowserAssignedTargetingOptionDetails {
  /// The display name of the browser.
  ///
  /// Output only.
  core.String? displayName;

  /// Indicates if this option is being negatively targeted.
  ///
  /// All assigned browser targeting options on the same resource must have the
  /// same value for this field.
  core.bool? negative;

  /// The targeting_option_id of a TargetingOption of type
  /// `TARGETING_TYPE_BROWSER`.
  ///
  /// Required.
  core.String? targetingOptionId;

  $BrowserAssignedTargetingOptionDetails({
    this.displayName,
    this.negative,
    this.targetingOptionId,
  });

  $BrowserAssignedTargetingOptionDetails.fromJson(core.Map json_)
      : this(
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          negative: json_.containsKey('negative')
              ? json_['negative'] as core.bool
              : null,
          targetingOptionId: json_.containsKey('targetingOptionId')
              ? json_['targetingOptionId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (negative != null) 'negative': negative!,
        if (targetingOptionId != null) 'targetingOptionId': targetingOptionId!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : BrowserTargetingOptionDetails
/// - displayvideo:v3 : BrowserTargetingOptionDetails
class $BrowserTargetingOptionDetails {
  /// The display name of the browser.
  ///
  /// Output only.
  core.String? displayName;

  $BrowserTargetingOptionDetails({
    this.displayName,
  });

  $BrowserTargetingOptionDetails.fromJson(core.Map json_)
      : this(
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
      };
}

/// Used by:
///
/// - containeranalysis:v1 : BuildMetadata
/// - ondemandscanning:v1 : BuildMetadata
class $BuildMetadata {
  core.String? finishedOn;
  core.String? invocationId;
  core.String? startedOn;

  $BuildMetadata({
    this.finishedOn,
    this.invocationId,
    this.startedOn,
  });

  $BuildMetadata.fromJson(core.Map json_)
      : this(
          finishedOn: json_.containsKey('finishedOn')
              ? json_['finishedOn'] as core.String
              : null,
          invocationId: json_.containsKey('invocationId')
              ? json_['invocationId'] as core.String
              : null,
          startedOn: json_.containsKey('startedOn')
              ? json_['startedOn'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (finishedOn != null) 'finishedOn': finishedOn!,
        if (invocationId != null) 'invocationId': invocationId!,
        if (startedOn != null) 'startedOn': startedOn!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : BusinessChainAssignedTargetingOptionDetails
/// - displayvideo:v3 : BusinessChainAssignedTargetingOptionDetails
class $BusinessChainAssignedTargetingOptionDetails {
  /// The display name of a business chain, e.g. "KFC", "Chase Bank".
  ///
  /// Output only.
  core.String? displayName;

  /// The radius of the area around the business chain that will be targeted.
  ///
  /// The units of the radius are specified by proximity_radius_unit. Must be 1
  /// to 800 if unit is `DISTANCE_UNIT_KILOMETERS` and 1 to 500 if unit is
  /// `DISTANCE_UNIT_MILES`. The minimum increment for both cases is 0.1. Inputs
  /// will be rounded to the nearest acceptable value if it is too granular,
  /// e.g. 15.57 will become 15.6.
  ///
  /// Required.
  core.double? proximityRadiusAmount;

  /// The unit of distance by which the targeting radius is measured.
  ///
  /// Required.
  /// Possible string values are:
  /// - "DISTANCE_UNIT_UNSPECIFIED" : Type value is not specified or is unknown
  /// in this version.
  /// - "DISTANCE_UNIT_MILES" : Miles.
  /// - "DISTANCE_UNIT_KILOMETERS" : Kilometers.
  core.String? proximityRadiusUnit;

  /// The targeting_option_id of a TargetingOption of type
  /// `TARGETING_TYPE_BUSINESS_CHAIN`.
  ///
  /// Accepted business chain targeting option IDs can be retrieved using
  /// SearchTargetingOptions.
  ///
  /// Required.
  core.String? targetingOptionId;

  $BusinessChainAssignedTargetingOptionDetails({
    this.displayName,
    this.proximityRadiusAmount,
    this.proximityRadiusUnit,
    this.targetingOptionId,
  });

  $BusinessChainAssignedTargetingOptionDetails.fromJson(core.Map json_)
      : this(
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          proximityRadiusAmount: json_.containsKey('proximityRadiusAmount')
              ? (json_['proximityRadiusAmount'] as core.num).toDouble()
              : null,
          proximityRadiusUnit: json_.containsKey('proximityRadiusUnit')
              ? json_['proximityRadiusUnit'] as core.String
              : null,
          targetingOptionId: json_.containsKey('targetingOptionId')
              ? json_['targetingOptionId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (proximityRadiusAmount != null)
          'proximityRadiusAmount': proximityRadiusAmount!,
        if (proximityRadiusUnit != null)
          'proximityRadiusUnit': proximityRadiusUnit!,
        if (targetingOptionId != null) 'targetingOptionId': targetingOptionId!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : BusinessChainSearchTerms
/// - displayvideo:v3 : BusinessChainSearchTerms
class $BusinessChainSearchTerms {
  /// The search query for the desired business chain.
  ///
  /// The query must be the full name of the business, e.g. "KFC",
  /// "mercedes-benz".
  core.String? businessChainQuery;

  /// The search query for the desired geo region, e.g. "Seattle", "United
  /// State".
  core.String? regionQuery;

  $BusinessChainSearchTerms({
    this.businessChainQuery,
    this.regionQuery,
  });

  $BusinessChainSearchTerms.fromJson(core.Map json_)
      : this(
          businessChainQuery: json_.containsKey('businessChainQuery')
              ? json_['businessChainQuery'] as core.String
              : null,
          regionQuery: json_.containsKey('regionQuery')
              ? json_['regionQuery'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (businessChainQuery != null)
          'businessChainQuery': businessChainQuery!,
        if (regionQuery != null) 'regionQuery': regionQuery!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : BusinessChainTargetingOptionDetails
/// - displayvideo:v3 : BusinessChainTargetingOptionDetails
class $BusinessChainTargetingOptionDetails {
  /// The display name of the business chain, e.g. "KFC", "Chase Bank".
  ///
  /// Output only.
  core.String? businessChain;

  /// The display name of the geographic region, e.g. "Ontario, Canada".
  ///
  /// Output only.
  core.String? geoRegion;

  /// The type of the geographic region.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "GEO_REGION_TYPE_UNKNOWN" : The geographic region type is unknown.
  /// - "GEO_REGION_TYPE_OTHER" : The geographic region type is other.
  /// - "GEO_REGION_TYPE_COUNTRY" : The geographic region is a country.
  /// - "GEO_REGION_TYPE_REGION" : The geographic region type is region.
  /// - "GEO_REGION_TYPE_TERRITORY" : The geographic region is a territory.
  /// - "GEO_REGION_TYPE_PROVINCE" : The geographic region is a province.
  /// - "GEO_REGION_TYPE_STATE" : The geographic region is a state.
  /// - "GEO_REGION_TYPE_PREFECTURE" : The geographic region is a prefecture.
  /// - "GEO_REGION_TYPE_GOVERNORATE" : The geographic region is a governorate.
  /// - "GEO_REGION_TYPE_CANTON" : The geographic region is a canton.
  /// - "GEO_REGION_TYPE_UNION_TERRITORY" : The geographic region is a union
  /// territory.
  /// - "GEO_REGION_TYPE_AUTONOMOUS_COMMUNITY" : The geographic region is an
  /// autonomous community.
  /// - "GEO_REGION_TYPE_DMA_REGION" : The geographic region is a designated
  /// market area (DMA) region.
  /// - "GEO_REGION_TYPE_METRO" : The geographic region type is metro.
  /// - "GEO_REGION_TYPE_CONGRESSIONAL_DISTRICT" : The geographic region is a
  /// congressional district.
  /// - "GEO_REGION_TYPE_COUNTY" : The geographic region is a county.
  /// - "GEO_REGION_TYPE_MUNICIPALITY" : The geographic region is a
  /// municipality.
  /// - "GEO_REGION_TYPE_CITY" : The geographic region is a city.
  /// - "GEO_REGION_TYPE_POSTAL_CODE" : The geographic region targeting type is
  /// postal code.
  /// - "GEO_REGION_TYPE_DEPARTMENT" : The geographic region targeting type is
  /// department.
  /// - "GEO_REGION_TYPE_AIRPORT" : The geographic region is an airport.
  /// - "GEO_REGION_TYPE_TV_REGION" : The geographic region is a TV region.
  /// - "GEO_REGION_TYPE_OKRUG" : The geographic region is an okrug.
  /// - "GEO_REGION_TYPE_BOROUGH" : The geographic region is a borough.
  /// - "GEO_REGION_TYPE_CITY_REGION" : The geographic region is a city region.
  /// - "GEO_REGION_TYPE_ARRONDISSEMENT" : The geographic region is an
  /// arrondissement.
  /// - "GEO_REGION_TYPE_NEIGHBORHOOD" : The geographic region is a
  /// neighborhood.
  /// - "GEO_REGION_TYPE_UNIVERSITY" : The geographic region is a university.
  /// - "GEO_REGION_TYPE_DISTRICT" : The geographic region is a district.
  core.String? geoRegionType;

  $BusinessChainTargetingOptionDetails({
    this.businessChain,
    this.geoRegion,
    this.geoRegionType,
  });

  $BusinessChainTargetingOptionDetails.fromJson(core.Map json_)
      : this(
          businessChain: json_.containsKey('businessChain')
              ? json_['businessChain'] as core.String
              : null,
          geoRegion: json_.containsKey('geoRegion')
              ? json_['geoRegion'] as core.String
              : null,
          geoRegionType: json_.containsKey('geoRegionType')
              ? json_['geoRegionType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (businessChain != null) 'businessChain': businessChain!,
        if (geoRegion != null) 'geoRegion': geoRegion!,
        if (geoRegionType != null) 'geoRegionType': geoRegionType!,
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
  /// - "ATTACK_COMPLEXITY_MEDIUM"
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
  /// - "IMPACT_PARTIAL"
  /// - "IMPACT_COMPLETE"
  core.String? availabilityImpact;

  /// The base score is a function of the base metric scores.
  core.double? baseScore;

  ///
  /// Possible string values are:
  /// - "IMPACT_UNSPECIFIED"
  /// - "IMPACT_HIGH"
  /// - "IMPACT_LOW"
  /// - "IMPACT_NONE"
  /// - "IMPACT_PARTIAL"
  /// - "IMPACT_COMPLETE"
  core.String? confidentialityImpact;
  core.double? exploitabilityScore;
  core.double? impactScore;

  ///
  /// Possible string values are:
  /// - "IMPACT_UNSPECIFIED"
  /// - "IMPACT_HIGH"
  /// - "IMPACT_LOW"
  /// - "IMPACT_NONE"
  /// - "IMPACT_PARTIAL"
  /// - "IMPACT_COMPLETE"
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

  $CVSS.fromJson(core.Map json_)
      : this(
          attackComplexity: json_.containsKey('attackComplexity')
              ? json_['attackComplexity'] as core.String
              : null,
          attackVector: json_.containsKey('attackVector')
              ? json_['attackVector'] as core.String
              : null,
          authentication: json_.containsKey('authentication')
              ? json_['authentication'] as core.String
              : null,
          availabilityImpact: json_.containsKey('availabilityImpact')
              ? json_['availabilityImpact'] as core.String
              : null,
          baseScore: json_.containsKey('baseScore')
              ? (json_['baseScore'] as core.num).toDouble()
              : null,
          confidentialityImpact: json_.containsKey('confidentialityImpact')
              ? json_['confidentialityImpact'] as core.String
              : null,
          exploitabilityScore: json_.containsKey('exploitabilityScore')
              ? (json_['exploitabilityScore'] as core.num).toDouble()
              : null,
          impactScore: json_.containsKey('impactScore')
              ? (json_['impactScore'] as core.num).toDouble()
              : null,
          integrityImpact: json_.containsKey('integrityImpact')
              ? json_['integrityImpact'] as core.String
              : null,
          privilegesRequired: json_.containsKey('privilegesRequired')
              ? json_['privilegesRequired'] as core.String
              : null,
          scope:
              json_.containsKey('scope') ? json_['scope'] as core.String : null,
          userInteraction: json_.containsKey('userInteraction')
              ? json_['userInteraction'] as core.String
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
/// - displayvideo:v2 : CarrierAndIspAssignedTargetingOptionDetails
/// - displayvideo:v3 : CarrierAndIspAssignedTargetingOptionDetails
class $CarrierAndIspAssignedTargetingOptionDetails {
  /// The display name of the carrier or ISP.
  ///
  /// Output only.
  core.String? displayName;

  /// Indicates if this option is being negatively targeted.
  ///
  /// All assigned carrier and ISP targeting options on the same resource must
  /// have the same value for this field.
  core.bool? negative;

  /// The targeting_option_id of a TargetingOption of type
  /// `TARGETING_TYPE_CARRIER_AND_ISP`.
  ///
  /// Required.
  core.String? targetingOptionId;

  $CarrierAndIspAssignedTargetingOptionDetails({
    this.displayName,
    this.negative,
    this.targetingOptionId,
  });

  $CarrierAndIspAssignedTargetingOptionDetails.fromJson(core.Map json_)
      : this(
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          negative: json_.containsKey('negative')
              ? json_['negative'] as core.bool
              : null,
          targetingOptionId: json_.containsKey('targetingOptionId')
              ? json_['targetingOptionId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (negative != null) 'negative': negative!,
        if (targetingOptionId != null) 'targetingOptionId': targetingOptionId!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : CarrierAndIspTargetingOptionDetails
/// - displayvideo:v3 : CarrierAndIspTargetingOptionDetails
class $CarrierAndIspTargetingOptionDetails {
  /// The display name of the carrier or ISP.
  ///
  /// Output only.
  core.String? displayName;

  /// The type indicating if it's carrier or ISP.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "CARRIER_AND_ISP_TYPE_UNSPECIFIED" : Default value when type is not
  /// specified or is unknown in this version.
  /// - "CARRIER_AND_ISP_TYPE_ISP" : Indicates this targeting resource refers to
  /// an ISP.
  /// - "CARRIER_AND_ISP_TYPE_CARRIER" : Indicates this targeting resource
  /// refers to a mobile carrier.
  core.String? type;

  $CarrierAndIspTargetingOptionDetails({
    this.displayName,
    this.type,
  });

  $CarrierAndIspTargetingOptionDetails.fromJson(core.Map json_)
      : this(
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (type != null) 'type': type!,
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

  $Category.fromJson(core.Map json_)
      : this(
          categoryId: json_.containsKey('categoryId')
              ? json_['categoryId'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (categoryId != null) 'categoryId': categoryId!,
        if (name != null) 'name': name!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : CategoryAssignedTargetingOptionDetails
/// - displayvideo:v3 : CategoryAssignedTargetingOptionDetails
class $CategoryAssignedTargetingOptionDetails {
  /// The display name of the category.
  ///
  /// Output only.
  core.String? displayName;

  /// Indicates if this option is being negatively targeted.
  core.bool? negative;

  /// The targeting_option_id field when targeting_type is
  /// `TARGETING_TYPE_CATEGORY`.
  ///
  /// Required.
  core.String? targetingOptionId;

  $CategoryAssignedTargetingOptionDetails({
    this.displayName,
    this.negative,
    this.targetingOptionId,
  });

  $CategoryAssignedTargetingOptionDetails.fromJson(core.Map json_)
      : this(
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          negative: json_.containsKey('negative')
              ? json_['negative'] as core.bool
              : null,
          targetingOptionId: json_.containsKey('targetingOptionId')
              ? json_['targetingOptionId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (negative != null) 'negative': negative!,
        if (targetingOptionId != null) 'targetingOptionId': targetingOptionId!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : CategoryTargetingOptionDetails
/// - displayvideo:v3 : CategoryTargetingOptionDetails
class $CategoryTargetingOptionDetails {
  /// The display name of the category.
  ///
  /// Output only.
  core.String? displayName;

  $CategoryTargetingOptionDetails({
    this.displayName,
  });

  $CategoryTargetingOptionDetails.fromJson(core.Map json_)
      : this(
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
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

  $CdnPolicyBypassCacheOnRequestHeader.fromJson(core.Map json_)
      : this(
          headerName: json_.containsKey('headerName')
              ? json_['headerName'] as core.String
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

  $CdnPolicyNegativeCachingPolicy.fromJson(core.Map json_)
      : this(
          code: json_.containsKey('code') ? json_['code'] as core.int : null,
          ttl: json_.containsKey('ttl') ? json_['ttl'] as core.int : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (code != null) 'code': code!,
        if (ttl != null) 'ttl': ttl!,
      };
}

/// Used by:
///
/// - privateca:v1 : CertChain
/// - redis:v1 : CertChain
class $CertChain {
  /// The certificates that form the CA chain, from leaf to root order.
  core.List<core.String>? certificates;

  $CertChain({
    this.certificates,
  });

  $CertChain.fromJson(core.Map json_)
      : this(
          certificates: json_.containsKey('certificates')
              ? (json_['certificates'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (certificates != null) 'certificates': certificates!,
      };
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
          caviumCerts: json_.containsKey('caviumCerts')
              ? (json_['caviumCerts'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          googleCardCerts: json_.containsKey('googleCardCerts')
              ? (json_['googleCardCerts'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          googlePartitionCerts: json_.containsKey('googlePartitionCerts')
              ? (json_['googlePartitionCerts'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (caviumCerts != null) 'caviumCerts': caviumCerts!,
        if (googleCardCerts != null) 'googleCardCerts': googleCardCerts!,
        if (googlePartitionCerts != null)
          'googlePartitionCerts': googlePartitionCerts!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : Channel
/// - displayvideo:v3 : Channel
class $Channel00 {
  /// The ID of the advertiser that owns the channel.
  core.String? advertiserId;

  /// The unique ID of the channel.
  ///
  /// Assigned by the system.
  ///
  /// Output only.
  core.String? channelId;

  /// The display name of the channel.
  ///
  /// Must be UTF-8 encoded with a maximum length of 240 bytes.
  ///
  /// Required.
  core.String? displayName;

  /// The resource name of the channel.
  ///
  /// Output only.
  core.String? name;

  /// Number of line items that are directly targeting this channel negatively.
  ///
  /// Output only.
  core.String? negativelyTargetedLineItemCount;

  /// The ID of the partner that owns the channel.
  core.String? partnerId;

  /// Number of line items that are directly targeting this channel positively.
  ///
  /// Output only.
  core.String? positivelyTargetedLineItemCount;

  $Channel00({
    this.advertiserId,
    this.channelId,
    this.displayName,
    this.name,
    this.negativelyTargetedLineItemCount,
    this.partnerId,
    this.positivelyTargetedLineItemCount,
  });

  $Channel00.fromJson(core.Map json_)
      : this(
          advertiserId: json_.containsKey('advertiserId')
              ? json_['advertiserId'] as core.String
              : null,
          channelId: json_.containsKey('channelId')
              ? json_['channelId'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          negativelyTargetedLineItemCount:
              json_.containsKey('negativelyTargetedLineItemCount')
                  ? json_['negativelyTargetedLineItemCount'] as core.String
                  : null,
          partnerId: json_.containsKey('partnerId')
              ? json_['partnerId'] as core.String
              : null,
          positivelyTargetedLineItemCount:
              json_.containsKey('positivelyTargetedLineItemCount')
                  ? json_['positivelyTargetedLineItemCount'] as core.String
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (advertiserId != null) 'advertiserId': advertiserId!,
        if (channelId != null) 'channelId': channelId!,
        if (displayName != null) 'displayName': displayName!,
        if (name != null) 'name': name!,
        if (negativelyTargetedLineItemCount != null)
          'negativelyTargetedLineItemCount': negativelyTargetedLineItemCount!,
        if (partnerId != null) 'partnerId': partnerId!,
        if (positivelyTargetedLineItemCount != null)
          'positivelyTargetedLineItemCount': positivelyTargetedLineItemCount!,
      };
}

/// Used by:
///
/// - drive:v2 : Channel
/// - drive:v3 : Channel
class $Channel01 {
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
  /// resource, which is `api#channel`.
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
  /// Valid values are "web_hook" or "webhook".
  core.String? type;

  $Channel01({
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

  $Channel01.fromJson(core.Map json_)
      : this(
          address: json_.containsKey('address')
              ? json_['address'] as core.String
              : null,
          expiration: json_.containsKey('expiration')
              ? json_['expiration'] as core.String
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          params: json_.containsKey('params')
              ? (json_['params'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          payload: json_.containsKey('payload')
              ? json_['payload'] as core.bool
              : null,
          resourceId: json_.containsKey('resourceId')
              ? json_['resourceId'] as core.String
              : null,
          resourceUri: json_.containsKey('resourceUri')
              ? json_['resourceUri'] as core.String
              : null,
          token:
              json_.containsKey('token') ? json_['token'] as core.String : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
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
/// - displayvideo:v2 : ChannelAssignedTargetingOptionDetails
/// - displayvideo:v3 : ChannelAssignedTargetingOptionDetails
class $ChannelAssignedTargetingOptionDetails {
  /// ID of the channel.
  ///
  /// Should refer to the channel ID field on a \[Partner-owned
  /// channel\](partners.channels#Channel.FIELDS.channel_id) or
  /// \[advertiser-owned
  /// channel\](advertisers.channels#Channel.FIELDS.channel_id) resource.
  ///
  /// Required.
  core.String? channelId;

  /// Indicates if this option is being negatively targeted.
  ///
  /// For advertiser level assigned targeting option, this field must be true.
  core.bool? negative;

  $ChannelAssignedTargetingOptionDetails({
    this.channelId,
    this.negative,
  });

  $ChannelAssignedTargetingOptionDetails.fromJson(core.Map json_)
      : this(
          channelId: json_.containsKey('channelId')
              ? json_['channelId'] as core.String
              : null,
          negative: json_.containsKey('negative')
              ? json_['negative'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (channelId != null) 'channelId': channelId!,
        if (negative != null) 'negative': negative!,
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

  set sha256AsBytes(core.List<core.int> bytes_) {
    sha256 =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  $Checksum({
    this.sha256,
  });

  $Checksum.fromJson(core.Map json_)
      : this(
          sha256: json_.containsKey('sha256')
              ? json_['sha256'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (sha256 != null) 'sha256': sha256!,
      };
}

/// Used by:
///
/// - speech:v1 : ClassItem
/// - speech:v2 : ClassItem
class $ClassItem {
  /// The class item's value.
  core.String? value;

  $ClassItem({
    this.value,
  });

  $ClassItem.fromJson(core.Map json_)
      : this(
          value:
              json_.containsKey('value') ? json_['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (value != null) 'value': value!,
      };
}

/// Used by:
///
/// - language:v1 : ClassificationCategory
/// - language:v2 : ClassificationCategory
class $ClassificationCategory {
  /// The classifier's confidence of the category.
  ///
  /// Number represents how certain the classifier is that this category
  /// represents the given text.
  core.double? confidence;

  /// The name of the category representing the document.
  core.String? name;

  $ClassificationCategory({
    this.confidence,
    this.name,
  });

  $ClassificationCategory.fromJson(core.Map json_)
      : this(
          confidence: json_.containsKey('confidence')
              ? (json_['confidence'] as core.num).toDouble()
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (confidence != null) 'confidence': confidence!,
        if (name != null) 'name': name!,
      };
}

/// Used by:
///
/// - gkeonprem:v1 : BareMetalAdminClusterOperationsConfig
/// - gkeonprem:v1 : BareMetalClusterOperationsConfig
class $ClusterOperationsConfig {
  /// Whether collection of application logs/metrics should be enabled (in
  /// addition to system logs/metrics).
  core.bool? enableApplicationLogs;

  $ClusterOperationsConfig({
    this.enableApplicationLogs,
  });

  $ClusterOperationsConfig.fromJson(core.Map json_)
      : this(
          enableApplicationLogs: json_.containsKey('enableApplicationLogs')
              ? json_['enableApplicationLogs'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enableApplicationLogs != null)
          'enableApplicationLogs': enableApplicationLogs!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : CmHybridConfig
/// - displayvideo:v3 : CmHybridConfig
class $CmHybridConfig {
  /// Account ID of the CM360 Floodlight configuration linked with the DV360
  /// advertiser.
  ///
  /// Required. Immutable.
  core.String? cmAccountId;

  /// The set of CM360 Advertiser IDs sharing the CM360 Floodlight
  /// configuration.
  ///
  /// Output only.
  core.List<core.String>? cmAdvertiserIds;

  /// ID of the CM360 Floodlight configuration linked with the DV360 advertiser.
  ///
  /// Required. Immutable.
  core.String? cmFloodlightConfigId;

  /// By setting this field to `true`, you, on behalf of your company, authorize
  /// the sharing of information from the given Floodlight configuration to this
  /// Display & Video 360 advertiser.
  ///
  /// Required. Immutable.
  core.bool? cmFloodlightLinkingAuthorized;

  /// A list of CM360 sites whose placements will be synced to DV360 as
  /// creatives.
  ///
  /// If absent or empty in CreateAdvertiser method, the system will
  /// automatically create a CM360 site. Removing sites from this list may cause
  /// DV360 creatives synced from CM360 to be deleted. At least one site must be
  /// specified.
  core.List<core.String>? cmSyncableSiteIds;

  /// Whether or not to report DV360 cost to CM360.
  core.bool? dv360ToCmCostReportingEnabled;

  /// Whether or not to include DV360 data in CM360 data transfer reports.
  core.bool? dv360ToCmDataSharingEnabled;

  $CmHybridConfig({
    this.cmAccountId,
    this.cmAdvertiserIds,
    this.cmFloodlightConfigId,
    this.cmFloodlightLinkingAuthorized,
    this.cmSyncableSiteIds,
    this.dv360ToCmCostReportingEnabled,
    this.dv360ToCmDataSharingEnabled,
  });

  $CmHybridConfig.fromJson(core.Map json_)
      : this(
          cmAccountId: json_.containsKey('cmAccountId')
              ? json_['cmAccountId'] as core.String
              : null,
          cmAdvertiserIds: json_.containsKey('cmAdvertiserIds')
              ? (json_['cmAdvertiserIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          cmFloodlightConfigId: json_.containsKey('cmFloodlightConfigId')
              ? json_['cmFloodlightConfigId'] as core.String
              : null,
          cmFloodlightLinkingAuthorized:
              json_.containsKey('cmFloodlightLinkingAuthorized')
                  ? json_['cmFloodlightLinkingAuthorized'] as core.bool
                  : null,
          cmSyncableSiteIds: json_.containsKey('cmSyncableSiteIds')
              ? (json_['cmSyncableSiteIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          dv360ToCmCostReportingEnabled:
              json_.containsKey('dv360ToCmCostReportingEnabled')
                  ? json_['dv360ToCmCostReportingEnabled'] as core.bool
                  : null,
          dv360ToCmDataSharingEnabled:
              json_.containsKey('dv360ToCmDataSharingEnabled')
                  ? json_['dv360ToCmDataSharingEnabled'] as core.bool
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cmAccountId != null) 'cmAccountId': cmAccountId!,
        if (cmAdvertiserIds != null) 'cmAdvertiserIds': cmAdvertiserIds!,
        if (cmFloodlightConfigId != null)
          'cmFloodlightConfigId': cmFloodlightConfigId!,
        if (cmFloodlightLinkingAuthorized != null)
          'cmFloodlightLinkingAuthorized': cmFloodlightLinkingAuthorized!,
        if (cmSyncableSiteIds != null) 'cmSyncableSiteIds': cmSyncableSiteIds!,
        if (dv360ToCmCostReportingEnabled != null)
          'dv360ToCmCostReportingEnabled': dv360ToCmCostReportingEnabled!,
        if (dv360ToCmDataSharingEnabled != null)
          'dv360ToCmDataSharingEnabled': dv360ToCmDataSharingEnabled!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : CmTrackingAd
/// - displayvideo:v3 : CmTrackingAd
class $CmTrackingAd {
  /// The ad ID of the campaign manager 360 tracking Ad.
  core.String? cmAdId;

  /// The creative ID of the campaign manager 360 tracking Ad.
  core.String? cmCreativeId;

  /// The placement ID of the campaign manager 360 tracking Ad.
  core.String? cmPlacementId;

  $CmTrackingAd({
    this.cmAdId,
    this.cmCreativeId,
    this.cmPlacementId,
  });

  $CmTrackingAd.fromJson(core.Map json_)
      : this(
          cmAdId: json_.containsKey('cmAdId')
              ? json_['cmAdId'] as core.String
              : null,
          cmCreativeId: json_.containsKey('cmCreativeId')
              ? json_['cmCreativeId'] as core.String
              : null,
          cmPlacementId: json_.containsKey('cmPlacementId')
              ? json_['cmPlacementId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cmAdId != null) 'cmAdId': cmAdId!,
        if (cmCreativeId != null) 'cmCreativeId': cmCreativeId!,
        if (cmPlacementId != null) 'cmPlacementId': cmPlacementId!,
      };
}

/// Used by:
///
/// - chat:v1 : Color
/// - contentwarehouse:v1 : GoogleTypeColor
/// - documentai:v1 : GoogleTypeColor
/// - drivelabels:v2 : GoogleTypeColor
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

  $Color.fromJson(core.Map json_)
      : this(
          alpha: json_.containsKey('alpha')
              ? (json_['alpha'] as core.num).toDouble()
              : null,
          blue: json_.containsKey('blue')
              ? (json_['blue'] as core.num).toDouble()
              : null,
          green: json_.containsKey('green')
              ? (json_['green'] as core.num).toDouble()
              : null,
          red: json_.containsKey('red')
              ? (json_['red'] as core.num).toDouble()
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
/// - displayvideo:v2 : CombinedAudience
/// - displayvideo:v3 : CombinedAudience
class $CombinedAudience {
  /// The unique ID of the combined audience.
  ///
  /// Assigned by the system.
  ///
  /// Output only.
  core.String? combinedAudienceId;

  /// The display name of the combined audience.
  ///
  /// .
  ///
  /// Output only.
  core.String? displayName;

  /// The resource name of the combined audience.
  ///
  /// Output only.
  core.String? name;

  $CombinedAudience({
    this.combinedAudienceId,
    this.displayName,
    this.name,
  });

  $CombinedAudience.fromJson(core.Map json_)
      : this(
          combinedAudienceId: json_.containsKey('combinedAudienceId')
              ? json_['combinedAudienceId'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (combinedAudienceId != null)
          'combinedAudienceId': combinedAudienceId!,
        if (displayName != null) 'displayName': displayName!,
        if (name != null) 'name': name!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : CombinedAudienceTargetingSetting
/// - displayvideo:v3 : CombinedAudienceTargetingSetting
class $CombinedAudienceTargetingSetting {
  /// Combined audience id of combined audience targeting setting.
  ///
  /// This id is combined_audience_id.
  ///
  /// Required.
  core.String? combinedAudienceId;

  $CombinedAudienceTargetingSetting({
    this.combinedAudienceId,
  });

  $CombinedAudienceTargetingSetting.fromJson(core.Map json_)
      : this(
          combinedAudienceId: json_.containsKey('combinedAudienceId')
              ? json_['combinedAudienceId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (combinedAudienceId != null)
          'combinedAudienceId': combinedAudienceId!,
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

  $Command.fromJson(core.Map json_)
      : this(
          args: json_.containsKey('args')
              ? (json_['args'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          dir: json_.containsKey('dir') ? json_['dir'] as core.String : null,
          env: json_.containsKey('env')
              ? (json_['env'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          waitFor: json_.containsKey('waitFor')
              ? (json_['waitFor'] as core.List)
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

  $Completeness.fromJson(core.Map json_)
      : this(
          arguments: json_.containsKey('arguments')
              ? json_['arguments'] as core.bool
              : null,
          environment: json_.containsKey('environment')
              ? json_['environment'] as core.bool
              : null,
          materials: json_.containsKey('materials')
              ? json_['materials'] as core.bool
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
/// - dataplex:v1 : GoogleCloudDataplexV1DataQualityRuleRowConditionExpectation
/// - dataplex:v1 : GoogleCloudDataplexV1DataQualityRuleTableConditionExpectation
class $ConditionExpectation {
  /// The SQL expression.
  ///
  /// Optional.
  core.String? sqlExpression;

  $ConditionExpectation({
    this.sqlExpression,
  });

  $ConditionExpectation.fromJson(core.Map json_)
      : this(
          sqlExpression: json_.containsKey('sqlExpression')
              ? json_['sqlExpression'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (sqlExpression != null) 'sqlExpression': sqlExpression!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : Consent
/// - displayvideo:v3 : Consent
class $Consent {
  /// Represents consent for ad personalization.
  /// Possible string values are:
  /// - "CONSENT_STATUS_UNSPECIFIED" : Type value is not specified or is unknown
  /// in this version.
  /// - "CONSENT_STATUS_GRANTED" : Consent is granted.
  /// - "CONSENT_STATUS_DENIED" : Consent is denied.
  core.String? adPersonalization;

  /// Represents consent for ad user data.
  /// Possible string values are:
  /// - "CONSENT_STATUS_UNSPECIFIED" : Type value is not specified or is unknown
  /// in this version.
  /// - "CONSENT_STATUS_GRANTED" : Consent is granted.
  /// - "CONSENT_STATUS_DENIED" : Consent is denied.
  core.String? adUserData;

  $Consent({
    this.adPersonalization,
    this.adUserData,
  });

  $Consent.fromJson(core.Map json_)
      : this(
          adPersonalization: json_.containsKey('adPersonalization')
              ? json_['adPersonalization'] as core.String
              : null,
          adUserData: json_.containsKey('adUserData')
              ? json_['adUserData'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (adPersonalization != null) 'adPersonalization': adPersonalization!,
        if (adUserData != null) 'adUserData': adUserData!,
      };
}

/// Used by:
///
/// - assuredworkloads:v1 : GoogleCloudAssuredworkloadsV1ViolationRemediationInstructionsConsole
/// - cloudcontrolspartner:v1 : Console
class $Console {
  /// Additional urls for more information about steps
  core.List<core.String>? additionalLinks;

  /// Link to console page where violations can be resolved
  core.List<core.String>? consoleUris;

  /// Steps to resolve violation via cloud console
  core.List<core.String>? steps;

  $Console({
    this.additionalLinks,
    this.consoleUris,
    this.steps,
  });

  $Console.fromJson(core.Map json_)
      : this(
          additionalLinks: json_.containsKey('additionalLinks')
              ? (json_['additionalLinks'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          consoleUris: json_.containsKey('consoleUris')
              ? (json_['consoleUris'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          steps: json_.containsKey('steps')
              ? (json_['steps'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (additionalLinks != null) 'additionalLinks': additionalLinks!,
        if (consoleUris != null) 'consoleUris': consoleUris!,
        if (steps != null) 'steps': steps!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : ContactInfo
/// - displayvideo:v3 : ContactInfo
class $ContactInfo {
  /// Country code of the member.
  ///
  /// Must also be set with the following fields: * hashed_first_name *
  /// hashed_last_name * zip_codes
  core.String? countryCode;

  /// A list of SHA256 hashed email of the member.
  ///
  /// Before hashing, remove all whitespace and make sure the string is all
  /// lowercase.
  core.List<core.String>? hashedEmails;

  /// SHA256 hashed first name of the member.
  ///
  /// Before hashing, remove all whitespace and make sure the string is all
  /// lowercase. Must also be set with the following fields: * country_code *
  /// hashed_last_name * zip_codes
  core.String? hashedFirstName;

  /// SHA256 hashed last name of the member.
  ///
  /// Before hashing, remove all whitespace and make sure the string is all
  /// lowercase. Must also be set with the following fields: * country_code *
  /// hashed_first_name * zip_codes
  core.String? hashedLastName;

  /// A list of SHA256 hashed phone numbers of the member.
  ///
  /// Before hashing, all phone numbers must be formatted using the \[E.164
  /// format\](//en.wikipedia.org/wiki/E.164) and include the country calling
  /// code.
  core.List<core.String>? hashedPhoneNumbers;

  /// A list of zip codes of the member.
  ///
  /// Must also be set with the following fields: * country_code *
  /// hashed_first_name * hashed_last_name
  core.List<core.String>? zipCodes;

  $ContactInfo({
    this.countryCode,
    this.hashedEmails,
    this.hashedFirstName,
    this.hashedLastName,
    this.hashedPhoneNumbers,
    this.zipCodes,
  });

  $ContactInfo.fromJson(core.Map json_)
      : this(
          countryCode: json_.containsKey('countryCode')
              ? json_['countryCode'] as core.String
              : null,
          hashedEmails: json_.containsKey('hashedEmails')
              ? (json_['hashedEmails'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          hashedFirstName: json_.containsKey('hashedFirstName')
              ? json_['hashedFirstName'] as core.String
              : null,
          hashedLastName: json_.containsKey('hashedLastName')
              ? json_['hashedLastName'] as core.String
              : null,
          hashedPhoneNumbers: json_.containsKey('hashedPhoneNumbers')
              ? (json_['hashedPhoneNumbers'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          zipCodes: json_.containsKey('zipCodes')
              ? (json_['zipCodes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (countryCode != null) 'countryCode': countryCode!,
        if (hashedEmails != null) 'hashedEmails': hashedEmails!,
        if (hashedFirstName != null) 'hashedFirstName': hashedFirstName!,
        if (hashedLastName != null) 'hashedLastName': hashedLastName!,
        if (hashedPhoneNumbers != null)
          'hashedPhoneNumbers': hashedPhoneNumbers!,
        if (zipCodes != null) 'zipCodes': zipCodes!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : ContentDurationAssignedTargetingOptionDetails
/// - displayvideo:v3 : ContentDurationAssignedTargetingOptionDetails
class $ContentDurationAssignedTargetingOptionDetails {
  /// The content duration.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "CONTENT_DURATION_UNSPECIFIED" : Content duration is not specified in
  /// this version. This enum is a place holder for a default value and does not
  /// represent a real content duration.
  /// - "CONTENT_DURATION_UNKNOWN" : The content duration is unknown.
  /// - "CONTENT_DURATION_0_TO_1_MIN" : Content is 0-1 minute long.
  /// - "CONTENT_DURATION_1_TO_5_MIN" : Content is 1-5 minutes long.
  /// - "CONTENT_DURATION_5_TO_15_MIN" : Content is 5-15 minutes long.
  /// - "CONTENT_DURATION_15_TO_30_MIN" : Content is 15-30 minutes long.
  /// - "CONTENT_DURATION_30_TO_60_MIN" : Content is 30-60 minutes long.
  /// - "CONTENT_DURATION_OVER_60_MIN" : Content is over 60 minutes long.
  core.String? contentDuration;

  /// The targeting_option_id field when targeting_type is
  /// `TARGETING_TYPE_CONTENT_DURATION`.
  ///
  /// Required.
  core.String? targetingOptionId;

  $ContentDurationAssignedTargetingOptionDetails({
    this.contentDuration,
    this.targetingOptionId,
  });

  $ContentDurationAssignedTargetingOptionDetails.fromJson(core.Map json_)
      : this(
          contentDuration: json_.containsKey('contentDuration')
              ? json_['contentDuration'] as core.String
              : null,
          targetingOptionId: json_.containsKey('targetingOptionId')
              ? json_['targetingOptionId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (contentDuration != null) 'contentDuration': contentDuration!,
        if (targetingOptionId != null) 'targetingOptionId': targetingOptionId!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : ContentDurationTargetingOptionDetails
/// - displayvideo:v3 : ContentDurationTargetingOptionDetails
class $ContentDurationTargetingOptionDetails {
  /// The content duration.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "CONTENT_DURATION_UNSPECIFIED" : Content duration is not specified in
  /// this version. This enum is a place holder for a default value and does not
  /// represent a real content duration.
  /// - "CONTENT_DURATION_UNKNOWN" : The content duration is unknown.
  /// - "CONTENT_DURATION_0_TO_1_MIN" : Content is 0-1 minute long.
  /// - "CONTENT_DURATION_1_TO_5_MIN" : Content is 1-5 minutes long.
  /// - "CONTENT_DURATION_5_TO_15_MIN" : Content is 5-15 minutes long.
  /// - "CONTENT_DURATION_15_TO_30_MIN" : Content is 15-30 minutes long.
  /// - "CONTENT_DURATION_30_TO_60_MIN" : Content is 30-60 minutes long.
  /// - "CONTENT_DURATION_OVER_60_MIN" : Content is over 60 minutes long.
  core.String? contentDuration;

  $ContentDurationTargetingOptionDetails({
    this.contentDuration,
  });

  $ContentDurationTargetingOptionDetails.fromJson(core.Map json_)
      : this(
          contentDuration: json_.containsKey('contentDuration')
              ? json_['contentDuration'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (contentDuration != null) 'contentDuration': contentDuration!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : ContentGenreAssignedTargetingOptionDetails
/// - displayvideo:v3 : ContentGenreAssignedTargetingOptionDetails
class $ContentGenreAssignedTargetingOptionDetails {
  /// The display name of the content genre.
  ///
  /// Output only.
  core.String? displayName;

  /// Indicates if this option is being negatively targeted.
  core.bool? negative;

  /// The targeting_option_id field when targeting_type is
  /// `TARGETING_TYPE_CONTENT_GENRE`.
  ///
  /// Required.
  core.String? targetingOptionId;

  $ContentGenreAssignedTargetingOptionDetails({
    this.displayName,
    this.negative,
    this.targetingOptionId,
  });

  $ContentGenreAssignedTargetingOptionDetails.fromJson(core.Map json_)
      : this(
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          negative: json_.containsKey('negative')
              ? json_['negative'] as core.bool
              : null,
          targetingOptionId: json_.containsKey('targetingOptionId')
              ? json_['targetingOptionId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (negative != null) 'negative': negative!,
        if (targetingOptionId != null) 'targetingOptionId': targetingOptionId!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : ContentGenreTargetingOptionDetails
/// - displayvideo:v3 : ContentGenreTargetingOptionDetails
class $ContentGenreTargetingOptionDetails {
  /// The display name of the content genre
  ///
  /// Output only.
  core.String? displayName;

  $ContentGenreTargetingOptionDetails({
    this.displayName,
  });

  $ContentGenreTargetingOptionDetails.fromJson(core.Map json_)
      : this(
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : ContentInstreamPositionAssignedTargetingOptionDetails
/// - displayvideo:v3 : ContentInstreamPositionAssignedTargetingOptionDetails
class $ContentInstreamPositionAssignedTargetingOptionDetails {
  /// The ad type to target.
  ///
  /// Only applicable to insertion order targeting and new line items supporting
  /// the specified ad type will inherit this targeting option by default.
  /// Possible values are: * `AD_TYPE_VIDEO`, the setting will be inherited by
  /// new line item when line_item_type is `LINE_ITEM_TYPE_VIDEO_DEFAULT`. *
  /// `AD_TYPE_AUDIO`, the setting will be inherited by new line item when
  /// line_item_type is `LINE_ITEM_TYPE_AUDIO_DEFAULT`.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "AD_TYPE_UNSPECIFIED" : Ad type is not specified or is unknown in this
  /// version.
  /// - "AD_TYPE_DISPLAY" : Display creatives, e.g. image and HTML5.
  /// - "AD_TYPE_VIDEO" : Video creatives, e.g. video ads that play during
  /// streaming content in video players.
  /// - "AD_TYPE_AUDIO" : Audio creatives, e.g. audio ads that play during audio
  /// content.
  core.String? adType;

  /// The content instream position for video or audio ads.
  ///
  /// Required.
  /// Possible string values are:
  /// - "CONTENT_INSTREAM_POSITION_UNSPECIFIED" : Content instream position is
  /// not specified in this version. This enum is a place holder for a default
  /// value and does not represent a real in stream ad position.
  /// - "CONTENT_INSTREAM_POSITION_PRE_ROLL" : Ads that play before streaming
  /// content.
  /// - "CONTENT_INSTREAM_POSITION_MID_ROLL" : Ads that play between the
  /// beginning and end of streaming content.
  /// - "CONTENT_INSTREAM_POSITION_POST_ROLL" : Ads that play at the end of
  /// streaming content.
  /// - "CONTENT_INSTREAM_POSITION_UNKNOWN" : Ads instream position is unknown.
  core.String? contentInstreamPosition;

  $ContentInstreamPositionAssignedTargetingOptionDetails({
    this.adType,
    this.contentInstreamPosition,
  });

  $ContentInstreamPositionAssignedTargetingOptionDetails.fromJson(
      core.Map json_)
      : this(
          adType: json_.containsKey('adType')
              ? json_['adType'] as core.String
              : null,
          contentInstreamPosition: json_.containsKey('contentInstreamPosition')
              ? json_['contentInstreamPosition'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (adType != null) 'adType': adType!,
        if (contentInstreamPosition != null)
          'contentInstreamPosition': contentInstreamPosition!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : ContentInstreamPositionTargetingOptionDetails
/// - displayvideo:v3 : ContentInstreamPositionTargetingOptionDetails
class $ContentInstreamPositionTargetingOptionDetails {
  /// The content instream position.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "CONTENT_INSTREAM_POSITION_UNSPECIFIED" : Content instream position is
  /// not specified in this version. This enum is a place holder for a default
  /// value and does not represent a real in stream ad position.
  /// - "CONTENT_INSTREAM_POSITION_PRE_ROLL" : Ads that play before streaming
  /// content.
  /// - "CONTENT_INSTREAM_POSITION_MID_ROLL" : Ads that play between the
  /// beginning and end of streaming content.
  /// - "CONTENT_INSTREAM_POSITION_POST_ROLL" : Ads that play at the end of
  /// streaming content.
  /// - "CONTENT_INSTREAM_POSITION_UNKNOWN" : Ads instream position is unknown.
  core.String? contentInstreamPosition;

  $ContentInstreamPositionTargetingOptionDetails({
    this.contentInstreamPosition,
  });

  $ContentInstreamPositionTargetingOptionDetails.fromJson(core.Map json_)
      : this(
          contentInstreamPosition: json_.containsKey('contentInstreamPosition')
              ? json_['contentInstreamPosition'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (contentInstreamPosition != null)
          'contentInstreamPosition': contentInstreamPosition!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : ContentOutstreamPositionAssignedTargetingOptionDetails
/// - displayvideo:v3 : ContentOutstreamPositionAssignedTargetingOptionDetails
class $ContentOutstreamPositionAssignedTargetingOptionDetails {
  /// The ad type to target.
  ///
  /// Only applicable to insertion order targeting and new line items supporting
  /// the specified ad type will inherit this targeting option by default.
  /// Possible values are: * `AD_TYPE_DISPLAY`, the setting will be inherited by
  /// new line item when line_item_type is `LINE_ITEM_TYPE_DISPLAY_DEFAULT`. *
  /// `AD_TYPE_VIDEO`, the setting will be inherited by new line item when
  /// line_item_type is `LINE_ITEM_TYPE_VIDEO_DEFAULT`.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "AD_TYPE_UNSPECIFIED" : Ad type is not specified or is unknown in this
  /// version.
  /// - "AD_TYPE_DISPLAY" : Display creatives, e.g. image and HTML5.
  /// - "AD_TYPE_VIDEO" : Video creatives, e.g. video ads that play during
  /// streaming content in video players.
  /// - "AD_TYPE_AUDIO" : Audio creatives, e.g. audio ads that play during audio
  /// content.
  core.String? adType;

  /// The content outstream position.
  ///
  /// Required.
  /// Possible string values are:
  /// - "CONTENT_OUTSTREAM_POSITION_UNSPECIFIED" : Content outstream position is
  /// not specified in this version. This enum is a place holder for a default
  /// value and does not represent a real content outstream position.
  /// - "CONTENT_OUTSTREAM_POSITION_UNKNOWN" : The ad position is unknown in the
  /// content outstream.
  /// - "CONTENT_OUTSTREAM_POSITION_IN_ARTICLE" : Ads that appear between the
  /// paragraphs of your pages.
  /// - "CONTENT_OUTSTREAM_POSITION_IN_BANNER" : Ads that display on the top and
  /// the sides of a page.
  /// - "CONTENT_OUTSTREAM_POSITION_IN_FEED" : Ads that appear in a scrollable
  /// stream of content. A feed is typically editorial (e.g. a list of articles
  /// or news) or listings (e.g. a list of products or services).
  /// - "CONTENT_OUTSTREAM_POSITION_INTERSTITIAL" : Ads shown before or between
  /// content loads.
  core.String? contentOutstreamPosition;

  $ContentOutstreamPositionAssignedTargetingOptionDetails({
    this.adType,
    this.contentOutstreamPosition,
  });

  $ContentOutstreamPositionAssignedTargetingOptionDetails.fromJson(
      core.Map json_)
      : this(
          adType: json_.containsKey('adType')
              ? json_['adType'] as core.String
              : null,
          contentOutstreamPosition:
              json_.containsKey('contentOutstreamPosition')
                  ? json_['contentOutstreamPosition'] as core.String
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (adType != null) 'adType': adType!,
        if (contentOutstreamPosition != null)
          'contentOutstreamPosition': contentOutstreamPosition!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : ContentOutstreamPositionTargetingOptionDetails
/// - displayvideo:v3 : ContentOutstreamPositionTargetingOptionDetails
class $ContentOutstreamPositionTargetingOptionDetails {
  /// The content outstream position.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "CONTENT_OUTSTREAM_POSITION_UNSPECIFIED" : Content outstream position is
  /// not specified in this version. This enum is a place holder for a default
  /// value and does not represent a real content outstream position.
  /// - "CONTENT_OUTSTREAM_POSITION_UNKNOWN" : The ad position is unknown in the
  /// content outstream.
  /// - "CONTENT_OUTSTREAM_POSITION_IN_ARTICLE" : Ads that appear between the
  /// paragraphs of your pages.
  /// - "CONTENT_OUTSTREAM_POSITION_IN_BANNER" : Ads that display on the top and
  /// the sides of a page.
  /// - "CONTENT_OUTSTREAM_POSITION_IN_FEED" : Ads that appear in a scrollable
  /// stream of content. A feed is typically editorial (e.g. a list of articles
  /// or news) or listings (e.g. a list of products or services).
  /// - "CONTENT_OUTSTREAM_POSITION_INTERSTITIAL" : Ads shown before or between
  /// content loads.
  core.String? contentOutstreamPosition;

  $ContentOutstreamPositionTargetingOptionDetails({
    this.contentOutstreamPosition,
  });

  $ContentOutstreamPositionTargetingOptionDetails.fromJson(core.Map json_)
      : this(
          contentOutstreamPosition:
              json_.containsKey('contentOutstreamPosition')
                  ? json_['contentOutstreamPosition'] as core.String
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (contentOutstreamPosition != null)
          'contentOutstreamPosition': contentOutstreamPosition!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : ContentStreamTypeAssignedTargetingOptionDetails
/// - displayvideo:v3 : ContentStreamTypeAssignedTargetingOptionDetails
class $ContentStreamTypeAssignedTargetingOptionDetails {
  /// The content stream type.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "CONTENT_STREAM_TYPE_UNSPECIFIED" : Content stream type is not specified
  /// in this version. This enum is a place holder for a default value and does
  /// not represent a real content stream type.
  /// - "CONTENT_LIVE_STREAM" : The content is being live-streamed.
  /// - "CONTENT_ON_DEMAND" : The content is viewed on-demand.
  core.String? contentStreamType;

  /// The targeting_option_id field when targeting_type is
  /// `TARGETING_TYPE_CONTENT_STREAM_TYPE`.
  ///
  /// Required.
  core.String? targetingOptionId;

  $ContentStreamTypeAssignedTargetingOptionDetails({
    this.contentStreamType,
    this.targetingOptionId,
  });

  $ContentStreamTypeAssignedTargetingOptionDetails.fromJson(core.Map json_)
      : this(
          contentStreamType: json_.containsKey('contentStreamType')
              ? json_['contentStreamType'] as core.String
              : null,
          targetingOptionId: json_.containsKey('targetingOptionId')
              ? json_['targetingOptionId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (contentStreamType != null) 'contentStreamType': contentStreamType!,
        if (targetingOptionId != null) 'targetingOptionId': targetingOptionId!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : ContentStreamTypeTargetingOptionDetails
/// - displayvideo:v3 : ContentStreamTypeTargetingOptionDetails
class $ContentStreamTypeTargetingOptionDetails {
  /// The content stream type.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "CONTENT_STREAM_TYPE_UNSPECIFIED" : Content stream type is not specified
  /// in this version. This enum is a place holder for a default value and does
  /// not represent a real content stream type.
  /// - "CONTENT_LIVE_STREAM" : The content is being live-streamed.
  /// - "CONTENT_ON_DEMAND" : The content is viewed on-demand.
  core.String? contentStreamType;

  $ContentStreamTypeTargetingOptionDetails({
    this.contentStreamType,
  });

  $ContentStreamTypeTargetingOptionDetails.fromJson(core.Map json_)
      : this(
          contentStreamType: json_.containsKey('contentStreamType')
              ? json_['contentStreamType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (contentStreamType != null) 'contentStreamType': contentStreamType!,
      };
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

  /// The content type of the file as specified in the request headers,
  /// multipart headers, or RUPIO start request.
  core.String? fromHeader;

  /// The content type of the file derived from the file extension of the URL
  /// path.
  ///
  /// The URL path is assumed to represent a file name (which is typically only
  /// true for agents that are providing a REST API).
  core.String? fromUrlPath;

  $ContentTypeInfo({
    this.bestGuess,
    this.fromBytes,
    this.fromFileName,
    this.fromHeader,
    this.fromUrlPath,
  });

  $ContentTypeInfo.fromJson(core.Map json_)
      : this(
          bestGuess: json_.containsKey('bestGuess')
              ? json_['bestGuess'] as core.String
              : null,
          fromBytes: json_.containsKey('fromBytes')
              ? json_['fromBytes'] as core.String
              : null,
          fromFileName: json_.containsKey('fromFileName')
              ? json_['fromFileName'] as core.String
              : null,
          fromHeader: json_.containsKey('fromHeader')
              ? json_['fromHeader'] as core.String
              : null,
          fromUrlPath: json_.containsKey('fromUrlPath')
              ? json_['fromUrlPath'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bestGuess != null) 'bestGuess': bestGuess!,
        if (fromBytes != null) 'fromBytes': fromBytes!,
        if (fromFileName != null) 'fromFileName': fromFileName!,
        if (fromHeader != null) 'fromHeader': fromHeader!,
        if (fromUrlPath != null) 'fromUrlPath': fromUrlPath!,
      };
}

/// Used by:
///
/// - aiplatform:v1 : GoogleCloudAiplatformV1AddContextChildrenRequest
/// - aiplatform:v1 : GoogleCloudAiplatformV1RemoveContextChildrenRequest
class $ContextChildrenRequest {
  /// The resource names of the child Contexts.
  core.List<core.String>? childContexts;

  $ContextChildrenRequest({
    this.childContexts,
  });

  $ContextChildrenRequest.fromJson(core.Map json_)
      : this(
          childContexts: json_.containsKey('childContexts')
              ? (json_['childContexts'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (childContexts != null) 'childContexts': childContexts!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : CounterEvent
/// - displayvideo:v3 : CounterEvent
class $CounterEvent {
  /// The name of the counter event.
  ///
  /// Required.
  core.String? name;

  /// The name used to identify this counter event in reports.
  ///
  /// Required.
  core.String? reportingName;

  $CounterEvent({
    this.name,
    this.reportingName,
  });

  $CounterEvent.fromJson(core.Map json_)
      : this(
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          reportingName: json_.containsKey('reportingName')
              ? json_['reportingName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (reportingName != null) 'reportingName': reportingName!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : CreateAssetRequest
/// - displayvideo:v3 : CreateAssetRequest
class $CreateAssetRequest {
  /// The filename of the asset, including the file extension.
  ///
  /// The filename must be UTF-8 encoded with a maximum size of 240 bytes.
  ///
  /// Required.
  core.String? filename;

  $CreateAssetRequest({
    this.filename,
  });

  $CreateAssetRequest.fromJson(core.Map json_)
      : this(
          filename: json_.containsKey('filename')
              ? json_['filename'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (filename != null) 'filename': filename!,
      };
}

/// Used by:
///
/// - dfareporting:v3.5 : CreativeAssetId
/// - dfareporting:v4 : CreativeAssetId
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

  $CreativeAssetId.fromJson(core.Map json_)
      : this(
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (type != null) 'type': type!,
      };
}

/// Used by:
///
/// - dfareporting:v3.5 : CreativeClickThroughUrl
/// - dfareporting:v4 : CreativeClickThroughUrl
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

  $CreativeClickThroughUrl.fromJson(core.Map json_)
      : this(
          computedClickThroughUrl: json_.containsKey('computedClickThroughUrl')
              ? json_['computedClickThroughUrl'] as core.String
              : null,
          customClickThroughUrl: json_.containsKey('customClickThroughUrl')
              ? json_['customClickThroughUrl'] as core.String
              : null,
          landingPageId: json_.containsKey('landingPageId')
              ? json_['landingPageId'] as core.String
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
  /// - "HMAC_SHA256" : HMAC-SHA256 signing with a 256 bit key.
  /// - "HMAC_SHA1" : HMAC-SHA1 signing with a 160 bit key.
  /// - "HMAC_SHA384" : HMAC-SHA384 signing with a 384 bit key.
  /// - "HMAC_SHA512" : HMAC-SHA512 signing with a 512 bit key.
  /// - "HMAC_SHA224" : HMAC-SHA224 signing with a 224 bit key.
  /// - "EXTERNAL_SYMMETRIC_ENCRYPTION" : Algorithm representing symmetric
  /// encryption by an external key manager.
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
  core.String? protectionLevel;

  $CryptoKeyVersionTemplate({
    this.algorithm,
    this.protectionLevel,
  });

  $CryptoKeyVersionTemplate.fromJson(core.Map json_)
      : this(
          algorithm: json_.containsKey('algorithm')
              ? json_['algorithm'] as core.String
              : null,
          protectionLevel: json_.containsKey('protectionLevel')
              ? json_['protectionLevel'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (algorithm != null) 'algorithm': algorithm!,
        if (protectionLevel != null) 'protectionLevel': protectionLevel!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : CustomBiddingScriptRef
/// - displayvideo:v3 : CustomBiddingScriptRef
class $CustomBiddingScriptRef {
  /// A resource name to be used in media.download to Download the script files.
  ///
  /// Or media.upload to Upload the script files. Resource names have the format
  /// `customBiddingAlgorithms/{custom_bidding_algorithm_id}/scriptRef/{ref_id}`.
  core.String? resourceName;

  $CustomBiddingScriptRef({
    this.resourceName,
  });

  $CustomBiddingScriptRef.fromJson(core.Map json_)
      : this(
          resourceName: json_.containsKey('resourceName')
              ? json_['resourceName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (resourceName != null) 'resourceName': resourceName!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : CustomLabel
/// - displayvideo:v3 : CustomLabel
class $CustomLabel {
  /// The key of the label.
  /// Possible string values are:
  /// - "CUSTOM_LABEL_KEY_UNSPECIFIED" : Not specified or unknown.
  /// - "CUSTOM_LABEL_KEY_0" : Key index 0.
  /// - "CUSTOM_LABEL_KEY_1" : Key index 1.
  /// - "CUSTOM_LABEL_KEY_2" : Key index 2.
  /// - "CUSTOM_LABEL_KEY_3" : Key index 3.
  /// - "CUSTOM_LABEL_KEY_4" : Key index 4.
  core.String? key;

  /// The value of the label.
  core.String? value;

  $CustomLabel({
    this.key,
    this.value,
  });

  $CustomLabel.fromJson(core.Map json_)
      : this(
          key: json_.containsKey('key') ? json_['key'] as core.String : null,
          value:
              json_.containsKey('value') ? json_['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (key != null) 'key': key!,
        if (value != null) 'value': value!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : CustomList
/// - displayvideo:v3 : CustomList
class $CustomList {
  /// The unique ID of the custom list.
  ///
  /// Assigned by the system.
  ///
  /// Output only.
  core.String? customListId;

  /// The display name of the custom list.
  ///
  /// .
  ///
  /// Output only.
  core.String? displayName;

  /// The resource name of the custom list.
  ///
  /// Output only.
  core.String? name;

  $CustomList({
    this.customListId,
    this.displayName,
    this.name,
  });

  $CustomList.fromJson(core.Map json_)
      : this(
          customListId: json_.containsKey('customListId')
              ? json_['customListId'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (customListId != null) 'customListId': customListId!,
        if (displayName != null) 'displayName': displayName!,
        if (name != null) 'name': name!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : CustomListTargetingSetting
/// - displayvideo:v3 : CustomListTargetingSetting
class $CustomListTargetingSetting {
  /// Custom id of custom list targeting setting.
  ///
  /// This id is custom_list_id.
  ///
  /// Required.
  core.String? customListId;

  $CustomListTargetingSetting({
    this.customListId,
  });

  $CustomListTargetingSetting.fromJson(core.Map json_)
      : this(
          customListId: json_.containsKey('customListId')
              ? json_['customListId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (customListId != null) 'customListId': customListId!,
      };
}

/// Used by:
///
/// - admob:v1 : Date
/// - adsense:v2 : Date
/// - aiplatform:v1 : GoogleTypeDate
/// - androidmanagement:v1 : Date
/// - appengine:v1 : Date
/// - billingbudgets:v1 : GoogleTypeDate
/// - businessprofileperformance:v1 : Date
/// - chromemanagement:v1 : GoogleTypeDate
/// - chromepolicy:v1 : GoogleTypeDate
/// - chromeuxreport:v1 : Date
/// - classroom:v1 : Date
/// - cloudasset:v1 : Date
/// - cloudchannel:v1 : GoogleTypeDate
/// - clouddeploy:v1 : Date
/// - cloudfunctions:v2 : Date
/// - composer:v1 : Date
/// - content:v2.1 : Date
/// - contentwarehouse:v1 : GoogleTypeDate
/// - displayvideo:v2 : Date
/// - displayvideo:v3 : Date
/// - dlp:v2 : GoogleTypeDate
/// - documentai:v1 : GoogleTypeDate
/// - doubleclickbidmanager:v2 : Date
/// - drivelabels:v2 : GoogleTypeDate
/// - gkebackup:v1 : Date
/// - looker:v1 : Date
/// - migrationcenter:v1 : Date
/// - mybusinessbusinessinformation:v1 : Date
/// - osconfig:v1 : Date
/// - people:v1 : Date
/// - places:v1 : GoogleTypeDate
/// - policysimulator:v1 : GoogleTypeDate
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

  $Date({
    this.day,
    this.month,
    this.year,
  });

  $Date.fromJson(core.Map json_)
      : this(
          day: json_.containsKey('day') ? json_['day'] as core.int : null,
          month: json_.containsKey('month') ? json_['month'] as core.int : null,
          year: json_.containsKey('year') ? json_['year'] as core.int : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (day != null) 'day': day!,
        if (month != null) 'month': month!,
        if (year != null) 'year': year!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : DayAndTimeAssignedTargetingOptionDetails
/// - displayvideo:v3 : DayAndTimeAssignedTargetingOptionDetails
class $DayAndTimeAssignedTargetingOptionDetails {
  /// The day of the week for this day and time targeting setting.
  ///
  /// Required.
  /// Possible string values are:
  /// - "DAY_OF_WEEK_UNSPECIFIED" : The day of the week is unspecified.
  /// - "MONDAY" : Monday
  /// - "TUESDAY" : Tuesday
  /// - "WEDNESDAY" : Wednesday
  /// - "THURSDAY" : Thursday
  /// - "FRIDAY" : Friday
  /// - "SATURDAY" : Saturday
  /// - "SUNDAY" : Sunday
  core.String? dayOfWeek;

  /// The end hour for day and time targeting.
  ///
  /// Must be between 1 (1 hour after start of day) and 24 (end of day).
  ///
  /// Required.
  core.int? endHour;

  /// The start hour for day and time targeting.
  ///
  /// Must be between 0 (start of day) and 23 (1 hour before end of day).
  ///
  /// Required.
  core.int? startHour;

  /// The mechanism used to determine which timezone to use for this day and
  /// time targeting setting.
  ///
  /// Required.
  /// Possible string values are:
  /// - "TIME_ZONE_RESOLUTION_UNSPECIFIED" : Time zone resolution is either
  /// unspecific or unknown.
  /// - "TIME_ZONE_RESOLUTION_END_USER" : Times are resolved in the time zone of
  /// the user that saw the ad.
  /// - "TIME_ZONE_RESOLUTION_ADVERTISER" : Times are resolved in the time zone
  /// of the advertiser that served the ad.
  core.String? timeZoneResolution;

  $DayAndTimeAssignedTargetingOptionDetails({
    this.dayOfWeek,
    this.endHour,
    this.startHour,
    this.timeZoneResolution,
  });

  $DayAndTimeAssignedTargetingOptionDetails.fromJson(core.Map json_)
      : this(
          dayOfWeek: json_.containsKey('dayOfWeek')
              ? json_['dayOfWeek'] as core.String
              : null,
          endHour: json_.containsKey('endHour')
              ? json_['endHour'] as core.int
              : null,
          startHour: json_.containsKey('startHour')
              ? json_['startHour'] as core.int
              : null,
          timeZoneResolution: json_.containsKey('timeZoneResolution')
              ? json_['timeZoneResolution'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dayOfWeek != null) 'dayOfWeek': dayOfWeek!,
        if (endHour != null) 'endHour': endHour!,
        if (startHour != null) 'startHour': startHour!,
        if (timeZoneResolution != null)
          'timeZoneResolution': timeZoneResolution!,
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

  $DebugInfo.fromJson(core.Map json_)
      : this(
          formattedDebugInfo: json_.containsKey('formattedDebugInfo')
              ? json_['formattedDebugInfo'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (formattedDebugInfo != null)
          'formattedDebugInfo': formattedDebugInfo!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : DeleteAssignedTargetingOptionsRequest
/// - displayvideo:v3 : DeleteAssignedTargetingOptionsRequest
class $DeleteAssignedTargetingOptionsRequest {
  /// The assigned targeting option IDs to delete.
  ///
  /// Required.
  core.List<core.String>? assignedTargetingOptionIds;

  /// Identifies the type of this assigned targeting option.
  ///
  /// Required.
  /// Possible string values are:
  /// - "TARGETING_TYPE_UNSPECIFIED" : Default value when type is not specified
  /// or is unknown in this version.
  /// - "TARGETING_TYPE_CHANNEL" : Target a channel (a custom group of related
  /// websites or apps).
  /// - "TARGETING_TYPE_APP_CATEGORY" : Target an app category (for example,
  /// education or puzzle games).
  /// - "TARGETING_TYPE_APP" : Target a specific app (for example, Angry Birds).
  /// - "TARGETING_TYPE_URL" : Target a specific url (for example, quora.com).
  /// - "TARGETING_TYPE_DAY_AND_TIME" : Target ads during a chosen time period
  /// on a specific day.
  /// - "TARGETING_TYPE_AGE_RANGE" : Target ads to a specific age range (for
  /// example, 18-24).
  /// - "TARGETING_TYPE_REGIONAL_LOCATION_LIST" : Target ads to the specified
  /// regions on a regional location list.
  /// - "TARGETING_TYPE_PROXIMITY_LOCATION_LIST" : Target ads to the specified
  /// points of interest on a proximity location list.
  /// - "TARGETING_TYPE_GENDER" : Target ads to a specific gender (for example,
  /// female or male).
  /// - "TARGETING_TYPE_VIDEO_PLAYER_SIZE" : Target a specific video player size
  /// for video ads.
  /// - "TARGETING_TYPE_USER_REWARDED_CONTENT" : Target user rewarded content
  /// for video ads.
  /// - "TARGETING_TYPE_PARENTAL_STATUS" : Target ads to a specific parental
  /// status (for example, parent or not a parent).
  /// - "TARGETING_TYPE_CONTENT_INSTREAM_POSITION" : Target video or audio ads
  /// in a specific content instream position (for example, pre-roll, mid-roll,
  /// or post-roll).
  /// - "TARGETING_TYPE_CONTENT_OUTSTREAM_POSITION" : Target ads in a specific
  /// content outstream position.
  /// - "TARGETING_TYPE_DEVICE_TYPE" : Target ads to a specific device type (for
  /// example, tablet or connected TV).
  /// - "TARGETING_TYPE_AUDIENCE_GROUP" : Target ads to an audience or groups of
  /// audiences. Singleton field, at most one can exist on a single Lineitem at
  /// a time.
  /// - "TARGETING_TYPE_BROWSER" : Target ads to specific web browsers (for
  /// example, Chrome).
  /// - "TARGETING_TYPE_HOUSEHOLD_INCOME" : Target ads to a specific household
  /// income range (for example, top 10%).
  /// - "TARGETING_TYPE_ON_SCREEN_POSITION" : Target ads in a specific on screen
  /// position.
  /// - "TARGETING_TYPE_THIRD_PARTY_VERIFIER" : Filter web sites through third
  /// party verification (for example, IAS or DoubleVerify).
  /// - "TARGETING_TYPE_DIGITAL_CONTENT_LABEL_EXCLUSION" : Filter web sites by
  /// specific digital content label ratings (for example, DL-MA: suitable only
  /// for mature audiences).
  /// - "TARGETING_TYPE_SENSITIVE_CATEGORY_EXCLUSION" : Filter website content
  /// by sensitive categories (for example, adult).
  /// - "TARGETING_TYPE_ENVIRONMENT" : Target ads to a specific environment (for
  /// example, web or app).
  /// - "TARGETING_TYPE_CARRIER_AND_ISP" : Target ads to a specific network
  /// carrier or internet service provider (ISP) (for example, Comcast or
  /// Orange).
  /// - "TARGETING_TYPE_OPERATING_SYSTEM" : Target ads to a specific operating
  /// system (for example, macOS).
  /// - "TARGETING_TYPE_DEVICE_MAKE_MODEL" : Target ads to a specific device
  /// make or model (for example, Roku or Samsung).
  /// - "TARGETING_TYPE_KEYWORD" : Target ads to a specific keyword (for
  /// example, dog or retriever).
  /// - "TARGETING_TYPE_NEGATIVE_KEYWORD_LIST" : Target ads to a specific
  /// negative keyword list.
  /// - "TARGETING_TYPE_VIEWABILITY" : Target ads to a specific viewability (for
  /// example, 80% viewable).
  /// - "TARGETING_TYPE_CATEGORY" : Target ads to a specific content category
  /// (for example, arts & entertainment).
  /// - "TARGETING_TYPE_INVENTORY_SOURCE" : Purchase impressions from specific
  /// deals and auction packages.
  /// - "TARGETING_TYPE_LANGUAGE" : Target ads to a specific language (for
  /// example, English or Japanese).
  /// - "TARGETING_TYPE_AUTHORIZED_SELLER_STATUS" : Target ads to ads.txt
  /// authorized sellers. If no targeting option of this type is assigned, the
  /// resource uses the "Authorized Direct Sellers and Resellers" option by
  /// default.
  /// - "TARGETING_TYPE_GEO_REGION" : Target ads to a specific regional location
  /// (for example, a city or state).
  /// - "TARGETING_TYPE_INVENTORY_SOURCE_GROUP" : Purchase impressions from a
  /// group of deals and auction packages.
  /// - "TARGETING_TYPE_EXCHANGE" : Purchase impressions from specific
  /// exchanges.
  /// - "TARGETING_TYPE_SUB_EXCHANGE" : Purchase impressions from specific
  /// sub-exchanges.
  /// - "TARGETING_TYPE_POI" : Target ads around a specific point of interest,
  /// such as a notable building, a street address, or latitude/longitude
  /// coordinates.
  /// - "TARGETING_TYPE_BUSINESS_CHAIN" : Target ads around locations of a
  /// business chain within a specific geo region.
  /// - "TARGETING_TYPE_CONTENT_DURATION" : Target ads to a specific video
  /// content duration.
  /// - "TARGETING_TYPE_CONTENT_STREAM_TYPE" : Target ads to a specific video
  /// content stream type.
  /// - "TARGETING_TYPE_NATIVE_CONTENT_POSITION" : Target ads to a specific
  /// native content position.
  /// - "TARGETING_TYPE_OMID" : Target ads in an Open Measurement enabled
  /// inventory.
  /// - "TARGETING_TYPE_AUDIO_CONTENT_TYPE" : Target ads to a specific audio
  /// content type.
  /// - "TARGETING_TYPE_CONTENT_GENRE" : Target ads to a specific content genre.
  /// - "TARGETING_TYPE_YOUTUBE_VIDEO" : Target ads to a specific YouTube video.
  /// Targeting of this type cannot be created or updated using the API.
  /// Although this targeting is inherited by child resources, **inherited
  /// targeting of this type will not be retrieveable**.
  /// - "TARGETING_TYPE_YOUTUBE_CHANNEL" : Target ads to a specific YouTube
  /// channel. Targeting of this type cannot be created or updated using the
  /// API. Although this targeting is inherited by child resources, **inherited
  /// targeting of this type will not be retrieveable**.
  /// - "TARGETING_TYPE_SESSION_POSITION" : Target ads to a serve it in a
  /// certain position of a session. Only supported for Ad Group resources under
  /// YouTube Programmatic Reservation line items. Targeting of this type cannot
  /// be created or updated using the API.
  core.String? targetingType;

  $DeleteAssignedTargetingOptionsRequest({
    this.assignedTargetingOptionIds,
    this.targetingType,
  });

  $DeleteAssignedTargetingOptionsRequest.fromJson(core.Map json_)
      : this(
          assignedTargetingOptionIds:
              json_.containsKey('assignedTargetingOptionIds')
                  ? (json_['assignedTargetingOptionIds'] as core.List)
                      .map((value) => value as core.String)
                      .toList()
                  : null,
          targetingType: json_.containsKey('targetingType')
              ? json_['targetingType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (assignedTargetingOptionIds != null)
          'assignedTargetingOptionIds': assignedTargetingOptionIds!,
        if (targetingType != null) 'targetingType': targetingType!,
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

  $DeploymentOccurrence.fromJson(core.Map json_)
      : this(
          address: json_.containsKey('address')
              ? json_['address'] as core.String
              : null,
          config: json_.containsKey('config')
              ? json_['config'] as core.String
              : null,
          deployTime: json_.containsKey('deployTime')
              ? json_['deployTime'] as core.String
              : null,
          platform: json_.containsKey('platform')
              ? json_['platform'] as core.String
              : null,
          resourceUri: json_.containsKey('resourceUri')
              ? (json_['resourceUri'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          undeployTime: json_.containsKey('undeployTime')
              ? json_['undeployTime'] as core.String
              : null,
          userEmail: json_.containsKey('userEmail')
              ? json_['userEmail'] as core.String
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
/// - displayvideo:v2 : DeviceMakeModelAssignedTargetingOptionDetails
/// - displayvideo:v3 : DeviceMakeModelAssignedTargetingOptionDetails
class $DeviceMakeModelAssignedTargetingOptionDetails {
  /// The display name of the device make and model.
  ///
  /// Output only.
  core.String? displayName;

  /// Indicates if this option is being negatively targeted.
  core.bool? negative;

  /// The targeting_option_id field when targeting_type is
  /// `TARGETING_TYPE_DEVICE_MAKE_MODEL`.
  ///
  /// Required.
  core.String? targetingOptionId;

  $DeviceMakeModelAssignedTargetingOptionDetails({
    this.displayName,
    this.negative,
    this.targetingOptionId,
  });

  $DeviceMakeModelAssignedTargetingOptionDetails.fromJson(core.Map json_)
      : this(
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          negative: json_.containsKey('negative')
              ? json_['negative'] as core.bool
              : null,
          targetingOptionId: json_.containsKey('targetingOptionId')
              ? json_['targetingOptionId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (negative != null) 'negative': negative!,
        if (targetingOptionId != null) 'targetingOptionId': targetingOptionId!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : DeviceMakeModelTargetingOptionDetails
/// - displayvideo:v3 : DeviceMakeModelTargetingOptionDetails
class $DeviceMakeModelTargetingOptionDetails {
  /// The display name of the device make and model.
  ///
  /// Output only.
  core.String? displayName;

  $DeviceMakeModelTargetingOptionDetails({
    this.displayName,
  });

  $DeviceMakeModelTargetingOptionDetails.fromJson(core.Map json_)
      : this(
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : DeviceTypeAssignedTargetingOptionDetails
/// - displayvideo:v3 : DeviceTypeAssignedTargetingOptionDetails
class $DeviceTypeAssignedTargetingOptionDetails {
  /// The display name of the device type.
  ///
  /// Required.
  /// Possible string values are:
  /// - "DEVICE_TYPE_UNSPECIFIED" : Default value when device type is not
  /// specified in this version. This enum is a placeholder for default value
  /// and does not represent a real device type option.
  /// - "DEVICE_TYPE_COMPUTER" : Computer.
  /// - "DEVICE_TYPE_CONNECTED_TV" : Connected TV.
  /// - "DEVICE_TYPE_SMART_PHONE" : Smart phone.
  /// - "DEVICE_TYPE_TABLET" : Tablet.
  core.String? deviceType;

  /// Bid multiplier allows you to show your ads more or less frequently based
  /// on the device type.
  ///
  /// It will apply a multiplier on the original bid price. When this field is
  /// 0, it indicates this field is not applicable instead of multiplying 0 on
  /// the original bid price. For example, if the bid price without multiplier
  /// is $10.0 and the multiplier is 1.5 for Tablet, the resulting bid price for
  /// Tablet will be $15.0. Only applicable to YouTube and Partners line items.
  ///
  /// Output only.
  core.double? youtubeAndPartnersBidMultiplier;

  $DeviceTypeAssignedTargetingOptionDetails({
    this.deviceType,
    this.youtubeAndPartnersBidMultiplier,
  });

  $DeviceTypeAssignedTargetingOptionDetails.fromJson(core.Map json_)
      : this(
          deviceType: json_.containsKey('deviceType')
              ? json_['deviceType'] as core.String
              : null,
          youtubeAndPartnersBidMultiplier:
              json_.containsKey('youtubeAndPartnersBidMultiplier')
                  ? (json_['youtubeAndPartnersBidMultiplier'] as core.num)
                      .toDouble()
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (deviceType != null) 'deviceType': deviceType!,
        if (youtubeAndPartnersBidMultiplier != null)
          'youtubeAndPartnersBidMultiplier': youtubeAndPartnersBidMultiplier!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : DeviceTypeTargetingOptionDetails
/// - displayvideo:v3 : DeviceTypeTargetingOptionDetails
class $DeviceTypeTargetingOptionDetails {
  /// The device type that is used to be targeted.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "DEVICE_TYPE_UNSPECIFIED" : Default value when device type is not
  /// specified in this version. This enum is a placeholder for default value
  /// and does not represent a real device type option.
  /// - "DEVICE_TYPE_COMPUTER" : Computer.
  /// - "DEVICE_TYPE_CONNECTED_TV" : Connected TV.
  /// - "DEVICE_TYPE_SMART_PHONE" : Smart phone.
  /// - "DEVICE_TYPE_TABLET" : Tablet.
  core.String? deviceType;

  $DeviceTypeTargetingOptionDetails({
    this.deviceType,
  });

  $DeviceTypeTargetingOptionDetails.fromJson(core.Map json_)
      : this(
          deviceType: json_.containsKey('deviceType')
              ? json_['deviceType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (deviceType != null) 'deviceType': deviceType!,
      };
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

  $DiffVersionResponse({
    this.objectSizeBytes,
    this.objectVersion,
  });

  $DiffVersionResponse.fromJson(core.Map json_)
      : this(
          objectSizeBytes: json_.containsKey('objectSizeBytes')
              ? json_['objectSizeBytes'] as core.String
              : null,
          objectVersion: json_.containsKey('objectVersion')
              ? json_['objectVersion'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (objectSizeBytes != null) 'objectSizeBytes': objectSizeBytes!,
        if (objectVersion != null) 'objectVersion': objectVersion!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : DigitalContentLabelAssignedTargetingOptionDetails
/// - displayvideo:v3 : DigitalContentLabelAssignedTargetingOptionDetails
class $DigitalContentLabelAssignedTargetingOptionDetails {
  /// The display name of the digital content label rating tier to be EXCLUDED.
  ///
  /// Required.
  /// Possible string values are:
  /// - "CONTENT_RATING_TIER_UNSPECIFIED" : Content label is not specified in
  /// this version. This enum is a place holder for a default value and does not
  /// represent a real content rating.
  /// - "CONTENT_RATING_TIER_UNRATED" : Content that has not been labeled.
  /// - "CONTENT_RATING_TIER_GENERAL" : Content suitable for general audiences.
  /// - "CONTENT_RATING_TIER_PARENTAL_GUIDANCE" : Content suitable for most
  /// audiences with parental guidance.
  /// - "CONTENT_RATING_TIER_TEENS" : Content suitable for teen and older
  /// audiences.
  /// - "CONTENT_RATING_TIER_MATURE" : Content suitable only for mature
  /// audiences.
  /// - "CONTENT_RATING_TIER_FAMILIES" : Content suitable for family audiences.
  /// It is a subset of CONTENT_RATING_TIER_GENERAL. Only applicable to YouTube
  /// and Partners line items.
  core.String? excludedContentRatingTier;

  $DigitalContentLabelAssignedTargetingOptionDetails({
    this.excludedContentRatingTier,
  });

  $DigitalContentLabelAssignedTargetingOptionDetails.fromJson(core.Map json_)
      : this(
          excludedContentRatingTier:
              json_.containsKey('excludedContentRatingTier')
                  ? json_['excludedContentRatingTier'] as core.String
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (excludedContentRatingTier != null)
          'excludedContentRatingTier': excludedContentRatingTier!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : DigitalContentLabelTargetingOptionDetails
/// - displayvideo:v3 : DigitalContentLabelTargetingOptionDetails
class $DigitalContentLabelTargetingOptionDetails {
  /// An enum for the content label brand safety tiers.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "CONTENT_RATING_TIER_UNSPECIFIED" : Content label is not specified in
  /// this version. This enum is a place holder for a default value and does not
  /// represent a real content rating.
  /// - "CONTENT_RATING_TIER_UNRATED" : Content that has not been labeled.
  /// - "CONTENT_RATING_TIER_GENERAL" : Content suitable for general audiences.
  /// - "CONTENT_RATING_TIER_PARENTAL_GUIDANCE" : Content suitable for most
  /// audiences with parental guidance.
  /// - "CONTENT_RATING_TIER_TEENS" : Content suitable for teen and older
  /// audiences.
  /// - "CONTENT_RATING_TIER_MATURE" : Content suitable only for mature
  /// audiences.
  /// - "CONTENT_RATING_TIER_FAMILIES" : Content suitable for family audiences.
  /// It is a subset of CONTENT_RATING_TIER_GENERAL. Only applicable to YouTube
  /// and Partners line items.
  core.String? contentRatingTier;

  $DigitalContentLabelTargetingOptionDetails({
    this.contentRatingTier,
  });

  $DigitalContentLabelTargetingOptionDetails.fromJson(core.Map json_)
      : this(
          contentRatingTier: json_.containsKey('contentRatingTier')
              ? json_['contentRatingTier'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (contentRatingTier != null) 'contentRatingTier': contentRatingTier!,
      };
}

/// Used by:
///
/// - dfareporting:v3.5 : DimensionValue
/// - dfareporting:v4 : DimensionValue
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

  $DimensionValue.fromJson(core.Map json_)
      : this(
          dimensionName: json_.containsKey('dimensionName')
              ? json_['dimensionName'] as core.String
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          matchType: json_.containsKey('matchType')
              ? json_['matchType'] as core.String
              : null,
          value:
              json_.containsKey('value') ? json_['value'] as core.String : null,
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
/// - displayvideo:v2 : Dimensions
/// - displayvideo:v3 : Dimensions
class $Dimensions {
  /// The height in pixels.
  core.int? heightPixels;

  /// The width in pixels.
  core.int? widthPixels;

  $Dimensions({
    this.heightPixels,
    this.widthPixels,
  });

  $Dimensions.fromJson(core.Map json_)
      : this(
          heightPixels: json_.containsKey('heightPixels')
              ? json_['heightPixels'] as core.int
              : null,
          widthPixels: json_.containsKey('widthPixels')
              ? json_['widthPixels'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (heightPixels != null) 'heightPixels': heightPixels!,
        if (widthPixels != null) 'widthPixels': widthPixels!,
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

  $DiscoverySpecCsvOptions.fromJson(core.Map json_)
      : this(
          delimiter: json_.containsKey('delimiter')
              ? json_['delimiter'] as core.String
              : null,
          disableTypeInference: json_.containsKey('disableTypeInference')
              ? json_['disableTypeInference'] as core.bool
              : null,
          encoding: json_.containsKey('encoding')
              ? json_['encoding'] as core.String
              : null,
          headerRows: json_.containsKey('headerRows')
              ? json_['headerRows'] as core.int
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

  $DiscoverySpecJsonOptions.fromJson(core.Map json_)
      : this(
          disableTypeInference: json_.containsKey('disableTypeInference')
              ? json_['disableTypeInference'] as core.bool
              : null,
          encoding: json_.containsKey('encoding')
              ? json_['encoding'] as core.String
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

  $DisksRemoveResourcePoliciesRequest.fromJson(core.Map json_)
      : this(
          resourcePolicies: json_.containsKey('resourcePolicies')
              ? (json_['resourcePolicies'] as core.List)
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
/// - compute:v1 : DisksStartAsyncReplicationRequest
/// - compute:v1 : RegionDisksStartAsyncReplicationRequest
class $DisksStartAsyncReplicationRequest {
  /// The secondary disk to start asynchronous replication to.
  ///
  /// You can provide this as a partial or full URL to the resource. For
  /// example, the following are valid values: -
  /// https://www.googleapis.com/compute/v1/projects/project/zones/zone
  /// /disks/disk -
  /// https://www.googleapis.com/compute/v1/projects/project/regions/region
  /// /disks/disk - projects/project/zones/zone/disks/disk -
  /// projects/project/regions/region/disks/disk - zones/zone/disks/disk -
  /// regions/region/disks/disk
  core.String? asyncSecondaryDisk;

  $DisksStartAsyncReplicationRequest({
    this.asyncSecondaryDisk,
  });

  $DisksStartAsyncReplicationRequest.fromJson(core.Map json_)
      : this(
          asyncSecondaryDisk: json_.containsKey('asyncSecondaryDisk')
              ? json_['asyncSecondaryDisk'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (asyncSecondaryDisk != null)
          'asyncSecondaryDisk': asyncSecondaryDisk!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : DisplayVideoSourceAd
/// - displayvideo:v3 : DisplayVideoSourceAd
class $DisplayVideoSourceAd {
  /// The ID of the source creative.
  core.String? creativeId;

  $DisplayVideoSourceAd({
    this.creativeId,
  });

  $DisplayVideoSourceAd.fromJson(core.Map json_)
      : this(
          creativeId: json_.containsKey('creativeId')
              ? json_['creativeId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (creativeId != null) 'creativeId': creativeId!,
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

  /// String of comma or space separated case-sensitive words for which
  /// method/field name replacement will be disabled by go/api-docgen.
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
          deprecationDescription: json_.containsKey('deprecationDescription')
              ? json_['deprecationDescription'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          disableReplacementWords: json_.containsKey('disableReplacementWords')
              ? json_['disableReplacementWords'] as core.String
              : null,
          selector: json_.containsKey('selector')
              ? json_['selector'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (deprecationDescription != null)
          'deprecationDescription': deprecationDescription!,
        if (description != null) 'description': description!,
        if (disableReplacementWords != null)
          'disableReplacementWords': disableReplacementWords!,
        if (selector != null) 'selector': selector!,
      };
}

/// Used by:
///
/// - trafficdirector:v2 : DoubleRange
/// - trafficdirector:v3 : DoubleRange
class $DoubleRange {
  /// end of the range (exclusive)
  core.double? end;

  /// start of the range (inclusive)
  core.double? start;

  $DoubleRange({
    this.end,
    this.start,
  });

  $DoubleRange.fromJson(core.Map json_)
      : this(
          end: json_.containsKey('end')
              ? (json_['end'] as core.num).toDouble()
              : null,
          start: json_.containsKey('start')
              ? (json_['start'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (end != null) 'end': end!,
        if (start != null) 'start': start!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : DoubleVerifyAppStarRating
/// - displayvideo:v3 : DoubleVerifyAppStarRating
class $DoubleVerifyAppStarRating {
  /// Avoid bidding on apps with insufficient star ratings.
  core.bool? avoidInsufficientStarRating;

  /// Avoid bidding on apps with the star ratings.
  /// Possible string values are:
  /// - "APP_STAR_RATE_UNSPECIFIED" : This enum is only a placeholder and it
  /// doesn't specify any app star rating options.
  /// - "APP_STAR_RATE_1_POINT_5_LESS" : Official Apps with rating \< 1.5 Stars.
  /// - "APP_STAR_RATE_2_LESS" : Official Apps with rating \< 2 Stars.
  /// - "APP_STAR_RATE_2_POINT_5_LESS" : Official Apps with rating \< 2.5 Stars.
  /// - "APP_STAR_RATE_3_LESS" : Official Apps with rating \< 3 Stars.
  /// - "APP_STAR_RATE_3_POINT_5_LESS" : Official Apps with rating \< 3.5 Stars.
  /// - "APP_STAR_RATE_4_LESS" : Official Apps with rating \< 4 Stars.
  /// - "APP_STAR_RATE_4_POINT_5_LESS" : Official Apps with rating \< 4.5 Stars.
  core.String? avoidedStarRating;

  $DoubleVerifyAppStarRating({
    this.avoidInsufficientStarRating,
    this.avoidedStarRating,
  });

  $DoubleVerifyAppStarRating.fromJson(core.Map json_)
      : this(
          avoidInsufficientStarRating:
              json_.containsKey('avoidInsufficientStarRating')
                  ? json_['avoidInsufficientStarRating'] as core.bool
                  : null,
          avoidedStarRating: json_.containsKey('avoidedStarRating')
              ? json_['avoidedStarRating'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (avoidInsufficientStarRating != null)
          'avoidInsufficientStarRating': avoidInsufficientStarRating!,
        if (avoidedStarRating != null) 'avoidedStarRating': avoidedStarRating!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : DoubleVerifyBrandSafetyCategories
/// - displayvideo:v3 : DoubleVerifyBrandSafetyCategories
class $DoubleVerifyBrandSafetyCategories {
  /// Unknown or unrateable.
  core.bool? avoidUnknownBrandSafetyCategory;

  /// Brand safety high severity avoidance categories.
  core.List<core.String>? avoidedHighSeverityCategories;

  /// Brand safety medium severity avoidance categories.
  core.List<core.String>? avoidedMediumSeverityCategories;

  $DoubleVerifyBrandSafetyCategories({
    this.avoidUnknownBrandSafetyCategory,
    this.avoidedHighSeverityCategories,
    this.avoidedMediumSeverityCategories,
  });

  $DoubleVerifyBrandSafetyCategories.fromJson(core.Map json_)
      : this(
          avoidUnknownBrandSafetyCategory:
              json_.containsKey('avoidUnknownBrandSafetyCategory')
                  ? json_['avoidUnknownBrandSafetyCategory'] as core.bool
                  : null,
          avoidedHighSeverityCategories:
              json_.containsKey('avoidedHighSeverityCategories')
                  ? (json_['avoidedHighSeverityCategories'] as core.List)
                      .map((value) => value as core.String)
                      .toList()
                  : null,
          avoidedMediumSeverityCategories:
              json_.containsKey('avoidedMediumSeverityCategories')
                  ? (json_['avoidedMediumSeverityCategories'] as core.List)
                      .map((value) => value as core.String)
                      .toList()
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (avoidUnknownBrandSafetyCategory != null)
          'avoidUnknownBrandSafetyCategory': avoidUnknownBrandSafetyCategory!,
        if (avoidedHighSeverityCategories != null)
          'avoidedHighSeverityCategories': avoidedHighSeverityCategories!,
        if (avoidedMediumSeverityCategories != null)
          'avoidedMediumSeverityCategories': avoidedMediumSeverityCategories!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : DoubleVerifyDisplayViewability
/// - displayvideo:v3 : DoubleVerifyDisplayViewability
class $DoubleVerifyDisplayViewability {
  /// Target web and app inventory to maximize IAB viewable rate.
  /// Possible string values are:
  /// - "IAB_VIEWED_RATE_UNSPECIFIED" : This enum is only a placeholder and it
  /// doesn't specify any IAB viewed rate options.
  /// - "IAB_VIEWED_RATE_80_PERCENT_HIGHER" : Target web and app inventory to
  /// maximize IAB viewable rate 80% or higher.
  /// - "IAB_VIEWED_RATE_75_PERCENT_HIGHER" : Target web and app inventory to
  /// maximize IAB viewable rate 75% or higher.
  /// - "IAB_VIEWED_RATE_70_PERCENT_HIGHER" : Target web and app inventory to
  /// maximize IAB viewable rate 70% or higher.
  /// - "IAB_VIEWED_RATE_65_PERCENT_HIGHER" : Target web and app inventory to
  /// maximize IAB viewable rate 65% or higher.
  /// - "IAB_VIEWED_RATE_60_PERCENT_HIGHER" : Target web and app inventory to
  /// maximize IAB viewable rate 60% or higher.
  /// - "IAB_VIEWED_RATE_55_PERCENT_HIGHER" : Target web and app inventory to
  /// maximize IAB viewable rate 55% or higher.
  /// - "IAB_VIEWED_RATE_50_PERCENT_HIGHER" : Target web and app inventory to
  /// maximize IAB viewable rate 50% or higher.
  /// - "IAB_VIEWED_RATE_40_PERCENT_HIGHER" : Target web and app inventory to
  /// maximize IAB viewable rate 40% or higher.
  /// - "IAB_VIEWED_RATE_30_PERCENT_HIGHER" : Target web and app inventory to
  /// maximize IAB viewable rate 30% or higher.
  core.String? iab;

  /// Target web and app inventory to maximize 100% viewable duration.
  /// Possible string values are:
  /// - "AVERAGE_VIEW_DURATION_UNSPECIFIED" : This enum is only a placeholder
  /// and it doesn't specify any average view duration options.
  /// - "AVERAGE_VIEW_DURATION_5_SEC" : Target web and app inventory to maximize
  /// 100% viewable duration 5 seconds or more.
  /// - "AVERAGE_VIEW_DURATION_10_SEC" : Target web and app inventory to
  /// maximize 100% viewable duration 10 seconds or more.
  /// - "AVERAGE_VIEW_DURATION_15_SEC" : Target web and app inventory to
  /// maximize 100% viewable duration 15 seconds or more.
  core.String? viewableDuring;

  $DoubleVerifyDisplayViewability({
    this.iab,
    this.viewableDuring,
  });

  $DoubleVerifyDisplayViewability.fromJson(core.Map json_)
      : this(
          iab: json_.containsKey('iab') ? json_['iab'] as core.String : null,
          viewableDuring: json_.containsKey('viewableDuring')
              ? json_['viewableDuring'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (iab != null) 'iab': iab!,
        if (viewableDuring != null) 'viewableDuring': viewableDuring!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : DoubleVerifyFraudInvalidTraffic
/// - displayvideo:v3 : DoubleVerifyFraudInvalidTraffic
class $DoubleVerifyFraudInvalidTraffic {
  /// Insufficient Historical Fraud & IVT Stats.
  core.bool? avoidInsufficientOption;

  /// Avoid Sites and Apps with historical Fraud & IVT.
  /// Possible string values are:
  /// - "FRAUD_UNSPECIFIED" : This enum is only a placeholder and it doesn't
  /// specify any fraud and invalid traffic options.
  /// - "AD_IMPRESSION_FRAUD_100" : 100% Fraud & IVT.
  /// - "AD_IMPRESSION_FRAUD_50" : 50% or Higher Fraud & IVT.
  /// - "AD_IMPRESSION_FRAUD_25" : 25% or Higher Fraud & IVT.
  /// - "AD_IMPRESSION_FRAUD_10" : 10% or Higher Fraud & IVT.
  /// - "AD_IMPRESSION_FRAUD_8" : 8% or Higher Fraud & IVT.
  /// - "AD_IMPRESSION_FRAUD_6" : 6% or Higher Fraud & IVT.
  /// - "AD_IMPRESSION_FRAUD_4" : 4% or Higher Fraud & IVT.
  /// - "AD_IMPRESSION_FRAUD_2" : 2% or Higher Fraud & IVT.
  core.String? avoidedFraudOption;

  $DoubleVerifyFraudInvalidTraffic({
    this.avoidInsufficientOption,
    this.avoidedFraudOption,
  });

  $DoubleVerifyFraudInvalidTraffic.fromJson(core.Map json_)
      : this(
          avoidInsufficientOption: json_.containsKey('avoidInsufficientOption')
              ? json_['avoidInsufficientOption'] as core.bool
              : null,
          avoidedFraudOption: json_.containsKey('avoidedFraudOption')
              ? json_['avoidedFraudOption'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (avoidInsufficientOption != null)
          'avoidInsufficientOption': avoidInsufficientOption!,
        if (avoidedFraudOption != null)
          'avoidedFraudOption': avoidedFraudOption!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : DoubleVerifyVideoViewability
/// - displayvideo:v3 : DoubleVerifyVideoViewability
class $DoubleVerifyVideoViewability {
  /// Target inventory to maximize impressions with 400x300 or greater player
  /// size.
  /// Possible string values are:
  /// - "PLAYER_SIZE_400X300_UNSPECIFIED" : This enum is only a placeholder and
  /// it doesn't specify any impressions options.
  /// - "PLAYER_SIZE_400X300_95" : Sites with 95%+ of impressions.
  /// - "PLAYER_SIZE_400X300_70" : Sites with 70%+ of impressions.
  /// - "PLAYER_SIZE_400X300_25" : Sites with 25%+ of impressions.
  /// - "PLAYER_SIZE_400X300_5" : Sites with 5%+ of impressions.
  core.String? playerImpressionRate;

  /// Target web inventory to maximize IAB viewable rate.
  /// Possible string values are:
  /// - "VIDEO_IAB_UNSPECIFIED" : This enum is only a placeholder and it doesn't
  /// specify any video IAB viewable rate options.
  /// - "IAB_VIEWABILITY_80_PERCENT_HIGHER" : Target web and app inventory to
  /// maximize IAB viewable rate 80% or higher.
  /// - "IAB_VIEWABILITY_75_PERCENT_HIGHER" : Target web and app inventory to
  /// maximize IAB viewable rate 75% or higher.
  /// - "IAB_VIEWABILITY_70_PERCENT_HIGHER" : Target web and app inventory to
  /// maximize IAB viewable rate 70% or higher.
  /// - "IAB_VIEWABILITY_65_PERCENT_HIHGER" : Target web and app inventory to
  /// maximize IAB viewable rate 65% or higher.
  /// - "IAB_VIEWABILITY_60_PERCENT_HIGHER" : Target web and app inventory to
  /// maximize IAB viewable rate 60% or higher.
  /// - "IAB_VIEWABILITY_55_PERCENT_HIHGER" : Target web and app inventory to
  /// maximize IAB viewable rate 55% or higher.
  /// - "IAB_VIEWABILITY_50_PERCENT_HIGHER" : Target web and app inventory to
  /// maximize IAB viewable rate 50% or higher.
  /// - "IAB_VIEWABILITY_40_PERCENT_HIHGER" : Target web and app inventory to
  /// maximize IAB viewable rate 40% or higher.
  /// - "IAB_VIEWABILITY_30_PERCENT_HIHGER" : Target web and app inventory to
  /// maximize IAB viewable rate 30% or higher.
  core.String? videoIab;

  /// Target web inventory to maximize fully viewable rate.
  /// Possible string values are:
  /// - "VIDEO_VIEWABLE_RATE_UNSPECIFIED" : This enum is only a placeholder and
  /// it doesn't specify any video viewable rate options.
  /// - "VIEWED_PERFORMANCE_40_PERCENT_HIGHER" : Target web inventory to
  /// maximize fully viewable rate 40% or higher.
  /// - "VIEWED_PERFORMANCE_35_PERCENT_HIGHER" : Target web inventory to
  /// maximize fully viewable rate 35% or higher.
  /// - "VIEWED_PERFORMANCE_30_PERCENT_HIGHER" : Target web inventory to
  /// maximize fully viewable rate 30% or higher.
  /// - "VIEWED_PERFORMANCE_25_PERCENT_HIGHER" : Target web inventory to
  /// maximize fully viewable rate 25% or higher.
  /// - "VIEWED_PERFORMANCE_20_PERCENT_HIGHER" : Target web inventory to
  /// maximize fully viewable rate 20% or higher.
  /// - "VIEWED_PERFORMANCE_10_PERCENT_HIGHER" : Target web inventory to
  /// maximize fully viewable rate 10% or higher.
  core.String? videoViewableRate;

  $DoubleVerifyVideoViewability({
    this.playerImpressionRate,
    this.videoIab,
    this.videoViewableRate,
  });

  $DoubleVerifyVideoViewability.fromJson(core.Map json_)
      : this(
          playerImpressionRate: json_.containsKey('playerImpressionRate')
              ? json_['playerImpressionRate'] as core.String
              : null,
          videoIab: json_.containsKey('videoIab')
              ? json_['videoIab'] as core.String
              : null,
          videoViewableRate: json_.containsKey('videoViewableRate')
              ? json_['videoViewableRate'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (playerImpressionRate != null)
          'playerImpressionRate': playerImpressionRate!,
        if (videoIab != null) 'videoIab': videoIab!,
        if (videoViewableRate != null) 'videoViewableRate': videoViewableRate!,
      };
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

  $DownloadParameters({
    this.allowGzipCompression,
    this.ignoreRange,
  });

  $DownloadParameters.fromJson(core.Map json_)
      : this(
          allowGzipCompression: json_.containsKey('allowGzipCompression')
              ? json_['allowGzipCompression'] as core.bool
              : null,
          ignoreRange: json_.containsKey('ignoreRange')
              ? json_['ignoreRange'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowGzipCompression != null)
          'allowGzipCompression': allowGzipCompression!,
        if (ignoreRange != null) 'ignoreRange': ignoreRange!,
      };
}

/// Used by:
///
/// - gkeonprem:v1 : BareMetalAdminDrainedMachine
/// - gkeonprem:v1 : BareMetalDrainedMachine
class $DrainedMachine {
  /// Drained machine IP address.
  core.String? nodeIp;

  $DrainedMachine({
    this.nodeIp,
  });

  $DrainedMachine.fromJson(core.Map json_)
      : this(
          nodeIp: json_.containsKey('nodeIp')
              ? json_['nodeIp'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nodeIp != null) 'nodeIp': nodeIp!,
      };
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

  $DrainingMachine({
    this.nodeIp,
    this.podCount,
  });

  $DrainingMachine.fromJson(core.Map json_)
      : this(
          nodeIp: json_.containsKey('nodeIp')
              ? json_['nodeIp'] as core.String
              : null,
          podCount: json_.containsKey('podCount')
              ? json_['podCount'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nodeIp != null) 'nodeIp': nodeIp!,
        if (podCount != null) 'podCount': podCount!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : DuplicateLineItemRequest
/// - displayvideo:v3 : DuplicateLineItemRequest
class $DuplicateLineItemRequest {
  /// The display name of the new line item.
  ///
  /// Must be UTF-8 encoded with a maximum size of 240 bytes.
  core.String? targetDisplayName;

  $DuplicateLineItemRequest({
    this.targetDisplayName,
  });

  $DuplicateLineItemRequest.fromJson(core.Map json_)
      : this(
          targetDisplayName: json_.containsKey('targetDisplayName')
              ? json_['targetDisplayName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (targetDisplayName != null) 'targetDisplayName': targetDisplayName!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : DuplicateLineItemResponse
/// - displayvideo:v3 : DuplicateLineItemResponse
class $DuplicateLineItemResponse {
  /// The ID of the created line item.
  core.String? duplicateLineItemId;

  $DuplicateLineItemResponse({
    this.duplicateLineItemId,
  });

  $DuplicateLineItemResponse.fromJson(core.Map json_)
      : this(
          duplicateLineItemId: json_.containsKey('duplicateLineItemId')
              ? json_['duplicateLineItemId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (duplicateLineItemId != null)
          'duplicateLineItemId': duplicateLineItemId!,
      };
}

/// Used by:
///
/// - trafficdirector:v2 : DynamicListenerState
/// - trafficdirector:v3 : DynamicListenerState
class $DynamicListenerState {
  /// The timestamp when the Listener was last successfully updated.
  core.String? lastUpdated;

  /// The listener config.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? listener;

  /// This is the per-resource version information.
  ///
  /// This version is currently taken from the :ref:`version_info ` field at the
  /// time that the listener was loaded. In the future, discrete per-listener
  /// versions may be supported by the API.
  core.String? versionInfo;

  $DynamicListenerState({
    this.lastUpdated,
    this.listener,
    this.versionInfo,
  });

  $DynamicListenerState.fromJson(core.Map json_)
      : this(
          lastUpdated: json_.containsKey('lastUpdated')
              ? json_['lastUpdated'] as core.String
              : null,
          listener: json_.containsKey('listener')
              ? json_['listener'] as core.Map<core.String, core.dynamic>
              : null,
          versionInfo: json_.containsKey('versionInfo')
              ? json_['versionInfo'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (lastUpdated != null) 'lastUpdated': lastUpdated!,
        if (listener != null) 'listener': listener!,
        if (versionInfo != null) 'versionInfo': versionInfo!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : EditCustomerMatchMembersResponse
/// - displayvideo:v3 : EditCustomerMatchMembersResponse
class $EditCustomerMatchMembersResponse {
  /// The ID of the updated Customer Match FirstAndThirdPartyAudience.
  ///
  /// Required.
  core.String? firstAndThirdPartyAudienceId;

  $EditCustomerMatchMembersResponse({
    this.firstAndThirdPartyAudienceId,
  });

  $EditCustomerMatchMembersResponse.fromJson(core.Map json_)
      : this(
          firstAndThirdPartyAudienceId:
              json_.containsKey('firstAndThirdPartyAudienceId')
                  ? json_['firstAndThirdPartyAudienceId'] as core.String
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (firstAndThirdPartyAudienceId != null)
          'firstAndThirdPartyAudienceId': firstAndThirdPartyAudienceId!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : EditGuaranteedOrderReadAccessorsRequest
/// - displayvideo:v3 : EditGuaranteedOrderReadAccessorsRequest
class $EditGuaranteedOrderReadAccessorsRequest {
  /// The advertisers to add as read accessors to the guaranteed order.
  core.List<core.String>? addedAdvertisers;

  /// The partner context in which the change is being made.
  ///
  /// Required.
  core.String? partnerId;

  /// Whether to give all advertisers of the read/write accessor partner read
  /// access to the guaranteed order.
  ///
  /// Only applicable if read_write_partner_id is set in the guaranteed order.
  core.bool? readAccessInherited;

  /// The advertisers to remove as read accessors to the guaranteed order.
  core.List<core.String>? removedAdvertisers;

  $EditGuaranteedOrderReadAccessorsRequest({
    this.addedAdvertisers,
    this.partnerId,
    this.readAccessInherited,
    this.removedAdvertisers,
  });

  $EditGuaranteedOrderReadAccessorsRequest.fromJson(core.Map json_)
      : this(
          addedAdvertisers: json_.containsKey('addedAdvertisers')
              ? (json_['addedAdvertisers'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          partnerId: json_.containsKey('partnerId')
              ? json_['partnerId'] as core.String
              : null,
          readAccessInherited: json_.containsKey('readAccessInherited')
              ? json_['readAccessInherited'] as core.bool
              : null,
          removedAdvertisers: json_.containsKey('removedAdvertisers')
              ? (json_['removedAdvertisers'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (addedAdvertisers != null) 'addedAdvertisers': addedAdvertisers!,
        if (partnerId != null) 'partnerId': partnerId!,
        if (readAccessInherited != null)
          'readAccessInherited': readAccessInherited!,
        if (removedAdvertisers != null)
          'removedAdvertisers': removedAdvertisers!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : EditGuaranteedOrderReadAccessorsResponse
/// - displayvideo:v3 : EditGuaranteedOrderReadAccessorsResponse
class $EditGuaranteedOrderReadAccessorsResponse {
  /// Whether all advertisers of read_write_partner_id have read access to the
  /// guaranteed order.
  core.bool? readAccessInherited;

  /// The IDs of advertisers with read access to the guaranteed order.
  core.List<core.String>? readAdvertiserIds;

  $EditGuaranteedOrderReadAccessorsResponse({
    this.readAccessInherited,
    this.readAdvertiserIds,
  });

  $EditGuaranteedOrderReadAccessorsResponse.fromJson(core.Map json_)
      : this(
          readAccessInherited: json_.containsKey('readAccessInherited')
              ? json_['readAccessInherited'] as core.bool
              : null,
          readAdvertiserIds: json_.containsKey('readAdvertiserIds')
              ? (json_['readAdvertiserIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (readAccessInherited != null)
          'readAccessInherited': readAccessInherited!,
        if (readAdvertiserIds != null) 'readAdvertiserIds': readAdvertiserIds!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : EditInventorySourceReadWriteAccessorsRequestAdvertisersUpdate
/// - displayvideo:v3 : EditInventorySourceReadWriteAccessorsRequestAdvertisersUpdate
class $EditInventorySourceReadWriteAccessorsRequestAdvertisersUpdate {
  /// The advertisers to add.
  core.List<core.String>? addedAdvertisers;

  /// The advertisers to remove.
  core.List<core.String>? removedAdvertisers;

  $EditInventorySourceReadWriteAccessorsRequestAdvertisersUpdate({
    this.addedAdvertisers,
    this.removedAdvertisers,
  });

  $EditInventorySourceReadWriteAccessorsRequestAdvertisersUpdate.fromJson(
      core.Map json_)
      : this(
          addedAdvertisers: json_.containsKey('addedAdvertisers')
              ? (json_['addedAdvertisers'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          removedAdvertisers: json_.containsKey('removedAdvertisers')
              ? (json_['removedAdvertisers'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (addedAdvertisers != null) 'addedAdvertisers': addedAdvertisers!,
        if (removedAdvertisers != null)
          'removedAdvertisers': removedAdvertisers!,
      };
}

/// Used by:
///
/// - accesscontextmanager:v1 : EgressSource
/// - cloudasset:v1 : GoogleIdentityAccesscontextmanagerV1EgressSource
class $EgressSource {
  /// An AccessLevel resource name that allows protected resources inside the
  /// ServicePerimeters to access outside the ServicePerimeter boundaries.
  ///
  /// AccessLevels listed must be in the same policy as this ServicePerimeter.
  /// Referencing a nonexistent AccessLevel will cause an error. If an
  /// AccessLevel name is not specified, only resources within the perimeter can
  /// be accessed through Google Cloud calls with request origins within the
  /// perimeter. Example: `accessPolicies/MY_POLICY/accessLevels/MY_LEVEL`. If a
  /// single `*` is specified for `access_level`, then all EgressSources will be
  /// allowed.
  core.String? accessLevel;

  $EgressSource({
    this.accessLevel,
  });

  $EgressSource.fromJson(core.Map json_)
      : this(
          accessLevel: json_.containsKey('accessLevel')
              ? json_['accessLevel'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accessLevel != null) 'accessLevel': accessLevel!,
      };
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
/// - aiplatform:v1 : GoogleCloudAiplatformV1AddContextArtifactsAndExecutionsResponse
/// - aiplatform:v1 : GoogleCloudAiplatformV1AddContextChildrenResponse
/// - aiplatform:v1 : GoogleCloudAiplatformV1AddExecutionEventsResponse
/// - aiplatform:v1 : GoogleCloudAiplatformV1CancelBatchPredictionJobRequest
/// - aiplatform:v1 : GoogleCloudAiplatformV1CancelCustomJobRequest
/// - aiplatform:v1 : GoogleCloudAiplatformV1CancelDataLabelingJobRequest
/// - aiplatform:v1 : GoogleCloudAiplatformV1CancelHyperparameterTuningJobRequest
/// - aiplatform:v1 : GoogleCloudAiplatformV1CancelNasJobRequest
/// - aiplatform:v1 : GoogleCloudAiplatformV1CancelPipelineJobRequest
/// - aiplatform:v1 : GoogleCloudAiplatformV1CancelTrainingPipelineRequest
/// - aiplatform:v1 : GoogleCloudAiplatformV1CancelTuningJobRequest
/// - aiplatform:v1 : GoogleCloudAiplatformV1CheckTrialEarlyStoppingStateRequest
/// - aiplatform:v1 : GoogleCloudAiplatformV1FeatureOnlineStoreOptimized
/// - aiplatform:v1 : GoogleCloudAiplatformV1FeatureViewIndexConfigBruteForceConfig
/// - aiplatform:v1 : GoogleCloudAiplatformV1ListOptimalTrialsRequest
/// - aiplatform:v1 : GoogleCloudAiplatformV1PauseModelDeploymentMonitoringJobRequest
/// - aiplatform:v1 : GoogleCloudAiplatformV1PauseScheduleRequest
/// - aiplatform:v1 : GoogleCloudAiplatformV1RaySpec
/// - aiplatform:v1 : GoogleCloudAiplatformV1RebootPersistentResourceRequest
/// - aiplatform:v1 : GoogleCloudAiplatformV1RemoveContextChildrenResponse
/// - aiplatform:v1 : GoogleCloudAiplatformV1RemoveDatapointsResponse
/// - aiplatform:v1 : GoogleCloudAiplatformV1ResourceRuntime
/// - aiplatform:v1 : GoogleCloudAiplatformV1ResumeModelDeploymentMonitoringJobRequest
/// - aiplatform:v1 : GoogleCloudAiplatformV1StartNotebookRuntimeRequest
/// - aiplatform:v1 : GoogleCloudAiplatformV1StopTrialRequest
/// - aiplatform:v1 : GoogleCloudAiplatformV1SyncFeatureViewRequest
/// - aiplatform:v1 : GoogleCloudAiplatformV1UpgradeNotebookRuntimeRequest
/// - aiplatform:v1 : GoogleCloudAiplatformV1UpsertDatapointsResponse
/// - aiplatform:v1 : GoogleCloudAiplatformV1WriteFeatureValuesResponse
/// - aiplatform:v1 : GoogleCloudAiplatformV1WriteTensorboardExperimentDataResponse
/// - aiplatform:v1 : GoogleCloudAiplatformV1WriteTensorboardRunDataResponse
/// - aiplatform:v1 : GoogleProtobufEmpty
/// - alloydb:v1 : CancelOperationRequest
/// - alloydb:v1 : Empty
/// - analyticshub:v1 : DefaultExchangeConfig
/// - analyticshub:v1 : Empty
/// - analyticshub:v1 : RefreshSubscriptionRequest
/// - analyticshub:v1 : RevokeSubscriptionRequest
/// - analyticshub:v1 : RevokeSubscriptionResponse
/// - androiddeviceprovisioning:v1 : Empty
/// - androidmanagement:v1 : Empty
/// - androidmanagement:v1 : StopLostModeParams
/// - androidpublisher:v3 : AddTargetingResponse
/// - androidpublisher:v3 : CancelAppRecoveryRequest
/// - androidpublisher:v3 : CancelAppRecoveryResponse
/// - androidpublisher:v3 : DeployAppRecoveryRequest
/// - androidpublisher:v3 : DeployAppRecoveryResponse
/// - androidpublisher:v3 : DeveloperInitiatedCancellation
/// - androidpublisher:v3 : ExternalTransactionTestPurchase
/// - androidpublisher:v3 : FullRefund
/// - androidpublisher:v3 : MigrateBasePlanPricesResponse
/// - androidpublisher:v3 : ReplacementCancellation
/// - androidpublisher:v3 : RevocationContextProratedRefund
/// - androidpublisher:v3 : RevokeSubscriptionPurchaseResponse
/// - androidpublisher:v3 : SafetyLabelsUpdateResponse
/// - androidpublisher:v3 : SystemInitiatedCancellation
/// - androidpublisher:v3 : TargetingRuleScopeAnySubscriptionInApp
/// - androidpublisher:v3 : TargetingRuleScopeThisSubscription
/// - androidpublisher:v3 : TestPurchase
/// - apigateway:v1 : ApigatewayCancelOperationRequest
/// - apigateway:v1 : Empty
/// - apigee:v1 : GoogleCloudApigeeV1ActivateNatAddressRequest
/// - apigee:v1 : GoogleCloudApigeeV1DisableSecurityActionRequest
/// - apigee:v1 : GoogleCloudApigeeV1EnableSecurityActionRequest
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
/// - apigeeregistry:v1 : CancelOperationRequest
/// - apigeeregistry:v1 : Empty
/// - apikeys:v2 : V2UndeleteKeyRequest
/// - appengine:v1 : Empty
/// - appengine:v1 : RepairApplicationRequest
/// - apphub:v1 : CancelOperationRequest
/// - apphub:v1 : DetachServiceProjectAttachmentRequest
/// - apphub:v1 : DetachServiceProjectAttachmentResponse
/// - apphub:v1 : Empty
/// - artifactregistry:v1 : DownloadFileResponse
/// - artifactregistry:v1 : Empty
/// - artifactregistry:v1 : UploadAptArtifactRequest
/// - artifactregistry:v1 : UploadGoModuleRequest
/// - artifactregistry:v1 : UploadGoogetArtifactRequest
/// - artifactregistry:v1 : UploadYumArtifactRequest
/// - assuredworkloads:v1 : GoogleCloudAssuredworkloadsV1AcknowledgeViolationResponse
/// - assuredworkloads:v1 : GoogleCloudAssuredworkloadsV1EnableResourceMonitoringResponse
/// - assuredworkloads:v1 : GoogleCloudAssuredworkloadsV1RestrictAllowedResourcesResponse
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
/// - backupdr:v1 : CancelOperationRequest
/// - backupdr:v1 : Empty
/// - baremetalsolution:v2 : DisableInteractiveSerialConsoleRequest
/// - baremetalsolution:v2 : Empty
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
/// - beyondcorp:v1 : GoogleLongrunningCancelOperationRequest
/// - bigqueryconnection:v1 : Empty
/// - bigquerydatapolicy:v1 : Empty
/// - bigquerydatatransfer:v1 : CheckValidCredsRequest
/// - bigquerydatatransfer:v1 : Empty
/// - bigqueryreservation:v1 : Empty
/// - bigqueryreservation:v1 : FailoverReservationRequest
/// - bigtableadmin:v2 : DataBoostReadLocalWrites
/// - bigtableadmin:v2 : Empty
/// - bigtableadmin:v2 : GenerateConsistencyTokenRequest
/// - bigtableadmin:v2 : GoogleBigtableAdminV2TypeAggregateSum
/// - bigtableadmin:v2 : GoogleBigtableAdminV2TypeBytesEncodingRaw
/// - bigtableadmin:v2 : StandardReadRemoteWrites
/// - bigtableadmin:v2 : UndeleteTableRequest
/// - billingbudgets:v1 : GoogleCloudBillingBudgetsV1LastPeriodAmount
/// - billingbudgets:v1 : GoogleProtobufEmpty
/// - binaryauthorization:v1 : Empty
/// - blockchainnodeengine:v1 : CancelOperationRequest
/// - blockchainnodeengine:v1 : GoogleProtobufEmpty
/// - books:v1 : Empty
/// - certificatemanager:v1 : CancelOperationRequest
/// - certificatemanager:v1 : Empty
/// - chat:v1 : CompleteImportSpaceRequest
/// - chat:v1 : Empty
/// - chat:v1 : GoogleAppsCardV1Divider
/// - chromemanagement:v1 : GoogleChromeManagementV1TelemetryAudioSevereUnderrunEvent
/// - chromemanagement:v1 : GoogleProtobufEmpty
/// - chromepolicy:v1 : GoogleChromePolicyVersionsV1RemoveCertificateResponse
/// - chromepolicy:v1 : GoogleChromePolicyVersionsV1RemoveNetworkResponse
/// - chromepolicy:v1 : GoogleProtobufEmpty
/// - classroom:v1 : Empty
/// - classroom:v1 : ReclaimStudentSubmissionRequest
/// - classroom:v1 : ReturnStudentSubmissionRequest
/// - classroom:v1 : TurnInStudentSubmissionRequest
/// - cloudasset:v1 : Empty
/// - cloudasset:v1 : GoogleCloudAssetV1BooleanConstraint
/// - cloudasset:v1 : GoogleCloudOrgpolicyV1RestoreDefault
/// - cloudbuild:v1 : CancelOperationRequest
/// - cloudbuild:v1 : Empty
/// - cloudbuild:v1 : ReceiveTriggerWebhookResponse
/// - cloudbuild:v2 : CancelOperationRequest
/// - cloudbuild:v2 : Empty
/// - cloudbuild:v2 : FetchReadTokenRequest
/// - cloudbuild:v2 : FetchReadWriteTokenRequest
/// - cloudchannel:v1 : GoogleLongrunningCancelOperationRequest
/// - cloudchannel:v1 : GoogleProtobufEmpty
/// - clouddeploy:v1 : AbandonReleaseRequest
/// - clouddeploy:v1 : AbandonReleaseResponse
/// - clouddeploy:v1 : AdvanceChildRolloutJob
/// - clouddeploy:v1 : AdvanceRolloutResponse
/// - clouddeploy:v1 : ApproveRolloutResponse
/// - clouddeploy:v1 : CancelAutomationRunRequest
/// - clouddeploy:v1 : CancelAutomationRunResponse
/// - clouddeploy:v1 : CancelOperationRequest
/// - clouddeploy:v1 : CancelRolloutRequest
/// - clouddeploy:v1 : CancelRolloutResponse
/// - clouddeploy:v1 : CreateChildRolloutJob
/// - clouddeploy:v1 : DeployJob
/// - clouddeploy:v1 : Empty
/// - clouddeploy:v1 : IgnoreJobResponse
/// - clouddeploy:v1 : RetryJobResponse
/// - clouddeploy:v1 : TerminateJobRunRequest
/// - clouddeploy:v1 : TerminateJobRunResponse
/// - clouddeploy:v1 : VerifyJob
/// - cloudfunctions:v1 : AutomaticUpdatePolicy
/// - cloudfunctions:v1 : Retry
/// - cloudfunctions:v2 : AbortFunctionUpgradeRequest
/// - cloudfunctions:v2 : AutomaticUpdatePolicy
/// - cloudfunctions:v2 : CommitFunctionUpgradeRequest
/// - cloudfunctions:v2 : GenerateDownloadUrlRequest
/// - cloudfunctions:v2 : RedirectFunctionUpgradeTrafficRequest
/// - cloudfunctions:v2 : RollbackFunctionUpgradeTrafficRequest
/// - cloudfunctions:v2 : SetupFunctionUpgradeConfigRequest
/// - cloudidentity:v1 : CancelUserInvitationRequest
/// - cloudidentity:v1 : SendUserInvitationRequest
/// - cloudkms:v1 : DestroyCryptoKeyVersionRequest
/// - cloudkms:v1 : RestoreCryptoKeyVersionRequest
/// - cloudkms:v1 : VerifyConnectivityResponse
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
/// - cloudsearch:v1 : RemoveActivityResponse
/// - cloudshell:v1 : CancelOperationRequest
/// - cloudshell:v1 : Empty
/// - cloudsupport:v2 : CloseCaseRequest
/// - cloudtasks:v2 : Empty
/// - cloudtasks:v2 : PauseQueueRequest
/// - cloudtasks:v2 : PurgeQueueRequest
/// - cloudtasks:v2 : ResumeQueueRequest
/// - cloudtrace:v2 : Empty
/// - composer:v1 : DatabaseFailoverRequest
/// - composer:v1 : Empty
/// - compute:v1 : ResourcePolicyDiskConsistencyGroupPolicy
/// - connectors:v1 : CancelOperationRequest
/// - connectors:v1 : Empty
/// - connectors:v1 : ListenEventResponse
/// - connectors:v1 : RefreshConnectionSchemaMetadataRequest
/// - connectors:v1 : RepairEventingRequest
/// - connectors:v1 : RetryEventSubscriptionRequest
/// - connectors:v2 : Empty
/// - connectors:v2 : ExchangeAuthCodeRequest
/// - connectors:v2 : RefreshAccessTokenRequest
/// - contactcenterinsights:v1 : GoogleCloudContactcenterinsightsV1HoldData
/// - contactcenterinsights:v1 : GoogleCloudContactcenterinsightsV1InterruptionData
/// - contactcenterinsights:v1 : GoogleCloudContactcenterinsightsV1SilenceData
/// - contactcenterinsights:v1 : GoogleProtobufEmpty
/// - container:v1 : CompleteNodePoolUpgradeRequest
/// - container:v1 : Empty
/// - container:v1 : SecondaryBootDiskUpdateStrategy
/// - containeranalysis:v1 : CloudStorageLocation
/// - containeranalysis:v1 : Empty
/// - content:v2.1 : ActivateBuyOnGoogleProgramRequest
/// - content:v2.1 : CaptureOrderRequest
/// - content:v2.1 : InputFieldCheckboxInput
/// - content:v2.1 : PauseBuyOnGoogleProgramRequest
/// - content:v2.1 : RequestReviewBuyOnGoogleProgramRequest
/// - content:v2.1 : UndeleteConversionSourceRequest
/// - contentwarehouse:v1 : GoogleCloudContentwarehouseV1DateTimeTypeOptions
/// - contentwarehouse:v1 : GoogleCloudContentwarehouseV1FloatTypeOptions
/// - contentwarehouse:v1 : GoogleCloudContentwarehouseV1IntegerTypeOptions
/// - contentwarehouse:v1 : GoogleCloudContentwarehouseV1MapTypeOptions
/// - contentwarehouse:v1 : GoogleCloudContentwarehouseV1TextTypeOptions
/// - contentwarehouse:v1 : GoogleCloudContentwarehouseV1TimestampTypeOptions
/// - contentwarehouse:v1 : GoogleProtobufEmpty
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
/// - datalineage:v1 : GoogleLongrunningCancelOperationRequest
/// - datalineage:v1 : GoogleProtobufEmpty
/// - datamigration:v1 : CancelOperationRequest
/// - datamigration:v1 : DemoteDestinationRequest
/// - datamigration:v1 : Empty
/// - datamigration:v1 : PromoteMigrationJobRequest
/// - datamigration:v1 : RollbackConversionWorkspaceRequest
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
/// - dataplex:v1 : GoogleCloudDataplexV1CancelJobRequest
/// - dataplex:v1 : GoogleCloudDataplexV1DataQualityRuleNonNullExpectation
/// - dataplex:v1 : GoogleCloudDataplexV1DataQualityRuleUniquenessExpectation
/// - dataplex:v1 : GoogleCloudDataplexV1DataQualitySpecPostScanActionsJobEndTrigger
/// - dataplex:v1 : GoogleCloudDataplexV1DataQualitySpecPostScanActionsJobFailureTrigger
/// - dataplex:v1 : GoogleCloudDataplexV1GenerateDataQualityRulesRequest
/// - dataplex:v1 : GoogleCloudDataplexV1RunDataScanRequest
/// - dataplex:v1 : GoogleCloudDataplexV1TriggerOnDemand
/// - dataplex:v1 : GoogleLongrunningCancelOperationRequest
/// - dataportability:v1 : Empty
/// - dataportability:v1 : ResetAuthorizationRequest
/// - dataportability:v1 : RetryPortabilityArchiveRequest
/// - dataproc:v1 : CancelJobRequest
/// - dataproc:v1 : Empty
/// - datastore:v1 : Empty
/// - datastore:v1 : ReserveIdsResponse
/// - datastore:v1 : RollbackResponse
/// - datastream:v1 : AvroFileFormat
/// - datastream:v1 : BackfillNoneStrategy
/// - datastream:v1 : BigQueryProfile
/// - datastream:v1 : CancelOperationRequest
/// - datastream:v1 : DropLargeObjects
/// - datastream:v1 : Empty
/// - datastream:v1 : MostRecentStartPosition
/// - datastream:v1 : NextAvailableStartPosition
/// - datastream:v1 : StartBackfillJobRequest
/// - datastream:v1 : StaticServiceIpConnectivity
/// - datastream:v1 : StopBackfillJobRequest
/// - datastream:v1 : StreamLargeObjects
/// - dialogflow:v2 : GoogleCloudDialogflowV2CompleteConversationRequest
/// - dialogflow:v2 : GoogleCloudDialogflowV2DeployConversationModelRequest
/// - dialogflow:v2 : GoogleCloudDialogflowV2TrainAgentRequest
/// - dialogflow:v2 : GoogleCloudDialogflowV2UndeployConversationModelRequest
/// - dialogflow:v2 : GoogleProtobufEmpty
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3ResponseMessageEndInteraction
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3ResponseMessageKnowledgeInfoCard
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3RunContinuousTestRequest
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3StartExperimentRequest
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3StopExperimentRequest
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3TrainFlowRequest
/// - dialogflow:v3 : GoogleProtobufEmpty
/// - displayvideo:v2 : ActivateManualTriggerRequest
/// - displayvideo:v2 : DeactivateManualTriggerRequest
/// - displayvideo:v2 : Empty
/// - displayvideo:v3 : Empty
/// - dlp:v2 : GooglePrivacyDlpV2ActivateJobTriggerRequest
/// - dlp:v2 : GooglePrivacyDlpV2AllInfoTypes
/// - dlp:v2 : GooglePrivacyDlpV2AllOtherBigQueryTables
/// - dlp:v2 : GooglePrivacyDlpV2AllOtherDatabaseResources
/// - dlp:v2 : GooglePrivacyDlpV2AllText
/// - dlp:v2 : GooglePrivacyDlpV2CancelDlpJobRequest
/// - dlp:v2 : GooglePrivacyDlpV2CloudSqlIamCredential
/// - dlp:v2 : GooglePrivacyDlpV2Disabled
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
/// - domains:v1 : ResetAuthorizationCodeRequest
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
/// - eventarc:v1 : GoogleLongrunningCancelOperationRequest
/// - file:v1 : CancelOperationRequest
/// - file:v1 : Empty
/// - firebaseappcheck:v1 : GoogleFirebaseAppcheckV1GenerateAppAttestChallengeRequest
/// - firebaseappcheck:v1 : GoogleFirebaseAppcheckV1GeneratePlayIntegrityChallengeRequest
/// - firebaseappcheck:v1 : GoogleProtobufEmpty
/// - firebaseappdistribution:v1 : GoogleFirebaseAppdistroV1DistributeReleaseResponse
/// - firebaseappdistribution:v1 : GoogleLongrunningCancelOperationRequest
/// - firebaseappdistribution:v1 : GoogleProtobufEmpty
/// - firebasehosting:v1 : CancelOperationRequest
/// - firebasehosting:v1 : Empty
/// - firebaseml:v1 : CancelOperationRequest
/// - firebaseml:v1 : Empty
/// - firebaserules:v1 : Empty
/// - firestore:v1 : Empty
/// - firestore:v1 : GoogleFirestoreAdminV1DailyRecurrence
/// - firestore:v1 : GoogleFirestoreAdminV1FlatIndex
/// - firestore:v1 : GoogleLongrunningCancelOperationRequest
/// - forms:v1 : Empty
/// - forms:v1 : PageBreakItem
/// - forms:v1 : RenewWatchRequest
/// - forms:v1 : TextItem
/// - gkebackup:v1 : Empty
/// - gkebackup:v1 : GoogleLongrunningCancelOperationRequest
/// - gkehub:v1 : AppDevExperienceFeatureSpec
/// - gkehub:v1 : CancelOperationRequest
/// - gkehub:v1 : Empty
/// - gkehub:v1 : FleetObservabilityMembershipSpec
/// - gkehub:v1 : FleetObservabilityMembershipState
/// - gkehub:v1 : ScopeFeatureSpec
/// - gkeonprem:v1 : CancelOperationRequest
/// - gkeonprem:v1 : Empty
/// - gkeonprem:v1 : VmwareAdminMetalLbConfig
/// - gmail:v1 : DisableCseKeyPairRequest
/// - gmail:v1 : EnableCseKeyPairRequest
/// - gmail:v1 : ObliterateCseKeyPairRequest
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
/// - iam:v1 : UndeleteWorkforcePoolProviderKeyRequest
/// - iam:v1 : UndeleteWorkforcePoolProviderRequest
/// - iam:v1 : UndeleteWorkforcePoolRequest
/// - iam:v1 : UndeleteWorkforcePoolSubjectRequest
/// - iam:v1 : UndeleteWorkloadIdentityPoolProviderKeyRequest
/// - iam:v1 : UndeleteWorkloadIdentityPoolProviderRequest
/// - iam:v1 : UndeleteWorkloadIdentityPoolRequest
/// - iam:v1 : X509
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
/// - jobs:v3 : Empty
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
/// - managedidentities:v1 : CancelOperationRequest
/// - managedidentities:v1 : CheckMigrationPermissionRequest
/// - managedidentities:v1 : DisableMigrationRequest
/// - managedidentities:v1 : Empty
/// - managedidentities:v1 : ResetAdminPasswordRequest
/// - manufacturers:v1 : Empty
/// - memcache:v1 : CancelOperationRequest
/// - memcache:v1 : Empty
/// - metastore:v1 : CancelOperationRequest
/// - metastore:v1 : Empty
/// - migrationcenter:v1 : AggregationCount
/// - migrationcenter:v1 : AggregationFrequency
/// - migrationcenter:v1 : AggregationSum
/// - migrationcenter:v1 : CancelOperationRequest
/// - migrationcenter:v1 : Empty
/// - migrationcenter:v1 : ReportAssetFramesResponse
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
/// - mybusinessbusinessinformation:v1 : Empty
/// - mybusinessplaceactions:v1 : Empty
/// - mybusinessqanda:v1 : Empty
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
/// - notebooks:v1 : BootImage
/// - notebooks:v1 : CancelOperationRequest
/// - notebooks:v1 : Empty
/// - notebooks:v1 : ResetInstanceRequest
/// - notebooks:v1 : StartInstanceRequest
/// - notebooks:v1 : StopInstanceRequest
/// - notebooks:v1 : TriggerScheduleRequest
/// - notebooks:v2 : CancelOperationRequest
/// - notebooks:v2 : Empty
/// - notebooks:v2 : ResetInstanceRequest
/// - notebooks:v2 : StartInstanceRequest
/// - notebooks:v2 : StopInstanceRequest
/// - notebooks:v2 : UpgradeInstanceRequest
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
/// - paymentsresellersubscription:v1 : GoogleCloudPaymentsResellerSubscriptionV1UndoCancelSubscriptionRequest
/// - people:v1 : Empty
/// - photoslibrary:v1 : BatchAddMediaItemsToAlbumResponse
/// - photoslibrary:v1 : BatchRemoveMediaItemsFromAlbumResponse
/// - photoslibrary:v1 : LeaveSharedAlbumResponse
/// - photoslibrary:v1 : UnshareAlbumRequest
/// - photoslibrary:v1 : UnshareAlbumResponse
/// - privateca:v1 : CancelOperationRequest
/// - privateca:v1 : Empty
/// - pubsub:v1 : DetachSubscriptionResponse
/// - pubsub:v1 : Empty
/// - pubsub:v1 : PubsubWrapper
/// - pubsub:v1 : SeekResponse
/// - pubsub:v1 : TextConfig
/// - pubsub:v1 : ValidateMessageResponse
/// - pubsub:v1 : ValidateSchemaResponse
/// - pubsublite:v1 : CancelOperationRequest
/// - pubsublite:v1 : CommitCursorResponse
/// - pubsublite:v1 : Empty
/// - rapidmigrationassessment:v1 : CancelOperationRequest
/// - rapidmigrationassessment:v1 : Empty
/// - readerrevenuesubscriptionlinking:v1 : DeleteReaderResponse
/// - realtimebidding:v1 : ActivatePretargetingConfigRequest
/// - realtimebidding:v1 : CloseUserListRequest
/// - realtimebidding:v1 : Empty
/// - realtimebidding:v1 : OpenUserListRequest
/// - realtimebidding:v1 : SuspendPretargetingConfigRequest
/// - realtimebidding:v1 : WatchCreativesRequest
/// - recaptchaenterprise:v1 : GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentResponse
/// - recaptchaenterprise:v1 : GoogleCloudRecaptchaenterpriseV1FirewallActionAllowAction
/// - recaptchaenterprise:v1 : GoogleCloudRecaptchaenterpriseV1FirewallActionBlockAction
/// - recaptchaenterprise:v1 : GoogleCloudRecaptchaenterpriseV1FirewallActionIncludeRecaptchaScriptAction
/// - recaptchaenterprise:v1 : GoogleCloudRecaptchaenterpriseV1FirewallActionRedirectAction
/// - recaptchaenterprise:v1 : GoogleCloudRecaptchaenterpriseV1ReorderFirewallPoliciesResponse
/// - recaptchaenterprise:v1 : GoogleProtobufEmpty
/// - redis:v1 : Empty
/// - retail:v2 : GoogleCloudRetailV2PauseModelRequest
/// - retail:v2 : GoogleCloudRetailV2ResumeModelRequest
/// - retail:v2 : GoogleCloudRetailV2TuneModelRequest
/// - retail:v2 : GoogleProtobufEmpty
/// - run:v1 : CancelExecutionRequest
/// - run:v1 : Empty
/// - run:v2 : GoogleProtobufEmpty
/// - run:v2 : Proto2BridgeMessageSet
/// - runtimeconfig:v1 : CancelOperationRequest
/// - runtimeconfig:v1 : Empty
/// - safebrowsing:v4 : GoogleProtobufEmpty
/// - script:v1 : Empty
/// - secretmanager:v1 : Empty
/// - securitycenter:v1 : Empty
/// - securitycenter:v1 : RunAssetDiscoveryRequest
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
/// - sourcerepo:v1 : Empty
/// - sourcerepo:v1 : SyncRepoRequest
/// - spanner:v1 : Empty
/// - spanner:v1 : PartitionedDml
/// - speech:v1 : Empty
/// - speech:v2 : AutoDetectDecodingConfig
/// - speech:v2 : InlineOutputConfig
/// - speech:v2 : NativeOutputFileFormatConfig
/// - speech:v2 : SrtOutputFileFormatConfig
/// - speech:v2 : VttOutputFileFormatConfig
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
/// - tpu:v1 : Empty
/// - tpu:v1 : StartNodeRequest
/// - tpu:v1 : StopNodeRequest
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
/// - trafficdirector:v2 : NullMatch
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
/// - vault:v1 : ReopenMatterRequest
/// - vault:v1 : UndeleteMatterRequest
/// - verifiedaccess:v1 : Empty
/// - verifiedaccess:v2 : Empty
/// - videointelligence:v1 : GoogleLongrunning_CancelOperationRequest
/// - videointelligence:v1 : GoogleProtobuf_Empty
/// - vision:v1 : CancelOperationRequest
/// - vision:v1 : Empty
/// - vmmigration:v1 : AdaptingOSStep
/// - vmmigration:v1 : CancelCloneJobRequest
/// - vmmigration:v1 : CancelCutoverJobRequest
/// - vmmigration:v1 : CancelImageImportJobRequest
/// - vmmigration:v1 : CancelOperationRequest
/// - vmmigration:v1 : CreatingImageStep
/// - vmmigration:v1 : DataDiskImageImport
/// - vmmigration:v1 : DisksMigrationDisksTargetDefaults
/// - vmmigration:v1 : DisksMigrationDisksTargetDetails
/// - vmmigration:v1 : Empty
/// - vmmigration:v1 : FinalizeMigrationRequest
/// - vmmigration:v1 : InitializingImageImportStep
/// - vmmigration:v1 : InitializingReplicationStep
/// - vmmigration:v1 : InstantiatingMigratedVMStep
/// - vmmigration:v1 : LoadingImageSourceFilesStep
/// - vmmigration:v1 : PauseMigrationRequest
/// - vmmigration:v1 : PostProcessingStep
/// - vmmigration:v1 : PreparingVMDisksStep
/// - vmmigration:v1 : ResumeMigrationRequest
/// - vmmigration:v1 : ShuttingDownSourceVMStep
/// - vmmigration:v1 : StartMigrationRequest
/// - vmwareengine:v1 : Empty
/// - walletobjects:v1 : TransitObjectUploadRotatingBarcodeValuesResponse
/// - webrisk:v1 : GoogleLongrunningCancelOperationRequest
/// - webrisk:v1 : GoogleProtobufEmpty
/// - websecurityscanner:v1 : Empty
/// - websecurityscanner:v1 : StartScanRunRequest
/// - websecurityscanner:v1 : StopScanRunRequest
/// - workflowexecutions:v1 : CancelExecutionRequest
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
      core.Map json_);

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

  $EncryptionConfig({
    this.kmsKeyName,
  });

  $EncryptionConfig.fromJson(core.Map json_)
      : this(
          kmsKeyName: json_.containsKey('kmsKeyName')
              ? json_['kmsKeyName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kmsKeyName != null) 'kmsKeyName': kmsKeyName!,
      };
}

/// Used by:
///
/// - servicemanagement:v1 : Endpoint
/// - serviceusage:v1 : Endpoint
class $Endpoint {
  /// Dot not use.
  ///
  /// DEPRECATED: This field is no longer supported. Instead of using aliases,
  /// please specify multiple google.api.Endpoint for each of the intended
  /// aliases. Additional names that this endpoint will be hosted on.
  ///
  /// Unimplemented.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
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

  $Endpoint({
    this.aliases,
    this.allowCors,
    this.name,
    this.target,
  });

  $Endpoint.fromJson(core.Map json_)
      : this(
          aliases: json_.containsKey('aliases')
              ? (json_['aliases'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          allowCors: json_.containsKey('allowCors')
              ? json_['allowCors'] as core.bool
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          target: json_.containsKey('target')
              ? json_['target'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (aliases != null) 'aliases': aliases!,
        if (allowCors != null) 'allowCors': allowCors!,
        if (name != null) 'name': name!,
        if (target != null) 'target': target!,
      };
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

  $Entity({
    this.customFeatures,
  });

  $Entity.fromJson(core.Map json_)
      : this(
          customFeatures: json_.containsKey('customFeatures')
              ? json_['customFeatures'] as core.Map<core.String, core.dynamic>
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (customFeatures != null) 'customFeatures': customFeatures!,
      };
}

/// Used by:
///
/// - speech:v1 : Entry
/// - speech:v2 : Entry
class $Entry {
  /// Whether the search is case sensitive.
  core.bool? caseSensitive;

  /// What to replace with.
  ///
  /// Max length is 100 characters.
  core.String? replace;

  /// What to replace.
  ///
  /// Max length is 100 characters.
  core.String? search;

  $Entry({
    this.caseSensitive,
    this.replace,
    this.search,
  });

  $Entry.fromJson(core.Map json_)
      : this(
          caseSensitive: json_.containsKey('caseSensitive')
              ? json_['caseSensitive'] as core.bool
              : null,
          replace: json_.containsKey('replace')
              ? json_['replace'] as core.String
              : null,
          search: json_.containsKey('search')
              ? json_['search'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (caseSensitive != null) 'caseSensitive': caseSensitive!,
        if (replace != null) 'replace': replace!,
        if (search != null) 'search': search!,
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

  set sigAsBytes(core.List<core.int> bytes_) {
    sig =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  $EnvelopeSignature({
    this.keyid,
    this.sig,
  });

  $EnvelopeSignature.fromJson(core.Map json_)
      : this(
          keyid:
              json_.containsKey('keyid') ? json_['keyid'] as core.String : null,
          sig: json_.containsKey('sig') ? json_['sig'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (keyid != null) 'keyid': keyid!,
        if (sig != null) 'sig': sig!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : EnvironmentAssignedTargetingOptionDetails
/// - displayvideo:v3 : EnvironmentAssignedTargetingOptionDetails
class $EnvironmentAssignedTargetingOptionDetails {
  /// The serving environment.
  ///
  /// Required.
  /// Possible string values are:
  /// - "ENVIRONMENT_UNSPECIFIED" : Default value when environment is not
  /// specified in this version. This enum is a placeholder for default value
  /// and does not represent a real environment option.
  /// - "ENVIRONMENT_WEB_OPTIMIZED" : Target inventory displayed in browsers.
  /// This includes inventory that was designed for the device it was viewed on,
  /// such as mobile websites viewed on a mobile device.
  /// ENVIRONMENT_WEB_NOT_OPTIMIZED, if targeted, should be deleted prior to the
  /// deletion of this targeting option.
  /// - "ENVIRONMENT_WEB_NOT_OPTIMIZED" : Target inventory displayed in
  /// browsers. This includes inventory that was not designed for the device but
  /// viewed on it, such as websites optimized for desktop but viewed on a
  /// mobile device. ENVIRONMENT_WEB_OPTIMIZED should be targeted prior to the
  /// addition of this targeting option.
  /// - "ENVIRONMENT_APP" : Target inventory displayed in apps.
  core.String? environment;

  $EnvironmentAssignedTargetingOptionDetails({
    this.environment,
  });

  $EnvironmentAssignedTargetingOptionDetails.fromJson(core.Map json_)
      : this(
          environment: json_.containsKey('environment')
              ? json_['environment'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (environment != null) 'environment': environment!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : EnvironmentTargetingOptionDetails
/// - displayvideo:v3 : EnvironmentTargetingOptionDetails
class $EnvironmentTargetingOptionDetails {
  /// The serving environment.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "ENVIRONMENT_UNSPECIFIED" : Default value when environment is not
  /// specified in this version. This enum is a placeholder for default value
  /// and does not represent a real environment option.
  /// - "ENVIRONMENT_WEB_OPTIMIZED" : Target inventory displayed in browsers.
  /// This includes inventory that was designed for the device it was viewed on,
  /// such as mobile websites viewed on a mobile device.
  /// ENVIRONMENT_WEB_NOT_OPTIMIZED, if targeted, should be deleted prior to the
  /// deletion of this targeting option.
  /// - "ENVIRONMENT_WEB_NOT_OPTIMIZED" : Target inventory displayed in
  /// browsers. This includes inventory that was not designed for the device but
  /// viewed on it, such as websites optimized for desktop but viewed on a
  /// mobile device. ENVIRONMENT_WEB_OPTIMIZED should be targeted prior to the
  /// addition of this targeting option.
  /// - "ENVIRONMENT_APP" : Target inventory displayed in apps.
  core.String? environment;

  $EnvironmentTargetingOptionDetails({
    this.environment,
  });

  $EnvironmentTargetingOptionDetails.fromJson(core.Map json_)
      : this(
          environment: json_.containsKey('environment')
              ? json_['environment'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (environment != null) 'environment': environment!,
      };
}

/// Used by:
///
/// - gkehub:v1 : ConfigManagementConfigSyncError
/// - gkehub:v1 : ConfigManagementInstallError
class $Error {
  /// A string representing the user facing error message
  core.String? errorMessage;

  $Error({
    this.errorMessage,
  });

  $Error.fromJson(core.Map json_)
      : this(
          errorMessage: json_.containsKey('errorMessage')
              ? json_['errorMessage'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (errorMessage != null) 'errorMessage': errorMessage!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : ExchangeAssignedTargetingOptionDetails
/// - displayvideo:v3 : ExchangeAssignedTargetingOptionDetails
class $ExchangeAssignedTargetingOptionDetails {
  /// The enum value for the exchange.
  ///
  /// Required.
  /// Possible string values are:
  /// - "EXCHANGE_UNSPECIFIED" : Exchange is not specified or is unknown in this
  /// version.
  /// - "EXCHANGE_GOOGLE_AD_MANAGER" : Google Ad Manager.
  /// - "EXCHANGE_APPNEXUS" : AppNexus.
  /// - "EXCHANGE_BRIGHTROLL" : BrightRoll Exchange for Video from Yahoo!.
  /// - "EXCHANGE_ADFORM" : Adform.
  /// - "EXCHANGE_ADMETA" : Admeta.
  /// - "EXCHANGE_ADMIXER" : Admixer.
  /// - "EXCHANGE_ADSMOGO" : AdsMogo.
  /// - "EXCHANGE_ADSWIZZ" : AdsWizz.
  /// - "EXCHANGE_BIDSWITCH" : BidSwitch.
  /// - "EXCHANGE_BRIGHTROLL_DISPLAY" : BrightRoll Exchange for Display from
  /// Yahoo!.
  /// - "EXCHANGE_CADREON" : Cadreon.
  /// - "EXCHANGE_DAILYMOTION" : Dailymotion.
  /// - "EXCHANGE_FIVE" : Five.
  /// - "EXCHANGE_FLUCT" : Fluct.
  /// - "EXCHANGE_FREEWHEEL" : FreeWheel SSP.
  /// - "EXCHANGE_GENIEE" : Geniee.
  /// - "EXCHANGE_GUMGUM" : GumGum.
  /// - "EXCHANGE_IMOBILE" : i-mobile.
  /// - "EXCHANGE_IBILLBOARD" : iBILLBOARD.
  /// - "EXCHANGE_IMPROVE_DIGITAL" : Improve Digital.
  /// - "EXCHANGE_INDEX" : Index Exchange.
  /// - "EXCHANGE_KARGO" : Kargo.
  /// - "EXCHANGE_MICROAD" : MicroAd.
  /// - "EXCHANGE_MOPUB" : MoPub.
  /// - "EXCHANGE_NEND" : Nend.
  /// - "EXCHANGE_ONE_BY_AOL_DISPLAY" : ONE by AOL: Display Market Place.
  /// - "EXCHANGE_ONE_BY_AOL_MOBILE" : ONE by AOL: Mobile.
  /// - "EXCHANGE_ONE_BY_AOL_VIDEO" : ONE by AOL: Video.
  /// - "EXCHANGE_OOYALA" : Ooyala.
  /// - "EXCHANGE_OPENX" : OpenX.
  /// - "EXCHANGE_PERMODO" : Permodo.
  /// - "EXCHANGE_PLATFORMONE" : Platform One.
  /// - "EXCHANGE_PLATFORMID" : PlatformId.
  /// - "EXCHANGE_PUBMATIC" : PubMatic.
  /// - "EXCHANGE_PULSEPOINT" : PulsePoint.
  /// - "EXCHANGE_REVENUEMAX" : RevenueMax.
  /// - "EXCHANGE_RUBICON" : Rubicon.
  /// - "EXCHANGE_SMARTCLIP" : SmartClip.
  /// - "EXCHANGE_SMARTRTB" : SmartRTB+.
  /// - "EXCHANGE_SMARTSTREAMTV" : SmartstreamTv.
  /// - "EXCHANGE_SOVRN" : Sovrn.
  /// - "EXCHANGE_SPOTXCHANGE" : SpotXchange.
  /// - "EXCHANGE_STROER" : Ströer SSP.
  /// - "EXCHANGE_TEADSTV" : TeadsTv.
  /// - "EXCHANGE_TELARIA" : Telaria.
  /// - "EXCHANGE_TVN" : TVN.
  /// - "EXCHANGE_UNITED" : United.
  /// - "EXCHANGE_YIELDLAB" : Yieldlab.
  /// - "EXCHANGE_YIELDMO" : Yieldmo.
  /// - "EXCHANGE_UNRULYX" : UnrulyX.
  /// - "EXCHANGE_OPEN8" : Open8.
  /// - "EXCHANGE_TRITON" : Triton.
  /// - "EXCHANGE_TRIPLELIFT" : TripleLift.
  /// - "EXCHANGE_TABOOLA" : Taboola.
  /// - "EXCHANGE_INMOBI" : InMobi.
  /// - "EXCHANGE_SMAATO" : Smaato.
  /// - "EXCHANGE_AJA" : Aja.
  /// - "EXCHANGE_SUPERSHIP" : Supership.
  /// - "EXCHANGE_NEXSTAR_DIGITAL" : Nexstar Digital.
  /// - "EXCHANGE_WAZE" : Waze.
  /// - "EXCHANGE_SOUNDCAST" : SoundCast.
  /// - "EXCHANGE_SHARETHROUGH" : Sharethrough.
  /// - "EXCHANGE_FYBER" : Fyber.
  /// - "EXCHANGE_RED_FOR_PUBLISHERS" : Red For Publishers.
  /// - "EXCHANGE_MEDIANET" : Media.net.
  /// - "EXCHANGE_TAPJOY" : Tapjoy.
  /// - "EXCHANGE_VISTAR" : Vistar.
  /// - "EXCHANGE_DAX" : DAX.
  /// - "EXCHANGE_JCD" : JCD.
  /// - "EXCHANGE_PLACE_EXCHANGE" : Place Exchange.
  /// - "EXCHANGE_APPLOVIN" : AppLovin.
  /// - "EXCHANGE_CONNATIX" : Connatix.
  /// - "EXCHANGE_RESET_DIGITAL" : Reset Digital.
  /// - "EXCHANGE_HIVESTACK" : Hivestack.
  /// - "EXCHANGE_DRAX" : Drax.
  /// - "EXCHANGE_APPLOVIN_GBID" : AppLovin MAX.
  /// - "EXCHANGE_FYBER_GBID" : DT Fairbid.
  /// - "EXCHANGE_UNITY_GBID" : Unity LevelPlay.
  /// - "EXCHANGE_CHARTBOOST_GBID" : Chartboost Mediation.
  /// - "EXCHANGE_ADMOST_GBID" : AdMost.
  /// - "EXCHANGE_TOPON_GBID" : TopOn.
  core.String? exchange;

  $ExchangeAssignedTargetingOptionDetails({
    this.exchange,
  });

  $ExchangeAssignedTargetingOptionDetails.fromJson(core.Map json_)
      : this(
          exchange: json_.containsKey('exchange')
              ? json_['exchange'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (exchange != null) 'exchange': exchange!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : ExchangeConfigEnabledExchange
/// - displayvideo:v3 : ExchangeConfigEnabledExchange
class $ExchangeConfigEnabledExchange {
  /// The enabled exchange.
  /// Possible string values are:
  /// - "EXCHANGE_UNSPECIFIED" : Exchange is not specified or is unknown in this
  /// version.
  /// - "EXCHANGE_GOOGLE_AD_MANAGER" : Google Ad Manager.
  /// - "EXCHANGE_APPNEXUS" : AppNexus.
  /// - "EXCHANGE_BRIGHTROLL" : BrightRoll Exchange for Video from Yahoo!.
  /// - "EXCHANGE_ADFORM" : Adform.
  /// - "EXCHANGE_ADMETA" : Admeta.
  /// - "EXCHANGE_ADMIXER" : Admixer.
  /// - "EXCHANGE_ADSMOGO" : AdsMogo.
  /// - "EXCHANGE_ADSWIZZ" : AdsWizz.
  /// - "EXCHANGE_BIDSWITCH" : BidSwitch.
  /// - "EXCHANGE_BRIGHTROLL_DISPLAY" : BrightRoll Exchange for Display from
  /// Yahoo!.
  /// - "EXCHANGE_CADREON" : Cadreon.
  /// - "EXCHANGE_DAILYMOTION" : Dailymotion.
  /// - "EXCHANGE_FIVE" : Five.
  /// - "EXCHANGE_FLUCT" : Fluct.
  /// - "EXCHANGE_FREEWHEEL" : FreeWheel SSP.
  /// - "EXCHANGE_GENIEE" : Geniee.
  /// - "EXCHANGE_GUMGUM" : GumGum.
  /// - "EXCHANGE_IMOBILE" : i-mobile.
  /// - "EXCHANGE_IBILLBOARD" : iBILLBOARD.
  /// - "EXCHANGE_IMPROVE_DIGITAL" : Improve Digital.
  /// - "EXCHANGE_INDEX" : Index Exchange.
  /// - "EXCHANGE_KARGO" : Kargo.
  /// - "EXCHANGE_MICROAD" : MicroAd.
  /// - "EXCHANGE_MOPUB" : MoPub.
  /// - "EXCHANGE_NEND" : Nend.
  /// - "EXCHANGE_ONE_BY_AOL_DISPLAY" : ONE by AOL: Display Market Place.
  /// - "EXCHANGE_ONE_BY_AOL_MOBILE" : ONE by AOL: Mobile.
  /// - "EXCHANGE_ONE_BY_AOL_VIDEO" : ONE by AOL: Video.
  /// - "EXCHANGE_OOYALA" : Ooyala.
  /// - "EXCHANGE_OPENX" : OpenX.
  /// - "EXCHANGE_PERMODO" : Permodo.
  /// - "EXCHANGE_PLATFORMONE" : Platform One.
  /// - "EXCHANGE_PLATFORMID" : PlatformId.
  /// - "EXCHANGE_PUBMATIC" : PubMatic.
  /// - "EXCHANGE_PULSEPOINT" : PulsePoint.
  /// - "EXCHANGE_REVENUEMAX" : RevenueMax.
  /// - "EXCHANGE_RUBICON" : Rubicon.
  /// - "EXCHANGE_SMARTCLIP" : SmartClip.
  /// - "EXCHANGE_SMARTRTB" : SmartRTB+.
  /// - "EXCHANGE_SMARTSTREAMTV" : SmartstreamTv.
  /// - "EXCHANGE_SOVRN" : Sovrn.
  /// - "EXCHANGE_SPOTXCHANGE" : SpotXchange.
  /// - "EXCHANGE_STROER" : Ströer SSP.
  /// - "EXCHANGE_TEADSTV" : TeadsTv.
  /// - "EXCHANGE_TELARIA" : Telaria.
  /// - "EXCHANGE_TVN" : TVN.
  /// - "EXCHANGE_UNITED" : United.
  /// - "EXCHANGE_YIELDLAB" : Yieldlab.
  /// - "EXCHANGE_YIELDMO" : Yieldmo.
  /// - "EXCHANGE_UNRULYX" : UnrulyX.
  /// - "EXCHANGE_OPEN8" : Open8.
  /// - "EXCHANGE_TRITON" : Triton.
  /// - "EXCHANGE_TRIPLELIFT" : TripleLift.
  /// - "EXCHANGE_TABOOLA" : Taboola.
  /// - "EXCHANGE_INMOBI" : InMobi.
  /// - "EXCHANGE_SMAATO" : Smaato.
  /// - "EXCHANGE_AJA" : Aja.
  /// - "EXCHANGE_SUPERSHIP" : Supership.
  /// - "EXCHANGE_NEXSTAR_DIGITAL" : Nexstar Digital.
  /// - "EXCHANGE_WAZE" : Waze.
  /// - "EXCHANGE_SOUNDCAST" : SoundCast.
  /// - "EXCHANGE_SHARETHROUGH" : Sharethrough.
  /// - "EXCHANGE_FYBER" : Fyber.
  /// - "EXCHANGE_RED_FOR_PUBLISHERS" : Red For Publishers.
  /// - "EXCHANGE_MEDIANET" : Media.net.
  /// - "EXCHANGE_TAPJOY" : Tapjoy.
  /// - "EXCHANGE_VISTAR" : Vistar.
  /// - "EXCHANGE_DAX" : DAX.
  /// - "EXCHANGE_JCD" : JCD.
  /// - "EXCHANGE_PLACE_EXCHANGE" : Place Exchange.
  /// - "EXCHANGE_APPLOVIN" : AppLovin.
  /// - "EXCHANGE_CONNATIX" : Connatix.
  /// - "EXCHANGE_RESET_DIGITAL" : Reset Digital.
  /// - "EXCHANGE_HIVESTACK" : Hivestack.
  /// - "EXCHANGE_DRAX" : Drax.
  /// - "EXCHANGE_APPLOVIN_GBID" : AppLovin MAX.
  /// - "EXCHANGE_FYBER_GBID" : DT Fairbid.
  /// - "EXCHANGE_UNITY_GBID" : Unity LevelPlay.
  /// - "EXCHANGE_CHARTBOOST_GBID" : Chartboost Mediation.
  /// - "EXCHANGE_ADMOST_GBID" : AdMost.
  /// - "EXCHANGE_TOPON_GBID" : TopOn.
  core.String? exchange;

  /// Agency ID of Google Ad Manager.
  ///
  /// The field is only relevant when Google Ad Manager is the enabled exchange.
  ///
  /// Output only.
  core.String? googleAdManagerAgencyId;

  /// Network ID of Google Ad Manager.
  ///
  /// The field is only relevant when Google Ad Manager is the enabled exchange.
  ///
  /// Output only.
  core.String? googleAdManagerBuyerNetworkId;

  /// Seat ID of the enabled exchange.
  ///
  /// Output only.
  core.String? seatId;

  $ExchangeConfigEnabledExchange({
    this.exchange,
    this.googleAdManagerAgencyId,
    this.googleAdManagerBuyerNetworkId,
    this.seatId,
  });

  $ExchangeConfigEnabledExchange.fromJson(core.Map json_)
      : this(
          exchange: json_.containsKey('exchange')
              ? json_['exchange'] as core.String
              : null,
          googleAdManagerAgencyId: json_.containsKey('googleAdManagerAgencyId')
              ? json_['googleAdManagerAgencyId'] as core.String
              : null,
          googleAdManagerBuyerNetworkId:
              json_.containsKey('googleAdManagerBuyerNetworkId')
                  ? json_['googleAdManagerBuyerNetworkId'] as core.String
                  : null,
          seatId: json_.containsKey('seatId')
              ? json_['seatId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (exchange != null) 'exchange': exchange!,
        if (googleAdManagerAgencyId != null)
          'googleAdManagerAgencyId': googleAdManagerAgencyId!,
        if (googleAdManagerBuyerNetworkId != null)
          'googleAdManagerBuyerNetworkId': googleAdManagerBuyerNetworkId!,
        if (seatId != null) 'seatId': seatId!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : ExchangeReviewStatus
/// - displayvideo:v3 : ExchangeReviewStatus
class $ExchangeReviewStatus {
  /// The exchange reviewing the creative.
  /// Possible string values are:
  /// - "EXCHANGE_UNSPECIFIED" : Exchange is not specified or is unknown in this
  /// version.
  /// - "EXCHANGE_GOOGLE_AD_MANAGER" : Google Ad Manager.
  /// - "EXCHANGE_APPNEXUS" : AppNexus.
  /// - "EXCHANGE_BRIGHTROLL" : BrightRoll Exchange for Video from Yahoo!.
  /// - "EXCHANGE_ADFORM" : Adform.
  /// - "EXCHANGE_ADMETA" : Admeta.
  /// - "EXCHANGE_ADMIXER" : Admixer.
  /// - "EXCHANGE_ADSMOGO" : AdsMogo.
  /// - "EXCHANGE_ADSWIZZ" : AdsWizz.
  /// - "EXCHANGE_BIDSWITCH" : BidSwitch.
  /// - "EXCHANGE_BRIGHTROLL_DISPLAY" : BrightRoll Exchange for Display from
  /// Yahoo!.
  /// - "EXCHANGE_CADREON" : Cadreon.
  /// - "EXCHANGE_DAILYMOTION" : Dailymotion.
  /// - "EXCHANGE_FIVE" : Five.
  /// - "EXCHANGE_FLUCT" : Fluct.
  /// - "EXCHANGE_FREEWHEEL" : FreeWheel SSP.
  /// - "EXCHANGE_GENIEE" : Geniee.
  /// - "EXCHANGE_GUMGUM" : GumGum.
  /// - "EXCHANGE_IMOBILE" : i-mobile.
  /// - "EXCHANGE_IBILLBOARD" : iBILLBOARD.
  /// - "EXCHANGE_IMPROVE_DIGITAL" : Improve Digital.
  /// - "EXCHANGE_INDEX" : Index Exchange.
  /// - "EXCHANGE_KARGO" : Kargo.
  /// - "EXCHANGE_MICROAD" : MicroAd.
  /// - "EXCHANGE_MOPUB" : MoPub.
  /// - "EXCHANGE_NEND" : Nend.
  /// - "EXCHANGE_ONE_BY_AOL_DISPLAY" : ONE by AOL: Display Market Place.
  /// - "EXCHANGE_ONE_BY_AOL_MOBILE" : ONE by AOL: Mobile.
  /// - "EXCHANGE_ONE_BY_AOL_VIDEO" : ONE by AOL: Video.
  /// - "EXCHANGE_OOYALA" : Ooyala.
  /// - "EXCHANGE_OPENX" : OpenX.
  /// - "EXCHANGE_PERMODO" : Permodo.
  /// - "EXCHANGE_PLATFORMONE" : Platform One.
  /// - "EXCHANGE_PLATFORMID" : PlatformId.
  /// - "EXCHANGE_PUBMATIC" : PubMatic.
  /// - "EXCHANGE_PULSEPOINT" : PulsePoint.
  /// - "EXCHANGE_REVENUEMAX" : RevenueMax.
  /// - "EXCHANGE_RUBICON" : Rubicon.
  /// - "EXCHANGE_SMARTCLIP" : SmartClip.
  /// - "EXCHANGE_SMARTRTB" : SmartRTB+.
  /// - "EXCHANGE_SMARTSTREAMTV" : SmartstreamTv.
  /// - "EXCHANGE_SOVRN" : Sovrn.
  /// - "EXCHANGE_SPOTXCHANGE" : SpotXchange.
  /// - "EXCHANGE_STROER" : Ströer SSP.
  /// - "EXCHANGE_TEADSTV" : TeadsTv.
  /// - "EXCHANGE_TELARIA" : Telaria.
  /// - "EXCHANGE_TVN" : TVN.
  /// - "EXCHANGE_UNITED" : United.
  /// - "EXCHANGE_YIELDLAB" : Yieldlab.
  /// - "EXCHANGE_YIELDMO" : Yieldmo.
  /// - "EXCHANGE_UNRULYX" : UnrulyX.
  /// - "EXCHANGE_OPEN8" : Open8.
  /// - "EXCHANGE_TRITON" : Triton.
  /// - "EXCHANGE_TRIPLELIFT" : TripleLift.
  /// - "EXCHANGE_TABOOLA" : Taboola.
  /// - "EXCHANGE_INMOBI" : InMobi.
  /// - "EXCHANGE_SMAATO" : Smaato.
  /// - "EXCHANGE_AJA" : Aja.
  /// - "EXCHANGE_SUPERSHIP" : Supership.
  /// - "EXCHANGE_NEXSTAR_DIGITAL" : Nexstar Digital.
  /// - "EXCHANGE_WAZE" : Waze.
  /// - "EXCHANGE_SOUNDCAST" : SoundCast.
  /// - "EXCHANGE_SHARETHROUGH" : Sharethrough.
  /// - "EXCHANGE_FYBER" : Fyber.
  /// - "EXCHANGE_RED_FOR_PUBLISHERS" : Red For Publishers.
  /// - "EXCHANGE_MEDIANET" : Media.net.
  /// - "EXCHANGE_TAPJOY" : Tapjoy.
  /// - "EXCHANGE_VISTAR" : Vistar.
  /// - "EXCHANGE_DAX" : DAX.
  /// - "EXCHANGE_JCD" : JCD.
  /// - "EXCHANGE_PLACE_EXCHANGE" : Place Exchange.
  /// - "EXCHANGE_APPLOVIN" : AppLovin.
  /// - "EXCHANGE_CONNATIX" : Connatix.
  /// - "EXCHANGE_RESET_DIGITAL" : Reset Digital.
  /// - "EXCHANGE_HIVESTACK" : Hivestack.
  /// - "EXCHANGE_DRAX" : Drax.
  /// - "EXCHANGE_APPLOVIN_GBID" : AppLovin MAX.
  /// - "EXCHANGE_FYBER_GBID" : DT Fairbid.
  /// - "EXCHANGE_UNITY_GBID" : Unity LevelPlay.
  /// - "EXCHANGE_CHARTBOOST_GBID" : Chartboost Mediation.
  /// - "EXCHANGE_ADMOST_GBID" : AdMost.
  /// - "EXCHANGE_TOPON_GBID" : TopOn.
  core.String? exchange;

  /// Status of the exchange review.
  /// Possible string values are:
  /// - "REVIEW_STATUS_UNSPECIFIED" : Type value is not specified or is unknown
  /// in this version.
  /// - "REVIEW_STATUS_APPROVED" : The creative is approved.
  /// - "REVIEW_STATUS_REJECTED" : The creative is rejected.
  /// - "REVIEW_STATUS_PENDING" : The creative is pending review.
  core.String? status;

  $ExchangeReviewStatus({
    this.exchange,
    this.status,
  });

  $ExchangeReviewStatus.fromJson(core.Map json_)
      : this(
          exchange: json_.containsKey('exchange')
              ? json_['exchange'] as core.String
              : null,
          status: json_.containsKey('status')
              ? json_['status'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (exchange != null) 'exchange': exchange!,
        if (status != null) 'status': status!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : ExchangeTargetingOptionDetails
/// - displayvideo:v3 : ExchangeTargetingOptionDetails
class $ExchangeTargetingOptionDetails {
  /// The type of exchange.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "EXCHANGE_UNSPECIFIED" : Exchange is not specified or is unknown in this
  /// version.
  /// - "EXCHANGE_GOOGLE_AD_MANAGER" : Google Ad Manager.
  /// - "EXCHANGE_APPNEXUS" : AppNexus.
  /// - "EXCHANGE_BRIGHTROLL" : BrightRoll Exchange for Video from Yahoo!.
  /// - "EXCHANGE_ADFORM" : Adform.
  /// - "EXCHANGE_ADMETA" : Admeta.
  /// - "EXCHANGE_ADMIXER" : Admixer.
  /// - "EXCHANGE_ADSMOGO" : AdsMogo.
  /// - "EXCHANGE_ADSWIZZ" : AdsWizz.
  /// - "EXCHANGE_BIDSWITCH" : BidSwitch.
  /// - "EXCHANGE_BRIGHTROLL_DISPLAY" : BrightRoll Exchange for Display from
  /// Yahoo!.
  /// - "EXCHANGE_CADREON" : Cadreon.
  /// - "EXCHANGE_DAILYMOTION" : Dailymotion.
  /// - "EXCHANGE_FIVE" : Five.
  /// - "EXCHANGE_FLUCT" : Fluct.
  /// - "EXCHANGE_FREEWHEEL" : FreeWheel SSP.
  /// - "EXCHANGE_GENIEE" : Geniee.
  /// - "EXCHANGE_GUMGUM" : GumGum.
  /// - "EXCHANGE_IMOBILE" : i-mobile.
  /// - "EXCHANGE_IBILLBOARD" : iBILLBOARD.
  /// - "EXCHANGE_IMPROVE_DIGITAL" : Improve Digital.
  /// - "EXCHANGE_INDEX" : Index Exchange.
  /// - "EXCHANGE_KARGO" : Kargo.
  /// - "EXCHANGE_MICROAD" : MicroAd.
  /// - "EXCHANGE_MOPUB" : MoPub.
  /// - "EXCHANGE_NEND" : Nend.
  /// - "EXCHANGE_ONE_BY_AOL_DISPLAY" : ONE by AOL: Display Market Place.
  /// - "EXCHANGE_ONE_BY_AOL_MOBILE" : ONE by AOL: Mobile.
  /// - "EXCHANGE_ONE_BY_AOL_VIDEO" : ONE by AOL: Video.
  /// - "EXCHANGE_OOYALA" : Ooyala.
  /// - "EXCHANGE_OPENX" : OpenX.
  /// - "EXCHANGE_PERMODO" : Permodo.
  /// - "EXCHANGE_PLATFORMONE" : Platform One.
  /// - "EXCHANGE_PLATFORMID" : PlatformId.
  /// - "EXCHANGE_PUBMATIC" : PubMatic.
  /// - "EXCHANGE_PULSEPOINT" : PulsePoint.
  /// - "EXCHANGE_REVENUEMAX" : RevenueMax.
  /// - "EXCHANGE_RUBICON" : Rubicon.
  /// - "EXCHANGE_SMARTCLIP" : SmartClip.
  /// - "EXCHANGE_SMARTRTB" : SmartRTB+.
  /// - "EXCHANGE_SMARTSTREAMTV" : SmartstreamTv.
  /// - "EXCHANGE_SOVRN" : Sovrn.
  /// - "EXCHANGE_SPOTXCHANGE" : SpotXchange.
  /// - "EXCHANGE_STROER" : Ströer SSP.
  /// - "EXCHANGE_TEADSTV" : TeadsTv.
  /// - "EXCHANGE_TELARIA" : Telaria.
  /// - "EXCHANGE_TVN" : TVN.
  /// - "EXCHANGE_UNITED" : United.
  /// - "EXCHANGE_YIELDLAB" : Yieldlab.
  /// - "EXCHANGE_YIELDMO" : Yieldmo.
  /// - "EXCHANGE_UNRULYX" : UnrulyX.
  /// - "EXCHANGE_OPEN8" : Open8.
  /// - "EXCHANGE_TRITON" : Triton.
  /// - "EXCHANGE_TRIPLELIFT" : TripleLift.
  /// - "EXCHANGE_TABOOLA" : Taboola.
  /// - "EXCHANGE_INMOBI" : InMobi.
  /// - "EXCHANGE_SMAATO" : Smaato.
  /// - "EXCHANGE_AJA" : Aja.
  /// - "EXCHANGE_SUPERSHIP" : Supership.
  /// - "EXCHANGE_NEXSTAR_DIGITAL" : Nexstar Digital.
  /// - "EXCHANGE_WAZE" : Waze.
  /// - "EXCHANGE_SOUNDCAST" : SoundCast.
  /// - "EXCHANGE_SHARETHROUGH" : Sharethrough.
  /// - "EXCHANGE_FYBER" : Fyber.
  /// - "EXCHANGE_RED_FOR_PUBLISHERS" : Red For Publishers.
  /// - "EXCHANGE_MEDIANET" : Media.net.
  /// - "EXCHANGE_TAPJOY" : Tapjoy.
  /// - "EXCHANGE_VISTAR" : Vistar.
  /// - "EXCHANGE_DAX" : DAX.
  /// - "EXCHANGE_JCD" : JCD.
  /// - "EXCHANGE_PLACE_EXCHANGE" : Place Exchange.
  /// - "EXCHANGE_APPLOVIN" : AppLovin.
  /// - "EXCHANGE_CONNATIX" : Connatix.
  /// - "EXCHANGE_RESET_DIGITAL" : Reset Digital.
  /// - "EXCHANGE_HIVESTACK" : Hivestack.
  /// - "EXCHANGE_DRAX" : Drax.
  /// - "EXCHANGE_APPLOVIN_GBID" : AppLovin MAX.
  /// - "EXCHANGE_FYBER_GBID" : DT Fairbid.
  /// - "EXCHANGE_UNITY_GBID" : Unity LevelPlay.
  /// - "EXCHANGE_CHARTBOOST_GBID" : Chartboost Mediation.
  /// - "EXCHANGE_ADMOST_GBID" : AdMost.
  /// - "EXCHANGE_TOPON_GBID" : TopOn.
  core.String? exchange;

  $ExchangeTargetingOptionDetails({
    this.exchange,
  });

  $ExchangeTargetingOptionDetails.fromJson(core.Map json_)
      : this(
          exchange: json_.containsKey('exchange')
              ? json_['exchange'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (exchange != null) 'exchange': exchange!,
      };
}

/// Used by:
///
/// - aiplatform:v1 : GoogleCloudAiplatformV1ProbeExecAction
/// - run:v1 : ExecAction
class $ExecAction {
  /// Command is the command line to execute inside the container, the working
  /// directory for the command is root ('/') in the container's filesystem.
  ///
  /// The command is simply exec'd, it is not run inside a shell, so traditional
  /// shell instructions ('|', etc) won't work. To use a shell, you need to
  /// explicitly call out to that shell. Exit status of 0 is treated as
  /// live/healthy and non-zero is unhealthy.
  core.List<core.String>? command;

  $ExecAction({
    this.command,
  });

  $ExecAction.fromJson(core.Map json_)
      : this(
          command: json_.containsKey('command')
              ? (json_['command'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (command != null) 'command': command!,
      };
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
          executionDuration: json_.containsKey('executionDuration')
              ? json_['executionDuration'] as core.String
              : null,
          readOperations: json_.containsKey('readOperations')
              ? json_['readOperations'] as core.String
              : null,
          resultsReturned: json_.containsKey('resultsReturned')
              ? json_['resultsReturned'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (debugStats != null) 'debugStats': debugStats!,
        if (executionDuration != null) 'executionDuration': executionDuration!,
        if (readOperations != null) 'readOperations': readOperations!,
        if (resultsReturned != null) 'resultsReturned': resultsReturned!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : ExitEvent
/// - displayvideo:v3 : ExitEvent
class $ExitEvent {
  /// The name of the click tag of the exit event.
  ///
  /// The name must be unique within one creative. Leave it empty or unset for
  /// creatives containing image assets only.
  core.String? name;

  /// The name used to identify this event in reports.
  ///
  /// Leave it empty or unset for creatives containing image assets only.
  core.String? reportingName;

  /// The type of the exit event.
  ///
  /// Required.
  /// Possible string values are:
  /// - "EXIT_EVENT_TYPE_UNSPECIFIED" : Exit event type is not specified or is
  /// unknown in this version.
  /// - "EXIT_EVENT_TYPE_DEFAULT" : The exit event is the default one.
  /// - "EXIT_EVENT_TYPE_BACKUP" : The exit event is a backup exit event. There
  /// could be multiple backup exit events in a creative.
  core.String? type;

  /// The click through URL of the exit event.
  ///
  /// This is required when type is: * `EXIT_EVENT_TYPE_DEFAULT` *
  /// `EXIT_EVENT_TYPE_BACKUP`
  ///
  /// Required.
  core.String? url;

  $ExitEvent({
    this.name,
    this.reportingName,
    this.type,
    this.url,
  });

  $ExitEvent.fromJson(core.Map json_)
      : this(
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          reportingName: json_.containsKey('reportingName')
              ? json_['reportingName'] as core.String
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
          url: json_.containsKey('url') ? json_['url'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (reportingName != null) 'reportingName': reportingName!,
        if (type != null) 'type': type!,
        if (url != null) 'url': url!,
      };
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

  $ExplainOptions({
    this.analyze,
  });

  $ExplainOptions.fromJson(core.Map json_)
      : this(
          analyze: json_.containsKey('analyze')
              ? json_['analyze'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (analyze != null) 'analyze': analyze!,
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

  $Explicit.fromJson(core.Map json_)
      : this(
          bounds: json_.containsKey('bounds')
              ? (json_['bounds'] as core.List)
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

  $Exponential.fromJson(core.Map json_)
      : this(
          growthFactor: json_.containsKey('growthFactor')
              ? (json_['growthFactor'] as core.num).toDouble()
              : null,
          numFiniteBuckets: json_.containsKey('numFiniteBuckets')
              ? json_['numFiniteBuckets'] as core.int
              : null,
          scale: json_.containsKey('scale')
              ? (json_['scale'] as core.num).toDouble()
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
/// - vault:v1 : CalendarExportOptions
/// - vault:v1 : VoiceExportOptions
class $ExportOptions00 {
  /// The file format for exported text messages.
  /// Possible string values are:
  /// - "EXPORT_FORMAT_UNSPECIFIED" : No export format specified.
  /// - "MBOX" : Export as MBOX. Only available for Gmail, Groups, Hangouts and
  /// Voice.
  /// - "PST" : Export as PST. Only available for Gmail, Groups, Hangouts, Voice
  /// and Calendar.
  /// - "ICS" : Export as ICS. Only available for Calendar.
  core.String? exportFormat;

  $ExportOptions00({
    this.exportFormat,
  });

  $ExportOptions00.fromJson(core.Map json_)
      : this(
          exportFormat: json_.containsKey('exportFormat')
              ? json_['exportFormat'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (exportFormat != null) 'exportFormat': exportFormat!,
      };
}

/// Used by:
///
/// - vault:v1 : GroupsExportOptions
/// - vault:v1 : HangoutsChatExportOptions
class $ExportOptions01 {
  /// The file format for exported messages.
  /// Possible string values are:
  /// - "EXPORT_FORMAT_UNSPECIFIED" : No export format specified.
  /// - "MBOX" : Export as MBOX. Only available for Gmail, Groups, Hangouts and
  /// Voice.
  /// - "PST" : Export as PST. Only available for Gmail, Groups, Hangouts, Voice
  /// and Calendar.
  /// - "ICS" : Export as ICS. Only available for Calendar.
  core.String? exportFormat;

  $ExportOptions01({
    this.exportFormat,
  });

  $ExportOptions01.fromJson(core.Map json_)
      : this(
          exportFormat: json_.containsKey('exportFormat')
              ? json_['exportFormat'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (exportFormat != null) 'exportFormat': exportFormat!,
      };
}

/// Used by:
///
/// - accesscontextmanager:v1 : Expr
/// - aiplatform:v1 : GoogleTypeExpr
/// - analyticshub:v1 : Expr
/// - apigateway:v1 : ApigatewayExpr
/// - apigee:v1 : GoogleTypeExpr
/// - apigeeregistry:v1 : Expr
/// - apphub:v1 : Expr
/// - artifactregistry:v1 : Expr
/// - backupdr:v1 : Expr
/// - beyondcorp:v1 : GoogleTypeExpr
/// - bigquery:v2 : Expr
/// - bigqueryconnection:v1 : Expr
/// - bigquerydatapolicy:v1 : Expr
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
/// - cloudresourcemanager:v2 : Expr
/// - cloudresourcemanager:v3 : Expr
/// - cloudtasks:v2 : Expr
/// - compute:v1 : Expr
/// - connectors:v1 : Expr
/// - containeranalysis:v1 : Expr
/// - contentwarehouse:v1 : GoogleTypeExpr
/// - datacatalog:v1 : Expr
/// - datafusion:v1 : Expr
/// - datamigration:v1 : Expr
/// - dataplex:v1 : GoogleTypeExpr
/// - dataproc:v1 : Expr
/// - deploymentmanager:v2 : Expr
/// - dns:v1 : Expr
/// - domains:v1 : Expr
/// - eventarc:v1 : Expr
/// - gkebackup:v1 : Expr
/// - gkehub:v1 : Expr
/// - gkeonprem:v1 : Expr
/// - healthcare:v1 : Expr
/// - iam:v1 : Expr
/// - iam:v2 : GoogleTypeExpr
/// - iap:v1 : Expr
/// - identitytoolkit:v2 : GoogleTypeExpr
/// - ids:v1 : Expr
/// - looker:v1 : Expr
/// - managedidentities:v1 : Expr
/// - metastore:v1 : Expr
/// - ml:v1 : GoogleType__Expr
/// - networkconnectivity:v1 : Expr
/// - networkmanagement:v1 : Expr
/// - networksecurity:v1 : Expr
/// - networkservices:v1 : Expr
/// - notebooks:v1 : Expr
/// - notebooks:v2 : Expr
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

  $Expr({
    this.description,
    this.expression,
    this.location,
    this.title,
  });

  $Expr.fromJson(core.Map json_)
      : this(
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          expression: json_.containsKey('expression')
              ? json_['expression'] as core.String
              : null,
          location: json_.containsKey('location')
              ? json_['location'] as core.String
              : null,
          title:
              json_.containsKey('title') ? json_['title'] as core.String : null,
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
/// - cloudkms:v1 : ExternalProtectionLevelOptions
/// - kmsinventory:v1 : GoogleCloudKmsV1ExternalProtectionLevelOptions
class $ExternalProtectionLevelOptions {
  /// The path to the external key material on the EKM when using EkmConnection
  /// e.g., "v0/my/key".
  ///
  /// Set this field instead of external_key_uri when using an EkmConnection.
  core.String? ekmConnectionKeyPath;

  /// The URI for an external resource that this CryptoKeyVersion represents.
  core.String? externalKeyUri;

  $ExternalProtectionLevelOptions({
    this.ekmConnectionKeyPath,
    this.externalKeyUri,
  });

  $ExternalProtectionLevelOptions.fromJson(core.Map json_)
      : this(
          ekmConnectionKeyPath: json_.containsKey('ekmConnectionKeyPath')
              ? json_['ekmConnectionKeyPath'] as core.String
              : null,
          externalKeyUri: json_.containsKey('externalKeyUri')
              ? json_['externalKeyUri'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (ekmConnectionKeyPath != null)
          'ekmConnectionKeyPath': ekmConnectionKeyPath!,
        if (externalKeyUri != null) 'externalKeyUri': externalKeyUri!,
      };
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

  $F5BigIpConfig({
    this.address,
    this.partition,
    this.snatPool,
  });

  $F5BigIpConfig.fromJson(core.Map json_)
      : this(
          address: json_.containsKey('address')
              ? json_['address'] as core.String
              : null,
          partition: json_.containsKey('partition')
              ? json_['partition'] as core.String
              : null,
          snatPool: json_.containsKey('snatPool')
              ? json_['snatPool'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (address != null) 'address': address!,
        if (partition != null) 'partition': partition!,
        if (snatPool != null) 'snatPool': snatPool!,
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

  $FcmOptions.fromJson(core.Map json_)
      : this(
          analyticsLabel: json_.containsKey('analyticsLabel')
              ? json_['analyticsLabel'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (analyticsLabel != null) 'analyticsLabel': analyticsLabel!,
      };
}

/// Used by:
///
/// - containeranalysis:v1 : GrafeasV1FileLocation
/// - ondemandscanning:v1 : FileLocation
/// - ondemandscanning:v1 : GrafeasV1FileLocation
class $FileLocation {
  /// For jars that are contained inside .war files, this filepath can indicate
  /// the path to war file combined with the path to jar file.
  core.String? filePath;

  $FileLocation({
    this.filePath,
  });

  $FileLocation.fromJson(core.Map json_)
      : this(
          filePath: json_.containsKey('filePath')
              ? json_['filePath'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (filePath != null) 'filePath': filePath!,
      };
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

  $FilterSplit({
    this.testFilter,
    this.trainingFilter,
    this.validationFilter,
  });

  $FilterSplit.fromJson(core.Map json_)
      : this(
          testFilter: json_.containsKey('testFilter')
              ? json_['testFilter'] as core.String
              : null,
          trainingFilter: json_.containsKey('trainingFilter')
              ? json_['trainingFilter'] as core.String
              : null,
          validationFilter: json_.containsKey('validationFilter')
              ? json_['validationFilter'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (testFilter != null) 'testFilter': testFilter!,
        if (trainingFilter != null) 'trainingFilter': trainingFilter!,
        if (validationFilter != null) 'validationFilter': validationFilter!,
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

  $Fingerprint.fromJson(core.Map json_)
      : this(
          v1Name: json_.containsKey('v1Name')
              ? json_['v1Name'] as core.String
              : null,
          v2Blob: json_.containsKey('v2Blob')
              ? (json_['v2Blob'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          v2Name: json_.containsKey('v2Name')
              ? json_['v2Name'] as core.String
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
/// - displayvideo:v2 : FirstAndThirdPartyAudienceTargetingSetting
/// - displayvideo:v3 : FirstAndThirdPartyAudienceTargetingSetting
class $FirstAndThirdPartyAudienceTargetingSetting {
  /// First and third party audience id of the first and third party audience
  /// targeting setting.
  ///
  /// This id is first_and_third_party_audience_id.
  ///
  /// Required.
  core.String? firstAndThirdPartyAudienceId;

  /// The recency of the first and third party audience targeting setting.
  ///
  /// Only applicable to first party audiences, otherwise will be ignored. For
  /// more info, refer to
  /// https://support.google.com/displayvideo/answer/2949947#recency When
  /// unspecified, no recency limit will be used.
  /// Possible string values are:
  /// - "RECENCY_NO_LIMIT" : No limit of recency.
  /// - "RECENCY_1_MINUTE" : Recency is 1 minute.
  /// - "RECENCY_5_MINUTES" : Recency is 5 minutes.
  /// - "RECENCY_10_MINUTES" : Recency is 10 minutes.
  /// - "RECENCY_15_MINUTES" : Recency is 15 minutes.
  /// - "RECENCY_30_MINUTES" : Recency is 30 minutes.
  /// - "RECENCY_1_HOUR" : Recency is 1 hour.
  /// - "RECENCY_2_HOURS" : Recency is 2 hours.
  /// - "RECENCY_3_HOURS" : Recency is 3 hours.
  /// - "RECENCY_6_HOURS" : Recency is 6 hours.
  /// - "RECENCY_12_HOURS" : Recency is 12 hours.
  /// - "RECENCY_1_DAY" : Recency is 1 day.
  /// - "RECENCY_2_DAYS" : Recency is 2 days.
  /// - "RECENCY_3_DAYS" : Recency is 3 days.
  /// - "RECENCY_5_DAYS" : Recency is 5 days.
  /// - "RECENCY_7_DAYS" : Recency is 7 days.
  /// - "RECENCY_10_DAYS" : Recency is 10 days.
  /// - "RECENCY_14_DAYS" : Recency is 14 days.
  /// - "RECENCY_15_DAYS" : Recency is 15 days.
  /// - "RECENCY_21_DAYS" : Recency is 21 days.
  /// - "RECENCY_28_DAYS" : Recency is 28 days.
  /// - "RECENCY_30_DAYS" : Recency is 30 days.
  /// - "RECENCY_40_DAYS" : Recency is 40 days.
  /// - "RECENCY_45_DAYS" : Recency is 45 days.
  /// - "RECENCY_60_DAYS" : Recency is 60 days.
  /// - "RECENCY_90_DAYS" : Recency is 90 days.
  /// - "RECENCY_120_DAYS" : Recency is 120 days.
  /// - "RECENCY_180_DAYS" : Recency is 180 days.
  /// - "RECENCY_270_DAYS" : Recency is 270 days.
  /// - "RECENCY_365_DAYS" : Recency is 365 days.
  core.String? recency;

  $FirstAndThirdPartyAudienceTargetingSetting({
    this.firstAndThirdPartyAudienceId,
    this.recency,
  });

  $FirstAndThirdPartyAudienceTargetingSetting.fromJson(core.Map json_)
      : this(
          firstAndThirdPartyAudienceId:
              json_.containsKey('firstAndThirdPartyAudienceId')
                  ? json_['firstAndThirdPartyAudienceId'] as core.String
                  : null,
          recency: json_.containsKey('recency')
              ? json_['recency'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (firstAndThirdPartyAudienceId != null)
          'firstAndThirdPartyAudienceId': firstAndThirdPartyAudienceId!,
        if (recency != null) 'recency': recency!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : FixedBidStrategy
/// - displayvideo:v3 : FixedBidStrategy
class $FixedBidStrategy {
  /// The fixed bid amount, in micros of the advertiser's currency.
  ///
  /// For insertion order entity, bid_amount_micros should be set as 0. For line
  /// item entity, bid_amount_micros must be greater than or equal to billable
  /// unit of the given currency and smaller than or equal to the upper limit
  /// 1000000000. For example, 1500000 represents 1.5 standard units of the
  /// currency.
  core.String? bidAmountMicros;

  $FixedBidStrategy({
    this.bidAmountMicros,
  });

  $FixedBidStrategy.fromJson(core.Map json_)
      : this(
          bidAmountMicros: json_.containsKey('bidAmountMicros')
              ? json_['bidAmountMicros'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bidAmountMicros != null) 'bidAmountMicros': bidAmountMicros!,
      };
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
          hostname: json_.containsKey('hostname')
              ? json_['hostname'] as core.String
              : null,
          password: json_.containsKey('password')
              ? json_['password'] as core.String
              : null,
          port: json_.containsKey('port') ? json_['port'] as core.int : null,
          privateKey: json_.containsKey('privateKey')
              ? json_['privateKey'] as core.String
              : null,
          username: json_.containsKey('username')
              ? json_['username'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (hostname != null) 'hostname': hostname!,
        if (password != null) 'password': password!,
        if (port != null) 'port': port!,
        if (privateKey != null) 'privateKey': privateKey!,
        if (username != null) 'username': username!,
      };
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
          testFraction: json_.containsKey('testFraction')
              ? (json_['testFraction'] as core.num).toDouble()
              : null,
          trainingFraction: json_.containsKey('trainingFraction')
              ? (json_['trainingFraction'] as core.num).toDouble()
              : null,
          validationFraction: json_.containsKey('validationFraction')
              ? (json_['validationFraction'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (testFraction != null) 'testFraction': testFraction!,
        if (trainingFraction != null) 'trainingFraction': trainingFraction!,
        if (validationFraction != null)
          'validationFraction': validationFraction!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : FrequencyCap
/// - displayvideo:v3 : FrequencyCap
class $FrequencyCap {
  /// The maximum number of times a user may be shown the same ad during this
  /// period.
  ///
  /// Must be greater than 0. Required when unlimited is `false` and max_views
  /// is not set.
  core.int? maxImpressions;

  /// The maximum number of times a user may click-through or fully view an ad
  /// during this period until it is no longer served to them.
  ///
  /// Must be greater than 0. Only applicable to YouTube and Partners resources.
  /// Required when unlimited is `false` and max_impressions is not set.
  ///
  /// Optional.
  core.int? maxViews;

  /// The time unit in which the frequency cap will be applied.
  ///
  /// Required when unlimited is `false`.
  /// Possible string values are:
  /// - "TIME_UNIT_UNSPECIFIED" : Time unit value is not specified or is unknown
  /// in this version.
  /// - "TIME_UNIT_LIFETIME" : The frequency cap will be applied to the whole
  /// life time of the line item.
  /// - "TIME_UNIT_MONTHS" : The frequency cap will be applied to a number of
  /// months.
  /// - "TIME_UNIT_WEEKS" : The frequency cap will be applied to a number of
  /// weeks.
  /// - "TIME_UNIT_DAYS" : The frequency cap will be applied to a number of
  /// days.
  /// - "TIME_UNIT_HOURS" : The frequency cap will be applied to a number of
  /// hours.
  /// - "TIME_UNIT_MINUTES" : The frequency cap will be applied to a number of
  /// minutes.
  core.String? timeUnit;

  /// The number of time_unit the frequency cap will last.
  ///
  /// Required when unlimited is `false`. The following restrictions apply based
  /// on the value of time_unit: * `TIME_UNIT_LIFETIME` - this field is output
  /// only and will default to 1 * `TIME_UNIT_MONTHS` - must be between 1 and 2
  /// * `TIME_UNIT_WEEKS` - must be between 1 and 4 * `TIME_UNIT_DAYS` - must be
  /// between 1 and 6 * `TIME_UNIT_HOURS` - must be between 1 and 23 *
  /// `TIME_UNIT_MINUTES` - must be between 1 and 59
  core.int? timeUnitCount;

  /// Whether unlimited frequency capping is applied.
  ///
  /// When this field is set to `true`, the remaining frequency cap fields are
  /// not applicable.
  core.bool? unlimited;

  $FrequencyCap({
    this.maxImpressions,
    this.maxViews,
    this.timeUnit,
    this.timeUnitCount,
    this.unlimited,
  });

  $FrequencyCap.fromJson(core.Map json_)
      : this(
          maxImpressions: json_.containsKey('maxImpressions')
              ? json_['maxImpressions'] as core.int
              : null,
          maxViews: json_.containsKey('maxViews')
              ? json_['maxViews'] as core.int
              : null,
          timeUnit: json_.containsKey('timeUnit')
              ? json_['timeUnit'] as core.String
              : null,
          timeUnitCount: json_.containsKey('timeUnitCount')
              ? json_['timeUnitCount'] as core.int
              : null,
          unlimited: json_.containsKey('unlimited')
              ? json_['unlimited'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (maxImpressions != null) 'maxImpressions': maxImpressions!,
        if (maxViews != null) 'maxViews': maxViews!,
        if (timeUnit != null) 'timeUnit': timeUnit!,
        if (timeUnitCount != null) 'timeUnitCount': timeUnitCount!,
        if (unlimited != null) 'unlimited': unlimited!,
      };
}

/// Used by:
///
/// - assuredworkloads:v1 : GoogleCloudAssuredworkloadsV1ViolationRemediationInstructionsGcloud
/// - cloudcontrolspartner:v1 : Gcloud
class $Gcloud {
  /// Additional urls for more information about steps
  core.List<core.String>? additionalLinks;

  /// Gcloud command to resolve violation
  core.List<core.String>? gcloudCommands;

  /// Steps to resolve violation via gcloud cli
  core.List<core.String>? steps;

  $Gcloud({
    this.additionalLinks,
    this.gcloudCommands,
    this.steps,
  });

  $Gcloud.fromJson(core.Map json_)
      : this(
          additionalLinks: json_.containsKey('additionalLinks')
              ? (json_['additionalLinks'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          gcloudCommands: json_.containsKey('gcloudCommands')
              ? (json_['gcloudCommands'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          steps: json_.containsKey('steps')
              ? (json_['steps'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (additionalLinks != null) 'additionalLinks': additionalLinks!,
        if (gcloudCommands != null) 'gcloudCommands': gcloudCommands!,
        if (steps != null) 'steps': steps!,
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

  $GcsSource.fromJson(core.Map json_)
      : this(
          uri: json_.containsKey('uri') ? json_['uri'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (uri != null) 'uri': uri!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : GenderAssignedTargetingOptionDetails
/// - displayvideo:v3 : GenderAssignedTargetingOptionDetails
class $GenderAssignedTargetingOptionDetails {
  /// The gender of the audience.
  ///
  /// Required.
  /// Possible string values are:
  /// - "GENDER_UNSPECIFIED" : Default value when gender is not specified in
  /// this version. This enum is a place holder for default value and does not
  /// represent a real gender option.
  /// - "GENDER_MALE" : The audience gender is male.
  /// - "GENDER_FEMALE" : The audience gender is female.
  /// - "GENDER_UNKNOWN" : The audience gender is unknown.
  core.String? gender;

  $GenderAssignedTargetingOptionDetails({
    this.gender,
  });

  $GenderAssignedTargetingOptionDetails.fromJson(core.Map json_)
      : this(
          gender: json_.containsKey('gender')
              ? json_['gender'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (gender != null) 'gender': gender!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : GenderTargetingOptionDetails
/// - displayvideo:v3 : GenderTargetingOptionDetails
class $GenderTargetingOptionDetails {
  /// The gender of an audience.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "GENDER_UNSPECIFIED" : Default value when gender is not specified in
  /// this version. This enum is a place holder for default value and does not
  /// represent a real gender option.
  /// - "GENDER_MALE" : The audience gender is male.
  /// - "GENDER_FEMALE" : The audience gender is female.
  /// - "GENDER_UNKNOWN" : The audience gender is unknown.
  core.String? gender;

  $GenderTargetingOptionDetails({
    this.gender,
  });

  $GenderTargetingOptionDetails.fromJson(core.Map json_)
      : this(
          gender: json_.containsKey('gender')
              ? json_['gender'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (gender != null) 'gender': gender!,
      };
}

/// Used by:
///
/// - cloudfunctions:v1 : GenerateDownloadUrlResponse
/// - cloudfunctions:v2 : GenerateDownloadUrlResponse
class $GenerateDownloadUrlResponse {
  /// The generated Google Cloud Storage signed URL that should be used for
  /// function source code download.
  core.String? downloadUrl;

  $GenerateDownloadUrlResponse({
    this.downloadUrl,
  });

  $GenerateDownloadUrlResponse.fromJson(core.Map json_)
      : this(
          downloadUrl: json_.containsKey('downloadUrl')
              ? json_['downloadUrl'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (downloadUrl != null) 'downloadUrl': downloadUrl!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : GeoRegionAssignedTargetingOptionDetails
/// - displayvideo:v3 : GeoRegionAssignedTargetingOptionDetails
class $GeoRegionAssignedTargetingOptionDetails {
  /// The display name of the geographic region (e.g., "Ontario, Canada").
  ///
  /// Output only.
  core.String? displayName;

  /// The type of geographic region targeting.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "GEO_REGION_TYPE_UNKNOWN" : The geographic region type is unknown.
  /// - "GEO_REGION_TYPE_OTHER" : The geographic region type is other.
  /// - "GEO_REGION_TYPE_COUNTRY" : The geographic region is a country.
  /// - "GEO_REGION_TYPE_REGION" : The geographic region type is region.
  /// - "GEO_REGION_TYPE_TERRITORY" : The geographic region is a territory.
  /// - "GEO_REGION_TYPE_PROVINCE" : The geographic region is a province.
  /// - "GEO_REGION_TYPE_STATE" : The geographic region is a state.
  /// - "GEO_REGION_TYPE_PREFECTURE" : The geographic region is a prefecture.
  /// - "GEO_REGION_TYPE_GOVERNORATE" : The geographic region is a governorate.
  /// - "GEO_REGION_TYPE_CANTON" : The geographic region is a canton.
  /// - "GEO_REGION_TYPE_UNION_TERRITORY" : The geographic region is a union
  /// territory.
  /// - "GEO_REGION_TYPE_AUTONOMOUS_COMMUNITY" : The geographic region is an
  /// autonomous community.
  /// - "GEO_REGION_TYPE_DMA_REGION" : The geographic region is a designated
  /// market area (DMA) region.
  /// - "GEO_REGION_TYPE_METRO" : The geographic region type is metro.
  /// - "GEO_REGION_TYPE_CONGRESSIONAL_DISTRICT" : The geographic region is a
  /// congressional district.
  /// - "GEO_REGION_TYPE_COUNTY" : The geographic region is a county.
  /// - "GEO_REGION_TYPE_MUNICIPALITY" : The geographic region is a
  /// municipality.
  /// - "GEO_REGION_TYPE_CITY" : The geographic region is a city.
  /// - "GEO_REGION_TYPE_POSTAL_CODE" : The geographic region targeting type is
  /// postal code.
  /// - "GEO_REGION_TYPE_DEPARTMENT" : The geographic region targeting type is
  /// department.
  /// - "GEO_REGION_TYPE_AIRPORT" : The geographic region is an airport.
  /// - "GEO_REGION_TYPE_TV_REGION" : The geographic region is a TV region.
  /// - "GEO_REGION_TYPE_OKRUG" : The geographic region is an okrug.
  /// - "GEO_REGION_TYPE_BOROUGH" : The geographic region is a borough.
  /// - "GEO_REGION_TYPE_CITY_REGION" : The geographic region is a city region.
  /// - "GEO_REGION_TYPE_ARRONDISSEMENT" : The geographic region is an
  /// arrondissement.
  /// - "GEO_REGION_TYPE_NEIGHBORHOOD" : The geographic region is a
  /// neighborhood.
  /// - "GEO_REGION_TYPE_UNIVERSITY" : The geographic region is a university.
  /// - "GEO_REGION_TYPE_DISTRICT" : The geographic region is a district.
  core.String? geoRegionType;

  /// Indicates if this option is being negatively targeted.
  core.bool? negative;

  /// The targeting_option_id of a TargetingOption of type
  /// `TARGETING_TYPE_GEO_REGION`.
  ///
  /// Required.
  core.String? targetingOptionId;

  $GeoRegionAssignedTargetingOptionDetails({
    this.displayName,
    this.geoRegionType,
    this.negative,
    this.targetingOptionId,
  });

  $GeoRegionAssignedTargetingOptionDetails.fromJson(core.Map json_)
      : this(
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          geoRegionType: json_.containsKey('geoRegionType')
              ? json_['geoRegionType'] as core.String
              : null,
          negative: json_.containsKey('negative')
              ? json_['negative'] as core.bool
              : null,
          targetingOptionId: json_.containsKey('targetingOptionId')
              ? json_['targetingOptionId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (geoRegionType != null) 'geoRegionType': geoRegionType!,
        if (negative != null) 'negative': negative!,
        if (targetingOptionId != null) 'targetingOptionId': targetingOptionId!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : GeoRegionSearchTerms
/// - displayvideo:v3 : GeoRegionSearchTerms
class $GeoRegionSearchTerms {
  /// The search query for the desired geo region.
  ///
  /// The query can be a prefix, e.g. "New Yor", "Seattle", "USA", etc.
  core.String? geoRegionQuery;

  $GeoRegionSearchTerms({
    this.geoRegionQuery,
  });

  $GeoRegionSearchTerms.fromJson(core.Map json_)
      : this(
          geoRegionQuery: json_.containsKey('geoRegionQuery')
              ? json_['geoRegionQuery'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (geoRegionQuery != null) 'geoRegionQuery': geoRegionQuery!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : GeoRegionTargetingOptionDetails
/// - displayvideo:v3 : GeoRegionTargetingOptionDetails
class $GeoRegionTargetingOptionDetails {
  /// The display name of the geographic region (e.g., "Ontario, Canada").
  ///
  /// Output only.
  core.String? displayName;

  /// The type of geographic region targeting.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "GEO_REGION_TYPE_UNKNOWN" : The geographic region type is unknown.
  /// - "GEO_REGION_TYPE_OTHER" : The geographic region type is other.
  /// - "GEO_REGION_TYPE_COUNTRY" : The geographic region is a country.
  /// - "GEO_REGION_TYPE_REGION" : The geographic region type is region.
  /// - "GEO_REGION_TYPE_TERRITORY" : The geographic region is a territory.
  /// - "GEO_REGION_TYPE_PROVINCE" : The geographic region is a province.
  /// - "GEO_REGION_TYPE_STATE" : The geographic region is a state.
  /// - "GEO_REGION_TYPE_PREFECTURE" : The geographic region is a prefecture.
  /// - "GEO_REGION_TYPE_GOVERNORATE" : The geographic region is a governorate.
  /// - "GEO_REGION_TYPE_CANTON" : The geographic region is a canton.
  /// - "GEO_REGION_TYPE_UNION_TERRITORY" : The geographic region is a union
  /// territory.
  /// - "GEO_REGION_TYPE_AUTONOMOUS_COMMUNITY" : The geographic region is an
  /// autonomous community.
  /// - "GEO_REGION_TYPE_DMA_REGION" : The geographic region is a designated
  /// market area (DMA) region.
  /// - "GEO_REGION_TYPE_METRO" : The geographic region type is metro.
  /// - "GEO_REGION_TYPE_CONGRESSIONAL_DISTRICT" : The geographic region is a
  /// congressional district.
  /// - "GEO_REGION_TYPE_COUNTY" : The geographic region is a county.
  /// - "GEO_REGION_TYPE_MUNICIPALITY" : The geographic region is a
  /// municipality.
  /// - "GEO_REGION_TYPE_CITY" : The geographic region is a city.
  /// - "GEO_REGION_TYPE_POSTAL_CODE" : The geographic region targeting type is
  /// postal code.
  /// - "GEO_REGION_TYPE_DEPARTMENT" : The geographic region targeting type is
  /// department.
  /// - "GEO_REGION_TYPE_AIRPORT" : The geographic region is an airport.
  /// - "GEO_REGION_TYPE_TV_REGION" : The geographic region is a TV region.
  /// - "GEO_REGION_TYPE_OKRUG" : The geographic region is an okrug.
  /// - "GEO_REGION_TYPE_BOROUGH" : The geographic region is a borough.
  /// - "GEO_REGION_TYPE_CITY_REGION" : The geographic region is a city region.
  /// - "GEO_REGION_TYPE_ARRONDISSEMENT" : The geographic region is an
  /// arrondissement.
  /// - "GEO_REGION_TYPE_NEIGHBORHOOD" : The geographic region is a
  /// neighborhood.
  /// - "GEO_REGION_TYPE_UNIVERSITY" : The geographic region is a university.
  /// - "GEO_REGION_TYPE_DISTRICT" : The geographic region is a district.
  core.String? geoRegionType;

  $GeoRegionTargetingOptionDetails({
    this.displayName,
    this.geoRegionType,
  });

  $GeoRegionTargetingOptionDetails.fromJson(core.Map json_)
      : this(
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          geoRegionType: json_.containsKey('geoRegionType')
              ? json_['geoRegionType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (geoRegionType != null) 'geoRegionType': geoRegionType!,
      };
}

/// Used by:
///
/// - accesscontextmanager:v1 : GetPolicyOptions
/// - analyticshub:v1 : GetPolicyOptions
/// - bigquery:v2 : GetPolicyOptions
/// - bigqueryconnection:v1 : GetPolicyOptions
/// - bigquerydatapolicy:v1 : GetPolicyOptions
/// - bigtableadmin:v2 : GetPolicyOptions
/// - cloudresourcemanager:v1 : GetPolicyOptions
/// - cloudresourcemanager:v2 : GetPolicyOptions
/// - cloudresourcemanager:v3 : GetPolicyOptions
/// - cloudtasks:v2 : GetPolicyOptions
/// - containeranalysis:v1 : GetPolicyOptions
/// - datacatalog:v1 : GetPolicyOptions
/// - dns:v1 : GoogleIamV1GetPolicyOptions
/// - iam:v1 : GetPolicyOptions
/// - iap:v1 : GetPolicyOptions
/// - identitytoolkit:v2 : GoogleIamV1GetPolicyOptions
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

  $GetPolicyOptions.fromJson(core.Map json_)
      : this(
          requestedPolicyVersion: json_.containsKey('requestedPolicyVersion')
              ? json_['requestedPolicyVersion'] as core.int
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

  $GitSourceContext.fromJson(core.Map json_)
      : this(
          revisionId: json_.containsKey('revisionId')
              ? json_['revisionId'] as core.String
              : null,
          url: json_.containsKey('url') ? json_['url'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (revisionId != null) 'revisionId': revisionId!,
        if (url != null) 'url': url!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : GoogleAudience
/// - displayvideo:v3 : GoogleAudience
class $GoogleAudience {
  /// The display name of the Google audience.
  ///
  /// .
  ///
  /// Output only.
  core.String? displayName;

  /// The unique ID of the Google audience.
  ///
  /// Assigned by the system.
  ///
  /// Output only.
  core.String? googleAudienceId;

  /// The type of Google audience.
  ///
  /// .
  ///
  /// Output only.
  /// Possible string values are:
  /// - "GOOGLE_AUDIENCE_TYPE_UNSPECIFIED" : Default value when type is not
  /// specified or is unknown.
  /// - "GOOGLE_AUDIENCE_TYPE_AFFINITY" : Affinity type Google audience.
  /// - "GOOGLE_AUDIENCE_TYPE_IN_MARKET" : In-Market type Google audience.
  /// - "GOOGLE_AUDIENCE_TYPE_INSTALLED_APPS" : Installed-Apps type Google
  /// audience.
  /// - "GOOGLE_AUDIENCE_TYPE_NEW_MOBILE_DEVICES" : New-Mobile-Devices type
  /// Google audience.
  /// - "GOOGLE_AUDIENCE_TYPE_LIFE_EVENT" : Life-Event type Google audience.
  /// - "GOOGLE_AUDIENCE_TYPE_EXTENDED_DEMOGRAPHIC" : Extended-Demographic type
  /// Google audience.
  core.String? googleAudienceType;

  /// The resource name of the google audience.
  ///
  /// Output only.
  core.String? name;

  $GoogleAudience({
    this.displayName,
    this.googleAudienceId,
    this.googleAudienceType,
    this.name,
  });

  $GoogleAudience.fromJson(core.Map json_)
      : this(
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          googleAudienceId: json_.containsKey('googleAudienceId')
              ? json_['googleAudienceId'] as core.String
              : null,
          googleAudienceType: json_.containsKey('googleAudienceType')
              ? json_['googleAudienceType'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (googleAudienceId != null) 'googleAudienceId': googleAudienceId!,
        if (googleAudienceType != null)
          'googleAudienceType': googleAudienceType!,
        if (name != null) 'name': name!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : GoogleAudienceTargetingSetting
/// - displayvideo:v3 : GoogleAudienceTargetingSetting
class $GoogleAudienceTargetingSetting {
  /// Google audience id of the Google audience targeting setting.
  ///
  /// This id is google_audience_id.
  ///
  /// Required.
  core.String? googleAudienceId;

  $GoogleAudienceTargetingSetting({
    this.googleAudienceId,
  });

  $GoogleAudienceTargetingSetting.fromJson(core.Map json_)
      : this(
          googleAudienceId: json_.containsKey('googleAudienceId')
              ? json_['googleAudienceId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (googleAudienceId != null) 'googleAudienceId': googleAudienceId!,
      };
}

/// Used by:
///
/// - contentwarehouse:v1 : GoogleCloudDocumentaiV1Barcode
/// - documentai:v1 : GoogleCloudDocumentaiV1Barcode
class $GoogleCloudDocumentaiV1Barcode {
  /// Format of a barcode.
  ///
  /// The supported formats are: - `CODE_128`: Code 128 type. - `CODE_39`: Code
  /// 39 type. - `CODE_93`: Code 93 type. - `CODABAR`: Codabar type. -
  /// `DATA_MATRIX`: 2D Data Matrix type. - `ITF`: ITF type. - `EAN_13`: EAN-13
  /// type. - `EAN_8`: EAN-8 type. - `QR_CODE`: 2D QR code type. - `UPC_A`:
  /// UPC-A type. - `UPC_E`: UPC-E type. - `PDF417`: PDF417 type. - `AZTEC`: 2D
  /// Aztec code type. - `DATABAR`: GS1 DataBar code type.
  core.String? format;

  /// Raw value encoded in the barcode.
  ///
  /// For example: `'MEBKM:TITLE:Google;URL:https://www.google.com;;'`.
  core.String? rawValue;

  /// Value format describes the format of the value that a barcode encodes.
  ///
  /// The supported formats are: - `CONTACT_INFO`: Contact information. -
  /// `EMAIL`: Email address. - `ISBN`: ISBN identifier. - `PHONE`: Phone
  /// number. - `PRODUCT`: Product. - `SMS`: SMS message. - `TEXT`: Text string.
  /// - `URL`: URL address. - `WIFI`: Wifi information. - `GEO`:
  /// Geo-localization. - `CALENDAR_EVENT`: Calendar event. - `DRIVER_LICENSE`:
  /// Driver's license.
  core.String? valueFormat;

  $GoogleCloudDocumentaiV1Barcode({
    this.format,
    this.rawValue,
    this.valueFormat,
  });

  $GoogleCloudDocumentaiV1Barcode.fromJson(core.Map json_)
      : this(
          format: json_.containsKey('format')
              ? json_['format'] as core.String
              : null,
          rawValue: json_.containsKey('rawValue')
              ? json_['rawValue'] as core.String
              : null,
          valueFormat: json_.containsKey('valueFormat')
              ? json_['valueFormat'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (format != null) 'format': format!,
        if (rawValue != null) 'rawValue': rawValue!,
        if (valueFormat != null) 'valueFormat': valueFormat!,
      };
}

/// Used by:
///
/// - contentwarehouse:v1 : GoogleCloudDocumentaiV1DocumentEntityRelation
/// - documentai:v1 : GoogleCloudDocumentaiV1DocumentEntityRelation
class $GoogleCloudDocumentaiV1DocumentEntityRelation {
  /// Object entity id.
  core.String? objectId;

  /// Relationship description.
  core.String? relation;

  /// Subject entity id.
  core.String? subjectId;

  $GoogleCloudDocumentaiV1DocumentEntityRelation({
    this.objectId,
    this.relation,
    this.subjectId,
  });

  $GoogleCloudDocumentaiV1DocumentEntityRelation.fromJson(core.Map json_)
      : this(
          objectId: json_.containsKey('objectId')
              ? json_['objectId'] as core.String
              : null,
          relation: json_.containsKey('relation')
              ? json_['relation'] as core.String
              : null,
          subjectId: json_.containsKey('subjectId')
              ? json_['subjectId'] as core.String
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
/// - contentwarehouse:v1 : GoogleCloudDocumentaiV1DocumentPageDetectedLanguage
/// - documentai:v1 : GoogleCloudDocumentaiV1DocumentPageDetectedLanguage
class $GoogleCloudDocumentaiV1DocumentPageDetectedLanguage {
  /// Confidence of detected language.
  ///
  /// Range `[0, 1]`.
  core.double? confidence;

  /// The \[BCP-47 language
  /// code\](https://www.unicode.org/reports/tr35/#Unicode_locale_identifier),
  /// such as `en-US` or `sr-Latn`.
  core.String? languageCode;

  $GoogleCloudDocumentaiV1DocumentPageDetectedLanguage({
    this.confidence,
    this.languageCode,
  });

  $GoogleCloudDocumentaiV1DocumentPageDetectedLanguage.fromJson(core.Map json_)
      : this(
          confidence: json_.containsKey('confidence')
              ? (json_['confidence'] as core.num).toDouble()
              : null,
          languageCode: json_.containsKey('languageCode')
              ? json_['languageCode'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (confidence != null) 'confidence': confidence!,
        if (languageCode != null) 'languageCode': languageCode!,
      };
}

/// Used by:
///
/// - contentwarehouse:v1 : GoogleCloudDocumentaiV1DocumentPageDimension
/// - documentai:v1 : GoogleCloudDocumentaiV1DocumentPageDimension
class $GoogleCloudDocumentaiV1DocumentPageDimension {
  /// Page height.
  core.double? height;

  /// Dimension unit.
  core.String? unit;

  /// Page width.
  core.double? width;

  $GoogleCloudDocumentaiV1DocumentPageDimension({
    this.height,
    this.unit,
    this.width,
  });

  $GoogleCloudDocumentaiV1DocumentPageDimension.fromJson(core.Map json_)
      : this(
          height: json_.containsKey('height')
              ? (json_['height'] as core.num).toDouble()
              : null,
          unit: json_.containsKey('unit') ? json_['unit'] as core.String : null,
          width: json_.containsKey('width')
              ? (json_['width'] as core.num).toDouble()
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
/// - contentwarehouse:v1 : GoogleCloudDocumentaiV1DocumentPageImage
/// - documentai:v1 : GoogleCloudDocumentaiV1DocumentPageImage
class $GoogleCloudDocumentaiV1DocumentPageImage {
  /// Raw byte content of the image.
  core.String? content;
  core.List<core.int> get contentAsBytes => convert.base64.decode(content!);

  set contentAsBytes(core.List<core.int> bytes_) {
    content =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Height of the image in pixels.
  core.int? height;

  /// Encoding \[media type (MIME
  /// type)\](https://www.iana.org/assignments/media-types/media-types.xhtml)
  /// for the image.
  core.String? mimeType;

  /// Width of the image in pixels.
  core.int? width;

  $GoogleCloudDocumentaiV1DocumentPageImage({
    this.content,
    this.height,
    this.mimeType,
    this.width,
  });

  $GoogleCloudDocumentaiV1DocumentPageImage.fromJson(core.Map json_)
      : this(
          content: json_.containsKey('content')
              ? json_['content'] as core.String
              : null,
          height:
              json_.containsKey('height') ? json_['height'] as core.int : null,
          mimeType: json_.containsKey('mimeType')
              ? json_['mimeType'] as core.String
              : null,
          width: json_.containsKey('width') ? json_['width'] as core.int : null,
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
/// - contentwarehouse:v1 : GoogleCloudDocumentaiV1DocumentPageImageQualityScoresDetectedDefect
/// - documentai:v1 : GoogleCloudDocumentaiV1DocumentPageImageQualityScoresDetectedDefect
class $GoogleCloudDocumentaiV1DocumentPageImageQualityScoresDetectedDefect {
  /// Confidence of detected defect.
  ///
  /// Range `[0, 1]` where `1` indicates strong confidence that the defect
  /// exists.
  core.double? confidence;

  /// Name of the defect type.
  ///
  /// Supported values are: - `quality/defect_blurry` - `quality/defect_noisy` -
  /// `quality/defect_dark` - `quality/defect_faint` -
  /// `quality/defect_text_too_small` - `quality/defect_document_cutoff` -
  /// `quality/defect_text_cutoff` - `quality/defect_glare`
  core.String? type;

  $GoogleCloudDocumentaiV1DocumentPageImageQualityScoresDetectedDefect({
    this.confidence,
    this.type,
  });

  $GoogleCloudDocumentaiV1DocumentPageImageQualityScoresDetectedDefect.fromJson(
      core.Map json_)
      : this(
          confidence: json_.containsKey('confidence')
              ? (json_['confidence'] as core.num).toDouble()
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (confidence != null) 'confidence': confidence!,
        if (type != null) 'type': type!,
      };
}

/// Used by:
///
/// - contentwarehouse:v1 : GoogleCloudDocumentaiV1DocumentPageMatrix
/// - documentai:v1 : GoogleCloudDocumentaiV1DocumentPageMatrix
class $GoogleCloudDocumentaiV1DocumentPageMatrix {
  /// Number of columns in the matrix.
  core.int? cols;

  /// The matrix data.
  core.String? data;
  core.List<core.int> get dataAsBytes => convert.base64.decode(data!);

  set dataAsBytes(core.List<core.int> bytes_) {
    data =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Number of rows in the matrix.
  core.int? rows;

  /// This encodes information about what data type the matrix uses.
  ///
  /// For example, 0 (CV_8U) is an unsigned 8-bit image. For the full list of
  /// OpenCV primitive data types, please refer to
  /// https://docs.opencv.org/4.3.0/d1/d1b/group__core__hal__interface.html
  core.int? type;

  $GoogleCloudDocumentaiV1DocumentPageMatrix({
    this.cols,
    this.data,
    this.rows,
    this.type,
  });

  $GoogleCloudDocumentaiV1DocumentPageMatrix.fromJson(core.Map json_)
      : this(
          cols: json_.containsKey('cols') ? json_['cols'] as core.int : null,
          data: json_.containsKey('data') ? json_['data'] as core.String : null,
          rows: json_.containsKey('rows') ? json_['rows'] as core.int : null,
          type: json_.containsKey('type') ? json_['type'] as core.int : null,
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
/// - contentwarehouse:v1 : GoogleCloudDocumentaiV1DocumentPageTokenDetectedBreak
/// - documentai:v1 : GoogleCloudDocumentaiV1DocumentPageTokenDetectedBreak
class $GoogleCloudDocumentaiV1DocumentPageTokenDetectedBreak {
  /// Detected break type.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Unspecified break type.
  /// - "SPACE" : A single whitespace.
  /// - "WIDE_SPACE" : A wider whitespace.
  /// - "HYPHEN" : A hyphen that indicates that a token has been split across
  /// lines.
  core.String? type;

  $GoogleCloudDocumentaiV1DocumentPageTokenDetectedBreak({
    this.type,
  });

  $GoogleCloudDocumentaiV1DocumentPageTokenDetectedBreak.fromJson(
      core.Map json_)
      : this(
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (type != null) 'type': type!,
      };
}

/// Used by:
///
/// - contentwarehouse:v1 : GoogleCloudDocumentaiV1DocumentProvenanceParent
/// - documentai:v1 : GoogleCloudDocumentaiV1DocumentProvenanceParent
class $GoogleCloudDocumentaiV1DocumentProvenanceParent {
  /// The id of the parent provenance.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.int? id;

  /// The index of the parent item in the corresponding item list (eg.
  ///
  /// list of entities, properties within entities, etc.) in the parent
  /// revision.
  core.int? index;

  /// The index of the index into current revision's parent_ids list.
  core.int? revision;

  $GoogleCloudDocumentaiV1DocumentProvenanceParent({
    this.id,
    this.index,
    this.revision,
  });

  $GoogleCloudDocumentaiV1DocumentProvenanceParent.fromJson(core.Map json_)
      : this(
          id: json_.containsKey('id') ? json_['id'] as core.int : null,
          index: json_.containsKey('index') ? json_['index'] as core.int : null,
          revision: json_.containsKey('revision')
              ? json_['revision'] as core.int
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
/// - contentwarehouse:v1 : GoogleCloudDocumentaiV1DocumentRevisionHumanReview
/// - documentai:v1 : GoogleCloudDocumentaiV1DocumentRevisionHumanReview
class $GoogleCloudDocumentaiV1DocumentRevisionHumanReview {
  /// Human review state.
  ///
  /// e.g. `requested`, `succeeded`, `rejected`.
  core.String? state;

  /// A message providing more details about the current state of processing.
  ///
  /// For example, the rejection reason when the state is `rejected`.
  core.String? stateMessage;

  $GoogleCloudDocumentaiV1DocumentRevisionHumanReview({
    this.state,
    this.stateMessage,
  });

  $GoogleCloudDocumentaiV1DocumentRevisionHumanReview.fromJson(core.Map json_)
      : this(
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          stateMessage: json_.containsKey('stateMessage')
              ? json_['stateMessage'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (state != null) 'state': state!,
        if (stateMessage != null) 'stateMessage': stateMessage!,
      };
}

/// Used by:
///
/// - contentwarehouse:v1 : GoogleCloudDocumentaiV1DocumentShardInfo
/// - documentai:v1 : GoogleCloudDocumentaiV1DocumentShardInfo
class $GoogleCloudDocumentaiV1DocumentShardInfo {
  /// Total number of shards.
  core.String? shardCount;

  /// The 0-based index of this shard.
  core.String? shardIndex;

  /// The index of the first character in Document.text in the overall document
  /// global text.
  core.String? textOffset;

  $GoogleCloudDocumentaiV1DocumentShardInfo({
    this.shardCount,
    this.shardIndex,
    this.textOffset,
  });

  $GoogleCloudDocumentaiV1DocumentShardInfo.fromJson(core.Map json_)
      : this(
          shardCount: json_.containsKey('shardCount')
              ? json_['shardCount'] as core.String
              : null,
          shardIndex: json_.containsKey('shardIndex')
              ? json_['shardIndex'] as core.String
              : null,
          textOffset: json_.containsKey('textOffset')
              ? json_['textOffset'] as core.String
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
/// - contentwarehouse:v1 : GoogleCloudDocumentaiV1DocumentStyleFontSize
/// - documentai:v1 : GoogleCloudDocumentaiV1DocumentStyleFontSize
class $GoogleCloudDocumentaiV1DocumentStyleFontSize {
  /// Font size for the text.
  core.double? size;

  /// Unit for the font size.
  ///
  /// Follows CSS naming (such as `in`, `px`, and `pt`).
  core.String? unit;

  $GoogleCloudDocumentaiV1DocumentStyleFontSize({
    this.size,
    this.unit,
  });

  $GoogleCloudDocumentaiV1DocumentStyleFontSize.fromJson(core.Map json_)
      : this(
          size: json_.containsKey('size')
              ? (json_['size'] as core.num).toDouble()
              : null,
          unit: json_.containsKey('unit') ? json_['unit'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (size != null) 'size': size!,
        if (unit != null) 'unit': unit!,
      };
}

/// Used by:
///
/// - contentwarehouse:v1 : GoogleCloudDocumentaiV1DocumentTextAnchorTextSegment
/// - documentai:v1 : GoogleCloudDocumentaiV1DocumentTextAnchorTextSegment
class $GoogleCloudDocumentaiV1DocumentTextAnchorTextSegment {
  /// TextSegment half open end UTF-8 char index in the Document.text.
  core.String? endIndex;

  /// TextSegment start UTF-8 char index in the Document.text.
  core.String? startIndex;

  $GoogleCloudDocumentaiV1DocumentTextAnchorTextSegment({
    this.endIndex,
    this.startIndex,
  });

  $GoogleCloudDocumentaiV1DocumentTextAnchorTextSegment.fromJson(core.Map json_)
      : this(
          endIndex: json_.containsKey('endIndex')
              ? json_['endIndex'] as core.String
              : null,
          startIndex: json_.containsKey('startIndex')
              ? json_['startIndex'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (endIndex != null) 'endIndex': endIndex!,
        if (startIndex != null) 'startIndex': startIndex!,
      };
}

/// Used by:
///
/// - contentwarehouse:v1 : GoogleCloudDocumentaiV1NormalizedVertex
/// - documentai:v1 : GoogleCloudDocumentaiV1NormalizedVertex
class $GoogleCloudDocumentaiV1NormalizedVertex {
  /// X coordinate.
  core.double? x;

  /// Y coordinate (starts from the top of the image).
  core.double? y;

  $GoogleCloudDocumentaiV1NormalizedVertex({
    this.x,
    this.y,
  });

  $GoogleCloudDocumentaiV1NormalizedVertex.fromJson(core.Map json_)
      : this(
          x: json_.containsKey('x')
              ? (json_['x'] as core.num).toDouble()
              : null,
          y: json_.containsKey('y')
              ? (json_['y'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (x != null) 'x': x!,
        if (y != null) 'y': y!,
      };
}

/// Used by:
///
/// - contentwarehouse:v1 : GoogleCloudDocumentaiV1Vertex
/// - documentai:v1 : GoogleCloudDocumentaiV1Vertex
class $GoogleCloudDocumentaiV1Vertex {
  /// X coordinate.
  core.int? x;

  /// Y coordinate (starts from the top of the image).
  core.int? y;

  $GoogleCloudDocumentaiV1Vertex({
    this.x,
    this.y,
  });

  $GoogleCloudDocumentaiV1Vertex.fromJson(core.Map json_)
      : this(
          x: json_.containsKey('x') ? json_['x'] as core.int : null,
          y: json_.containsKey('y') ? json_['y'] as core.int : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (x != null) 'x': x!,
        if (y != null) 'y': y!,
      };
}

/// Used by:
///
/// - orgpolicy:v2 : GoogleCloudOrgpolicyV2CustomConstraint
/// - policysimulator:v1 : GoogleCloudOrgpolicyV2CustomConstraint
class $GoogleCloudOrgpolicyV2CustomConstraint {
  /// Allow or deny type.
  /// Possible string values are:
  /// - "ACTION_TYPE_UNSPECIFIED" : Unspecified. Results in an error.
  /// - "ALLOW" : Allowed action type.
  /// - "DENY" : Deny action type.
  core.String? actionType;

  /// Org policy condition/expression.
  ///
  /// For example: `resource.instanceName.matches("[production|test]_.*_(\d)+")`
  /// or, `resource.management.auto_upgrade == true` The max length of the
  /// condition is 1000 characters.
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
  /// This is unique within the organization. Format of the name should be *
  /// `organizations/{organization_id}/customConstraints/{custom_constraint_id}`
  /// Example: `organizations/123/customConstraints/custom.createOnlyE2TypeVms`
  /// The max length is 70 characters and the minimum length is 1. Note that the
  /// prefix `organizations/{organization_id}/customConstraints/` is not
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
  /// `UpdateCustomConstraint` RPC was called
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
          actionType: json_.containsKey('actionType')
              ? json_['actionType'] as core.String
              : null,
          condition: json_.containsKey('condition')
              ? json_['condition'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          methodTypes: json_.containsKey('methodTypes')
              ? (json_['methodTypes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          resourceTypes: json_.containsKey('resourceTypes')
              ? (json_['resourceTypes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (actionType != null) 'actionType': actionType!,
        if (condition != null) 'condition': condition!,
        if (description != null) 'description': description!,
        if (displayName != null) 'displayName': displayName!,
        if (methodTypes != null) 'methodTypes': methodTypes!,
        if (name != null) 'name': name!,
        if (resourceTypes != null) 'resourceTypes': resourceTypes!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
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

  $GoogleTypeLocalizedText({
    this.languageCode,
    this.text,
  });

  $GoogleTypeLocalizedText.fromJson(core.Map json_)
      : this(
          languageCode: json_.containsKey('languageCode')
              ? json_['languageCode'] as core.String
              : null,
          text: json_.containsKey('text') ? json_['text'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (languageCode != null) 'languageCode': languageCode!,
        if (text != null) 'text': text!,
      };
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
          environment: json_.containsKey('environment')
              ? json_['environment'] as core.bool
              : null,
          materials: json_.containsKey('materials')
              ? json_['materials'] as core.bool
              : null,
          parameters: json_.containsKey('parameters')
              ? json_['parameters'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (environment != null) 'environment': environment!,
        if (materials != null) 'materials': materials!,
        if (parameters != null) 'parameters': parameters!,
      };
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
          digest: json_.containsKey('digest')
              ? (json_['digest'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          entryPoint: json_.containsKey('entryPoint')
              ? json_['entryPoint'] as core.String
              : null,
          uri: json_.containsKey('uri') ? json_['uri'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (digest != null) 'digest': digest!,
        if (entryPoint != null) 'entryPoint': entryPoint!,
        if (uri != null) 'uri': uri!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : GuaranteedOrderStatus
/// - displayvideo:v3 : GuaranteedOrderStatus
class $GuaranteedOrderStatus {
  /// The configuration status of the guaranteed order.
  ///
  /// Acceptable values are `PENDING` and `COMPLETED`. A guaranteed order must
  /// be configured (fill in the required fields, choose creatives, and select a
  /// default campaign) before it can serve. Currently the configuration action
  /// can only be performed via UI.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "GUARANTEED_ORDER_CONFIG_STATUS_UNSPECIFIED" : The approval status is
  /// not specified or is unknown in this version.
  /// - "PENDING" : The beginning state of a guaranteed order. The guaranteed
  /// order in this state needs to be configured before it can serve.
  /// - "COMPLETED" : The state after the buyer configures a guaranteed order.
  core.String? configStatus;

  /// The user-provided reason for pausing this guaranteed order.
  ///
  /// Must be UTF-8 encoded with a maximum length of 100 bytes. Only applicable
  /// when entity_status is set to `ENTITY_STATUS_PAUSED`.
  core.String? entityPauseReason;

  /// Whether or not the guaranteed order is servable.
  ///
  /// Acceptable values are `ENTITY_STATUS_ACTIVE`, `ENTITY_STATUS_ARCHIVED`,
  /// and `ENTITY_STATUS_PAUSED`. Default value is `ENTITY_STATUS_ACTIVE`.
  /// Possible string values are:
  /// - "ENTITY_STATUS_UNSPECIFIED" : Default value when status is not specified
  /// or is unknown in this version.
  /// - "ENTITY_STATUS_ACTIVE" : The entity is enabled to bid and spend budget.
  /// - "ENTITY_STATUS_ARCHIVED" : The entity is archived. Bidding and budget
  /// spending are disabled. An entity can be deleted after archived. Deleted
  /// entities cannot be retrieved.
  /// - "ENTITY_STATUS_DRAFT" : The entity is under draft. Bidding and budget
  /// spending are disabled.
  /// - "ENTITY_STATUS_PAUSED" : Bidding and budget spending are paused for the
  /// entity.
  /// - "ENTITY_STATUS_SCHEDULED_FOR_DELETION" : The entity is scheduled for
  /// deletion.
  core.String? entityStatus;

  $GuaranteedOrderStatus({
    this.configStatus,
    this.entityPauseReason,
    this.entityStatus,
  });

  $GuaranteedOrderStatus.fromJson(core.Map json_)
      : this(
          configStatus: json_.containsKey('configStatus')
              ? json_['configStatus'] as core.String
              : null,
          entityPauseReason: json_.containsKey('entityPauseReason')
              ? json_['entityPauseReason'] as core.String
              : null,
          entityStatus: json_.containsKey('entityStatus')
              ? json_['entityStatus'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (configStatus != null) 'configStatus': configStatus!,
        if (entityPauseReason != null) 'entityPauseReason': entityPauseReason!,
        if (entityStatus != null) 'entityStatus': entityStatus!,
      };
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

  $GuestAttributesEntry({
    this.key,
    this.namespace,
    this.value,
  });

  $GuestAttributesEntry.fromJson(core.Map json_)
      : this(
          key: json_.containsKey('key') ? json_['key'] as core.String : null,
          namespace: json_.containsKey('namespace')
              ? json_['namespace'] as core.String
              : null,
          value:
              json_.containsKey('value') ? json_['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (key != null) 'key': key!,
        if (namespace != null) 'namespace': namespace!,
        if (value != null) 'value': value!,
      };
}

/// Used by:
///
/// - run:v1 : HTTPHeader
/// - run:v2 : GoogleCloudRunV2HTTPHeader
class $HTTPHeader {
  /// The header field name
  ///
  /// Required.
  core.String? name;

  /// The header field value
  core.String? value;

  $HTTPHeader({
    this.name,
    this.value,
  });

  $HTTPHeader.fromJson(core.Map json_)
      : this(
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          value:
              json_.containsKey('value') ? json_['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (value != null) 'value': value!,
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

  $Handler.fromJson(core.Map json_)
      : this(
          scriptPath: json_.containsKey('scriptPath')
              ? json_['scriptPath'] as core.String
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

  set valueAsBytes(core.List<core.int> bytes_) {
    value =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  $Hash({
    this.type,
    this.value,
  });

  $Hash.fromJson(core.Map json_)
      : this(
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
          value:
              json_.containsKey('value') ? json_['value'] as core.String : null,
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

  $Header.fromJson(core.Map json_)
      : this(
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          value:
              json_.containsKey('value') ? json_['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (value != null) 'value': value!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : HouseholdIncomeAssignedTargetingOptionDetails
/// - displayvideo:v3 : HouseholdIncomeAssignedTargetingOptionDetails
class $HouseholdIncomeAssignedTargetingOptionDetails {
  /// The household income of the audience.
  ///
  /// Required.
  /// Possible string values are:
  /// - "HOUSEHOLD_INCOME_UNSPECIFIED" : Default value when household income is
  /// not specified in this version. This enum is a placeholder for default
  /// value and does not represent a real household income option.
  /// - "HOUSEHOLD_INCOME_UNKNOWN" : The household income of the audience is
  /// unknown.
  /// - "HOUSEHOLD_INCOME_LOWER_50_PERCENT" : The audience is in the lower 50%
  /// of U.S. household incomes.
  /// - "HOUSEHOLD_INCOME_TOP_41_TO_50_PERCENT" : The audience is in the top
  /// 41-50% of U.S. household incomes.
  /// - "HOUSEHOLD_INCOME_TOP_31_TO_40_PERCENT" : The audience is in the top
  /// 31-40% of U.S. household incomes.
  /// - "HOUSEHOLD_INCOME_TOP_21_TO_30_PERCENT" : The audience is in the top
  /// 21-30% of U.S. household incomes.
  /// - "HOUSEHOLD_INCOME_TOP_11_TO_20_PERCENT" : The audience is in the top
  /// 11-20% of U.S. household incomes.
  /// - "HOUSEHOLD_INCOME_TOP_10_PERCENT" : The audience is in the top 10% of
  /// U.S. household incomes.
  core.String? householdIncome;

  $HouseholdIncomeAssignedTargetingOptionDetails({
    this.householdIncome,
  });

  $HouseholdIncomeAssignedTargetingOptionDetails.fromJson(core.Map json_)
      : this(
          householdIncome: json_.containsKey('householdIncome')
              ? json_['householdIncome'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (householdIncome != null) 'householdIncome': householdIncome!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : HouseholdIncomeTargetingOptionDetails
/// - displayvideo:v3 : HouseholdIncomeTargetingOptionDetails
class $HouseholdIncomeTargetingOptionDetails {
  /// The household income of an audience.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "HOUSEHOLD_INCOME_UNSPECIFIED" : Default value when household income is
  /// not specified in this version. This enum is a placeholder for default
  /// value and does not represent a real household income option.
  /// - "HOUSEHOLD_INCOME_UNKNOWN" : The household income of the audience is
  /// unknown.
  /// - "HOUSEHOLD_INCOME_LOWER_50_PERCENT" : The audience is in the lower 50%
  /// of U.S. household incomes.
  /// - "HOUSEHOLD_INCOME_TOP_41_TO_50_PERCENT" : The audience is in the top
  /// 41-50% of U.S. household incomes.
  /// - "HOUSEHOLD_INCOME_TOP_31_TO_40_PERCENT" : The audience is in the top
  /// 31-40% of U.S. household incomes.
  /// - "HOUSEHOLD_INCOME_TOP_21_TO_30_PERCENT" : The audience is in the top
  /// 21-30% of U.S. household incomes.
  /// - "HOUSEHOLD_INCOME_TOP_11_TO_20_PERCENT" : The audience is in the top
  /// 11-20% of U.S. household incomes.
  /// - "HOUSEHOLD_INCOME_TOP_10_PERCENT" : The audience is in the top 10% of
  /// U.S. household incomes.
  core.String? householdIncome;

  $HouseholdIncomeTargetingOptionDetails({
    this.householdIncome,
  });

  $HouseholdIncomeTargetingOptionDetails.fromJson(core.Map json_)
      : this(
          householdIncome: json_.containsKey('householdIncome')
              ? json_['householdIncome'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (householdIncome != null) 'householdIncome': householdIncome!,
      };
}

/// Used by:
///
/// - adsense:v2 : HttpBody
/// - aiplatform:v1 : GoogleApiHttpBody
/// - apigee:v1 : GoogleApiHttpBody
/// - apigeeregistry:v1 : HttpBody
/// - cloudbuild:v1 : HttpBody
/// - cloudbuild:v2 : HttpBody
/// - cloudtasks:v2 : HttpBody
/// - domainsrdap:v1 : HttpBody
/// - healthcare:v1 : HttpBody
/// - ml:v1 : GoogleApi__HttpBody
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
    data =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
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

  $HttpBody.fromJson(core.Map json_)
      : this(
          contentType: json_.containsKey('contentType')
              ? json_['contentType'] as core.String
              : null,
          data: json_.containsKey('data') ? json_['data'] as core.String : null,
          extensions: json_.containsKey('extensions')
              ? (json_['extensions'] as core.List)
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
/// - displayvideo:v2 : IdFilter
/// - displayvideo:v3 : IdFilter
class $IdFilter {
  /// YouTube Ads to download by ID.
  ///
  /// All IDs must belong to the same Advertiser or Partner specified in
  /// CreateSdfDownloadTaskRequest.
  core.List<core.String>? adGroupAdIds;

  /// YouTube Ad Groups to download by ID.
  ///
  /// All IDs must belong to the same Advertiser or Partner specified in
  /// CreateSdfDownloadTaskRequest.
  core.List<core.String>? adGroupIds;

  /// Campaigns to download by ID.
  ///
  /// All IDs must belong to the same Advertiser or Partner specified in
  /// CreateSdfDownloadTaskRequest.
  core.List<core.String>? campaignIds;

  /// Insertion Orders to download by ID.
  ///
  /// All IDs must belong to the same Advertiser or Partner specified in
  /// CreateSdfDownloadTaskRequest.
  core.List<core.String>? insertionOrderIds;

  /// Line Items to download by ID.
  ///
  /// All IDs must belong to the same Advertiser or Partner specified in
  /// CreateSdfDownloadTaskRequest.
  core.List<core.String>? lineItemIds;

  /// Media Products to download by ID.
  ///
  /// All IDs must belong to the same Advertiser or Partner specified in
  /// CreateSdfDownloadTaskRequest.
  core.List<core.String>? mediaProductIds;

  $IdFilter({
    this.adGroupAdIds,
    this.adGroupIds,
    this.campaignIds,
    this.insertionOrderIds,
    this.lineItemIds,
    this.mediaProductIds,
  });

  $IdFilter.fromJson(core.Map json_)
      : this(
          adGroupAdIds: json_.containsKey('adGroupAdIds')
              ? (json_['adGroupAdIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          adGroupIds: json_.containsKey('adGroupIds')
              ? (json_['adGroupIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          campaignIds: json_.containsKey('campaignIds')
              ? (json_['campaignIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          insertionOrderIds: json_.containsKey('insertionOrderIds')
              ? (json_['insertionOrderIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          lineItemIds: json_.containsKey('lineItemIds')
              ? (json_['lineItemIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          mediaProductIds: json_.containsKey('mediaProductIds')
              ? (json_['mediaProductIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (adGroupAdIds != null) 'adGroupAdIds': adGroupAdIds!,
        if (adGroupIds != null) 'adGroupIds': adGroupIds!,
        if (campaignIds != null) 'campaignIds': campaignIds!,
        if (insertionOrderIds != null) 'insertionOrderIds': insertionOrderIds!,
        if (lineItemIds != null) 'lineItemIds': lineItemIds!,
        if (mediaProductIds != null) 'mediaProductIds': mediaProductIds!,
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

  $Identity.fromJson(core.Map json_)
      : this(
          revision: json_.containsKey('revision')
              ? json_['revision'] as core.int
              : null,
          updateId: json_.containsKey('updateId')
              ? json_['updateId'] as core.String
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
  /// Currently only projects and VPCs are allowed. Project format:
  /// `projects/{project_number}` VPC network format:
  /// `//compute.googleapis.com/projects/{PROJECT_ID}/global/networks/{NAME}`.
  /// The project may be in any Google Cloud organization, not just the
  /// organization that the perimeter is defined in. `*` is not allowed, the
  /// case of allowing all Google Cloud resources only is not supported.
  core.String? resource;

  $IngressSource({
    this.accessLevel,
    this.resource,
  });

  $IngressSource.fromJson(core.Map json_)
      : this(
          accessLevel: json_.containsKey('accessLevel')
              ? json_['accessLevel'] as core.String
              : null,
          resource: json_.containsKey('resource')
              ? json_['resource'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accessLevel != null) 'accessLevel': accessLevel!,
        if (resource != null) 'resource': resource!,
      };
}

/// Used by:
///
/// - trafficdirector:v2 : InlineScopedRouteConfigs
/// - trafficdirector:v3 : InlineScopedRouteConfigs
class $InlineScopedRouteConfigs {
  /// The timestamp when the scoped route config set was last updated.
  core.String? lastUpdated;

  /// The name assigned to the scoped route configurations.
  core.String? name;

  /// The scoped route configurations.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Map<core.String, core.Object?>>? scopedRouteConfigs;

  $InlineScopedRouteConfigs({
    this.lastUpdated,
    this.name,
    this.scopedRouteConfigs,
  });

  $InlineScopedRouteConfigs.fromJson(core.Map json_)
      : this(
          lastUpdated: json_.containsKey('lastUpdated')
              ? json_['lastUpdated'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          scopedRouteConfigs: json_.containsKey('scopedRouteConfigs')
              ? (json_['scopedRouteConfigs'] as core.List)
                  .map((value) => value as core.Map<core.String, core.dynamic>)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (lastUpdated != null) 'lastUpdated': lastUpdated!,
        if (name != null) 'name': name!,
        if (scopedRouteConfigs != null)
          'scopedRouteConfigs': scopedRouteConfigs!,
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

  $InstanceGroupManagersAbandonInstancesRequest.fromJson(core.Map json_)
      : this(
          instances: json_.containsKey('instances')
              ? (json_['instances'] as core.List)
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
  /// the instance and limit disruption as much as possible. - NONE: Do not
  /// disrupt the instance at all. By default, the minimum action is NONE. If
  /// your update requires a more disruptive action than you set with this flag,
  /// the necessary action is performed to execute the update.
  /// Possible string values are:
  /// - "NONE" : Do not perform any action.
  /// - "REFRESH" : Do not stop the instance.
  /// - "REPLACE" : (Default.) Replace the instance according to the replacement
  /// method option.
  /// - "RESTART" : Stop the instance and start it again.
  core.String? minimalAction;

  /// The most disruptive action that you want to perform on each instance
  /// during the update: - REPLACE: Delete the instance and create it again.
  ///
  /// - RESTART: Stop the instance and start it again. - REFRESH: Do not stop
  /// the instance and limit disruption as much as possible. - NONE: Do not
  /// disrupt the instance at all. By default, the most disruptive allowed
  /// action is REPLACE. If your update requires a more disruptive action than
  /// you set with this flag, the update request will fail.
  /// Possible string values are:
  /// - "NONE" : Do not perform any action.
  /// - "REFRESH" : Do not stop the instance.
  /// - "REPLACE" : (Default.) Replace the instance according to the replacement
  /// method option.
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
          allInstances: json_.containsKey('allInstances')
              ? json_['allInstances'] as core.bool
              : null,
          instances: json_.containsKey('instances')
              ? (json_['instances'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          minimalAction: json_.containsKey('minimalAction')
              ? json_['minimalAction'] as core.String
              : null,
          mostDisruptiveAllowedAction:
              json_.containsKey('mostDisruptiveAllowedAction')
                  ? json_['mostDisruptiveAllowedAction'] as core.String
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
/// - displayvideo:v2 : IntegralAdScience
/// - displayvideo:v3 : IntegralAdScience
class $IntegralAdScience {
  /// The custom segment ID provided by Integral Ad Science.
  ///
  /// The ID must be between `1000001` and `1999999`, inclusive.
  core.List<core.String>? customSegmentId;

  /// Display Viewability section (applicable to display line items only).
  /// Possible string values are:
  /// - "PERFORMANCE_VIEWABILITY_UNSPECIFIED" : This enum is only a placeholder
  /// and it doesn't specify any display viewability options.
  /// - "PERFORMANCE_VIEWABILITY_40" : Target 40% Viewability or Higher.
  /// - "PERFORMANCE_VIEWABILITY_50" : Target 50% Viewability or Higher.
  /// - "PERFORMANCE_VIEWABILITY_60" : Target 60% Viewability or Higher.
  /// - "PERFORMANCE_VIEWABILITY_70" : Target 70% Viewability or Higher.
  core.String? displayViewability;

  /// Brand Safety - **Unrateable**.
  core.bool? excludeUnrateable;

  /// Ad Fraud settings.
  /// Possible string values are:
  /// - "SUSPICIOUS_ACTIVITY_UNSPECIFIED" : This enum is only a placeholder and
  /// it doesn't specify any ad fraud prevention options.
  /// - "SUSPICIOUS_ACTIVITY_HR" : Ad Fraud - Exclude High Risk.
  /// - "SUSPICIOUS_ACTIVITY_HMR" : Ad Fraud - Exclude High and Moderate Risk.
  core.String? excludedAdFraudRisk;

  /// Brand Safety - **Adult content**.
  /// Possible string values are:
  /// - "ADULT_UNSPECIFIED" : This enum is only a placeholder and it doesn't
  /// specify any adult options.
  /// - "ADULT_HR" : Adult - Exclude High Risk.
  /// - "ADULT_HMR" : Adult - Exclude High and Moderate Risk.
  core.String? excludedAdultRisk;

  /// Brand Safety - **Alcohol**.
  /// Possible string values are:
  /// - "ALCOHOL_UNSPECIFIED" : This enum is only a placeholder and it doesn't
  /// specify any alcohol options.
  /// - "ALCOHOL_HR" : Alcohol - Exclude High Risk.
  /// - "ALCOHOL_HMR" : Alcohol - Exclude High and Moderate Risk.
  core.String? excludedAlcoholRisk;

  /// Brand Safety - **Drugs**.
  /// Possible string values are:
  /// - "DRUGS_UNSPECIFIED" : This enum is only a placeholder and it doesn't
  /// specify any drugs options.
  /// - "DRUGS_HR" : Drugs - Exclude High Risk.
  /// - "DRUGS_HMR" : Drugs - Exclude High and Moderate Risk.
  core.String? excludedDrugsRisk;

  /// Brand Safety - **Gambling**.
  /// Possible string values are:
  /// - "GAMBLING_UNSPECIFIED" : This enum is only a placeholder and it doesn't
  /// specify any gambling options.
  /// - "GAMBLING_HR" : Gambling - Exclude High Risk.
  /// - "GAMBLING_HMR" : Gambling - Exclude High and Moderate Risk.
  core.String? excludedGamblingRisk;

  /// Brand Safety - **Hate speech**.
  /// Possible string values are:
  /// - "HATE_SPEECH_UNSPECIFIED" : This enum is only a placeholder and it
  /// doesn't specify any hate speech options.
  /// - "HATE_SPEECH_HR" : Hate Speech - Exclude High Risk.
  /// - "HATE_SPEECH_HMR" : Hate Speech - Exclude High and Moderate Risk.
  core.String? excludedHateSpeechRisk;

  /// Brand Safety - **Illegal downloads**.
  /// Possible string values are:
  /// - "ILLEGAL_DOWNLOADS_UNSPECIFIED" : This enum is only a placeholder and it
  /// doesn't specify any illegal downloads options.
  /// - "ILLEGAL_DOWNLOADS_HR" : Illegal Downloads - Exclude High Risk.
  /// - "ILLEGAL_DOWNLOADS_HMR" : Illegal Downloads - Exclude High and Moderate
  /// Risk.
  core.String? excludedIllegalDownloadsRisk;

  /// Brand Safety - **Offensive language**.
  /// Possible string values are:
  /// - "OFFENSIVE_LANGUAGE_UNSPECIFIED" : This enum is only a placeholder and
  /// it doesn't specify any language options.
  /// - "OFFENSIVE_LANGUAGE_HR" : Offensive Language - Exclude High Risk.
  /// - "OFFENSIVE_LANGUAGE_HMR" : Offensive Language - Exclude High and
  /// Moderate Risk.
  core.String? excludedOffensiveLanguageRisk;

  /// Brand Safety - **Violence**.
  /// Possible string values are:
  /// - "VIOLENCE_UNSPECIFIED" : This enum is only a placeholder and it doesn't
  /// specify any violence options.
  /// - "VIOLENCE_HR" : Violence - Exclude High Risk.
  /// - "VIOLENCE_HMR" : Violence - Exclude High and Moderate Risk.
  core.String? excludedViolenceRisk;

  /// True advertising quality (applicable to Display line items only).
  /// Possible string values are:
  /// - "TRAQ_UNSPECIFIED" : This enum is only a placeholder and it doesn't
  /// specify any true advertising quality scores.
  /// - "TRAQ_250" : TRAQ score 250-1000.
  /// - "TRAQ_500" : TRAQ score 500-1000.
  /// - "TRAQ_600" : TRAQ score 600-1000.
  /// - "TRAQ_700" : TRAQ score 700-1000.
  /// - "TRAQ_750" : TRAQ score 750-1000.
  /// - "TRAQ_875" : TRAQ score 875-1000.
  /// - "TRAQ_1000" : TRAQ score 1000.
  core.String? traqScoreOption;

  /// Video Viewability Section (applicable to video line items only).
  /// Possible string values are:
  /// - "VIDEO_VIEWABILITY_UNSPECIFIED" : This enum is only a placeholder and it
  /// doesn't specify any video viewability options.
  /// - "VIDEO_VIEWABILITY_40" : 40%+ in view (IAB video viewability standard).
  /// - "VIDEO_VIEWABILITY_50" : 50%+ in view (IAB video viewability standard).
  /// - "VIDEO_VIEWABILITY_60" : 60%+ in view (IAB video viewability standard).
  /// - "VIDEO_VIEWABILITY_70" : 70%+ in view (IAB video viewability standard).
  core.String? videoViewability;

  $IntegralAdScience({
    this.customSegmentId,
    this.displayViewability,
    this.excludeUnrateable,
    this.excludedAdFraudRisk,
    this.excludedAdultRisk,
    this.excludedAlcoholRisk,
    this.excludedDrugsRisk,
    this.excludedGamblingRisk,
    this.excludedHateSpeechRisk,
    this.excludedIllegalDownloadsRisk,
    this.excludedOffensiveLanguageRisk,
    this.excludedViolenceRisk,
    this.traqScoreOption,
    this.videoViewability,
  });

  $IntegralAdScience.fromJson(core.Map json_)
      : this(
          customSegmentId: json_.containsKey('customSegmentId')
              ? (json_['customSegmentId'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          displayViewability: json_.containsKey('displayViewability')
              ? json_['displayViewability'] as core.String
              : null,
          excludeUnrateable: json_.containsKey('excludeUnrateable')
              ? json_['excludeUnrateable'] as core.bool
              : null,
          excludedAdFraudRisk: json_.containsKey('excludedAdFraudRisk')
              ? json_['excludedAdFraudRisk'] as core.String
              : null,
          excludedAdultRisk: json_.containsKey('excludedAdultRisk')
              ? json_['excludedAdultRisk'] as core.String
              : null,
          excludedAlcoholRisk: json_.containsKey('excludedAlcoholRisk')
              ? json_['excludedAlcoholRisk'] as core.String
              : null,
          excludedDrugsRisk: json_.containsKey('excludedDrugsRisk')
              ? json_['excludedDrugsRisk'] as core.String
              : null,
          excludedGamblingRisk: json_.containsKey('excludedGamblingRisk')
              ? json_['excludedGamblingRisk'] as core.String
              : null,
          excludedHateSpeechRisk: json_.containsKey('excludedHateSpeechRisk')
              ? json_['excludedHateSpeechRisk'] as core.String
              : null,
          excludedIllegalDownloadsRisk:
              json_.containsKey('excludedIllegalDownloadsRisk')
                  ? json_['excludedIllegalDownloadsRisk'] as core.String
                  : null,
          excludedOffensiveLanguageRisk:
              json_.containsKey('excludedOffensiveLanguageRisk')
                  ? json_['excludedOffensiveLanguageRisk'] as core.String
                  : null,
          excludedViolenceRisk: json_.containsKey('excludedViolenceRisk')
              ? json_['excludedViolenceRisk'] as core.String
              : null,
          traqScoreOption: json_.containsKey('traqScoreOption')
              ? json_['traqScoreOption'] as core.String
              : null,
          videoViewability: json_.containsKey('videoViewability')
              ? json_['videoViewability'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (customSegmentId != null) 'customSegmentId': customSegmentId!,
        if (displayViewability != null)
          'displayViewability': displayViewability!,
        if (excludeUnrateable != null) 'excludeUnrateable': excludeUnrateable!,
        if (excludedAdFraudRisk != null)
          'excludedAdFraudRisk': excludedAdFraudRisk!,
        if (excludedAdultRisk != null) 'excludedAdultRisk': excludedAdultRisk!,
        if (excludedAlcoholRisk != null)
          'excludedAlcoholRisk': excludedAlcoholRisk!,
        if (excludedDrugsRisk != null) 'excludedDrugsRisk': excludedDrugsRisk!,
        if (excludedGamblingRisk != null)
          'excludedGamblingRisk': excludedGamblingRisk!,
        if (excludedHateSpeechRisk != null)
          'excludedHateSpeechRisk': excludedHateSpeechRisk!,
        if (excludedIllegalDownloadsRisk != null)
          'excludedIllegalDownloadsRisk': excludedIllegalDownloadsRisk!,
        if (excludedOffensiveLanguageRisk != null)
          'excludedOffensiveLanguageRisk': excludedOffensiveLanguageRisk!,
        if (excludedViolenceRisk != null)
          'excludedViolenceRisk': excludedViolenceRisk!,
        if (traqScoreOption != null) 'traqScoreOption': traqScoreOption!,
        if (videoViewability != null) 'videoViewability': videoViewability!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : IntegrationDetails
/// - displayvideo:v3 : IntegrationDetails
class $IntegrationDetails {
  /// Additional details of the entry in string format.
  ///
  /// Must be UTF-8 encoded with a length of no more than 1000 characters.
  core.String? details;

  /// An external identifier to be associated with the entry.
  ///
  /// The integration code will show up together with the entry in many places
  /// in the system, for example, reporting. Must be UTF-8 encoded with a length
  /// of no more than 500 characters.
  core.String? integrationCode;

  $IntegrationDetails({
    this.details,
    this.integrationCode,
  });

  $IntegrationDetails.fromJson(core.Map json_)
      : this(
          details: json_.containsKey('details')
              ? json_['details'] as core.String
              : null,
          integrationCode: json_.containsKey('integrationCode')
              ? json_['integrationCode'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (details != null) 'details': details!,
        if (integrationCode != null) 'integrationCode': integrationCode!,
      };
}

/// Used by:
///
/// - aiplatform:v1 : GoogleTypeInterval
/// - apigee:v1 : GoogleTypeInterval
/// - contentwarehouse:v1 : GoogleTypeInterval
/// - sheets:v4 : Interval
/// - tpu:v2 : Interval
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

  $Interval.fromJson(core.Map json_)
      : this(
          endTime: json_.containsKey('endTime')
              ? json_['endTime'] as core.String
              : null,
          startTime: json_.containsKey('startTime')
              ? json_['startTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (endTime != null) 'endTime': endTime!,
        if (startTime != null) 'startTime': startTime!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : InventorySourceAccessorsAdvertiserAccessors
/// - displayvideo:v3 : InventorySourceAccessorsAdvertiserAccessors
class $InventorySourceAccessorsAdvertiserAccessors {
  /// The IDs of the advertisers.
  core.List<core.String>? advertiserIds;

  $InventorySourceAccessorsAdvertiserAccessors({
    this.advertiserIds,
  });

  $InventorySourceAccessorsAdvertiserAccessors.fromJson(core.Map json_)
      : this(
          advertiserIds: json_.containsKey('advertiserIds')
              ? (json_['advertiserIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (advertiserIds != null) 'advertiserIds': advertiserIds!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : InventorySourceAccessorsPartnerAccessor
/// - displayvideo:v3 : InventorySourceAccessorsPartnerAccessor
class $InventorySourceAccessorsPartnerAccessor {
  /// The ID of the partner.
  core.String? partnerId;

  $InventorySourceAccessorsPartnerAccessor({
    this.partnerId,
  });

  $InventorySourceAccessorsPartnerAccessor.fromJson(core.Map json_)
      : this(
          partnerId: json_.containsKey('partnerId')
              ? json_['partnerId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (partnerId != null) 'partnerId': partnerId!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : InventorySourceAssignedTargetingOptionDetails
/// - displayvideo:v3 : InventorySourceAssignedTargetingOptionDetails
class $InventorySourceAssignedTargetingOptionDetails {
  /// ID of the inventory source.
  ///
  /// Should refer to the inventory_source_id field of an InventorySource
  /// resource.
  ///
  /// Required.
  core.String? inventorySourceId;

  $InventorySourceAssignedTargetingOptionDetails({
    this.inventorySourceId,
  });

  $InventorySourceAssignedTargetingOptionDetails.fromJson(core.Map json_)
      : this(
          inventorySourceId: json_.containsKey('inventorySourceId')
              ? json_['inventorySourceId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (inventorySourceId != null) 'inventorySourceId': inventorySourceId!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : InventorySourceFilter
/// - displayvideo:v3 : InventorySourceFilter
class $InventorySourceFilter {
  /// Inventory Sources to download by ID.
  ///
  /// All IDs must belong to the same Advertiser or Partner specified in
  /// CreateSdfDownloadTaskRequest. Leave empty to download all Inventory
  /// Sources for the selected Advertiser or Partner.
  core.List<core.String>? inventorySourceIds;

  $InventorySourceFilter({
    this.inventorySourceIds,
  });

  $InventorySourceFilter.fromJson(core.Map json_)
      : this(
          inventorySourceIds: json_.containsKey('inventorySourceIds')
              ? (json_['inventorySourceIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (inventorySourceIds != null)
          'inventorySourceIds': inventorySourceIds!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : InventorySourceGroup
/// - displayvideo:v3 : InventorySourceGroup
class $InventorySourceGroup {
  /// The display name of the inventory source group.
  ///
  /// Must be UTF-8 encoded with a maximum size of 240 bytes.
  ///
  /// Required.
  core.String? displayName;

  /// The unique ID of the inventory source group.
  ///
  /// Assigned by the system.
  ///
  /// Output only.
  core.String? inventorySourceGroupId;

  /// The resource name of the inventory source group.
  ///
  /// Output only.
  core.String? name;

  $InventorySourceGroup({
    this.displayName,
    this.inventorySourceGroupId,
    this.name,
  });

  $InventorySourceGroup.fromJson(core.Map json_)
      : this(
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          inventorySourceGroupId: json_.containsKey('inventorySourceGroupId')
              ? json_['inventorySourceGroupId'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (inventorySourceGroupId != null)
          'inventorySourceGroupId': inventorySourceGroupId!,
        if (name != null) 'name': name!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : InventorySourceGroupAssignedTargetingOptionDetails
/// - displayvideo:v3 : InventorySourceGroupAssignedTargetingOptionDetails
class $InventorySourceGroupAssignedTargetingOptionDetails {
  /// ID of the inventory source group.
  ///
  /// Should refer to the inventory_source_group_id field of an
  /// InventorySourceGroup resource.
  ///
  /// Required.
  core.String? inventorySourceGroupId;

  $InventorySourceGroupAssignedTargetingOptionDetails({
    this.inventorySourceGroupId,
  });

  $InventorySourceGroupAssignedTargetingOptionDetails.fromJson(core.Map json_)
      : this(
          inventorySourceGroupId: json_.containsKey('inventorySourceGroupId')
              ? json_['inventorySourceGroupId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (inventorySourceGroupId != null)
          'inventorySourceGroupId': inventorySourceGroupId!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : InventorySourceStatus
/// - displayvideo:v3 : InventorySourceStatus
class $InventorySourceStatus {
  /// The configuration status of the inventory source.
  ///
  /// Only applicable for guaranteed inventory sources. Acceptable values are
  /// `INVENTORY_SOURCE_CONFIG_STATUS_PENDING` and
  /// `INVENTORY_SOURCE_CONFIG_STATUS_COMPLETED`. An inventory source must be
  /// configured (fill in the required fields, choose creatives, and select a
  /// default campaign) before it can serve.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "INVENTORY_SOURCE_CONFIG_STATUS_UNSPECIFIED" : The approval status is
  /// not specified or is unknown in this version.
  /// - "INVENTORY_SOURCE_CONFIG_STATUS_PENDING" : The beginning state of a
  /// guaranteed inventory source. The inventory source in this state needs to
  /// be configured.
  /// - "INVENTORY_SOURCE_CONFIG_STATUS_COMPLETED" : The state after the buyer
  /// configures a guaranteed inventory source.
  core.String? configStatus;

  /// The user-provided reason for pausing this inventory source.
  ///
  /// Must not exceed 100 characters. Only applicable when entity_status is set
  /// to `ENTITY_STATUS_PAUSED`.
  core.String? entityPauseReason;

  /// Whether or not the inventory source is servable.
  ///
  /// Acceptable values are `ENTITY_STATUS_ACTIVE`, `ENTITY_STATUS_ARCHIVED`,
  /// and `ENTITY_STATUS_PAUSED`. Default value is `ENTITY_STATUS_ACTIVE`.
  /// Possible string values are:
  /// - "ENTITY_STATUS_UNSPECIFIED" : Default value when status is not specified
  /// or is unknown in this version.
  /// - "ENTITY_STATUS_ACTIVE" : The entity is enabled to bid and spend budget.
  /// - "ENTITY_STATUS_ARCHIVED" : The entity is archived. Bidding and budget
  /// spending are disabled. An entity can be deleted after archived. Deleted
  /// entities cannot be retrieved.
  /// - "ENTITY_STATUS_DRAFT" : The entity is under draft. Bidding and budget
  /// spending are disabled.
  /// - "ENTITY_STATUS_PAUSED" : Bidding and budget spending are paused for the
  /// entity.
  /// - "ENTITY_STATUS_SCHEDULED_FOR_DELETION" : The entity is scheduled for
  /// deletion.
  core.String? entityStatus;

  /// The seller-provided reason for pausing this inventory source.
  ///
  /// Only applicable for inventory sources synced directly from the publishers
  /// and when seller_status is set to `ENTITY_STATUS_PAUSED`.
  ///
  /// Output only.
  core.String? sellerPauseReason;

  /// The status set by the seller for the inventory source.
  ///
  /// Only applicable for inventory sources synced directly from the publishers.
  /// Acceptable values are `ENTITY_STATUS_ACTIVE` and `ENTITY_STATUS_PAUSED`.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "ENTITY_STATUS_UNSPECIFIED" : Default value when status is not specified
  /// or is unknown in this version.
  /// - "ENTITY_STATUS_ACTIVE" : The entity is enabled to bid and spend budget.
  /// - "ENTITY_STATUS_ARCHIVED" : The entity is archived. Bidding and budget
  /// spending are disabled. An entity can be deleted after archived. Deleted
  /// entities cannot be retrieved.
  /// - "ENTITY_STATUS_DRAFT" : The entity is under draft. Bidding and budget
  /// spending are disabled.
  /// - "ENTITY_STATUS_PAUSED" : Bidding and budget spending are paused for the
  /// entity.
  /// - "ENTITY_STATUS_SCHEDULED_FOR_DELETION" : The entity is scheduled for
  /// deletion.
  core.String? sellerStatus;

  $InventorySourceStatus({
    this.configStatus,
    this.entityPauseReason,
    this.entityStatus,
    this.sellerPauseReason,
    this.sellerStatus,
  });

  $InventorySourceStatus.fromJson(core.Map json_)
      : this(
          configStatus: json_.containsKey('configStatus')
              ? json_['configStatus'] as core.String
              : null,
          entityPauseReason: json_.containsKey('entityPauseReason')
              ? json_['entityPauseReason'] as core.String
              : null,
          entityStatus: json_.containsKey('entityStatus')
              ? json_['entityStatus'] as core.String
              : null,
          sellerPauseReason: json_.containsKey('sellerPauseReason')
              ? json_['sellerPauseReason'] as core.String
              : null,
          sellerStatus: json_.containsKey('sellerStatus')
              ? json_['sellerStatus'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (configStatus != null) 'configStatus': configStatus!,
        if (entityPauseReason != null) 'entityPauseReason': entityPauseReason!,
        if (entityStatus != null) 'entityStatus': entityStatus!,
        if (sellerPauseReason != null) 'sellerPauseReason': sellerPauseReason!,
        if (sellerStatus != null) 'sellerStatus': sellerStatus!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : InventorySourceVideoCreativeConfig
/// - displayvideo:v3 : InventorySourceVideoCreativeConfig
class $InventorySourceVideoCreativeConfig {
  /// The duration requirements for the video creatives that can be assigned to
  /// the inventory source.
  core.String? duration;

  $InventorySourceVideoCreativeConfig({
    this.duration,
  });

  $InventorySourceVideoCreativeConfig.fromJson(core.Map json_)
      : this(
          duration: json_.containsKey('duration')
              ? json_['duration'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (duration != null) 'duration': duration!,
      };
}

/// Used by:
///
/// - content:v2.1 : RenderAccountIssuesRequestPayload
/// - content:v2.1 : RenderProductIssuesRequestPayload
class $IssuesRequestPayload {
  /// How the detailed content should be returned.
  ///
  /// Default option is to return the content as a pre-rendered HTML text.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "CONTENT_OPTION_UNSPECIFIED" : Default value. Will never be provided by
  /// the API.
  /// - "PRE_RENDERED_HTML" : Returns the detail of the issue as a pre-rendered
  /// HTML text.
  core.String? contentOption;

  /// How actions with user input form should be handled.
  ///
  /// If not provided, actions will be returned as links that points merchant to
  /// Merchant Center where they can request the action.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "USER_INPUT_ACTION_RENDERING_OPTION_UNSPECIFIED" : Default value. Will
  /// never be provided by the API.
  /// - "REDIRECT_TO_MERCHANT_CENTER" : Actions that require user input are
  /// represented only as links that points merchant to Merchant Center where
  /// they can request the action. Provides easier to implement alternative to
  /// `BUILT_IN_USER_INPUT_ACTIONS`.
  /// - "BUILT_IN_USER_INPUT_ACTIONS" : Returns content and input form
  /// definition for each complex action. Your application needs to display this
  /// content and input form to the merchant before they can request processing
  /// of the action. To start the action, your application needs to call the
  /// `triggeraction` method.
  core.String? userInputActionOption;

  $IssuesRequestPayload({
    this.contentOption,
    this.userInputActionOption,
  });

  $IssuesRequestPayload.fromJson(core.Map json_)
      : this(
          contentOption: json_.containsKey('contentOption')
              ? json_['contentOption'] as core.String
              : null,
          userInputActionOption: json_.containsKey('userInputActionOption')
              ? json_['userInputActionOption'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (contentOption != null) 'contentOption': contentOption!,
        if (userInputActionOption != null)
          'userInputActionOption': userInputActionOption!,
      };
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

  $Justification({
    this.details,
    this.justificationType,
  });

  $Justification.fromJson(core.Map json_)
      : this(
          details: json_.containsKey('details')
              ? json_['details'] as core.String
              : null,
          justificationType: json_.containsKey('justificationType')
              ? json_['justificationType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (details != null) 'details': details!,
        if (justificationType != null) 'justificationType': justificationType!,
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

  $Jwt.fromJson(core.Map json_)
      : this(
          compactJwt: json_.containsKey('compactJwt')
              ? json_['compactJwt'] as core.String
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

  $JwtLocation({
    this.cookie,
    this.header,
    this.query,
    this.valuePrefix,
  });

  $JwtLocation.fromJson(core.Map json_)
      : this(
          cookie: json_.containsKey('cookie')
              ? json_['cookie'] as core.String
              : null,
          header: json_.containsKey('header')
              ? json_['header'] as core.String
              : null,
          query:
              json_.containsKey('query') ? json_['query'] as core.String : null,
          valuePrefix: json_.containsKey('valuePrefix')
              ? json_['valuePrefix'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cookie != null) 'cookie': cookie!,
        if (header != null) 'header': header!,
        if (query != null) 'query': query!,
        if (valuePrefix != null) 'valuePrefix': valuePrefix!,
      };
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

  $KMSEnvMap({
    this.cipherText,
    this.keyName,
  });

  $KMSEnvMap.fromJson(core.Map json_)
      : this(
          cipherText: json_.containsKey('cipherText')
              ? json_['cipherText'] as core.String
              : null,
          keyName: json_.containsKey('keyName')
              ? json_['keyName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cipherText != null) 'cipherText': cipherText!,
        if (keyName != null) 'keyName': keyName!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : KeywordAssignedTargetingOptionDetails
/// - displayvideo:v3 : KeywordAssignedTargetingOptionDetails
class $KeywordAssignedTargetingOptionDetails {
  /// The keyword, for example `car insurance`.
  ///
  /// Positive keyword cannot be offensive word. Must be UTF-8 encoded with a
  /// maximum size of 255 bytes. Maximum number of characters is 80. Maximum
  /// number of words is 10.
  ///
  /// Required.
  core.String? keyword;

  /// Indicates if this option is being negatively targeted.
  core.bool? negative;

  $KeywordAssignedTargetingOptionDetails({
    this.keyword,
    this.negative,
  });

  $KeywordAssignedTargetingOptionDetails.fromJson(core.Map json_)
      : this(
          keyword: json_.containsKey('keyword')
              ? json_['keyword'] as core.String
              : null,
          negative: json_.containsKey('negative')
              ? json_['negative'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (keyword != null) 'keyword': keyword!,
        if (negative != null) 'negative': negative!,
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

  $KindExpression.fromJson(core.Map json_)
      : this(
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
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

  $LabelDescriptor.fromJson(core.Map json_)
      : this(
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          key: json_.containsKey('key') ? json_['key'] as core.String : null,
          valueType: json_.containsKey('valueType')
              ? json_['valueType'] as core.String
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

  $LabelEntry.fromJson(core.Map json_)
      : this(
          key: json_.containsKey('key') ? json_['key'] as core.String : null,
          value:
              json_.containsKey('value') ? json_['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (key != null) 'key': key!,
        if (value != null) 'value': value!,
      };
}

/// Used by:
///
/// - container:v1 : NodeLabels
/// - container:v1 : ResourceLabels
class $Labels {
  /// Map of node label keys and node label values.
  core.Map<core.String, core.String>? labels;

  $Labels({
    this.labels,
  });

  $Labels.fromJson(core.Map json_)
      : this(
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (labels != null) 'labels': labels!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : LanguageAssignedTargetingOptionDetails
/// - displayvideo:v3 : LanguageAssignedTargetingOptionDetails
class $LanguageAssignedTargetingOptionDetails {
  /// The display name of the language (e.g., "French").
  ///
  /// Output only.
  core.String? displayName;

  /// Indicates if this option is being negatively targeted.
  ///
  /// All assigned language targeting options on the same resource must have the
  /// same value for this field.
  core.bool? negative;

  /// The targeting_option_id of a TargetingOption of type
  /// `TARGETING_TYPE_LANGUAGE`.
  ///
  /// Required.
  core.String? targetingOptionId;

  $LanguageAssignedTargetingOptionDetails({
    this.displayName,
    this.negative,
    this.targetingOptionId,
  });

  $LanguageAssignedTargetingOptionDetails.fromJson(core.Map json_)
      : this(
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          negative: json_.containsKey('negative')
              ? json_['negative'] as core.bool
              : null,
          targetingOptionId: json_.containsKey('targetingOptionId')
              ? json_['targetingOptionId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (negative != null) 'negative': negative!,
        if (targetingOptionId != null) 'targetingOptionId': targetingOptionId!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : LanguageTargetingOptionDetails
/// - displayvideo:v3 : LanguageTargetingOptionDetails
class $LanguageTargetingOptionDetails {
  /// The display name of the language (e.g., "French").
  ///
  /// Output only.
  core.String? displayName;

  $LanguageTargetingOptionDetails({
    this.displayName,
  });

  $LanguageTargetingOptionDetails.fromJson(core.Map json_)
      : this(
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
      };
}

/// Used by:
///
/// - addressvalidation:v1 : GoogleTypeLatLng
/// - datastore:v1 : LatLng
/// - dialogflow:v2 : GoogleTypeLatLng
/// - dialogflow:v3 : GoogleTypeLatLng
/// - firestore:v1 : LatLng
/// - jobs:v3 : LatLng
/// - jobs:v4 : LatLng
/// - mybusinessbusinessinformation:v1 : LatLng
/// - photoslibrary:v1 : LatLng
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

  $LatLng({
    this.latitude,
    this.longitude,
  });

  $LatLng.fromJson(core.Map json_)
      : this(
          latitude: json_.containsKey('latitude')
              ? (json_['latitude'] as core.num).toDouble()
              : null,
          longitude: json_.containsKey('longitude')
              ? (json_['longitude'] as core.num).toDouble()
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

  $Layer.fromJson(core.Map json_)
      : this(
          arguments: json_.containsKey('arguments')
              ? json_['arguments'] as core.String
              : null,
          directive: json_.containsKey('directive')
              ? json_['directive'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (arguments != null) 'arguments': arguments!,
        if (directive != null) 'directive': directive!,
      };
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

  $License({
    this.comments,
    this.expression,
  });

  $License.fromJson(core.Map json_)
      : this(
          comments: json_.containsKey('comments')
              ? json_['comments'] as core.String
              : null,
          expression: json_.containsKey('expression')
              ? json_['expression'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (comments != null) 'comments': comments!,
        if (expression != null) 'expression': expression!,
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

  $Lien.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          origin: json_.containsKey('origin')
              ? json_['origin'] as core.String
              : null,
          parent: json_.containsKey('parent')
              ? json_['parent'] as core.String
              : null,
          reason: json_.containsKey('reason')
              ? json_['reason'] as core.String
              : null,
          restrictions: json_.containsKey('restrictions')
              ? (json_['restrictions'] as core.List)
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
/// - displayvideo:v2 : LineItemBudget
/// - displayvideo:v3 : LineItemBudget
class $LineItemBudget {
  /// The type of the budget allocation.
  ///
  /// `LINE_ITEM_BUDGET_ALLOCATION_TYPE_AUTOMATIC` is only applicable when
  /// automatic budget allocation is enabled for the parent insertion order.
  ///
  /// Required.
  /// Possible string values are:
  /// - "LINE_ITEM_BUDGET_ALLOCATION_TYPE_UNSPECIFIED" : Type value is not
  /// specified or is unknown in this version.
  /// - "LINE_ITEM_BUDGET_ALLOCATION_TYPE_AUTOMATIC" : Automatic budget
  /// allocation is enabled for the line item.
  /// - "LINE_ITEM_BUDGET_ALLOCATION_TYPE_FIXED" : A fixed max budget amount is
  /// allocated for the line item.
  /// - "LINE_ITEM_BUDGET_ALLOCATION_TYPE_UNLIMITED" : No budget limit is
  /// applied to the line item.
  core.String? budgetAllocationType;

  /// The budget unit specifies whether the budget is currency based or
  /// impression based.
  ///
  /// This value is inherited from the parent insertion order.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "BUDGET_UNIT_UNSPECIFIED" : Type value is not specified or is unknown in
  /// this version.
  /// - "BUDGET_UNIT_CURRENCY" : Budgeting in currency amounts.
  /// - "BUDGET_UNIT_IMPRESSIONS" : Budgeting in impression amounts.
  core.String? budgetUnit;

  /// The maximum budget amount the line item will spend.
  ///
  /// Must be greater than 0. When budget_allocation_type is: *
  /// `LINE_ITEM_BUDGET_ALLOCATION_TYPE_AUTOMATIC`, this field is immutable and
  /// is set by the system. * `LINE_ITEM_BUDGET_ALLOCATION_TYPE_FIXED`, if
  /// budget_unit is: - `BUDGET_UNIT_CURRENCY`, this field represents maximum
  /// budget amount to spend, in micros of the advertiser's currency. For
  /// example, 1500000 represents 1.5 standard units of the currency. -
  /// `BUDGET_UNIT_IMPRESSIONS`, this field represents the maximum number of
  /// impressions to serve. * `LINE_ITEM_BUDGET_ALLOCATION_TYPE_UNLIMITED`, this
  /// field is not applicable and will be ignored by the system.
  core.String? maxAmount;

  $LineItemBudget({
    this.budgetAllocationType,
    this.budgetUnit,
    this.maxAmount,
  });

  $LineItemBudget.fromJson(core.Map json_)
      : this(
          budgetAllocationType: json_.containsKey('budgetAllocationType')
              ? json_['budgetAllocationType'] as core.String
              : null,
          budgetUnit: json_.containsKey('budgetUnit')
              ? json_['budgetUnit'] as core.String
              : null,
          maxAmount: json_.containsKey('maxAmount')
              ? json_['maxAmount'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (budgetAllocationType != null)
          'budgetAllocationType': budgetAllocationType!,
        if (budgetUnit != null) 'budgetUnit': budgetUnit!,
        if (maxAmount != null) 'maxAmount': maxAmount!,
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

  $Linear.fromJson(core.Map json_)
      : this(
          numFiniteBuckets: json_.containsKey('numFiniteBuckets')
              ? json_['numFiniteBuckets'] as core.int
              : null,
          offset: json_.containsKey('offset')
              ? (json_['offset'] as core.num).toDouble()
              : null,
          width: json_.containsKey('width')
              ? (json_['width'] as core.num).toDouble()
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
/// - compute:v1 : HelpLink
/// - vmmigration:v1 : Link
class $Link {
  /// Describes what the link offers.
  core.String? description;

  /// The URL of the link.
  core.String? url;

  $Link({
    this.description,
    this.url,
  });

  $Link.fromJson(core.Map json_)
      : this(
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          url: json_.containsKey('url') ? json_['url'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (url != null) 'url': url!,
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

  $ListPolicy.fromJson(core.Map json_)
      : this(
          allValues: json_.containsKey('allValues')
              ? json_['allValues'] as core.String
              : null,
          allowedValues: json_.containsKey('allowedValues')
              ? (json_['allowedValues'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          deniedValues: json_.containsKey('deniedValues')
              ? (json_['deniedValues'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          inheritFromParent: json_.containsKey('inheritFromParent')
              ? json_['inheritFromParent'] as core.bool
              : null,
          suggestedValue: json_.containsKey('suggestedValue')
              ? json_['suggestedValue'] as core.String
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
/// - trafficdirector:v2 : Locality
/// - trafficdirector:v3 : Locality
class $Locality {
  /// Region this :ref:`zone ` belongs to.
  core.String? region;

  /// When used for locality of upstream hosts, this field further splits zone
  /// into smaller chunks of sub-zones so they can be load balanced
  /// independently.
  core.String? subZone;

  /// Defines the local service zone where Envoy is running.
  ///
  /// Though optional, it should be set if discovery service routing is used and
  /// the discovery service exposes :ref:`zone data `, either in this message or
  /// via :option:`--service-zone`. The meaning of zone is context dependent,
  /// e.g. `Availability Zone (AZ) `_ on AWS, `Zone `_ on GCP, etc.
  core.String? zone;

  $Locality({
    this.region,
    this.subZone,
    this.zone,
  });

  $Locality.fromJson(core.Map json_)
      : this(
          region: json_.containsKey('region')
              ? json_['region'] as core.String
              : null,
          subZone: json_.containsKey('subZone')
              ? json_['subZone'] as core.String
              : null,
          zone: json_.containsKey('zone') ? json_['zone'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (region != null) 'region': region!,
        if (subZone != null) 'subZone': subZone!,
        if (zone != null) 'zone': zone!,
      };
}

/// Used by:
///
/// - compute:v1 : LocalizedMessage
/// - vmmigration:v1 : LocalizedMessage
class $LocalizedMessage {
  /// The locale used following the specification defined at
  /// https://www.rfc-editor.org/rfc/bcp/bcp47.txt.
  ///
  /// Examples are: "en-US", "fr-CH", "es-MX"
  core.String? locale;

  /// The localized error message in the above locale.
  core.String? message;

  $LocalizedMessage({
    this.locale,
    this.message,
  });

  $LocalizedMessage.fromJson(core.Map json_)
      : this(
          locale: json_.containsKey('locale')
              ? json_['locale'] as core.String
              : null,
          message: json_.containsKey('message')
              ? json_['message'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (locale != null) 'locale': locale!,
        if (message != null) 'message': message!,
      };
}

/// Used by:
///
/// - aiplatform:v1 : GoogleCloudLocationLocation
/// - alloydb:v1 : GoogleCloudLocationLocation
/// - apigateway:v1 : ApigatewayLocation
/// - apigeeregistry:v1 : Location
/// - apphub:v1 : Location
/// - artifactregistry:v1 : Location
/// - backupdr:v1 : Location
/// - baremetalsolution:v2 : Location
/// - batch:v1 : Location
/// - beyondcorp:v1 : GoogleCloudLocationLocation
/// - bigquerydatatransfer:v1 : Location
/// - bigtableadmin:v2 : Location
/// - blockchainnodeengine:v1 : Location
/// - certificatemanager:v1 : Location
/// - cloudbuild:v2 : Location
/// - clouddeploy:v1 : Location
/// - cloudfunctions:v1 : Location
/// - cloudfunctions:v2 : Location
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
/// - gkebackup:v1 : Location
/// - gkehub:v1 : Location
/// - gkeonprem:v1 : Location
/// - healthcare:v1 : Location
/// - ids:v1 : Location
/// - looker:v1 : Location
/// - managedidentities:v1 : Location
/// - memcache:v1 : Location
/// - migrationcenter:v1 : Location
/// - networkconnectivity:v1 : Location
/// - networkmanagement:v1 : Location
/// - networksecurity:v1 : Location
/// - networkservices:v1 : Location
/// - notebooks:v1 : Location
/// - notebooks:v2 : Location
/// - privateca:v1 : Location
/// - rapidmigrationassessment:v1 : Location
/// - run:v1 : Location
/// - secretmanager:v1 : Location
/// - servicedirectory:v1 : Location
/// - speech:v2 : Location
/// - tpu:v1 : Location
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
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          locationId: json_.containsKey('locationId')
              ? json_['locationId'] as core.String
              : null,
          metadata: json_.containsKey('metadata')
              ? json_['metadata'] as core.Map<core.String, core.dynamic>
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
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
/// - metastore:v1 : Location
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
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          locationId: json_.containsKey('locationId')
              ? json_['locationId'] as core.String
              : null,
          metadata: json_.containsKey('metadata')
              ? json_['metadata'] as core.Map<core.String, core.dynamic>
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
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
/// - dlp:v2 : GooglePrivacyDlpV2DataProfileLocation
/// - dlp:v2 : GooglePrivacyDlpV2DiscoveryStartingLocation
class $Location02 {
  /// The ID of the Folder within an organization to scan.
  core.String? folderId;

  /// The ID of an organization to scan.
  core.String? organizationId;

  $Location02({
    this.folderId,
    this.organizationId,
  });

  $Location02.fromJson(core.Map json_)
      : this(
          folderId: json_.containsKey('folderId')
              ? json_['folderId'] as core.String
              : null,
          organizationId: json_.containsKey('organizationId')
              ? json_['organizationId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (folderId != null) 'folderId': folderId!,
        if (organizationId != null) 'organizationId': organizationId!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : LocationList
/// - displayvideo:v3 : LocationList
class $LocationList {
  /// The unique ID of the advertiser the location list belongs to.
  ///
  /// Required. Immutable.
  core.String? advertiserId;

  /// The display name of the location list.
  ///
  /// Must be UTF-8 encoded with a maximum size of 240 bytes.
  ///
  /// Required.
  core.String? displayName;

  /// The unique ID of the location list.
  ///
  /// Assigned by the system.
  ///
  /// Output only.
  core.String? locationListId;

  /// The type of location.
  ///
  /// All locations in the list will share this type.
  ///
  /// Required. Immutable.
  /// Possible string values are:
  /// - "TARGETING_LOCATION_TYPE_UNSPECIFIED" : Default value when type is not
  /// specified or is unknown.
  /// - "TARGETING_LOCATION_TYPE_PROXIMITY" : The type for proximity geo
  /// location.
  /// - "TARGETING_LOCATION_TYPE_REGIONAL" : The type for regional geo location.
  core.String? locationType;

  /// The resource name of the location list.
  ///
  /// Output only.
  core.String? name;

  $LocationList({
    this.advertiserId,
    this.displayName,
    this.locationListId,
    this.locationType,
    this.name,
  });

  $LocationList.fromJson(core.Map json_)
      : this(
          advertiserId: json_.containsKey('advertiserId')
              ? json_['advertiserId'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          locationListId: json_.containsKey('locationListId')
              ? json_['locationListId'] as core.String
              : null,
          locationType: json_.containsKey('locationType')
              ? json_['locationType'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (advertiserId != null) 'advertiserId': advertiserId!,
        if (displayName != null) 'displayName': displayName!,
        if (locationListId != null) 'locationListId': locationListId!,
        if (locationType != null) 'locationType': locationType!,
        if (name != null) 'name': name!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : LookbackWindow
/// - displayvideo:v3 : LookbackWindow
class $LookbackWindow {
  /// Lookback window, in days, from the last time a given user clicked on one
  /// of your ads.
  core.int? clickDays;

  /// Lookback window, in days, from the last time a given user viewed one of
  /// your ads.
  core.int? impressionDays;

  $LookbackWindow({
    this.clickDays,
    this.impressionDays,
  });

  $LookbackWindow.fromJson(core.Map json_)
      : this(
          clickDays: json_.containsKey('clickDays')
              ? json_['clickDays'] as core.int
              : null,
          impressionDays: json_.containsKey('impressionDays')
              ? json_['impressionDays'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (clickDays != null) 'clickDays': clickDays!,
        if (impressionDays != null) 'impressionDays': impressionDays!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : LookupInvoiceCurrencyResponse
/// - displayvideo:v3 : LookupInvoiceCurrencyResponse
class $LookupInvoiceCurrencyResponse {
  /// Currency used by the advertiser in ISO 4217 format.
  core.String? currencyCode;

  $LookupInvoiceCurrencyResponse({
    this.currencyCode,
  });

  $LookupInvoiceCurrencyResponse.fromJson(core.Map json_)
      : this(
          currencyCode: json_.containsKey('currencyCode')
              ? json_['currencyCode'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (currencyCode != null) 'currencyCode': currencyCode!,
      };
}

/// Used by:
///
/// - alloydb:v1 : MachineConfig
/// - datamigration:v1 : MachineConfig
class $MachineConfig {
  /// The number of CPU's in the VM instance.
  core.int? cpuCount;

  $MachineConfig({
    this.cpuCount,
  });

  $MachineConfig.fromJson(core.Map json_)
      : this(
          cpuCount: json_.containsKey('cpuCount')
              ? json_['cpuCount'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cpuCount != null) 'cpuCount': cpuCount!,
      };
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

  $MaintenanceConfig({
    this.maintenanceAddressCidrBlocks,
  });

  $MaintenanceConfig.fromJson(core.Map json_)
      : this(
          maintenanceAddressCidrBlocks:
              json_.containsKey('maintenanceAddressCidrBlocks')
                  ? (json_['maintenanceAddressCidrBlocks'] as core.List)
                      .map((value) => value as core.String)
                      .toList()
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (maintenanceAddressCidrBlocks != null)
          'maintenanceAddressCidrBlocks': maintenanceAddressCidrBlocks!,
      };
}

/// Used by:
///
/// - gkeonprem:v1 : BareMetalAdminManualLbConfig
/// - gkeonprem:v1 : BareMetalManualLbConfig
class $ManualLbConfig {
  /// Whether manual load balancing is enabled.
  core.bool? enabled;

  $ManualLbConfig({
    this.enabled,
  });

  $ManualLbConfig.fromJson(core.Map json_)
      : this(
          enabled: json_.containsKey('enabled')
              ? json_['enabled'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enabled != null) 'enabled': enabled!,
      };
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

  $Material({
    this.digest,
    this.uri,
  });

  $Material.fromJson(core.Map json_)
      : this(
          digest: json_.containsKey('digest')
              ? (json_['digest'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          uri: json_.containsKey('uri') ? json_['uri'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (digest != null) 'digest': digest!,
        if (uri != null) 'uri': uri!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : MaximizeSpendBidStrategy
/// - displayvideo:v3 : MaximizeSpendBidStrategy
class $MaximizeSpendBidStrategy {
  /// The ID of the Custom Bidding Algorithm used by this strategy.
  ///
  /// Only applicable when performance_goal_type is set to
  /// `BIDDING_STRATEGY_PERFORMANCE_GOAL_TYPE_CUSTOM_ALGO`.
  core.String? customBiddingAlgorithmId;

  /// The maximum average CPM that may be bid, in micros of the advertiser's
  /// currency.
  ///
  /// Must be greater than or equal to a billable unit of the given currency.
  /// For example, 1500000 represents 1.5 standard units of the currency.
  core.String? maxAverageCpmBidAmountMicros;

  /// The type of the performance goal that the bidding strategy tries to
  /// minimize while spending the full budget.
  ///
  /// `BIDDING_STRATEGY_PERFORMANCE_GOAL_TYPE_VIEWABLE_CPM` is not supported for
  /// this strategy.
  ///
  /// Required.
  /// Possible string values are:
  /// - "BIDDING_STRATEGY_PERFORMANCE_GOAL_TYPE_UNSPECIFIED" : Type value is not
  /// specified or is unknown in this version.
  /// - "BIDDING_STRATEGY_PERFORMANCE_GOAL_TYPE_CPA" : Cost per action.
  /// - "BIDDING_STRATEGY_PERFORMANCE_GOAL_TYPE_CPC" : Cost per click.
  /// - "BIDDING_STRATEGY_PERFORMANCE_GOAL_TYPE_VIEWABLE_CPM" : Viewable CPM.
  /// - "BIDDING_STRATEGY_PERFORMANCE_GOAL_TYPE_CUSTOM_ALGO" : Custom bidding
  /// algorithm.
  /// - "BIDDING_STRATEGY_PERFORMANCE_GOAL_TYPE_CIVA" : Completed inview and
  /// audible views.
  /// - "BIDDING_STRATEGY_PERFORMANCE_GOAL_TYPE_IVO_TEN" : Inview time over 10
  /// secs views.
  /// - "BIDDING_STRATEGY_PERFORMANCE_GOAL_TYPE_AV_VIEWED" : Viewable
  /// impressions.
  core.String? performanceGoalType;

  /// Whether the strategy takes deal floor prices into account.
  core.bool? raiseBidForDeals;

  $MaximizeSpendBidStrategy({
    this.customBiddingAlgorithmId,
    this.maxAverageCpmBidAmountMicros,
    this.performanceGoalType,
    this.raiseBidForDeals,
  });

  $MaximizeSpendBidStrategy.fromJson(core.Map json_)
      : this(
          customBiddingAlgorithmId:
              json_.containsKey('customBiddingAlgorithmId')
                  ? json_['customBiddingAlgorithmId'] as core.String
                  : null,
          maxAverageCpmBidAmountMicros:
              json_.containsKey('maxAverageCpmBidAmountMicros')
                  ? json_['maxAverageCpmBidAmountMicros'] as core.String
                  : null,
          performanceGoalType: json_.containsKey('performanceGoalType')
              ? json_['performanceGoalType'] as core.String
              : null,
          raiseBidForDeals: json_.containsKey('raiseBidForDeals')
              ? json_['raiseBidForDeals'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (customBiddingAlgorithmId != null)
          'customBiddingAlgorithmId': customBiddingAlgorithmId!,
        if (maxAverageCpmBidAmountMicros != null)
          'maxAverageCpmBidAmountMicros': maxAverageCpmBidAmountMicros!,
        if (performanceGoalType != null)
          'performanceGoalType': performanceGoalType!,
        if (raiseBidForDeals != null) 'raiseBidForDeals': raiseBidForDeals!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : MeasurementConfig
/// - displayvideo:v3 : MeasurementConfig
class $MeasurementConfig {
  /// Whether or not to report DV360 cost to CM360.
  core.bool? dv360ToCmCostReportingEnabled;

  /// Whether or not to include DV360 data in CM360 data transfer reports.
  core.bool? dv360ToCmDataSharingEnabled;

  $MeasurementConfig({
    this.dv360ToCmCostReportingEnabled,
    this.dv360ToCmDataSharingEnabled,
  });

  $MeasurementConfig.fromJson(core.Map json_)
      : this(
          dv360ToCmCostReportingEnabled:
              json_.containsKey('dv360ToCmCostReportingEnabled')
                  ? json_['dv360ToCmCostReportingEnabled'] as core.bool
                  : null,
          dv360ToCmDataSharingEnabled:
              json_.containsKey('dv360ToCmDataSharingEnabled')
                  ? json_['dv360ToCmDataSharingEnabled'] as core.bool
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dv360ToCmCostReportingEnabled != null)
          'dv360ToCmCostReportingEnabled': dv360ToCmCostReportingEnabled!,
        if (dv360ToCmDataSharingEnabled != null)
          'dv360ToCmDataSharingEnabled': dv360ToCmDataSharingEnabled!,
      };
}

/// Used by:
///
/// - chat:v1 : Media
/// - cloudsearch:v1 : Media
/// - displayvideo:v2 : GoogleBytestreamMedia
/// - displayvideo:v3 : GoogleBytestreamMedia
class $Media {
  /// Name of the media resource.
  core.String? resourceName;

  $Media({
    this.resourceName,
  });

  $Media.fromJson(core.Map json_)
      : this(
          resourceName: json_.containsKey('resourceName')
              ? json_['resourceName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (resourceName != null) 'resourceName': resourceName!,
      };
}

/// Used by:
///
/// - dfareporting:v3.5 : MediaRequestInfo
/// - walletobjects:v1 : MediaRequestInfo
class $MediaRequestInfo {
  /// The number of current bytes uploaded or downloaded.
  core.String? currentBytes;

  /// Data to be copied to backend requests.
  ///
  /// Custom data is returned to Scotty in the agent_state field, which Scotty
  /// will then provide in subsequent upload notifications.
  core.String? customData;

  /// Set if the http request info is diff encoded.
  ///
  /// The value of this field is the version number of the base revision. This
  /// is corresponding to Apiary's mediaDiffObjectVersion
  /// (//depot/google3/java/com/google/api/server/media/variable/DiffObjectVersionVariable.java).
  /// See go/esf-scotty-diff-upload for more information.
  core.String? diffObjectVersion;

  /// The existence of the final_status field indicates that this is the last
  /// call to the agent for this request_id.
  ///
  /// http://google3/uploader/agent/scotty_agent.proto?l=737&rcl=347601929
  core.int? finalStatus;

  /// The type of notification received from Scotty.
  /// Possible string values are:
  /// - "START" : Such requests signals the start of a request containing media
  /// upload. Only the media field(s) in the inserted/updated resource are set.
  /// The response should either return an error or succeed. On success,
  /// responses don't need to contain anything.
  /// - "PROGRESS" : Such requests signals that the upload has progressed and
  /// that the backend might want to access the media file specified in relevant
  /// fields in the resource. Only the media field(s) in the inserted/updated
  /// resource are set. The response should either return an error or succeed.
  /// On success, responses don't need to contain anything.
  /// - "END" : Such requests signals the end of a request containing media
  /// upload. END should be handled just like normal Insert/Upload requests,
  /// that is, they should process the request and return a complete resource in
  /// the response. Pointers to media data (a GFS path usually) appear in the
  /// relevant fields in the inserted/updated resource. See gdata.Media in
  /// data.proto.
  /// - "RESPONSE_SENT" : Such requests occur after an END and signal that the
  /// response has been sent back to the client. RESPONSE_SENT is only sent to
  /// the backend if it is configured to receive them. The response does not
  /// need to contain anything.
  /// - "ERROR" : Such requests indicate that an error occurred while processing
  /// the request. ERROR is only sent to the backend if it is configured to
  /// receive them. It is not guaranteed that all errors will result in this
  /// notification to the backend, even if the backend requests them. Since
  /// these requests are just for informational purposes, the response does not
  /// need to contain anything.
  core.String? notificationType;

  /// The Scotty request ID.
  core.String? requestId;

  /// The partition of the Scotty server handling this request.
  ///
  /// type is uploader_service.RequestReceivedParamsServingInfo
  /// LINT.IfChange(request_received_params_serving_info_annotations)
  /// LINT.ThenChange()
  core.String? requestReceivedParamsServingInfo;
  core.List<core.int> get requestReceivedParamsServingInfoAsBytes =>
      convert.base64.decode(requestReceivedParamsServingInfo!);

  set requestReceivedParamsServingInfoAsBytes(core.List<core.int> bytes_) {
    requestReceivedParamsServingInfo =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// The total size of the file.
  core.String? totalBytes;

  /// Whether the total bytes field contains an estimated data.
  core.bool? totalBytesIsEstimated;

  $MediaRequestInfo({
    this.currentBytes,
    this.customData,
    this.diffObjectVersion,
    this.finalStatus,
    this.notificationType,
    this.requestId,
    this.requestReceivedParamsServingInfo,
    this.totalBytes,
    this.totalBytesIsEstimated,
  });

  $MediaRequestInfo.fromJson(core.Map json_)
      : this(
          currentBytes: json_.containsKey('currentBytes')
              ? json_['currentBytes'] as core.String
              : null,
          customData: json_.containsKey('customData')
              ? json_['customData'] as core.String
              : null,
          diffObjectVersion: json_.containsKey('diffObjectVersion')
              ? json_['diffObjectVersion'] as core.String
              : null,
          finalStatus: json_.containsKey('finalStatus')
              ? json_['finalStatus'] as core.int
              : null,
          notificationType: json_.containsKey('notificationType')
              ? json_['notificationType'] as core.String
              : null,
          requestId: json_.containsKey('requestId')
              ? json_['requestId'] as core.String
              : null,
          requestReceivedParamsServingInfo:
              json_.containsKey('requestReceivedParamsServingInfo')
                  ? json_['requestReceivedParamsServingInfo'] as core.String
                  : null,
          totalBytes: json_.containsKey('totalBytes')
              ? json_['totalBytes'] as core.String
              : null,
          totalBytesIsEstimated: json_.containsKey('totalBytesIsEstimated')
              ? json_['totalBytesIsEstimated'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (currentBytes != null) 'currentBytes': currentBytes!,
        if (customData != null) 'customData': customData!,
        if (diffObjectVersion != null) 'diffObjectVersion': diffObjectVersion!,
        if (finalStatus != null) 'finalStatus': finalStatus!,
        if (notificationType != null) 'notificationType': notificationType!,
        if (requestId != null) 'requestId': requestId!,
        if (requestReceivedParamsServingInfo != null)
          'requestReceivedParamsServingInfo': requestReceivedParamsServingInfo!,
        if (totalBytes != null) 'totalBytes': totalBytes!,
        if (totalBytesIsEstimated != null)
          'totalBytesIsEstimated': totalBytesIsEstimated!,
      };
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

  $MethodSelector({
    this.method,
    this.permission,
  });

  $MethodSelector.fromJson(core.Map json_)
      : this(
          method: json_.containsKey('method')
              ? json_['method'] as core.String
              : null,
          permission: json_.containsKey('permission')
              ? json_['permission'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (method != null) 'method': method!,
        if (permission != null) 'permission': permission!,
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

  $MetricDescriptorMetadata({
    this.ingestDelay,
    this.launchStage,
    this.samplePeriod,
  });

  $MetricDescriptorMetadata.fromJson(core.Map json_)
      : this(
          ingestDelay: json_.containsKey('ingestDelay')
              ? json_['ingestDelay'] as core.String
              : null,
          launchStage: json_.containsKey('launchStage')
              ? json_['launchStage'] as core.String
              : null,
          samplePeriod: json_.containsKey('samplePeriod')
              ? json_['samplePeriod'] as core.String
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

  $MetricRule.fromJson(core.Map json_)
      : this(
          metricCosts: json_.containsKey('metricCosts')
              ? (json_['metricCosts'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          selector: json_.containsKey('selector')
              ? json_['selector'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (metricCosts != null) 'metricCosts': metricCosts!,
        if (selector != null) 'selector': selector!,
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

  $Mixin.fromJson(core.Map json_)
      : this(
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          root: json_.containsKey('root') ? json_['root'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (root != null) 'root': root!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : MobileApp
/// - displayvideo:v3 : MobileApp
class $MobileApp {
  /// The ID of the app provided by the platform store.
  ///
  /// Android apps are identified by the bundle ID used by Android's Play store,
  /// such as `com.google.android.gm`. iOS apps are identified by a nine-digit
  /// app ID used by Apple's App store, such as `422689480`.
  ///
  /// Required.
  core.String? appId;

  /// The app name.
  ///
  /// Output only.
  core.String? displayName;

  /// The app platform.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "PLATFORM_UNSPECIFIED" : Platform is not specified.
  /// - "IOS" : iOS platform.
  /// - "ANDROID" : Android platform.
  core.String? platform;

  /// The app publisher.
  ///
  /// Output only.
  core.String? publisher;

  $MobileApp({
    this.appId,
    this.displayName,
    this.platform,
    this.publisher,
  });

  $MobileApp.fromJson(core.Map json_)
      : this(
          appId:
              json_.containsKey('appId') ? json_['appId'] as core.String : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          platform: json_.containsKey('platform')
              ? json_['platform'] as core.String
              : null,
          publisher: json_.containsKey('publisher')
              ? json_['publisher'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (appId != null) 'appId': appId!,
        if (displayName != null) 'displayName': displayName!,
        if (platform != null) 'platform': platform!,
        if (publisher != null) 'publisher': publisher!,
      };
}

/// Used by:
///
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3DataStoreConnectionSignalsAnswerGenerationModelCallSignals
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3DataStoreConnectionSignalsRewriterModelCallSignals
class $ModelCallSignals {
  /// Output of the generative model.
  core.String? modelOutput;

  /// Prompt as sent to the model.
  core.String? renderedPrompt;

  $ModelCallSignals({
    this.modelOutput,
    this.renderedPrompt,
  });

  $ModelCallSignals.fromJson(core.Map json_)
      : this(
          modelOutput: json_.containsKey('modelOutput')
              ? json_['modelOutput'] as core.String
              : null,
          renderedPrompt: json_.containsKey('renderedPrompt')
              ? json_['renderedPrompt'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (modelOutput != null) 'modelOutput': modelOutput!,
        if (renderedPrompt != null) 'renderedPrompt': renderedPrompt!,
      };
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
/// - contentwarehouse:v1 : GoogleTypeMoney
/// - displayvideo:v2 : Money
/// - displayvideo:v3 : Money
/// - documentai:v1 : GoogleTypeMoney
/// - domains:v1 : Money
/// - jobs:v3 : Money
/// - jobs:v4 : Money
/// - migrationcenter:v1 : Money
/// - mybusinessbusinessinformation:v1 : Money
/// - places:v1 : GoogleTypeMoney
/// - recommender:v1 : GoogleTypeMoney
/// - servicecontrol:v1 : Money
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

  $Money({
    this.currencyCode,
    this.nanos,
    this.units,
  });

  $Money.fromJson(core.Map json_)
      : this(
          currencyCode: json_.containsKey('currencyCode')
              ? json_['currencyCode'] as core.String
              : null,
          nanos: json_.containsKey('nanos') ? json_['nanos'] as core.int : null,
          units:
              json_.containsKey('units') ? json_['units'] as core.String : null,
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

  $MonitoredResourceMetadata.fromJson(core.Map json_)
      : this(
          systemLabels: json_.containsKey('systemLabels')
              ? json_['systemLabels'] as core.Map<core.String, core.dynamic>
              : null,
          userLabels: json_.containsKey('userLabels')
              ? (json_['userLabels'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
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

  $MonitoringDestination.fromJson(core.Map json_)
      : this(
          metrics: json_.containsKey('metrics')
              ? (json_['metrics'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          monitoredResource: json_.containsKey('monitoredResource')
              ? json_['monitoredResource'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (metrics != null) 'metrics': metrics!,
        if (monitoredResource != null) 'monitoredResource': monitoredResource!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : NativeContentPositionAssignedTargetingOptionDetails
/// - displayvideo:v3 : NativeContentPositionAssignedTargetingOptionDetails
class $NativeContentPositionAssignedTargetingOptionDetails {
  /// The content position.
  ///
  /// Required.
  /// Possible string values are:
  /// - "NATIVE_CONTENT_POSITION_UNSPECIFIED" : Native content position is not
  /// specified in this version. This enum is a place holder for a default value
  /// and does not represent a real native content position.
  /// - "NATIVE_CONTENT_POSITION_UNKNOWN" : The native content position is
  /// unknown.
  /// - "NATIVE_CONTENT_POSITION_IN_ARTICLE" : Native content position is
  /// in-article, i.e., ads appear between the paragraphs of pages.
  /// - "NATIVE_CONTENT_POSITION_IN_FEED" : Native content position is in-feed,
  /// i.e., ads appear in a scrollable stream of content. A feed is typically
  /// editorial (e.g. a list of articles or news) or listings (e.g. a list of
  /// products or services).
  /// - "NATIVE_CONTENT_POSITION_PERIPHERAL" : Native content position is
  /// peripheral, i.e., ads appear outside of core content on pages, such as the
  /// right- or left-hand side of the page.
  /// - "NATIVE_CONTENT_POSITION_RECOMMENDATION" : Native content position is
  /// recommendation, i.e., ads appear in sections for recommended content.
  core.String? contentPosition;

  $NativeContentPositionAssignedTargetingOptionDetails({
    this.contentPosition,
  });

  $NativeContentPositionAssignedTargetingOptionDetails.fromJson(core.Map json_)
      : this(
          contentPosition: json_.containsKey('contentPosition')
              ? json_['contentPosition'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (contentPosition != null) 'contentPosition': contentPosition!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : NativeContentPositionTargetingOptionDetails
/// - displayvideo:v3 : NativeContentPositionTargetingOptionDetails
class $NativeContentPositionTargetingOptionDetails {
  /// The content position.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "NATIVE_CONTENT_POSITION_UNSPECIFIED" : Native content position is not
  /// specified in this version. This enum is a place holder for a default value
  /// and does not represent a real native content position.
  /// - "NATIVE_CONTENT_POSITION_UNKNOWN" : The native content position is
  /// unknown.
  /// - "NATIVE_CONTENT_POSITION_IN_ARTICLE" : Native content position is
  /// in-article, i.e., ads appear between the paragraphs of pages.
  /// - "NATIVE_CONTENT_POSITION_IN_FEED" : Native content position is in-feed,
  /// i.e., ads appear in a scrollable stream of content. A feed is typically
  /// editorial (e.g. a list of articles or news) or listings (e.g. a list of
  /// products or services).
  /// - "NATIVE_CONTENT_POSITION_PERIPHERAL" : Native content position is
  /// peripheral, i.e., ads appear outside of core content on pages, such as the
  /// right- or left-hand side of the page.
  /// - "NATIVE_CONTENT_POSITION_RECOMMENDATION" : Native content position is
  /// recommendation, i.e., ads appear in sections for recommended content.
  core.String? contentPosition;

  $NativeContentPositionTargetingOptionDetails({
    this.contentPosition,
  });

  $NativeContentPositionTargetingOptionDetails.fromJson(core.Map json_)
      : this(
          contentPosition: json_.containsKey('contentPosition')
              ? json_['contentPosition'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (contentPosition != null) 'contentPosition': contentPosition!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : NegativeKeyword
/// - displayvideo:v3 : NegativeKeyword
class $NegativeKeyword {
  /// The negatively targeted keyword, for example `car insurance`.
  ///
  /// Must be UTF-8 encoded with a maximum size of 255 bytes. Maximum number of
  /// characters is 80. Maximum number of words is 10. Valid characters are
  /// restricted to ASCII characters only. The only URL-escaping permitted is
  /// for representing whitespace between words. Leading or trailing whitespace
  /// is ignored.
  ///
  /// Required. Immutable.
  core.String? keywordValue;

  /// The resource name of the negative keyword.
  ///
  /// Output only.
  core.String? name;

  $NegativeKeyword({
    this.keywordValue,
    this.name,
  });

  $NegativeKeyword.fromJson(core.Map json_)
      : this(
          keywordValue: json_.containsKey('keywordValue')
              ? json_['keywordValue'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (keywordValue != null) 'keywordValue': keywordValue!,
        if (name != null) 'name': name!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : NegativeKeywordList
/// - displayvideo:v3 : NegativeKeywordList
class $NegativeKeywordList {
  /// The unique ID of the advertiser the negative keyword list belongs to.
  ///
  /// Output only.
  core.String? advertiserId;

  /// The display name of the negative keyword list.
  ///
  /// Must be UTF-8 encoded with a maximum size of 255 bytes.
  ///
  /// Required.
  core.String? displayName;

  /// The resource name of the negative keyword list.
  ///
  /// Output only.
  core.String? name;

  /// The unique ID of the negative keyword list.
  ///
  /// Assigned by the system.
  ///
  /// Output only.
  core.String? negativeKeywordListId;

  /// Number of line items that are directly targeting this negative keyword
  /// list.
  ///
  /// Output only.
  core.String? targetedLineItemCount;

  $NegativeKeywordList({
    this.advertiserId,
    this.displayName,
    this.name,
    this.negativeKeywordListId,
    this.targetedLineItemCount,
  });

  $NegativeKeywordList.fromJson(core.Map json_)
      : this(
          advertiserId: json_.containsKey('advertiserId')
              ? json_['advertiserId'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          negativeKeywordListId: json_.containsKey('negativeKeywordListId')
              ? json_['negativeKeywordListId'] as core.String
              : null,
          targetedLineItemCount: json_.containsKey('targetedLineItemCount')
              ? json_['targetedLineItemCount'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (advertiserId != null) 'advertiserId': advertiserId!,
        if (displayName != null) 'displayName': displayName!,
        if (name != null) 'name': name!,
        if (negativeKeywordListId != null)
          'negativeKeywordListId': negativeKeywordListId!,
        if (targetedLineItemCount != null)
          'targetedLineItemCount': targetedLineItemCount!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : NegativeKeywordListAssignedTargetingOptionDetails
/// - displayvideo:v3 : NegativeKeywordListAssignedTargetingOptionDetails
class $NegativeKeywordListAssignedTargetingOptionDetails {
  /// ID of the negative keyword list.
  ///
  /// Should refer to the negative_keyword_list_id field of a
  /// NegativeKeywordList resource.
  ///
  /// Required.
  core.String? negativeKeywordListId;

  $NegativeKeywordListAssignedTargetingOptionDetails({
    this.negativeKeywordListId,
  });

  $NegativeKeywordListAssignedTargetingOptionDetails.fromJson(core.Map json_)
      : this(
          negativeKeywordListId: json_.containsKey('negativeKeywordListId')
              ? json_['negativeKeywordListId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (negativeKeywordListId != null)
          'negativeKeywordListId': negativeKeywordListId!,
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

  $NonCompliantFile.fromJson(core.Map json_)
      : this(
          displayCommand: json_.containsKey('displayCommand')
              ? json_['displayCommand'] as core.String
              : null,
          path: json_.containsKey('path') ? json_['path'] as core.String : null,
          reason: json_.containsKey('reason')
              ? json_['reason'] as core.String
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

  $OAuthRequirements.fromJson(core.Map json_)
      : this(
          canonicalScopes: json_.containsKey('canonicalScopes')
              ? json_['canonicalScopes'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (canonicalScopes != null) 'canonicalScopes': canonicalScopes!,
      };
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

  $ObjectId({
    this.bucketName,
    this.generation,
    this.objectName,
  });

  $ObjectId.fromJson(core.Map json_)
      : this(
          bucketName: json_.containsKey('bucketName')
              ? json_['bucketName'] as core.String
              : null,
          generation: json_.containsKey('generation')
              ? json_['generation'] as core.String
              : null,
          objectName: json_.containsKey('objectName')
              ? json_['objectName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bucketName != null) 'bucketName': bucketName!,
        if (generation != null) 'generation': generation!,
        if (objectName != null) 'objectName': objectName!,
      };
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

  $ObjectIdentifier({
    this.schema,
    this.table,
  });

  $ObjectIdentifier.fromJson(core.Map json_)
      : this(
          schema: json_.containsKey('schema')
              ? json_['schema'] as core.String
              : null,
          table:
              json_.containsKey('table') ? json_['table'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (schema != null) 'schema': schema!,
        if (table != null) 'table': table!,
      };
}

/// Used by:
///
/// - dfareporting:v3.5 : OffsetPosition
/// - dfareporting:v4 : OffsetPosition
class $OffsetPosition {
  /// Offset distance from left side of an asset or a window.
  core.int? left;

  /// Offset distance from top side of an asset or a window.
  core.int? top;

  $OffsetPosition({
    this.left,
    this.top,
  });

  $OffsetPosition.fromJson(core.Map json_)
      : this(
          left: json_.containsKey('left') ? json_['left'] as core.int : null,
          top: json_.containsKey('top') ? json_['top'] as core.int : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (left != null) 'left': left!,
        if (top != null) 'top': top!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : OmidAssignedTargetingOptionDetails
/// - displayvideo:v3 : OmidAssignedTargetingOptionDetails
class $OmidAssignedTargetingOptionDetails {
  /// The type of Open Measurement enabled inventory.
  ///
  /// Required.
  /// Possible string values are:
  /// - "OMID_UNSPECIFIED" : Default value when omid targeting is not specified
  /// in this version.
  /// - "OMID_FOR_MOBILE_DISPLAY_ADS" : Open Measurement enabled mobile display
  /// inventory.
  core.String? omid;

  $OmidAssignedTargetingOptionDetails({
    this.omid,
  });

  $OmidAssignedTargetingOptionDetails.fromJson(core.Map json_)
      : this(
          omid: json_.containsKey('omid') ? json_['omid'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (omid != null) 'omid': omid!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : OmidTargetingOptionDetails
/// - displayvideo:v3 : OmidTargetingOptionDetails
class $OmidTargetingOptionDetails {
  /// The type of Open Measurement enabled inventory.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "OMID_UNSPECIFIED" : Default value when omid targeting is not specified
  /// in this version.
  /// - "OMID_FOR_MOBILE_DISPLAY_ADS" : Open Measurement enabled mobile display
  /// inventory.
  core.String? omid;

  $OmidTargetingOptionDetails({
    this.omid,
  });

  $OmidTargetingOptionDetails.fromJson(core.Map json_)
      : this(
          omid: json_.containsKey('omid') ? json_['omid'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (omid != null) 'omid': omid!,
      };
}

/// Used by:
///
/// - cloudfunctions:v1 : OnDeployUpdatePolicy
/// - cloudfunctions:v2 : OnDeployUpdatePolicy
class $OnDeployUpdatePolicy {
  /// contains the runtime version which was used during latest function
  /// deployment.
  ///
  /// Output only.
  core.String? runtimeVersion;

  $OnDeployUpdatePolicy({
    this.runtimeVersion,
  });

  $OnDeployUpdatePolicy.fromJson(core.Map json_)
      : this(
          runtimeVersion: json_.containsKey('runtimeVersion')
              ? json_['runtimeVersion'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (runtimeVersion != null) 'runtimeVersion': runtimeVersion!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : OnScreenPositionAssignedTargetingOptionDetails
/// - displayvideo:v3 : OnScreenPositionAssignedTargetingOptionDetails
class $OnScreenPositionAssignedTargetingOptionDetails {
  /// The ad type to target.
  ///
  /// Only applicable to insertion order targeting and new line items supporting
  /// the specified ad type will inherit this targeting option by default.
  /// Possible values are: * `AD_TYPE_DISPLAY`, the setting will be inherited by
  /// new line item when line_item_type is `LINE_ITEM_TYPE_DISPLAY_DEFAULT`. *
  /// `AD_TYPE_VIDEO`, the setting will be inherited by new line item when
  /// line_item_type is `LINE_ITEM_TYPE_VIDEO_DEFAULT`.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "AD_TYPE_UNSPECIFIED" : Ad type is not specified or is unknown in this
  /// version.
  /// - "AD_TYPE_DISPLAY" : Display creatives, e.g. image and HTML5.
  /// - "AD_TYPE_VIDEO" : Video creatives, e.g. video ads that play during
  /// streaming content in video players.
  /// - "AD_TYPE_AUDIO" : Audio creatives, e.g. audio ads that play during audio
  /// content.
  core.String? adType;

  /// The on screen position.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "ON_SCREEN_POSITION_UNSPECIFIED" : On screen position is not specified
  /// in this version. This enum is a place holder for a default value and does
  /// not represent a real on screen position.
  /// - "ON_SCREEN_POSITION_UNKNOWN" : The ad position is unknown on the screen.
  /// - "ON_SCREEN_POSITION_ABOVE_THE_FOLD" : The ad is located above the fold.
  /// - "ON_SCREEN_POSITION_BELOW_THE_FOLD" : The ad is located below the fold.
  core.String? onScreenPosition;

  /// The targeting_option_id field when targeting_type is
  /// `TARGETING_TYPE_ON_SCREEN_POSITION`.
  ///
  /// Required.
  core.String? targetingOptionId;

  $OnScreenPositionAssignedTargetingOptionDetails({
    this.adType,
    this.onScreenPosition,
    this.targetingOptionId,
  });

  $OnScreenPositionAssignedTargetingOptionDetails.fromJson(core.Map json_)
      : this(
          adType: json_.containsKey('adType')
              ? json_['adType'] as core.String
              : null,
          onScreenPosition: json_.containsKey('onScreenPosition')
              ? json_['onScreenPosition'] as core.String
              : null,
          targetingOptionId: json_.containsKey('targetingOptionId')
              ? json_['targetingOptionId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (adType != null) 'adType': adType!,
        if (onScreenPosition != null) 'onScreenPosition': onScreenPosition!,
        if (targetingOptionId != null) 'targetingOptionId': targetingOptionId!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : OnScreenPositionTargetingOptionDetails
/// - displayvideo:v3 : OnScreenPositionTargetingOptionDetails
class $OnScreenPositionTargetingOptionDetails {
  /// The on screen position.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "ON_SCREEN_POSITION_UNSPECIFIED" : On screen position is not specified
  /// in this version. This enum is a place holder for a default value and does
  /// not represent a real on screen position.
  /// - "ON_SCREEN_POSITION_UNKNOWN" : The ad position is unknown on the screen.
  /// - "ON_SCREEN_POSITION_ABOVE_THE_FOLD" : The ad is located above the fold.
  /// - "ON_SCREEN_POSITION_BELOW_THE_FOLD" : The ad is located below the fold.
  core.String? onScreenPosition;

  $OnScreenPositionTargetingOptionDetails({
    this.onScreenPosition,
  });

  $OnScreenPositionTargetingOptionDetails.fromJson(core.Map json_)
      : this(
          onScreenPosition: json_.containsKey('onScreenPosition')
              ? json_['onScreenPosition'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (onScreenPosition != null) 'onScreenPosition': onScreenPosition!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : OperatingSystemAssignedTargetingOptionDetails
/// - displayvideo:v3 : OperatingSystemAssignedTargetingOptionDetails
class $OperatingSystemAssignedTargetingOptionDetails {
  /// The display name of the operating system.
  ///
  /// Output only.
  core.String? displayName;

  /// Indicates if this option is being negatively targeted.
  core.bool? negative;

  /// The targeting option ID populated in targeting_option_id field when
  /// targeting_type is `TARGETING_TYPE_OPERATING_SYSTEM`.
  ///
  /// Required.
  core.String? targetingOptionId;

  $OperatingSystemAssignedTargetingOptionDetails({
    this.displayName,
    this.negative,
    this.targetingOptionId,
  });

  $OperatingSystemAssignedTargetingOptionDetails.fromJson(core.Map json_)
      : this(
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          negative: json_.containsKey('negative')
              ? json_['negative'] as core.bool
              : null,
          targetingOptionId: json_.containsKey('targetingOptionId')
              ? json_['targetingOptionId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (negative != null) 'negative': negative!,
        if (targetingOptionId != null) 'targetingOptionId': targetingOptionId!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : OperatingSystemTargetingOptionDetails
/// - displayvideo:v3 : OperatingSystemTargetingOptionDetails
class $OperatingSystemTargetingOptionDetails {
  /// The display name of the operating system.
  ///
  /// Output only.
  core.String? displayName;

  $OperatingSystemTargetingOptionDetails({
    this.displayName,
  });

  $OperatingSystemTargetingOptionDetails.fromJson(core.Map json_)
      : this(
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
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

  $Option.fromJson(core.Map json_)
      : this(
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          value: json_.containsKey('value')
              ? json_['value'] as core.Map<core.String, core.dynamic>
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
  /// CLDR country code (for example, "US").
  core.String? country;

  /// Strings representing the lines of the printed label for mailing the order,
  /// for example: John Smith 1600 Amphitheatre Parkway Mountain View, CA, 94043
  /// United States
  core.List<core.String>? fullAddress;

  /// Whether the address is a post office box.
  core.bool? isPostOfficeBox;

  /// City, town or commune.
  ///
  /// May also include dependent localities or sublocalities (for example,
  /// neighborhoods or suburbs).
  core.String? locality;

  /// Postal Code or ZIP (for example, "94043").
  core.String? postalCode;

  /// Name of the recipient.
  core.String? recipientName;

  /// Top-level administrative subdivision of the country.
  ///
  /// For example, a state like California ("CA") or a province like Quebec
  /// ("QC").
  core.String? region;

  /// Street-level part of the address.
  ///
  /// Use `\n` to add a second line.
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

  $OrderAddress.fromJson(core.Map json_)
      : this(
          country: json_.containsKey('country')
              ? json_['country'] as core.String
              : null,
          fullAddress: json_.containsKey('fullAddress')
              ? (json_['fullAddress'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          isPostOfficeBox: json_.containsKey('isPostOfficeBox')
              ? json_['isPostOfficeBox'] as core.bool
              : null,
          locality: json_.containsKey('locality')
              ? json_['locality'] as core.String
              : null,
          postalCode: json_.containsKey('postalCode')
              ? json_['postalCode'] as core.String
              : null,
          recipientName: json_.containsKey('recipientName')
              ? json_['recipientName'] as core.String
              : null,
          region: json_.containsKey('region')
              ? json_['region'] as core.String
              : null,
          streetAddress: json_.containsKey('streetAddress')
              ? (json_['streetAddress'] as core.List)
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

  $OsConstraint.fromJson(core.Map json_)
      : this(
          minimumVersion: json_.containsKey('minimumVersion')
              ? json_['minimumVersion'] as core.String
              : null,
          osType: json_.containsKey('osType')
              ? json_['osType'] as core.String
              : null,
          requireVerifiedChromeOs: json_.containsKey('requireVerifiedChromeOs')
              ? json_['requireVerifiedChromeOs'] as core.bool
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

  $OsInfo.fromJson(core.Map json_)
      : this(
          architecture: json_.containsKey('architecture')
              ? json_['architecture'] as core.String
              : null,
          hostname: json_.containsKey('hostname')
              ? json_['hostname'] as core.String
              : null,
          kernelRelease: json_.containsKey('kernelRelease')
              ? json_['kernelRelease'] as core.String
              : null,
          kernelVersion: json_.containsKey('kernelVersion')
              ? json_['kernelVersion'] as core.String
              : null,
          longName: json_.containsKey('longName')
              ? json_['longName'] as core.String
              : null,
          osconfigAgentVersion: json_.containsKey('osconfigAgentVersion')
              ? json_['osconfigAgentVersion'] as core.String
              : null,
          shortName: json_.containsKey('shortName')
              ? json_['shortName'] as core.String
              : null,
          version: json_.containsKey('version')
              ? json_['version'] as core.String
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
/// - displayvideo:v2 : Pacing
/// - displayvideo:v3 : Pacing
class $Pacing {
  /// Maximum number of impressions to serve every day.
  ///
  /// Applicable when the budget is impression based. Must be greater than 0.
  core.String? dailyMaxImpressions;

  /// Maximum currency amount to spend every day in micros of advertiser's
  /// currency.
  ///
  /// Applicable when the budget is currency based. Must be greater than 0. For
  /// example, for 1.5 standard unit of the currency, set this field to 1500000.
  /// The value assigned will be rounded to whole billable units for the
  /// relevant currency by the following rules: any positive value less than a
  /// single billable unit will be rounded up to one billable unit and any value
  /// larger than a single billable unit will be rounded down to the nearest
  /// billable value. For example, if the currency's billable unit is 0.01, and
  /// this field is set to 10257770, it will round down to 10250000, a value of
  /// 10.25. If set to 505, it will round up to 10000, a value of 0.01.
  core.String? dailyMaxMicros;

  /// The time period in which the pacing budget will be spent.
  ///
  /// When automatic budget allocation is enabled at the insertion order via
  /// automationType, this field is output only and defaults to
  /// `PACING_PERIOD_FLIGHT`.
  ///
  /// Required.
  /// Possible string values are:
  /// - "PACING_PERIOD_UNSPECIFIED" : Period value is not specified or is
  /// unknown in this version.
  /// - "PACING_PERIOD_DAILY" : The pacing setting will be applied on daily
  /// basis.
  /// - "PACING_PERIOD_FLIGHT" : The pacing setting will be applied to the whole
  /// flight duration.
  core.String? pacingPeriod;

  /// The type of pacing that defines how the budget amount will be spent across
  /// the pacing_period.
  ///
  /// Required.
  /// Possible string values are:
  /// - "PACING_TYPE_UNSPECIFIED" : Pacing mode value is not specified or is
  /// unknown in this version.
  /// - "PACING_TYPE_AHEAD" : Only applicable to `PACING_PERIOD_FLIGHT` pacing
  /// period. Ahead pacing attempts to spend faster than evenly, to make sure
  /// the entire budget is spent by the end of the flight.
  /// - "PACING_TYPE_ASAP" : Spend all of pacing budget amount as quick as
  /// possible.
  /// - "PACING_TYPE_EVEN" : Spend a consistent budget amount every period of
  /// time.
  core.String? pacingType;

  $Pacing({
    this.dailyMaxImpressions,
    this.dailyMaxMicros,
    this.pacingPeriod,
    this.pacingType,
  });

  $Pacing.fromJson(core.Map json_)
      : this(
          dailyMaxImpressions: json_.containsKey('dailyMaxImpressions')
              ? json_['dailyMaxImpressions'] as core.String
              : null,
          dailyMaxMicros: json_.containsKey('dailyMaxMicros')
              ? json_['dailyMaxMicros'] as core.String
              : null,
          pacingPeriod: json_.containsKey('pacingPeriod')
              ? json_['pacingPeriod'] as core.String
              : null,
          pacingType: json_.containsKey('pacingType')
              ? json_['pacingType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dailyMaxImpressions != null)
          'dailyMaxImpressions': dailyMaxImpressions!,
        if (dailyMaxMicros != null) 'dailyMaxMicros': dailyMaxMicros!,
        if (pacingPeriod != null) 'pacingPeriod': pacingPeriod!,
        if (pacingType != null) 'pacingType': pacingType!,
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

  $PageInfo.fromJson(core.Map json_)
      : this(
          resultPerPage: json_.containsKey('resultPerPage')
              ? json_['resultPerPage'] as core.int
              : null,
          startIndex: json_.containsKey('startIndex')
              ? json_['startIndex'] as core.int
              : null,
          totalResults: json_.containsKey('totalResults')
              ? json_['totalResults'] as core.int
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
/// - displayvideo:v2 : ParentEntityFilter
/// - displayvideo:v3 : ParentEntityFilter
class $ParentEntityFilter {
  /// File types that will be returned.
  ///
  /// Required.
  core.List<core.String>? fileType;

  /// The IDs of the specified filter type.
  ///
  /// This is used to filter entities to fetch. If filter type is not
  /// `FILTER_TYPE_NONE`, at least one ID must be specified.
  core.List<core.String>? filterIds;

  /// Filter type used to filter fetched entities.
  ///
  /// Required.
  /// Possible string values are:
  /// - "FILTER_TYPE_UNSPECIFIED" : Default value when type is unspecified or is
  /// unknown in this version.
  /// - "FILTER_TYPE_NONE" : If selected, no filter will be applied to the
  /// download. Can only be used if an Advertiser is specified in
  /// CreateSdfDownloadTaskRequest.
  /// - "FILTER_TYPE_ADVERTISER_ID" : Advertiser ID. If selected, all filter IDs
  /// must be Advertiser IDs that belong to the Partner specified in
  /// CreateSdfDownloadTaskRequest.
  /// - "FILTER_TYPE_CAMPAIGN_ID" : Campaign ID. If selected, all filter IDs
  /// must be Campaign IDs that belong to the Advertiser or Partner specified in
  /// CreateSdfDownloadTaskRequest.
  /// - "FILTER_TYPE_MEDIA_PRODUCT_ID" : Media Product ID. If selected, all
  /// filter IDs must be Media Product IDs that belong to the Advertiser or
  /// Partner specified in CreateSdfDownloadTaskRequest. Can only be used for
  /// downloading `FILE_TYPE_MEDIA_PRODUCT`.
  /// - "FILTER_TYPE_INSERTION_ORDER_ID" : Insertion Order ID. If selected, all
  /// filter IDs must be Insertion Order IDs that belong to the Advertiser or
  /// Partner specified in CreateSdfDownloadTaskRequest. Can only be used for
  /// downloading `FILE_TYPE_INSERTION_ORDER`, `FILE_TYPE_LINE_ITEM`,
  /// `FILE_TYPE_AD_GROUP`, and `FILE_TYPE_AD`.
  /// - "FILTER_TYPE_LINE_ITEM_ID" : Line Item ID. If selected, all filter IDs
  /// must be Line Item IDs that belong to the Advertiser or Partner specified
  /// in CreateSdfDownloadTaskRequest. Can only be used for downloading
  /// `FILE_TYPE_LINE_ITEM`, `FILE_TYPE_AD_GROUP`, and `FILE_TYPE_AD`.
  core.String? filterType;

  $ParentEntityFilter({
    this.fileType,
    this.filterIds,
    this.filterType,
  });

  $ParentEntityFilter.fromJson(core.Map json_)
      : this(
          fileType: json_.containsKey('fileType')
              ? (json_['fileType'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          filterIds: json_.containsKey('filterIds')
              ? (json_['filterIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          filterType: json_.containsKey('filterType')
              ? json_['filterType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fileType != null) 'fileType': fileType!,
        if (filterIds != null) 'filterIds': filterIds!,
        if (filterType != null) 'filterType': filterType!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : ParentalStatusAssignedTargetingOptionDetails
/// - displayvideo:v3 : ParentalStatusAssignedTargetingOptionDetails
class $ParentalStatusAssignedTargetingOptionDetails {
  /// The parental status of the audience.
  ///
  /// Required.
  /// Possible string values are:
  /// - "PARENTAL_STATUS_UNSPECIFIED" : Default value when parental status is
  /// not specified in this version. This enum is a place holder for default
  /// value and does not represent a real parental status option.
  /// - "PARENTAL_STATUS_PARENT" : The audience is a parent.
  /// - "PARENTAL_STATUS_NOT_A_PARENT" : The audience is not a parent.
  /// - "PARENTAL_STATUS_UNKNOWN" : The parental status of the audience is
  /// unknown.
  core.String? parentalStatus;

  $ParentalStatusAssignedTargetingOptionDetails({
    this.parentalStatus,
  });

  $ParentalStatusAssignedTargetingOptionDetails.fromJson(core.Map json_)
      : this(
          parentalStatus: json_.containsKey('parentalStatus')
              ? json_['parentalStatus'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (parentalStatus != null) 'parentalStatus': parentalStatus!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : ParentalStatusTargetingOptionDetails
/// - displayvideo:v3 : ParentalStatusTargetingOptionDetails
class $ParentalStatusTargetingOptionDetails {
  /// The parental status of an audience.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "PARENTAL_STATUS_UNSPECIFIED" : Default value when parental status is
  /// not specified in this version. This enum is a place holder for default
  /// value and does not represent a real parental status option.
  /// - "PARENTAL_STATUS_PARENT" : The audience is a parent.
  /// - "PARENTAL_STATUS_NOT_A_PARENT" : The audience is not a parent.
  /// - "PARENTAL_STATUS_UNKNOWN" : The parental status of the audience is
  /// unknown.
  core.String? parentalStatus;

  $ParentalStatusTargetingOptionDetails({
    this.parentalStatus,
  });

  $ParentalStatusTargetingOptionDetails.fromJson(core.Map json_)
      : this(
          parentalStatus: json_.containsKey('parentalStatus')
              ? json_['parentalStatus'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (parentalStatus != null) 'parentalStatus': parentalStatus!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : PartnerCost
/// - displayvideo:v3 : PartnerCost
class $PartnerCost {
  /// The type of the partner cost.
  ///
  /// Required.
  /// Possible string values are:
  /// - "PARTNER_COST_TYPE_UNSPECIFIED" : Type value is not specified or is
  /// unknown in this version.
  /// - "PARTNER_COST_TYPE_ADLOOX" : The cost is charged for using Adloox.
  /// Billed by the partner.
  /// - "PARTNER_COST_TYPE_ADLOOX_PREBID" : The cost is charged for using Adloox
  /// Pre-Bid. Billed through DV360.
  /// - "PARTNER_COST_TYPE_ADSAFE" : The cost is charged for using AdSafe.
  /// Billed by the partner.
  /// - "PARTNER_COST_TYPE_ADXPOSE" : The cost is charged for using AdExpose.
  /// Billed by the partner.
  /// - "PARTNER_COST_TYPE_AGGREGATE_KNOWLEDGE" : The cost is charged for using
  /// Aggregate Knowledge. Billed by the partner.
  /// - "PARTNER_COST_TYPE_AGENCY_TRADING_DESK" : The cost is charged for using
  /// an Agency Trading Desk. Billed by the partner.
  /// - "PARTNER_COST_TYPE_DV360_FEE" : The cost is charged for using DV360.
  /// Billed through DV360.
  /// - "PARTNER_COST_TYPE_COMSCORE_VCE" : The cost is charged for using
  /// comScore vCE. Billed through DV360.
  /// - "PARTNER_COST_TYPE_DATA_MANAGEMENT_PLATFORM" : The cost is charged for
  /// using a Data Management Platform. Billed by the partner.
  /// - "PARTNER_COST_TYPE_DEFAULT" : The default cost type. Billed by the
  /// partner.
  /// - "PARTNER_COST_TYPE_DOUBLE_VERIFY" : The cost is charged for using
  /// DoubleVerify. Billed by the partner.
  /// - "PARTNER_COST_TYPE_DOUBLE_VERIFY_PREBID" : The cost is charged for using
  /// DoubleVerify Pre-Bid. Billed through DV360.
  /// - "PARTNER_COST_TYPE_EVIDON" : The cost is charged for using Evidon.
  /// Billed by the partner.
  /// - "PARTNER_COST_TYPE_INTEGRAL_AD_SCIENCE_VIDEO" : The cost is charged for
  /// using Integral Ad Science Video. Billed by the partner.
  /// - "PARTNER_COST_TYPE_INTEGRAL_AD_SCIENCE_PREBID" : The cost is charged for
  /// using Integral Ad Science Pre-Bid. Billed through DV360.
  /// - "PARTNER_COST_TYPE_MEDIA_COST_DATA" : The cost is charged for using
  /// media cost data. Billed by the partner.
  /// - "PARTNER_COST_TYPE_MOAT_VIDEO" : The cost is charged for using MOAT
  /// Video. Billed by the partner.
  /// - "PARTNER_COST_TYPE_NIELSEN_DAR" : The cost is charged for using Nielsen
  /// Digital Ad Ratings. Billed through DV360.
  /// - "PARTNER_COST_TYPE_SHOP_LOCAL" : The cost is charged for using
  /// ShopLocal. Billed by the partner.
  /// - "PARTNER_COST_TYPE_TERACENT" : The cost is charged for using Teracent.
  /// Billed by the partner.
  /// - "PARTNER_COST_TYPE_THIRD_PARTY_AD_SERVER" : The cost is charged for
  /// using a third-party ad server. Billed by the partner.
  /// - "PARTNER_COST_TYPE_TRUST_METRICS" : The cost is charged for using
  /// TrustMetrics. Billed by the partner.
  /// - "PARTNER_COST_TYPE_VIZU" : The cost is charged for using Vizu. Billed by
  /// the partner.
  /// - "PARTNER_COST_TYPE_ADLINGO_FEE" : The cost is charged for using AdLingo.
  /// Billed through DV360.
  /// - "PARTNER_COST_TYPE_CUSTOM_FEE_1" : The cost is charged as custom fee 1.
  /// Billed by the partner.
  /// - "PARTNER_COST_TYPE_CUSTOM_FEE_2" : The cost is charged as custom fee 2.
  /// Billed by the partner.
  /// - "PARTNER_COST_TYPE_CUSTOM_FEE_3" : The cost is charged as custom fee 3.
  /// Billed by the partner.
  /// - "PARTNER_COST_TYPE_CUSTOM_FEE_4" : The cost is charged as custom fee 4.
  /// Billed by the partner.
  /// - "PARTNER_COST_TYPE_CUSTOM_FEE_5" : The cost is charged as custom fee 5.
  /// Billed by the partner.
  /// - "PARTNER_COST_TYPE_SCIBIDS_FEE" : The cost is charged for using Scibids.
  /// Billed through DV360. This type is currently only available to certain
  /// customers. Other customers attempting to use this type will receive an
  /// error.
  core.String? costType;

  /// The CPM fee amount in micros of advertiser's currency.
  ///
  /// Applicable when the fee_type is `PARTNER_FEE_TYPE_CPM_FEE`. Must be
  /// greater than or equal to 0. For example, for 1.5 standard unit of the
  /// advertiser's currency, set this field to 1500000.
  core.String? feeAmount;

  /// The media fee percentage in millis (1/1000 of a percent).
  ///
  /// Applicable when the fee_type is `PARTNER_FEE_TYPE_MEDIA_FEE`. Must be
  /// greater than or equal to 0. For example: 100 represents 0.1%.
  core.String? feePercentageMillis;

  /// The fee type for this partner cost.
  ///
  /// Required.
  /// Possible string values are:
  /// - "PARTNER_COST_FEE_TYPE_UNSPECIFIED" : Value is not specified or is
  /// unknown in this version.
  /// - "PARTNER_COST_FEE_TYPE_CPM_FEE" : The partner cost is a fixed CPM fee.
  /// Not applicable when the partner cost cost_type is one of: *
  /// `PARTNER_COST_TYPE_MEDIA_COST_DATA` * `PARTNER_COST_TYPE_DV360_FEE`.
  /// - "PARTNER_COST_FEE_TYPE_MEDIA_FEE" : The partner cost is a percentage
  /// surcharge based on the media cost. Not applicable when the partner
  /// cost_type is one of: * `PARTNER_COST_TYPE_SHOP_LOCAL` *
  /// `PARTNER_COST_TYPE_TRUST_METRICS` *
  /// `PARTNER_COST_TYPE_INTEGRAL_AD_SCIENCE_VIDEO` *
  /// `PARTNER_COST_TYPE_MOAT_VIDEO`.
  core.String? feeType;

  /// The invoice type for this partner cost.
  ///
  /// * Required when cost_type is one of: - `PARTNER_COST_TYPE_ADLOOX` -
  /// `PARTNER_COST_TYPE_DOUBLE_VERIFY` -
  /// `PARTNER_COST_TYPE_INTEGRAL_AD_SCIENCE`. * Output only for other types.
  /// Possible string values are:
  /// - "PARTNER_COST_INVOICE_TYPE_UNSPECIFIED" : Type value is not specified or
  /// is unknown in this version.
  /// - "PARTNER_COST_INVOICE_TYPE_DV360" : Partner cost is billed through
  /// DV360.
  /// - "PARTNER_COST_INVOICE_TYPE_PARTNER" : Partner cost is billed by the
  /// partner.
  core.String? invoiceType;

  $PartnerCost({
    this.costType,
    this.feeAmount,
    this.feePercentageMillis,
    this.feeType,
    this.invoiceType,
  });

  $PartnerCost.fromJson(core.Map json_)
      : this(
          costType: json_.containsKey('costType')
              ? json_['costType'] as core.String
              : null,
          feeAmount: json_.containsKey('feeAmount')
              ? json_['feeAmount'] as core.String
              : null,
          feePercentageMillis: json_.containsKey('feePercentageMillis')
              ? json_['feePercentageMillis'] as core.String
              : null,
          feeType: json_.containsKey('feeType')
              ? json_['feeType'] as core.String
              : null,
          invoiceType: json_.containsKey('invoiceType')
              ? json_['invoiceType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (costType != null) 'costType': costType!,
        if (feeAmount != null) 'feeAmount': feeAmount!,
        if (feePercentageMillis != null)
          'feePercentageMillis': feePercentageMillis!,
        if (feeType != null) 'feeType': feeType!,
        if (invoiceType != null) 'invoiceType': invoiceType!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : PartnerGeneralConfig
/// - displayvideo:v3 : PartnerGeneralConfig
class $PartnerGeneralConfig {
  /// Partner's currency in ISO 4217 format.
  ///
  /// Immutable.
  core.String? currencyCode;

  /// The standard TZ database name of the partner's time zone.
  ///
  /// For example, `America/New_York`. See more at:
  /// https://en.wikipedia.org/wiki/List_of_tz_database_time_zones
  ///
  /// Immutable.
  core.String? timeZone;

  $PartnerGeneralConfig({
    this.currencyCode,
    this.timeZone,
  });

  $PartnerGeneralConfig.fromJson(core.Map json_)
      : this(
          currencyCode: json_.containsKey('currencyCode')
              ? json_['currencyCode'] as core.String
              : null,
          timeZone: json_.containsKey('timeZone')
              ? json_['timeZone'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (currencyCode != null) 'currencyCode': currencyCode!,
        if (timeZone != null) 'timeZone': timeZone!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : PartnerRevenueModel
/// - displayvideo:v3 : PartnerRevenueModel
class $PartnerRevenueModel {
  /// The markup amount of the partner revenue model.
  ///
  /// Must be greater than or equal to 0. * When the markup_type is set to be
  /// `PARTNER_REVENUE_MODEL_MARKUP_TYPE_CPM`, this field represents the CPM
  /// markup in micros of advertiser's currency. For example, 1500000 represents
  /// 1.5 standard units of the currency. * When the markup_type is set to be
  /// `PARTNER_REVENUE_MODEL_MARKUP_TYPE_MEDIA_COST_MARKUP`, this field
  /// represents the media cost percent markup in millis. For example, 100
  /// represents 0.1% (decimal 0.001). * When the markup_type is set to be
  /// `PARTNER_REVENUE_MODEL_MARKUP_TYPE_TOTAL_MEDIA_COST_MARKUP`, this field
  /// represents the total media cost percent markup in millis. For example, 100
  /// represents 0.1% (decimal 0.001).
  ///
  /// Required.
  core.String? markupAmount;

  /// The markup type of the partner revenue model.
  ///
  /// Required.
  /// Possible string values are:
  /// - "PARTNER_REVENUE_MODEL_MARKUP_TYPE_UNSPECIFIED" : Type value is not
  /// specified or is unknown in this version.
  /// - "PARTNER_REVENUE_MODEL_MARKUP_TYPE_CPM" : Calculate the partner revenue
  /// based on a fixed CPM.
  /// - "PARTNER_REVENUE_MODEL_MARKUP_TYPE_MEDIA_COST_MARKUP" : Calculate the
  /// partner revenue based on a percentage surcharge of its media cost.
  /// - "PARTNER_REVENUE_MODEL_MARKUP_TYPE_TOTAL_MEDIA_COST_MARKUP" : Calculate
  /// the partner revenue based on a percentage surcharge of its total media
  /// cost, which includes all partner costs and data costs.
  core.String? markupType;

  $PartnerRevenueModel({
    this.markupAmount,
    this.markupType,
  });

  $PartnerRevenueModel.fromJson(core.Map json_)
      : this(
          markupAmount: json_.containsKey('markupAmount')
              ? json_['markupAmount'] as core.String
              : null,
          markupType: json_.containsKey('markupType')
              ? json_['markupType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (markupAmount != null) 'markupAmount': markupAmount!,
        if (markupType != null) 'markupType': markupType!,
      };
}

/// Used by:
///
/// - trafficdirector:v2 : PathSegment
/// - trafficdirector:v3 : PathSegment
class $PathSegment {
  /// If specified, use the key to retrieve the value in a Struct.
  core.String? key;

  $PathSegment({
    this.key,
  });

  $PathSegment.fromJson(core.Map json_)
      : this(
          key: json_.containsKey('key') ? json_['key'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (key != null) 'key': key!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : PerformanceGoal
/// - displayvideo:v3 : PerformanceGoal
class $PerformanceGoal {
  /// The goal amount, in micros of the advertiser's currency.
  ///
  /// Applicable when performance_goal_type is one of: *
  /// `PERFORMANCE_GOAL_TYPE_CPM` * `PERFORMANCE_GOAL_TYPE_CPC` *
  /// `PERFORMANCE_GOAL_TYPE_CPA` * `PERFORMANCE_GOAL_TYPE_CPIAVC` *
  /// `PERFORMANCE_GOAL_TYPE_VCPM` For example 1500000 represents 1.5 standard
  /// units of the currency.
  core.String? performanceGoalAmountMicros;

  /// The decimal representation of the goal percentage in micros.
  ///
  /// Applicable when performance_goal_type is one of: *
  /// `PERFORMANCE_GOAL_TYPE_CTR` * `PERFORMANCE_GOAL_TYPE_VIEWABILITY` *
  /// `PERFORMANCE_GOAL_TYPE_CLICK_CVR` * `PERFORMANCE_GOAL_TYPE_IMPRESSION_CVR`
  /// * `PERFORMANCE_GOAL_TYPE_VTR` *
  /// `PERFORMANCE_GOAL_TYPE_AUDIO_COMPLETION_RATE` *
  /// `PERFORMANCE_GOAL_TYPE_VIDEO_COMPLETION_RATE` For example, 70000
  /// represents 7% (decimal 0.07).
  core.String? performanceGoalPercentageMicros;

  /// A key performance indicator (KPI) string, which can be empty.
  ///
  /// Must be UTF-8 encoded with a length of no more than 100 characters.
  /// Applicable when performance_goal_type is set to
  /// `PERFORMANCE_GOAL_TYPE_OTHER`.
  core.String? performanceGoalString;

  /// The type of the performance goal.
  ///
  /// Required.
  /// Possible string values are:
  /// - "PERFORMANCE_GOAL_TYPE_UNSPECIFIED" : Performance goal type is not
  /// specified or is unknown in this version.
  /// - "PERFORMANCE_GOAL_TYPE_CPM" : The performance goal is set in CPM (cost
  /// per mille).
  /// - "PERFORMANCE_GOAL_TYPE_CPC" : The performance goal is set in CPC (cost
  /// per click).
  /// - "PERFORMANCE_GOAL_TYPE_CPA" : The performance goal is set in CPA (cost
  /// per action).
  /// - "PERFORMANCE_GOAL_TYPE_CTR" : The performance goal is set in CTR
  /// (click-through rate) percentage.
  /// - "PERFORMANCE_GOAL_TYPE_VIEWABILITY" : The performance goal is set in
  /// Viewability percentage.
  /// - "PERFORMANCE_GOAL_TYPE_CPIAVC" : The performance goal is set as CPIAVC
  /// (cost per impression audible and visible at completion).
  /// - "PERFORMANCE_GOAL_TYPE_CPE" : The performance goal is set in CPE (cost
  /// per engagement).
  /// - "PERFORMANCE_GOAL_TYPE_CLICK_CVR" : The performance goal is set in click
  /// conversion rate (conversions per click) percentage.
  /// - "PERFORMANCE_GOAL_TYPE_IMPRESSION_CVR" : The performance goal is set in
  /// impression conversion rate (conversions per impression) percentage.
  /// - "PERFORMANCE_GOAL_TYPE_VCPM" : The performance goal is set in VCPM (cost
  /// per thousand viewable impressions).
  /// - "PERFORMANCE_GOAL_TYPE_VTR" : The performance goal is set in YouTube
  /// view rate (YouTube views per impression) percentage.
  /// - "PERFORMANCE_GOAL_TYPE_AUDIO_COMPLETION_RATE" : The performance goal is
  /// set in audio completion rate (complete audio listens per impression)
  /// percentage.
  /// - "PERFORMANCE_GOAL_TYPE_VIDEO_COMPLETION_RATE" : The performance goal is
  /// set in video completion rate (complete video views per impression)
  /// percentage.
  /// - "PERFORMANCE_GOAL_TYPE_OTHER" : The performance goal is set to Other.
  core.String? performanceGoalType;

  $PerformanceGoal({
    this.performanceGoalAmountMicros,
    this.performanceGoalPercentageMicros,
    this.performanceGoalString,
    this.performanceGoalType,
  });

  $PerformanceGoal.fromJson(core.Map json_)
      : this(
          performanceGoalAmountMicros:
              json_.containsKey('performanceGoalAmountMicros')
                  ? json_['performanceGoalAmountMicros'] as core.String
                  : null,
          performanceGoalPercentageMicros:
              json_.containsKey('performanceGoalPercentageMicros')
                  ? json_['performanceGoalPercentageMicros'] as core.String
                  : null,
          performanceGoalString: json_.containsKey('performanceGoalString')
              ? json_['performanceGoalString'] as core.String
              : null,
          performanceGoalType: json_.containsKey('performanceGoalType')
              ? json_['performanceGoalType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (performanceGoalAmountMicros != null)
          'performanceGoalAmountMicros': performanceGoalAmountMicros!,
        if (performanceGoalPercentageMicros != null)
          'performanceGoalPercentageMicros': performanceGoalPercentageMicros!,
        if (performanceGoalString != null)
          'performanceGoalString': performanceGoalString!,
        if (performanceGoalType != null)
          'performanceGoalType': performanceGoalType!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : PerformanceGoalBidStrategy
/// - displayvideo:v3 : PerformanceGoalBidStrategy
class $PerformanceGoalBidStrategy {
  /// The ID of the Custom Bidding Algorithm used by this strategy.
  ///
  /// Only applicable when performance_goal_type is set to
  /// `BIDDING_STRATEGY_PERFORMANCE_GOAL_TYPE_CUSTOM_ALGO`.
  core.String? customBiddingAlgorithmId;

  /// The maximum average CPM that may be bid, in micros of the advertiser's
  /// currency.
  ///
  /// Must be greater than or equal to a billable unit of the given currency.
  /// Not applicable when performance_goal_type is set to
  /// `BIDDING_STRATEGY_PERFORMANCE_GOAL_TYPE_VIEWABLE_CPM`. For example,
  /// 1500000 represents 1.5 standard units of the currency.
  core.String? maxAverageCpmBidAmountMicros;

  /// The performance goal the bidding strategy will attempt to meet or beat, in
  /// micros of the advertiser's currency or in micro of the ROAS (Return On
  /// Advertising Spend) value which is also based on advertiser's currency.
  ///
  /// Must be greater than or equal to a billable unit of the given currency and
  /// smaller or equal to upper bounds. Each performance_goal_type has its upper
  /// bound: * when performance_goal_type is
  /// `BIDDING_STRATEGY_PERFORMANCE_GOAL_TYPE_CPA`, upper bound is 10000.00 USD.
  /// * when performance_goal_type is
  /// `BIDDING_STRATEGY_PERFORMANCE_GOAL_TYPE_CPC`, upper bound is 1000.00 USD.
  /// * when performance_goal_type is
  /// `BIDDING_STRATEGY_PERFORMANCE_GOAL_TYPE_VIEWABLE_CPM`, upper bound is
  /// 1000.00 USD. * when performance_goal_type is
  /// `BIDDING_STRATEGY_PERFORMANCE_GOAL_TYPE_CUSTOM_ALGO`, upper bound is
  /// 1000.00 and lower bound is 0.01. Example: If set to
  /// `BIDDING_STRATEGY_PERFORMANCE_GOAL_TYPE_VIEWABLE_CPM`, the bid price will
  /// be based on the probability that each available impression will be
  /// viewable. For example, if viewable CPM target is $2 and an impression is
  /// 40% likely to be viewable, the bid price will be $0.80 CPM (40% of $2).
  /// For example, 1500000 represents 1.5 standard units of the currency or ROAS
  /// value.
  ///
  /// Required.
  core.String? performanceGoalAmountMicros;

  /// The type of the performance goal that the bidding strategy will try to
  /// meet or beat.
  ///
  /// For line item level usage, the value must be one of: *
  /// `BIDDING_STRATEGY_PERFORMANCE_GOAL_TYPE_CPA` *
  /// `BIDDING_STRATEGY_PERFORMANCE_GOAL_TYPE_CPC` *
  /// `BIDDING_STRATEGY_PERFORMANCE_GOAL_TYPE_VIEWABLE_CPM` *
  /// `BIDDING_STRATEGY_PERFORMANCE_GOAL_TYPE_CUSTOM_ALGO`.
  ///
  /// Required.
  /// Possible string values are:
  /// - "BIDDING_STRATEGY_PERFORMANCE_GOAL_TYPE_UNSPECIFIED" : Type value is not
  /// specified or is unknown in this version.
  /// - "BIDDING_STRATEGY_PERFORMANCE_GOAL_TYPE_CPA" : Cost per action.
  /// - "BIDDING_STRATEGY_PERFORMANCE_GOAL_TYPE_CPC" : Cost per click.
  /// - "BIDDING_STRATEGY_PERFORMANCE_GOAL_TYPE_VIEWABLE_CPM" : Viewable CPM.
  /// - "BIDDING_STRATEGY_PERFORMANCE_GOAL_TYPE_CUSTOM_ALGO" : Custom bidding
  /// algorithm.
  /// - "BIDDING_STRATEGY_PERFORMANCE_GOAL_TYPE_CIVA" : Completed inview and
  /// audible views.
  /// - "BIDDING_STRATEGY_PERFORMANCE_GOAL_TYPE_IVO_TEN" : Inview time over 10
  /// secs views.
  /// - "BIDDING_STRATEGY_PERFORMANCE_GOAL_TYPE_AV_VIEWED" : Viewable
  /// impressions.
  core.String? performanceGoalType;

  $PerformanceGoalBidStrategy({
    this.customBiddingAlgorithmId,
    this.maxAverageCpmBidAmountMicros,
    this.performanceGoalAmountMicros,
    this.performanceGoalType,
  });

  $PerformanceGoalBidStrategy.fromJson(core.Map json_)
      : this(
          customBiddingAlgorithmId:
              json_.containsKey('customBiddingAlgorithmId')
                  ? json_['customBiddingAlgorithmId'] as core.String
                  : null,
          maxAverageCpmBidAmountMicros:
              json_.containsKey('maxAverageCpmBidAmountMicros')
                  ? json_['maxAverageCpmBidAmountMicros'] as core.String
                  : null,
          performanceGoalAmountMicros:
              json_.containsKey('performanceGoalAmountMicros')
                  ? json_['performanceGoalAmountMicros'] as core.String
                  : null,
          performanceGoalType: json_.containsKey('performanceGoalType')
              ? json_['performanceGoalType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (customBiddingAlgorithmId != null)
          'customBiddingAlgorithmId': customBiddingAlgorithmId!,
        if (maxAverageCpmBidAmountMicros != null)
          'maxAverageCpmBidAmountMicros': maxAverageCpmBidAmountMicros!,
        if (performanceGoalAmountMicros != null)
          'performanceGoalAmountMicros': performanceGoalAmountMicros!,
        if (performanceGoalType != null)
          'performanceGoalType': performanceGoalType!,
      };
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

  $Permissions({
    this.disabledUserDeletion,
    this.disabledUserSignup,
  });

  $Permissions.fromJson(core.Map json_)
      : this(
          disabledUserDeletion: json_.containsKey('disabledUserDeletion')
              ? json_['disabledUserDeletion'] as core.bool
              : null,
          disabledUserSignup: json_.containsKey('disabledUserSignup')
              ? json_['disabledUserSignup'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (disabledUserDeletion != null)
          'disabledUserDeletion': disabledUserDeletion!,
        if (disabledUserSignup != null)
          'disabledUserSignup': disabledUserSignup!,
      };
}

/// Used by:
///
/// - accesscontextmanager:v1 : TestIamPermissionsResponse
/// - aiplatform:v1 : GoogleIamV1TestIamPermissionsResponse
/// - analyticshub:v1 : TestIamPermissionsResponse
/// - apigateway:v1 : ApigatewayTestIamPermissionsResponse
/// - apigee:v1 : GoogleIamV1TestIamPermissionsResponse
/// - apigeeregistry:v1 : TestIamPermissionsResponse
/// - apphub:v1 : TestIamPermissionsResponse
/// - artifactregistry:v1 : TestIamPermissionsResponse
/// - backupdr:v1 : TestIamPermissionsResponse
/// - beyondcorp:v1 : GoogleIamV1TestIamPermissionsResponse
/// - bigquery:v2 : TestIamPermissionsResponse
/// - bigqueryconnection:v1 : TestIamPermissionsResponse
/// - bigquerydatapolicy:v1 : TestIamPermissionsResponse
/// - bigtableadmin:v2 : TestIamPermissionsResponse
/// - binaryauthorization:v1 : TestIamPermissionsResponse
/// - cloudbilling:v1 : TestIamPermissionsResponse
/// - cloudbuild:v2 : TestIamPermissionsResponse
/// - clouddeploy:v1 : TestIamPermissionsResponse
/// - cloudfunctions:v1 : TestIamPermissionsResponse
/// - cloudfunctions:v2 : TestIamPermissionsResponse
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
/// - dns:v1 : GoogleIamV1TestIamPermissionsResponse
/// - domains:v1 : TestIamPermissionsResponse
/// - eventarc:v1 : TestIamPermissionsResponse
/// - gkebackup:v1 : TestIamPermissionsResponse
/// - gkehub:v1 : TestIamPermissionsResponse
/// - gkeonprem:v1 : TestIamPermissionsResponse
/// - healthcare:v1 : TestIamPermissionsResponse
/// - iam:v1 : TestIamPermissionsResponse
/// - iap:v1 : TestIamPermissionsResponse
/// - identitytoolkit:v2 : GoogleIamV1TestIamPermissionsResponse
/// - ids:v1 : TestIamPermissionsResponse
/// - looker:v1 : TestIamPermissionsResponse
/// - managedidentities:v1 : TestIamPermissionsResponse
/// - ml:v1 : GoogleIamV1__TestIamPermissionsResponse
/// - networkconnectivity:v1 : TestIamPermissionsResponse
/// - networkmanagement:v1 : TestIamPermissionsResponse
/// - networksecurity:v1 : GoogleIamV1TestIamPermissionsResponse
/// - networkservices:v1 : TestIamPermissionsResponse
/// - notebooks:v1 : TestIamPermissionsResponse
/// - notebooks:v2 : TestIamPermissionsResponse
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
/// - vmwareengine:v1 : TestIamPermissionsResponse
/// - workstations:v1 : TestIamPermissionsResponse
class $PermissionsResponse {
  /// A subset of `TestPermissionsRequest.permissions` that the caller is
  /// allowed.
  core.List<core.String>? permissions;

  $PermissionsResponse({
    this.permissions,
  });

  $PermissionsResponse.fromJson(core.Map json_)
      : this(
          permissions: json_.containsKey('permissions')
              ? (json_['permissions'] as core.List)
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
/// - trafficdirector:v2 : Pipe
/// - trafficdirector:v3 : Pipe
class $Pipe {
  /// The mode for the Pipe.
  ///
  /// Not applicable for abstract sockets.
  core.int? mode;

  /// Unix Domain Socket path.
  ///
  /// On Linux, paths starting with '@' will use the abstract namespace. The
  /// starting '@' is replaced by a null byte by Envoy. Paths starting with '@'
  /// will result in an error in environments other than Linux.
  core.String? path;

  $Pipe({
    this.mode,
    this.path,
  });

  $Pipe.fromJson(core.Map json_)
      : this(
          mode: json_.containsKey('mode') ? json_['mode'] as core.int : null,
          path: json_.containsKey('path') ? json_['path'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (mode != null) 'mode': mode!,
        if (path != null) 'path': path!,
      };
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

  $PlanSummary({
    this.indexesUsed,
  });

  $PlanSummary.fromJson(core.Map json_)
      : this(
          indexesUsed: json_.containsKey('indexesUsed')
              ? (json_['indexesUsed'] as core.List)
                  .map((value) => value as core.Map<core.String, core.dynamic>)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (indexesUsed != null) 'indexesUsed': indexesUsed!,
      };
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

  $PlusCode({
    this.compoundCode,
    this.globalCode,
  });

  $PlusCode.fromJson(core.Map json_)
      : this(
          compoundCode: json_.containsKey('compoundCode')
              ? json_['compoundCode'] as core.String
              : null,
          globalCode: json_.containsKey('globalCode')
              ? json_['globalCode'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (compoundCode != null) 'compoundCode': compoundCode!,
        if (globalCode != null) 'globalCode': globalCode!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : PoiAssignedTargetingOptionDetails
/// - displayvideo:v3 : PoiAssignedTargetingOptionDetails
class $PoiAssignedTargetingOptionDetails {
  /// The display name of a POI, e.g. "Times Square", "Space Needle", followed
  /// by its full address if available.
  ///
  /// Output only.
  core.String? displayName;

  /// Latitude of the POI rounding to 6th decimal place.
  ///
  /// Output only.
  core.double? latitude;

  /// Longitude of the POI rounding to 6th decimal place.
  ///
  /// Output only.
  core.double? longitude;

  /// The radius of the area around the POI that will be targeted.
  ///
  /// The units of the radius are specified by proximity_radius_unit. Must be 1
  /// to 800 if unit is `DISTANCE_UNIT_KILOMETERS` and 1 to 500 if unit is
  /// `DISTANCE_UNIT_MILES`.
  ///
  /// Required.
  core.double? proximityRadiusAmount;

  /// The unit of distance by which the targeting radius is measured.
  ///
  /// Required.
  /// Possible string values are:
  /// - "DISTANCE_UNIT_UNSPECIFIED" : Type value is not specified or is unknown
  /// in this version.
  /// - "DISTANCE_UNIT_MILES" : Miles.
  /// - "DISTANCE_UNIT_KILOMETERS" : Kilometers.
  core.String? proximityRadiusUnit;

  /// The targeting_option_id of a TargetingOption of type `TARGETING_TYPE_POI`.
  ///
  /// Accepted POI targeting option IDs can be retrieved using
  /// `targetingTypes.targetingOptions.search`. If targeting a specific
  /// latitude/longitude coordinate removed from an address or POI name, you can
  /// generate the necessary targeting option ID by rounding the desired
  /// coordinate values to the 6th decimal place, removing the decimals, and
  /// concatenating the string values separated by a semicolon. For example, you
  /// can target the latitude/longitude pair of 40.7414691, -74.003387 using the
  /// targeting option ID "40741469;-74003387". **Upon** **creation, this field
  /// value will be updated to append a semicolon and** **alphanumerical hash
  /// value if only latitude/longitude coordinates are** **provided.**
  ///
  /// Required.
  core.String? targetingOptionId;

  $PoiAssignedTargetingOptionDetails({
    this.displayName,
    this.latitude,
    this.longitude,
    this.proximityRadiusAmount,
    this.proximityRadiusUnit,
    this.targetingOptionId,
  });

  $PoiAssignedTargetingOptionDetails.fromJson(core.Map json_)
      : this(
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          latitude: json_.containsKey('latitude')
              ? (json_['latitude'] as core.num).toDouble()
              : null,
          longitude: json_.containsKey('longitude')
              ? (json_['longitude'] as core.num).toDouble()
              : null,
          proximityRadiusAmount: json_.containsKey('proximityRadiusAmount')
              ? (json_['proximityRadiusAmount'] as core.num).toDouble()
              : null,
          proximityRadiusUnit: json_.containsKey('proximityRadiusUnit')
              ? json_['proximityRadiusUnit'] as core.String
              : null,
          targetingOptionId: json_.containsKey('targetingOptionId')
              ? json_['targetingOptionId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (latitude != null) 'latitude': latitude!,
        if (longitude != null) 'longitude': longitude!,
        if (proximityRadiusAmount != null)
          'proximityRadiusAmount': proximityRadiusAmount!,
        if (proximityRadiusUnit != null)
          'proximityRadiusUnit': proximityRadiusUnit!,
        if (targetingOptionId != null) 'targetingOptionId': targetingOptionId!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : PoiSearchTerms
/// - displayvideo:v3 : PoiSearchTerms
class $PoiSearchTerms {
  /// The search query for the desired POI name, street address, or coordinate
  /// of the desired POI.
  ///
  /// The query can be a prefix, e.g. "Times squar", "40.7505045,-73.99562",
  /// "315 W 44th St", etc.
  core.String? poiQuery;

  $PoiSearchTerms({
    this.poiQuery,
  });

  $PoiSearchTerms.fromJson(core.Map json_)
      : this(
          poiQuery: json_.containsKey('poiQuery')
              ? json_['poiQuery'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (poiQuery != null) 'poiQuery': poiQuery!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : PoiTargetingOptionDetails
/// - displayvideo:v3 : PoiTargetingOptionDetails
class $PoiTargetingOptionDetails {
  /// The display name of a POI(e.g. "Times Square", "Space Needle"), followed
  /// by its full address if available.
  ///
  /// Output only.
  core.String? displayName;

  /// Latitude of the POI rounding to 6th decimal place.
  ///
  /// Output only.
  core.double? latitude;

  /// Longitude of the POI rounding to 6th decimal place.
  ///
  /// Output only.
  core.double? longitude;

  $PoiTargetingOptionDetails({
    this.displayName,
    this.latitude,
    this.longitude,
  });

  $PoiTargetingOptionDetails.fromJson(core.Map json_)
      : this(
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          latitude: json_.containsKey('latitude')
              ? (json_['latitude'] as core.num).toDouble()
              : null,
          longitude: json_.containsKey('longitude')
              ? (json_['longitude'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (latitude != null) 'latitude': latitude!,
        if (longitude != null) 'longitude': longitude!,
      };
}

/// Used by:
///
/// - gkeonprem:v1 : BareMetalAdminPortConfig
/// - gkeonprem:v1 : BareMetalPortConfig
class $PortConfig {
  /// The port that control plane hosted load balancers will listen on.
  core.int? controlPlaneLoadBalancerPort;

  $PortConfig({
    this.controlPlaneLoadBalancerPort,
  });

  $PortConfig.fromJson(core.Map json_)
      : this(
          controlPlaneLoadBalancerPort:
              json_.containsKey('controlPlaneLoadBalancerPort')
                  ? json_['controlPlaneLoadBalancerPort'] as core.int
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (controlPlaneLoadBalancerPort != null)
          'controlPlaneLoadBalancerPort': controlPlaneLoadBalancerPort!,
      };
}

/// Used by:
///
/// - addressvalidation:v1 : GoogleTypePostalAddress
/// - cloudchannel:v1 : GoogleTypePostalAddress
/// - contentwarehouse:v1 : GoogleTypePostalAddress
/// - documentai:v1 : GoogleTypePostalAddress
/// - domains:v1 : PostalAddress
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
          addressLines: json_.containsKey('addressLines')
              ? (json_['addressLines'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          administrativeArea: json_.containsKey('administrativeArea')
              ? json_['administrativeArea'] as core.String
              : null,
          languageCode: json_.containsKey('languageCode')
              ? json_['languageCode'] as core.String
              : null,
          locality: json_.containsKey('locality')
              ? json_['locality'] as core.String
              : null,
          organization: json_.containsKey('organization')
              ? json_['organization'] as core.String
              : null,
          postalCode: json_.containsKey('postalCode')
              ? json_['postalCode'] as core.String
              : null,
          recipients: json_.containsKey('recipients')
              ? (json_['recipients'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          regionCode: json_.containsKey('regionCode')
              ? json_['regionCode'] as core.String
              : null,
          revision: json_.containsKey('revision')
              ? json_['revision'] as core.int
              : null,
          sortingCode: json_.containsKey('sortingCode')
              ? json_['sortingCode'] as core.String
              : null,
          sublocality: json_.containsKey('sublocality')
              ? json_['sublocality'] as core.String
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
/// - displayvideo:v2 : PrismaCpeCode
/// - displayvideo:v3 : PrismaCpeCode
class $PrismaCpeCode {
  /// The Prisma client code.
  core.String? prismaClientCode;

  /// The Prisma estimate code.
  core.String? prismaEstimateCode;

  /// The Prisma product code.
  core.String? prismaProductCode;

  $PrismaCpeCode({
    this.prismaClientCode,
    this.prismaEstimateCode,
    this.prismaProductCode,
  });

  $PrismaCpeCode.fromJson(core.Map json_)
      : this(
          prismaClientCode: json_.containsKey('prismaClientCode')
              ? json_['prismaClientCode'] as core.String
              : null,
          prismaEstimateCode: json_.containsKey('prismaEstimateCode')
              ? json_['prismaEstimateCode'] as core.String
              : null,
          prismaProductCode: json_.containsKey('prismaProductCode')
              ? json_['prismaProductCode'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (prismaClientCode != null) 'prismaClientCode': prismaClientCode!,
        if (prismaEstimateCode != null)
          'prismaEstimateCode': prismaEstimateCode!,
        if (prismaProductCode != null) 'prismaProductCode': prismaProductCode!,
      };
}

/// Used by:
///
/// - content:v2.1 : FreeListingsProgramStatusReviewIneligibilityReasonDetails
/// - content:v2.1 : ShoppingAdsProgramStatusReviewIneligibilityReasonDetails
class $ProgramStatusReviewIneligibilityReasonDetails {
  /// This timestamp represents end of cooldown period for review ineligbility
  /// reason `IN_COOLDOWN_PERIOD`.
  core.String? cooldownTime;

  $ProgramStatusReviewIneligibilityReasonDetails({
    this.cooldownTime,
  });

  $ProgramStatusReviewIneligibilityReasonDetails.fromJson(core.Map json_)
      : this(
          cooldownTime: json_.containsKey('cooldownTime')
              ? json_['cooldownTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cooldownTime != null) 'cooldownTime': cooldownTime!,
      };
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

  $ProjectRepoId({
    this.projectId,
    this.repoName,
  });

  $ProjectRepoId.fromJson(core.Map json_)
      : this(
          projectId: json_.containsKey('projectId')
              ? json_['projectId'] as core.String
              : null,
          repoName: json_.containsKey('repoName')
              ? json_['repoName'] as core.String
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

  $ProxiesSetProxyHeaderRequest.fromJson(core.Map json_)
      : this(
          proxyHeader: json_.containsKey('proxyHeader')
              ? json_['proxyHeader'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (proxyHeader != null) 'proxyHeader': proxyHeader!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : ProximityLocationListAssignedTargetingOptionDetails
/// - displayvideo:v3 : ProximityLocationListAssignedTargetingOptionDetails
class $ProximityLocationListAssignedTargetingOptionDetails {
  /// ID of the proximity location list.
  ///
  /// Should refer to the location_list_id field of a LocationList resource
  /// whose type is `TARGETING_LOCATION_TYPE_PROXIMITY`.
  ///
  /// Required.
  core.String? proximityLocationListId;

  /// Radius expressed in the distance units set in proximity_radius_unit.
  ///
  /// This represents the size of the area around a chosen location that will be
  /// targeted. Radius should be between 1 and 500 miles or 800 kilometers.
  ///
  /// Required.
  core.double? proximityRadius;

  /// Radius distance units.
  ///
  /// Required.
  /// Possible string values are:
  /// - "PROXIMITY_RADIUS_UNIT_UNSPECIFIED" : Default value when distance units
  /// is not specified in this version. This enum is a place holder for default
  /// value and does not represent a real distance unit.
  /// - "PROXIMITY_RADIUS_UNIT_MILES" : Radius distance unit in miles.
  /// - "PROXIMITY_RADIUS_UNIT_KILOMETERS" : Radius distance unit in kilometeres
  core.String? proximityRadiusUnit;

  $ProximityLocationListAssignedTargetingOptionDetails({
    this.proximityLocationListId,
    this.proximityRadius,
    this.proximityRadiusUnit,
  });

  $ProximityLocationListAssignedTargetingOptionDetails.fromJson(core.Map json_)
      : this(
          proximityLocationListId: json_.containsKey('proximityLocationListId')
              ? json_['proximityLocationListId'] as core.String
              : null,
          proximityRadius: json_.containsKey('proximityRadius')
              ? (json_['proximityRadius'] as core.num).toDouble()
              : null,
          proximityRadiusUnit: json_.containsKey('proximityRadiusUnit')
              ? json_['proximityRadiusUnit'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (proximityLocationListId != null)
          'proximityLocationListId': proximityLocationListId!,
        if (proximityRadius != null) 'proximityRadius': proximityRadius!,
        if (proximityRadiusUnit != null)
          'proximityRadiusUnit': proximityRadiusUnit!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : PublisherReviewStatus
/// - displayvideo:v3 : PublisherReviewStatus
class $PublisherReviewStatus {
  /// The publisher reviewing the creative.
  core.String? publisherName;

  /// Status of the publisher review.
  /// Possible string values are:
  /// - "REVIEW_STATUS_UNSPECIFIED" : Type value is not specified or is unknown
  /// in this version.
  /// - "REVIEW_STATUS_APPROVED" : The creative is approved.
  /// - "REVIEW_STATUS_REJECTED" : The creative is rejected.
  /// - "REVIEW_STATUS_PENDING" : The creative is pending review.
  core.String? status;

  $PublisherReviewStatus({
    this.publisherName,
    this.status,
  });

  $PublisherReviewStatus.fromJson(core.Map json_)
      : this(
          publisherName: json_.containsKey('publisherName')
              ? json_['publisherName'] as core.String
              : null,
          status: json_.containsKey('status')
              ? json_['status'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (publisherName != null) 'publisherName': publisherName!,
        if (status != null) 'status': status!,
      };
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
    data =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
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
          attributes: json_.containsKey('attributes')
              ? (json_['attributes'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          data: json_.containsKey('data') ? json_['data'] as core.String : null,
          messageId: json_.containsKey('messageId')
              ? json_['messageId'] as core.String
              : null,
          orderingKey: json_.containsKey('orderingKey')
              ? json_['orderingKey'] as core.String
              : null,
          publishTime: json_.containsKey('publishTime')
              ? json_['publishTime'] as core.String
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

  $PurchasesAcknowledgeRequest.fromJson(core.Map json_)
      : this(
          developerPayload: json_.containsKey('developerPayload')
              ? json_['developerPayload'] as core.String
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

  $Query.fromJson(core.Map json_)
      : this(
          endTime: json_.containsKey('endTime')
              ? json_['endTime'] as core.String
              : null,
          startTime: json_.containsKey('startTime')
              ? json_['startTime'] as core.String
              : null,
          terms:
              json_.containsKey('terms') ? json_['terms'] as core.String : null,
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

  $QuotaLimit.fromJson(core.Map json_)
      : this(
          defaultLimit: json_.containsKey('defaultLimit')
              ? json_['defaultLimit'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          duration: json_.containsKey('duration')
              ? json_['duration'] as core.String
              : null,
          freeTier: json_.containsKey('freeTier')
              ? json_['freeTier'] as core.String
              : null,
          maxLimit: json_.containsKey('maxLimit')
              ? json_['maxLimit'] as core.String
              : null,
          metric: json_.containsKey('metric')
              ? json_['metric'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          unit: json_.containsKey('unit') ? json_['unit'] as core.String : null,
          values: json_.containsKey('values')
              ? (json_['values'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
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

  $RawIndices.fromJson(core.Map json_)
      : this(
          indices: json_.containsKey('indices')
              ? (json_['indices'] as core.List)
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

  $Recipe.fromJson(core.Map json_)
      : this(
          arguments: json_.containsKey('arguments')
              ? (json_['arguments'] as core.List)
                  .map((value) => value as core.Map<core.String, core.dynamic>)
                  .toList()
              : null,
          definedInMaterial: json_.containsKey('definedInMaterial')
              ? json_['definedInMaterial'] as core.String
              : null,
          entryPoint: json_.containsKey('entryPoint')
              ? json_['entryPoint'] as core.String
              : null,
          environment: json_.containsKey('environment')
              ? (json_['environment'] as core.List)
                  .map((value) => value as core.Map<core.String, core.dynamic>)
                  .toList()
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
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
/// - displayvideo:v2 : RegionalLocationListAssignedTargetingOptionDetails
/// - displayvideo:v3 : RegionalLocationListAssignedTargetingOptionDetails
class $RegionalLocationListAssignedTargetingOptionDetails {
  /// Indicates if this option is being negatively targeted.
  core.bool? negative;

  /// ID of the regional location list.
  ///
  /// Should refer to the location_list_id field of a LocationList resource
  /// whose type is `TARGETING_LOCATION_TYPE_REGIONAL`.
  ///
  /// Required.
  core.String? regionalLocationListId;

  $RegionalLocationListAssignedTargetingOptionDetails({
    this.negative,
    this.regionalLocationListId,
  });

  $RegionalLocationListAssignedTargetingOptionDetails.fromJson(core.Map json_)
      : this(
          negative: json_.containsKey('negative')
              ? json_['negative'] as core.bool
              : null,
          regionalLocationListId: json_.containsKey('regionalLocationListId')
              ? json_['regionalLocationListId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (negative != null) 'negative': negative!,
        if (regionalLocationListId != null)
          'regionalLocationListId': regionalLocationListId!,
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

  $RelatedUrl.fromJson(core.Map json_)
      : this(
          label:
              json_.containsKey('label') ? json_['label'] as core.String : null,
          url: json_.containsKey('url') ? json_['url'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (label != null) 'label': label!,
        if (url != null) 'url': url!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : RemarketingConfig
/// - displayvideo:v3 : RemarketingConfig
class $RemarketingConfig {
  /// The ID of the advertiser.
  ///
  /// Output only.
  core.String? advertiserId;

  /// Whether the Floodlight activity remarketing user list is available to the
  /// identified advertiser.
  ///
  /// Output only.
  core.bool? remarketingEnabled;

  $RemarketingConfig({
    this.advertiserId,
    this.remarketingEnabled,
  });

  $RemarketingConfig.fromJson(core.Map json_)
      : this(
          advertiserId: json_.containsKey('advertiserId')
              ? json_['advertiserId'] as core.String
              : null,
          remarketingEnabled: json_.containsKey('remarketingEnabled')
              ? json_['remarketingEnabled'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (advertiserId != null) 'advertiserId': advertiserId!,
        if (remarketingEnabled != null)
          'remarketingEnabled': remarketingEnabled!,
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

  $ReplaceAllTextResponse.fromJson(core.Map json_)
      : this(
          occurrencesChanged: json_.containsKey('occurrencesChanged')
              ? json_['occurrencesChanged'] as core.int
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

  $Req.fromJson(core.Map json_)
      : this(
          names: json_.containsKey('names')
              ? (json_['names'] as core.List)
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

  $Request00.fromJson(core.Map json_)
      : this(
          customer: json_.containsKey('customer')
              ? json_['customer'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (customer != null) 'customer': customer!,
      };
}

/// Used by:
///
/// - migrationcenter:v1 : RunImportJobRequest
/// - migrationcenter:v1 : ValidateImportJobRequest
/// - rapidmigrationassessment:v1 : PauseCollectorRequest
/// - rapidmigrationassessment:v1 : RegisterCollectorRequest
/// - rapidmigrationassessment:v1 : ResumeCollectorRequest
class $Request01 {
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

  $Request01({
    this.requestId,
  });

  $Request01.fromJson(core.Map json_)
      : this(
          requestId: json_.containsKey('requestId')
              ? json_['requestId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (requestId != null) 'requestId': requestId!,
      };
}

/// Used by:
///
/// - cloudchannel:v1 : GoogleCloudChannelV1ActivateEntitlementRequest
/// - cloudchannel:v1 : GoogleCloudChannelV1CancelEntitlementRequest
/// - cloudchannel:v1 : GoogleCloudChannelV1StartPaidServiceRequest
/// - cloudchannel:v1 : GoogleCloudChannelV1SuspendEntitlementRequest
class $Request02 {
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

  $Request02({
    this.requestId,
  });

  $Request02.fromJson(core.Map json_)
      : this(
          requestId: json_.containsKey('requestId')
              ? json_['requestId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (requestId != null) 'requestId': requestId!,
      };
}

/// Used by:
///
/// - privateca:v1 : EnableCertificateAuthorityRequest
/// - privateca:v1 : FetchCaCertsRequest
/// - privateca:v1 : UndeleteCertificateAuthorityRequest
class $Request03 {
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

  $Request03({
    this.requestId,
  });

  $Request03.fromJson(core.Map json_)
      : this(
          requestId: json_.containsKey('requestId')
              ? json_['requestId'] as core.String
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
class $Request04 {
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

  $Request04({
    this.etag,
    this.stateMetadata,
  });

  $Request04.fromJson(core.Map json_)
      : this(
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          stateMetadata: json_.containsKey('stateMetadata')
              ? (json_['stateMetadata'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
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
class $Request05 {
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

  $Request05({
    this.pageSize,
    this.pageToken,
  });

  $Request05.fromJson(core.Map json_)
      : this(
          pageSize: json_.containsKey('pageSize')
              ? json_['pageSize'] as core.int
              : null,
          pageToken: json_.containsKey('pageToken')
              ? json_['pageToken'] as core.String
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
class $Request06 {
  /// The URLs of one or more instances to recreate.
  ///
  /// This can be a full URL or a partial URL, such as
  /// zones/\[ZONE\]/instances/\[INSTANCE_NAME\].
  core.List<core.String>? instances;

  $Request06({
    this.instances,
  });

  $Request06.fromJson(core.Map json_)
      : this(
          instances: json_.containsKey('instances')
              ? (json_['instances'] as core.List)
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
class $Request07 {
  /// The code \[ISO 3166-1
  /// alpha-2\](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) of the country
  /// for which review is to be requested.
  core.String? regionCode;

  $Request07({
    this.regionCode,
  });

  $Request07.fromJson(core.Map json_)
      : this(
          regionCode: json_.containsKey('regionCode')
              ? json_['regionCode'] as core.String
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
class $Request08 {
  /// If not specified, the agent's default language is used.
  core.String? languageCode;

  $Request08({
    this.languageCode,
  });

  $Request08.fromJson(core.Map json_)
      : this(
          languageCode: json_.containsKey('languageCode')
              ? json_['languageCode'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (languageCode != null) 'languageCode': languageCode!,
      };
}

/// Used by:
///
/// - notebooks:v1 : RefreshRuntimeTokenInternalRequest
/// - notebooks:v2 : UpgradeInstanceSystemRequest
class $Request09 {
  /// The VM hardware token for authenticating the VM.
  ///
  /// https://cloud.google.com/compute/docs/instances/verifying-instance-identity
  ///
  /// Required.
  core.String? vmId;

  $Request09({
    this.vmId,
  });

  $Request09.fromJson(core.Map json_)
      : this(
          vmId: json_.containsKey('vmId') ? json_['vmId'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (vmId != null) 'vmId': vmId!,
      };
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
    content =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
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
          content: json_.containsKey('content')
              ? json_['content'] as core.String
              : null,
          digest: json_.containsKey('digest')
              ? (json_['digest'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          downloadLocation: json_.containsKey('downloadLocation')
              ? json_['downloadLocation'] as core.String
              : null,
          mediaType: json_.containsKey('mediaType')
              ? json_['mediaType'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          uri: json_.containsKey('uri') ? json_['uri'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (annotations != null) 'annotations': annotations!,
        if (content != null) 'content': content!,
        if (digest != null) 'digest': digest!,
        if (downloadLocation != null) 'downloadLocation': downloadLocation!,
        if (mediaType != null) 'mediaType': mediaType!,
        if (name != null) 'name': name!,
        if (uri != null) 'uri': uri!,
      };
}

/// Used by:
///
/// - notebooks:v1 : IsInstanceUpgradeableResponse
/// - notebooks:v2 : CheckInstanceUpgradabilityResponse
class $Response {
  /// The new image self link this instance will be upgraded to if calling the
  /// upgrade endpoint.
  ///
  /// This field will only be populated if field upgradeable is true.
  core.String? upgradeImage;

  /// Additional information about upgrade.
  core.String? upgradeInfo;

  /// The version this instance will be upgraded to if calling the upgrade
  /// endpoint.
  ///
  /// This field will only be populated if field upgradeable is true.
  core.String? upgradeVersion;

  /// If an instance is upgradeable.
  core.bool? upgradeable;

  $Response({
    this.upgradeImage,
    this.upgradeInfo,
    this.upgradeVersion,
    this.upgradeable,
  });

  $Response.fromJson(core.Map json_)
      : this(
          upgradeImage: json_.containsKey('upgradeImage')
              ? json_['upgradeImage'] as core.String
              : null,
          upgradeInfo: json_.containsKey('upgradeInfo')
              ? json_['upgradeInfo'] as core.String
              : null,
          upgradeVersion: json_.containsKey('upgradeVersion')
              ? json_['upgradeVersion'] as core.String
              : null,
          upgradeable: json_.containsKey('upgradeable')
              ? json_['upgradeable'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (upgradeImage != null) 'upgradeImage': upgradeImage!,
        if (upgradeInfo != null) 'upgradeInfo': upgradeInfo!,
        if (upgradeVersion != null) 'upgradeVersion': upgradeVersion!,
        if (upgradeable != null) 'upgradeable': upgradeable!,
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

  $ResponseMetadata.fromJson(core.Map json_)
      : this(
          requestId: json_.containsKey('requestId')
              ? json_['requestId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (requestId != null) 'requestId': requestId!,
      };
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

  $ResultPostScanActionsResultBigQueryExportResult({
    this.message,
    this.state,
  });

  $ResultPostScanActionsResultBigQueryExportResult.fromJson(core.Map json_)
      : this(
          message: json_.containsKey('message')
              ? json_['message'] as core.String
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (message != null) 'message': message!,
        if (state != null) 'state': state!,
      };
}

/// Used by:
///
/// - apigeeregistry:v1 : TagApiDeploymentRevisionRequest
/// - apigeeregistry:v1 : TagApiSpecRevisionRequest
class $RevisionRequest {
  /// The tag to apply.
  ///
  /// The tag should be at most 40 characters, and match `a-z{3,39}`.
  ///
  /// Required.
  core.String? tag;

  $RevisionRequest({
    this.tag,
  });

  $RevisionRequest.fromJson(core.Map json_)
      : this(
          tag: json_.containsKey('tag') ? json_['tag'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (tag != null) 'tag': tag!,
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

  $RgbColor.fromJson(core.Map json_)
      : this(
          blue: json_.containsKey('blue')
              ? (json_['blue'] as core.num).toDouble()
              : null,
          green: json_.containsKey('green')
              ? (json_['green'] as core.num).toDouble()
              : null,
          red: json_.containsKey('red')
              ? (json_['red'] as core.num).toDouble()
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

  $RouteFaultInjectionPolicyAbort({
    this.httpStatus,
    this.percentage,
  });

  $RouteFaultInjectionPolicyAbort.fromJson(core.Map json_)
      : this(
          httpStatus: json_.containsKey('httpStatus')
              ? json_['httpStatus'] as core.int
              : null,
          percentage: json_.containsKey('percentage')
              ? json_['percentage'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (httpStatus != null) 'httpStatus': httpStatus!,
        if (percentage != null) 'percentage': percentage!,
      };
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

  $RouteFaultInjectionPolicyDelay({
    this.fixedDelay,
    this.percentage,
  });

  $RouteFaultInjectionPolicyDelay.fromJson(core.Map json_)
      : this(
          fixedDelay: json_.containsKey('fixedDelay')
              ? json_['fixedDelay'] as core.String
              : null,
          percentage: json_.containsKey('percentage')
              ? json_['percentage'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fixedDelay != null) 'fixedDelay': fixedDelay!,
        if (percentage != null) 'percentage': percentage!,
      };
}

/// Used by:
///
/// - networkservices:v1 : GrpcRouteStatefulSessionAffinityPolicy
/// - networkservices:v1 : HttpRouteStatefulSessionAffinityPolicy
class $RouteStatefulSessionAffinityPolicy {
  /// The cookie TTL value for the Set-Cookie header generated by the data
  /// plane.
  ///
  /// The lifetime of the cookie may be set to a value from 1 to 86400 seconds
  /// (24 hours) inclusive.
  ///
  /// Required.
  core.String? cookieTtl;

  $RouteStatefulSessionAffinityPolicy({
    this.cookieTtl,
  });

  $RouteStatefulSessionAffinityPolicy.fromJson(core.Map json_)
      : this(
          cookieTtl: json_.containsKey('cookieTtl')
              ? json_['cookieTtl'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cookieTtl != null) 'cookieTtl': cookieTtl!,
      };
}

/// Used by:
///
/// - notebooks:v1 : ResetRuntimeRequest
/// - notebooks:v1 : StartRuntimeRequest
/// - notebooks:v1 : StopRuntimeRequest
/// - notebooks:v1 : UpgradeRuntimeRequest
class $RuntimeRequest {
  /// Idempotent request UUID.
  core.String? requestId;

  $RuntimeRequest({
    this.requestId,
  });

  $RuntimeRequest.fromJson(core.Map json_)
      : this(
          requestId: json_.containsKey('requestId')
              ? json_['requestId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (requestId != null) 'requestId': requestId!,
      };
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

  $SBOMStatus({
    this.error,
    this.sbomState,
  });

  $SBOMStatus.fromJson(core.Map json_)
      : this(
          error:
              json_.containsKey('error') ? json_['error'] as core.String : null,
          sbomState: json_.containsKey('sbomState')
              ? json_['sbomState'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (error != null) 'error': error!,
        if (sbomState != null) 'sbomState': sbomState!,
      };
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
          digest: json_.containsKey('digest')
              ? (json_['digest'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          location: json_.containsKey('location')
              ? json_['location'] as core.String
              : null,
          mimeType: json_.containsKey('mimeType')
              ? json_['mimeType'] as core.String
              : null,
          referrerId: json_.containsKey('referrerId')
              ? json_['referrerId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (digest != null) 'digest': digest!,
        if (location != null) 'location': location!,
        if (mimeType != null) 'mimeType': mimeType!,
        if (referrerId != null) 'referrerId': referrerId!,
      };
}

/// Used by:
///
/// - batch:v1 : AgentScript
/// - batch:v1 : Script
class $Script {
  /// Script file path on the host VM.
  ///
  /// To specify an interpreter, please add a `#!`(also known as
  /// [shebang line](https://en.wikipedia.org/wiki/Shebang_(Unix))) as the first
  /// line of the file.(For example, to execute the script using bash,
  /// `#!/bin/bash` should be the first line of the file. To execute the script
  /// using`Python3`, `#!/usr/bin/env python3` should be the first line of the
  /// file.) Otherwise, the file will by default be executed by `/bin/sh`.
  core.String? path;

  /// Shell script text.
  ///
  /// To specify an interpreter, please add a `#!\n` at the beginning of the
  /// text.(For example, to execute the script using bash, `#!/bin/bash\n`
  /// should be added. To execute the script using`Python3`, `#!/usr/bin/env
  /// python3\n` should be added.) Otherwise, the script will by default be
  /// executed by `/bin/sh`.
  core.String? text;

  $Script({
    this.path,
    this.text,
  });

  $Script.fromJson(core.Map json_)
      : this(
          path: json_.containsKey('path') ? json_['path'] as core.String : null,
          text: json_.containsKey('text') ? json_['text'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (path != null) 'path': path!,
        if (text != null) 'text': text!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : ScriptError
/// - displayvideo:v3 : ScriptError
class $ScriptError {
  /// The column number in the script where the error was thrown.
  core.String? column;

  /// The type of error.
  /// Possible string values are:
  /// - "ERROR_CODE_UNSPECIFIED" : The script error is not specified or is
  /// unknown in this version.
  /// - "SYNTAX_ERROR" : The script has a syntax error.
  /// - "DEPRECATED_SYNTAX" : The script uses deprecated syntax.
  /// - "INTERNAL_ERROR" : Internal errors were thrown while processing the
  /// script.
  core.String? errorCode;

  /// The detailed error message.
  core.String? errorMessage;

  /// The line number in the script where the error was thrown.
  core.String? line;

  $ScriptError({
    this.column,
    this.errorCode,
    this.errorMessage,
    this.line,
  });

  $ScriptError.fromJson(core.Map json_)
      : this(
          column: json_.containsKey('column')
              ? json_['column'] as core.String
              : null,
          errorCode: json_.containsKey('errorCode')
              ? json_['errorCode'] as core.String
              : null,
          errorMessage: json_.containsKey('errorMessage')
              ? json_['errorMessage'] as core.String
              : null,
          line: json_.containsKey('line') ? json_['line'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (column != null) 'column': column!,
        if (errorCode != null) 'errorCode': errorCode!,
        if (errorMessage != null) 'errorMessage': errorMessage!,
        if (line != null) 'line': line!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : SdfConfig
/// - displayvideo:v3 : SdfConfig
class $SdfConfig {
  /// An administrator email address to which the SDF processing status reports
  /// will be sent.
  core.String? adminEmail;

  /// The version of SDF being used.
  ///
  /// Required.
  /// Possible string values are:
  /// - "SDF_VERSION_UNSPECIFIED" : SDF version value is not specified or is
  /// unknown in this version.
  /// - "SDF_VERSION_3_1" : SDF version 3.1
  /// - "SDF_VERSION_4" : SDF version 4
  /// - "SDF_VERSION_4_1" : SDF version 4.1
  /// - "SDF_VERSION_4_2" : SDF version 4.2
  /// - "SDF_VERSION_5" : SDF version 5.
  /// - "SDF_VERSION_5_1" : SDF version 5.1
  /// - "SDF_VERSION_5_2" : SDF version 5.2
  /// - "SDF_VERSION_5_3" : SDF version 5.3
  /// - "SDF_VERSION_5_4" : SDF version 5.4
  /// - "SDF_VERSION_5_5" : SDF version 5.5
  /// - "SDF_VERSION_6" : SDF version 6
  /// - "SDF_VERSION_7" : SDF version 7. Read the \[v7 migration
  /// guide\](/display-video/api/structured-data-file/v7-migration-guide) before
  /// migrating to this version.
  core.String? version;

  $SdfConfig({
    this.adminEmail,
    this.version,
  });

  $SdfConfig.fromJson(core.Map json_)
      : this(
          adminEmail: json_.containsKey('adminEmail')
              ? json_['adminEmail'] as core.String
              : null,
          version: json_.containsKey('version')
              ? json_['version'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (adminEmail != null) 'adminEmail': adminEmail!,
        if (version != null) 'version': version!,
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

  $SecretVersionRequest.fromJson(core.Map json_)
      : this(
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
      };
}

/// Used by:
///
/// - container:v1 : SecurityPostureConfig
/// - gkehub:v1 : SecurityPostureConfig
class $SecurityPostureConfig {
  /// Sets which mode to use for Security Posture features.
  /// Possible string values are:
  /// - "MODE_UNSPECIFIED" : Default value not specified.
  /// - "DISABLED" : Disables Security Posture features on the cluster.
  /// - "BASIC" : Applies Security Posture features on the cluster.
  core.String? mode;

  /// Sets which mode to use for vulnerability scanning.
  /// Possible string values are:
  /// - "VULNERABILITY_MODE_UNSPECIFIED" : Default value not specified.
  /// - "VULNERABILITY_DISABLED" : Disables vulnerability scanning on the
  /// cluster.
  /// - "VULNERABILITY_BASIC" : Applies basic vulnerability scanning on the
  /// cluster.
  /// - "VULNERABILITY_ENTERPRISE" : Applies the Security Posture's
  /// vulnerability on cluster Enterprise level features.
  core.String? vulnerabilityMode;

  $SecurityPostureConfig({
    this.mode,
    this.vulnerabilityMode,
  });

  $SecurityPostureConfig.fromJson(core.Map json_)
      : this(
          mode: json_.containsKey('mode') ? json_['mode'] as core.String : null,
          vulnerabilityMode: json_.containsKey('vulnerabilityMode')
              ? json_['vulnerabilityMode'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (mode != null) 'mode': mode!,
        if (vulnerabilityMode != null) 'vulnerabilityMode': vulnerabilityMode!,
      };
}

/// Used by:
///
/// - trafficdirector:v2 : SemanticVersion
/// - trafficdirector:v3 : SemanticVersion
class $SemanticVersion {
  core.int? majorNumber;
  core.int? minorNumber;
  core.int? patch;

  $SemanticVersion({
    this.majorNumber,
    this.minorNumber,
    this.patch,
  });

  $SemanticVersion.fromJson(core.Map json_)
      : this(
          majorNumber: json_.containsKey('majorNumber')
              ? json_['majorNumber'] as core.int
              : null,
          minorNumber: json_.containsKey('minorNumber')
              ? json_['minorNumber'] as core.int
              : null,
          patch: json_.containsKey('patch') ? json_['patch'] as core.int : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (majorNumber != null) 'majorNumber': majorNumber!,
        if (minorNumber != null) 'minorNumber': minorNumber!,
        if (patch != null) 'patch': patch!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : SensitiveCategoryAssignedTargetingOptionDetails
/// - displayvideo:v3 : SensitiveCategoryAssignedTargetingOptionDetails
class $SensitiveCategoryAssignedTargetingOptionDetails {
  /// An enum for the DV360 Sensitive category content classified to be
  /// EXCLUDED.
  ///
  /// Required.
  /// Possible string values are:
  /// - "SENSITIVE_CATEGORY_UNSPECIFIED" : This enum is only a placeholder and
  /// doesn't specify a DV360 sensitive category.
  /// - "SENSITIVE_CATEGORY_ADULT" : Adult or pornographic text, image, or video
  /// content.
  /// - "SENSITIVE_CATEGORY_DEROGATORY" : Content that may be construed as
  /// biased against individuals, groups, or organizations based on criteria
  /// such as race, religion, disability, sex, age, veteran status, sexual
  /// orientation, gender identity, or political affiliation. May also indicate
  /// discussion of such content, for instance, in an academic or journalistic
  /// context.
  /// - "SENSITIVE_CATEGORY_DOWNLOADS_SHARING" : Content related to audio,
  /// video, or software downloads.
  /// - "SENSITIVE_CATEGORY_WEAPONS" : Contains content related to personal
  /// weapons, including knives, guns, small firearms, and ammunition. Selecting
  /// either "weapons" or "sensitive social issues" will result in selecting
  /// both.
  /// - "SENSITIVE_CATEGORY_GAMBLING" : Contains content related to betting or
  /// wagering in a real-world or online setting.
  /// - "SENSITIVE_CATEGORY_VIOLENCE" : Content which may be considered
  /// graphically violent, gory, gruesome, or shocking, such as street fighting
  /// videos, accident photos, descriptions of torture, etc.
  /// - "SENSITIVE_CATEGORY_SUGGESTIVE" : Adult content, as well as suggestive
  /// content that's not explicitly pornographic. This category includes all
  /// pages categorized as adult.
  /// - "SENSITIVE_CATEGORY_PROFANITY" : Prominent use of words considered
  /// indecent, such as curse words and sexual slang. Pages with only very
  /// occasional usage, such as news sites that might include such words in a
  /// quotation, are not included.
  /// - "SENSITIVE_CATEGORY_ALCOHOL" : Contains content related to alcoholic
  /// beverages, alcohol brands, recipes, etc.
  /// - "SENSITIVE_CATEGORY_DRUGS" : Contains content related to the
  /// recreational use of legal or illegal drugs, as well as to drug
  /// paraphernalia or cultivation.
  /// - "SENSITIVE_CATEGORY_TOBACCO" : Contains content related to tobacco and
  /// tobacco accessories, including lighters, humidors, ashtrays, etc.
  /// - "SENSITIVE_CATEGORY_POLITICS" : Political news and media, including
  /// discussions of social, governmental, and public policy.
  /// - "SENSITIVE_CATEGORY_RELIGION" : Content related to religious thought or
  /// beliefs.
  /// - "SENSITIVE_CATEGORY_TRAGEDY" : Content related to death, disasters,
  /// accidents, war, etc.
  /// - "SENSITIVE_CATEGORY_TRANSPORTATION_ACCIDENTS" : Content related to motor
  /// vehicle, aviation or other transportation accidents.
  /// - "SENSITIVE_CATEGORY_SENSITIVE_SOCIAL_ISSUES" : Issues that evoke strong,
  /// opposing views and spark debate. These include issues that are
  /// controversial in most countries and markets (such as abortion), as well as
  /// those that are controversial in specific countries and markets (such as
  /// immigration reform in the United States).
  /// - "SENSITIVE_CATEGORY_SHOCKING" : Content which may be considered shocking
  /// or disturbing, such as violent news stories, stunts, or toilet humor.
  /// - "SENSITIVE_CATEGORY_EMBEDDED_VIDEO" : YouTube videos embedded on
  /// websites outside of YouTube.com. Only applicable to YouTube and Partners
  /// line items.
  /// - "SENSITIVE_CATEGORY_LIVE_STREAMING_VIDEO" : Video of live events
  /// streamed over the internet. Only applicable to YouTube and Partners line
  /// items.
  core.String? excludedSensitiveCategory;

  $SensitiveCategoryAssignedTargetingOptionDetails({
    this.excludedSensitiveCategory,
  });

  $SensitiveCategoryAssignedTargetingOptionDetails.fromJson(core.Map json_)
      : this(
          excludedSensitiveCategory:
              json_.containsKey('excludedSensitiveCategory')
                  ? json_['excludedSensitiveCategory'] as core.String
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (excludedSensitiveCategory != null)
          'excludedSensitiveCategory': excludedSensitiveCategory!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : SensitiveCategoryTargetingOptionDetails
/// - displayvideo:v3 : SensitiveCategoryTargetingOptionDetails
class $SensitiveCategoryTargetingOptionDetails {
  /// An enum for the DV360 Sensitive category content classifier.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "SENSITIVE_CATEGORY_UNSPECIFIED" : This enum is only a placeholder and
  /// doesn't specify a DV360 sensitive category.
  /// - "SENSITIVE_CATEGORY_ADULT" : Adult or pornographic text, image, or video
  /// content.
  /// - "SENSITIVE_CATEGORY_DEROGATORY" : Content that may be construed as
  /// biased against individuals, groups, or organizations based on criteria
  /// such as race, religion, disability, sex, age, veteran status, sexual
  /// orientation, gender identity, or political affiliation. May also indicate
  /// discussion of such content, for instance, in an academic or journalistic
  /// context.
  /// - "SENSITIVE_CATEGORY_DOWNLOADS_SHARING" : Content related to audio,
  /// video, or software downloads.
  /// - "SENSITIVE_CATEGORY_WEAPONS" : Contains content related to personal
  /// weapons, including knives, guns, small firearms, and ammunition. Selecting
  /// either "weapons" or "sensitive social issues" will result in selecting
  /// both.
  /// - "SENSITIVE_CATEGORY_GAMBLING" : Contains content related to betting or
  /// wagering in a real-world or online setting.
  /// - "SENSITIVE_CATEGORY_VIOLENCE" : Content which may be considered
  /// graphically violent, gory, gruesome, or shocking, such as street fighting
  /// videos, accident photos, descriptions of torture, etc.
  /// - "SENSITIVE_CATEGORY_SUGGESTIVE" : Adult content, as well as suggestive
  /// content that's not explicitly pornographic. This category includes all
  /// pages categorized as adult.
  /// - "SENSITIVE_CATEGORY_PROFANITY" : Prominent use of words considered
  /// indecent, such as curse words and sexual slang. Pages with only very
  /// occasional usage, such as news sites that might include such words in a
  /// quotation, are not included.
  /// - "SENSITIVE_CATEGORY_ALCOHOL" : Contains content related to alcoholic
  /// beverages, alcohol brands, recipes, etc.
  /// - "SENSITIVE_CATEGORY_DRUGS" : Contains content related to the
  /// recreational use of legal or illegal drugs, as well as to drug
  /// paraphernalia or cultivation.
  /// - "SENSITIVE_CATEGORY_TOBACCO" : Contains content related to tobacco and
  /// tobacco accessories, including lighters, humidors, ashtrays, etc.
  /// - "SENSITIVE_CATEGORY_POLITICS" : Political news and media, including
  /// discussions of social, governmental, and public policy.
  /// - "SENSITIVE_CATEGORY_RELIGION" : Content related to religious thought or
  /// beliefs.
  /// - "SENSITIVE_CATEGORY_TRAGEDY" : Content related to death, disasters,
  /// accidents, war, etc.
  /// - "SENSITIVE_CATEGORY_TRANSPORTATION_ACCIDENTS" : Content related to motor
  /// vehicle, aviation or other transportation accidents.
  /// - "SENSITIVE_CATEGORY_SENSITIVE_SOCIAL_ISSUES" : Issues that evoke strong,
  /// opposing views and spark debate. These include issues that are
  /// controversial in most countries and markets (such as abortion), as well as
  /// those that are controversial in specific countries and markets (such as
  /// immigration reform in the United States).
  /// - "SENSITIVE_CATEGORY_SHOCKING" : Content which may be considered shocking
  /// or disturbing, such as violent news stories, stunts, or toilet humor.
  /// - "SENSITIVE_CATEGORY_EMBEDDED_VIDEO" : YouTube videos embedded on
  /// websites outside of YouTube.com. Only applicable to YouTube and Partners
  /// line items.
  /// - "SENSITIVE_CATEGORY_LIVE_STREAMING_VIDEO" : Video of live events
  /// streamed over the internet. Only applicable to YouTube and Partners line
  /// items.
  core.String? sensitiveCategory;

  $SensitiveCategoryTargetingOptionDetails({
    this.sensitiveCategory,
  });

  $SensitiveCategoryTargetingOptionDetails.fromJson(core.Map json_)
      : this(
          sensitiveCategory: json_.containsKey('sensitiveCategory')
              ? json_['sensitiveCategory'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (sensitiveCategory != null) 'sensitiveCategory': sensitiveCategory!,
      };
}

/// Used by:
///
/// - language:v1 : Sentiment
/// - language:v2 : Sentiment
class $Sentiment {
  /// A non-negative number in the \[0, +inf) range, which represents the
  /// absolute magnitude of sentiment regardless of score (positive or
  /// negative).
  core.double? magnitude;

  /// Sentiment score between -1.0 (negative sentiment) and 1.0 (positive
  /// sentiment).
  core.double? score;

  $Sentiment({
    this.magnitude,
    this.score,
  });

  $Sentiment.fromJson(core.Map json_)
      : this(
          magnitude: json_.containsKey('magnitude')
              ? (json_['magnitude'] as core.num).toDouble()
              : null,
          score: json_.containsKey('score')
              ? (json_['score'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (magnitude != null) 'magnitude': magnitude!,
        if (score != null) 'score': score!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : SessionPositionAssignedTargetingOptionDetails
/// - displayvideo:v3 : SessionPositionAssignedTargetingOptionDetails
class $SessionPositionAssignedTargetingOptionDetails {
  /// The position where the ad will show in a session.
  /// Possible string values are:
  /// - "SESSION_POSITION_UNSPECIFIED" : This is a placeholder, does not
  /// indicate any positions.
  /// - "SESSION_POSITION_FIRST_IMPRESSION" : The first impression of the
  /// session.
  core.String? sessionPosition;

  $SessionPositionAssignedTargetingOptionDetails({
    this.sessionPosition,
  });

  $SessionPositionAssignedTargetingOptionDetails.fromJson(core.Map json_)
      : this(
          sessionPosition: json_.containsKey('sessionPosition')
              ? json_['sessionPosition'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (sessionPosition != null) 'sessionPosition': sessionPosition!,
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

  set labelFingerprintAsBytes(core.List<core.int> bytes_) {
    labelFingerprint =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// The labels to set for this resource.
  core.Map<core.String, core.String>? labels;

  $SetLabelsRequest({
    this.labelFingerprint,
    this.labels,
  });

  $SetLabelsRequest.fromJson(core.Map json_)
      : this(
          labelFingerprint: json_.containsKey('labelFingerprint')
              ? json_['labelFingerprint'] as core.String
              : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
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

  $SetupTag.fromJson(core.Map json_)
      : this(
          stopOnSetupFailure: json_.containsKey('stopOnSetupFailure')
              ? json_['stopOnSetupFailure'] as core.bool
              : null,
          tagName: json_.containsKey('tagName')
              ? json_['tagName'] as core.String
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
/// - containeranalysis:v1 : GrafeasV1SlsaProvenanceZeroTwoSlsaBuilder
/// - containeranalysis:v1 : SlsaBuilder
/// - ondemandscanning:v1 : BuilderConfig
/// - ondemandscanning:v1 : GrafeasV1SlsaProvenanceZeroTwoSlsaBuilder
/// - ondemandscanning:v1 : SlsaBuilder
/// - youtube:v3 : AbuseType
class $Shared00 {
  core.String? id;

  $Shared00({
    this.id,
  });

  $Shared00.fromJson(core.Map json_)
      : this(
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
      };
}

/// Used by:
///
/// - androidpublisher:v3 : ArchiveSubscriptionRequest
/// - cloudchannel:v1 : GoogleCloudChannelV1RepricingConfigChannelPartnerGranularity
/// - domains:v1 : ExportRegistrationRequest
/// - driveactivity:v2 : File
class $Shared01 {
  $Shared01();

  $Shared01.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map json_);

  core.Map<core.String, core.dynamic> toJson() => {};
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

  $Shared02.fromJson(core.Map json_)
      : this(
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
      };
}

/// Used by:
///
/// - vmwareengine:v1 : Hcx
/// - vmwareengine:v1 : Nsx
/// - vmwareengine:v1 : Vcenter
class $Shared03 {
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

  $Shared03({
    this.fqdn,
    this.internalIp,
    this.state,
    this.version,
  });

  $Shared03.fromJson(core.Map json_)
      : this(
          fqdn: json_.containsKey('fqdn') ? json_['fqdn'] as core.String : null,
          internalIp: json_.containsKey('internalIp')
              ? json_['internalIp'] as core.String
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          version: json_.containsKey('version')
              ? json_['version'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fqdn != null) 'fqdn': fqdn!,
        if (internalIp != null) 'internalIp': internalIp!,
        if (state != null) 'state': state!,
        if (version != null) 'version': version!,
      };
}

/// Used by:
///
/// - aiplatform:v1 : GoogleCloudAiplatformV1DiskSpec
/// - ml:v1 : GoogleCloudMlV1__DiskConfig
class $Shared04 {
  /// Size in GB of the boot disk (default is 100GB).
  core.int? bootDiskSizeGb;

  /// Type of the boot disk (default is "pd-ssd").
  ///
  /// Valid values: "pd-ssd" (Persistent Disk Solid State Drive) or
  /// "pd-standard" (Persistent Disk Hard Disk Drive).
  core.String? bootDiskType;

  $Shared04({
    this.bootDiskSizeGb,
    this.bootDiskType,
  });

  $Shared04.fromJson(core.Map json_)
      : this(
          bootDiskSizeGb: json_.containsKey('bootDiskSizeGb')
              ? json_['bootDiskSizeGb'] as core.int
              : null,
          bootDiskType: json_.containsKey('bootDiskType')
              ? json_['bootDiskType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bootDiskSizeGb != null) 'bootDiskSizeGb': bootDiskSizeGb!,
        if (bootDiskType != null) 'bootDiskType': bootDiskType!,
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

  $Shared05.fromJson(core.Map json_)
      : this(
          email:
              json_.containsKey('email') ? json_['email'] as core.String : null,
          scopes: json_.containsKey('scopes')
              ? (json_['scopes'] as core.List)
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
/// - contactcenterinsights:v1 : GoogleCloudContactcenterinsightsV1ExportIssueModelRequestGcsDestination
/// - contactcenterinsights:v1 : GoogleCloudContactcenterinsightsV1ImportIssueModelRequestGcsSource
class $Shared06 {
  /// Format: `gs:///`
  ///
  /// Required.
  core.String? objectUri;

  $Shared06({
    this.objectUri,
  });

  $Shared06.fromJson(core.Map json_)
      : this(
          objectUri: json_.containsKey('objectUri')
              ? json_['objectUri'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (objectUri != null) 'objectUri': objectUri!,
      };
}

/// Used by:
///
/// - content:v2.1 : Price
/// - content:v2.1 : PriceAmount
class $Shared07 {
  /// The currency of the price.
  core.String? currency;

  /// The price represented as a number.
  core.String? value;

  $Shared07({
    this.currency,
    this.value,
  });

  $Shared07.fromJson(core.Map json_)
      : this(
          currency: json_.containsKey('currency')
              ? json_['currency'] as core.String
              : null,
          value:
              json_.containsKey('value') ? json_['value'] as core.String : null,
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
class $Shared08 {
  /// A non-negative number in the \[0, +inf) range, which represents the
  /// absolute magnitude of sentiment, regardless of score (positive or
  /// negative).
  core.double? magnitude;

  /// Sentiment score between -1.0 (negative sentiment) and 1.0 (positive
  /// sentiment).
  core.double? score;

  $Shared08({
    this.magnitude,
    this.score,
  });

  $Shared08.fromJson(core.Map json_)
      : this(
          magnitude: json_.containsKey('magnitude')
              ? (json_['magnitude'] as core.num).toDouble()
              : null,
          score: json_.containsKey('score')
              ? (json_['score'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (magnitude != null) 'magnitude': magnitude!,
        if (score != null) 'score': score!,
      };
}

/// Used by:
///
/// - gkehub:v1 : ConfigManagementPolicyControllerMonitoring
/// - gkehub:v1 : PolicyControllerMonitoringConfig
class $Shared09 {
  /// Specifies the list of backends Policy Controller will export to.
  ///
  /// An empty list would effectively disable metrics export.
  core.List<core.String>? backends;

  $Shared09({
    this.backends,
  });

  $Shared09.fromJson(core.Map json_)
      : this(
          backends: json_.containsKey('backends')
              ? (json_['backends'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (backends != null) 'backends': backends!,
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

  $Shared10.fromJson(core.Map json_)
      : this(
          osShortName: json_.containsKey('osShortName')
              ? json_['osShortName'] as core.String
              : null,
          osVersion: json_.containsKey('osVersion')
              ? json_['osVersion'] as core.String
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

  $Shared11.fromJson(core.Map json_)
      : this(
          value:
              json_.containsKey('value') ? json_['value'] as core.String : null,
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

  $ShieldedInstanceConfig.fromJson(core.Map json_)
      : this(
          enableIntegrityMonitoring:
              json_.containsKey('enableIntegrityMonitoring')
                  ? json_['enableIntegrityMonitoring'] as core.bool
                  : null,
          enableSecureBoot: json_.containsKey('enableSecureBoot')
              ? json_['enableSecureBoot'] as core.bool
              : null,
          enableVtpm: json_.containsKey('enableVtpm')
              ? json_['enableVtpm'] as core.bool
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

  set signatureAsBytes(core.List<core.int> bytes_) {
    signature =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  $Signature({
    this.publicKeyId,
    this.signature,
  });

  $Signature.fromJson(core.Map json_)
      : this(
          publicKeyId: json_.containsKey('publicKeyId')
              ? json_['publicKeyId'] as core.String
              : null,
          signature: json_.containsKey('signature')
              ? json_['signature'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (publicKeyId != null) 'publicKeyId': publicKeyId!,
        if (signature != null) 'signature': signature!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : Site
/// - displayvideo:v3 : Site
class $Site {
  /// The resource name of the site.
  ///
  /// Output only.
  core.String? name;

  /// The app ID or URL of the site.
  ///
  /// Must be UTF-8 encoded with a maximum length of 240 bytes.
  ///
  /// Required.
  core.String? urlOrAppId;

  $Site({
    this.name,
    this.urlOrAppId,
  });

  $Site.fromJson(core.Map json_)
      : this(
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          urlOrAppId: json_.containsKey('urlOrAppId')
              ? json_['urlOrAppId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (urlOrAppId != null) 'urlOrAppId': urlOrAppId!,
      };
}

/// Used by:
///
/// - dfareporting:v3.5 : Size
/// - dfareporting:v4 : Size
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

  $Size.fromJson(core.Map json_)
      : this(
          height:
              json_.containsKey('height') ? json_['height'] as core.int : null,
          iab: json_.containsKey('iab') ? json_['iab'] as core.bool : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          width: json_.containsKey('width') ? json_['width'] as core.int : null,
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

  $SlsaRecipe.fromJson(core.Map json_)
      : this(
          arguments: json_.containsKey('arguments')
              ? json_['arguments'] as core.Map<core.String, core.dynamic>
              : null,
          definedInMaterial: json_.containsKey('definedInMaterial')
              ? json_['definedInMaterial'] as core.String
              : null,
          entryPoint: json_.containsKey('entryPoint')
              ? json_['entryPoint'] as core.String
              : null,
          environment: json_.containsKey('environment')
              ? json_['environment'] as core.Map<core.String, core.dynamic>
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
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
/// - translate:v3 : GcsInputSource
/// - translate:v3 : GcsSource
class $Source {
  /// Source data URI.
  ///
  /// For example, `gs://my_bucket/my_object`.
  ///
  /// Required.
  core.String? inputUri;

  $Source({
    this.inputUri,
  });

  $Source.fromJson(core.Map json_)
      : this(
          inputUri: json_.containsKey('inputUri')
              ? json_['inputUri'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (inputUri != null) 'inputUri': inputUri!,
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

  $SourceContext.fromJson(core.Map json_)
      : this(
          fileName: json_.containsKey('fileName')
              ? json_['fileName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fileName != null) 'fileName': fileName!,
      };
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

  $StateError({
    this.details,
    this.type,
  });

  $StateError.fromJson(core.Map json_)
      : this(
          details: json_.containsKey('details')
              ? json_['details'] as core.String
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (details != null) 'details': details!,
        if (type != null) 'type': type!,
      };
}

/// Used by:
///
/// - trafficdirector:v2 : StaticCluster
/// - trafficdirector:v3 : StaticCluster
class $StaticCluster {
  /// The cluster config.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? cluster;

  /// The timestamp when the Cluster was last updated.
  core.String? lastUpdated;

  $StaticCluster({
    this.cluster,
    this.lastUpdated,
  });

  $StaticCluster.fromJson(core.Map json_)
      : this(
          cluster: json_.containsKey('cluster')
              ? json_['cluster'] as core.Map<core.String, core.dynamic>
              : null,
          lastUpdated: json_.containsKey('lastUpdated')
              ? json_['lastUpdated'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cluster != null) 'cluster': cluster!,
        if (lastUpdated != null) 'lastUpdated': lastUpdated!,
      };
}

/// Used by:
///
/// - trafficdirector:v2 : StaticListener
/// - trafficdirector:v3 : StaticListener
class $StaticListener {
  /// The timestamp when the Listener was last successfully updated.
  core.String? lastUpdated;

  /// The listener config.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? listener;

  $StaticListener({
    this.lastUpdated,
    this.listener,
  });

  $StaticListener.fromJson(core.Map json_)
      : this(
          lastUpdated: json_.containsKey('lastUpdated')
              ? json_['lastUpdated'] as core.String
              : null,
          listener: json_.containsKey('listener')
              ? json_['listener'] as core.Map<core.String, core.dynamic>
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (lastUpdated != null) 'lastUpdated': lastUpdated!,
        if (listener != null) 'listener': listener!,
      };
}

/// Used by:
///
/// - trafficdirector:v2 : StaticRouteConfig
/// - trafficdirector:v3 : StaticRouteConfig
class $StaticRouteConfig {
  /// The timestamp when the Route was last updated.
  core.String? lastUpdated;

  /// The route config.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? routeConfig;

  $StaticRouteConfig({
    this.lastUpdated,
    this.routeConfig,
  });

  $StaticRouteConfig.fromJson(core.Map json_)
      : this(
          lastUpdated: json_.containsKey('lastUpdated')
              ? json_['lastUpdated'] as core.String
              : null,
          routeConfig: json_.containsKey('routeConfig')
              ? json_['routeConfig'] as core.Map<core.String, core.dynamic>
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (lastUpdated != null) 'lastUpdated': lastUpdated!,
        if (routeConfig != null) 'routeConfig': routeConfig!,
      };
}

/// Used by:
///
/// - accesscontextmanager:v1 : Status
/// - admin:directory_v1 : Status
/// - aiplatform:v1 : GoogleRpcStatus
/// - alloydb:v1 : Status
/// - analyticshub:v1 : Status
/// - androiddeviceprovisioning:v1 : Status
/// - androidmanagement:v1 : Status
/// - apigateway:v1 : ApigatewayStatus
/// - apigee:v1 : GoogleRpcStatus
/// - apigeeregistry:v1 : Status
/// - apikeys:v2 : Status
/// - appengine:v1 : Status
/// - apphub:v1 : Status
/// - artifactregistry:v1 : Status
/// - assuredworkloads:v1 : GoogleRpcStatus
/// - backupdr:v1 : Status
/// - baremetalsolution:v2 : Status
/// - batch:v1 : Status
/// - beyondcorp:v1 : GoogleRpcStatus
/// - bigquerydatatransfer:v1 : Status
/// - bigqueryreservation:v1 : Status
/// - bigtableadmin:v2 : Status
/// - blockchainnodeengine:v1 : Status
/// - certificatemanager:v1 : Status
/// - chromemanagement:v1 : GoogleRpcStatus
/// - cloudasset:v1 : Status
/// - cloudbuild:v1 : Status
/// - cloudbuild:v2 : Status
/// - cloudchannel:v1 : GoogleRpcStatus
/// - clouddeploy:v1 : Status
/// - cloudfunctions:v1 : Status
/// - cloudfunctions:v2 : Status
/// - cloudidentity:v1 : Status
/// - cloudresourcemanager:v1 : Status
/// - cloudresourcemanager:v2 : Status
/// - cloudresourcemanager:v3 : Status
/// - cloudscheduler:v1 : Status
/// - cloudsearch:v1 : Status
/// - cloudshell:v1 : Status
/// - cloudtasks:v2 : Status
/// - cloudtrace:v2 : Status
/// - composer:v1 : Status
/// - compute:v1 : Status
/// - connectors:v1 : Status
/// - contactcenterinsights:v1 : GoogleRpcStatus
/// - container:v1 : Status
/// - containeranalysis:v1 : Status
/// - contentwarehouse:v1 : GoogleRpcStatus
/// - datacatalog:v1 : Status
/// - datafusion:v1 : Status
/// - datalineage:v1 : GoogleRpcStatus
/// - datamigration:v1 : Status
/// - datapipelines:v1 : GoogleRpcStatus
/// - dataplex:v1 : GoogleRpcStatus
/// - dataproc:v1 : Status
/// - datastore:v1 : Status
/// - datastream:v1 : Status
/// - deploymentmanager:v2 : Status
/// - dialogflow:v2 : GoogleRpcStatus
/// - dialogflow:v3 : GoogleRpcStatus
/// - displayvideo:v2 : Status
/// - displayvideo:v3 : Status
/// - dlp:v2 : GoogleRpcStatus
/// - documentai:v1 : GoogleRpcStatus
/// - domains:v1 : Status
/// - eventarc:v1 : GoogleRpcStatus
/// - file:v1 : Status
/// - firebaseappdistribution:v1 : GoogleRpcStatus
/// - firebasehosting:v1 : Status
/// - firebaseml:v1 : Status
/// - firestore:v1 : Status
/// - gkebackup:v1 : GoogleRpcStatus
/// - gkehub:v1 : GoogleRpcStatus
/// - gkeonprem:v1 : Status
/// - healthcare:v1 : Status
/// - iam:v1 : Status
/// - iam:v2 : GoogleRpcStatus
/// - ids:v1 : Status
/// - jobs:v4 : Status
/// - logging:v2 : Status
/// - looker:v1 : Status
/// - managedidentities:v1 : Status
/// - memcache:v1 : Status
/// - metastore:v1 : Status
/// - migrationcenter:v1 : Status
/// - ml:v1 : GoogleRpc__Status
/// - monitoring:v3 : Status
/// - networkconnectivity:v1 : GoogleRpcStatus
/// - networkmanagement:v1 : Status
/// - networksecurity:v1 : Status
/// - networkservices:v1 : Status
/// - notebooks:v1 : Status
/// - notebooks:v2 : Status
/// - ondemandscanning:v1 : Status
/// - osconfig:v1 : Status
/// - people:v1 : Status
/// - photoslibrary:v1 : Status
/// - policysimulator:v1 : GoogleRpcStatus
/// - policytroubleshooter:v1 : GoogleRpcStatus
/// - privateca:v1 : Status
/// - pubsublite:v1 : Status
/// - rapidmigrationassessment:v1 : Status
/// - recaptchaenterprise:v1 : GoogleRpcStatus
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
/// - speech:v2 : Status
/// - storagetransfer:v1 : Status
/// - streetviewpublish:v1 : Status
/// - texttospeech:v1 : Status
/// - tpu:v1 : Status
/// - tpu:v2 : Status
/// - transcoder:v1 : Status
/// - translate:v3 : Status
/// - vault:v1 : Status
/// - videointelligence:v1 : GoogleRpc_Status
/// - vision:v1 : Status
/// - vmmigration:v1 : Status
/// - vmwareengine:v1 : Status
/// - vpcaccess:v1 : Status
/// - webrisk:v1 : GoogleRpcStatus
/// - workflows:v1 : Status
/// - workloadmanager:v1 : Status
/// - workspaceevents:v1 : Status
/// - workstations:v1 : Status
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

  $Status.fromJson(core.Map json_)
      : this(
          code: json_.containsKey('code') ? json_['code'] as core.int : null,
          details: json_.containsKey('details')
              ? (json_['details'] as core.List)
                  .map((value) => value as core.Map<core.String, core.dynamic>)
                  .toList()
              : null,
          message: json_.containsKey('message')
              ? json_['message'] as core.String
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
/// - cloudasset:v1 : GoogleCloudAssetV1StringValues
/// - orgpolicy:v2 : GoogleCloudOrgpolicyV2PolicySpecPolicyRuleStringValues
/// - policysimulator:v1 : GoogleCloudOrgpolicyV2PolicySpecPolicyRuleStringValues
class $StringValues {
  /// List of values allowed at this resource.
  core.List<core.String>? allowedValues;

  /// List of values denied at this resource.
  core.List<core.String>? deniedValues;

  $StringValues({
    this.allowedValues,
    this.deniedValues,
  });

  $StringValues.fromJson(core.Map json_)
      : this(
          allowedValues: json_.containsKey('allowedValues')
              ? (json_['allowedValues'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          deniedValues: json_.containsKey('deniedValues')
              ? (json_['deniedValues'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowedValues != null) 'allowedValues': allowedValues!,
        if (deniedValues != null) 'deniedValues': deniedValues!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : SubExchangeAssignedTargetingOptionDetails
/// - displayvideo:v3 : SubExchangeAssignedTargetingOptionDetails
class $SubExchangeAssignedTargetingOptionDetails {
  /// The targeting_option_id of a TargetingOption of type
  /// `TARGETING_TYPE_SUB_EXCHANGE`.
  ///
  /// Required.
  core.String? targetingOptionId;

  $SubExchangeAssignedTargetingOptionDetails({
    this.targetingOptionId,
  });

  $SubExchangeAssignedTargetingOptionDetails.fromJson(core.Map json_)
      : this(
          targetingOptionId: json_.containsKey('targetingOptionId')
              ? json_['targetingOptionId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (targetingOptionId != null) 'targetingOptionId': targetingOptionId!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : SubExchangeTargetingOptionDetails
/// - displayvideo:v3 : SubExchangeTargetingOptionDetails
class $SubExchangeTargetingOptionDetails {
  /// The display name of the sub-exchange.
  ///
  /// Output only.
  core.String? displayName;

  $SubExchangeTargetingOptionDetails({
    this.displayName,
  });

  $SubExchangeTargetingOptionDetails.fromJson(core.Map json_)
      : this(
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
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

  $Subject.fromJson(core.Map json_)
      : this(
          digest: json_.containsKey('digest')
              ? (json_['digest'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (digest != null) 'digest': digest!,
        if (name != null) 'name': name!,
      };
}

/// Used by:
///
/// - tpu:v1 : Symptom
/// - tpu:v2 : Symptom
class $Symptom {
  /// Timestamp when the Symptom is created.
  core.String? createTime;

  /// Detailed information of the current Symptom.
  core.String? details;

  /// Type of the Symptom.
  /// Possible string values are:
  /// - "SYMPTOM_TYPE_UNSPECIFIED" : Unspecified symptom.
  /// - "LOW_MEMORY" : TPU VM memory is low.
  /// - "OUT_OF_MEMORY" : TPU runtime is out of memory.
  /// - "EXECUTE_TIMED_OUT" : TPU runtime execution has timed out.
  /// - "MESH_BUILD_FAIL" : TPU runtime fails to construct a mesh that
  /// recognizes each TPU device's neighbors.
  /// - "HBM_OUT_OF_MEMORY" : TPU HBM is out of memory.
  /// - "PROJECT_ABUSE" : Abusive behaviors have been identified on the current
  /// project.
  core.String? symptomType;

  /// A string used to uniquely distinguish a worker within a TPU node.
  core.String? workerId;

  $Symptom({
    this.createTime,
    this.details,
    this.symptomType,
    this.workerId,
  });

  $Symptom.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          details: json_.containsKey('details')
              ? json_['details'] as core.String
              : null,
          symptomType: json_.containsKey('symptomType')
              ? json_['symptomType'] as core.String
              : null,
          workerId: json_.containsKey('workerId')
              ? json_['workerId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (details != null) 'details': details!,
        if (symptomType != null) 'symptomType': symptomType!,
        if (workerId != null) 'workerId': workerId!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : TargetFrequency
/// - displayvideo:v3 : TargetFrequency
class $TargetFrequency {
  /// The target number of times, on average, the ads will be shown to the same
  /// person in the timespan dictated by time_unit and time_unit_count.
  core.String? targetCount;

  /// The unit of time in which the target frequency will be applied.
  ///
  /// The following time unit is applicable: * `TIME_UNIT_WEEKS`
  /// Possible string values are:
  /// - "TIME_UNIT_UNSPECIFIED" : Time unit value is not specified or is unknown
  /// in this version.
  /// - "TIME_UNIT_LIFETIME" : The frequency cap will be applied to the whole
  /// life time of the line item.
  /// - "TIME_UNIT_MONTHS" : The frequency cap will be applied to a number of
  /// months.
  /// - "TIME_UNIT_WEEKS" : The frequency cap will be applied to a number of
  /// weeks.
  /// - "TIME_UNIT_DAYS" : The frequency cap will be applied to a number of
  /// days.
  /// - "TIME_UNIT_HOURS" : The frequency cap will be applied to a number of
  /// hours.
  /// - "TIME_UNIT_MINUTES" : The frequency cap will be applied to a number of
  /// minutes.
  core.String? timeUnit;

  /// The number of time_unit the target frequency will last.
  ///
  /// The following restrictions apply based on the value of time_unit: *
  /// `TIME_UNIT_WEEKS` - must be 1
  core.int? timeUnitCount;

  $TargetFrequency({
    this.targetCount,
    this.timeUnit,
    this.timeUnitCount,
  });

  $TargetFrequency.fromJson(core.Map json_)
      : this(
          targetCount: json_.containsKey('targetCount')
              ? json_['targetCount'] as core.String
              : null,
          timeUnit: json_.containsKey('timeUnit')
              ? json_['timeUnit'] as core.String
              : null,
          timeUnitCount: json_.containsKey('timeUnitCount')
              ? json_['timeUnitCount'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (targetCount != null) 'targetCount': targetCount!,
        if (timeUnit != null) 'timeUnit': timeUnit!,
        if (timeUnitCount != null) 'timeUnitCount': timeUnitCount!,
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

  $TeardownTag.fromJson(core.Map json_)
      : this(
          stopTeardownOnFailure: json_.containsKey('stopTeardownOnFailure')
              ? json_['stopTeardownOnFailure'] as core.bool
              : null,
          tagName: json_.containsKey('tagName')
              ? json_['tagName'] as core.String
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

  $TenantProjectRequest.fromJson(core.Map json_)
      : this(
          tag: json_.containsKey('tag') ? json_['tag'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (tag != null) 'tag': tag!,
      };
}

/// Used by:
///
/// - accesscontextmanager:v1 : TestIamPermissionsRequest
/// - analyticshub:v1 : TestIamPermissionsRequest
/// - apigateway:v1 : ApigatewayTestIamPermissionsRequest
/// - apigee:v1 : GoogleIamV1TestIamPermissionsRequest
/// - apigeeregistry:v1 : TestIamPermissionsRequest
/// - apphub:v1 : TestIamPermissionsRequest
/// - artifactregistry:v1 : TestIamPermissionsRequest
/// - backupdr:v1 : TestIamPermissionsRequest
/// - beyondcorp:v1 : GoogleIamV1TestIamPermissionsRequest
/// - bigquery:v2 : TestIamPermissionsRequest
/// - bigqueryconnection:v1 : TestIamPermissionsRequest
/// - bigquerydatapolicy:v1 : TestIamPermissionsRequest
/// - bigtableadmin:v2 : TestIamPermissionsRequest
/// - binaryauthorization:v1 : TestIamPermissionsRequest
/// - cloudbilling:v1 : TestIamPermissionsRequest
/// - cloudbuild:v2 : TestIamPermissionsRequest
/// - clouddeploy:v1 : TestIamPermissionsRequest
/// - cloudfunctions:v1 : TestIamPermissionsRequest
/// - cloudfunctions:v2 : TestIamPermissionsRequest
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
/// - dns:v1 : GoogleIamV1TestIamPermissionsRequest
/// - domains:v1 : TestIamPermissionsRequest
/// - eventarc:v1 : TestIamPermissionsRequest
/// - gkebackup:v1 : TestIamPermissionsRequest
/// - gkehub:v1 : TestIamPermissionsRequest
/// - gkeonprem:v1 : TestIamPermissionsRequest
/// - healthcare:v1 : TestIamPermissionsRequest
/// - iam:v1 : TestIamPermissionsRequest
/// - iap:v1 : TestIamPermissionsRequest
/// - identitytoolkit:v2 : GoogleIamV1TestIamPermissionsRequest
/// - ids:v1 : TestIamPermissionsRequest
/// - looker:v1 : TestIamPermissionsRequest
/// - managedidentities:v1 : TestIamPermissionsRequest
/// - ml:v1 : GoogleIamV1__TestIamPermissionsRequest
/// - networkconnectivity:v1 : TestIamPermissionsRequest
/// - networkmanagement:v1 : TestIamPermissionsRequest
/// - networksecurity:v1 : GoogleIamV1TestIamPermissionsRequest
/// - networkservices:v1 : TestIamPermissionsRequest
/// - notebooks:v1 : TestIamPermissionsRequest
/// - notebooks:v2 : TestIamPermissionsRequest
/// - privateca:v1 : TestIamPermissionsRequest
/// - pubsub:v1 : TestIamPermissionsRequest
/// - run:v1 : TestIamPermissionsRequest
/// - run:v2 : GoogleIamV1TestIamPermissionsRequest
/// - secretmanager:v1 : TestIamPermissionsRequest
/// - securitycenter:v1 : TestIamPermissionsRequest
/// - servicedirectory:v1 : TestIamPermissionsRequest
/// - servicemanagement:v1 : TestIamPermissionsRequest
/// - sourcerepo:v1 : TestIamPermissionsRequest
/// - vmwareengine:v1 : TestIamPermissionsRequest
/// - workstations:v1 : TestIamPermissionsRequest
class $TestIamPermissionsRequest00 {
  /// The set of permissions to check for the `resource`.
  ///
  /// Permissions with wildcards (such as `*` or `storage.*`) are not allowed.
  /// For more information see
  /// [IAM Overview](https://cloud.google.com/iam/docs/overview#permissions).
  core.List<core.String>? permissions;

  $TestIamPermissionsRequest00({
    this.permissions,
  });

  $TestIamPermissionsRequest00.fromJson(core.Map json_)
      : this(
          permissions: json_.containsKey('permissions')
              ? (json_['permissions'] as core.List)
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
/// - metastore:v1 : TestIamPermissionsRequest
class $TestIamPermissionsRequest01 {
  /// The set of permissions to check for the resource.
  ///
  /// Permissions with wildcards (such as * or storage.*) are not allowed. For
  /// more information see IAM Overview
  /// (https://cloud.google.com/iam/docs/overview#permissions).
  core.List<core.String>? permissions;

  $TestIamPermissionsRequest01({
    this.permissions,
  });

  $TestIamPermissionsRequest01.fromJson(core.Map json_)
      : this(
          permissions: json_.containsKey('permissions')
              ? (json_['permissions'] as core.List)
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
/// - metastore:v1 : TestIamPermissionsResponse
class $TestIamPermissionsResponse {
  /// A subset of TestPermissionsRequest.permissions that the caller is allowed.
  core.List<core.String>? permissions;

  $TestIamPermissionsResponse({
    this.permissions,
  });

  $TestIamPermissionsResponse.fromJson(core.Map json_)
      : this(
          permissions: json_.containsKey('permissions')
              ? (json_['permissions'] as core.List)
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

  $TestPermissionsRequest.fromJson(core.Map json_)
      : this(
          permissions: json_.containsKey('permissions')
              ? (json_['permissions'] as core.List)
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
/// - language:v1 : TextSpan
/// - language:v2 : TextSpan
class $TextSpan {
  /// The API calculates the beginning offset of the content in the original
  /// document according to the EncodingType specified in the API request.
  core.int? beginOffset;

  /// The content of the text span, which is a substring of the document.
  core.String? content;

  $TextSpan({
    this.beginOffset,
    this.content,
  });

  $TextSpan.fromJson(core.Map json_)
      : this(
          beginOffset: json_.containsKey('beginOffset')
              ? json_['beginOffset'] as core.int
              : null,
          content: json_.containsKey('content')
              ? json_['content'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (beginOffset != null) 'beginOffset': beginOffset!,
        if (content != null) 'content': content!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : ThirdPartyOnlyConfig
/// - displayvideo:v3 : ThirdPartyOnlyConfig
class $ThirdPartyOnlyConfig {
  /// Whether or not order ID reporting for pixels is enabled.
  ///
  /// This value cannot be changed once set to `true`.
  core.bool? pixelOrderIdReportingEnabled;

  $ThirdPartyOnlyConfig({
    this.pixelOrderIdReportingEnabled,
  });

  $ThirdPartyOnlyConfig.fromJson(core.Map json_)
      : this(
          pixelOrderIdReportingEnabled:
              json_.containsKey('pixelOrderIdReportingEnabled')
                  ? json_['pixelOrderIdReportingEnabled'] as core.bool
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (pixelOrderIdReportingEnabled != null)
          'pixelOrderIdReportingEnabled': pixelOrderIdReportingEnabled!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : ThirdPartyUrl
/// - displayvideo:v3 : ThirdPartyUrl
class $ThirdPartyUrl {
  /// The type of interaction needs to be tracked by the tracking URL
  /// Possible string values are:
  /// - "THIRD_PARTY_URL_TYPE_UNSPECIFIED" : The type of third-party URL is
  /// unspecified or is unknown in this version.
  /// - "THIRD_PARTY_URL_TYPE_IMPRESSION" : Used to count impressions of the
  /// creative after the audio or video buffering is complete.
  /// - "THIRD_PARTY_URL_TYPE_CLICK_TRACKING" : Used to track user clicks on the
  /// audio or video.
  /// - "THIRD_PARTY_URL_TYPE_AUDIO_VIDEO_START" : Used to track the number of
  /// times a user starts the audio or video.
  /// - "THIRD_PARTY_URL_TYPE_AUDIO_VIDEO_FIRST_QUARTILE" : Used to track the
  /// number of times the audio or video plays to 25% of its length.
  /// - "THIRD_PARTY_URL_TYPE_AUDIO_VIDEO_MIDPOINT" : Used to track the number
  /// of times the audio or video plays to 50% of its length.
  /// - "THIRD_PARTY_URL_TYPE_AUDIO_VIDEO_THIRD_QUARTILE" : Used to track the
  /// number of times the audio or video plays to 75% of its length.
  /// - "THIRD_PARTY_URL_TYPE_AUDIO_VIDEO_COMPLETE" : Used to track the number
  /// of times the audio or video plays to the end.
  /// - "THIRD_PARTY_URL_TYPE_AUDIO_VIDEO_MUTE" : Used to track the number of
  /// times a user mutes the audio or video.
  /// - "THIRD_PARTY_URL_TYPE_AUDIO_VIDEO_PAUSE" : Used to track the number of
  /// times a user pauses the audio or video.
  /// - "THIRD_PARTY_URL_TYPE_AUDIO_VIDEO_REWIND" : Used to track the number of
  /// times a user replays the audio or video.
  /// - "THIRD_PARTY_URL_TYPE_AUDIO_VIDEO_FULLSCREEN" : Used to track the number
  /// of times a user expands the player to full-screen size.
  /// - "THIRD_PARTY_URL_TYPE_AUDIO_VIDEO_STOP" : Used to track the number of
  /// times a user stops the audio or video.
  /// - "THIRD_PARTY_URL_TYPE_AUDIO_VIDEO_CUSTOM" : Used to track the number of
  /// times a user performs a custom click, such as clicking on a video hot
  /// spot.
  /// - "THIRD_PARTY_URL_TYPE_AUDIO_VIDEO_SKIP" : Used to track the number of
  /// times the audio or video was skipped.
  /// - "THIRD_PARTY_URL_TYPE_AUDIO_VIDEO_PROGRESS" : Used to track the number
  /// of times the audio or video plays to an offset determined by the
  /// progress_offset.
  core.String? type;

  /// Tracking URL used to track the interaction.
  ///
  /// Provide a URL with optional path or query string, beginning with `https:`.
  /// For example, https://www.example.com/path
  core.String? url;

  $ThirdPartyUrl({
    this.type,
    this.url,
  });

  $ThirdPartyUrl.fromJson(core.Map json_)
      : this(
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
          url: json_.containsKey('url') ? json_['url'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (type != null) 'type': type!,
        if (url != null) 'url': url!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : ThirdPartyVendorConfig
/// - displayvideo:v3 : ThirdPartyVendorConfig
class $ThirdPartyVendorConfig {
  /// The ID used by the platform of the third-party vendor to identify the line
  /// item.
  core.String? placementId;

  /// The third-party measurement vendor.
  /// Possible string values are:
  /// - "THIRD_PARTY_VENDOR_UNSPECIFIED" : Unknown third-party vendor.
  /// - "THIRD_PARTY_VENDOR_MOAT" : Moat.
  /// - "THIRD_PARTY_VENDOR_DOUBLE_VERIFY" : DoubleVerify.
  /// - "THIRD_PARTY_VENDOR_INTEGRAL_AD_SCIENCE" : Integral Ad Science.
  /// - "THIRD_PARTY_VENDOR_COMSCORE" : Comscore.
  /// - "THIRD_PARTY_VENDOR_TELEMETRY" : Telemetry.
  /// - "THIRD_PARTY_VENDOR_MEETRICS" : Meetrics.
  /// - "THIRD_PARTY_VENDOR_ZEFR" : ZEFR.
  /// - "THIRD_PARTY_VENDOR_NIELSEN" : Nielsen.
  /// - "THIRD_PARTY_VENDOR_KANTAR" : Kantar.
  /// - "THIRD_PARTY_VENDOR_DYNATA" : Dynata.
  core.String? vendor;

  $ThirdPartyVendorConfig({
    this.placementId,
    this.vendor,
  });

  $ThirdPartyVendorConfig.fromJson(core.Map json_)
      : this(
          placementId: json_.containsKey('placementId')
              ? json_['placementId'] as core.String
              : null,
          vendor: json_.containsKey('vendor')
              ? json_['vendor'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (placementId != null) 'placementId': placementId!,
        if (vendor != null) 'vendor': vendor!,
      };
}

/// Used by:
///
/// - alloydb:v1 : GoogleTypeTimeOfDay
/// - authorizedbuyersmarketplace:v1 : TimeOfDay
/// - businessprofileperformance:v1 : TimeOfDay
/// - classroom:v1 : TimeOfDay
/// - dlp:v2 : GoogleTypeTimeOfDay
/// - gkebackup:v1 : TimeOfDay
/// - jobs:v3 : TimeOfDay
/// - jobs:v4 : TimeOfDay
/// - looker:v1 : TimeOfDay
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

  $TimeOfDay.fromJson(core.Map json_)
      : this(
          hours: json_.containsKey('hours') ? json_['hours'] as core.int : null,
          minutes: json_.containsKey('minutes')
              ? json_['minutes'] as core.int
              : null,
          nanos: json_.containsKey('nanos') ? json_['nanos'] as core.int : null,
          seconds: json_.containsKey('seconds')
              ? json_['seconds'] as core.int
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
/// - displayvideo:v2 : TimeRange
/// - displayvideo:v3 : TimeRange
class $TimeRange {
  /// The upper bound of a time range, inclusive.
  ///
  /// Required.
  core.String? endTime;

  /// The lower bound of a time range, inclusive.
  ///
  /// Required.
  core.String? startTime;

  $TimeRange({
    this.endTime,
    this.startTime,
  });

  $TimeRange.fromJson(core.Map json_)
      : this(
          endTime: json_.containsKey('endTime')
              ? json_['endTime'] as core.String
              : null,
          startTime: json_.containsKey('startTime')
              ? json_['startTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (endTime != null) 'endTime': endTime!,
        if (startTime != null) 'startTime': startTime!,
      };
}

/// Used by:
///
/// - adsense:v2 : TimeZone
/// - authorizedbuyersmarketplace:v1 : TimeZone
/// - cloudchannel:v1 : GoogleTypeTimeZone
/// - content:v2.1 : TimeZone
/// - contentwarehouse:v1 : GoogleTypeTimeZone
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

  $TimeZone.fromJson(core.Map json_)
      : this(
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          version: json_.containsKey('version')
              ? json_['version'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
        if (version != null) 'version': version!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : TimerEvent
/// - displayvideo:v3 : TimerEvent
class $TimerEvent {
  /// The name of the timer event.
  ///
  /// Required.
  core.String? name;

  /// The name used to identify this timer event in reports.
  ///
  /// Required.
  core.String? reportingName;

  $TimerEvent({
    this.name,
    this.reportingName,
  });

  $TimerEvent.fromJson(core.Map json_)
      : this(
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          reportingName: json_.containsKey('reportingName')
              ? json_['reportingName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (reportingName != null) 'reportingName': reportingName!,
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

  $TokenPagination.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          previousPageToken: json_.containsKey('previousPageToken')
              ? json_['previousPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (previousPageToken != null) 'previousPageToken': previousPageToken!,
      };
}

/// Used by:
///
/// - cloudbuild:v2 : FetchReadTokenResponse
/// - cloudbuild:v2 : FetchReadWriteTokenResponse
class $TokenResponse {
  /// Expiration timestamp.
  ///
  /// Can be empty if unknown or non-expiring.
  core.String? expirationTime;

  /// The token content.
  core.String? token;

  $TokenResponse({
    this.expirationTime,
    this.token,
  });

  $TokenResponse.fromJson(core.Map json_)
      : this(
          expirationTime: json_.containsKey('expirationTime')
              ? json_['expirationTime'] as core.String
              : null,
          token:
              json_.containsKey('token') ? json_['token'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (expirationTime != null) 'expirationTime': expirationTime!,
        if (token != null) 'token': token!,
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

  $TraceSamplingConfig.fromJson(core.Map json_)
      : this(
          sampler: json_.containsKey('sampler')
              ? json_['sampler'] as core.String
              : null,
          samplingRate: json_.containsKey('samplingRate')
              ? (json_['samplingRate'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (sampler != null) 'sampler': sampler!,
        if (samplingRate != null) 'samplingRate': samplingRate!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : TrackingFloodlightActivityConfig
/// - displayvideo:v3 : TrackingFloodlightActivityConfig
class $TrackingFloodlightActivityConfig {
  /// The ID of the Floodlight activity.
  ///
  /// Required.
  core.String? floodlightActivityId;

  /// The number of days after an ad has been clicked in which a conversion may
  /// be counted.
  ///
  /// Must be between 0 and 90 inclusive.
  ///
  /// Required.
  core.int? postClickLookbackWindowDays;

  /// The number of days after an ad has been viewed in which a conversion may
  /// be counted.
  ///
  /// Must be between 0 and 90 inclusive.
  ///
  /// Required.
  core.int? postViewLookbackWindowDays;

  $TrackingFloodlightActivityConfig({
    this.floodlightActivityId,
    this.postClickLookbackWindowDays,
    this.postViewLookbackWindowDays,
  });

  $TrackingFloodlightActivityConfig.fromJson(core.Map json_)
      : this(
          floodlightActivityId: json_.containsKey('floodlightActivityId')
              ? json_['floodlightActivityId'] as core.String
              : null,
          postClickLookbackWindowDays:
              json_.containsKey('postClickLookbackWindowDays')
                  ? json_['postClickLookbackWindowDays'] as core.int
                  : null,
          postViewLookbackWindowDays:
              json_.containsKey('postViewLookbackWindowDays')
                  ? json_['postViewLookbackWindowDays'] as core.int
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (floodlightActivityId != null)
          'floodlightActivityId': floodlightActivityId!,
        if (postClickLookbackWindowDays != null)
          'postClickLookbackWindowDays': postClickLookbackWindowDays!,
        if (postViewLookbackWindowDays != null)
          'postViewLookbackWindowDays': postViewLookbackWindowDays!,
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

  $TruncatableString.fromJson(core.Map json_)
      : this(
          truncatedByteCount: json_.containsKey('truncatedByteCount')
              ? json_['truncatedByteCount'] as core.int
              : null,
          value:
              json_.containsKey('value') ? json_['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (truncatedByteCount != null)
          'truncatedByteCount': truncatedByteCount!,
        if (value != null) 'value': value!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : UniversalAdId
/// - displayvideo:v3 : UniversalAdId
class $UniversalAdId {
  /// The unique creative identifier.
  core.String? id;

  /// The registry provides unique creative identifiers.
  /// Possible string values are:
  /// - "UNIVERSAL_AD_REGISTRY_UNSPECIFIED" : The Universal Ad registry is
  /// unspecified or is unknown in this version.
  /// - "UNIVERSAL_AD_REGISTRY_OTHER" : Use a custom provider to provide the
  /// Universal Ad ID.
  /// - "UNIVERSAL_AD_REGISTRY_AD_ID" : Use Ad-ID to provide the Universal Ad
  /// ID.
  /// - "UNIVERSAL_AD_REGISTRY_CLEARCAST" : Use clearcast.co.uk to provide the
  /// Universal Ad ID.
  /// - "UNIVERSAL_AD_REGISTRY_DV360" : Use Display & Video 360 to provide the
  /// Universal Ad ID.
  /// - "UNIVERSAL_AD_REGISTRY_CM" : Use Campaign Manager 360 to provide the
  /// Universal Ad ID.
  core.String? registry;

  $UniversalAdId({
    this.id,
    this.registry,
  });

  $UniversalAdId.fromJson(core.Map json_)
      : this(
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          registry: json_.containsKey('registry')
              ? json_['registry'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
        if (registry != null) 'registry': registry!,
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

  $UpgradeDistribution.fromJson(core.Map json_)
      : this(
          classification: json_.containsKey('classification')
              ? json_['classification'] as core.String
              : null,
          cpeUri: json_.containsKey('cpeUri')
              ? json_['cpeUri'] as core.String
              : null,
          cve: json_.containsKey('cve')
              ? (json_['cve'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          severity: json_.containsKey('severity')
              ? json_['severity'] as core.String
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
/// - displayvideo:v2 : UrlAssignedTargetingOptionDetails
/// - displayvideo:v3 : UrlAssignedTargetingOptionDetails
class $UrlAssignedTargetingOptionDetails {
  /// Indicates if this option is being negatively targeted.
  core.bool? negative;

  /// The URL, for example `example.com`.
  ///
  /// DV360 supports two levels of subdirectory targeting, for example
  /// `www.example.com/one-subdirectory-level/second-level`, and five levels of
  /// subdomain targeting, for example `five.four.three.two.one.example.com`.
  ///
  /// Required.
  core.String? url;

  $UrlAssignedTargetingOptionDetails({
    this.negative,
    this.url,
  });

  $UrlAssignedTargetingOptionDetails.fromJson(core.Map json_)
      : this(
          negative: json_.containsKey('negative')
              ? json_['negative'] as core.bool
              : null,
          url: json_.containsKey('url') ? json_['url'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (negative != null) 'negative': negative!,
        if (url != null) 'url': url!,
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

  $UsageRule.fromJson(core.Map json_)
      : this(
          allowUnregisteredCalls: json_.containsKey('allowUnregisteredCalls')
              ? json_['allowUnregisteredCalls'] as core.bool
              : null,
          selector: json_.containsKey('selector')
              ? json_['selector'] as core.String
              : null,
          skipServiceControl: json_.containsKey('skipServiceControl')
              ? json_['skipServiceControl'] as core.bool
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
/// - displayvideo:v2 : UserRewardedContentAssignedTargetingOptionDetails
/// - displayvideo:v3 : UserRewardedContentAssignedTargetingOptionDetails
class $UserRewardedContentAssignedTargetingOptionDetails {
  /// The targeting_option_id field when targeting_type is
  /// `TARGETING_TYPE_USER_REWARDED_CONTENT`.
  ///
  /// Required.
  core.String? targetingOptionId;

  /// User rewarded content status for video ads.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "USER_REWARDED_CONTENT_UNSPECIFIED" : User rewarded content is not
  /// specified or is unknown in this version.
  /// - "USER_REWARDED_CONTENT_USER_REWARDED" : Represents ads where the user
  /// will see a reward after viewing.
  /// - "USER_REWARDED_CONTENT_NOT_USER_REWARDED" : Represents all other ads
  /// besides user-rewarded.
  core.String? userRewardedContent;

  $UserRewardedContentAssignedTargetingOptionDetails({
    this.targetingOptionId,
    this.userRewardedContent,
  });

  $UserRewardedContentAssignedTargetingOptionDetails.fromJson(core.Map json_)
      : this(
          targetingOptionId: json_.containsKey('targetingOptionId')
              ? json_['targetingOptionId'] as core.String
              : null,
          userRewardedContent: json_.containsKey('userRewardedContent')
              ? json_['userRewardedContent'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (targetingOptionId != null) 'targetingOptionId': targetingOptionId!,
        if (userRewardedContent != null)
          'userRewardedContent': userRewardedContent!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : UserRewardedContentTargetingOptionDetails
/// - displayvideo:v3 : UserRewardedContentTargetingOptionDetails
class $UserRewardedContentTargetingOptionDetails {
  /// User rewarded content status for video ads.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "USER_REWARDED_CONTENT_UNSPECIFIED" : User rewarded content is not
  /// specified or is unknown in this version.
  /// - "USER_REWARDED_CONTENT_USER_REWARDED" : Represents ads where the user
  /// will see a reward after viewing.
  /// - "USER_REWARDED_CONTENT_NOT_USER_REWARDED" : Represents all other ads
  /// besides user-rewarded.
  core.String? userRewardedContent;

  $UserRewardedContentTargetingOptionDetails({
    this.userRewardedContent,
  });

  $UserRewardedContentTargetingOptionDetails.fromJson(core.Map json_)
      : this(
          userRewardedContent: json_.containsKey('userRewardedContent')
              ? json_['userRewardedContent'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (userRewardedContent != null)
          'userRewardedContent': userRewardedContent!,
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

  $V1AccessTuple.fromJson(core.Map json_)
      : this(
          fullResourceName: json_.containsKey('fullResourceName')
              ? json_['fullResourceName'] as core.String
              : null,
          permission: json_.containsKey('permission')
              ? json_['permission'] as core.String
              : null,
          principal: json_.containsKey('principal')
              ? json_['principal'] as core.String
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
              json_.containsKey('containsLowercaseCharacter')
                  ? json_['containsLowercaseCharacter'] as core.bool
                  : null,
          containsNonAlphanumericCharacter:
              json_.containsKey('containsNonAlphanumericCharacter')
                  ? json_['containsNonAlphanumericCharacter'] as core.bool
                  : null,
          containsNumericCharacter:
              json_.containsKey('containsNumericCharacter')
                  ? json_['containsNumericCharacter'] as core.bool
                  : null,
          containsUppercaseCharacter:
              json_.containsKey('containsUppercaseCharacter')
                  ? json_['containsUppercaseCharacter'] as core.bool
                  : null,
          maxPasswordLength: json_.containsKey('maxPasswordLength')
              ? json_['maxPasswordLength'] as core.int
              : null,
          minPasswordLength: json_.containsKey('minPasswordLength')
              ? json_['minPasswordLength'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (containsLowercaseCharacter != null)
          'containsLowercaseCharacter': containsLowercaseCharacter!,
        if (containsNonAlphanumericCharacter != null)
          'containsNonAlphanumericCharacter': containsNonAlphanumericCharacter!,
        if (containsNumericCharacter != null)
          'containsNumericCharacter': containsNumericCharacter!,
        if (containsUppercaseCharacter != null)
          'containsUppercaseCharacter': containsUppercaseCharacter!,
        if (maxPasswordLength != null) 'maxPasswordLength': maxPasswordLength!,
        if (minPasswordLength != null) 'minPasswordLength': minPasswordLength!,
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

  $Version.fromJson(core.Map json_)
      : this(
          epoch: json_.containsKey('epoch') ? json_['epoch'] as core.int : null,
          fullName: json_.containsKey('fullName')
              ? json_['fullName'] as core.String
              : null,
          inclusive: json_.containsKey('inclusive')
              ? json_['inclusive'] as core.bool
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          revision: json_.containsKey('revision')
              ? json_['revision'] as core.String
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

  $VersionedPackage.fromJson(core.Map json_)
      : this(
          architecture: json_.containsKey('architecture')
              ? json_['architecture'] as core.String
              : null,
          packageName: json_.containsKey('packageName')
              ? json_['packageName'] as core.String
              : null,
          version: json_.containsKey('version')
              ? json_['version'] as core.String
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
/// - displayvideo:v2 : VideoAdSequenceStep
/// - displayvideo:v3 : VideoAdSequenceStep
class $VideoAdSequenceStep {
  /// The ID of the corresponding ad group of the step.
  core.String? adGroupId;

  /// The interaction on the previous step that will lead the viewer to this
  /// step.
  ///
  /// The first step does not have interaction_type.
  /// Possible string values are:
  /// - "INTERACTION_TYPE_UNSPECIFIED" : Unspecified or unknown
  /// - "INTERACTION_TYPE_PAID_VIEW" : A paid view.
  /// - "INTERACTION_TYPE_SKIP" : Skipped by the viewer.
  /// - "INTERACTION_TYPE_IMPRESSION" : A (viewed) ad impression.
  /// - "INTERACTION_TYPE_ENGAGED_IMPRESSION" : An ad impression that was not
  /// immediately skipped by the viewer, but didn't reach the billable event
  /// either.
  core.String? interactionType;

  /// The ID of the previous step.
  ///
  /// The first step does not have previous step.
  core.String? previousStepId;

  /// The ID of the step.
  core.String? stepId;

  $VideoAdSequenceStep({
    this.adGroupId,
    this.interactionType,
    this.previousStepId,
    this.stepId,
  });

  $VideoAdSequenceStep.fromJson(core.Map json_)
      : this(
          adGroupId: json_.containsKey('adGroupId')
              ? json_['adGroupId'] as core.String
              : null,
          interactionType: json_.containsKey('interactionType')
              ? json_['interactionType'] as core.String
              : null,
          previousStepId: json_.containsKey('previousStepId')
              ? json_['previousStepId'] as core.String
              : null,
          stepId: json_.containsKey('stepId')
              ? json_['stepId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (adGroupId != null) 'adGroupId': adGroupId!,
        if (interactionType != null) 'interactionType': interactionType!,
        if (previousStepId != null) 'previousStepId': previousStepId!,
        if (stepId != null) 'stepId': stepId!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : VideoPlayerSizeAssignedTargetingOptionDetails
/// - displayvideo:v3 : VideoPlayerSizeAssignedTargetingOptionDetails
class $VideoPlayerSizeAssignedTargetingOptionDetails {
  /// The video player size.
  ///
  /// Required.
  /// Possible string values are:
  /// - "VIDEO_PLAYER_SIZE_UNSPECIFIED" : Video player size is not specified in
  /// this version. This enum is a place holder for a default value and does not
  /// represent a real video player size.
  /// - "VIDEO_PLAYER_SIZE_SMALL" : The dimensions of the video player are less
  /// than 400×300 (desktop), or up to 20% of screen covered (mobile).
  /// - "VIDEO_PLAYER_SIZE_LARGE" : The dimensions of the video player are
  /// between 400x300 and 1280x720 pixels (desktop), or 20% to 90% of the screen
  /// covered (mobile).
  /// - "VIDEO_PLAYER_SIZE_HD" : The dimensions of the video player are 1280×720
  /// or greater (desktop), or over 90% of the screen covered (mobile).
  /// - "VIDEO_PLAYER_SIZE_UNKNOWN" : The dimensions of the video player are
  /// unknown.
  core.String? videoPlayerSize;

  $VideoPlayerSizeAssignedTargetingOptionDetails({
    this.videoPlayerSize,
  });

  $VideoPlayerSizeAssignedTargetingOptionDetails.fromJson(core.Map json_)
      : this(
          videoPlayerSize: json_.containsKey('videoPlayerSize')
              ? json_['videoPlayerSize'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (videoPlayerSize != null) 'videoPlayerSize': videoPlayerSize!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : VideoPlayerSizeTargetingOptionDetails
/// - displayvideo:v3 : VideoPlayerSizeTargetingOptionDetails
class $VideoPlayerSizeTargetingOptionDetails {
  /// The video player size.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "VIDEO_PLAYER_SIZE_UNSPECIFIED" : Video player size is not specified in
  /// this version. This enum is a place holder for a default value and does not
  /// represent a real video player size.
  /// - "VIDEO_PLAYER_SIZE_SMALL" : The dimensions of the video player are less
  /// than 400×300 (desktop), or up to 20% of screen covered (mobile).
  /// - "VIDEO_PLAYER_SIZE_LARGE" : The dimensions of the video player are
  /// between 400x300 and 1280x720 pixels (desktop), or 20% to 90% of the screen
  /// covered (mobile).
  /// - "VIDEO_PLAYER_SIZE_HD" : The dimensions of the video player are 1280×720
  /// or greater (desktop), or over 90% of the screen covered (mobile).
  /// - "VIDEO_PLAYER_SIZE_UNKNOWN" : The dimensions of the video player are
  /// unknown.
  core.String? videoPlayerSize;

  $VideoPlayerSizeTargetingOptionDetails({
    this.videoPlayerSize,
  });

  $VideoPlayerSizeTargetingOptionDetails.fromJson(core.Map json_)
      : this(
          videoPlayerSize: json_.containsKey('videoPlayerSize')
              ? json_['videoPlayerSize'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (videoPlayerSize != null) 'videoPlayerSize': videoPlayerSize!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : ViewabilityAssignedTargetingOptionDetails
/// - displayvideo:v3 : ViewabilityAssignedTargetingOptionDetails
class $ViewabilityAssignedTargetingOptionDetails {
  /// The predicted viewability percentage.
  ///
  /// Required.
  /// Possible string values are:
  /// - "VIEWABILITY_UNSPECIFIED" : Default value when viewability is not
  /// specified in this version. This enum is a placeholder for default value
  /// and does not represent a real viewability option.
  /// - "VIEWABILITY_10_PERCENT_OR_MORE" : Bid only on impressions that are at
  /// least 10% likely to be viewable.
  /// - "VIEWABILITY_20_PERCENT_OR_MORE" : Bid only on impressions that are at
  /// least 20% likely to be viewable.
  /// - "VIEWABILITY_30_PERCENT_OR_MORE" : Bid only on impressions that are at
  /// least 30% likely to be viewable.
  /// - "VIEWABILITY_40_PERCENT_OR_MORE" : Bid only on impressions that are at
  /// least 40% likely to be viewable.
  /// - "VIEWABILITY_50_PERCENT_OR_MORE" : Bid only on impressions that are at
  /// least 50% likely to be viewable.
  /// - "VIEWABILITY_60_PERCENT_OR_MORE" : Bid only on impressions that are at
  /// least 60% likely to be viewable.
  /// - "VIEWABILITY_70_PERCENT_OR_MORE" : Bid only on impressions that are at
  /// least 70% likely to be viewable.
  /// - "VIEWABILITY_80_PERCENT_OR_MORE" : Bid only on impressions that are at
  /// least 80% likely to be viewable.
  /// - "VIEWABILITY_90_PERCENT_OR_MORE" : Bid only on impressions that are at
  /// least 90% likely to be viewable.
  core.String? viewability;

  $ViewabilityAssignedTargetingOptionDetails({
    this.viewability,
  });

  $ViewabilityAssignedTargetingOptionDetails.fromJson(core.Map json_)
      : this(
          viewability: json_.containsKey('viewability')
              ? json_['viewability'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (viewability != null) 'viewability': viewability!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : ViewabilityTargetingOptionDetails
/// - displayvideo:v3 : ViewabilityTargetingOptionDetails
class $ViewabilityTargetingOptionDetails {
  /// The predicted viewability percentage.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "VIEWABILITY_UNSPECIFIED" : Default value when viewability is not
  /// specified in this version. This enum is a placeholder for default value
  /// and does not represent a real viewability option.
  /// - "VIEWABILITY_10_PERCENT_OR_MORE" : Bid only on impressions that are at
  /// least 10% likely to be viewable.
  /// - "VIEWABILITY_20_PERCENT_OR_MORE" : Bid only on impressions that are at
  /// least 20% likely to be viewable.
  /// - "VIEWABILITY_30_PERCENT_OR_MORE" : Bid only on impressions that are at
  /// least 30% likely to be viewable.
  /// - "VIEWABILITY_40_PERCENT_OR_MORE" : Bid only on impressions that are at
  /// least 40% likely to be viewable.
  /// - "VIEWABILITY_50_PERCENT_OR_MORE" : Bid only on impressions that are at
  /// least 50% likely to be viewable.
  /// - "VIEWABILITY_60_PERCENT_OR_MORE" : Bid only on impressions that are at
  /// least 60% likely to be viewable.
  /// - "VIEWABILITY_70_PERCENT_OR_MORE" : Bid only on impressions that are at
  /// least 70% likely to be viewable.
  /// - "VIEWABILITY_80_PERCENT_OR_MORE" : Bid only on impressions that are at
  /// least 80% likely to be viewable.
  /// - "VIEWABILITY_90_PERCENT_OR_MORE" : Bid only on impressions that are at
  /// least 90% likely to be viewable.
  core.String? viewability;

  $ViewabilityTargetingOptionDetails({
    this.viewability,
  });

  $ViewabilityTargetingOptionDetails.fromJson(core.Map json_)
      : this(
          viewability: json_.containsKey('viewability')
              ? json_['viewability'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (viewability != null) 'viewability': viewability!,
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

  $VpcAccessibleServices.fromJson(core.Map json_)
      : this(
          allowedServices: json_.containsKey('allowedServices')
              ? (json_['allowedServices'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          enableRestriction: json_.containsKey('enableRestriction')
              ? json_['enableRestriction'] as core.bool
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

  $VpcServiceControlsRequest.fromJson(core.Map json_)
      : this(
          consumerNetwork: json_.containsKey('consumerNetwork')
              ? json_['consumerNetwork'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (consumerNetwork != null) 'consumerNetwork': consumerNetwork!,
      };
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
  /// portion must be properly truncated (i.e. all the host bits must be zero)
  /// or the input is considered malformed. For example, "192.0.2.0/24" is
  /// accepted but "192.0.2.1/24" is not. If empty, all IP addresses are
  /// allowed.
  core.List<core.String>? vpcIpSubnetworks;

  $VpcSubNetwork({
    this.network,
    this.vpcIpSubnetworks,
  });

  $VpcSubNetwork.fromJson(core.Map json_)
      : this(
          network: json_.containsKey('network')
              ? json_['network'] as core.String
              : null,
          vpcIpSubnetworks: json_.containsKey('vpcIpSubnetworks')
              ? (json_['vpcIpSubnetworks'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (network != null) 'network': network!,
        if (vpcIpSubnetworks != null) 'vpcIpSubnetworks': vpcIpSubnetworks!,
      };
}

/// Used by:
///
/// - firebaseappdistribution:v1 : GoogleLongrunningWaitOperationRequest
/// - run:v1 : GoogleLongrunningWaitOperationRequest
/// - run:v2 : GoogleLongrunningWaitOperationRequest
/// - translate:v3 : WaitOperationRequest
class $WaitOperationRequest {
  /// The maximum duration to wait before timing out.
  ///
  /// If left blank, the wait will be at most the time permitted by the
  /// underlying HTTP/RPC protocol. If RPC context deadline is also specified,
  /// the shorter one will be used.
  core.String? timeout;

  $WaitOperationRequest({
    this.timeout,
  });

  $WaitOperationRequest.fromJson(core.Map json_)
      : this(
          timeout: json_.containsKey('timeout')
              ? json_['timeout'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (timeout != null) 'timeout': timeout!,
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

  $WebAppIcon.fromJson(core.Map json_)
      : this(
          imageData: json_.containsKey('imageData')
              ? json_['imageData'] as core.String
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

  $WindowsQuickFixEngineeringPackage.fromJson(core.Map json_)
      : this(
          caption: json_.containsKey('caption')
              ? json_['caption'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          hotFixId: json_.containsKey('hotFixId')
              ? json_['hotFixId'] as core.String
              : null,
          installTime: json_.containsKey('installTime')
              ? json_['installTime'] as core.String
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

  $WindowsUpdateCategory.fromJson(core.Map json_)
      : this(
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
        if (name != null) 'name': name!,
      };
}

/// Used by:
///
/// - workstations:v1 : StartWorkstationRequest
/// - workstations:v1 : StopWorkstationRequest
class $WorkstationRequest {
  /// If set, the request will be rejected if the latest version of the
  /// workstation on the server does not have this ETag.
  ///
  /// Optional.
  core.String? etag;

  /// If set, validate the request and preview the review, but do not actually
  /// apply it.
  ///
  /// Optional.
  core.bool? validateOnly;

  $WorkstationRequest({
    this.etag,
    this.validateOnly,
  });

  $WorkstationRequest.fromJson(core.Map json_)
      : this(
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          validateOnly: json_.containsKey('validateOnly')
              ? json_['validateOnly'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
        if (validateOnly != null) 'validateOnly': validateOnly!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : YoutubeAndPartnersBiddingStrategy
/// - displayvideo:v3 : YoutubeAndPartnersBiddingStrategy
class $YoutubeAndPartnersBiddingStrategy {
  /// Source of the effective target CPA value for ad group.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "BIDDING_SOURCE_UNSPECIFIED" : Bidding source is not specified or
  /// unknown.
  /// - "BIDDING_SOURCE_LINE_ITEM" : Bidding value is inherited from the line
  /// item.
  /// - "BIDDING_SOURCE_AD_GROUP" : Bidding value is defined in the ad group.
  core.String? adGroupEffectiveTargetCpaSource;

  /// The effective target CPA for ad group, in micros of advertiser's currency.
  ///
  /// Output only.
  core.String? adGroupEffectiveTargetCpaValue;

  /// The type of the bidding strategy.
  /// Possible string values are:
  /// - "YOUTUBE_AND_PARTNERS_BIDDING_STRATEGY_TYPE_UNSPECIFIED" : Type is not
  /// specified or unknown.
  /// - "YOUTUBE_AND_PARTNERS_BIDDING_STRATEGY_TYPE_MANUAL_CPV" : A bidding
  /// strategy that pays a configurable amount per video view.
  /// - "YOUTUBE_AND_PARTNERS_BIDDING_STRATEGY_TYPE_MANUAL_CPM" : A bidding
  /// strategy that pays a configurable amount per impression.
  /// - "YOUTUBE_AND_PARTNERS_BIDDING_STRATEGY_TYPE_TARGET_CPA" : A bidding
  /// strategy that automatically optimizes conversions per dollar.
  /// - "YOUTUBE_AND_PARTNERS_BIDDING_STRATEGY_TYPE_TARGET_CPM" : A bidding
  /// strategy that pays a configurable amount per impression.
  /// - "YOUTUBE_AND_PARTNERS_BIDDING_STRATEGY_TYPE_RESERVE_CPM" : A bidding
  /// strategy for YouTube Instant Reserve line items that pays a fixed amount
  /// per impression.
  /// - "YOUTUBE_AND_PARTNERS_BIDDING_STRATEGY_TYPE_MAXIMIZE_LIFT" : An
  /// automated bidding strategy that sets bids to achieve maximum lift.
  /// - "YOUTUBE_AND_PARTNERS_BIDDING_STRATEGY_TYPE_MAXIMIZE_CONVERSIONS" : A
  /// bidding strategy that automatically maximizes number of conversions given
  /// a daily budget.
  /// - "YOUTUBE_AND_PARTNERS_BIDDING_STRATEGY_TYPE_TARGET_CPV" : A bidding
  /// strategy that automatically optimizes cost per video view.
  /// - "YOUTUBE_AND_PARTNERS_BIDDING_STRATEGY_TYPE_TARGET_ROAS" : A bidding
  /// strategy that automatically maximizes revenue while averaging a specific
  /// target Return On Ad Spend (ROAS).
  /// - "YOUTUBE_AND_PARTNERS_BIDDING_STRATEGY_TYPE_MAXIMIZE_CONVERSION_VALUE" :
  /// A bidding strategy that automatically sets bids to maximize revenue while
  /// spending your budget.
  core.String? type;

  /// The value used by the bidding strategy.
  ///
  /// When the bidding strategy is assigned at the line item level, this field
  /// is only applicable for the following strategy types: *
  /// `YOUTUBE_AND_PARTNERS_BIDDING_STRATEGY_TYPE_TARGET_CPA` *
  /// `YOUTUBE_AND_PARTNERS_BIDDING_STRATEGY_TYPE_TARGET_ROAS` When the bidding
  /// strategy is assigned at the ad group level, this field is only applicable
  /// for the following strategy types: *
  /// `YOUTUBE_AND_PARTNERS_BIDDING_STRATEGY_TYPE_MANUAL_CPM` *
  /// `YOUTUBE_AND_PARTNERS_BIDDING_STRATEGY_TYPE_MANUAL_CPV` *
  /// `YOUTUBE_AND_PARTNERS_BIDDING_STRATEGY_TYPE_TARGET_CPA` *
  /// `YOUTUBE_AND_PARTNERS_BIDDING_STRATEGY_TYPE_TARGET_CPM` *
  /// `YOUTUBE_AND_PARTNERS_BIDDING_STRATEGY_TYPE_RESERVE_CPM` *
  /// `YOUTUBE_AND_PARTNERS_BIDDING_STRATEGY_TYPE_TARGET_ROAS` If not using an
  /// applicable strategy, the value of this field will be 0.
  core.String? value;

  $YoutubeAndPartnersBiddingStrategy({
    this.adGroupEffectiveTargetCpaSource,
    this.adGroupEffectiveTargetCpaValue,
    this.type,
    this.value,
  });

  $YoutubeAndPartnersBiddingStrategy.fromJson(core.Map json_)
      : this(
          adGroupEffectiveTargetCpaSource:
              json_.containsKey('adGroupEffectiveTargetCpaSource')
                  ? json_['adGroupEffectiveTargetCpaSource'] as core.String
                  : null,
          adGroupEffectiveTargetCpaValue:
              json_.containsKey('adGroupEffectiveTargetCpaValue')
                  ? json_['adGroupEffectiveTargetCpaValue'] as core.String
                  : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
          value:
              json_.containsKey('value') ? json_['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (adGroupEffectiveTargetCpaSource != null)
          'adGroupEffectiveTargetCpaSource': adGroupEffectiveTargetCpaSource!,
        if (adGroupEffectiveTargetCpaValue != null)
          'adGroupEffectiveTargetCpaValue': adGroupEffectiveTargetCpaValue!,
        if (type != null) 'type': type!,
        if (value != null) 'value': value!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : YoutubeChannelAssignedTargetingOptionDetails
/// - displayvideo:v3 : YoutubeChannelAssignedTargetingOptionDetails
class $YoutubeChannelAssignedTargetingOptionDetails {
  /// The YouTube uploader channel id or the channel code of a YouTube channel.
  core.String? channelId;

  /// Indicates if this option is being negatively targeted.
  core.bool? negative;

  $YoutubeChannelAssignedTargetingOptionDetails({
    this.channelId,
    this.negative,
  });

  $YoutubeChannelAssignedTargetingOptionDetails.fromJson(core.Map json_)
      : this(
          channelId: json_.containsKey('channelId')
              ? json_['channelId'] as core.String
              : null,
          negative: json_.containsKey('negative')
              ? json_['negative'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (channelId != null) 'channelId': channelId!,
        if (negative != null) 'negative': negative!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : YoutubeVideoAssignedTargetingOptionDetails
/// - displayvideo:v3 : YoutubeVideoAssignedTargetingOptionDetails
class $YoutubeVideoAssignedTargetingOptionDetails {
  /// Indicates if this option is being negatively targeted.
  core.bool? negative;

  /// YouTube video id as it appears on the YouTube watch page.
  core.String? videoId;

  $YoutubeVideoAssignedTargetingOptionDetails({
    this.negative,
    this.videoId,
  });

  $YoutubeVideoAssignedTargetingOptionDetails.fromJson(core.Map json_)
      : this(
          negative: json_.containsKey('negative')
              ? json_['negative'] as core.bool
              : null,
          videoId: json_.containsKey('videoId')
              ? json_['videoId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (negative != null) 'negative': negative!,
        if (videoId != null) 'videoId': videoId!,
      };
}

/// Used by:
///
/// - displayvideo:v2 : YoutubeVideoDetails
/// - displayvideo:v3 : YoutubeVideoDetails
class $YoutubeVideoDetails {
  /// The YouTube video ID which can be searched on YouTube webpage.
  core.String? id;

  /// The reason why the video data is not available.
  /// Possible string values are:
  /// - "VIDEO_UNAVAILABLE_REASON_UNSPECIFIED" : Unknown or unspecified.
  /// - "VIDEO_UNAVAILABLE_REASON_PRIVATE" : The video is private.
  /// - "VIDEO_UNAVAILABLE_REASON_DELETED" : The video is deleted.
  core.String? unavailableReason;

  $YoutubeVideoDetails({
    this.id,
    this.unavailableReason,
  });

  $YoutubeVideoDetails.fromJson(core.Map json_)
      : this(
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          unavailableReason: json_.containsKey('unavailableReason')
              ? json_['unavailableReason'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
        if (unavailableReason != null) 'unavailableReason': unavailableReason!,
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

  $ZypperPatch.fromJson(core.Map json_)
      : this(
          category: json_.containsKey('category')
              ? json_['category'] as core.String
              : null,
          patchName: json_.containsKey('patchName')
              ? json_['patchName'] as core.String
              : null,
          severity: json_.containsKey('severity')
              ? json_['severity'] as core.String
              : null,
          summary: json_.containsKey('summary')
              ? json_['summary'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (category != null) 'category': category!,
        if (patchName != null) 'patchName': patchName!,
        if (severity != null) 'severity': severity!,
        if (summary != null) 'summary': summary!,
      };
}
