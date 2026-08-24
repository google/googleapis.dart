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
  /// This will always be a strongly validated etag, meaning that two Access
  /// Policies will be identical if and only if their etags are identical.
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
/// - displayvideo:v2 : ActiveViewVideoViewabilityMetricConfig
/// - displayvideo:v3 : ActiveViewVideoViewabilityMetricConfig
/// - displayvideo:v4 : ActiveViewVideoViewabilityMetricConfig
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
        displayName: json_['displayName'] as core.String?,
        minimumDuration: json_['minimumDuration'] as core.String?,
        minimumQuartile: json_['minimumQuartile'] as core.String?,
        minimumViewability: json_['minimumViewability'] as core.String?,
        minimumVolume: json_['minimumVolume'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final displayName = this.displayName;
    final minimumDuration = this.minimumDuration;
    final minimumQuartile = this.minimumQuartile;
    final minimumViewability = this.minimumViewability;
    final minimumVolume = this.minimumVolume;
    return {
      'displayName': ?displayName,
      'minimumDuration': ?minimumDuration,
      'minimumQuartile': ?minimumQuartile,
      'minimumViewability': ?minimumViewability,
      'minimumVolume': ?minimumVolume,
    };
  }
}

/// Used by:
///
/// - displayvideo:v3 : AdPolicyCriterionRestriction
/// - displayvideo:v4 : AdPolicyCriterionRestriction
class $AdPolicyCriterionRestriction {
  /// The country criterion id.
  core.String? countryCriterionId;

  /// Localized name for the country.
  ///
  /// May be empty.
  core.String? countryLabel;

  $AdPolicyCriterionRestriction({this.countryCriterionId, this.countryLabel});

  $AdPolicyCriterionRestriction.fromJson(core.Map json_)
    : this(
        countryCriterionId: json_['countryCriterionId'] as core.String?,
        countryLabel: json_['countryLabel'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final countryCriterionId = this.countryCriterionId;
    final countryLabel = this.countryLabel;
    return {
      'countryCriterionId': ?countryCriterionId,
      'countryLabel': ?countryLabel,
    };
  }
}

/// Used by:
///
/// - displayvideo:v3 : AdPolicyTopicAppealInfo
/// - displayvideo:v4 : AdPolicyTopicAppealInfo
class $AdPolicyTopicAppealInfo {
  /// Only available when appeal_type is `APPEAL_FORM`.
  core.String? appealFormLink;

  /// Whether the decision can be appealed through a self-service appeal or an
  /// appeal form.
  /// Possible string values are:
  /// - "AD_POLICY_APPEAL_TYPE_UNKNOWN" : Unknown or not specified.
  /// - "SELF_SERVICE_APPEAL" : The decision can be appealed through a
  /// self-service appeal.
  /// - "APPEAL_FORM" : The decision can be appealed using an appeal form.
  core.String? appealType;

  $AdPolicyTopicAppealInfo({this.appealFormLink, this.appealType});

  $AdPolicyTopicAppealInfo.fromJson(core.Map json_)
    : this(
        appealFormLink: json_['appealFormLink'] as core.String?,
        appealType: json_['appealType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final appealFormLink = this.appealFormLink;
    final appealType = this.appealType;
    return {'appealFormLink': ?appealFormLink, 'appealType': ?appealType};
  }
}

/// Used by:
///
/// - displayvideo:v3 : AdPolicyTopicEvidenceCounterfeit
/// - displayvideo:v4 : AdPolicyTopicEvidenceCounterfeit
class $AdPolicyTopicEvidenceCounterfeit {
  /// The content or product owners that made a complaint.
  core.List<core.String>? owners;

  $AdPolicyTopicEvidenceCounterfeit({this.owners});

  $AdPolicyTopicEvidenceCounterfeit.fromJson(core.Map json_)
    : this(
        owners: (json_['owners'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final owners = this.owners;
    return {'owners': ?owners};
  }
}

/// Used by:
///
/// - displayvideo:v3 : AdPolicyTopicEvidenceDestinationMismatch
/// - displayvideo:v4 : AdPolicyTopicEvidenceDestinationMismatch
class $AdPolicyTopicEvidenceDestinationMismatch {
  /// The set of URLs that do not match.
  ///
  /// The list can include single or multiple uri types. Example 1:
  /// \[`DISPLAY_URL`, `FINAL_URL`\] means ad display URL does not match with
  /// the ad final URL. Example 2: \[`FINAL_URL`\] means ad final URL did not
  /// match the crawled url, which is also considered as destination mismatch.
  core.List<core.String>? uriTypes;

  $AdPolicyTopicEvidenceDestinationMismatch({this.uriTypes});

  $AdPolicyTopicEvidenceDestinationMismatch.fromJson(core.Map json_)
    : this(
        uriTypes: (json_['uriTypes'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final uriTypes = this.uriTypes;
    return {'uriTypes': ?uriTypes};
  }
}

/// Used by:
///
/// - displayvideo:v3 : AdPolicyTopicEvidenceDestinationNotWorking
/// - displayvideo:v4 : AdPolicyTopicEvidenceDestinationNotWorking
class $AdPolicyTopicEvidenceDestinationNotWorking {
  /// The device where visiting the URL resulted in the error.
  /// Possible string values are:
  /// - "AD_POLICY_TOPIC_EVIDENCE_DESTINATION_NOT_WORKING_DEVICE_TYPE_UNKNOWN" :
  /// Not specified or unknown.
  /// - "DESKTOP" : Desktop device.
  /// - "ANDROID" : Android device.
  /// - "IOS" : iOS device.
  core.String? device;

  /// The type of DNS error.
  /// Possible string values are:
  /// -
  /// "AD_POLICY_TOPIC_EVIDENCE_DESTINATION_NOT_WORKING_DNS_ERROR_TYPE_UNKNOWN"
  /// : Not specified or unknown.
  /// - "HOSTNAME_NOT_FOUND" : Host name not found in DNS when fetching landing
  /// page.
  /// - "GOOGLE_CRAWLER_DNS_ISSUE" : Google could not crawl the landing page
  /// when communicating with DNS.
  core.String? dnsErrorType;

  /// The full URL that didn't work.
  core.String? expandedUri;

  /// The HTTP error code.
  core.String? httpErrorCode;

  /// The last time the error was seen when navigating to URL.
  core.String? lastCheckedTime;

  $AdPolicyTopicEvidenceDestinationNotWorking({
    this.device,
    this.dnsErrorType,
    this.expandedUri,
    this.httpErrorCode,
    this.lastCheckedTime,
  });

  $AdPolicyTopicEvidenceDestinationNotWorking.fromJson(core.Map json_)
    : this(
        device: json_['device'] as core.String?,
        dnsErrorType: json_['dnsErrorType'] as core.String?,
        expandedUri: json_['expandedUri'] as core.String?,
        httpErrorCode: json_['httpErrorCode'] as core.String?,
        lastCheckedTime: json_['lastCheckedTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final device = this.device;
    final dnsErrorType = this.dnsErrorType;
    final expandedUri = this.expandedUri;
    final httpErrorCode = this.httpErrorCode;
    final lastCheckedTime = this.lastCheckedTime;
    return {
      'device': ?device,
      'dnsErrorType': ?dnsErrorType,
      'expandedUri': ?expandedUri,
      'httpErrorCode': ?httpErrorCode,
      'lastCheckedTime': ?lastCheckedTime,
    };
  }
}

/// Used by:
///
/// - displayvideo:v3 : AdPolicyTopicEvidenceDestinationTextList
/// - displayvideo:v4 : AdPolicyTopicEvidenceDestinationTextList
class $AdPolicyTopicEvidenceDestinationTextList {
  /// Destination text that caused the policy finding.
  core.List<core.String>? destinationTexts;

  $AdPolicyTopicEvidenceDestinationTextList({this.destinationTexts});

  $AdPolicyTopicEvidenceDestinationTextList.fromJson(core.Map json_)
    : this(
        destinationTexts: (json_['destinationTexts'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final destinationTexts = this.destinationTexts;
    return {'destinationTexts': ?destinationTexts};
  }
}

/// Used by:
///
/// - displayvideo:v3 : AdPolicyTopicEvidenceLegalRemovalDmca
/// - displayvideo:v4 : AdPolicyTopicEvidenceLegalRemovalDmca
class $AdPolicyTopicEvidenceLegalRemovalDmca {
  /// The entity who made the legal complaint.
  core.String? complainant;

  $AdPolicyTopicEvidenceLegalRemovalDmca({this.complainant});

  $AdPolicyTopicEvidenceLegalRemovalDmca.fromJson(core.Map json_)
    : this(complainant: json_['complainant'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final complainant = this.complainant;
    return {'complainant': ?complainant};
  }
}

/// Used by:
///
/// - displayvideo:v3 : AdPolicyTopicEvidenceLegalRemovalLocalLegal
/// - displayvideo:v4 : AdPolicyTopicEvidenceLegalRemovalLocalLegal
class $AdPolicyTopicEvidenceLegalRemovalLocalLegal {
  /// Type of law for the legal notice.
  core.String? lawType;

  $AdPolicyTopicEvidenceLegalRemovalLocalLegal({this.lawType});

  $AdPolicyTopicEvidenceLegalRemovalLocalLegal.fromJson(core.Map json_)
    : this(lawType: json_['lawType'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final lawType = this.lawType;
    return {'lawType': ?lawType};
  }
}

/// Used by:
///
/// - displayvideo:v2 : AdUrl
/// - displayvideo:v3 : AdUrl
/// - displayvideo:v4 : AdUrl
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

  $AdUrl({this.type, this.url});

  $AdUrl.fromJson(core.Map json_)
    : this(
        type: json_['type'] as core.String?,
        url: json_['url'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final type = this.type;
    final url = this.url;
    return {'type': ?type, 'url': ?url};
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
/// - content:v2.1 : BuiltInSimpleActionAdditionalContent
/// - merchantapi:issueresolution_v1 : AdditionalContent
class $AdditionalContent {
  /// Long text organized into paragraphs.
  core.List<core.String>? paragraphs;

  /// Title of the additional content;
  core.String? title;

  $AdditionalContent({this.paragraphs, this.title});

  $AdditionalContent.fromJson(core.Map json_)
    : this(
        paragraphs: (json_['paragraphs'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        title: json_['title'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final paragraphs = this.paragraphs;
    final title = this.title;
    return {'paragraphs': ?paragraphs, 'title': ?title};
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
/// - displayvideo:v3 : Adloox
/// - displayvideo:v4 : Adloox
class $Adloox {
  /// Adult and Explicit Sexual Content
  /// [GARM](https://wfanet.org/leadership/garm/about-garm) risk ranges to
  /// exclude.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "GARM_RISK_EXCLUSION_UNSPECIFIED" : This enum is only a placeholder and
  /// it doesn't specify any GARM risk exclusion option.
  /// - "GARM_RISK_EXCLUSION_FLOOR" : Exclude floor risk.
  /// - "GARM_RISK_EXCLUSION_HIGH" : Exclude high and floor risk.
  /// - "GARM_RISK_EXCLUSION_MEDIUM" : Exclude medium, high, and floor risk.
  /// - "GARM_RISK_EXCLUSION_LOW" : Exclude all levels of risk (low, medium,
  /// high and floor).
  core.String? adultExplicitSexualContent;

  /// Arms and Ammunition Content
  /// [GARM](https://wfanet.org/leadership/garm/about-garm) risk ranges to
  /// exclude.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "GARM_RISK_EXCLUSION_UNSPECIFIED" : This enum is only a placeholder and
  /// it doesn't specify any GARM risk exclusion option.
  /// - "GARM_RISK_EXCLUSION_FLOOR" : Exclude floor risk.
  /// - "GARM_RISK_EXCLUSION_HIGH" : Exclude high and floor risk.
  /// - "GARM_RISK_EXCLUSION_MEDIUM" : Exclude medium, high, and floor risk.
  /// - "GARM_RISK_EXCLUSION_LOW" : Exclude all levels of risk (low, medium,
  /// high and floor).
  core.String? armsAmmunitionContent;

  /// Crime and Harmful Acts Content
  /// [GARM](https://wfanet.org/leadership/garm/about-garm) risk ranges to
  /// exclude.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "GARM_RISK_EXCLUSION_UNSPECIFIED" : This enum is only a placeholder and
  /// it doesn't specify any GARM risk exclusion option.
  /// - "GARM_RISK_EXCLUSION_FLOOR" : Exclude floor risk.
  /// - "GARM_RISK_EXCLUSION_HIGH" : Exclude high and floor risk.
  /// - "GARM_RISK_EXCLUSION_MEDIUM" : Exclude medium, high, and floor risk.
  /// - "GARM_RISK_EXCLUSION_LOW" : Exclude all levels of risk (low, medium,
  /// high and floor).
  core.String? crimeHarmfulActsIndividualsSocietyHumanRightsViolationsContent;

  /// Death, Injury, or Military Conflict Content
  /// [GARM](https://wfanet.org/leadership/garm/about-garm) risk ranges to
  /// exclude.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "GARM_RISK_EXCLUSION_UNSPECIFIED" : This enum is only a placeholder and
  /// it doesn't specify any GARM risk exclusion option.
  /// - "GARM_RISK_EXCLUSION_FLOOR" : Exclude floor risk.
  /// - "GARM_RISK_EXCLUSION_HIGH" : Exclude high and floor risk.
  /// - "GARM_RISK_EXCLUSION_MEDIUM" : Exclude medium, high, and floor risk.
  /// - "GARM_RISK_EXCLUSION_LOW" : Exclude all levels of risk (low, medium,
  /// high and floor).
  core.String? deathInjuryMilitaryConflictContent;

  /// Debated Sensitive Social Issue Content
  /// [GARM](https://wfanet.org/leadership/garm/about-garm) risk ranges to
  /// exclude.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "GARM_RISK_EXCLUSION_UNSPECIFIED" : This enum is only a placeholder and
  /// it doesn't specify any GARM risk exclusion option.
  /// - "GARM_RISK_EXCLUSION_FLOOR" : Exclude floor risk.
  /// - "GARM_RISK_EXCLUSION_HIGH" : Exclude high and floor risk.
  /// - "GARM_RISK_EXCLUSION_MEDIUM" : Exclude medium, high, and floor risk.
  /// - "GARM_RISK_EXCLUSION_LOW" : Exclude all levels of risk (low, medium,
  /// high and floor).
  core.String? debatedSensitiveSocialIssueContent;

  /// IAB viewability threshold for display ads.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "DISPLAY_IAB_VIEWABILITY_UNSPECIFIED" : Default value when not specified
  /// or is unknown in this version.
  /// - "DISPLAY_IAB_VIEWABILITY_10" : 10%+ in view (IAB display viewability
  /// standard).
  /// - "DISPLAY_IAB_VIEWABILITY_20" : 20%+ in view (IAB display viewability
  /// standard).
  /// - "DISPLAY_IAB_VIEWABILITY_35" : 35%+ in view (IAB display viewability
  /// standard).
  /// - "DISPLAY_IAB_VIEWABILITY_50" : 50%+ in view (IAB display viewability
  /// standard).
  /// - "DISPLAY_IAB_VIEWABILITY_75" : 75%+ in view (IAB display viewability
  /// standard).
  core.String? displayIabViewability;

  /// Scope3 categories to exclude.
  core.List<core.String>? excludedAdlooxCategories;

  /// Scope3's fraud IVT MFA categories to exclude.
  ///
  /// Optional.
  core.List<core.String>? excludedFraudIvtMfaCategories;

  /// Hate Speech and Acts of Aggression Content
  /// [GARM](https://wfanet.org/leadership/garm/about-garm) risk ranges to
  /// exclude.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "GARM_RISK_EXCLUSION_UNSPECIFIED" : This enum is only a placeholder and
  /// it doesn't specify any GARM risk exclusion option.
  /// - "GARM_RISK_EXCLUSION_FLOOR" : Exclude floor risk.
  /// - "GARM_RISK_EXCLUSION_HIGH" : Exclude high and floor risk.
  /// - "GARM_RISK_EXCLUSION_MEDIUM" : Exclude medium, high, and floor risk.
  /// - "GARM_RISK_EXCLUSION_LOW" : Exclude all levels of risk (low, medium,
  /// high and floor).
  core.String? hateSpeechActsAggressionContent;

  /// Illegal Drugs/Alcohol Content
  /// [GARM](https://wfanet.org/leadership/garm/about-garm) risk ranges to
  /// exclude.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "GARM_RISK_EXCLUSION_UNSPECIFIED" : This enum is only a placeholder and
  /// it doesn't specify any GARM risk exclusion option.
  /// - "GARM_RISK_EXCLUSION_FLOOR" : Exclude floor risk.
  /// - "GARM_RISK_EXCLUSION_HIGH" : Exclude high and floor risk.
  /// - "GARM_RISK_EXCLUSION_MEDIUM" : Exclude medium, high, and floor risk.
  /// - "GARM_RISK_EXCLUSION_LOW" : Exclude all levels of risk (low, medium,
  /// high and floor).
  core.String? illegalDrugsTobaccoEcigarettesVapingAlcoholContent;

  /// Misinformation Content
  /// [GARM](https://wfanet.org/leadership/garm/about-garm) risk ranges to
  /// exclude.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "GARM_RISK_EXCLUSION_UNSPECIFIED" : This enum is only a placeholder and
  /// it doesn't specify any GARM risk exclusion option.
  /// - "GARM_RISK_EXCLUSION_FLOOR" : Exclude floor risk.
  /// - "GARM_RISK_EXCLUSION_HIGH" : Exclude high and floor risk.
  /// - "GARM_RISK_EXCLUSION_MEDIUM" : Exclude medium, high, and floor risk.
  /// - "GARM_RISK_EXCLUSION_LOW" : Exclude all levels of risk (low, medium,
  /// high and floor).
  core.String? misinformationContent;

  /// Obscenity and Profanity Content
  /// [GARM](https://wfanet.org/leadership/garm/about-garm) risk ranges to
  /// exclude.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "GARM_RISK_EXCLUSION_UNSPECIFIED" : This enum is only a placeholder and
  /// it doesn't specify any GARM risk exclusion option.
  /// - "GARM_RISK_EXCLUSION_FLOOR" : Exclude floor risk.
  /// - "GARM_RISK_EXCLUSION_HIGH" : Exclude high and floor risk.
  /// - "GARM_RISK_EXCLUSION_MEDIUM" : Exclude medium, high, and floor risk.
  /// - "GARM_RISK_EXCLUSION_LOW" : Exclude all levels of risk (low, medium,
  /// high and floor).
  core.String? obscenityProfanityContent;

  /// Online Piracy Content
  /// [GARM](https://wfanet.org/leadership/garm/about-garm) risk ranges to
  /// exclude.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "GARM_RISK_EXCLUSION_UNSPECIFIED" : This enum is only a placeholder and
  /// it doesn't specify any GARM risk exclusion option.
  /// - "GARM_RISK_EXCLUSION_FLOOR" : Exclude floor risk.
  /// - "GARM_RISK_EXCLUSION_HIGH" : Exclude high and floor risk.
  /// - "GARM_RISK_EXCLUSION_MEDIUM" : Exclude medium, high, and floor risk.
  /// - "GARM_RISK_EXCLUSION_LOW" : Exclude all levels of risk (low, medium,
  /// high and floor).
  core.String? onlinePiracyContent;

  /// Spam or Harmful Content
  /// [GARM](https://wfanet.org/leadership/garm/about-garm) risk ranges to
  /// exclude.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "GARM_RISK_EXCLUSION_UNSPECIFIED" : This enum is only a placeholder and
  /// it doesn't specify any GARM risk exclusion option.
  /// - "GARM_RISK_EXCLUSION_FLOOR" : Exclude floor risk.
  /// - "GARM_RISK_EXCLUSION_HIGH" : Exclude high and floor risk.
  /// - "GARM_RISK_EXCLUSION_MEDIUM" : Exclude medium, high, and floor risk.
  /// - "GARM_RISK_EXCLUSION_LOW" : Exclude all levels of risk (low, medium,
  /// high and floor).
  core.String? spamHarmfulContent;

  /// Terrorism Content [GARM](https://wfanet.org/leadership/garm/about-garm)
  /// risk ranges to exclude.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "GARM_RISK_EXCLUSION_UNSPECIFIED" : This enum is only a placeholder and
  /// it doesn't specify any GARM risk exclusion option.
  /// - "GARM_RISK_EXCLUSION_FLOOR" : Exclude floor risk.
  /// - "GARM_RISK_EXCLUSION_HIGH" : Exclude high and floor risk.
  /// - "GARM_RISK_EXCLUSION_MEDIUM" : Exclude medium, high, and floor risk.
  /// - "GARM_RISK_EXCLUSION_LOW" : Exclude all levels of risk (low, medium,
  /// high and floor).
  core.String? terrorismContent;

  /// IAB viewability threshold for video ads.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "VIDEO_IAB_VIEWABILITY_UNSPECIFIED" : Default value when not specified
  /// or is unknown in this version.
  /// - "VIDEO_IAB_VIEWABILITY_10" : 10%+ in view (IAB video viewability
  /// standard).
  /// - "VIDEO_IAB_VIEWABILITY_20" : 20%+ in view (IAB video viewability
  /// standard).
  /// - "VIDEO_IAB_VIEWABILITY_35" : 35%+ in view (IAB video viewability
  /// standard).
  /// - "VIDEO_IAB_VIEWABILITY_50" : 50%+ in view (IAB video viewability
  /// standard).
  /// - "VIDEO_IAB_VIEWABILITY_75" : 75%+ in view (IAB video viewability
  /// standard).
  core.String? videoIabViewability;

  $Adloox({
    this.adultExplicitSexualContent,
    this.armsAmmunitionContent,
    this.crimeHarmfulActsIndividualsSocietyHumanRightsViolationsContent,
    this.deathInjuryMilitaryConflictContent,
    this.debatedSensitiveSocialIssueContent,
    this.displayIabViewability,
    this.excludedAdlooxCategories,
    this.excludedFraudIvtMfaCategories,
    this.hateSpeechActsAggressionContent,
    this.illegalDrugsTobaccoEcigarettesVapingAlcoholContent,
    this.misinformationContent,
    this.obscenityProfanityContent,
    this.onlinePiracyContent,
    this.spamHarmfulContent,
    this.terrorismContent,
    this.videoIabViewability,
  });

  $Adloox.fromJson(core.Map json_)
    : this(
        adultExplicitSexualContent:
            json_['adultExplicitSexualContent'] as core.String?,
        armsAmmunitionContent: json_['armsAmmunitionContent'] as core.String?,
        crimeHarmfulActsIndividualsSocietyHumanRightsViolationsContent:
            json_['crimeHarmfulActsIndividualsSocietyHumanRightsViolationsContent']
                as core.String?,
        deathInjuryMilitaryConflictContent:
            json_['deathInjuryMilitaryConflictContent'] as core.String?,
        debatedSensitiveSocialIssueContent:
            json_['debatedSensitiveSocialIssueContent'] as core.String?,
        displayIabViewability: json_['displayIabViewability'] as core.String?,
        excludedAdlooxCategories:
            (json_['excludedAdlooxCategories'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        excludedFraudIvtMfaCategories:
            (json_['excludedFraudIvtMfaCategories'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        hateSpeechActsAggressionContent:
            json_['hateSpeechActsAggressionContent'] as core.String?,
        illegalDrugsTobaccoEcigarettesVapingAlcoholContent:
            json_['illegalDrugsTobaccoEcigarettesVapingAlcoholContent']
                as core.String?,
        misinformationContent: json_['misinformationContent'] as core.String?,
        obscenityProfanityContent:
            json_['obscenityProfanityContent'] as core.String?,
        onlinePiracyContent: json_['onlinePiracyContent'] as core.String?,
        spamHarmfulContent: json_['spamHarmfulContent'] as core.String?,
        terrorismContent: json_['terrorismContent'] as core.String?,
        videoIabViewability: json_['videoIabViewability'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final adultExplicitSexualContent = this.adultExplicitSexualContent;
    final armsAmmunitionContent = this.armsAmmunitionContent;
    final crimeHarmfulActsIndividualsSocietyHumanRightsViolationsContent =
        this.crimeHarmfulActsIndividualsSocietyHumanRightsViolationsContent;
    final deathInjuryMilitaryConflictContent =
        this.deathInjuryMilitaryConflictContent;
    final debatedSensitiveSocialIssueContent =
        this.debatedSensitiveSocialIssueContent;
    final displayIabViewability = this.displayIabViewability;
    final excludedAdlooxCategories = this.excludedAdlooxCategories;
    final excludedFraudIvtMfaCategories = this.excludedFraudIvtMfaCategories;
    final hateSpeechActsAggressionContent =
        this.hateSpeechActsAggressionContent;
    final illegalDrugsTobaccoEcigarettesVapingAlcoholContent =
        this.illegalDrugsTobaccoEcigarettesVapingAlcoholContent;
    final misinformationContent = this.misinformationContent;
    final obscenityProfanityContent = this.obscenityProfanityContent;
    final onlinePiracyContent = this.onlinePiracyContent;
    final spamHarmfulContent = this.spamHarmfulContent;
    final terrorismContent = this.terrorismContent;
    final videoIabViewability = this.videoIabViewability;
    return {
      'adultExplicitSexualContent': ?adultExplicitSexualContent,
      'armsAmmunitionContent': ?armsAmmunitionContent,
      'crimeHarmfulActsIndividualsSocietyHumanRightsViolationsContent':
          ?crimeHarmfulActsIndividualsSocietyHumanRightsViolationsContent,
      'deathInjuryMilitaryConflictContent': ?deathInjuryMilitaryConflictContent,
      'debatedSensitiveSocialIssueContent': ?debatedSensitiveSocialIssueContent,
      'displayIabViewability': ?displayIabViewability,
      'excludedAdlooxCategories': ?excludedAdlooxCategories,
      'excludedFraudIvtMfaCategories': ?excludedFraudIvtMfaCategories,
      'hateSpeechActsAggressionContent': ?hateSpeechActsAggressionContent,
      'illegalDrugsTobaccoEcigarettesVapingAlcoholContent':
          ?illegalDrugsTobaccoEcigarettesVapingAlcoholContent,
      'misinformationContent': ?misinformationContent,
      'obscenityProfanityContent': ?obscenityProfanityContent,
      'onlinePiracyContent': ?onlinePiracyContent,
      'spamHarmfulContent': ?spamHarmfulContent,
      'terrorismContent': ?terrorismContent,
      'videoIabViewability': ?videoIabViewability,
    };
  }
}

/// Used by:
///
/// - displayvideo:v3 : AdvertiserBillingConfig
/// - displayvideo:v4 : AdvertiserBillingConfig
class $AdvertiserBillingConfig {
  /// The ID of a billing profile assigned to the advertiser.
  ///
  /// Required.
  core.String? billingProfileId;

  $AdvertiserBillingConfig({this.billingProfileId});

  $AdvertiserBillingConfig.fromJson(core.Map json_)
    : this(billingProfileId: json_['billingProfileId'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final billingProfileId = this.billingProfileId;
    return {'billingProfileId': ?billingProfileId};
  }
}

/// Used by:
///
/// - displayvideo:v2 : AdvertiserCreativeConfig
/// - displayvideo:v3 : AdvertiserCreativeConfig
/// - displayvideo:v4 : AdvertiserCreativeConfig
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
        dynamicCreativeEnabled: json_['dynamicCreativeEnabled'] as core.bool?,
        iasClientId: json_['iasClientId'] as core.String?,
        obaComplianceDisabled: json_['obaComplianceDisabled'] as core.bool?,
        videoCreativeDataSharingAuthorized:
            json_['videoCreativeDataSharingAuthorized'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dynamicCreativeEnabled = this.dynamicCreativeEnabled;
    final iasClientId = this.iasClientId;
    final obaComplianceDisabled = this.obaComplianceDisabled;
    final videoCreativeDataSharingAuthorized =
        this.videoCreativeDataSharingAuthorized;
    return {
      'dynamicCreativeEnabled': ?dynamicCreativeEnabled,
      'iasClientId': ?iasClientId,
      'obaComplianceDisabled': ?obaComplianceDisabled,
      'videoCreativeDataSharingAuthorized': ?videoCreativeDataSharingAuthorized,
    };
  }
}

/// Used by:
///
/// - displayvideo:v2 : AdvertiserGeneralConfig
/// - displayvideo:v3 : AdvertiserGeneralConfig
/// - displayvideo:v4 : AdvertiserGeneralConfig
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

  $AdvertiserGeneralConfig({this.currencyCode, this.domainUrl, this.timeZone});

  $AdvertiserGeneralConfig.fromJson(core.Map json_)
    : this(
        currencyCode: json_['currencyCode'] as core.String?,
        domainUrl: json_['domainUrl'] as core.String?,
        timeZone: json_['timeZone'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final currencyCode = this.currencyCode;
    final domainUrl = this.domainUrl;
    final timeZone = this.timeZone;
    return {
      'currencyCode': ?currencyCode,
      'domainUrl': ?domainUrl,
      'timeZone': ?timeZone,
    };
  }
}

/// Used by:
///
/// - displayvideo:v2 : AdvertiserTargetingConfig
/// - displayvideo:v3 : AdvertiserTargetingConfig
/// - displayvideo:v4 : AdvertiserTargetingConfig
class $AdvertiserTargetingConfig {
  /// Whether or not connected TV devices are exempt from viewability targeting
  /// for all video line items under the advertiser.
  core.bool? exemptTvFromViewabilityTargeting;

  $AdvertiserTargetingConfig({this.exemptTvFromViewabilityTargeting});

  $AdvertiserTargetingConfig.fromJson(core.Map json_)
    : this(
        exemptTvFromViewabilityTargeting:
            json_['exemptTvFromViewabilityTargeting'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final exemptTvFromViewabilityTargeting =
        this.exemptTvFromViewabilityTargeting;
    return {
      'exemptTvFromViewabilityTargeting': ?exemptTvFromViewabilityTargeting,
    };
  }
}

/// Used by:
///
/// - displayvideo:v2 : AgeRangeAssignedTargetingOptionDetails
/// - displayvideo:v3 : AgeRangeAssignedTargetingOptionDetails
/// - displayvideo:v4 : AgeRangeAssignedTargetingOptionDetails
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

  $AgeRangeAssignedTargetingOptionDetails({this.ageRange});

  $AgeRangeAssignedTargetingOptionDetails.fromJson(core.Map json_)
    : this(ageRange: json_['ageRange'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final ageRange = this.ageRange;
    return {'ageRange': ?ageRange};
  }
}

/// Used by:
///
/// - displayvideo:v2 : AgeRangeTargetingOptionDetails
/// - displayvideo:v3 : AgeRangeTargetingOptionDetails
/// - displayvideo:v4 : AgeRangeTargetingOptionDetails
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

  $AgeRangeTargetingOptionDetails({this.ageRange});

  $AgeRangeTargetingOptionDetails.fromJson(core.Map json_)
    : this(ageRange: json_['ageRange'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final ageRange = this.ageRange;
    return {'ageRange': ?ageRange};
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
/// - displayvideo:v2 : AppAssignedTargetingOptionDetails
/// - displayvideo:v3 : AppAssignedTargetingOptionDetails
/// - displayvideo:v4 : AppAssignedTargetingOptionDetails
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
  /// - "APP_PLATFORM_VIDAA" : The app platform is Vidaa.
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
        appId: json_['appId'] as core.String?,
        appPlatform: json_['appPlatform'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        negative: json_['negative'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final appId = this.appId;
    final appPlatform = this.appPlatform;
    final displayName = this.displayName;
    final negative = this.negative;
    return {
      'appId': ?appId,
      'appPlatform': ?appPlatform,
      'displayName': ?displayName,
      'negative': ?negative,
    };
  }
}

/// Used by:
///
/// - displayvideo:v2 : AppCategoryAssignedTargetingOptionDetails
/// - displayvideo:v3 : AppCategoryAssignedTargetingOptionDetails
/// - displayvideo:v4 : AppCategoryAssignedTargetingOptionDetails
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
        displayName: json_['displayName'] as core.String?,
        negative: json_['negative'] as core.bool?,
        targetingOptionId: json_['targetingOptionId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final displayName = this.displayName;
    final negative = this.negative;
    final targetingOptionId = this.targetingOptionId;
    return {
      'displayName': ?displayName,
      'negative': ?negative,
      'targetingOptionId': ?targetingOptionId,
    };
  }
}

/// Used by:
///
/// - displayvideo:v2 : AppCategoryTargetingOptionDetails
/// - displayvideo:v3 : AppCategoryTargetingOptionDetails
/// - displayvideo:v4 : AppCategoryTargetingOptionDetails
class $AppCategoryTargetingOptionDetails {
  /// The name of the app collection.
  ///
  /// Output only.
  core.String? displayName;

  $AppCategoryTargetingOptionDetails({this.displayName});

  $AppCategoryTargetingOptionDetails.fromJson(core.Map json_)
    : this(displayName: json_['displayName'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final displayName = this.displayName;
    return {'displayName': ?displayName};
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
/// - displayvideo:v2 : Asset
/// - displayvideo:v3 : Asset
/// - displayvideo:v4 : Asset
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

  $Asset({this.content, this.mediaId});

  $Asset.fromJson(core.Map json_)
    : this(
        content: json_['content'] as core.String?,
        mediaId: json_['mediaId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final content = this.content;
    final mediaId = this.mediaId;
    return {'content': ?content, 'mediaId': ?mediaId};
  }
}

/// Used by:
///
/// - displayvideo:v2 : AssignedInventorySource
/// - displayvideo:v3 : AssignedInventorySource
/// - displayvideo:v4 : AssignedInventorySource
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
            json_['assignedInventorySourceId'] as core.String?,
        inventorySourceId: json_['inventorySourceId'] as core.String?,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final assignedInventorySourceId = this.assignedInventorySourceId;
    final inventorySourceId = this.inventorySourceId;
    final name = this.name;
    return {
      'assignedInventorySourceId': ?assignedInventorySourceId,
      'inventorySourceId': ?inventorySourceId,
      'name': ?name,
    };
  }
}

/// Used by:
///
/// - displayvideo:v2 : AssignedLocation
/// - displayvideo:v3 : AssignedLocation
/// - displayvideo:v4 : AssignedLocation
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
        assignedLocationId: json_['assignedLocationId'] as core.String?,
        name: json_['name'] as core.String?,
        targetingOptionId: json_['targetingOptionId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final assignedLocationId = this.assignedLocationId;
    final name = this.name;
    final targetingOptionId = this.targetingOptionId;
    return {
      'assignedLocationId': ?assignedLocationId,
      'name': ?name,
      'targetingOptionId': ?targetingOptionId,
    };
  }
}

/// Used by:
///
/// - displayvideo:v2 : AssignedUserRole
/// - displayvideo:v3 : AssignedUserRole
/// - displayvideo:v4 : AssignedUserRole
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
        advertiserId: json_['advertiserId'] as core.String?,
        assignedUserRoleId: json_['assignedUserRoleId'] as core.String?,
        partnerId: json_['partnerId'] as core.String?,
        userRole: json_['userRole'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final advertiserId = this.advertiserId;
    final assignedUserRoleId = this.assignedUserRoleId;
    final partnerId = this.partnerId;
    final userRole = this.userRole;
    return {
      'advertiserId': ?advertiserId,
      'assignedUserRoleId': ?assignedUserRoleId,
      'partnerId': ?partnerId,
      'userRole': ?userRole,
    };
  }
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

  $Attribution({this.numIntegralSteps});

  $Attribution.fromJson(core.Map json_)
    : this(numIntegralSteps: json_['numIntegralSteps'] as core.int?);

  core.Map<core.String, core.dynamic> toJson() {
    final numIntegralSteps = this.numIntegralSteps;
    return {'numIntegralSteps': ?numIntegralSteps};
  }
}

/// Used by:
///
/// - datamanager:v1 : RemoveAllAudienceMembersResponse
/// - datamanager:v1 : RemoveAudienceMembersResponse
class $AudienceMembersResponse {
  /// The auto-generated ID of the request.
  core.String? requestId;

  $AudienceMembersResponse({this.requestId});

  $AudienceMembersResponse.fromJson(core.Map json_)
    : this(requestId: json_['requestId'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final requestId = this.requestId;
    return {'requestId': ?requestId};
  }
}

/// Used by:
///
/// - displayvideo:v2 : AudioContentTypeAssignedTargetingOptionDetails
/// - displayvideo:v3 : AudioContentTypeAssignedTargetingOptionDetails
/// - displayvideo:v4 : AudioContentTypeAssignedTargetingOptionDetails
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
  /// - "AUDIO_CONTENT_TYPE_CATCH_UP_RADIO" : The audio content type is catch-up
  /// radio.
  /// - "AUDIO_CONTENT_TYPE_WEB_RADIO" : The audio content type is web radio.
  /// - "AUDIO_CONTENT_TYPE_VIDEO_GAME" : The audio content type is video game.
  /// - "AUDIO_CONTENT_TYPE_TEXT_TO_SPEECH" : The audio content type is
  /// text-to-speech.
  core.String? audioContentType;

  $AudioContentTypeAssignedTargetingOptionDetails({this.audioContentType});

  $AudioContentTypeAssignedTargetingOptionDetails.fromJson(core.Map json_)
    : this(audioContentType: json_['audioContentType'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final audioContentType = this.audioContentType;
    return {'audioContentType': ?audioContentType};
  }
}

/// Used by:
///
/// - displayvideo:v2 : AudioContentTypeTargetingOptionDetails
/// - displayvideo:v3 : AudioContentTypeTargetingOptionDetails
/// - displayvideo:v4 : AudioContentTypeTargetingOptionDetails
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
  /// - "AUDIO_CONTENT_TYPE_CATCH_UP_RADIO" : The audio content type is catch-up
  /// radio.
  /// - "AUDIO_CONTENT_TYPE_WEB_RADIO" : The audio content type is web radio.
  /// - "AUDIO_CONTENT_TYPE_VIDEO_GAME" : The audio content type is video game.
  /// - "AUDIO_CONTENT_TYPE_TEXT_TO_SPEECH" : The audio content type is
  /// text-to-speech.
  core.String? audioContentType;

  $AudioContentTypeTargetingOptionDetails({this.audioContentType});

  $AudioContentTypeTargetingOptionDetails.fromJson(core.Map json_)
    : this(audioContentType: json_['audioContentType'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final audioContentType = this.audioContentType;
    return {'audioContentType': ?audioContentType};
  }
}

/// Used by:
///
/// - displayvideo:v2 : AudioVideoOffset
/// - displayvideo:v3 : AudioVideoOffset
/// - displayvideo:v4 : AudioVideoOffset
class $AudioVideoOffset {
  /// The offset in percentage of the audio or video duration.
  ///
  /// Optional.
  core.String? percentage;

  /// The offset in seconds from the start of the audio or video.
  ///
  /// Optional.
  core.String? seconds;

  $AudioVideoOffset({this.percentage, this.seconds});

  $AudioVideoOffset.fromJson(core.Map json_)
    : this(
        percentage: json_['percentage'] as core.String?,
        seconds: json_['seconds'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final percentage = this.percentage;
    final seconds = this.seconds;
    return {'percentage': ?percentage, 'seconds': ?seconds};
  }
}

/// Used by:
///
/// - displayvideo:v2 : AuditAdvertiserResponse
/// - displayvideo:v3 : AuditAdvertiserResponse
/// - displayvideo:v4 : AuditAdvertiserResponse
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
        adGroupCriteriaCount: json_['adGroupCriteriaCount'] as core.String?,
        campaignCriteriaCount: json_['campaignCriteriaCount'] as core.String?,
        channelsCount: json_['channelsCount'] as core.String?,
        negativeKeywordListsCount:
            json_['negativeKeywordListsCount'] as core.String?,
        negativelyTargetedChannelsCount:
            json_['negativelyTargetedChannelsCount'] as core.String?,
        usedCampaignsCount: json_['usedCampaignsCount'] as core.String?,
        usedInsertionOrdersCount:
            json_['usedInsertionOrdersCount'] as core.String?,
        usedLineItemsCount: json_['usedLineItemsCount'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final adGroupCriteriaCount = this.adGroupCriteriaCount;
    final campaignCriteriaCount = this.campaignCriteriaCount;
    final channelsCount = this.channelsCount;
    final negativeKeywordListsCount = this.negativeKeywordListsCount;
    final negativelyTargetedChannelsCount =
        this.negativelyTargetedChannelsCount;
    final usedCampaignsCount = this.usedCampaignsCount;
    final usedInsertionOrdersCount = this.usedInsertionOrdersCount;
    final usedLineItemsCount = this.usedLineItemsCount;
    return {
      'adGroupCriteriaCount': ?adGroupCriteriaCount,
      'campaignCriteriaCount': ?campaignCriteriaCount,
      'channelsCount': ?channelsCount,
      'negativeKeywordListsCount': ?negativeKeywordListsCount,
      'negativelyTargetedChannelsCount': ?negativelyTargetedChannelsCount,
      'usedCampaignsCount': ?usedCampaignsCount,
      'usedInsertionOrdersCount': ?usedInsertionOrdersCount,
      'usedLineItemsCount': ?usedLineItemsCount,
    };
  }
}

/// Used by:
///
/// - accesscontextmanager:v1 : AuditLogConfig
/// - agentidentity:v1 : AuditLogConfig
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
/// - cloudresourcemanager:v2 : AuditLogConfig
/// - cloudresourcemanager:v3 : AuditLogConfig
/// - config:v1 : AuditLogConfig
/// - connectors:v1 : AuditLogConfig
/// - contactcenterinsights:v1 : GoogleIamV1AuditLogConfig
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
/// - metastore:v1 : AuditLogConfig
/// - ml:v1 : GoogleIamV1__AuditLogConfig
/// - networkconnectivity:v1 : AuditLogConfig
/// - networkmanagement:v1 : AuditLogConfig
/// - networksecurity:v1 : GoogleIamV1AuditLogConfig
/// - networkservices:v1 : AuditLogConfig
/// - policysimulator:v1 : GoogleIamV1AuditLogConfig
/// - policytroubleshooter:v1 : GoogleIamV1AuditLogConfig
/// - policytroubleshooter:v3 : GoogleIamV1AuditLogConfig
/// - privateca:v1 : AuditLogConfig
/// - run:v1 : AuditLogConfig
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
/// - agentidentity:v1 : DisableAuthProviderRequest
/// - agentidentity:v1 : EnableAuthProviderRequest
/// - agentidentity:v1 : UndeleteAuthProviderRequest
class $AuthProviderRequest {
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

  $AuthProviderRequest({this.requestId});

  $AuthProviderRequest.fromJson(core.Map json_)
    : this(requestId: json_['requestId'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final requestId = this.requestId;
    return {'requestId': ?requestId};
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
/// - displayvideo:v2 : AuthorizedSellerStatusAssignedTargetingOptionDetails
/// - displayvideo:v3 : AuthorizedSellerStatusAssignedTargetingOptionDetails
/// - displayvideo:v4 : AuthorizedSellerStatusAssignedTargetingOptionDetails
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
        authorizedSellerStatus: json_['authorizedSellerStatus'] as core.String?,
        targetingOptionId: json_['targetingOptionId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final authorizedSellerStatus = this.authorizedSellerStatus;
    final targetingOptionId = this.targetingOptionId;
    return {
      'authorizedSellerStatus': ?authorizedSellerStatus,
      'targetingOptionId': ?targetingOptionId,
    };
  }
}

/// Used by:
///
/// - displayvideo:v2 : AuthorizedSellerStatusTargetingOptionDetails
/// - displayvideo:v3 : AuthorizedSellerStatusTargetingOptionDetails
/// - displayvideo:v4 : AuthorizedSellerStatusTargetingOptionDetails
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

  $AuthorizedSellerStatusTargetingOptionDetails({this.authorizedSellerStatus});

  $AuthorizedSellerStatusTargetingOptionDetails.fromJson(core.Map json_)
    : this(
        authorizedSellerStatus: json_['authorizedSellerStatus'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final authorizedSellerStatus = this.authorizedSellerStatus;
    return {'authorizedSellerStatus': ?authorizedSellerStatus};
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
/// - displayvideo:v2 : BrowserAssignedTargetingOptionDetails
/// - displayvideo:v3 : BrowserAssignedTargetingOptionDetails
/// - displayvideo:v4 : BrowserAssignedTargetingOptionDetails
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
        displayName: json_['displayName'] as core.String?,
        negative: json_['negative'] as core.bool?,
        targetingOptionId: json_['targetingOptionId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final displayName = this.displayName;
    final negative = this.negative;
    final targetingOptionId = this.targetingOptionId;
    return {
      'displayName': ?displayName,
      'negative': ?negative,
      'targetingOptionId': ?targetingOptionId,
    };
  }
}

/// Used by:
///
/// - displayvideo:v2 : BrowserTargetingOptionDetails
/// - displayvideo:v3 : BrowserTargetingOptionDetails
/// - displayvideo:v4 : BrowserTargetingOptionDetails
class $BrowserTargetingOptionDetails {
  /// The display name of the browser.
  ///
  /// Output only.
  core.String? displayName;

  $BrowserTargetingOptionDetails({this.displayName});

  $BrowserTargetingOptionDetails.fromJson(core.Map json_)
    : this(displayName: json_['displayName'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final displayName = this.displayName;
    return {'displayName': ?displayName};
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
/// - displayvideo:v2 : BusinessChainAssignedTargetingOptionDetails
/// - displayvideo:v3 : BusinessChainAssignedTargetingOptionDetails
/// - displayvideo:v4 : BusinessChainAssignedTargetingOptionDetails
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
        displayName: json_['displayName'] as core.String?,
        proximityRadiusAmount: (json_['proximityRadiusAmount'] as core.num?)
            ?.toDouble(),
        proximityRadiusUnit: json_['proximityRadiusUnit'] as core.String?,
        targetingOptionId: json_['targetingOptionId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final displayName = this.displayName;
    final proximityRadiusAmount = this.proximityRadiusAmount;
    final proximityRadiusUnit = this.proximityRadiusUnit;
    final targetingOptionId = this.targetingOptionId;
    return {
      'displayName': ?displayName,
      'proximityRadiusAmount': ?proximityRadiusAmount,
      'proximityRadiusUnit': ?proximityRadiusUnit,
      'targetingOptionId': ?targetingOptionId,
    };
  }
}

/// Used by:
///
/// - displayvideo:v2 : BusinessChainSearchTerms
/// - displayvideo:v3 : BusinessChainSearchTerms
/// - displayvideo:v4 : BusinessChainSearchTerms
class $BusinessChainSearchTerms {
  /// The search query for the desired business chain.
  ///
  /// The query must be the full name of the business, e.g. "KFC",
  /// "mercedes-benz".
  core.String? businessChainQuery;

  /// The search query for the desired geo region, e.g. "Seattle", "United
  /// State".
  core.String? regionQuery;

  $BusinessChainSearchTerms({this.businessChainQuery, this.regionQuery});

  $BusinessChainSearchTerms.fromJson(core.Map json_)
    : this(
        businessChainQuery: json_['businessChainQuery'] as core.String?,
        regionQuery: json_['regionQuery'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final businessChainQuery = this.businessChainQuery;
    final regionQuery = this.regionQuery;
    return {
      'businessChainQuery': ?businessChainQuery,
      'regionQuery': ?regionQuery,
    };
  }
}

/// Used by:
///
/// - displayvideo:v2 : BusinessChainTargetingOptionDetails
/// - displayvideo:v3 : BusinessChainTargetingOptionDetails
/// - displayvideo:v4 : BusinessChainTargetingOptionDetails
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
  /// - "GEO_REGION_TYPE_NATIONAL_PARK" : The geographic region is a national
  /// park.
  /// - "GEO_REGION_TYPE_BARRIO" : The geographic region is a barrio.
  /// - "GEO_REGION_TYPE_SUB_WARD" : The geographic region is a sub ward.
  /// - "GEO_REGION_TYPE_MUNICIPALITY_DISTRICT" : The geographic region is a
  /// municipality district.
  /// - "GEO_REGION_TYPE_SUB_DISTRICT" : The geographic region is a sub
  /// district.
  /// - "GEO_REGION_TYPE_QUARTER" : The geographic region is a quarter.
  /// - "GEO_REGION_TYPE_DIVISION" : The geographic region is a division.
  /// - "GEO_REGION_TYPE_COMMUNE" : The geographic region is a commune.
  /// - "GEO_REGION_TYPE_COLLOQUIAL_AREA" : The geographic region is a
  /// colloquial area.
  /// - "GEO_REGION_TYPE_POST_TOWN" : The geographic region is a post town.
  /// - "GEO_REGION_TYPE_WARD" : The geographic region is a ward.
  /// - "GEO_REGION_TYPE_TOWN" : The geographic region is a town.
  /// - "GEO_REGION_TYPE_VILLAGE" : The geographic region is a village.
  /// - "GEO_REGION_TYPE_CITY_DISTRICT" : The geographic region is a city
  /// district.
  /// - "GEO_REGION_TYPE_SUBURB" : The geographic region is a suburb.
  /// - "GEO_REGION_TYPE_HAMLET" : The geographic region is a hamlet.
  /// - "GEO_REGION_TYPE_MUNICIPAL_DISTRICT" : The geographic region is a
  /// municipal district.
  /// - "GEO_REGION_TYPE_COMMUNITY" : The geographic region is a community.
  /// - "GEO_REGION_TYPE_TOWNSHIP" : The geographic region is a township.
  /// - "GEO_REGION_TYPE_URBAN_DISTRICT" : The geographic region is an urban
  /// district.
  /// - "GEO_REGION_TYPE_RESIDENTIAL_AREA" : The geographic region is a
  /// residential area.
  /// - "GEO_REGION_TYPE_INDEPENDENT_CITY" : The geographic region is an
  /// independent city.
  /// - "GEO_REGION_TYPE_SECTOR" : The geographic region is a sector.
  /// - "GEO_REGION_TYPE_AREA" : The geographic region is an area.
  /// - "GEO_REGION_TYPE_ESTATE" : The geographic region is an estate.
  /// - "GEO_REGION_TYPE_PARISH" : The geographic region is a parish.
  /// - "GEO_REGION_TYPE_SETTLEMENT" : The geographic region is a settlement.
  /// - "GEO_REGION_TYPE_ZONE" : The geographic region is a zone.
  /// - "GEO_REGION_TYPE_COLONY" : The geographic region is a colony.
  /// - "GEO_REGION_TYPE_INDUSTRIAL_AREA" : The geographic region is an
  /// industrial area.
  /// - "GEO_REGION_TYPE_PROVINCIAL_CITY" : The geographic region is a
  /// provincial city.
  /// - "GEO_REGION_TYPE_RURAL_DISTRICT" : The geographic region is a rural
  /// district.
  core.String? geoRegionType;

  $BusinessChainTargetingOptionDetails({
    this.businessChain,
    this.geoRegion,
    this.geoRegionType,
  });

  $BusinessChainTargetingOptionDetails.fromJson(core.Map json_)
    : this(
        businessChain: json_['businessChain'] as core.String?,
        geoRegion: json_['geoRegion'] as core.String?,
        geoRegionType: json_['geoRegionType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final businessChain = this.businessChain;
    final geoRegion = this.geoRegion;
    final geoRegionType = this.geoRegionType;
    return {
      'businessChain': ?businessChain,
      'geoRegion': ?geoRegion,
      'geoRegionType': ?geoRegionType,
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
/// - displayvideo:v2 : CarrierAndIspAssignedTargetingOptionDetails
/// - displayvideo:v3 : CarrierAndIspAssignedTargetingOptionDetails
/// - displayvideo:v4 : CarrierAndIspAssignedTargetingOptionDetails
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
        displayName: json_['displayName'] as core.String?,
        negative: json_['negative'] as core.bool?,
        targetingOptionId: json_['targetingOptionId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final displayName = this.displayName;
    final negative = this.negative;
    final targetingOptionId = this.targetingOptionId;
    return {
      'displayName': ?displayName,
      'negative': ?negative,
      'targetingOptionId': ?targetingOptionId,
    };
  }
}

/// Used by:
///
/// - displayvideo:v2 : CarrierAndIspTargetingOptionDetails
/// - displayvideo:v3 : CarrierAndIspTargetingOptionDetails
/// - displayvideo:v4 : CarrierAndIspTargetingOptionDetails
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

  $CarrierAndIspTargetingOptionDetails({this.displayName, this.type});

  $CarrierAndIspTargetingOptionDetails.fromJson(core.Map json_)
    : this(
        displayName: json_['displayName'] as core.String?,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final displayName = this.displayName;
    final type = this.type;
    return {'displayName': ?displayName, 'type': ?type};
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
/// - displayvideo:v2 : CategoryAssignedTargetingOptionDetails
/// - displayvideo:v3 : CategoryAssignedTargetingOptionDetails
/// - displayvideo:v4 : CategoryAssignedTargetingOptionDetails
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
        displayName: json_['displayName'] as core.String?,
        negative: json_['negative'] as core.bool?,
        targetingOptionId: json_['targetingOptionId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final displayName = this.displayName;
    final negative = this.negative;
    final targetingOptionId = this.targetingOptionId;
    return {
      'displayName': ?displayName,
      'negative': ?negative,
      'targetingOptionId': ?targetingOptionId,
    };
  }
}

/// Used by:
///
/// - displayvideo:v2 : CategoryTargetingOptionDetails
/// - displayvideo:v3 : CategoryTargetingOptionDetails
/// - displayvideo:v4 : CategoryTargetingOptionDetails
class $CategoryTargetingOptionDetails {
  /// The display name of the category.
  ///
  /// Output only.
  core.String? displayName;

  $CategoryTargetingOptionDetails({this.displayName});

  $CategoryTargetingOptionDetails.fromJson(core.Map json_)
    : this(displayName: json_['displayName'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final displayName = this.displayName;
    return {'displayName': ?displayName};
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
/// - displayvideo:v2 : Channel
/// - displayvideo:v3 : Channel
/// - displayvideo:v4 : Channel
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
        advertiserId: json_['advertiserId'] as core.String?,
        channelId: json_['channelId'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        name: json_['name'] as core.String?,
        negativelyTargetedLineItemCount:
            json_['negativelyTargetedLineItemCount'] as core.String?,
        partnerId: json_['partnerId'] as core.String?,
        positivelyTargetedLineItemCount:
            json_['positivelyTargetedLineItemCount'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final advertiserId = this.advertiserId;
    final channelId = this.channelId;
    final displayName = this.displayName;
    final name = this.name;
    final negativelyTargetedLineItemCount =
        this.negativelyTargetedLineItemCount;
    final partnerId = this.partnerId;
    final positivelyTargetedLineItemCount =
        this.positivelyTargetedLineItemCount;
    return {
      'advertiserId': ?advertiserId,
      'channelId': ?channelId,
      'displayName': ?displayName,
      'name': ?name,
      'negativelyTargetedLineItemCount': ?negativelyTargetedLineItemCount,
      'partnerId': ?partnerId,
      'positivelyTargetedLineItemCount': ?positivelyTargetedLineItemCount,
    };
  }
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
        address: json_['address'] as core.String?,
        expiration: json_['expiration'] as core.String?,
        id: json_['id'] as core.String?,
        kind: json_['kind'] as core.String?,
        params: (json_['params'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        payload: json_['payload'] as core.bool?,
        resourceId: json_['resourceId'] as core.String?,
        resourceUri: json_['resourceUri'] as core.String?,
        token: json_['token'] as core.String?,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final address = this.address;
    final expiration = this.expiration;
    final id = this.id;
    final kind = this.kind;
    final params = this.params;
    final payload = this.payload;
    final resourceId = this.resourceId;
    final resourceUri = this.resourceUri;
    final token = this.token;
    final type = this.type;
    return {
      'address': ?address,
      'expiration': ?expiration,
      'id': ?id,
      'kind': ?kind,
      'params': ?params,
      'payload': ?payload,
      'resourceId': ?resourceId,
      'resourceUri': ?resourceUri,
      'token': ?token,
      'type': ?type,
    };
  }
}

/// Used by:
///
/// - displayvideo:v2 : ChannelAssignedTargetingOptionDetails
/// - displayvideo:v3 : ChannelAssignedTargetingOptionDetails
/// - displayvideo:v4 : ChannelAssignedTargetingOptionDetails
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

  $ChannelAssignedTargetingOptionDetails({this.channelId, this.negative});

  $ChannelAssignedTargetingOptionDetails.fromJson(core.Map json_)
    : this(
        channelId: json_['channelId'] as core.String?,
        negative: json_['negative'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final channelId = this.channelId;
    final negative = this.negative;
    return {'channelId': ?channelId, 'negative': ?negative};
  }
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
    sha256 = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  $Checksum({this.sha256});

  $Checksum.fromJson(core.Map json_)
    : this(sha256: json_['sha256'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final sha256 = this.sha256;
    return {'sha256': ?sha256};
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
/// - gkehub:v1 : ClusterUpgradeIgnoredMembership
/// - gkehub:v2 : ClusterUpgradeIgnoredMembership
class $ClusterUpgradeIgnoredMembership {
  /// Time when the membership was first set to ignored.
  core.String? ignoredTime;

  /// Reason why the membership is ignored.
  core.String? reason;

  $ClusterUpgradeIgnoredMembership({this.ignoredTime, this.reason});

  $ClusterUpgradeIgnoredMembership.fromJson(core.Map json_)
    : this(
        ignoredTime: json_['ignoredTime'] as core.String?,
        reason: json_['reason'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final ignoredTime = this.ignoredTime;
    final reason = this.reason;
    return {'ignoredTime': ?ignoredTime, 'reason': ?reason};
  }
}

/// Used by:
///
/// - gkehub:v1 : ClusterUpgradeUpgradeStatus
/// - gkehub:v2 : ClusterUpgradeUpgradeStatus
class $ClusterUpgradeUpgradeStatus {
  /// Status code of the upgrade.
  /// Possible string values are:
  /// - "CODE_UNSPECIFIED" : Required by https://linter.aip.dev/126/unspecified.
  /// - "INELIGIBLE" : The upgrade is ineligible. At the scope level, this means
  /// the upgrade is ineligible for all the clusters in the scope.
  /// - "PENDING" : The upgrade is pending. At the scope level, this means the
  /// upgrade is pending for all the clusters in the scope.
  /// - "IN_PROGRESS" : The upgrade is in progress. At the scope level, this
  /// means the upgrade is in progress for at least one cluster in the scope.
  /// - "SOAKING" : The upgrade has finished and is soaking until the soaking
  /// time is up. At the scope level, this means at least one cluster is in
  /// soaking while the rest are either soaking or complete.
  /// - "FORCED_SOAKING" : A cluster will be forced to enter soaking if an
  /// upgrade doesn't finish within a certain limit, despite it's actual status.
  /// - "COMPLETE" : The upgrade has passed all post conditions (soaking). At
  /// the scope level, this means all eligible clusters are in COMPLETE status.
  core.String? code;

  /// Reason for this status.
  core.String? reason;

  /// Last timestamp the status was updated.
  core.String? updateTime;

  $ClusterUpgradeUpgradeStatus({this.code, this.reason, this.updateTime});

  $ClusterUpgradeUpgradeStatus.fromJson(core.Map json_)
    : this(
        code: json_['code'] as core.String?,
        reason: json_['reason'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final code = this.code;
    final reason = this.reason;
    final updateTime = this.updateTime;
    return {'code': ?code, 'reason': ?reason, 'updateTime': ?updateTime};
  }
}

/// Used by:
///
/// - displayvideo:v2 : CmHybridConfig
/// - displayvideo:v3 : CmHybridConfig
/// - displayvideo:v4 : CmHybridConfig
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
        cmAccountId: json_['cmAccountId'] as core.String?,
        cmAdvertiserIds: (json_['cmAdvertiserIds'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        cmFloodlightConfigId: json_['cmFloodlightConfigId'] as core.String?,
        cmFloodlightLinkingAuthorized:
            json_['cmFloodlightLinkingAuthorized'] as core.bool?,
        cmSyncableSiteIds: (json_['cmSyncableSiteIds'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        dv360ToCmCostReportingEnabled:
            json_['dv360ToCmCostReportingEnabled'] as core.bool?,
        dv360ToCmDataSharingEnabled:
            json_['dv360ToCmDataSharingEnabled'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final cmAccountId = this.cmAccountId;
    final cmAdvertiserIds = this.cmAdvertiserIds;
    final cmFloodlightConfigId = this.cmFloodlightConfigId;
    final cmFloodlightLinkingAuthorized = this.cmFloodlightLinkingAuthorized;
    final cmSyncableSiteIds = this.cmSyncableSiteIds;
    final dv360ToCmCostReportingEnabled = this.dv360ToCmCostReportingEnabled;
    final dv360ToCmDataSharingEnabled = this.dv360ToCmDataSharingEnabled;
    return {
      'cmAccountId': ?cmAccountId,
      'cmAdvertiserIds': ?cmAdvertiserIds,
      'cmFloodlightConfigId': ?cmFloodlightConfigId,
      'cmFloodlightLinkingAuthorized': ?cmFloodlightLinkingAuthorized,
      'cmSyncableSiteIds': ?cmSyncableSiteIds,
      'dv360ToCmCostReportingEnabled': ?dv360ToCmCostReportingEnabled,
      'dv360ToCmDataSharingEnabled': ?dv360ToCmDataSharingEnabled,
    };
  }
}

/// Used by:
///
/// - displayvideo:v2 : CmTrackingAd
/// - displayvideo:v3 : CmTrackingAd
/// - displayvideo:v4 : CmTrackingAd
class $CmTrackingAd {
  /// The ad ID of the campaign manager 360 tracking Ad.
  ///
  /// Optional.
  core.String? cmAdId;

  /// The creative ID of the campaign manager 360 tracking Ad.
  ///
  /// Optional.
  core.String? cmCreativeId;

  /// The placement ID of the campaign manager 360 tracking Ad.
  ///
  /// Optional.
  core.String? cmPlacementId;

  $CmTrackingAd({this.cmAdId, this.cmCreativeId, this.cmPlacementId});

  $CmTrackingAd.fromJson(core.Map json_)
    : this(
        cmAdId: json_['cmAdId'] as core.String?,
        cmCreativeId: json_['cmCreativeId'] as core.String?,
        cmPlacementId: json_['cmPlacementId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final cmAdId = this.cmAdId;
    final cmCreativeId = this.cmCreativeId;
    final cmPlacementId = this.cmPlacementId;
    return {
      'cmAdId': ?cmAdId,
      'cmCreativeId': ?cmCreativeId,
      'cmPlacementId': ?cmPlacementId,
    };
  }
}

/// Used by:
///
/// - airquality:v1 : Color
/// - chat:v1 : Color
/// - contentwarehouse:v1 : GoogleTypeColor
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
/// - displayvideo:v2 : CombinedAudience
/// - displayvideo:v3 : CombinedAudience
/// - displayvideo:v4 : CombinedAudience
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

  $CombinedAudience({this.combinedAudienceId, this.displayName, this.name});

  $CombinedAudience.fromJson(core.Map json_)
    : this(
        combinedAudienceId: json_['combinedAudienceId'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final combinedAudienceId = this.combinedAudienceId;
    final displayName = this.displayName;
    final name = this.name;
    return {
      'combinedAudienceId': ?combinedAudienceId,
      'displayName': ?displayName,
      'name': ?name,
    };
  }
}

/// Used by:
///
/// - displayvideo:v2 : CombinedAudienceTargetingSetting
/// - displayvideo:v3 : CombinedAudienceTargetingSetting
/// - displayvideo:v4 : CombinedAudienceTargetingSetting
class $CombinedAudienceTargetingSetting {
  /// Combined audience id of combined audience targeting setting.
  ///
  /// This id is combined_audience_id.
  ///
  /// Required.
  core.String? combinedAudienceId;

  $CombinedAudienceTargetingSetting({this.combinedAudienceId});

  $CombinedAudienceTargetingSetting.fromJson(core.Map json_)
    : this(combinedAudienceId: json_['combinedAudienceId'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final combinedAudienceId = this.combinedAudienceId;
    return {'combinedAudienceId': ?combinedAudienceId};
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
/// - container:v1 : ComplianceStandard
/// - gkehub:v1 : ComplianceStandard
class $ComplianceStandard {
  /// Name of the compliance standard.
  core.String? standard;

  $ComplianceStandard({this.standard});

  $ComplianceStandard.fromJson(core.Map json_)
    : this(standard: json_['standard'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final standard = this.standard;
    return {'standard': ?standard};
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
/// - dialogflow:v2 : GoogleCloudDialogflowV2EvaluationConfigSmartComposeConfig
/// - dialogflow:v2 : GoogleCloudDialogflowV2EvaluationConfigSmartReplyConfig
class $Config {
  core.String? allowlistDocument;
  core.int? maxResultCount;

  $Config({this.allowlistDocument, this.maxResultCount});

  $Config.fromJson(core.Map json_)
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
/// - gkehub:v1 : ConfigManagementContainerOverride
/// - gkehub:v2 : ConfigManagementContainerOverride
class $ConfigManagementContainerOverride {
  /// The name of the container.
  ///
  /// Required.
  core.String? containerName;

  /// The cpu limit of the container.
  ///
  /// Use the following CPU resource units:
  /// https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#meaning-of-cpu.
  ///
  /// Optional.
  core.String? cpuLimit;

  /// The cpu request of the container.
  ///
  /// Use the following CPU resource units:
  /// https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#meaning-of-cpu.
  ///
  /// Optional.
  core.String? cpuRequest;

  /// The memory limit of the container.
  ///
  /// Use the following memory resource units:
  /// https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#meaning-of-memory.
  ///
  /// Optional.
  core.String? memoryLimit;

  /// The memory request of the container.
  ///
  /// Use the following memory resource units:
  /// https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#meaning-of-memory.
  ///
  /// Optional.
  core.String? memoryRequest;

  $ConfigManagementContainerOverride({
    this.containerName,
    this.cpuLimit,
    this.cpuRequest,
    this.memoryLimit,
    this.memoryRequest,
  });

  $ConfigManagementContainerOverride.fromJson(core.Map json_)
    : this(
        containerName: json_['containerName'] as core.String?,
        cpuLimit: json_['cpuLimit'] as core.String?,
        cpuRequest: json_['cpuRequest'] as core.String?,
        memoryLimit: json_['memoryLimit'] as core.String?,
        memoryRequest: json_['memoryRequest'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final containerName = this.containerName;
    final cpuLimit = this.cpuLimit;
    final cpuRequest = this.cpuRequest;
    final memoryLimit = this.memoryLimit;
    final memoryRequest = this.memoryRequest;
    return {
      'containerName': ?containerName,
      'cpuLimit': ?cpuLimit,
      'cpuRequest': ?cpuRequest,
      'memoryLimit': ?memoryLimit,
      'memoryRequest': ?memoryRequest,
    };
  }
}

/// Used by:
///
/// - gkehub:v1 : ConfigManagementGitConfig
/// - gkehub:v2 : ConfigManagementGitConfig
class $ConfigManagementGitConfig {
  /// The Google Cloud Service Account Email used for auth when secret_type is
  /// `gcpserviceaccount`.
  ///
  /// Optional.
  core.String? gcpServiceAccountEmail;

  /// URL for the HTTPS proxy to be used when communicating with the Git repo.
  ///
  /// Only specify when secret_type is `cookiefile`, `token`, or `none`.
  ///
  /// Optional.
  core.String? httpsProxy;

  /// The path within the Git repository that represents the top level of the
  /// repo to sync.
  ///
  /// Default: the root directory of the repository.
  ///
  /// Optional.
  core.String? policyDir;

  /// Type of secret configured for access to the Git repo.
  ///
  /// Must be one of `ssh`, `cookiefile`, `gcenode`, `token`,
  /// `gcpserviceaccount`, `githubapp` or `none`. The validation of this is
  /// case-sensitive.
  ///
  /// Required.
  core.String? secretType;

  /// The branch of the repository to sync from.
  ///
  /// Default: master.
  ///
  /// Optional.
  core.String? syncBranch;

  /// The URL of the Git repository to use as the source of truth.
  ///
  /// Required.
  core.String? syncRepo;

  /// Git revision (tag or hash) to check out.
  ///
  /// Default HEAD.
  ///
  /// Optional.
  core.String? syncRev;

  /// Period in seconds between consecutive syncs.
  ///
  /// Default: 15.
  ///
  /// Optional.
  core.String? syncWaitSecs;

  $ConfigManagementGitConfig({
    this.gcpServiceAccountEmail,
    this.httpsProxy,
    this.policyDir,
    this.secretType,
    this.syncBranch,
    this.syncRepo,
    this.syncRev,
    this.syncWaitSecs,
  });

  $ConfigManagementGitConfig.fromJson(core.Map json_)
    : this(
        gcpServiceAccountEmail: json_['gcpServiceAccountEmail'] as core.String?,
        httpsProxy: json_['httpsProxy'] as core.String?,
        policyDir: json_['policyDir'] as core.String?,
        secretType: json_['secretType'] as core.String?,
        syncBranch: json_['syncBranch'] as core.String?,
        syncRepo: json_['syncRepo'] as core.String?,
        syncRev: json_['syncRev'] as core.String?,
        syncWaitSecs: json_['syncWaitSecs'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final gcpServiceAccountEmail = this.gcpServiceAccountEmail;
    final httpsProxy = this.httpsProxy;
    final policyDir = this.policyDir;
    final secretType = this.secretType;
    final syncBranch = this.syncBranch;
    final syncRepo = this.syncRepo;
    final syncRev = this.syncRev;
    final syncWaitSecs = this.syncWaitSecs;
    return {
      'gcpServiceAccountEmail': ?gcpServiceAccountEmail,
      'httpsProxy': ?httpsProxy,
      'policyDir': ?policyDir,
      'secretType': ?secretType,
      'syncBranch': ?syncBranch,
      'syncRepo': ?syncRepo,
      'syncRev': ?syncRev,
      'syncWaitSecs': ?syncWaitSecs,
    };
  }
}

/// Used by:
///
/// - gkehub:v1 : ConfigManagementGroupVersionKind
/// - gkehub:v2 : ConfigManagementGroupVersionKind
class $ConfigManagementGroupVersionKind {
  /// Kubernetes Group
  core.String? group;

  /// Kubernetes Kind
  core.String? kind;

  /// Kubernetes Version
  core.String? version;

  $ConfigManagementGroupVersionKind({this.group, this.kind, this.version});

  $ConfigManagementGroupVersionKind.fromJson(core.Map json_)
    : this(
        group: json_['group'] as core.String?,
        kind: json_['kind'] as core.String?,
        version: json_['version'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final group = this.group;
    final kind = this.kind;
    final version = this.version;
    return {'group': ?group, 'kind': ?kind, 'version': ?version};
  }
}

/// Used by:
///
/// - gkehub:v1 : ConfigManagementHierarchyControllerConfig
/// - gkehub:v2 : ConfigManagementHierarchyControllerConfig
class $ConfigManagementHierarchyControllerConfig {
  /// Whether hierarchical resource quota is enabled in this cluster.
  core.bool? enableHierarchicalResourceQuota;

  /// Whether pod tree labels are enabled in this cluster.
  core.bool? enablePodTreeLabels;

  /// Whether Hierarchy Controller is enabled in this cluster.
  core.bool? enabled;

  $ConfigManagementHierarchyControllerConfig({
    this.enableHierarchicalResourceQuota,
    this.enablePodTreeLabels,
    this.enabled,
  });

  $ConfigManagementHierarchyControllerConfig.fromJson(core.Map json_)
    : this(
        enableHierarchicalResourceQuota:
            json_['enableHierarchicalResourceQuota'] as core.bool?,
        enablePodTreeLabels: json_['enablePodTreeLabels'] as core.bool?,
        enabled: json_['enabled'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final enableHierarchicalResourceQuota =
        this.enableHierarchicalResourceQuota;
    final enablePodTreeLabels = this.enablePodTreeLabels;
    final enabled = this.enabled;
    return {
      'enableHierarchicalResourceQuota': ?enableHierarchicalResourceQuota,
      'enablePodTreeLabels': ?enablePodTreeLabels,
      'enabled': ?enabled,
    };
  }
}

/// Used by:
///
/// - gkehub:v1 : ConfigManagementOciConfig
/// - gkehub:v2 : ConfigManagementOciConfig
class $ConfigManagementOciConfig {
  /// The Google Cloud Service Account Email used for auth when secret_type is
  /// `gcpserviceaccount`.
  ///
  /// Optional.
  core.String? gcpServiceAccountEmail;

  /// The absolute path of the directory that contains the local resources.
  ///
  /// Default: the root directory of the image.
  ///
  /// Optional.
  core.String? policyDir;

  /// Type of secret configured for access to the OCI repo.
  ///
  /// Must be one of `gcenode`, `gcpserviceaccount`, `k8sserviceaccount` or
  /// `none`. The validation of this is case-sensitive.
  ///
  /// Required.
  core.String? secretType;

  /// The OCI image repository URL for the package to sync from.
  ///
  /// e.g. `LOCATION-docker.pkg.dev/PROJECT_ID/REPOSITORY_NAME/PACKAGE_NAME`.
  ///
  /// Required.
  core.String? syncRepo;

  /// Period in seconds between consecutive syncs.
  ///
  /// Default: 15.
  ///
  /// Optional.
  core.String? syncWaitSecs;

  $ConfigManagementOciConfig({
    this.gcpServiceAccountEmail,
    this.policyDir,
    this.secretType,
    this.syncRepo,
    this.syncWaitSecs,
  });

  $ConfigManagementOciConfig.fromJson(core.Map json_)
    : this(
        gcpServiceAccountEmail: json_['gcpServiceAccountEmail'] as core.String?,
        policyDir: json_['policyDir'] as core.String?,
        secretType: json_['secretType'] as core.String?,
        syncRepo: json_['syncRepo'] as core.String?,
        syncWaitSecs: json_['syncWaitSecs'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final gcpServiceAccountEmail = this.gcpServiceAccountEmail;
    final policyDir = this.policyDir;
    final secretType = this.secretType;
    final syncRepo = this.syncRepo;
    final syncWaitSecs = this.syncWaitSecs;
    return {
      'gcpServiceAccountEmail': ?gcpServiceAccountEmail,
      'policyDir': ?policyDir,
      'secretType': ?secretType,
      'syncRepo': ?syncRepo,
      'syncWaitSecs': ?syncWaitSecs,
    };
  }
}

/// Used by:
///
/// - gkehub:v1 : ConfigManagementPolicyControllerMigration
/// - gkehub:v2 : ConfigManagementPolicyControllerMigration
class $ConfigManagementPolicyControllerMigration {
  /// Last time this membership spec was copied to PoCo feature.
  core.String? copyTime;

  /// Stage of the migration.
  /// Possible string values are:
  /// - "STAGE_UNSPECIFIED" : Unknown state of migration.
  /// - "ACM_MANAGED" : ACM Hub/Operator manages policycontroller. No migration
  /// yet completed.
  /// - "POCO_MANAGED" : All migrations steps complete; Poco Hub now manages
  /// policycontroller.
  core.String? stage;

  $ConfigManagementPolicyControllerMigration({this.copyTime, this.stage});

  $ConfigManagementPolicyControllerMigration.fromJson(core.Map json_)
    : this(
        copyTime: json_['copyTime'] as core.String?,
        stage: json_['stage'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final copyTime = this.copyTime;
    final stage = this.stage;
    return {'copyTime': ?copyTime, 'stage': ?stage};
  }
}

/// Used by:
///
/// - gkehub:v1 : ConfigManagementPolicyControllerVersion
/// - gkehub:v2 : ConfigManagementPolicyControllerVersion
class $ConfigManagementPolicyControllerVersion {
  /// The gatekeeper image tag that is composed of ACM version, git tag, build
  /// number.
  core.String? version;

  $ConfigManagementPolicyControllerVersion({this.version});

  $ConfigManagementPolicyControllerVersion.fromJson(core.Map json_)
    : this(version: json_['version'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final version = this.version;
    return {'version': ?version};
  }
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

  $Console({this.additionalLinks, this.consoleUris, this.steps});

  $Console.fromJson(core.Map json_)
    : this(
        additionalLinks: (json_['additionalLinks'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        consoleUris: (json_['consoleUris'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        steps: (json_['steps'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final additionalLinks = this.additionalLinks;
    final consoleUris = this.consoleUris;
    final steps = this.steps;
    return {
      'additionalLinks': ?additionalLinks,
      'consoleUris': ?consoleUris,
      'steps': ?steps,
    };
  }
}

/// Used by:
///
/// - displayvideo:v2 : ContentDurationAssignedTargetingOptionDetails
/// - displayvideo:v3 : ContentDurationAssignedTargetingOptionDetails
/// - displayvideo:v4 : ContentDurationAssignedTargetingOptionDetails
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
        contentDuration: json_['contentDuration'] as core.String?,
        targetingOptionId: json_['targetingOptionId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final contentDuration = this.contentDuration;
    final targetingOptionId = this.targetingOptionId;
    return {
      'contentDuration': ?contentDuration,
      'targetingOptionId': ?targetingOptionId,
    };
  }
}

/// Used by:
///
/// - displayvideo:v2 : ContentDurationTargetingOptionDetails
/// - displayvideo:v3 : ContentDurationTargetingOptionDetails
/// - displayvideo:v4 : ContentDurationTargetingOptionDetails
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

  $ContentDurationTargetingOptionDetails({this.contentDuration});

  $ContentDurationTargetingOptionDetails.fromJson(core.Map json_)
    : this(contentDuration: json_['contentDuration'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final contentDuration = this.contentDuration;
    return {'contentDuration': ?contentDuration};
  }
}

/// Used by:
///
/// - displayvideo:v2 : ContentGenreAssignedTargetingOptionDetails
/// - displayvideo:v3 : ContentGenreAssignedTargetingOptionDetails
/// - displayvideo:v4 : ContentGenreAssignedTargetingOptionDetails
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
        displayName: json_['displayName'] as core.String?,
        negative: json_['negative'] as core.bool?,
        targetingOptionId: json_['targetingOptionId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final displayName = this.displayName;
    final negative = this.negative;
    final targetingOptionId = this.targetingOptionId;
    return {
      'displayName': ?displayName,
      'negative': ?negative,
      'targetingOptionId': ?targetingOptionId,
    };
  }
}

/// Used by:
///
/// - displayvideo:v2 : ContentGenreTargetingOptionDetails
/// - displayvideo:v3 : ContentGenreTargetingOptionDetails
/// - displayvideo:v4 : ContentGenreTargetingOptionDetails
class $ContentGenreTargetingOptionDetails {
  /// The display name of the content genre
  ///
  /// Output only.
  core.String? displayName;

  $ContentGenreTargetingOptionDetails({this.displayName});

  $ContentGenreTargetingOptionDetails.fromJson(core.Map json_)
    : this(displayName: json_['displayName'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final displayName = this.displayName;
    return {'displayName': ?displayName};
  }
}

/// Used by:
///
/// - displayvideo:v2 : ContentInstreamPositionAssignedTargetingOptionDetails
/// - displayvideo:v3 : ContentInstreamPositionAssignedTargetingOptionDetails
/// - displayvideo:v4 : ContentInstreamPositionAssignedTargetingOptionDetails
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
    core.Map json_,
  ) : this(
        adType: json_['adType'] as core.String?,
        contentInstreamPosition:
            json_['contentInstreamPosition'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final adType = this.adType;
    final contentInstreamPosition = this.contentInstreamPosition;
    return {
      'adType': ?adType,
      'contentInstreamPosition': ?contentInstreamPosition,
    };
  }
}

/// Used by:
///
/// - displayvideo:v2 : ContentInstreamPositionTargetingOptionDetails
/// - displayvideo:v3 : ContentInstreamPositionTargetingOptionDetails
/// - displayvideo:v4 : ContentInstreamPositionTargetingOptionDetails
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
        contentInstreamPosition:
            json_['contentInstreamPosition'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final contentInstreamPosition = this.contentInstreamPosition;
    return {'contentInstreamPosition': ?contentInstreamPosition};
  }
}

/// Used by:
///
/// - displayvideo:v2 : ContentOutstreamPositionAssignedTargetingOptionDetails
/// - displayvideo:v3 : ContentOutstreamPositionAssignedTargetingOptionDetails
/// - displayvideo:v4 : ContentOutstreamPositionAssignedTargetingOptionDetails
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
    core.Map json_,
  ) : this(
        adType: json_['adType'] as core.String?,
        contentOutstreamPosition:
            json_['contentOutstreamPosition'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final adType = this.adType;
    final contentOutstreamPosition = this.contentOutstreamPosition;
    return {
      'adType': ?adType,
      'contentOutstreamPosition': ?contentOutstreamPosition,
    };
  }
}

/// Used by:
///
/// - displayvideo:v2 : ContentOutstreamPositionTargetingOptionDetails
/// - displayvideo:v3 : ContentOutstreamPositionTargetingOptionDetails
/// - displayvideo:v4 : ContentOutstreamPositionTargetingOptionDetails
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
            json_['contentOutstreamPosition'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final contentOutstreamPosition = this.contentOutstreamPosition;
    return {'contentOutstreamPosition': ?contentOutstreamPosition};
  }
}

/// Used by:
///
/// - displayvideo:v2 : ContentStreamTypeAssignedTargetingOptionDetails
/// - displayvideo:v3 : ContentStreamTypeAssignedTargetingOptionDetails
/// - displayvideo:v4 : ContentStreamTypeAssignedTargetingOptionDetails
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
        contentStreamType: json_['contentStreamType'] as core.String?,
        targetingOptionId: json_['targetingOptionId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final contentStreamType = this.contentStreamType;
    final targetingOptionId = this.targetingOptionId;
    return {
      'contentStreamType': ?contentStreamType,
      'targetingOptionId': ?targetingOptionId,
    };
  }
}

/// Used by:
///
/// - displayvideo:v2 : ContentStreamTypeTargetingOptionDetails
/// - displayvideo:v3 : ContentStreamTypeTargetingOptionDetails
/// - displayvideo:v4 : ContentStreamTypeTargetingOptionDetails
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

  $ContentStreamTypeTargetingOptionDetails({this.contentStreamType});

  $ContentStreamTypeTargetingOptionDetails.fromJson(core.Map json_)
    : this(contentStreamType: json_['contentStreamType'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final contentStreamType = this.contentStreamType;
    return {'contentStreamType': ?contentStreamType};
  }
}

/// Used by:
///
/// - displayvideo:v3 : ContentThemeAssignedTargetingOptionDetails
/// - displayvideo:v4 : ContentThemeAssignedTargetingOptionDetails
class $ContentThemeAssignedTargetingOptionDetails {
  /// An enum for the DV360 content theme classifier.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "CONTENT_THEME_UNSPECIFIED" : Content theme is not specified or is
  /// unknown in this version.
  /// - "CONTENT_THEME_FIGHTING_VIDEO_GAMES" : Fighting video games.
  /// - "CONTENT_THEME_MATURE_GAMES" : Mature games.
  /// - "CONTENT_THEME_NOT_YET_DETERMINED_HEALTH_SOURCES" : Not yet determined
  /// health sources.
  /// - "CONTENT_THEME_NOT_YET_DETERMINED_NEWS_SOURCES" : Not yet determined
  /// news sources.
  /// - "CONTENT_THEME_POLITICS" : Politics.
  /// - "CONTENT_THEME_RECENT_NEWS" : Recent news.
  /// - "CONTENT_THEME_RELIGION" : Religion.
  /// - "CONTENT_THEME_UNPLEASANT_HEALTH_CONTENT" : Unpleasant health content.
  /// - "CONTENT_THEME_UNPLEASANT_NEWS" : Unpleasant news.
  core.String? contentTheme;

  /// An enum for the DV360 content theme classified to be EXCLUDED.
  ///
  /// Required.
  /// Possible string values are:
  /// - "CONTENT_THEME_UNSPECIFIED" : Content theme is not specified or is
  /// unknown in this version.
  /// - "CONTENT_THEME_FIGHTING_VIDEO_GAMES" : Fighting video games.
  /// - "CONTENT_THEME_MATURE_GAMES" : Mature games.
  /// - "CONTENT_THEME_NOT_YET_DETERMINED_HEALTH_SOURCES" : Not yet determined
  /// health sources.
  /// - "CONTENT_THEME_NOT_YET_DETERMINED_NEWS_SOURCES" : Not yet determined
  /// news sources.
  /// - "CONTENT_THEME_POLITICS" : Politics.
  /// - "CONTENT_THEME_RECENT_NEWS" : Recent news.
  /// - "CONTENT_THEME_RELIGION" : Religion.
  /// - "CONTENT_THEME_UNPLEASANT_HEALTH_CONTENT" : Unpleasant health content.
  /// - "CONTENT_THEME_UNPLEASANT_NEWS" : Unpleasant news.
  core.String? excludedContentTheme;

  /// ID of the content theme to be EXCLUDED.
  ///
  /// Required.
  core.String? excludedTargetingOptionId;

  $ContentThemeAssignedTargetingOptionDetails({
    this.contentTheme,
    this.excludedContentTheme,
    this.excludedTargetingOptionId,
  });

  $ContentThemeAssignedTargetingOptionDetails.fromJson(core.Map json_)
    : this(
        contentTheme: json_['contentTheme'] as core.String?,
        excludedContentTheme: json_['excludedContentTheme'] as core.String?,
        excludedTargetingOptionId:
            json_['excludedTargetingOptionId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final contentTheme = this.contentTheme;
    final excludedContentTheme = this.excludedContentTheme;
    final excludedTargetingOptionId = this.excludedTargetingOptionId;
    return {
      'contentTheme': ?contentTheme,
      'excludedContentTheme': ?excludedContentTheme,
      'excludedTargetingOptionId': ?excludedTargetingOptionId,
    };
  }
}

/// Used by:
///
/// - displayvideo:v3 : ContentThemeTargetingOptionDetails
/// - displayvideo:v4 : ContentThemeTargetingOptionDetails
class $ContentThemeTargetingOptionDetails {
  /// An enum for the DV360 content theme content classifier.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "CONTENT_THEME_UNSPECIFIED" : Content theme is not specified or is
  /// unknown in this version.
  /// - "CONTENT_THEME_FIGHTING_VIDEO_GAMES" : Fighting video games.
  /// - "CONTENT_THEME_MATURE_GAMES" : Mature games.
  /// - "CONTENT_THEME_NOT_YET_DETERMINED_HEALTH_SOURCES" : Not yet determined
  /// health sources.
  /// - "CONTENT_THEME_NOT_YET_DETERMINED_NEWS_SOURCES" : Not yet determined
  /// news sources.
  /// - "CONTENT_THEME_POLITICS" : Politics.
  /// - "CONTENT_THEME_RECENT_NEWS" : Recent news.
  /// - "CONTENT_THEME_RELIGION" : Religion.
  /// - "CONTENT_THEME_UNPLEASANT_HEALTH_CONTENT" : Unpleasant health content.
  /// - "CONTENT_THEME_UNPLEASANT_NEWS" : Unpleasant news.
  core.String? contentTheme;

  $ContentThemeTargetingOptionDetails({this.contentTheme});

  $ContentThemeTargetingOptionDetails.fromJson(core.Map json_)
    : this(contentTheme: json_['contentTheme'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final contentTheme = this.contentTheme;
    return {'contentTheme': ?contentTheme};
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
/// - displayvideo:v2 : CounterEvent
/// - displayvideo:v3 : CounterEvent
/// - displayvideo:v4 : CounterEvent
class $CounterEvent {
  /// The name of the counter event.
  ///
  /// Required.
  core.String? name;

  /// The name used to identify this counter event in reports.
  ///
  /// Required.
  core.String? reportingName;

  $CounterEvent({this.name, this.reportingName});

  $CounterEvent.fromJson(core.Map json_)
    : this(
        name: json_['name'] as core.String?,
        reportingName: json_['reportingName'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final name = this.name;
    final reportingName = this.reportingName;
    return {'name': ?name, 'reportingName': ?reportingName};
  }
}

/// Used by:
///
/// - displayvideo:v2 : CreateAssetRequest
/// - displayvideo:v3 : CreateAssetRequest
/// - displayvideo:v4 : CreateAssetRequest
class $CreateAssetRequest {
  /// The filename of the asset, including the file extension.
  ///
  /// The filename must be UTF-8 encoded with a maximum size of 240 bytes.
  ///
  /// Required.
  core.String? filename;

  $CreateAssetRequest({this.filename});

  $CreateAssetRequest.fromJson(core.Map json_)
    : this(filename: json_['filename'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final filename = this.filename;
    return {'filename': ?filename};
  }
}

/// Used by:
///
/// - dfareporting:v3.5 : CreativeAssetId
/// - dfareporting:v5 : CreativeAssetId
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

  $CreativeAssetId({this.name, this.type});

  $CreativeAssetId.fromJson(core.Map json_)
    : this(
        name: json_['name'] as core.String?,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final name = this.name;
    final type = this.type;
    return {'name': ?name, 'type': ?type};
  }
}

/// Used by:
///
/// - dfareporting:v3.5 : CreativeClickThroughUrl
/// - dfareporting:v5 : CreativeClickThroughUrl
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
        computedClickThroughUrl:
            json_['computedClickThroughUrl'] as core.String?,
        customClickThroughUrl: json_['customClickThroughUrl'] as core.String?,
        landingPageId: json_['landingPageId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final computedClickThroughUrl = this.computedClickThroughUrl;
    final customClickThroughUrl = this.customClickThroughUrl;
    final landingPageId = this.landingPageId;
    return {
      'computedClickThroughUrl': ?computedClickThroughUrl,
      'customClickThroughUrl': ?customClickThroughUrl,
      'landingPageId': ?landingPageId,
    };
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
/// - displayvideo:v3 : CustomBiddingAlgorithmRulesError
/// - displayvideo:v4 : CustomBiddingAlgorithmRulesError
class $CustomBiddingAlgorithmRulesError {
  /// The type of error.
  /// Possible string values are:
  /// - "ERROR_CODE_UNSPECIFIED" : The error is not specified or is unknown in
  /// this version.
  /// - "SYNTAX_ERROR" : The rules have a syntax error.
  /// - "CONSTRAINT_VIOLATION_ERROR" : The rules have a constraint violation
  /// error.
  /// - "INTERNAL_ERROR" : Internal errors were thrown while processing the
  /// rules.
  core.String? errorCode;

  $CustomBiddingAlgorithmRulesError({this.errorCode});

  $CustomBiddingAlgorithmRulesError.fromJson(core.Map json_)
    : this(errorCode: json_['errorCode'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final errorCode = this.errorCode;
    return {'errorCode': ?errorCode};
  }
}

/// Used by:
///
/// - displayvideo:v3 : CustomBiddingAlgorithmRulesRef
/// - displayvideo:v4 : CustomBiddingAlgorithmRulesRef
class $CustomBiddingAlgorithmRulesRef {
  /// A resource name to be used in media.download to download the rules files.
  ///
  /// Or media.upload to upload the rules files. Resource names have the format
  /// `customBiddingAlgorithms/{custom_bidding_algorithm_id}/rulesRef/{ref_id}`.
  core.String? resourceName;

  $CustomBiddingAlgorithmRulesRef({this.resourceName});

  $CustomBiddingAlgorithmRulesRef.fromJson(core.Map json_)
    : this(resourceName: json_['resourceName'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final resourceName = this.resourceName;
    return {'resourceName': ?resourceName};
  }
}

/// Used by:
///
/// - displayvideo:v3 : CustomBiddingModelDetails
/// - displayvideo:v4 : CustomBiddingModelDetails
class $CustomBiddingModelDetails {
  /// The unique ID of the relevant advertiser.
  core.String? advertiserId;

  /// The readiness state of custom bidding model.
  /// Possible string values are:
  /// - "READINESS_STATE_UNSPECIFIED" : State is not specified or is unknown in
  /// this version.
  /// - "READINESS_STATE_ACTIVE" : The model is trained and ready for serving.
  /// - "READINESS_STATE_INSUFFICIENT_DATA" : There is not enough data to train
  /// the serving model.
  /// - "READINESS_STATE_TRAINING" : The model is training and not ready for
  /// serving.
  /// - "READINESS_STATE_NO_VALID_SCRIPT" : A valid custom bidding script has
  /// not been provided with which to train the model. This state will only be
  /// applied to algorithms whose `custom_bidding_algorithm_type` is
  /// `SCRIPT_BASED`.
  /// - "READINESS_STATE_EVALUATION_FAILURE" : A valid script was provided but
  /// failed evaluation. This is applicable for scripts that could not be
  /// evaluated in the alloted time.
  core.String? readinessState;

  /// The suspension state of custom bidding model.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "SUSPENSION_STATE_UNSPECIFIED" : State is not specified or is unknown in
  /// this version.
  /// - "SUSPENSION_STATE_ENABLED" : Model is enabled, either recently used,
  /// currently used or scheduled to be used. The algorithm is actively scoring
  /// impressions for this advertiser.
  /// - "SUSPENSION_STATE_DORMANT" : Model has not been used recently. Although
  /// the model still acts as `ENABLED`, it will eventually be suspended if not
  /// used.
  /// - "SUSPENSION_STATE_SUSPENDED" : Model is suspended from scoring
  /// impressions and cannot serve. If the algorithm is assigned to a line item
  /// under this advertiser or otherwise updated, it will switch back to the
  /// `ENABLED` state and require time to prepare the serving model again.
  core.String? suspensionState;

  $CustomBiddingModelDetails({
    this.advertiserId,
    this.readinessState,
    this.suspensionState,
  });

  $CustomBiddingModelDetails.fromJson(core.Map json_)
    : this(
        advertiserId: json_['advertiserId'] as core.String?,
        readinessState: json_['readinessState'] as core.String?,
        suspensionState: json_['suspensionState'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final advertiserId = this.advertiserId;
    final readinessState = this.readinessState;
    final suspensionState = this.suspensionState;
    return {
      'advertiserId': ?advertiserId,
      'readinessState': ?readinessState,
      'suspensionState': ?suspensionState,
    };
  }
}

/// Used by:
///
/// - displayvideo:v2 : CustomBiddingScriptRef
/// - displayvideo:v3 : CustomBiddingScriptRef
/// - displayvideo:v4 : CustomBiddingScriptRef
class $CustomBiddingScriptRef {
  /// A resource name to be used in media.download to Download the script files.
  ///
  /// Or media.upload to Upload the script files. Resource names have the format
  /// `customBiddingAlgorithms/{custom_bidding_algorithm_id}/scriptRef/{ref_id}`.
  core.String? resourceName;

  $CustomBiddingScriptRef({this.resourceName});

  $CustomBiddingScriptRef.fromJson(core.Map json_)
    : this(resourceName: json_['resourceName'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final resourceName = this.resourceName;
    return {'resourceName': ?resourceName};
  }
}

/// Used by:
///
/// - displayvideo:v2 : CustomLabel
/// - displayvideo:v3 : CustomLabel
/// - displayvideo:v4 : CustomLabel
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

  $CustomLabel({this.key, this.value});

  $CustomLabel.fromJson(core.Map json_)
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
/// - displayvideo:v2 : CustomList
/// - displayvideo:v3 : CustomList
/// - displayvideo:v4 : CustomList
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

  $CustomList({this.customListId, this.displayName, this.name});

  $CustomList.fromJson(core.Map json_)
    : this(
        customListId: json_['customListId'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final customListId = this.customListId;
    final displayName = this.displayName;
    final name = this.name;
    return {
      'customListId': ?customListId,
      'displayName': ?displayName,
      'name': ?name,
    };
  }
}

/// Used by:
///
/// - displayvideo:v2 : CustomListTargetingSetting
/// - displayvideo:v3 : CustomListTargetingSetting
/// - displayvideo:v4 : CustomListTargetingSetting
class $CustomListTargetingSetting {
  /// Custom id of custom list targeting setting.
  ///
  /// This id is custom_list_id.
  ///
  /// Required.
  core.String? customListId;

  $CustomListTargetingSetting({this.customListId});

  $CustomListTargetingSetting.fromJson(core.Map json_)
    : this(customListId: json_['customListId'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final customListId = this.customListId;
    return {'customListId': ?customListId};
  }
}

/// Used by:
///
/// - datamanager:v1 : CustomVariable
/// - datamanager:v1 : ItemCustomVariable
class $CustomVariable {
  /// Reference string used to determine which of the
  /// Event.destination_references the custom variable should be sent to.
  ///
  /// If empty, the Event.destination_references will be used.
  ///
  /// Optional.
  core.List<core.String>? destinationReferences;

  /// The value to store for the custom variable.
  ///
  /// Optional.
  core.String? value;

  /// The name of the custom variable to set.
  ///
  /// If the variable is not found for the given destination, it will be
  /// ignored.
  ///
  /// Optional.
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
/// - classroom:v1 : Date
/// - cloudasset:v1 : Date
/// - cloudchannel:v1 : GoogleTypeDate
/// - clouddeploy:v1 : Date
/// - cloudfunctions:v2 : Date
/// - composer:v1 : Date
/// - container:v1 : Date
/// - content:v2.1 : Date
/// - contentwarehouse:v1 : GoogleTypeDate
/// - displayvideo:v2 : Date
/// - displayvideo:v3 : Date
/// - displayvideo:v4 : Date
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
/// - osconfig:v1 : Date
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
/// - displayvideo:v2 : DayAndTimeAssignedTargetingOptionDetails
/// - displayvideo:v3 : DayAndTimeAssignedTargetingOptionDetails
/// - displayvideo:v4 : DayAndTimeAssignedTargetingOptionDetails
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
  /// For Demand Gen line items, this field is always
  /// `TIME_ZONE_RESOLUTION_ADVERTISER`.
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
        dayOfWeek: json_['dayOfWeek'] as core.String?,
        endHour: json_['endHour'] as core.int?,
        startHour: json_['startHour'] as core.int?,
        timeZoneResolution: json_['timeZoneResolution'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dayOfWeek = this.dayOfWeek;
    final endHour = this.endHour;
    final startHour = this.startHour;
    final timeZoneResolution = this.timeZoneResolution;
    return {
      'dayOfWeek': ?dayOfWeek,
      'endHour': ?endHour,
      'startHour': ?startHour,
      'timeZoneResolution': ?timeZoneResolution,
    };
  }
}

/// Used by:
///
/// - displayvideo:v3 : DcmTrackingInfo
/// - displayvideo:v4 : DcmTrackingInfo
class $DcmTrackingInfo {
  /// The DCM creative id.
  ///
  /// Required.
  core.String? creativeId;

  /// The DCM placement id.
  ///
  /// Required.
  core.String? placementId;

  /// The DCM tracking ad id.
  ///
  /// Required.
  core.String? trackingAdId;

  $DcmTrackingInfo({this.creativeId, this.placementId, this.trackingAdId});

  $DcmTrackingInfo.fromJson(core.Map json_)
    : this(
        creativeId: json_['creativeId'] as core.String?,
        placementId: json_['placementId'] as core.String?,
        trackingAdId: json_['trackingAdId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final creativeId = this.creativeId;
    final placementId = this.placementId;
    final trackingAdId = this.trackingAdId;
    return {
      'creativeId': ?creativeId,
      'placementId': ?placementId,
      'trackingAdId': ?trackingAdId,
    };
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
/// - drive:v2 : DecryptionMetadata
/// - drive:v3 : DecryptionMetadata
class $DecryptionMetadata {
  /// Chunk size used if content was encrypted with the AES 256 GCM Cipher.
  ///
  /// Possible values are: - default - small
  core.String? aes256GcmChunkSize;

  /// The URL-safe Base64 encoded HMAC-SHA256 digest of the resource metadata
  /// with its DEK (Data Encryption Key); see
  /// https://developers.google.com/workspace/cse/reference
  core.String? encryptionResourceKeyHash;

  /// The signed JSON Web Token (JWT) which can be used to authorize the
  /// requesting user with the Key ACL Service (KACLS).
  ///
  /// The JWT asserts that the requesting user has at least read permissions on
  /// the file.
  core.String? jwt;

  /// The ID of the KACLS (Key ACL Service) used to encrypt the file.
  core.String? kaclsId;

  /// The name of the KACLS (Key ACL Service) used to encrypt the file.
  core.String? kaclsName;

  /// Key format for the unwrapped key.
  ///
  /// Must be `tinkAesGcmKey`.
  core.String? keyFormat;

  /// The URL-safe Base64 encoded wrapped key used to encrypt the contents of
  /// the file.
  core.String? wrappedKey;

  $DecryptionMetadata({
    this.aes256GcmChunkSize,
    this.encryptionResourceKeyHash,
    this.jwt,
    this.kaclsId,
    this.kaclsName,
    this.keyFormat,
    this.wrappedKey,
  });

  $DecryptionMetadata.fromJson(core.Map json_)
    : this(
        aes256GcmChunkSize: json_['aes256GcmChunkSize'] as core.String?,
        encryptionResourceKeyHash:
            json_['encryptionResourceKeyHash'] as core.String?,
        jwt: json_['jwt'] as core.String?,
        kaclsId: json_['kaclsId'] as core.String?,
        kaclsName: json_['kaclsName'] as core.String?,
        keyFormat: json_['keyFormat'] as core.String?,
        wrappedKey: json_['wrappedKey'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final aes256GcmChunkSize = this.aes256GcmChunkSize;
    final encryptionResourceKeyHash = this.encryptionResourceKeyHash;
    final jwt = this.jwt;
    final kaclsId = this.kaclsId;
    final kaclsName = this.kaclsName;
    final keyFormat = this.keyFormat;
    final wrappedKey = this.wrappedKey;
    return {
      'aes256GcmChunkSize': ?aes256GcmChunkSize,
      'encryptionResourceKeyHash': ?encryptionResourceKeyHash,
      'jwt': ?jwt,
      'kaclsId': ?kaclsId,
      'kaclsName': ?kaclsName,
      'keyFormat': ?keyFormat,
      'wrappedKey': ?wrappedKey,
    };
  }
}

/// Used by:
///
/// - displayvideo:v3 : DeleteAssignedTargetingOptionsRequest
/// - displayvideo:v4 : DeleteAssignedTargetingOptionsRequest
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
  /// - "TARGETING_TYPE_CONTENT_THEME_EXCLUSION" : Filter website content by
  /// content themes (for example, religion). Only supported for Advertiser
  /// resources. Targeting of this type cannot be created or updated using the
  /// API. This targeting is only inherited by child YouTube and Demand Gen line
  /// item resources.
  /// - "TARGETING_TYPE_YOUTUBE_CHANNEL_PACK" : Target ads to a specific YouTube
  /// channel pack.
  core.String? targetingType;

  $DeleteAssignedTargetingOptionsRequest({
    this.assignedTargetingOptionIds,
    this.targetingType,
  });

  $DeleteAssignedTargetingOptionsRequest.fromJson(core.Map json_)
    : this(
        assignedTargetingOptionIds:
            (json_['assignedTargetingOptionIds'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        targetingType: json_['targetingType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final assignedTargetingOptionIds = this.assignedTargetingOptionIds;
    final targetingType = this.targetingType;
    return {
      'assignedTargetingOptionIds': ?assignedTargetingOptionIds,
      'targetingType': ?targetingType,
    };
  }
}

/// Used by:
///
/// - displayvideo:v2 : DemandGenBiddingStrategy
/// - displayvideo:v3 : DemandGenBiddingStrategy
/// - displayvideo:v4 : DemandGenBiddingStrategy
class $DemandGenBiddingStrategy {
  /// The value effectively used by the bidding strategy.
  ///
  /// This field will be the same as value if set. If value is not set and the
  /// strategy is assigned to an ad group, this field will be inherited from the
  /// line item's bidding strategy. If type is not
  /// `DEMAND_GEN_BIDDING_STRATEGY_TYPE_TARGET_CPA` or
  /// `DEMAND_GEN_BIDDING_STRATEGY_TYPE_TARGET_ROAS`, this field will be 0.
  ///
  /// Output only.
  core.String? effectiveBiddingValue;

  /// Source of the effective bidding value.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "BIDDING_SOURCE_UNSPECIFIED" : Bidding source is not specified or
  /// unknown.
  /// - "BIDDING_SOURCE_LINE_ITEM" : Bidding value is inherited from the line
  /// item.
  /// - "BIDDING_SOURCE_AD_GROUP" : Bidding value is defined in the ad group.
  core.String? effectiveBiddingValueSource;

  /// The type of the bidding strategy.
  ///
  /// This can only be set when assigned to a line item. Ad groups will inherit
  /// this value from their line item.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "DEMAND_GEN_BIDDING_STRATEGY_TYPE_UNSPECIFIED" : Type is not specified
  /// or unknown.
  /// - "DEMAND_GEN_BIDDING_STRATEGY_TYPE_TARGET_CPA" : A bidding strategy that
  /// automatically optimizes conversions per dollar.
  /// - "DEMAND_GEN_BIDDING_STRATEGY_TYPE_TARGET_ROAS" : A bidding strategy that
  /// automatically maximizes revenue while averaging a specific target Return
  /// On Ad Spend (ROAS).
  /// - "DEMAND_GEN_BIDDING_STRATEGY_TYPE_MAXIMIZE_CONVERSIONS" : A bidding
  /// strategy that automatically maximizes number of conversions
  /// - "DEMAND_GEN_BIDDING_STRATEGY_TYPE_MAXIMIZE_CONVERSION_VALUE" : A bidding
  /// strategy that automatically maximizes revenue while spending your budget.
  /// - "DEMAND_GEN_BIDDING_STRATEGY_TYPE_MAXIMIZE_CLICKS" : A bidding strategy
  /// that automatically maximizes clicks within a given budget.
  /// - "DEMAND_GEN_BIDDING_STRATEGY_TYPE_TARGET_CPC" : A bidding strategy that
  /// automatically optimizes cost per click.
  core.String? type;

  /// The value used by the bidding strategy.
  ///
  /// This can be set when assigned to line items or ad groups. This field is
  /// only applicable for the following strategy types: *
  /// `DEMAND_GEN_BIDDING_STRATEGY_TYPE_TARGET_CPA` *
  /// `DEMAND_GEN_BIDDING_STRATEGY_TYPE_TARGET_CPC` *
  /// `DEMAND_GEN_BIDDING_STRATEGY_TYPE_TARGET_ROAS` Value of this field is in
  /// micros of the advertiser's currency or ROAS value. For example, 1000000
  /// represents 1.0 standard units of the currency or 100% ROAS value. If not
  /// using an applicable strategy, the value of this field will be 0.
  ///
  /// Optional.
  core.String? value;

  $DemandGenBiddingStrategy({
    this.effectiveBiddingValue,
    this.effectiveBiddingValueSource,
    this.type,
    this.value,
  });

  $DemandGenBiddingStrategy.fromJson(core.Map json_)
    : this(
        effectiveBiddingValue: json_['effectiveBiddingValue'] as core.String?,
        effectiveBiddingValueSource:
            json_['effectiveBiddingValueSource'] as core.String?,
        type: json_['type'] as core.String?,
        value: json_['value'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final effectiveBiddingValue = this.effectiveBiddingValue;
    final effectiveBiddingValueSource = this.effectiveBiddingValueSource;
    final type = this.type;
    final value = this.value;
    return {
      'effectiveBiddingValue': ?effectiveBiddingValue,
      'effectiveBiddingValueSource': ?effectiveBiddingValueSource,
      'type': ?type,
      'value': ?value,
    };
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
/// - displayvideo:v2 : DeviceMakeModelAssignedTargetingOptionDetails
/// - displayvideo:v3 : DeviceMakeModelAssignedTargetingOptionDetails
/// - displayvideo:v4 : DeviceMakeModelAssignedTargetingOptionDetails
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
        displayName: json_['displayName'] as core.String?,
        negative: json_['negative'] as core.bool?,
        targetingOptionId: json_['targetingOptionId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final displayName = this.displayName;
    final negative = this.negative;
    final targetingOptionId = this.targetingOptionId;
    return {
      'displayName': ?displayName,
      'negative': ?negative,
      'targetingOptionId': ?targetingOptionId,
    };
  }
}

/// Used by:
///
/// - displayvideo:v2 : DeviceMakeModelTargetingOptionDetails
/// - displayvideo:v3 : DeviceMakeModelTargetingOptionDetails
/// - displayvideo:v4 : DeviceMakeModelTargetingOptionDetails
class $DeviceMakeModelTargetingOptionDetails {
  /// The display name of the device make and model.
  ///
  /// Output only.
  core.String? displayName;

  $DeviceMakeModelTargetingOptionDetails({this.displayName});

  $DeviceMakeModelTargetingOptionDetails.fromJson(core.Map json_)
    : this(displayName: json_['displayName'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final displayName = this.displayName;
    return {'displayName': ?displayName};
  }
}

/// Used by:
///
/// - displayvideo:v2 : DeviceTypeAssignedTargetingOptionDetails
/// - displayvideo:v3 : DeviceTypeAssignedTargetingOptionDetails
/// - displayvideo:v4 : DeviceTypeAssignedTargetingOptionDetails
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
  /// - "DEVICE_TYPE_CONNECTED_DEVICE" : Connected device.
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
        deviceType: json_['deviceType'] as core.String?,
        youtubeAndPartnersBidMultiplier:
            (json_['youtubeAndPartnersBidMultiplier'] as core.num?)?.toDouble(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final deviceType = this.deviceType;
    final youtubeAndPartnersBidMultiplier =
        this.youtubeAndPartnersBidMultiplier;
    return {
      'deviceType': ?deviceType,
      'youtubeAndPartnersBidMultiplier': ?youtubeAndPartnersBidMultiplier,
    };
  }
}

/// Used by:
///
/// - displayvideo:v2 : DeviceTypeTargetingOptionDetails
/// - displayvideo:v3 : DeviceTypeTargetingOptionDetails
/// - displayvideo:v4 : DeviceTypeTargetingOptionDetails
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
  /// - "DEVICE_TYPE_CONNECTED_DEVICE" : Connected device.
  core.String? deviceType;

  $DeviceTypeTargetingOptionDetails({this.deviceType});

  $DeviceTypeTargetingOptionDetails.fromJson(core.Map json_)
    : this(deviceType: json_['deviceType'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final deviceType = this.deviceType;
    return {'deviceType': ?deviceType};
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
/// - displayvideo:v2 : DigitalContentLabelAssignedTargetingOptionDetails
/// - displayvideo:v3 : DigitalContentLabelAssignedTargetingOptionDetails
/// - displayvideo:v4 : DigitalContentLabelAssignedTargetingOptionDetails
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
            json_['excludedContentRatingTier'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final excludedContentRatingTier = this.excludedContentRatingTier;
    return {'excludedContentRatingTier': ?excludedContentRatingTier};
  }
}

/// Used by:
///
/// - displayvideo:v2 : DigitalContentLabelTargetingOptionDetails
/// - displayvideo:v3 : DigitalContentLabelTargetingOptionDetails
/// - displayvideo:v4 : DigitalContentLabelTargetingOptionDetails
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

  $DigitalContentLabelTargetingOptionDetails({this.contentRatingTier});

  $DigitalContentLabelTargetingOptionDetails.fromJson(core.Map json_)
    : this(contentRatingTier: json_['contentRatingTier'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final contentRatingTier = this.contentRatingTier;
    return {'contentRatingTier': ?contentRatingTier};
  }
}

/// Used by:
///
/// - dfareporting:v3.5 : DimensionValue
/// - dfareporting:v5 : DimensionValue
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
        dimensionName: json_['dimensionName'] as core.String?,
        etag: json_['etag'] as core.String?,
        id: json_['id'] as core.String?,
        kind: json_['kind'] as core.String?,
        matchType: json_['matchType'] as core.String?,
        value: json_['value'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dimensionName = this.dimensionName;
    final etag = this.etag;
    final id = this.id;
    final kind = this.kind;
    final matchType = this.matchType;
    final value = this.value;
    return {
      'dimensionName': ?dimensionName,
      'etag': ?etag,
      'id': ?id,
      'kind': ?kind,
      'matchType': ?matchType,
      'value': ?value,
    };
  }
}

/// Used by:
///
/// - displayvideo:v2 : Dimensions
/// - displayvideo:v3 : Dimensions
/// - displayvideo:v4 : Dimensions
class $Dimensions {
  /// The height in pixels.
  core.int? heightPixels;

  /// The width in pixels.
  core.int? widthPixels;

  $Dimensions({this.heightPixels, this.widthPixels});

  $Dimensions.fromJson(core.Map json_)
    : this(
        heightPixels: json_['heightPixels'] as core.int?,
        widthPixels: json_['widthPixels'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final heightPixels = this.heightPixels;
    final widthPixels = this.widthPixels;
    return {'heightPixels': ?heightPixels, 'widthPixels': ?widthPixels};
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
/// - displayvideo:v2 : DisplayVideoSourceAd
/// - displayvideo:v3 : DisplayVideoSourceAd
/// - displayvideo:v4 : DisplayVideoSourceAd
class $DisplayVideoSourceAd {
  /// The ID of the source creative.
  core.String? creativeId;

  $DisplayVideoSourceAd({this.creativeId});

  $DisplayVideoSourceAd.fromJson(core.Map json_)
    : this(creativeId: json_['creativeId'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final creativeId = this.creativeId;
    return {'creativeId': ?creativeId};
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
/// - trafficdirector:v2 : DoubleRange
/// - trafficdirector:v3 : DoubleRange
class $DoubleRange {
  /// end of the range (exclusive)
  core.double? end;

  /// start of the range (inclusive)
  core.double? start;

  $DoubleRange({this.end, this.start});

  $DoubleRange.fromJson(core.Map json_)
    : this(
        end: (json_['end'] as core.num?)?.toDouble(),
        start: (json_['start'] as core.num?)?.toDouble(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final end = this.end;
    final start = this.start;
    return {'end': ?end, 'start': ?start};
  }
}

/// Used by:
///
/// - displayvideo:v2 : DoubleVerifyAppStarRating
/// - displayvideo:v3 : DoubleVerifyAppStarRating
/// - displayvideo:v4 : DoubleVerifyAppStarRating
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
            json_['avoidInsufficientStarRating'] as core.bool?,
        avoidedStarRating: json_['avoidedStarRating'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final avoidInsufficientStarRating = this.avoidInsufficientStarRating;
    final avoidedStarRating = this.avoidedStarRating;
    return {
      'avoidInsufficientStarRating': ?avoidInsufficientStarRating,
      'avoidedStarRating': ?avoidedStarRating,
    };
  }
}

/// Used by:
///
/// - displayvideo:v2 : DoubleVerifyBrandSafetyCategories
/// - displayvideo:v3 : DoubleVerifyBrandSafetyCategories
/// - displayvideo:v4 : DoubleVerifyBrandSafetyCategories
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
            json_['avoidUnknownBrandSafetyCategory'] as core.bool?,
        avoidedHighSeverityCategories:
            (json_['avoidedHighSeverityCategories'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        avoidedMediumSeverityCategories:
            (json_['avoidedMediumSeverityCategories'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final avoidUnknownBrandSafetyCategory =
        this.avoidUnknownBrandSafetyCategory;
    final avoidedHighSeverityCategories = this.avoidedHighSeverityCategories;
    final avoidedMediumSeverityCategories =
        this.avoidedMediumSeverityCategories;
    return {
      'avoidUnknownBrandSafetyCategory': ?avoidUnknownBrandSafetyCategory,
      'avoidedHighSeverityCategories': ?avoidedHighSeverityCategories,
      'avoidedMediumSeverityCategories': ?avoidedMediumSeverityCategories,
    };
  }
}

/// Used by:
///
/// - displayvideo:v2 : DoubleVerifyDisplayViewability
/// - displayvideo:v3 : DoubleVerifyDisplayViewability
/// - displayvideo:v4 : DoubleVerifyDisplayViewability
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

  $DoubleVerifyDisplayViewability({this.iab, this.viewableDuring});

  $DoubleVerifyDisplayViewability.fromJson(core.Map json_)
    : this(
        iab: json_['iab'] as core.String?,
        viewableDuring: json_['viewableDuring'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final iab = this.iab;
    final viewableDuring = this.viewableDuring;
    return {'iab': ?iab, 'viewableDuring': ?viewableDuring};
  }
}

/// Used by:
///
/// - displayvideo:v2 : DoubleVerifyFraudInvalidTraffic
/// - displayvideo:v3 : DoubleVerifyFraudInvalidTraffic
/// - displayvideo:v4 : DoubleVerifyFraudInvalidTraffic
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
        avoidInsufficientOption: json_['avoidInsufficientOption'] as core.bool?,
        avoidedFraudOption: json_['avoidedFraudOption'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final avoidInsufficientOption = this.avoidInsufficientOption;
    final avoidedFraudOption = this.avoidedFraudOption;
    return {
      'avoidInsufficientOption': ?avoidInsufficientOption,
      'avoidedFraudOption': ?avoidedFraudOption,
    };
  }
}

/// Used by:
///
/// - displayvideo:v2 : DoubleVerifyVideoViewability
/// - displayvideo:v3 : DoubleVerifyVideoViewability
/// - displayvideo:v4 : DoubleVerifyVideoViewability
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
        playerImpressionRate: json_['playerImpressionRate'] as core.String?,
        videoIab: json_['videoIab'] as core.String?,
        videoViewableRate: json_['videoViewableRate'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final playerImpressionRate = this.playerImpressionRate;
    final videoIab = this.videoIab;
    final videoViewableRate = this.videoViewableRate;
    return {
      'playerImpressionRate': ?playerImpressionRate,
      'videoIab': ?videoIab,
      'videoViewableRate': ?videoViewableRate,
    };
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
/// - displayvideo:v2 : DuplicateLineItemRequest
/// - displayvideo:v3 : DuplicateLineItemRequest
/// - displayvideo:v4 : DuplicateLineItemRequest
class $DuplicateLineItemRequest {
  /// Whether this line item will serve European Union political ads.
  ///
  /// If contains_eu_political_ads has been set to
  /// `DOES_NOT_CONTAIN_EU_POLITICAL_ADVERTISING` in the parent advertiser, then
  /// this field will be assigned `DOES_NOT_CONTAIN_EU_POLITICAL_ADVERTISING` if
  /// not otherwise specified. This field can then be updated using the UI, API,
  /// or Structured Data Files. This field must be assigned when creating a new
  /// line item. Otherwise, **the `advertisers.lineItems.create` request will
  /// fail**.
  /// Possible string values are:
  /// - "EU_POLITICAL_ADVERTISING_STATUS_UNKNOWN" : Unknown.
  /// - "CONTAINS_EU_POLITICAL_ADVERTISING" : Contains EU political advertising.
  /// - "DOES_NOT_CONTAIN_EU_POLITICAL_ADVERTISING" : Does not contain EU
  /// political advertising.
  core.String? containsEuPoliticalAds;

  /// The display name of the new line item.
  ///
  /// Must be UTF-8 encoded with a maximum size of 240 bytes.
  core.String? targetDisplayName;

  $DuplicateLineItemRequest({
    this.containsEuPoliticalAds,
    this.targetDisplayName,
  });

  $DuplicateLineItemRequest.fromJson(core.Map json_)
    : this(
        containsEuPoliticalAds: json_['containsEuPoliticalAds'] as core.String?,
        targetDisplayName: json_['targetDisplayName'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final containsEuPoliticalAds = this.containsEuPoliticalAds;
    final targetDisplayName = this.targetDisplayName;
    return {
      'containsEuPoliticalAds': ?containsEuPoliticalAds,
      'targetDisplayName': ?targetDisplayName,
    };
  }
}

/// Used by:
///
/// - displayvideo:v2 : DuplicateLineItemResponse
/// - displayvideo:v3 : DuplicateLineItemResponse
/// - displayvideo:v4 : DuplicateLineItemResponse
class $DuplicateLineItemResponse {
  /// The ID of the created line item.
  core.String? duplicateLineItemId;

  $DuplicateLineItemResponse({this.duplicateLineItemId});

  $DuplicateLineItemResponse.fromJson(core.Map json_)
    : this(duplicateLineItemId: json_['duplicateLineItemId'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final duplicateLineItemId = this.duplicateLineItemId;
    return {'duplicateLineItemId': ?duplicateLineItemId};
  }
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

  $DynamicListenerState({this.lastUpdated, this.listener, this.versionInfo});

  $DynamicListenerState.fromJson(core.Map json_)
    : this(
        lastUpdated: json_['lastUpdated'] as core.String?,
        listener: json_.containsKey('listener')
            ? json_['listener'] as core.Map<core.String, core.dynamic>
            : null,
        versionInfo: json_['versionInfo'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final lastUpdated = this.lastUpdated;
    final listener = this.listener;
    final versionInfo = this.versionInfo;
    return {
      'lastUpdated': ?lastUpdated,
      'listener': ?listener,
      'versionInfo': ?versionInfo,
    };
  }
}

/// Used by:
///
/// - displayvideo:v2 : EditGuaranteedOrderReadAccessorsRequest
/// - displayvideo:v3 : EditGuaranteedOrderReadAccessorsRequest
/// - displayvideo:v4 : EditGuaranteedOrderReadAccessorsRequest
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
        addedAdvertisers: (json_['addedAdvertisers'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        partnerId: json_['partnerId'] as core.String?,
        readAccessInherited: json_['readAccessInherited'] as core.bool?,
        removedAdvertisers: (json_['removedAdvertisers'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final addedAdvertisers = this.addedAdvertisers;
    final partnerId = this.partnerId;
    final readAccessInherited = this.readAccessInherited;
    final removedAdvertisers = this.removedAdvertisers;
    return {
      'addedAdvertisers': ?addedAdvertisers,
      'partnerId': ?partnerId,
      'readAccessInherited': ?readAccessInherited,
      'removedAdvertisers': ?removedAdvertisers,
    };
  }
}

/// Used by:
///
/// - displayvideo:v2 : EditGuaranteedOrderReadAccessorsResponse
/// - displayvideo:v3 : EditGuaranteedOrderReadAccessorsResponse
/// - displayvideo:v4 : EditGuaranteedOrderReadAccessorsResponse
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
        readAccessInherited: json_['readAccessInherited'] as core.bool?,
        readAdvertiserIds: (json_['readAdvertiserIds'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final readAccessInherited = this.readAccessInherited;
    final readAdvertiserIds = this.readAdvertiserIds;
    return {
      'readAccessInherited': ?readAccessInherited,
      'readAdvertiserIds': ?readAdvertiserIds,
    };
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
/// - agentidentity:v1 : Empty
/// - agentidentity:v1 : GeminiEnterpriseAuthProviderParams
/// - agentidentity:v1 : RevokeAuthorizationResponse
/// - agentidentitycredentials:v1 : GoogleCloudAgentidentitycredentialsV1_ConsentRejected
/// - agentidentitycredentials:v1 : GoogleCloudAgentidentitycredentialsV1_FinalizeCredentialsResponse
/// - agentidentitycredentials:v1 : GoogleCloudAgentidentitycredentialsV1_Pending
/// - agentregistry:v1 : CancelOperationRequest
/// - agentregistry:v1 : Empty
/// - aiplatform:v1 : GoogleCloudAiplatformV1ActivateOnlineEvaluatorRequest
/// - aiplatform:v1 : GoogleCloudAiplatformV1AddContextArtifactsAndExecutionsResponse
/// - aiplatform:v1 : GoogleCloudAiplatformV1AddContextChildrenResponse
/// - aiplatform:v1 : GoogleCloudAiplatformV1AddExecutionEventsResponse
/// - aiplatform:v1 : GoogleCloudAiplatformV1AppendEventResponse
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
/// - aiplatform:v1 : GoogleCloudAiplatformV1DirectUploadSource
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
/// - androidpublisher:v3 : UpdateAppStoreHostedAppResponse
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
/// - blockchainnodeengine:v1 : CancelOperationRequest
/// - blockchainnodeengine:v1 : GoogleProtobufEmpty
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
/// - chromemanagement:v1 : GoogleChromeManagementV1TelemetryAudioSevereUnderrunEvent
/// - chromemanagement:v1 : GoogleChromeManagementVersionsV1ClaimCertificateProvisioningProcessResponse
/// - chromemanagement:v1 : GoogleChromeManagementVersionsV1DisableInsightsRequest
/// - chromemanagement:v1 : GoogleChromeManagementVersionsV1SetFailureResponse
/// - chromemanagement:v1 : GoogleChromeManagementVersionsV1UploadCertificateResponse
/// - chromemanagement:v1 : GoogleLongrunningCancelOperationRequest
/// - chromemanagement:v1 : GoogleProtobufEmpty
/// - chromepolicy:v1 : GoogleChromePolicyVersionsV1RemoveCertificateResponse
/// - chromepolicy:v1 : GoogleChromePolicyVersionsV1RemoveNetworkResponse
/// - chromepolicy:v1 : GoogleProtobufEmpty
/// - chromewebstore:v2 : CancelSubmissionRequest
/// - chromewebstore:v2 : CancelSubmissionResponse
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
/// - cloudresourcemanager:v2 : UndeleteFolderRequest
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
/// - composer:v1 : RestartWebServerRequest
/// - compute:v1 : InterconnectApplicationAwareInterconnectStrictPriorityPolicy
/// - compute:v1 : ResourcePolicyDiskConsistencyGroupPolicy
/// - config:v1 : CancelOperationRequest
/// - config:v1 : Empty
/// - config:v1 : ExportPreviewResultRequest
/// - config:v1 : ExportRevisionStatefileRequest
/// - config:v1 : LockDeploymentRequest
/// - connectors:v1 : CancelOperationRequest
/// - connectors:v1 : DeprecateCustomConnectorVersionRequest
/// - connectors:v1 : Empty
/// - connectors:v1 : ListenEventResponse
/// - connectors:v1 : RefreshConnectionSchemaMetadataRequest
/// - connectors:v1 : RemoveConnectionToolspecOverrideRequest
/// - connectors:v1 : RepairEventingRequest
/// - connectors:v1 : RetryEventSubscriptionRequest
/// - connectors:v1 : WithdrawCustomConnectorVersionRequest
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
/// - content:v2.1 : InputFieldCheckboxInput
/// - content:v2.1 : UndeleteConversionSourceRequest
/// - contentwarehouse:v1 : GoogleCloudContentwarehouseV1DateTimeTypeOptions
/// - contentwarehouse:v1 : GoogleCloudContentwarehouseV1FloatTypeOptions
/// - contentwarehouse:v1 : GoogleCloudContentwarehouseV1IntegerTypeOptions
/// - contentwarehouse:v1 : GoogleCloudContentwarehouseV1MapTypeOptions
/// - contentwarehouse:v1 : GoogleCloudContentwarehouseV1TextTypeOptions
/// - contentwarehouse:v1 : GoogleCloudContentwarehouseV1TimestampTypeOptions
/// - contentwarehouse:v1 : GoogleProtobufEmpty
/// - css:v1 : Empty
/// - datacatalog:v1 : Empty
/// - datacatalog:v1 : GoogleCloudDatacatalogV1PhysicalSchemaCsvSchema
/// - datacatalog:v1 : GoogleCloudDatacatalogV1PhysicalSchemaOrcSchema
/// - datacatalog:v1 : GoogleCloudDatacatalogV1PhysicalSchemaParquetSchema
/// - datacatalog:v1 : GoogleCloudDatacatalogV1StarEntryRequest
/// - datacatalog:v1 : GoogleCloudDatacatalogV1StarEntryResponse
/// - datacatalog:v1 : GoogleCloudDatacatalogV1UnstarEntryRequest
/// - datacatalog:v1 : GoogleCloudDatacatalogV1UnstarEntryResponse
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
/// - datastream:v1 : SqlServerChangeTables
/// - datastream:v1 : SqlServerTransactionLogs
/// - datastream:v1 : SrvConnectionFormat
/// - datastream:v1 : StaticServiceIpConnectivity
/// - datastream:v1 : StopBackfillJobRequest
/// - datastream:v1 : StreamLargeObjects
/// - developerconnect:v1 : CancelOperationRequest
/// - developerconnect:v1 : Empty
/// - developerconnect:v1 : FetchAccessTokenRequest
/// - developerconnect:v1 : FetchReadTokenRequest
/// - developerconnect:v1 : FetchReadWriteTokenRequest
/// - dialogflow:v2 : GoogleCloudDialogflowV2CompleteConversationRequest
/// - dialogflow:v2 : GoogleCloudDialogflowV2DeployConversationModelRequest
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
/// - displayvideo:v2 : ActivateManualTriggerRequest
/// - displayvideo:v2 : DeactivateManualTriggerRequest
/// - displayvideo:v2 : Empty
/// - displayvideo:v3 : AdPolicyTopicConstraintAdPolicyGlobalCertificateDomainMismatchConstraint
/// - displayvideo:v3 : AdPolicyTopicConstraintAdPolicyGlobalCertificateMissingConstraint
/// - displayvideo:v3 : AdPolicyTopicConstraintAdPolicyResellerConstraint
/// - displayvideo:v3 : Empty
/// - displayvideo:v4 : AdPolicyTopicConstraintAdPolicyGlobalCertificateDomainMismatchConstraint
/// - displayvideo:v4 : AdPolicyTopicConstraintAdPolicyGlobalCertificateMissingConstraint
/// - displayvideo:v4 : AdPolicyTopicConstraintAdPolicyResellerConstraint
/// - displayvideo:v4 : Empty
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
/// - eventarc:v1 : GoogleCloudEventarcV1PipelineMessagePayloadFormatJsonFormat
/// - eventarc:v1 : GoogleLongrunningCancelOperationRequest
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
/// - firebaseml:v1 : CancelOperationRequest
/// - firebaseml:v1 : Empty
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
/// - gkehub:v1 : AppDevExperienceFeatureSpec
/// - gkehub:v1 : CancelOperationRequest
/// - gkehub:v1 : CancelRolloutRequest
/// - gkehub:v1 : Empty
/// - gkehub:v1 : FleetObservabilityMembershipSpec
/// - gkehub:v1 : FleetObservabilityMembershipState
/// - gkehub:v1 : PauseRolloutRequest
/// - gkehub:v1 : RBACRoleBindingActuationFeatureState
/// - gkehub:v1 : ScopeFeatureSpec
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
/// - memcache:v1 : CancelOperationRequest
/// - memcache:v1 : Empty
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
/// - metastore:v1 : CancelMigrationRequest
/// - metastore:v1 : CancelOperationRequest
/// - metastore:v1 : CompleteMigrationRequest
/// - metastore:v1 : Empty
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
/// - observability:v1 : CancelOperationRequest
/// - observability:v1 : Empty
/// - ondemandscanning:v1 : Empty
/// - oracledatabase:v1 : CancelOperationRequest
/// - oracledatabase:v1 : Empty
/// - oracledatabase:v1 : RestartAutonomousDatabaseRequest
/// - oracledatabase:v1 : StartAutonomousDatabaseRequest
/// - oracledatabase:v1 : StartGoldengateDeploymentRequest
/// - oracledatabase:v1 : StopAutonomousDatabaseRequest
/// - oracledatabase:v1 : StopGoldengateDeploymentRequest
/// - orgpolicy:v2 : GoogleProtobufEmpty
/// - osconfig:v1 : CancelOperationRequest
/// - osconfig:v1 : CancelPatchJobRequest
/// - osconfig:v1 : Empty
/// - osconfig:v1 : GooSettings
/// - osconfig:v1 : PausePatchDeploymentRequest
/// - osconfig:v1 : ResumePatchDeploymentRequest
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
/// - run:v1 : CancelExecutionRequest
/// - run:v1 : Empty
/// - run:v2 : GoogleCloudRunV2DockerBuild
/// - run:v2 : GoogleProtobufEmpty
/// - runtimeconfig:v1 : CancelOperationRequest
/// - runtimeconfig:v1 : Empty
/// - saasservicemgmt:v1 : Deprovision
/// - saasservicemgmt:v1 : Empty
/// - safebrowsing:v4 : GoogleProtobufEmpty
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
/// - tpu:v1 : Empty
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
/// - vault:v1 : GeminiOptions
/// - vault:v1 : HeldCalendarQuery
/// - vault:v1 : HeldGeminiQuery
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
/// - workspaceevents:v1 : Empty
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
/// - displayvideo:v2 : EnvironmentAssignedTargetingOptionDetails
/// - displayvideo:v3 : EnvironmentAssignedTargetingOptionDetails
/// - displayvideo:v4 : EnvironmentAssignedTargetingOptionDetails
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

  $EnvironmentAssignedTargetingOptionDetails({this.environment});

  $EnvironmentAssignedTargetingOptionDetails.fromJson(core.Map json_)
    : this(environment: json_['environment'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final environment = this.environment;
    return {'environment': ?environment};
  }
}

/// Used by:
///
/// - displayvideo:v2 : EnvironmentTargetingOptionDetails
/// - displayvideo:v3 : EnvironmentTargetingOptionDetails
/// - displayvideo:v4 : EnvironmentTargetingOptionDetails
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

  $EnvironmentTargetingOptionDetails({this.environment});

  $EnvironmentTargetingOptionDetails.fromJson(core.Map json_)
    : this(environment: json_['environment'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final environment = this.environment;
    return {'environment': ?environment};
  }
}

/// Used by:
///
/// - gkehub:v1 : ConfigManagementConfigSyncError
/// - gkehub:v1 : ConfigManagementInstallError
/// - gkehub:v2 : ConfigManagementConfigSyncError
class $Error {
  /// A string representing the user facing error message
  core.String? errorMessage;

  $Error({this.errorMessage});

  $Error.fromJson(core.Map json_)
    : this(errorMessage: json_['errorMessage'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final errorMessage = this.errorMessage;
    return {'errorMessage': ?errorMessage};
  }
}

/// Used by:
///
/// - displayvideo:v2 : ExchangeAssignedTargetingOptionDetails
/// - displayvideo:v3 : ExchangeAssignedTargetingOptionDetails
/// - displayvideo:v4 : ExchangeAssignedTargetingOptionDetails
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
  /// - "EXCHANGE_NETFLIX" : Netflix.
  /// - "EXCHANGE_CORE" : Core.
  /// - "EXCHANGE_COMMERCE_GRID" : Commerce Grid.
  /// - "EXCHANGE_SPOTIFY" : Spotify.
  /// - "EXCHANGE_TUBI" : Tubi.
  /// - "EXCHANGE_SNAP" : Snap.
  /// - "EXCHANGE_CADENT" : Cadent.
  /// - "EXCHANGE_EXTE" : Exte.
  core.String? exchange;

  $ExchangeAssignedTargetingOptionDetails({this.exchange});

  $ExchangeAssignedTargetingOptionDetails.fromJson(core.Map json_)
    : this(exchange: json_['exchange'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final exchange = this.exchange;
    return {'exchange': ?exchange};
  }
}

/// Used by:
///
/// - displayvideo:v2 : ExchangeConfigEnabledExchange
/// - displayvideo:v3 : ExchangeConfigEnabledExchange
/// - displayvideo:v4 : ExchangeConfigEnabledExchange
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
  /// - "EXCHANGE_NETFLIX" : Netflix.
  /// - "EXCHANGE_CORE" : Core.
  /// - "EXCHANGE_COMMERCE_GRID" : Commerce Grid.
  /// - "EXCHANGE_SPOTIFY" : Spotify.
  /// - "EXCHANGE_TUBI" : Tubi.
  /// - "EXCHANGE_SNAP" : Snap.
  /// - "EXCHANGE_CADENT" : Cadent.
  /// - "EXCHANGE_EXTE" : Exte.
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
        exchange: json_['exchange'] as core.String?,
        googleAdManagerAgencyId:
            json_['googleAdManagerAgencyId'] as core.String?,
        googleAdManagerBuyerNetworkId:
            json_['googleAdManagerBuyerNetworkId'] as core.String?,
        seatId: json_['seatId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final exchange = this.exchange;
    final googleAdManagerAgencyId = this.googleAdManagerAgencyId;
    final googleAdManagerBuyerNetworkId = this.googleAdManagerBuyerNetworkId;
    final seatId = this.seatId;
    return {
      'exchange': ?exchange,
      'googleAdManagerAgencyId': ?googleAdManagerAgencyId,
      'googleAdManagerBuyerNetworkId': ?googleAdManagerBuyerNetworkId,
      'seatId': ?seatId,
    };
  }
}

/// Used by:
///
/// - displayvideo:v2 : ExchangeReviewStatus
/// - displayvideo:v3 : ExchangeReviewStatus
/// - displayvideo:v4 : ExchangeReviewStatus
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
  /// - "EXCHANGE_NETFLIX" : Netflix.
  /// - "EXCHANGE_CORE" : Core.
  /// - "EXCHANGE_COMMERCE_GRID" : Commerce Grid.
  /// - "EXCHANGE_SPOTIFY" : Spotify.
  /// - "EXCHANGE_TUBI" : Tubi.
  /// - "EXCHANGE_SNAP" : Snap.
  /// - "EXCHANGE_CADENT" : Cadent.
  /// - "EXCHANGE_EXTE" : Exte.
  core.String? exchange;

  /// Status of the exchange review.
  /// Possible string values are:
  /// - "REVIEW_STATUS_UNSPECIFIED" : Type value is not specified or is unknown
  /// in this version.
  /// - "REVIEW_STATUS_APPROVED" : The creative is approved.
  /// - "REVIEW_STATUS_REJECTED" : The creative is rejected.
  /// - "REVIEW_STATUS_PENDING" : The creative is pending review.
  core.String? status;

  $ExchangeReviewStatus({this.exchange, this.status});

  $ExchangeReviewStatus.fromJson(core.Map json_)
    : this(
        exchange: json_['exchange'] as core.String?,
        status: json_['status'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final exchange = this.exchange;
    final status = this.status;
    return {'exchange': ?exchange, 'status': ?status};
  }
}

/// Used by:
///
/// - displayvideo:v2 : ExchangeTargetingOptionDetails
/// - displayvideo:v3 : ExchangeTargetingOptionDetails
/// - displayvideo:v4 : ExchangeTargetingOptionDetails
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
  /// - "EXCHANGE_NETFLIX" : Netflix.
  /// - "EXCHANGE_CORE" : Core.
  /// - "EXCHANGE_COMMERCE_GRID" : Commerce Grid.
  /// - "EXCHANGE_SPOTIFY" : Spotify.
  /// - "EXCHANGE_TUBI" : Tubi.
  /// - "EXCHANGE_SNAP" : Snap.
  /// - "EXCHANGE_CADENT" : Cadent.
  /// - "EXCHANGE_EXTE" : Exte.
  core.String? exchange;

  $ExchangeTargetingOptionDetails({this.exchange});

  $ExchangeTargetingOptionDetails.fromJson(core.Map json_)
    : this(exchange: json_['exchange'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final exchange = this.exchange;
    return {'exchange': ?exchange};
  }
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

  $ExecAction({this.command});

  $ExecAction.fromJson(core.Map json_)
    : this(
        command: (json_['command'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final command = this.command;
    return {'command': ?command};
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
/// - displayvideo:v2 : ExitEvent
/// - displayvideo:v3 : ExitEvent
/// - displayvideo:v4 : ExitEvent
class $ExitEvent {
  /// The name of the click tag of the exit event.
  ///
  /// The name must be unique within one creative. Leave it empty or unset for
  /// creatives containing image assets only.
  ///
  /// Optional.
  core.String? name;

  /// The name used to identify this event in reports.
  ///
  /// Leave it empty or unset for creatives containing image assets only.
  ///
  /// Optional.
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

  $ExitEvent({this.name, this.reportingName, this.type, this.url});

  $ExitEvent.fromJson(core.Map json_)
    : this(
        name: json_['name'] as core.String?,
        reportingName: json_['reportingName'] as core.String?,
        type: json_['type'] as core.String?,
        url: json_['url'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final name = this.name;
    final reportingName = this.reportingName;
    final type = this.type;
    final url = this.url;
    return {
      'name': ?name,
      'reportingName': ?reportingName,
      'type': ?type,
      'url': ?url,
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
  /// - "XML" : Export as XML. Only available for Gemini.
  /// - "JSON" : Export as JSON. Only available for Gemini in Workpace.
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
  /// - "XML" : Export as XML. Only available for Gemini.
  /// - "JSON" : Export as JSON. Only available for Gemini in Workpace.
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
/// - cloudresourcemanager:v2 : Expr
/// - cloudresourcemanager:v3 : Expr
/// - cloudtasks:v2 : Expr
/// - config:v1 : Expr
/// - connectors:v1 : Expr
/// - contactcenterinsights:v1 : GoogleTypeExpr
/// - containeranalysis:v1 : Expr
/// - contentwarehouse:v1 : GoogleTypeExpr
/// - datacatalog:v1 : Expr
/// - dataform:v1 : Expr
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
/// - logging:v2 : Expr
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
/// - policytroubleshooter:v3 : GoogleTypeExpr
/// - privateca:v1 : Expr
/// - pubsub:v1 : Expr
/// - run:v1 : Expr
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
/// - displayvideo:v2 : FixedBidStrategy
/// - displayvideo:v3 : FixedBidStrategy
/// - displayvideo:v4 : FixedBidStrategy
class $FixedBidStrategy {
  /// The fixed bid amount, in micros of the advertiser's currency.
  ///
  /// For insertion order entity, bid_amount_micros should be set as 0. For line
  /// item entity, bid_amount_micros must be greater than or equal to billable
  /// unit of the given currency and smaller than or equal to the upper limit
  /// 1000000000. For example, 1500000 represents 1.5 standard units of the
  /// currency.
  core.String? bidAmountMicros;

  $FixedBidStrategy({this.bidAmountMicros});

  $FixedBidStrategy.fromJson(core.Map json_)
    : this(bidAmountMicros: json_['bidAmountMicros'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final bidAmountMicros = this.bidAmountMicros;
    return {'bidAmountMicros': ?bidAmountMicros};
  }
}

/// Used by:
///
/// - osconfig:v1 : FixedOrPercent
/// - osconfig:v2 : FixedOrPercent
class $FixedOrPercent {
  /// Specifies a fixed value.
  core.int? fixed;

  /// Specifies the relative value defined as a percentage, which will be
  /// multiplied by a reference value.
  core.int? percent;

  $FixedOrPercent({this.fixed, this.percent});

  $FixedOrPercent.fromJson(core.Map json_)
    : this(
        fixed: json_['fixed'] as core.int?,
        percent: json_['percent'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final fixed = this.fixed;
    final percent = this.percent;
    return {'fixed': ?fixed, 'percent': ?percent};
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
/// - displayvideo:v2 : FrequencyCap
/// - displayvideo:v3 : FrequencyCap
/// - displayvideo:v4 : FrequencyCap
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
  /// on the value of time_unit: * `TIME_UNIT_MONTHS` - must be 1 *
  /// `TIME_UNIT_WEEKS` - must be between 1 and 4 * `TIME_UNIT_DAYS` - must be
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
        maxImpressions: json_['maxImpressions'] as core.int?,
        maxViews: json_['maxViews'] as core.int?,
        timeUnit: json_['timeUnit'] as core.String?,
        timeUnitCount: json_['timeUnitCount'] as core.int?,
        unlimited: json_['unlimited'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final maxImpressions = this.maxImpressions;
    final maxViews = this.maxViews;
    final timeUnit = this.timeUnit;
    final timeUnitCount = this.timeUnitCount;
    final unlimited = this.unlimited;
    return {
      'maxImpressions': ?maxImpressions,
      'maxViews': ?maxViews,
      'timeUnit': ?timeUnit,
      'timeUnitCount': ?timeUnitCount,
      'unlimited': ?unlimited,
    };
  }
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

  $Gcloud({this.additionalLinks, this.gcloudCommands, this.steps});

  $Gcloud.fromJson(core.Map json_)
    : this(
        additionalLinks: (json_['additionalLinks'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        gcloudCommands: (json_['gcloudCommands'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        steps: (json_['steps'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final additionalLinks = this.additionalLinks;
    final gcloudCommands = this.gcloudCommands;
    final steps = this.steps;
    return {
      'additionalLinks': ?additionalLinks,
      'gcloudCommands': ?gcloudCommands,
      'steps': ?steps,
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
/// - displayvideo:v2 : GenderAssignedTargetingOptionDetails
/// - displayvideo:v3 : GenderAssignedTargetingOptionDetails
/// - displayvideo:v4 : GenderAssignedTargetingOptionDetails
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

  $GenderAssignedTargetingOptionDetails({this.gender});

  $GenderAssignedTargetingOptionDetails.fromJson(core.Map json_)
    : this(gender: json_['gender'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final gender = this.gender;
    return {'gender': ?gender};
  }
}

/// Used by:
///
/// - displayvideo:v2 : GenderTargetingOptionDetails
/// - displayvideo:v3 : GenderTargetingOptionDetails
/// - displayvideo:v4 : GenderTargetingOptionDetails
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

  $GenderTargetingOptionDetails({this.gender});

  $GenderTargetingOptionDetails.fromJson(core.Map json_)
    : this(gender: json_['gender'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final gender = this.gender;
    return {'gender': ?gender};
  }
}

/// Used by:
///
/// - drive:v2 : GenerateCseTokenResponse
/// - drive:v3 : GenerateCseTokenResponse
class $GenerateCseTokenResponse {
  /// The current Key ACL Service (KACLS) ID associated with the JWT.
  core.String? currentKaclsId;

  /// Name of the KACLs that the returned KACLs ID points to.
  core.String? currentKaclsName;

  /// The fileId for which the JWT was generated.
  core.String? fileId;

  /// The signed JSON Web Token (JWT) for the file.
  core.String? jwt;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string `"drive#generateCseTokenResponse"`.
  ///
  /// Output only.
  core.String? kind;

  $GenerateCseTokenResponse({
    this.currentKaclsId,
    this.currentKaclsName,
    this.fileId,
    this.jwt,
    this.kind,
  });

  $GenerateCseTokenResponse.fromJson(core.Map json_)
    : this(
        currentKaclsId: json_['currentKaclsId'] as core.String?,
        currentKaclsName: json_['currentKaclsName'] as core.String?,
        fileId: json_['fileId'] as core.String?,
        jwt: json_['jwt'] as core.String?,
        kind: json_['kind'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final currentKaclsId = this.currentKaclsId;
    final currentKaclsName = this.currentKaclsName;
    final fileId = this.fileId;
    final jwt = this.jwt;
    final kind = this.kind;
    return {
      'currentKaclsId': ?currentKaclsId,
      'currentKaclsName': ?currentKaclsName,
      'fileId': ?fileId,
      'jwt': ?jwt,
      'kind': ?kind,
    };
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
/// - displayvideo:v2 : GeoRegionAssignedTargetingOptionDetails
/// - displayvideo:v3 : GeoRegionAssignedTargetingOptionDetails
/// - displayvideo:v4 : GeoRegionAssignedTargetingOptionDetails
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
  /// - "GEO_REGION_TYPE_NATIONAL_PARK" : The geographic region is a national
  /// park.
  /// - "GEO_REGION_TYPE_BARRIO" : The geographic region is a barrio.
  /// - "GEO_REGION_TYPE_SUB_WARD" : The geographic region is a sub ward.
  /// - "GEO_REGION_TYPE_MUNICIPALITY_DISTRICT" : The geographic region is a
  /// municipality district.
  /// - "GEO_REGION_TYPE_SUB_DISTRICT" : The geographic region is a sub
  /// district.
  /// - "GEO_REGION_TYPE_QUARTER" : The geographic region is a quarter.
  /// - "GEO_REGION_TYPE_DIVISION" : The geographic region is a division.
  /// - "GEO_REGION_TYPE_COMMUNE" : The geographic region is a commune.
  /// - "GEO_REGION_TYPE_COLLOQUIAL_AREA" : The geographic region is a
  /// colloquial area.
  /// - "GEO_REGION_TYPE_POST_TOWN" : The geographic region is a post town.
  /// - "GEO_REGION_TYPE_WARD" : The geographic region is a ward.
  /// - "GEO_REGION_TYPE_TOWN" : The geographic region is a town.
  /// - "GEO_REGION_TYPE_VILLAGE" : The geographic region is a village.
  /// - "GEO_REGION_TYPE_CITY_DISTRICT" : The geographic region is a city
  /// district.
  /// - "GEO_REGION_TYPE_SUBURB" : The geographic region is a suburb.
  /// - "GEO_REGION_TYPE_HAMLET" : The geographic region is a hamlet.
  /// - "GEO_REGION_TYPE_MUNICIPAL_DISTRICT" : The geographic region is a
  /// municipal district.
  /// - "GEO_REGION_TYPE_COMMUNITY" : The geographic region is a community.
  /// - "GEO_REGION_TYPE_TOWNSHIP" : The geographic region is a township.
  /// - "GEO_REGION_TYPE_URBAN_DISTRICT" : The geographic region is an urban
  /// district.
  /// - "GEO_REGION_TYPE_RESIDENTIAL_AREA" : The geographic region is a
  /// residential area.
  /// - "GEO_REGION_TYPE_INDEPENDENT_CITY" : The geographic region is an
  /// independent city.
  /// - "GEO_REGION_TYPE_SECTOR" : The geographic region is a sector.
  /// - "GEO_REGION_TYPE_AREA" : The geographic region is an area.
  /// - "GEO_REGION_TYPE_ESTATE" : The geographic region is an estate.
  /// - "GEO_REGION_TYPE_PARISH" : The geographic region is a parish.
  /// - "GEO_REGION_TYPE_SETTLEMENT" : The geographic region is a settlement.
  /// - "GEO_REGION_TYPE_ZONE" : The geographic region is a zone.
  /// - "GEO_REGION_TYPE_COLONY" : The geographic region is a colony.
  /// - "GEO_REGION_TYPE_INDUSTRIAL_AREA" : The geographic region is an
  /// industrial area.
  /// - "GEO_REGION_TYPE_PROVINCIAL_CITY" : The geographic region is a
  /// provincial city.
  /// - "GEO_REGION_TYPE_RURAL_DISTRICT" : The geographic region is a rural
  /// district.
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
        displayName: json_['displayName'] as core.String?,
        geoRegionType: json_['geoRegionType'] as core.String?,
        negative: json_['negative'] as core.bool?,
        targetingOptionId: json_['targetingOptionId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final displayName = this.displayName;
    final geoRegionType = this.geoRegionType;
    final negative = this.negative;
    final targetingOptionId = this.targetingOptionId;
    return {
      'displayName': ?displayName,
      'geoRegionType': ?geoRegionType,
      'negative': ?negative,
      'targetingOptionId': ?targetingOptionId,
    };
  }
}

/// Used by:
///
/// - displayvideo:v2 : GeoRegionSearchTerms
/// - displayvideo:v3 : GeoRegionSearchTerms
/// - displayvideo:v4 : GeoRegionSearchTerms
class $GeoRegionSearchTerms {
  /// The search query for the desired geo region.
  ///
  /// The query can be a prefix, e.g. "New Yor", "Seattle", "USA", etc.
  core.String? geoRegionQuery;

  $GeoRegionSearchTerms({this.geoRegionQuery});

  $GeoRegionSearchTerms.fromJson(core.Map json_)
    : this(geoRegionQuery: json_['geoRegionQuery'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final geoRegionQuery = this.geoRegionQuery;
    return {'geoRegionQuery': ?geoRegionQuery};
  }
}

/// Used by:
///
/// - displayvideo:v2 : GeoRegionTargetingOptionDetails
/// - displayvideo:v3 : GeoRegionTargetingOptionDetails
/// - displayvideo:v4 : GeoRegionTargetingOptionDetails
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
  /// - "GEO_REGION_TYPE_NATIONAL_PARK" : The geographic region is a national
  /// park.
  /// - "GEO_REGION_TYPE_BARRIO" : The geographic region is a barrio.
  /// - "GEO_REGION_TYPE_SUB_WARD" : The geographic region is a sub ward.
  /// - "GEO_REGION_TYPE_MUNICIPALITY_DISTRICT" : The geographic region is a
  /// municipality district.
  /// - "GEO_REGION_TYPE_SUB_DISTRICT" : The geographic region is a sub
  /// district.
  /// - "GEO_REGION_TYPE_QUARTER" : The geographic region is a quarter.
  /// - "GEO_REGION_TYPE_DIVISION" : The geographic region is a division.
  /// - "GEO_REGION_TYPE_COMMUNE" : The geographic region is a commune.
  /// - "GEO_REGION_TYPE_COLLOQUIAL_AREA" : The geographic region is a
  /// colloquial area.
  /// - "GEO_REGION_TYPE_POST_TOWN" : The geographic region is a post town.
  /// - "GEO_REGION_TYPE_WARD" : The geographic region is a ward.
  /// - "GEO_REGION_TYPE_TOWN" : The geographic region is a town.
  /// - "GEO_REGION_TYPE_VILLAGE" : The geographic region is a village.
  /// - "GEO_REGION_TYPE_CITY_DISTRICT" : The geographic region is a city
  /// district.
  /// - "GEO_REGION_TYPE_SUBURB" : The geographic region is a suburb.
  /// - "GEO_REGION_TYPE_HAMLET" : The geographic region is a hamlet.
  /// - "GEO_REGION_TYPE_MUNICIPAL_DISTRICT" : The geographic region is a
  /// municipal district.
  /// - "GEO_REGION_TYPE_COMMUNITY" : The geographic region is a community.
  /// - "GEO_REGION_TYPE_TOWNSHIP" : The geographic region is a township.
  /// - "GEO_REGION_TYPE_URBAN_DISTRICT" : The geographic region is an urban
  /// district.
  /// - "GEO_REGION_TYPE_RESIDENTIAL_AREA" : The geographic region is a
  /// residential area.
  /// - "GEO_REGION_TYPE_INDEPENDENT_CITY" : The geographic region is an
  /// independent city.
  /// - "GEO_REGION_TYPE_SECTOR" : The geographic region is a sector.
  /// - "GEO_REGION_TYPE_AREA" : The geographic region is an area.
  /// - "GEO_REGION_TYPE_ESTATE" : The geographic region is an estate.
  /// - "GEO_REGION_TYPE_PARISH" : The geographic region is a parish.
  /// - "GEO_REGION_TYPE_SETTLEMENT" : The geographic region is a settlement.
  /// - "GEO_REGION_TYPE_ZONE" : The geographic region is a zone.
  /// - "GEO_REGION_TYPE_COLONY" : The geographic region is a colony.
  /// - "GEO_REGION_TYPE_INDUSTRIAL_AREA" : The geographic region is an
  /// industrial area.
  /// - "GEO_REGION_TYPE_PROVINCIAL_CITY" : The geographic region is a
  /// provincial city.
  /// - "GEO_REGION_TYPE_RURAL_DISTRICT" : The geographic region is a rural
  /// district.
  core.String? geoRegionType;

  $GeoRegionTargetingOptionDetails({this.displayName, this.geoRegionType});

  $GeoRegionTargetingOptionDetails.fromJson(core.Map json_)
    : this(
        displayName: json_['displayName'] as core.String?,
        geoRegionType: json_['geoRegionType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final displayName = this.displayName;
    final geoRegionType = this.geoRegionType;
    return {'displayName': ?displayName, 'geoRegionType': ?geoRegionType};
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
/// - cloudresourcemanager:v2 : GetPolicyOptions
/// - cloudresourcemanager:v3 : GetPolicyOptions
/// - cloudtasks:v2 : GetPolicyOptions
/// - containeranalysis:v1 : GetPolicyOptions
/// - datacatalog:v1 : GetPolicyOptions
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
/// - displayvideo:v2 : GoogleAudience
/// - displayvideo:v3 : GoogleAudience
/// - displayvideo:v4 : GoogleAudience
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
        displayName: json_['displayName'] as core.String?,
        googleAudienceId: json_['googleAudienceId'] as core.String?,
        googleAudienceType: json_['googleAudienceType'] as core.String?,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final displayName = this.displayName;
    final googleAudienceId = this.googleAudienceId;
    final googleAudienceType = this.googleAudienceType;
    final name = this.name;
    return {
      'displayName': ?displayName,
      'googleAudienceId': ?googleAudienceId,
      'googleAudienceType': ?googleAudienceType,
      'name': ?name,
    };
  }
}

/// Used by:
///
/// - displayvideo:v2 : GoogleAudienceTargetingSetting
/// - displayvideo:v3 : GoogleAudienceTargetingSetting
/// - displayvideo:v4 : GoogleAudienceTargetingSetting
class $GoogleAudienceTargetingSetting {
  /// Google audience id of the Google audience targeting setting.
  ///
  /// This id is google_audience_id.
  ///
  /// Required.
  core.String? googleAudienceId;

  $GoogleAudienceTargetingSetting({this.googleAudienceId});

  $GoogleAudienceTargetingSetting.fromJson(core.Map json_)
    : this(googleAudienceId: json_['googleAudienceId'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final googleAudienceId = this.googleAudienceId;
    return {'googleAudienceId': ?googleAudienceId};
  }
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
        format: json_['format'] as core.String?,
        rawValue: json_['rawValue'] as core.String?,
        valueFormat: json_['valueFormat'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final format = this.format;
    final rawValue = this.rawValue;
    final valueFormat = this.valueFormat;
    return {
      'format': ?format,
      'rawValue': ?rawValue,
      'valueFormat': ?valueFormat,
    };
  }
}

/// Used by:
///
/// - contentwarehouse:v1 : GoogleCloudDocumentaiV1DocumentChunkedDocumentChunkChunkPageSpan
/// - documentai:v1 : GoogleCloudDocumentaiV1DocumentChunkedDocumentChunkChunkPageSpan
class $GoogleCloudDocumentaiV1DocumentChunkedDocumentChunkChunkPageSpan {
  /// Page where chunk ends in the document.
  core.int? pageEnd;

  /// Page where chunk starts in the document.
  core.int? pageStart;

  $GoogleCloudDocumentaiV1DocumentChunkedDocumentChunkChunkPageSpan({
    this.pageEnd,
    this.pageStart,
  });

  $GoogleCloudDocumentaiV1DocumentChunkedDocumentChunkChunkPageSpan.fromJson(
    core.Map json_,
  ) : this(
        pageEnd: json_['pageEnd'] as core.int?,
        pageStart: json_['pageStart'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final pageEnd = this.pageEnd;
    final pageStart = this.pageStart;
    return {'pageEnd': ?pageEnd, 'pageStart': ?pageStart};
  }
}

/// Used by:
///
/// - contentwarehouse:v1 : GoogleCloudDocumentaiV1DocumentDocumentLayoutDocumentLayoutBlockLayoutPageSpan
/// - documentai:v1 : GoogleCloudDocumentaiV1DocumentDocumentLayoutDocumentLayoutBlockLayoutPageSpan
class $GoogleCloudDocumentaiV1DocumentDocumentLayoutDocumentLayoutBlockLayoutPageSpan {
  /// Page where block ends in the document.
  core.int? pageEnd;

  /// Page where block starts in the document.
  core.int? pageStart;

  $GoogleCloudDocumentaiV1DocumentDocumentLayoutDocumentLayoutBlockLayoutPageSpan({
    this.pageEnd,
    this.pageStart,
  });

  $GoogleCloudDocumentaiV1DocumentDocumentLayoutDocumentLayoutBlockLayoutPageSpan.fromJson(
    core.Map json_,
  ) : this(
        pageEnd: json_['pageEnd'] as core.int?,
        pageStart: json_['pageStart'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final pageEnd = this.pageEnd;
    final pageStart = this.pageStart;
    return {'pageEnd': ?pageEnd, 'pageStart': ?pageStart};
  }
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
        objectId: json_['objectId'] as core.String?,
        relation: json_['relation'] as core.String?,
        subjectId: json_['subjectId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final objectId = this.objectId;
    final relation = this.relation;
    final subjectId = this.subjectId;
    return {
      'objectId': ?objectId,
      'relation': ?relation,
      'subjectId': ?subjectId,
    };
  }
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
        confidence: (json_['confidence'] as core.num?)?.toDouble(),
        languageCode: json_['languageCode'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final confidence = this.confidence;
    final languageCode = this.languageCode;
    return {'confidence': ?confidence, 'languageCode': ?languageCode};
  }
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
        height: (json_['height'] as core.num?)?.toDouble(),
        unit: json_['unit'] as core.String?,
        width: (json_['width'] as core.num?)?.toDouble(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final height = this.height;
    final unit = this.unit;
    final width = this.width;
    return {'height': ?height, 'unit': ?unit, 'width': ?width};
  }
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
    content = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
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
        content: json_['content'] as core.String?,
        height: json_['height'] as core.int?,
        mimeType: json_['mimeType'] as core.String?,
        width: json_['width'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final content = this.content;
    final height = this.height;
    final mimeType = this.mimeType;
    final width = this.width;
    return {
      'content': ?content,
      'height': ?height,
      'mimeType': ?mimeType,
      'width': ?width,
    };
  }
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
    core.Map json_,
  ) : this(
        confidence: (json_['confidence'] as core.num?)?.toDouble(),
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final confidence = this.confidence;
    final type = this.type;
    return {'confidence': ?confidence, 'type': ?type};
  }
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
    data = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
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
        cols: json_['cols'] as core.int?,
        data: json_['data'] as core.String?,
        rows: json_['rows'] as core.int?,
        type: json_['type'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final cols = this.cols;
    final data = this.data;
    final rows = this.rows;
    final type = this.type;
    return {'cols': ?cols, 'data': ?data, 'rows': ?rows, 'type': ?type};
  }
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

  $GoogleCloudDocumentaiV1DocumentPageTokenDetectedBreak({this.type});

  $GoogleCloudDocumentaiV1DocumentPageTokenDetectedBreak.fromJson(
    core.Map json_,
  ) : this(type: json_['type'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final type = this.type;
    return {'type': ?type};
  }
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

  $GoogleCloudDocumentaiV1DocumentStyleFontSize({this.size, this.unit});

  $GoogleCloudDocumentaiV1DocumentStyleFontSize.fromJson(core.Map json_)
    : this(
        size: (json_['size'] as core.num?)?.toDouble(),
        unit: json_['unit'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final size = this.size;
    final unit = this.unit;
    return {'size': ?size, 'unit': ?unit};
  }
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
        endIndex: json_['endIndex'] as core.String?,
        startIndex: json_['startIndex'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final endIndex = this.endIndex;
    final startIndex = this.startIndex;
    return {'endIndex': ?endIndex, 'startIndex': ?startIndex};
  }
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

  $GoogleCloudDocumentaiV1NormalizedVertex({this.x, this.y});

  $GoogleCloudDocumentaiV1NormalizedVertex.fromJson(core.Map json_)
    : this(
        x: (json_['x'] as core.num?)?.toDouble(),
        y: (json_['y'] as core.num?)?.toDouble(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final x = this.x;
    final y = this.y;
    return {'x': ?x, 'y': ?y};
  }
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

  $GoogleCloudDocumentaiV1Vertex({this.x, this.y});

  $GoogleCloudDocumentaiV1Vertex.fromJson(core.Map json_)
    : this(x: json_['x'] as core.int?, y: json_['y'] as core.int?);

  core.Map<core.String, core.dynamic> toJson() {
    final x = this.x;
    final y = this.y;
    return {'x': ?x, 'y': ?y};
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
/// - displayvideo:v2 : GuaranteedOrderStatus
/// - displayvideo:v3 : GuaranteedOrderStatus
/// - displayvideo:v4 : GuaranteedOrderStatus
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
        configStatus: json_['configStatus'] as core.String?,
        entityPauseReason: json_['entityPauseReason'] as core.String?,
        entityStatus: json_['entityStatus'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final configStatus = this.configStatus;
    final entityPauseReason = this.entityPauseReason;
    final entityStatus = this.entityStatus;
    return {
      'configStatus': ?configStatus,
      'entityPauseReason': ?entityPauseReason,
      'entityStatus': ?entityStatus,
    };
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
/// - displayvideo:v2 : HouseholdIncomeAssignedTargetingOptionDetails
/// - displayvideo:v3 : HouseholdIncomeAssignedTargetingOptionDetails
/// - displayvideo:v4 : HouseholdIncomeAssignedTargetingOptionDetails
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

  $HouseholdIncomeAssignedTargetingOptionDetails({this.householdIncome});

  $HouseholdIncomeAssignedTargetingOptionDetails.fromJson(core.Map json_)
    : this(householdIncome: json_['householdIncome'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final householdIncome = this.householdIncome;
    return {'householdIncome': ?householdIncome};
  }
}

/// Used by:
///
/// - displayvideo:v2 : HouseholdIncomeTargetingOptionDetails
/// - displayvideo:v3 : HouseholdIncomeTargetingOptionDetails
/// - displayvideo:v4 : HouseholdIncomeTargetingOptionDetails
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

  $HouseholdIncomeTargetingOptionDetails({this.householdIncome});

  $HouseholdIncomeTargetingOptionDetails.fromJson(core.Map json_)
    : this(householdIncome: json_['householdIncome'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final householdIncome = this.householdIncome;
    return {'householdIncome': ?householdIncome};
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
/// - health:v4 : HttpBody
/// - healthcare:v1 : HttpBody
/// - managedkafka:v1 : HttpBody
/// - ml:v1 : GoogleApi__HttpBody
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
/// - displayvideo:v3 : IdFilter
/// - displayvideo:v4 : IdFilter
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

  /// YouTube Ad Groups, by ID, to download in QA format.
  ///
  /// All IDs must belong to the same Advertiser or Partner specified in
  /// CreateSdfDownloadTaskRequest.
  ///
  /// Optional.
  core.List<core.String>? adGroupQaIds;

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

  /// Line Items, by ID, to download in QA format.
  ///
  /// All IDs must belong to the same Advertiser or Partner specified in
  /// CreateSdfDownloadTaskRequest.
  ///
  /// Optional.
  core.List<core.String>? lineItemQaIds;

  /// Media Products to download by ID.
  ///
  /// All IDs must belong to the same Advertiser or Partner specified in
  /// CreateSdfDownloadTaskRequest.
  core.List<core.String>? mediaProductIds;

  $IdFilter({
    this.adGroupAdIds,
    this.adGroupIds,
    this.adGroupQaIds,
    this.campaignIds,
    this.insertionOrderIds,
    this.lineItemIds,
    this.lineItemQaIds,
    this.mediaProductIds,
  });

  $IdFilter.fromJson(core.Map json_)
    : this(
        adGroupAdIds: (json_['adGroupAdIds'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        adGroupIds: (json_['adGroupIds'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        adGroupQaIds: (json_['adGroupQaIds'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        campaignIds: (json_['campaignIds'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        insertionOrderIds: (json_['insertionOrderIds'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        lineItemIds: (json_['lineItemIds'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        lineItemQaIds: (json_['lineItemQaIds'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        mediaProductIds: (json_['mediaProductIds'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final adGroupAdIds = this.adGroupAdIds;
    final adGroupIds = this.adGroupIds;
    final adGroupQaIds = this.adGroupQaIds;
    final campaignIds = this.campaignIds;
    final insertionOrderIds = this.insertionOrderIds;
    final lineItemIds = this.lineItemIds;
    final lineItemQaIds = this.lineItemQaIds;
    final mediaProductIds = this.mediaProductIds;
    return {
      'adGroupAdIds': ?adGroupAdIds,
      'adGroupIds': ?adGroupIds,
      'adGroupQaIds': ?adGroupQaIds,
      'campaignIds': ?campaignIds,
      'insertionOrderIds': ?insertionOrderIds,
      'lineItemIds': ?lineItemIds,
      'lineItemQaIds': ?lineItemQaIds,
      'mediaProductIds': ?mediaProductIds,
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
/// - gkehub:v1 : IdentityServiceAzureADConfig
/// - gkehub:v2 : IdentityServiceAzureADConfig
class $IdentityServiceAzureADConfig {
  /// ID for the registered client application that makes authentication
  /// requests to the Azure AD identity provider.
  core.String? clientId;

  /// Input only.
  ///
  /// Unencrypted AzureAD client secret will be passed to the GKE Hub CLH.
  core.String? clientSecret;

  /// Encrypted AzureAD client secret.
  ///
  /// Output only.
  core.String? encryptedClientSecret;
  core.List<core.int> get encryptedClientSecretAsBytes =>
      convert.base64.decode(encryptedClientSecret!);

  set encryptedClientSecretAsBytes(core.List<core.int> bytes_) {
    encryptedClientSecret = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  /// Format of the AzureAD groups that the client wants for auth.
  ///
  /// Optional.
  core.String? groupFormat;

  /// The redirect URL that kubectl uses for authorization.
  core.String? kubectlRedirectUri;

  /// Kind of Azure AD account to be authenticated.
  ///
  /// Supported values are or for accounts belonging to a specific tenant.
  core.String? tenant;

  /// Claim in the AzureAD ID Token that holds the user details.
  ///
  /// Optional.
  core.String? userClaim;

  $IdentityServiceAzureADConfig({
    this.clientId,
    this.clientSecret,
    this.encryptedClientSecret,
    this.groupFormat,
    this.kubectlRedirectUri,
    this.tenant,
    this.userClaim,
  });

  $IdentityServiceAzureADConfig.fromJson(core.Map json_)
    : this(
        clientId: json_['clientId'] as core.String?,
        clientSecret: json_['clientSecret'] as core.String?,
        encryptedClientSecret: json_['encryptedClientSecret'] as core.String?,
        groupFormat: json_['groupFormat'] as core.String?,
        kubectlRedirectUri: json_['kubectlRedirectUri'] as core.String?,
        tenant: json_['tenant'] as core.String?,
        userClaim: json_['userClaim'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final clientId = this.clientId;
    final clientSecret = this.clientSecret;
    final encryptedClientSecret = this.encryptedClientSecret;
    final groupFormat = this.groupFormat;
    final kubectlRedirectUri = this.kubectlRedirectUri;
    final tenant = this.tenant;
    final userClaim = this.userClaim;
    return {
      'clientId': ?clientId,
      'clientSecret': ?clientSecret,
      'encryptedClientSecret': ?encryptedClientSecret,
      'groupFormat': ?groupFormat,
      'kubectlRedirectUri': ?kubectlRedirectUri,
      'tenant': ?tenant,
      'userClaim': ?userClaim,
    };
  }
}

/// Used by:
///
/// - gkehub:v1 : IdentityServiceDiagnosticInterface
/// - gkehub:v2 : IdentityServiceDiagnosticInterface
class $IdentityServiceDiagnosticInterface {
  /// Determines whether to enable the diagnostic interface.
  core.bool? enabled;

  /// Determines the expiration time of the diagnostic interface enablement.
  ///
  /// When reached, requests to the interface would be automatically rejected.
  core.String? expirationTime;

  $IdentityServiceDiagnosticInterface({this.enabled, this.expirationTime});

  $IdentityServiceDiagnosticInterface.fromJson(core.Map json_)
    : this(
        enabled: json_['enabled'] as core.bool?,
        expirationTime: json_['expirationTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final enabled = this.enabled;
    final expirationTime = this.expirationTime;
    return {'enabled': ?enabled, 'expirationTime': ?expirationTime};
  }
}

/// Used by:
///
/// - gkehub:v1 : IdentityServiceGoogleConfig
/// - gkehub:v2 : IdentityServiceGoogleConfig
class $IdentityServiceGoogleConfig {
  /// Disable automatic configuration of Google Plugin on supported platforms.
  core.bool? disable;

  $IdentityServiceGoogleConfig({this.disable});

  $IdentityServiceGoogleConfig.fromJson(core.Map json_)
    : this(disable: json_['disable'] as core.bool?);

  core.Map<core.String, core.dynamic> toJson() {
    final disable = this.disable;
    return {'disable': ?disable};
  }
}

/// Used by:
///
/// - gkehub:v1 : IdentityServiceGroupConfig
/// - gkehub:v2 : IdentityServiceGroupConfig
class $IdentityServiceGroupConfig {
  /// The location of the subtree in the LDAP directory to search for group
  /// entries.
  ///
  /// Required.
  core.String? baseDn;

  /// Optional filter to be used when searching for groups a user belongs to.
  ///
  /// This can be used to explicitly match only certain groups in order to
  /// reduce the amount of groups returned for each user. This defaults to
  /// "(objectClass=Group)".
  ///
  /// Optional.
  core.String? filter;

  /// The identifying name of each group a user belongs to.
  ///
  /// For example, if this is set to "distinguishedName" then RBACs and other
  /// group expectations should be written as full DNs. This defaults to
  /// "distinguishedName".
  ///
  /// Optional.
  core.String? idAttribute;

  $IdentityServiceGroupConfig({this.baseDn, this.filter, this.idAttribute});

  $IdentityServiceGroupConfig.fromJson(core.Map json_)
    : this(
        baseDn: json_['baseDn'] as core.String?,
        filter: json_['filter'] as core.String?,
        idAttribute: json_['idAttribute'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final baseDn = this.baseDn;
    final filter = this.filter;
    final idAttribute = this.idAttribute;
    return {'baseDn': ?baseDn, 'filter': ?filter, 'idAttribute': ?idAttribute};
  }
}

/// Used by:
///
/// - gkehub:v1 : IdentityServiceOidcConfig
/// - gkehub:v2 : IdentityServiceOidcConfig
class $IdentityServiceOidcConfig {
  /// PEM-encoded CA for OIDC provider.
  core.String? certificateAuthorityData;

  /// ID for OIDC client application.
  core.String? clientId;

  /// Input only.
  ///
  /// Unencrypted OIDC client secret will be passed to the GKE Hub CLH.
  core.String? clientSecret;

  /// Flag to denote if reverse proxy is used to connect to auth provider.
  ///
  /// This flag should be set to true when provider is not reachable by Google
  /// Cloud Console.
  core.bool? deployCloudConsoleProxy;

  /// Enable access token.
  core.bool? enableAccessToken;

  /// Encrypted OIDC Client secret
  ///
  /// Output only.
  core.String? encryptedClientSecret;
  core.List<core.int> get encryptedClientSecretAsBytes =>
      convert.base64.decode(encryptedClientSecret!);

  set encryptedClientSecretAsBytes(core.List<core.int> bytes_) {
    encryptedClientSecret = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  /// Comma-separated list of key-value pairs.
  core.String? extraParams;

  /// Prefix to prepend to group name.
  core.String? groupPrefix;

  /// Claim in OIDC ID token that holds group information.
  core.String? groupsClaim;

  /// URI for the OIDC provider.
  ///
  /// This should point to the level below .well-known/openid-configuration.
  core.String? issuerUri;

  /// Registered redirect uri to redirect users going through OAuth flow using
  /// kubectl plugin.
  core.String? kubectlRedirectUri;

  /// Comma-separated list of identifiers.
  core.String? scopes;

  /// Claim in OIDC ID token that holds username.
  core.String? userClaim;

  /// Prefix to prepend to user name.
  core.String? userPrefix;

  $IdentityServiceOidcConfig({
    this.certificateAuthorityData,
    this.clientId,
    this.clientSecret,
    this.deployCloudConsoleProxy,
    this.enableAccessToken,
    this.encryptedClientSecret,
    this.extraParams,
    this.groupPrefix,
    this.groupsClaim,
    this.issuerUri,
    this.kubectlRedirectUri,
    this.scopes,
    this.userClaim,
    this.userPrefix,
  });

  $IdentityServiceOidcConfig.fromJson(core.Map json_)
    : this(
        certificateAuthorityData:
            json_['certificateAuthorityData'] as core.String?,
        clientId: json_['clientId'] as core.String?,
        clientSecret: json_['clientSecret'] as core.String?,
        deployCloudConsoleProxy: json_['deployCloudConsoleProxy'] as core.bool?,
        enableAccessToken: json_['enableAccessToken'] as core.bool?,
        encryptedClientSecret: json_['encryptedClientSecret'] as core.String?,
        extraParams: json_['extraParams'] as core.String?,
        groupPrefix: json_['groupPrefix'] as core.String?,
        groupsClaim: json_['groupsClaim'] as core.String?,
        issuerUri: json_['issuerUri'] as core.String?,
        kubectlRedirectUri: json_['kubectlRedirectUri'] as core.String?,
        scopes: json_['scopes'] as core.String?,
        userClaim: json_['userClaim'] as core.String?,
        userPrefix: json_['userPrefix'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final certificateAuthorityData = this.certificateAuthorityData;
    final clientId = this.clientId;
    final clientSecret = this.clientSecret;
    final deployCloudConsoleProxy = this.deployCloudConsoleProxy;
    final enableAccessToken = this.enableAccessToken;
    final encryptedClientSecret = this.encryptedClientSecret;
    final extraParams = this.extraParams;
    final groupPrefix = this.groupPrefix;
    final groupsClaim = this.groupsClaim;
    final issuerUri = this.issuerUri;
    final kubectlRedirectUri = this.kubectlRedirectUri;
    final scopes = this.scopes;
    final userClaim = this.userClaim;
    final userPrefix = this.userPrefix;
    return {
      'certificateAuthorityData': ?certificateAuthorityData,
      'clientId': ?clientId,
      'clientSecret': ?clientSecret,
      'deployCloudConsoleProxy': ?deployCloudConsoleProxy,
      'enableAccessToken': ?enableAccessToken,
      'encryptedClientSecret': ?encryptedClientSecret,
      'extraParams': ?extraParams,
      'groupPrefix': ?groupPrefix,
      'groupsClaim': ?groupsClaim,
      'issuerUri': ?issuerUri,
      'kubectlRedirectUri': ?kubectlRedirectUri,
      'scopes': ?scopes,
      'userClaim': ?userClaim,
      'userPrefix': ?userPrefix,
    };
  }
}

/// Used by:
///
/// - gkehub:v1 : IdentityServiceSamlConfig
/// - gkehub:v2 : IdentityServiceSamlConfig
class $IdentityServiceSamlConfig {
  /// The mapping of additional user attributes like nickname, birthday and
  /// address etc..
  ///
  /// `key` is the name of this additional attribute. `value` is a string
  /// presenting as CEL(common expression language, go/cel) used for getting the
  /// value from the resources. Take nickname as an example, in this case, `key`
  /// is "attribute.nickname" and `value` is "assertion.nickname".
  ///
  /// Optional.
  core.Map<core.String, core.String>? attributeMapping;

  /// Prefix to prepend to group name.
  ///
  /// Optional.
  core.String? groupPrefix;

  /// The SAML attribute to read groups from.
  ///
  /// This value is expected to be a string and will be passed along as-is (with
  /// the option of being prefixed by the `group_prefix`).
  ///
  /// Optional.
  core.String? groupsAttribute;

  /// The list of IdP certificates to validate the SAML response against.
  ///
  /// Required.
  core.List<core.String>? identityProviderCertificates;

  /// The entity ID of the SAML IdP.
  ///
  /// Required.
  core.String? identityProviderId;

  /// The URI where the SAML IdP exposes the SSO service.
  ///
  /// Required.
  core.String? identityProviderSsoUri;

  /// The SAML attribute to read username from.
  ///
  /// If unspecified, the username will be read from the NameID element of the
  /// assertion in SAML response. This value is expected to be a string and will
  /// be passed along as-is (with the option of being prefixed by the
  /// `user_prefix`).
  ///
  /// Optional.
  core.String? userAttribute;

  /// Prefix to prepend to user name.
  ///
  /// Optional.
  core.String? userPrefix;

  $IdentityServiceSamlConfig({
    this.attributeMapping,
    this.groupPrefix,
    this.groupsAttribute,
    this.identityProviderCertificates,
    this.identityProviderId,
    this.identityProviderSsoUri,
    this.userAttribute,
    this.userPrefix,
  });

  $IdentityServiceSamlConfig.fromJson(core.Map json_)
    : this(
        attributeMapping:
            (json_['attributeMapping'] as core.Map<core.String, core.dynamic>?)
                ?.map((key, value) => core.MapEntry(key, value as core.String)),
        groupPrefix: json_['groupPrefix'] as core.String?,
        groupsAttribute: json_['groupsAttribute'] as core.String?,
        identityProviderCertificates:
            (json_['identityProviderCertificates'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        identityProviderId: json_['identityProviderId'] as core.String?,
        identityProviderSsoUri: json_['identityProviderSsoUri'] as core.String?,
        userAttribute: json_['userAttribute'] as core.String?,
        userPrefix: json_['userPrefix'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final attributeMapping = this.attributeMapping;
    final groupPrefix = this.groupPrefix;
    final groupsAttribute = this.groupsAttribute;
    final identityProviderCertificates = this.identityProviderCertificates;
    final identityProviderId = this.identityProviderId;
    final identityProviderSsoUri = this.identityProviderSsoUri;
    final userAttribute = this.userAttribute;
    final userPrefix = this.userPrefix;
    return {
      'attributeMapping': ?attributeMapping,
      'groupPrefix': ?groupPrefix,
      'groupsAttribute': ?groupsAttribute,
      'identityProviderCertificates': ?identityProviderCertificates,
      'identityProviderId': ?identityProviderId,
      'identityProviderSsoUri': ?identityProviderSsoUri,
      'userAttribute': ?userAttribute,
      'userPrefix': ?userPrefix,
    };
  }
}

/// Used by:
///
/// - gkehub:v1 : IdentityServiceServerConfig
/// - gkehub:v2 : IdentityServiceServerConfig
class $IdentityServiceServerConfig {
  /// Contains a Base64 encoded, PEM formatted certificate authority certificate
  /// for the LDAP server.
  ///
  /// This must be provided for the "ldaps" and "startTLS" connections.
  ///
  /// Optional.
  core.String? certificateAuthorityData;
  core.List<core.int> get certificateAuthorityDataAsBytes =>
      convert.base64.decode(certificateAuthorityData!);

  set certificateAuthorityDataAsBytes(core.List<core.int> bytes_) {
    certificateAuthorityData = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  /// Defines the connection type to communicate with the LDAP server.
  ///
  /// If `starttls` or `ldaps` is specified, the certificate_authority_data
  /// should not be empty.
  ///
  /// Optional.
  core.String? connectionType;

  /// Defines the hostname or IP of the LDAP server.
  ///
  /// Port is optional and will default to 389, if unspecified. For example,
  /// "ldap.server.example" or "10.10.10.10:389".
  ///
  /// Required.
  core.String? host;

  $IdentityServiceServerConfig({
    this.certificateAuthorityData,
    this.connectionType,
    this.host,
  });

  $IdentityServiceServerConfig.fromJson(core.Map json_)
    : this(
        certificateAuthorityData:
            json_['certificateAuthorityData'] as core.String?,
        connectionType: json_['connectionType'] as core.String?,
        host: json_['host'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final certificateAuthorityData = this.certificateAuthorityData;
    final connectionType = this.connectionType;
    final host = this.host;
    return {
      'certificateAuthorityData': ?certificateAuthorityData,
      'connectionType': ?connectionType,
      'host': ?host,
    };
  }
}

/// Used by:
///
/// - gkehub:v1 : IdentityServiceSimpleBindCredentials
/// - gkehub:v2 : IdentityServiceSimpleBindCredentials
class $IdentityServiceSimpleBindCredentials {
  /// The distinguished name(DN) of the service account object/user.
  ///
  /// Required.
  core.String? dn;

  /// The encrypted password of the service account object/user.
  ///
  /// Output only.
  core.String? encryptedPassword;
  core.List<core.int> get encryptedPasswordAsBytes =>
      convert.base64.decode(encryptedPassword!);

  set encryptedPasswordAsBytes(core.List<core.int> bytes_) {
    encryptedPassword = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  /// Input only.
  ///
  /// The password of the service account object/user.
  ///
  /// Required.
  core.String? password;

  $IdentityServiceSimpleBindCredentials({
    this.dn,
    this.encryptedPassword,
    this.password,
  });

  $IdentityServiceSimpleBindCredentials.fromJson(core.Map json_)
    : this(
        dn: json_['dn'] as core.String?,
        encryptedPassword: json_['encryptedPassword'] as core.String?,
        password: json_['password'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dn = this.dn;
    final encryptedPassword = this.encryptedPassword;
    final password = this.password;
    return {
      'dn': ?dn,
      'encryptedPassword': ?encryptedPassword,
      'password': ?password,
    };
  }
}

/// Used by:
///
/// - gkehub:v1 : IdentityServiceUserConfig
/// - gkehub:v2 : IdentityServiceUserConfig
class $IdentityServiceUserConfig {
  /// The location of the subtree in the LDAP directory to search for user
  /// entries.
  ///
  /// Required.
  core.String? baseDn;

  /// Filter to apply when searching for the user.
  ///
  /// This can be used to further restrict the user accounts which are allowed
  /// to login. This defaults to "(objectClass=User)".
  ///
  /// Optional.
  core.String? filter;

  /// Determines which attribute to use as the user's identity after they are
  /// authenticated.
  ///
  /// This is distinct from the loginAttribute field to allow users to login
  /// with a username, but then have their actual identifier be an email address
  /// or full Distinguished Name (DN). For example, setting loginAttribute to
  /// "sAMAccountName" and identifierAttribute to "userPrincipalName" would
  /// allow a user to login as "bsmith", but actual RBAC policies for the user
  /// would be written as "bsmith@example.com". Using "userPrincipalName" is
  /// recommended since this will be unique for each user. This defaults to
  /// "userPrincipalName".
  ///
  /// Optional.
  core.String? idAttribute;

  /// The name of the attribute which matches against the input username.
  ///
  /// This is used to find the user in the LDAP database e.g. "(=)" and is
  /// combined with the optional filter field. This defaults to
  /// "userPrincipalName".
  ///
  /// Optional.
  core.String? loginAttribute;

  $IdentityServiceUserConfig({
    this.baseDn,
    this.filter,
    this.idAttribute,
    this.loginAttribute,
  });

  $IdentityServiceUserConfig.fromJson(core.Map json_)
    : this(
        baseDn: json_['baseDn'] as core.String?,
        filter: json_['filter'] as core.String?,
        idAttribute: json_['idAttribute'] as core.String?,
        loginAttribute: json_['loginAttribute'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final baseDn = this.baseDn;
    final filter = this.filter;
    final idAttribute = this.idAttribute;
    final loginAttribute = this.loginAttribute;
    return {
      'baseDn': ?baseDn,
      'filter': ?filter,
      'idAttribute': ?idAttribute,
      'loginAttribute': ?loginAttribute,
    };
  }
}

/// Used by:
///
/// - ces:v1 : Image
/// - contactcenterinsights:v1 : GoogleCloudCesV1mainImage
class $Image {
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

  $Image({this.data, this.mimeType});

  $Image.fromJson(core.Map json_)
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
        lastUpdated: json_['lastUpdated'] as core.String?,
        name: json_['name'] as core.String?,
        scopedRouteConfigs: (json_['scopedRouteConfigs'] as core.List?)
            ?.map((value) => value as core.Map<core.String, core.dynamic>)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final lastUpdated = this.lastUpdated;
    final name = this.name;
    final scopedRouteConfigs = this.scopedRouteConfigs;
    return {
      'lastUpdated': ?lastUpdated,
      'name': ?name,
      'scopedRouteConfigs': ?scopedRouteConfigs,
    };
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
/// - run:v1 : StartInstanceRequest
/// - run:v1 : StopInstanceRequest
class $InstanceRequest00 {
  /// Indicates that the server should validate the request and populate default
  /// values without persisting the request.
  ///
  /// Supported values: `all`
  ///
  /// Optional.
  core.String? dryRun;

  $InstanceRequest00({this.dryRun});

  $InstanceRequest00.fromJson(core.Map json_)
    : this(dryRun: json_['dryRun'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final dryRun = this.dryRun;
    return {'dryRun': ?dryRun};
  }
}

/// Used by:
///
/// - run:v2 : GoogleCloudRunV2StartInstanceRequest
/// - run:v2 : GoogleCloudRunV2StopInstanceRequest
class $InstanceRequest01 {
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

  $InstanceRequest01({this.etag, this.validateOnly});

  $InstanceRequest01.fromJson(core.Map json_)
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
/// - displayvideo:v3 : IntegralAdScience
/// - displayvideo:v4 : IntegralAdScience
class $IntegralAdScience {
  /// The custom segment ID provided by Integral Ad Science.
  ///
  /// The ID must be between `1000001` and `1999999` or `3000001` and `3999999`,
  /// inclusive.
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
  /// - "SUSPICIOUS_ACTIVITY_FD" : Ad Fraud - Exclude Fraudulent Device.
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

  /// The quality sync custom segment ID provided by Integral Ad Science.
  ///
  /// The ID must be between `3000000` and `4999999`, inclusive.
  ///
  /// Optional.
  core.List<core.String>? qualitySyncCustomSegmentId;

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
    this.qualitySyncCustomSegmentId,
    this.traqScoreOption,
    this.videoViewability,
  });

  $IntegralAdScience.fromJson(core.Map json_)
    : this(
        customSegmentId: (json_['customSegmentId'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        displayViewability: json_['displayViewability'] as core.String?,
        excludeUnrateable: json_['excludeUnrateable'] as core.bool?,
        excludedAdFraudRisk: json_['excludedAdFraudRisk'] as core.String?,
        excludedAdultRisk: json_['excludedAdultRisk'] as core.String?,
        excludedAlcoholRisk: json_['excludedAlcoholRisk'] as core.String?,
        excludedDrugsRisk: json_['excludedDrugsRisk'] as core.String?,
        excludedGamblingRisk: json_['excludedGamblingRisk'] as core.String?,
        excludedHateSpeechRisk: json_['excludedHateSpeechRisk'] as core.String?,
        excludedIllegalDownloadsRisk:
            json_['excludedIllegalDownloadsRisk'] as core.String?,
        excludedOffensiveLanguageRisk:
            json_['excludedOffensiveLanguageRisk'] as core.String?,
        excludedViolenceRisk: json_['excludedViolenceRisk'] as core.String?,
        qualitySyncCustomSegmentId:
            (json_['qualitySyncCustomSegmentId'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        traqScoreOption: json_['traqScoreOption'] as core.String?,
        videoViewability: json_['videoViewability'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final customSegmentId = this.customSegmentId;
    final displayViewability = this.displayViewability;
    final excludeUnrateable = this.excludeUnrateable;
    final excludedAdFraudRisk = this.excludedAdFraudRisk;
    final excludedAdultRisk = this.excludedAdultRisk;
    final excludedAlcoholRisk = this.excludedAlcoholRisk;
    final excludedDrugsRisk = this.excludedDrugsRisk;
    final excludedGamblingRisk = this.excludedGamblingRisk;
    final excludedHateSpeechRisk = this.excludedHateSpeechRisk;
    final excludedIllegalDownloadsRisk = this.excludedIllegalDownloadsRisk;
    final excludedOffensiveLanguageRisk = this.excludedOffensiveLanguageRisk;
    final excludedViolenceRisk = this.excludedViolenceRisk;
    final qualitySyncCustomSegmentId = this.qualitySyncCustomSegmentId;
    final traqScoreOption = this.traqScoreOption;
    final videoViewability = this.videoViewability;
    return {
      'customSegmentId': ?customSegmentId,
      'displayViewability': ?displayViewability,
      'excludeUnrateable': ?excludeUnrateable,
      'excludedAdFraudRisk': ?excludedAdFraudRisk,
      'excludedAdultRisk': ?excludedAdultRisk,
      'excludedAlcoholRisk': ?excludedAlcoholRisk,
      'excludedDrugsRisk': ?excludedDrugsRisk,
      'excludedGamblingRisk': ?excludedGamblingRisk,
      'excludedHateSpeechRisk': ?excludedHateSpeechRisk,
      'excludedIllegalDownloadsRisk': ?excludedIllegalDownloadsRisk,
      'excludedOffensiveLanguageRisk': ?excludedOffensiveLanguageRisk,
      'excludedViolenceRisk': ?excludedViolenceRisk,
      'qualitySyncCustomSegmentId': ?qualitySyncCustomSegmentId,
      'traqScoreOption': ?traqScoreOption,
      'videoViewability': ?videoViewability,
    };
  }
}

/// Used by:
///
/// - displayvideo:v2 : IntegrationDetails
/// - displayvideo:v3 : IntegrationDetails
/// - displayvideo:v4 : IntegrationDetails
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

  $IntegrationDetails({this.details, this.integrationCode});

  $IntegrationDetails.fromJson(core.Map json_)
    : this(
        details: json_['details'] as core.String?,
        integrationCode: json_['integrationCode'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final details = this.details;
    final integrationCode = this.integrationCode;
    return {'details': ?details, 'integrationCode': ?integrationCode};
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
/// - contentwarehouse:v1 : GoogleTypeInterval
/// - dataform:v1 : Interval
/// - datalineage:v1 : GoogleTypeInterval
/// - health:v4 : Interval
/// - merchantapi:inventories_v1 : Interval
/// - merchantapi:products_v1 : Interval
/// - merchantapi:promotions_v1 : Interval
/// - sheets:v4 : Interval
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
/// - displayvideo:v2 : InventorySourceAssignedTargetingOptionDetails
/// - displayvideo:v3 : InventorySourceAssignedTargetingOptionDetails
/// - displayvideo:v4 : InventorySourceAssignedTargetingOptionDetails
class $InventorySourceAssignedTargetingOptionDetails {
  /// ID of the inventory source.
  ///
  /// Should refer to the inventory_source_id field of an InventorySource
  /// resource.
  ///
  /// Required.
  core.String? inventorySourceId;

  $InventorySourceAssignedTargetingOptionDetails({this.inventorySourceId});

  $InventorySourceAssignedTargetingOptionDetails.fromJson(core.Map json_)
    : this(inventorySourceId: json_['inventorySourceId'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final inventorySourceId = this.inventorySourceId;
    return {'inventorySourceId': ?inventorySourceId};
  }
}

/// Used by:
///
/// - displayvideo:v2 : InventorySourceFilter
/// - displayvideo:v3 : InventorySourceFilter
/// - displayvideo:v4 : InventorySourceFilter
class $InventorySourceFilter {
  /// Inventory Sources to download by ID.
  ///
  /// All IDs must belong to the same Advertiser or Partner specified in
  /// CreateSdfDownloadTaskRequest. Leave empty to download all Inventory
  /// Sources for the selected Advertiser or Partner.
  core.List<core.String>? inventorySourceIds;

  $InventorySourceFilter({this.inventorySourceIds});

  $InventorySourceFilter.fromJson(core.Map json_)
    : this(
        inventorySourceIds: (json_['inventorySourceIds'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final inventorySourceIds = this.inventorySourceIds;
    return {'inventorySourceIds': ?inventorySourceIds};
  }
}

/// Used by:
///
/// - displayvideo:v2 : InventorySourceGroup
/// - displayvideo:v3 : InventorySourceGroup
/// - displayvideo:v4 : InventorySourceGroup
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
        displayName: json_['displayName'] as core.String?,
        inventorySourceGroupId: json_['inventorySourceGroupId'] as core.String?,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final displayName = this.displayName;
    final inventorySourceGroupId = this.inventorySourceGroupId;
    final name = this.name;
    return {
      'displayName': ?displayName,
      'inventorySourceGroupId': ?inventorySourceGroupId,
      'name': ?name,
    };
  }
}

/// Used by:
///
/// - displayvideo:v2 : InventorySourceGroupAssignedTargetingOptionDetails
/// - displayvideo:v3 : InventorySourceGroupAssignedTargetingOptionDetails
/// - displayvideo:v4 : InventorySourceGroupAssignedTargetingOptionDetails
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
        inventorySourceGroupId: json_['inventorySourceGroupId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final inventorySourceGroupId = this.inventorySourceGroupId;
    return {'inventorySourceGroupId': ?inventorySourceGroupId};
  }
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

  $IssuesRequestPayload({this.contentOption, this.userInputActionOption});

  $IssuesRequestPayload.fromJson(core.Map json_)
    : this(
        contentOption: json_['contentOption'] as core.String?,
        userInputActionOption: json_['userInputActionOption'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final contentOption = this.contentOption;
    final userInputActionOption = this.userInputActionOption;
    return {
      'contentOption': ?contentOption,
      'userInputActionOption': ?userInputActionOption,
    };
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
/// - displayvideo:v2 : KeywordAssignedTargetingOptionDetails
/// - displayvideo:v3 : KeywordAssignedTargetingOptionDetails
/// - displayvideo:v4 : KeywordAssignedTargetingOptionDetails
class $KeywordAssignedTargetingOptionDetails {
  /// The policy names to exempt the keyword from.
  ///
  /// When attempting to target a keyword that violates a policy, the error
  /// returned will include the name of the relevant policy. Use that name in
  /// this field to exempt the targeted keyword from the policy. This field is
  /// only applicable for positively-targeted keywords assigned to Demand Gen
  /// resources. Retrieval and management of Demand Gen resources is currently
  /// in beta. This field is only available to allowlisted users.
  ///
  /// Optional.
  core.List<core.String>? exemptedPolicyNames;

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
    this.exemptedPolicyNames,
    this.keyword,
    this.negative,
  });

  $KeywordAssignedTargetingOptionDetails.fromJson(core.Map json_)
    : this(
        exemptedPolicyNames: (json_['exemptedPolicyNames'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        keyword: json_['keyword'] as core.String?,
        negative: json_['negative'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final exemptedPolicyNames = this.exemptedPolicyNames;
    final keyword = this.keyword;
    final negative = this.negative;
    return {
      'exemptedPolicyNames': ?exemptedPolicyNames,
      'keyword': ?keyword,
      'negative': ?negative,
    };
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
/// - displayvideo:v3 : Kpi
/// - displayvideo:v4 : Kpi
class $Kpi {
  /// Custom Bidding Algorithm ID associated with
  /// KPI_CUSTOM_IMPRESSION_VALUE_OVER_COST.
  ///
  /// This field is ignored if the proper KPI is not selected.
  ///
  /// Optional.
  core.String? kpiAlgorithmId;

  /// The goal amount, in micros of the advertiser's currency.
  ///
  /// Applicable when kpi_type is one of: * `KPI_TYPE_CPM` * `KPI_TYPE_CPC` *
  /// `KPI_TYPE_CPA` * `KPI_TYPE_CPIAVC` * `KPI_TYPE_VCPM` For example: 1500000
  /// represents 1.5 standard units of the currency.
  core.String? kpiAmountMicros;

  /// The decimal representation of the goal percentage in micros.
  ///
  /// Applicable when kpi_type is one of: * `KPI_TYPE_CTR` *
  /// `KPI_TYPE_VIEWABILITY` * `KPI_TYPE_CLICK_CVR` * `KPI_TYPE_IMPRESSION_CVR`
  /// * `KPI_TYPE_VTR` * `KPI_TYPE_AUDIO_COMPLETION_RATE` *
  /// `KPI_TYPE_VIDEO_COMPLETION_RATE` For example: 70000 represents 7% (decimal
  /// 0.07).
  core.String? kpiPercentageMicros;

  /// A KPI string, which can be empty.
  ///
  /// Must be UTF-8 encoded with a length of no more than 100 characters.
  /// Applicable when kpi_type is `KPI_TYPE_OTHER`.
  core.String? kpiString;

  /// The type of KPI.
  ///
  /// Required.
  /// Possible string values are:
  /// - "KPI_TYPE_UNSPECIFIED" : KPI type is not specified or is unknown in this
  /// version.
  /// - "KPI_TYPE_CPM" : The KPI is CPM (cost per mille).
  /// - "KPI_TYPE_CPC" : The KPI is CPC (cost per click).
  /// - "KPI_TYPE_CPA" : The KPI is CPA (cost per action).
  /// - "KPI_TYPE_CTR" : The KPI is CTR (click-through rate) percentage.
  /// - "KPI_TYPE_VIEWABILITY" : The KPI is Viewability percentage.
  /// - "KPI_TYPE_CPIAVC" : The KPI is CPIAVC (cost per impression audible and
  /// visible at completion).
  /// - "KPI_TYPE_CPE" : The KPI is CPE (cost per engagement).
  /// - "KPI_TYPE_CPV" : The KPI is set in CPV (cost per view).
  /// - "KPI_TYPE_CLICK_CVR" : The KPI is click conversion rate (conversions per
  /// click) percentage.
  /// - "KPI_TYPE_IMPRESSION_CVR" : The KPI is impression conversion rate
  /// (conversions per impression) percentage.
  /// - "KPI_TYPE_VCPM" : The KPI is VCPM (cost per thousand viewable
  /// impressions).
  /// - "KPI_TYPE_VTR" : The KPI is YouTube view rate (YouTube views per
  /// impression) percentage.
  /// - "KPI_TYPE_AUDIO_COMPLETION_RATE" : The KPI is audio completion rate
  /// (complete audio listens per impression) percentage.
  /// - "KPI_TYPE_VIDEO_COMPLETION_RATE" : The KPI is video completion rate
  /// (complete video views per impression) percentage.
  /// - "KPI_TYPE_CPCL" : The KPI is set in CPCL (cost per complete audio
  /// listen).
  /// - "KPI_TYPE_CPCV" : The KPI is set in CPCV (cost per complete video view).
  /// - "KPI_TYPE_TOS10" : The KPI is set in rate of time on screen 10+ seconds
  /// (Percentage of measurable, non-skippable impressions that were on the
  /// screen for at least 10 seconds).
  /// - "KPI_TYPE_MAXIMIZE_PACING" : The KPI is set to maximize brand impact
  /// while prioritizing spending the full budget.
  /// - "KPI_TYPE_CUSTOM_IMPRESSION_VALUE_OVER_COST" : The KPI is set in custom
  /// impression value divided by cost.
  /// - "KPI_TYPE_OTHER" : The KPI is some other value.
  core.String? kpiType;

  $Kpi({
    this.kpiAlgorithmId,
    this.kpiAmountMicros,
    this.kpiPercentageMicros,
    this.kpiString,
    this.kpiType,
  });

  $Kpi.fromJson(core.Map json_)
    : this(
        kpiAlgorithmId: json_['kpiAlgorithmId'] as core.String?,
        kpiAmountMicros: json_['kpiAmountMicros'] as core.String?,
        kpiPercentageMicros: json_['kpiPercentageMicros'] as core.String?,
        kpiString: json_['kpiString'] as core.String?,
        kpiType: json_['kpiType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final kpiAlgorithmId = this.kpiAlgorithmId;
    final kpiAmountMicros = this.kpiAmountMicros;
    final kpiPercentageMicros = this.kpiPercentageMicros;
    final kpiString = this.kpiString;
    final kpiType = this.kpiType;
    return {
      'kpiAlgorithmId': ?kpiAlgorithmId,
      'kpiAmountMicros': ?kpiAmountMicros,
      'kpiPercentageMicros': ?kpiPercentageMicros,
      'kpiString': ?kpiString,
      'kpiType': ?kpiType,
    };
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
/// - deploymentmanager:v2 : DeploymentLabelEntry
/// - deploymentmanager:v2 : DeploymentUpdateLabelEntry
class $LabelEntry {
  /// Key of the label
  core.String? key;

  /// Value of the label
  core.String? value;

  $LabelEntry({this.key, this.value});

  $LabelEntry.fromJson(core.Map json_)
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
/// - displayvideo:v2 : LanguageAssignedTargetingOptionDetails
/// - displayvideo:v3 : LanguageAssignedTargetingOptionDetails
/// - displayvideo:v4 : LanguageAssignedTargetingOptionDetails
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
        displayName: json_['displayName'] as core.String?,
        negative: json_['negative'] as core.bool?,
        targetingOptionId: json_['targetingOptionId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final displayName = this.displayName;
    final negative = this.negative;
    final targetingOptionId = this.targetingOptionId;
    return {
      'displayName': ?displayName,
      'negative': ?negative,
      'targetingOptionId': ?targetingOptionId,
    };
  }
}

/// Used by:
///
/// - displayvideo:v2 : LanguageTargetingOptionDetails
/// - displayvideo:v3 : LanguageTargetingOptionDetails
/// - displayvideo:v4 : LanguageTargetingOptionDetails
class $LanguageTargetingOptionDetails {
  /// The display name of the language (e.g., "French").
  ///
  /// Output only.
  core.String? displayName;

  $LanguageTargetingOptionDetails({this.displayName});

  $LanguageTargetingOptionDetails.fromJson(core.Map json_)
    : this(displayName: json_['displayName'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final displayName = this.displayName;
    return {'displayName': ?displayName};
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
/// - jobs:v3 : LatLng
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
/// - displayvideo:v2 : LineItemBudget
/// - displayvideo:v3 : LineItemBudget
/// - displayvideo:v4 : LineItemBudget
class $LineItemBudget {
  /// The type of the budget allocation.
  ///
  /// `LINE_ITEM_BUDGET_ALLOCATION_TYPE_AUTOMATIC` is only applicable when
  /// automatic budget allocation is enabled for the parent insertion order.
  /// This field must be set to `LINE_ITEM_BUDGET_ALLOCATION_TYPE_FIXED` for
  /// Demand Gen line items.
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

  $LineItemBudget({this.budgetAllocationType, this.budgetUnit, this.maxAmount});

  $LineItemBudget.fromJson(core.Map json_)
    : this(
        budgetAllocationType: json_['budgetAllocationType'] as core.String?,
        budgetUnit: json_['budgetUnit'] as core.String?,
        maxAmount: json_['maxAmount'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final budgetAllocationType = this.budgetAllocationType;
    final budgetUnit = this.budgetUnit;
    final maxAmount = this.maxAmount;
    return {
      'budgetAllocationType': ?budgetAllocationType,
      'budgetUnit': ?budgetUnit,
      'maxAmount': ?maxAmount,
    };
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
/// - deploymentmanager:v2 : HelpLink
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
/// - content:v2.1 : ServiceStoreConfigCutoffConfigLocalCutoffTime
/// - merchantapi:accounts_v1 : LocalCutoffTime
class $LocalCutoffTime {
  /// Hour local delivery orders must be placed by to process the same day.
  core.String? hour;

  /// Minute local delivery orders must be placed by to process the same day.
  core.String? minute;

  $LocalCutoffTime({this.hour, this.minute});

  $LocalCutoffTime.fromJson(core.Map json_)
    : this(
        hour: json_['hour'] as core.String?,
        minute: json_['minute'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final hour = this.hour;
    final minute = this.minute;
    return {'hour': ?hour, 'minute': ?minute};
  }
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

  $Locality({this.region, this.subZone, this.zone});

  $Locality.fromJson(core.Map json_)
    : this(
        region: json_['region'] as core.String?,
        subZone: json_['subZone'] as core.String?,
        zone: json_['zone'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final region = this.region;
    final subZone = this.subZone;
    final zone = this.zone;
    return {'region': ?region, 'subZone': ?subZone, 'zone': ?zone};
  }
}

/// Used by:
///
/// - deploymentmanager:v2 : LocalizedMessage
/// - vmmigration:v1 : LocalizedMessage
class $LocalizedMessage {
  /// The locale used following the specification defined at
  /// https://www.rfc-editor.org/rfc/bcp/bcp47.txt.
  ///
  /// Examples are: "en-US", "fr-CH", "es-MX"
  core.String? locale;

  /// The localized error message in the above locale.
  core.String? message;

  $LocalizedMessage({this.locale, this.message});

  $LocalizedMessage.fromJson(core.Map json_)
    : this(
        locale: json_['locale'] as core.String?,
        message: json_['message'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final locale = this.locale;
    final message = this.message;
    return {'locale': ?locale, 'message': ?message};
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
/// - backupdr:v1 : Location
/// - baremetalsolution:v2 : Location
/// - batch:v1 : Location
/// - beyondcorp:v1 : GoogleCloudLocationLocation
/// - bigquerydatatransfer:v1 : Location
/// - bigtableadmin:v2 : Location
/// - blockchainnodeengine:v1 : Location
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
/// - connectors:v1 : Location
/// - dataform:v1 : Location
/// - datafusion:v1 : Location
/// - datamigration:v1 : Location
/// - datastream:v1 : Location
/// - developerconnect:v1 : Location
/// - documentai:v1 : GoogleCloudLocationLocation
/// - domains:v1 : Location
/// - eventarc:v1 : Location
/// - file:v1 : Location
/// - firebaseapphosting:v1 : Location
/// - firebasedataconnect:v1 : Location
/// - firestore:v1 : Location
/// - ftp:v1 : Location
/// - gkebackup:v1 : Location
/// - gkehub:v1 : Location
/// - gkehub:v2 : Location
/// - gkeonprem:v1 : Location
/// - healthcare:v1 : Location
/// - hypercomputecluster:v1 : Location
/// - ids:v1 : Location
/// - looker:v1 : Location
/// - managedidentities:v1 : Location
/// - managedkafka:v1 : Location
/// - memcache:v1 : Location
/// - migrationcenter:v1 : Location
/// - netapp:v1 : Location
/// - networkconnectivity:v1 : Location
/// - networkmanagement:v1 : Location
/// - networksecurity:v1 : Location
/// - networkservices:v1 : Location
/// - notebooks:v1 : Location
/// - notebooks:v2 : Location
/// - observability:v1 : Location
/// - oracledatabase:v1 : Location
/// - parallelstore:v1 : Location
/// - parametermanager:v1 : Location
/// - privateca:v1 : Location
/// - rapidmigrationassessment:v1 : Location
/// - run:v1 : Location
/// - saasservicemgmt:v1 : GoogleCloudLocationLocation
/// - secretmanager:v1 : Location
/// - securesourcemanager:v1 : Location
/// - securityposture:v1 : Location
/// - servicedirectory:v1 : Location
/// - storagebatchoperations:v1 : Location
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
/// - displayvideo:v2 : LocationList
/// - displayvideo:v3 : LocationList
/// - displayvideo:v4 : LocationList
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
        advertiserId: json_['advertiserId'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        locationListId: json_['locationListId'] as core.String?,
        locationType: json_['locationType'] as core.String?,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final advertiserId = this.advertiserId;
    final displayName = this.displayName;
    final locationListId = this.locationListId;
    final locationType = this.locationType;
    final name = this.name;
    return {
      'advertiserId': ?advertiserId,
      'displayName': ?displayName,
      'locationListId': ?locationListId,
      'locationType': ?locationType,
      'name': ?name,
    };
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
/// - displayvideo:v2 : LookbackWindow
/// - displayvideo:v3 : LookbackWindow
/// - displayvideo:v4 : LookbackWindow
class $LookbackWindow {
  /// Lookback window, in days, from the last time a given user clicked on one
  /// of your ads.
  core.int? clickDays;

  /// Lookback window, in days, from the last time a given user viewed one of
  /// your ads.
  core.int? impressionDays;

  $LookbackWindow({this.clickDays, this.impressionDays});

  $LookbackWindow.fromJson(core.Map json_)
    : this(
        clickDays: json_['clickDays'] as core.int?,
        impressionDays: json_['impressionDays'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final clickDays = this.clickDays;
    final impressionDays = this.impressionDays;
    return {'clickDays': ?clickDays, 'impressionDays': ?impressionDays};
  }
}

/// Used by:
///
/// - displayvideo:v2 : LookupInvoiceCurrencyResponse
/// - displayvideo:v3 : LookupInvoiceCurrencyResponse
/// - displayvideo:v4 : LookupInvoiceCurrencyResponse
class $LookupInvoiceCurrencyResponse {
  /// Currency used by the advertiser in ISO 4217 format.
  core.String? currencyCode;

  $LookupInvoiceCurrencyResponse({this.currencyCode});

  $LookupInvoiceCurrencyResponse.fromJson(core.Map json_)
    : this(currencyCode: json_['currencyCode'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final currencyCode = this.currencyCode;
    return {'currencyCode': ?currencyCode};
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
/// - displayvideo:v2 : MaximizeSpendBidStrategy
/// - displayvideo:v3 : MaximizeSpendBidStrategy
class $MaximizeSpendBidStrategy {
  /// The ID of the Custom Bidding Algorithm used by this strategy.
  ///
  /// Only applicable when performance_goal_type is set to
  /// `BIDDING_STRATEGY_PERFORMANCE_GOAL_TYPE_CUSTOM_ALGO`. Assigning a custom
  /// bidding algorithm that uses floodlight activities not identified in
  /// floodlightActivityConfigs will return an error.
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
            json_['customBiddingAlgorithmId'] as core.String?,
        maxAverageCpmBidAmountMicros:
            json_['maxAverageCpmBidAmountMicros'] as core.String?,
        performanceGoalType: json_['performanceGoalType'] as core.String?,
        raiseBidForDeals: json_['raiseBidForDeals'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final customBiddingAlgorithmId = this.customBiddingAlgorithmId;
    final maxAverageCpmBidAmountMicros = this.maxAverageCpmBidAmountMicros;
    final performanceGoalType = this.performanceGoalType;
    final raiseBidForDeals = this.raiseBidForDeals;
    return {
      'customBiddingAlgorithmId': ?customBiddingAlgorithmId,
      'maxAverageCpmBidAmountMicros': ?maxAverageCpmBidAmountMicros,
      'performanceGoalType': ?performanceGoalType,
      'raiseBidForDeals': ?raiseBidForDeals,
    };
  }
}

/// Used by:
///
/// - displayvideo:v2 : MeasurementConfig
/// - displayvideo:v3 : MeasurementConfig
/// - displayvideo:v4 : MeasurementConfig
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
            json_['dv360ToCmCostReportingEnabled'] as core.bool?,
        dv360ToCmDataSharingEnabled:
            json_['dv360ToCmDataSharingEnabled'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dv360ToCmCostReportingEnabled = this.dv360ToCmCostReportingEnabled;
    final dv360ToCmDataSharingEnabled = this.dv360ToCmDataSharingEnabled;
    return {
      'dv360ToCmCostReportingEnabled': ?dv360ToCmCostReportingEnabled,
      'dv360ToCmDataSharingEnabled': ?dv360ToCmDataSharingEnabled,
    };
  }
}

/// Used by:
///
/// - chat:v1 : Media
/// - cloudsearch:v1 : Media
/// - displayvideo:v2 : GoogleBytestreamMedia
/// - displayvideo:v3 : GoogleBytestreamMedia
/// - displayvideo:v4 : GoogleBytestreamMedia
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
/// - displayvideo:v2 : MobileApp
/// - displayvideo:v3 : MobileApp
/// - displayvideo:v4 : MobileApp
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

  $MobileApp({this.appId, this.displayName, this.platform, this.publisher});

  $MobileApp.fromJson(core.Map json_)
    : this(
        appId: json_['appId'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        platform: json_['platform'] as core.String?,
        publisher: json_['publisher'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final appId = this.appId;
    final displayName = this.displayName;
    final platform = this.platform;
    final publisher = this.publisher;
    return {
      'appId': ?appId,
      'displayName': ?displayName,
      'platform': ?platform,
      'publisher': ?publisher,
    };
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
/// - aiplatform:v1 : GoogleCloudAiplatformV1ModelSourceInfo
/// - datacatalog:v1 : GoogleCloudDatacatalogV1VertexModelSourceInfo
class $ModelSourceInfo {
  /// If this Model is copy of another Model.
  ///
  /// If true then source_type pertains to the original.
  core.bool? copy;

  /// Type of the model source.
  /// Possible string values are:
  /// - "MODEL_SOURCE_TYPE_UNSPECIFIED" : Should not be used.
  /// - "AUTOML" : The Model is uploaded by automl training pipeline.
  /// - "CUSTOM" : The Model is uploaded by user or custom training pipeline.
  /// - "BQML" : The Model is registered and sync'ed from BigQuery ML.
  /// - "MODEL_GARDEN" : The Model is saved or tuned from Model Garden.
  /// - "GENIE" : The Model is saved or tuned from Genie.
  /// - "CUSTOM_TEXT_EMBEDDING" : The Model is uploaded by text embedding
  /// finetuning pipeline.
  /// - "MARKETPLACE" : The Model is saved or tuned from Marketplace.
  core.String? sourceType;

  $ModelSourceInfo({this.copy, this.sourceType});

  $ModelSourceInfo.fromJson(core.Map json_)
    : this(
        copy: json_['copy'] as core.bool?,
        sourceType: json_['sourceType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final copy = this.copy;
    final sourceType = this.sourceType;
    return {'copy': ?copy, 'sourceType': ?sourceType};
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
/// - contentwarehouse:v1 : GoogleTypeMoney
/// - displayvideo:v4 : Money
/// - documentai:v1 : GoogleTypeMoney
/// - domains:v1 : Money
/// - jobs:v3 : Money
/// - jobs:v4 : Money
/// - migrationcenter:v1 : Money
/// - mybusinessbusinessinformation:v1 : Money
/// - places:v1 : GoogleTypeMoney
/// - recommender:v1 : GoogleTypeMoney
/// - searchads360:v23 : GoogleType__Money
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
/// - displayvideo:v2 : NativeContentPositionAssignedTargetingOptionDetails
/// - displayvideo:v3 : NativeContentPositionAssignedTargetingOptionDetails
/// - displayvideo:v4 : NativeContentPositionAssignedTargetingOptionDetails
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

  $NativeContentPositionAssignedTargetingOptionDetails({this.contentPosition});

  $NativeContentPositionAssignedTargetingOptionDetails.fromJson(core.Map json_)
    : this(contentPosition: json_['contentPosition'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final contentPosition = this.contentPosition;
    return {'contentPosition': ?contentPosition};
  }
}

/// Used by:
///
/// - displayvideo:v2 : NativeContentPositionTargetingOptionDetails
/// - displayvideo:v3 : NativeContentPositionTargetingOptionDetails
/// - displayvideo:v4 : NativeContentPositionTargetingOptionDetails
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

  $NativeContentPositionTargetingOptionDetails({this.contentPosition});

  $NativeContentPositionTargetingOptionDetails.fromJson(core.Map json_)
    : this(contentPosition: json_['contentPosition'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final contentPosition = this.contentPosition;
    return {'contentPosition': ?contentPosition};
  }
}

/// Used by:
///
/// - displayvideo:v2 : NegativeKeyword
/// - displayvideo:v3 : NegativeKeyword
/// - displayvideo:v4 : NegativeKeyword
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

  $NegativeKeyword({this.keywordValue, this.name});

  $NegativeKeyword.fromJson(core.Map json_)
    : this(
        keywordValue: json_['keywordValue'] as core.String?,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final keywordValue = this.keywordValue;
    final name = this.name;
    return {'keywordValue': ?keywordValue, 'name': ?name};
  }
}

/// Used by:
///
/// - displayvideo:v2 : NegativeKeywordList
/// - displayvideo:v3 : NegativeKeywordList
/// - displayvideo:v4 : NegativeKeywordList
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
        advertiserId: json_['advertiserId'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        name: json_['name'] as core.String?,
        negativeKeywordListId: json_['negativeKeywordListId'] as core.String?,
        targetedLineItemCount: json_['targetedLineItemCount'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final advertiserId = this.advertiserId;
    final displayName = this.displayName;
    final name = this.name;
    final negativeKeywordListId = this.negativeKeywordListId;
    final targetedLineItemCount = this.targetedLineItemCount;
    return {
      'advertiserId': ?advertiserId,
      'displayName': ?displayName,
      'name': ?name,
      'negativeKeywordListId': ?negativeKeywordListId,
      'targetedLineItemCount': ?targetedLineItemCount,
    };
  }
}

/// Used by:
///
/// - displayvideo:v2 : NegativeKeywordListAssignedTargetingOptionDetails
/// - displayvideo:v3 : NegativeKeywordListAssignedTargetingOptionDetails
/// - displayvideo:v4 : NegativeKeywordListAssignedTargetingOptionDetails
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
        negativeKeywordListId: json_['negativeKeywordListId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final negativeKeywordListId = this.negativeKeywordListId;
    return {'negativeKeywordListId': ?negativeKeywordListId};
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
/// - osconfig:v1 : OSPolicyAssignmentLabelSet
/// - osconfig:v2 : OSPolicyAssignmentLabelSet
class $OSPolicyAssignmentLabelSet {
  /// Labels are identified by key/value pairs in this map.
  ///
  /// A VM should contain all the key/value pairs specified in this map to be
  /// selected.
  core.Map<core.String, core.String>? labels;

  $OSPolicyAssignmentLabelSet({this.labels});

  $OSPolicyAssignmentLabelSet.fromJson(core.Map json_)
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
/// - osconfig:v1 : OSPolicyResourceFileGcs
/// - osconfig:v2 : OSPolicyResourceFileGcs
class $OSPolicyResourceFileGcs {
  /// Bucket of the Cloud Storage object.
  ///
  /// Required.
  core.String? bucket;

  /// Generation number of the Cloud Storage object.
  core.String? generation;

  /// Name of the Cloud Storage object.
  ///
  /// Required.
  core.String? object;

  $OSPolicyResourceFileGcs({this.bucket, this.generation, this.object});

  $OSPolicyResourceFileGcs.fromJson(core.Map json_)
    : this(
        bucket: json_['bucket'] as core.String?,
        generation: json_['generation'] as core.String?,
        object: json_['object'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final bucket = this.bucket;
    final generation = this.generation;
    final object = this.object;
    return {'bucket': ?bucket, 'generation': ?generation, 'object': ?object};
  }
}

/// Used by:
///
/// - osconfig:v1 : OSPolicyResourceFileRemote
/// - osconfig:v2 : OSPolicyResourceFileRemote
class $OSPolicyResourceFileRemote {
  /// SHA256 checksum of the remote file.
  core.String? sha256Checksum;

  /// URI from which to fetch the object.
  ///
  /// It should contain both the protocol and path following the format
  /// `{protocol}://{location}`.
  ///
  /// Required.
  core.String? uri;

  $OSPolicyResourceFileRemote({this.sha256Checksum, this.uri});

  $OSPolicyResourceFileRemote.fromJson(core.Map json_)
    : this(
        sha256Checksum: json_['sha256Checksum'] as core.String?,
        uri: json_['uri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final sha256Checksum = this.sha256Checksum;
    final uri = this.uri;
    return {'sha256Checksum': ?sha256Checksum, 'uri': ?uri};
  }
}

/// Used by:
///
/// - osconfig:v1 : OSPolicyResourceRepositoryResourceAptRepository
/// - osconfig:v2 : OSPolicyResourceRepositoryResourceAptRepository
class $OSPolicyResourceRepositoryResourceAptRepository {
  /// Type of archive files in this repository.
  ///
  /// Required.
  /// Possible string values are:
  /// - "ARCHIVE_TYPE_UNSPECIFIED" : Unspecified is invalid.
  /// - "DEB" : Deb indicates that the archive contains binary files.
  /// - "DEB_SRC" : Deb-src indicates that the archive contains source files.
  core.String? archiveType;

  /// List of components for this repository.
  ///
  /// Must contain at least one item.
  ///
  /// Required.
  core.List<core.String>? components;

  /// Distribution of this repository.
  ///
  /// Required.
  core.String? distribution;

  /// URI of the key file for this repository.
  ///
  /// The agent maintains a keyring at
  /// `/etc/apt/trusted.gpg.d/osconfig_agent_managed.gpg`.
  core.String? gpgKey;

  /// URI for this repository.
  ///
  /// Required.
  core.String? uri;

  $OSPolicyResourceRepositoryResourceAptRepository({
    this.archiveType,
    this.components,
    this.distribution,
    this.gpgKey,
    this.uri,
  });

  $OSPolicyResourceRepositoryResourceAptRepository.fromJson(core.Map json_)
    : this(
        archiveType: json_['archiveType'] as core.String?,
        components: (json_['components'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        distribution: json_['distribution'] as core.String?,
        gpgKey: json_['gpgKey'] as core.String?,
        uri: json_['uri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final archiveType = this.archiveType;
    final components = this.components;
    final distribution = this.distribution;
    final gpgKey = this.gpgKey;
    final uri = this.uri;
    return {
      'archiveType': ?archiveType,
      'components': ?components,
      'distribution': ?distribution,
      'gpgKey': ?gpgKey,
      'uri': ?uri,
    };
  }
}

/// Used by:
///
/// - osconfig:v1 : OSPolicyResourceRepositoryResourceGooRepository
/// - osconfig:v2 : OSPolicyResourceRepositoryResourceGooRepository
class $OSPolicyResourceRepositoryResourceGooRepository {
  /// The name of the repository.
  ///
  /// Required.
  core.String? name;

  /// The url of the repository.
  ///
  /// Required.
  core.String? url;

  $OSPolicyResourceRepositoryResourceGooRepository({this.name, this.url});

  $OSPolicyResourceRepositoryResourceGooRepository.fromJson(core.Map json_)
    : this(
        name: json_['name'] as core.String?,
        url: json_['url'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final name = this.name;
    final url = this.url;
    return {'name': ?name, 'url': ?url};
  }
}

/// Used by:
///
/// - osconfig:v1 : OSPolicyResourceRepositoryResourceYumRepository
/// - osconfig:v2 : OSPolicyResourceRepositoryResourceYumRepository
class $OSPolicyResourceRepositoryResourceYumRepository {
  /// The location of the repository directory.
  ///
  /// Required.
  core.String? baseUrl;

  /// The display name of the repository.
  core.String? displayName;

  /// URIs of GPG keys.
  core.List<core.String>? gpgKeys;

  /// A one word, unique name for this repository.
  ///
  /// This is the `repo id` in the yum config file and also the `display_name`
  /// if `display_name` is omitted. This id is also used as the unique
  /// identifier when checking for resource conflicts.
  ///
  /// Required.
  core.String? id;

  $OSPolicyResourceRepositoryResourceYumRepository({
    this.baseUrl,
    this.displayName,
    this.gpgKeys,
    this.id,
  });

  $OSPolicyResourceRepositoryResourceYumRepository.fromJson(core.Map json_)
    : this(
        baseUrl: json_['baseUrl'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        gpgKeys: (json_['gpgKeys'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        id: json_['id'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final baseUrl = this.baseUrl;
    final displayName = this.displayName;
    final gpgKeys = this.gpgKeys;
    final id = this.id;
    return {
      'baseUrl': ?baseUrl,
      'displayName': ?displayName,
      'gpgKeys': ?gpgKeys,
      'id': ?id,
    };
  }
}

/// Used by:
///
/// - osconfig:v1 : OSPolicyResourceRepositoryResourceZypperRepository
/// - osconfig:v2 : OSPolicyResourceRepositoryResourceZypperRepository
class $OSPolicyResourceRepositoryResourceZypperRepository {
  /// The location of the repository directory.
  ///
  /// Required.
  core.String? baseUrl;

  /// The display name of the repository.
  core.String? displayName;

  /// URIs of GPG keys.
  core.List<core.String>? gpgKeys;

  /// A one word, unique name for this repository.
  ///
  /// This is the `repo id` in the zypper config file and also the
  /// `display_name` if `display_name` is omitted. This id is also used as the
  /// unique identifier when checking for GuestPolicy conflicts.
  ///
  /// Required.
  core.String? id;

  $OSPolicyResourceRepositoryResourceZypperRepository({
    this.baseUrl,
    this.displayName,
    this.gpgKeys,
    this.id,
  });

  $OSPolicyResourceRepositoryResourceZypperRepository.fromJson(core.Map json_)
    : this(
        baseUrl: json_['baseUrl'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        gpgKeys: (json_['gpgKeys'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        id: json_['id'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final baseUrl = this.baseUrl;
    final displayName = this.displayName;
    final gpgKeys = this.gpgKeys;
    final id = this.id;
    return {
      'baseUrl': ?baseUrl,
      'displayName': ?displayName,
      'gpgKeys': ?gpgKeys,
      'id': ?id,
    };
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
/// - dfareporting:v3.5 : OffsetPosition
/// - dfareporting:v5 : OffsetPosition
class $OffsetPosition {
  /// Offset distance from left side of an asset or a window.
  core.int? left;

  /// Offset distance from top side of an asset or a window.
  core.int? top;

  $OffsetPosition({this.left, this.top});

  $OffsetPosition.fromJson(core.Map json_)
    : this(left: json_['left'] as core.int?, top: json_['top'] as core.int?);

  core.Map<core.String, core.dynamic> toJson() {
    final left = this.left;
    final top = this.top;
    return {'left': ?left, 'top': ?top};
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
/// - displayvideo:v2 : OmidAssignedTargetingOptionDetails
/// - displayvideo:v3 : OmidAssignedTargetingOptionDetails
/// - displayvideo:v4 : OmidAssignedTargetingOptionDetails
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

  $OmidAssignedTargetingOptionDetails({this.omid});

  $OmidAssignedTargetingOptionDetails.fromJson(core.Map json_)
    : this(omid: json_['omid'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final omid = this.omid;
    return {'omid': ?omid};
  }
}

/// Used by:
///
/// - displayvideo:v2 : OmidTargetingOptionDetails
/// - displayvideo:v3 : OmidTargetingOptionDetails
/// - displayvideo:v4 : OmidTargetingOptionDetails
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

  $OmidTargetingOptionDetails({this.omid});

  $OmidTargetingOptionDetails.fromJson(core.Map json_)
    : this(omid: json_['omid'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final omid = this.omid;
    return {'omid': ?omid};
  }
}

/// Used by:
///
/// - displayvideo:v2 : OnScreenPositionAssignedTargetingOptionDetails
/// - displayvideo:v3 : OnScreenPositionAssignedTargetingOptionDetails
/// - displayvideo:v4 : OnScreenPositionAssignedTargetingOptionDetails
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
        adType: json_['adType'] as core.String?,
        onScreenPosition: json_['onScreenPosition'] as core.String?,
        targetingOptionId: json_['targetingOptionId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final adType = this.adType;
    final onScreenPosition = this.onScreenPosition;
    final targetingOptionId = this.targetingOptionId;
    return {
      'adType': ?adType,
      'onScreenPosition': ?onScreenPosition,
      'targetingOptionId': ?targetingOptionId,
    };
  }
}

/// Used by:
///
/// - displayvideo:v2 : OnScreenPositionTargetingOptionDetails
/// - displayvideo:v3 : OnScreenPositionTargetingOptionDetails
/// - displayvideo:v4 : OnScreenPositionTargetingOptionDetails
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

  $OnScreenPositionTargetingOptionDetails({this.onScreenPosition});

  $OnScreenPositionTargetingOptionDetails.fromJson(core.Map json_)
    : this(onScreenPosition: json_['onScreenPosition'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final onScreenPosition = this.onScreenPosition;
    return {'onScreenPosition': ?onScreenPosition};
  }
}

/// Used by:
///
/// - displayvideo:v2 : OperatingSystemAssignedTargetingOptionDetails
/// - displayvideo:v3 : OperatingSystemAssignedTargetingOptionDetails
/// - displayvideo:v4 : OperatingSystemAssignedTargetingOptionDetails
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
        displayName: json_['displayName'] as core.String?,
        negative: json_['negative'] as core.bool?,
        targetingOptionId: json_['targetingOptionId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final displayName = this.displayName;
    final negative = this.negative;
    final targetingOptionId = this.targetingOptionId;
    return {
      'displayName': ?displayName,
      'negative': ?negative,
      'targetingOptionId': ?targetingOptionId,
    };
  }
}

/// Used by:
///
/// - displayvideo:v2 : OperatingSystemTargetingOptionDetails
/// - displayvideo:v3 : OperatingSystemTargetingOptionDetails
/// - displayvideo:v4 : OperatingSystemTargetingOptionDetails
class $OperatingSystemTargetingOptionDetails {
  /// The display name of the operating system.
  ///
  /// Output only.
  core.String? displayName;

  $OperatingSystemTargetingOptionDetails({this.displayName});

  $OperatingSystemTargetingOptionDetails.fromJson(core.Map json_)
    : this(displayName: json_['displayName'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final displayName = this.displayName;
    return {'displayName': ?displayName};
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
        architecture: json_['architecture'] as core.String?,
        hostname: json_['hostname'] as core.String?,
        kernelRelease: json_['kernelRelease'] as core.String?,
        kernelVersion: json_['kernelVersion'] as core.String?,
        longName: json_['longName'] as core.String?,
        osconfigAgentVersion: json_['osconfigAgentVersion'] as core.String?,
        shortName: json_['shortName'] as core.String?,
        version: json_['version'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final architecture = this.architecture;
    final hostname = this.hostname;
    final kernelRelease = this.kernelRelease;
    final kernelVersion = this.kernelVersion;
    final longName = this.longName;
    final osconfigAgentVersion = this.osconfigAgentVersion;
    final shortName = this.shortName;
    final version = this.version;
    return {
      'architecture': ?architecture,
      'hostname': ?hostname,
      'kernelRelease': ?kernelRelease,
      'kernelVersion': ?kernelVersion,
      'longName': ?longName,
      'osconfigAgentVersion': ?osconfigAgentVersion,
      'shortName': ?shortName,
      'version': ?version,
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
/// - displayvideo:v2 : Pacing
/// - displayvideo:v3 : Pacing
/// - displayvideo:v4 : Pacing
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
  /// `PACING_TYPE_ASAP` is not compatible with pacing_period
  /// `PACING_PERIOD_FLIGHT` for insertion orders.
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
        dailyMaxImpressions: json_['dailyMaxImpressions'] as core.String?,
        dailyMaxMicros: json_['dailyMaxMicros'] as core.String?,
        pacingPeriod: json_['pacingPeriod'] as core.String?,
        pacingType: json_['pacingType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dailyMaxImpressions = this.dailyMaxImpressions;
    final dailyMaxMicros = this.dailyMaxMicros;
    final pacingPeriod = this.pacingPeriod;
    final pacingType = this.pacingType;
    return {
      'dailyMaxImpressions': ?dailyMaxImpressions,
      'dailyMaxMicros': ?dailyMaxMicros,
      'pacingPeriod': ?pacingPeriod,
      'pacingType': ?pacingType,
    };
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
  /// The name of the parameter to use.
  ///
  /// Required.
  core.String? parameterName;

  /// The string representation of the value of the parameter to set.
  ///
  /// Required.
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
/// - displayvideo:v3 : ParentEntityFilter
/// - displayvideo:v4 : ParentEntityFilter
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
  /// `FILE_TYPE_LINE_ITEM_QA`, `FILE_TYPE_AD_GROUP`, `FILE_TYPE_AD_GROUP_QA`,
  /// and `FILE_TYPE_AD`.
  /// - "FILTER_TYPE_LINE_ITEM_ID" : Line Item ID. If selected, all filter IDs
  /// must be Line Item IDs that belong to the Advertiser or Partner specified
  /// in CreateSdfDownloadTaskRequest. Can only be used for downloading
  /// `FILE_TYPE_LINE_ITEM`, `FILE_TYPE_LINE_ITEM_QA`,`FILE_TYPE_AD_GROUP`,
  /// `FILE_TYPE_AD_GROUP_QA`, and `FILE_TYPE_AD`.
  core.String? filterType;

  $ParentEntityFilter({this.fileType, this.filterIds, this.filterType});

  $ParentEntityFilter.fromJson(core.Map json_)
    : this(
        fileType: (json_['fileType'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        filterIds: (json_['filterIds'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        filterType: json_['filterType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final fileType = this.fileType;
    final filterIds = this.filterIds;
    final filterType = this.filterType;
    return {
      'fileType': ?fileType,
      'filterIds': ?filterIds,
      'filterType': ?filterType,
    };
  }
}

/// Used by:
///
/// - displayvideo:v2 : ParentalStatusAssignedTargetingOptionDetails
/// - displayvideo:v3 : ParentalStatusAssignedTargetingOptionDetails
/// - displayvideo:v4 : ParentalStatusAssignedTargetingOptionDetails
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

  $ParentalStatusAssignedTargetingOptionDetails({this.parentalStatus});

  $ParentalStatusAssignedTargetingOptionDetails.fromJson(core.Map json_)
    : this(parentalStatus: json_['parentalStatus'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final parentalStatus = this.parentalStatus;
    return {'parentalStatus': ?parentalStatus};
  }
}

/// Used by:
///
/// - displayvideo:v2 : ParentalStatusTargetingOptionDetails
/// - displayvideo:v3 : ParentalStatusTargetingOptionDetails
/// - displayvideo:v4 : ParentalStatusTargetingOptionDetails
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

  $ParentalStatusTargetingOptionDetails({this.parentalStatus});

  $ParentalStatusTargetingOptionDetails.fromJson(core.Map json_)
    : this(parentalStatus: json_['parentalStatus'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final parentalStatus = this.parentalStatus;
    return {'parentalStatus': ?parentalStatus};
  }
}

/// Used by:
///
/// - displayvideo:v3 : PartnerBillingConfig
/// - displayvideo:v4 : PartnerBillingConfig
class $PartnerBillingConfig {
  /// The ID of a partner default billing profile.
  core.String? billingProfileId;

  $PartnerBillingConfig({this.billingProfileId});

  $PartnerBillingConfig.fromJson(core.Map json_)
    : this(billingProfileId: json_['billingProfileId'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final billingProfileId = this.billingProfileId;
    return {'billingProfileId': ?billingProfileId};
  }
}

/// Used by:
///
/// - displayvideo:v2 : PartnerCost
/// - displayvideo:v4 : PartnerCost
class $PartnerCost {
  /// The type of the partner cost.
  ///
  /// Required.
  /// Possible string values are:
  /// - "PARTNER_COST_TYPE_UNSPECIFIED" : Type value is not specified or is
  /// unknown in this version.
  /// - "PARTNER_COST_TYPE_ADLOOX" : The cost is charged for using Scope3
  /// (previously known as Adloox). Billed by the partner.
  /// - "PARTNER_COST_TYPE_ADLOOX_PREBID" : The cost is charged for using Scope3
  /// (previously known as Adloox) Pre-Bid. Billed through DV360.
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
        costType: json_['costType'] as core.String?,
        feeAmount: json_['feeAmount'] as core.String?,
        feePercentageMillis: json_['feePercentageMillis'] as core.String?,
        feeType: json_['feeType'] as core.String?,
        invoiceType: json_['invoiceType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final costType = this.costType;
    final feeAmount = this.feeAmount;
    final feePercentageMillis = this.feePercentageMillis;
    final feeType = this.feeType;
    final invoiceType = this.invoiceType;
    return {
      'costType': ?costType,
      'feeAmount': ?feeAmount,
      'feePercentageMillis': ?feePercentageMillis,
      'feeType': ?feeType,
      'invoiceType': ?invoiceType,
    };
  }
}

/// Used by:
///
/// - displayvideo:v2 : PartnerGeneralConfig
/// - displayvideo:v3 : PartnerGeneralConfig
/// - displayvideo:v4 : PartnerGeneralConfig
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

  $PartnerGeneralConfig({this.currencyCode, this.timeZone});

  $PartnerGeneralConfig.fromJson(core.Map json_)
    : this(
        currencyCode: json_['currencyCode'] as core.String?,
        timeZone: json_['timeZone'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final currencyCode = this.currencyCode;
    final timeZone = this.timeZone;
    return {'currencyCode': ?currencyCode, 'timeZone': ?timeZone};
  }
}

/// Used by:
///
/// - displayvideo:v2 : PartnerRevenueModel
/// - displayvideo:v3 : PartnerRevenueModel
/// - displayvideo:v4 : PartnerRevenueModel
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
  /// This field must be set to
  /// `PARTNER_REVENUE_MODEL_MARKUP_TYPE_TOTAL_MEDIA_COST_MARKUP` for Demand Gen
  /// line items.
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

  $PartnerRevenueModel({this.markupAmount, this.markupType});

  $PartnerRevenueModel.fromJson(core.Map json_)
    : this(
        markupAmount: json_['markupAmount'] as core.String?,
        markupType: json_['markupType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final markupAmount = this.markupAmount;
    final markupType = this.markupType;
    return {'markupAmount': ?markupAmount, 'markupType': ?markupType};
  }
}

/// Used by:
///
/// - trafficdirector:v2 : PathSegment
/// - trafficdirector:v3 : PathSegment
class $PathSegment {
  /// If specified, use the key to retrieve the value in a Struct.
  core.String? key;

  $PathSegment({this.key});

  $PathSegment.fromJson(core.Map json_)
    : this(key: json_['key'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final key = this.key;
    return {'key': ?key};
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
/// - displayvideo:v2 : PerformanceGoal
/// - displayvideo:v3 : PerformanceGoal
/// - displayvideo:v4 : PerformanceGoal
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
  /// - "PERFORMANCE_GOAL_TYPE_CPV" : The performance goal is set in CPV (cost
  /// per view).
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
            json_['performanceGoalAmountMicros'] as core.String?,
        performanceGoalPercentageMicros:
            json_['performanceGoalPercentageMicros'] as core.String?,
        performanceGoalString: json_['performanceGoalString'] as core.String?,
        performanceGoalType: json_['performanceGoalType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final performanceGoalAmountMicros = this.performanceGoalAmountMicros;
    final performanceGoalPercentageMicros =
        this.performanceGoalPercentageMicros;
    final performanceGoalString = this.performanceGoalString;
    final performanceGoalType = this.performanceGoalType;
    return {
      'performanceGoalAmountMicros': ?performanceGoalAmountMicros,
      'performanceGoalPercentageMicros': ?performanceGoalPercentageMicros,
      'performanceGoalString': ?performanceGoalString,
      'performanceGoalType': ?performanceGoalType,
    };
  }
}

/// Used by:
///
/// - displayvideo:v2 : PerformanceGoalBidStrategy
/// - displayvideo:v3 : PerformanceGoalBidStrategy
class $PerformanceGoalBidStrategy {
  /// The ID of the Custom Bidding Algorithm used by this strategy.
  ///
  /// Only applicable when performance_goal_type is set to
  /// `BIDDING_STRATEGY_PERFORMANCE_GOAL_TYPE_CUSTOM_ALGO`. Assigning a custom
  /// bidding algorithm that uses floodlight activities not identified in
  /// floodlightActivityConfigs will return an error.
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
            json_['customBiddingAlgorithmId'] as core.String?,
        maxAverageCpmBidAmountMicros:
            json_['maxAverageCpmBidAmountMicros'] as core.String?,
        performanceGoalAmountMicros:
            json_['performanceGoalAmountMicros'] as core.String?,
        performanceGoalType: json_['performanceGoalType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final customBiddingAlgorithmId = this.customBiddingAlgorithmId;
    final maxAverageCpmBidAmountMicros = this.maxAverageCpmBidAmountMicros;
    final performanceGoalAmountMicros = this.performanceGoalAmountMicros;
    final performanceGoalType = this.performanceGoalType;
    return {
      'customBiddingAlgorithmId': ?customBiddingAlgorithmId,
      'maxAverageCpmBidAmountMicros': ?maxAverageCpmBidAmountMicros,
      'performanceGoalAmountMicros': ?performanceGoalAmountMicros,
      'performanceGoalType': ?performanceGoalType,
    };
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
/// - accesscontextmanager:v1 : TestIamPermissionsResponse
/// - agentidentity:v1 : TestIamPermissionsResponse
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
/// - cloudresourcemanager:v2 : TestIamPermissionsResponse
/// - cloudresourcemanager:v3 : TestIamPermissionsResponse
/// - cloudtasks:v2 : TestIamPermissionsResponse
/// - config:v1 : TestIamPermissionsResponse
/// - connectors:v1 : TestIamPermissionsResponse
/// - contactcenterinsights:v1 : GoogleIamV1TestIamPermissionsResponse
/// - containeranalysis:v1 : TestIamPermissionsResponse
/// - datacatalog:v1 : TestIamPermissionsResponse
/// - dataform:v1 : TestIamPermissionsResponse
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
/// - securesourcemanager:v1 : TestIamPermissionsResponse
/// - servicedirectory:v1 : TestIamPermissionsResponse
/// - servicemanagement:v1 : TestIamPermissionsResponse
/// - spanner:v1 : TestIamPermissionsResponse
/// - vmwareengine:v1 : TestIamPermissionsResponse
/// - workstations:v1 : TestIamPermissionsResponse
class $PermissionsResponse {
  /// A subset of `TestPermissionsRequest.permissions` that the caller is
  /// allowed.
  core.List<core.String>? permissions;

  $PermissionsResponse({this.permissions});

  $PermissionsResponse.fromJson(core.Map json_)
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

  $Pipe({this.mode, this.path});

  $Pipe.fromJson(core.Map json_)
    : this(
        mode: json_['mode'] as core.int?,
        path: json_['path'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final mode = this.mode;
    final path = this.path;
    return {'mode': ?mode, 'path': ?path};
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
/// - displayvideo:v2 : PoiAssignedTargetingOptionDetails
/// - displayvideo:v3 : PoiAssignedTargetingOptionDetails
/// - displayvideo:v4 : PoiAssignedTargetingOptionDetails
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
        displayName: json_['displayName'] as core.String?,
        latitude: (json_['latitude'] as core.num?)?.toDouble(),
        longitude: (json_['longitude'] as core.num?)?.toDouble(),
        proximityRadiusAmount: (json_['proximityRadiusAmount'] as core.num?)
            ?.toDouble(),
        proximityRadiusUnit: json_['proximityRadiusUnit'] as core.String?,
        targetingOptionId: json_['targetingOptionId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final displayName = this.displayName;
    final latitude = this.latitude;
    final longitude = this.longitude;
    final proximityRadiusAmount = this.proximityRadiusAmount;
    final proximityRadiusUnit = this.proximityRadiusUnit;
    final targetingOptionId = this.targetingOptionId;
    return {
      'displayName': ?displayName,
      'latitude': ?latitude,
      'longitude': ?longitude,
      'proximityRadiusAmount': ?proximityRadiusAmount,
      'proximityRadiusUnit': ?proximityRadiusUnit,
      'targetingOptionId': ?targetingOptionId,
    };
  }
}

/// Used by:
///
/// - displayvideo:v2 : PoiSearchTerms
/// - displayvideo:v3 : PoiSearchTerms
/// - displayvideo:v4 : PoiSearchTerms
class $PoiSearchTerms {
  /// The search query for the desired POI name, street address, or coordinate
  /// of the desired POI.
  ///
  /// The query can be a prefix, e.g. "Times squar", "40.7505045,-73.99562",
  /// "315 W 44th St", etc.
  core.String? poiQuery;

  $PoiSearchTerms({this.poiQuery});

  $PoiSearchTerms.fromJson(core.Map json_)
    : this(poiQuery: json_['poiQuery'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final poiQuery = this.poiQuery;
    return {'poiQuery': ?poiQuery};
  }
}

/// Used by:
///
/// - displayvideo:v2 : PoiTargetingOptionDetails
/// - displayvideo:v3 : PoiTargetingOptionDetails
/// - displayvideo:v4 : PoiTargetingOptionDetails
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

  $PoiTargetingOptionDetails({this.displayName, this.latitude, this.longitude});

  $PoiTargetingOptionDetails.fromJson(core.Map json_)
    : this(
        displayName: json_['displayName'] as core.String?,
        latitude: (json_['latitude'] as core.num?)?.toDouble(),
        longitude: (json_['longitude'] as core.num?)?.toDouble(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final displayName = this.displayName;
    final latitude = this.latitude;
    final longitude = this.longitude;
    return {
      'displayName': ?displayName,
      'latitude': ?latitude,
      'longitude': ?longitude,
    };
  }
}

/// Used by:
///
/// - gkehub:v1 : PolicyControllerResourceList
/// - gkehub:v2 : PolicyControllerResourceList
class $PolicyControllerResourceList {
  /// CPU requirement expressed in Kubernetes resource units.
  core.String? cpu;

  /// Memory requirement expressed in Kubernetes resource units.
  core.String? memory;

  $PolicyControllerResourceList({this.cpu, this.memory});

  $PolicyControllerResourceList.fromJson(core.Map json_)
    : this(
        cpu: json_['cpu'] as core.String?,
        memory: json_['memory'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final cpu = this.cpu;
    final memory = this.memory;
    return {'cpu': ?cpu, 'memory': ?memory};
  }
}

/// Used by:
///
/// - gkehub:v1 : PolicyControllerTemplateLibraryConfig
/// - gkehub:v2 : PolicyControllerTemplateLibraryConfig
class $PolicyControllerTemplateLibraryConfig {
  /// Configures the manner in which the template library is installed on the
  /// cluster.
  /// Possible string values are:
  /// - "INSTALLATION_UNSPECIFIED" : No installation strategy has been
  /// specified.
  /// - "NOT_INSTALLED" : Do not install the template library.
  /// - "ALL" : Install the entire template library.
  core.String? installation;

  $PolicyControllerTemplateLibraryConfig({this.installation});

  $PolicyControllerTemplateLibraryConfig.fromJson(core.Map json_)
    : this(installation: json_['installation'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final installation = this.installation;
    return {'installation': ?installation};
  }
}

/// Used by:
///
/// - gkehub:v1 : PolicyControllerToleration
/// - gkehub:v2 : PolicyControllerToleration
class $PolicyControllerToleration {
  /// Matches a taint effect.
  core.String? effect;

  /// Matches a taint key (not necessarily unique).
  core.String? key;

  /// Matches a taint operator.
  core.String? operator;

  /// Matches a taint value.
  core.String? value;

  $PolicyControllerToleration({
    this.effect,
    this.key,
    this.operator,
    this.value,
  });

  $PolicyControllerToleration.fromJson(core.Map json_)
    : this(
        effect: json_['effect'] as core.String?,
        key: json_['key'] as core.String?,
        operator: json_['operator'] as core.String?,
        value: json_['value'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final effect = this.effect;
    final key = this.key;
    final operator = this.operator;
    final value = this.value;
    return {
      'effect': ?effect,
      'key': ?key,
      'operator': ?operator,
      'value': ?value,
    };
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
/// - domains:v1 : PostalAddress
/// - jobs:v3 : PostalAddress
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
/// - displayvideo:v2 : PrismaCpeCode
/// - displayvideo:v3 : PrismaCpeCode
/// - displayvideo:v4 : PrismaCpeCode
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
        prismaClientCode: json_['prismaClientCode'] as core.String?,
        prismaEstimateCode: json_['prismaEstimateCode'] as core.String?,
        prismaProductCode: json_['prismaProductCode'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final prismaClientCode = this.prismaClientCode;
    final prismaEstimateCode = this.prismaEstimateCode;
    final prismaProductCode = this.prismaProductCode;
    return {
      'prismaClientCode': ?prismaClientCode,
      'prismaEstimateCode': ?prismaEstimateCode,
      'prismaProductCode': ?prismaProductCode,
    };
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
/// - content:v2.1 : ProductProductDetail
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
/// - content:v2.1 : FreeListingsProgramStatusReviewIneligibilityReasonDetails
/// - content:v2.1 : ShoppingAdsProgramStatusReviewIneligibilityReasonDetails
class $ProgramStatusReviewIneligibilityReasonDetails {
  /// This timestamp represents end of cooldown period for review ineligbility
  /// reason `IN_COOLDOWN_PERIOD`.
  core.String? cooldownTime;

  $ProgramStatusReviewIneligibilityReasonDetails({this.cooldownTime});

  $ProgramStatusReviewIneligibilityReasonDetails.fromJson(core.Map json_)
    : this(cooldownTime: json_['cooldownTime'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final cooldownTime = this.cooldownTime;
    return {'cooldownTime': ?cooldownTime};
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
/// - displayvideo:v2 : ProximityLocationListAssignedTargetingOptionDetails
/// - displayvideo:v3 : ProximityLocationListAssignedTargetingOptionDetails
/// - displayvideo:v4 : ProximityLocationListAssignedTargetingOptionDetails
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
        proximityLocationListId:
            json_['proximityLocationListId'] as core.String?,
        proximityRadius: (json_['proximityRadius'] as core.num?)?.toDouble(),
        proximityRadiusUnit: json_['proximityRadiusUnit'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final proximityLocationListId = this.proximityLocationListId;
    final proximityRadius = this.proximityRadius;
    final proximityRadiusUnit = this.proximityRadiusUnit;
    return {
      'proximityLocationListId': ?proximityLocationListId,
      'proximityRadius': ?proximityRadius,
      'proximityRadiusUnit': ?proximityRadiusUnit,
    };
  }
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

  $PublisherReviewStatus({this.publisherName, this.status});

  $PublisherReviewStatus.fromJson(core.Map json_)
    : this(
        publisherName: json_['publisherName'] as core.String?,
        status: json_['status'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final publisherName = this.publisherName;
    final status = this.status;
    return {'publisherName': ?publisherName, 'status': ?status};
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
/// - safebrowsing:v4 : GoogleSecuritySafebrowsingV4RawIndices
/// - webrisk:v1 : GoogleCloudWebriskV1RawIndices
class $RawIndices {
  /// The indices to remove from a lexicographically-sorted local list.
  core.List<core.int>? indices;

  $RawIndices({this.indices});

  $RawIndices.fromJson(core.Map json_)
    : this(
        indices: (json_['indices'] as core.List?)
            ?.map((value) => value as core.int)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final indices = this.indices;
    return {'indices': ?indices};
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
/// - content:v2.1 : BreakdownRegion
/// - merchantapi:issueresolution_v1 : Region
class $Region {
  /// The
  /// [CLDR territory code](http://www.unicode.org/repos/cldr/tags/latest/common/main/en.xml)
  core.String? code;

  /// The localized name of the region.
  ///
  /// For region with code='001' the value is 'All countries' or the equivalent
  /// in other languages.
  core.String? name;

  $Region({this.code, this.name});

  $Region.fromJson(core.Map json_)
    : this(
        code: json_['code'] as core.String?,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final code = this.code;
    final name = this.name;
    return {'code': ?code, 'name': ?name};
  }
}

/// Used by:
///
/// - displayvideo:v2 : RegionalLocationListAssignedTargetingOptionDetails
/// - displayvideo:v3 : RegionalLocationListAssignedTargetingOptionDetails
/// - displayvideo:v4 : RegionalLocationListAssignedTargetingOptionDetails
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
        negative: json_['negative'] as core.bool?,
        regionalLocationListId: json_['regionalLocationListId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final negative = this.negative;
    final regionalLocationListId = this.regionalLocationListId;
    return {
      'negative': ?negative,
      'regionalLocationListId': ?regionalLocationListId,
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
/// - displayvideo:v2 : RemarketingConfig
/// - displayvideo:v3 : RemarketingConfig
/// - displayvideo:v4 : RemarketingConfig
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

  $RemarketingConfig({this.advertiserId, this.remarketingEnabled});

  $RemarketingConfig.fromJson(core.Map json_)
    : this(
        advertiserId: json_['advertiserId'] as core.String?,
        remarketingEnabled: json_['remarketingEnabled'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final advertiserId = this.advertiserId;
    final remarketingEnabled = this.remarketingEnabled;
    return {
      'advertiserId': ?advertiserId,
      'remarketingEnabled': ?remarketingEnabled,
    };
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
/// - rapidmigrationassessment:v1 : PauseCollectorRequest
/// - rapidmigrationassessment:v1 : RegisterCollectorRequest
/// - rapidmigrationassessment:v1 : ResumeCollectorRequest
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
/// - searchads360:v23 : GoogleAdsSearchads360V23Services__EndExperimentRequest
/// - searchads360:v23 : GoogleAdsSearchads360V23Services__PromoteExperimentRequest
/// - searchads360:v23 : GoogleAdsSearchads360V23Services__RunOfflineUserDataJobRequest
/// - searchads360:v23 : GoogleAdsSearchads360V23Services__ScheduleExperimentRequest
class $Request03 {
  /// If true, the request is validated but not executed.
  ///
  /// Only errors are returned, not results.
  core.bool? validateOnly;

  $Request03({this.validateOnly});

  $Request03.fromJson(core.Map json_)
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
class $Request04 {
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

  $Request04({this.requestId});

  $Request04.fromJson(core.Map json_)
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
class $Request05 {
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

  $Request05({this.etag, this.stateMetadata});

  $Request05.fromJson(core.Map json_)
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
class $Request06 {
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

  $Request06({this.requestId, this.validateOnly});

  $Request06.fromJson(core.Map json_)
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
class $Request07 {
  /// Deploy policies to override.
  ///
  /// Format is
  /// `projects/{project}/locations/{location}/deployPolicies/{deployPolicy}`.
  ///
  /// Optional.
  core.List<core.String>? overrideDeployPolicy;

  $Request07({this.overrideDeployPolicy});

  $Request07.fromJson(core.Map json_)
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
class $Request08 {
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

  $Request08({this.pageSize, this.pageToken});

  $Request08.fromJson(core.Map json_)
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
class $Request09 {
  /// The URLs of one or more instances to recreate.
  ///
  /// This can be a full URL or
  /// a partial URL, such as zones/\[ZONE\]/instances/\[INSTANCE_NAME\].
  core.List<core.String>? instances;

  $Request09({this.instances});

  $Request09.fromJson(core.Map json_)
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
/// - content:v2.1 : RequestReviewFreeListingsRequest
/// - content:v2.1 : RequestReviewShoppingAdsRequest
class $Request10 {
  /// The code \[ISO 3166-1
  /// alpha-2\](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) of the country
  /// for which review is to be requested.
  core.String? regionCode;

  $Request10({this.regionCode});

  $Request10.fromJson(core.Map json_)
    : this(regionCode: json_['regionCode'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final regionCode = this.regionCode;
    return {'regionCode': ?regionCode};
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
/// - notebooks:v1 : RefreshRuntimeTokenInternalRequest
/// - notebooks:v2 : UpgradeInstanceSystemRequest
class $Request13 {
  /// The VM hardware token for authenticating the VM.
  ///
  /// https://cloud.google.com/compute/docs/instances/verifying-instance-identity
  ///
  /// Required.
  core.String? vmId;

  $Request13({this.vmId});

  $Request13.fromJson(core.Map json_)
    : this(vmId: json_['vmId'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final vmId = this.vmId;
    return {'vmId': ?vmId};
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
/// - netapp:v1 : ExecuteOntapDeleteResponse
/// - netapp:v1 : ExecuteOntapGetResponse
/// - netapp:v1 : ExecuteOntapPatchResponse
/// - netapp:v1 : ExecuteOntapPostResponse
class $Response00 {
  /// The raw `JSON` body of the response.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? body;

  $Response00({this.body});

  $Response00.fromJson(core.Map json_)
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
class $Response01 {
  /// The state of the insights feature.
  /// Possible string values are:
  /// - "INSIGHTS_ENABLEMENT_STATE_UNSPECIFIED" : Default value. Should not be
  /// used.
  /// - "INSIGHTS_ENABLED" : The insights feature is enabled for the customer.
  /// - "INSIGHTS_DISABLED" : The insights feature is disabled for the customer.
  core.String? insightsState;

  $Response01({this.insightsState});

  $Response01.fromJson(core.Map json_)
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
class $Response02 {
  /// Result for the remove request.
  core.String? resourceName;

  $Response02({this.resourceName});

  $Response02.fromJson(core.Map json_)
    : this(resourceName: json_['resourceName'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final resourceName = this.resourceName;
    return {'resourceName': ?resourceName};
  }
}

/// Used by:
///
/// - notebooks:v1 : IsInstanceUpgradeableResponse
/// - notebooks:v2 : CheckInstanceUpgradabilityResponse
class $Response03 {
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

  $Response03({
    this.upgradeImage,
    this.upgradeInfo,
    this.upgradeVersion,
    this.upgradeable,
  });

  $Response03.fromJson(core.Map json_)
    : this(
        upgradeImage: json_['upgradeImage'] as core.String?,
        upgradeInfo: json_['upgradeInfo'] as core.String?,
        upgradeVersion: json_['upgradeVersion'] as core.String?,
        upgradeable: json_['upgradeable'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final upgradeImage = this.upgradeImage;
    final upgradeInfo = this.upgradeInfo;
    final upgradeVersion = this.upgradeVersion;
    final upgradeable = this.upgradeable;
    return {
      'upgradeImage': ?upgradeImage,
      'upgradeInfo': ?upgradeInfo,
      'upgradeVersion': ?upgradeVersion,
      'upgradeable': ?upgradeable,
    };
  }
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

  $ResponseMetadata({this.requestId});

  $ResponseMetadata.fromJson(core.Map json_)
    : this(requestId: json_['requestId'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final requestId = this.requestId;
    return {'requestId': ?requestId};
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
/// - containeranalysis:v1 : MaliciousContentLLMResult
/// - containeranalysis:v1 : MaliciousContentStaticResult
/// - ondemandscanning:v1 : MaliciousContentLLMResult
/// - ondemandscanning:v1 : MaliciousContentStaticResult
class $Result01 {
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

  $Result01({this.maxSeverity, this.scanStatus});

  $Result01.fromJson(core.Map json_)
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
/// - containeranalysis:v1 : MalwareScanResult
/// - containeranalysis:v1 : WorkspacePolicyResult
/// - ondemandscanning:v1 : MalwareScanResult
/// - ondemandscanning:v1 : WorkspacePolicyResult
class $Result02 {
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

  $Result02({this.scanStatus, this.verdict});

  $Result02.fromJson(core.Map json_)
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
/// - notebooks:v1 : ResetRuntimeRequest
/// - notebooks:v1 : StartRuntimeRequest
/// - notebooks:v1 : StopRuntimeRequest
/// - notebooks:v1 : UpgradeRuntimeRequest
class $RuntimeRequest {
  /// Idempotent request UUID.
  core.String? requestId;

  $RuntimeRequest({this.requestId});

  $RuntimeRequest.fromJson(core.Map json_)
    : this(requestId: json_['requestId'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final requestId = this.requestId;
    return {'requestId': ?requestId};
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
/// - displayvideo:v2 : ScriptError
/// - displayvideo:v3 : ScriptError
/// - displayvideo:v4 : ScriptError
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

  $ScriptError({this.column, this.errorCode, this.errorMessage, this.line});

  $ScriptError.fromJson(core.Map json_)
    : this(
        column: json_['column'] as core.String?,
        errorCode: json_['errorCode'] as core.String?,
        errorMessage: json_['errorMessage'] as core.String?,
        line: json_['line'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final column = this.column;
    final errorCode = this.errorCode;
    final errorMessage = this.errorMessage;
    final line = this.line;
    return {
      'column': ?column,
      'errorCode': ?errorCode,
      'errorMessage': ?errorMessage,
      'line': ?line,
    };
  }
}

/// Used by:
///
/// - displayvideo:v2 : SdfConfig
/// - displayvideo:v3 : SdfConfig
/// - displayvideo:v4 : SdfConfig
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
  /// - "SDF_VERSION_7_1" : SDF version 7.1. Read the \[v7 migration
  /// guide\](/display-video/api/structured-data-file/v7-migration-guide) before
  /// migrating to this version.
  /// - "SDF_VERSION_8" : SDF version 8. Read the \[v8 migration
  /// guide\](/display-video/api/structured-data-file/v8-migration-guide) before
  /// migrating to this version.
  /// - "SDF_VERSION_8_1" : SDF version 8.1.
  /// - "SDF_VERSION_9" : SDF version 9. Read the \[v9 migration
  /// guide\](/display-video/api/structured-data-file/v9-migration-guide) before
  /// migrating to this version.
  /// - "SDF_VERSION_9_1" : SDF version 9.1.
  /// - "SDF_VERSION_9_2" : SDF version 9.2.
  /// - "SDF_VERSION_10" : SDF version 10.
  /// - "SDF_VERSION_10_1" : SDF version 10.1.
  core.String? version;

  $SdfConfig({this.adminEmail, this.version});

  $SdfConfig.fromJson(core.Map json_)
    : this(
        adminEmail: json_['adminEmail'] as core.String?,
        version: json_['version'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final adminEmail = this.adminEmail;
    final version = this.version;
    return {'adminEmail': ?adminEmail, 'version': ?version};
  }
}

/// Used by:
///
/// - dataform:v1 : DirectorySearchResult
/// - dataform:v1 : FileSearchResult
class $SearchResult {
  /// File system path relative to the workspace root.
  core.String? path;

  $SearchResult({this.path});

  $SearchResult.fromJson(core.Map json_)
    : this(path: json_['path'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final path = this.path;
    return {'path': ?path};
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
/// - container:v1 : SecurityPostureConfig
/// - gkehub:v1 : SecurityPostureConfig
class $SecurityPostureConfig {
  /// Sets which mode to use for Security Posture features.
  /// Possible string values are:
  /// - "MODE_UNSPECIFIED" : Default value not specified.
  /// - "DISABLED" : Disables Security Posture features on the cluster.
  /// - "BASIC" : Applies Security Posture features on the cluster.
  /// - "ENTERPRISE" : Deprecated: Security Posture Enterprise features are no
  /// longer supported. For more details, see
  /// https://cloud.google.com/kubernetes-engine/docs/deprecations/posture-management-deprecation.
  /// Applies the Security Posture off cluster Enterprise level features.
  core.String? mode;

  /// Sets which mode to use for vulnerability scanning.
  /// Possible string values are:
  /// - "VULNERABILITY_MODE_UNSPECIFIED" : Default value not specified.
  /// - "VULNERABILITY_DISABLED" : Disables vulnerability scanning on the
  /// cluster.
  /// - "VULNERABILITY_BASIC" : Deprecated: Basic vulnerability scanning is no
  /// longer supported. For more details, see
  /// https://cloud.google.com/kubernetes-engine/docs/deprecations/posture-management-deprecation.
  /// Applies basic vulnerability scanning on the cluster.
  /// - "VULNERABILITY_ENTERPRISE" : Applies the Security Posture's
  /// vulnerability on cluster Enterprise level features.
  core.String? vulnerabilityMode;

  $SecurityPostureConfig({this.mode, this.vulnerabilityMode});

  $SecurityPostureConfig.fromJson(core.Map json_)
    : this(
        mode: json_['mode'] as core.String?,
        vulnerabilityMode: json_['vulnerabilityMode'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final mode = this.mode;
    final vulnerabilityMode = this.vulnerabilityMode;
    return {'mode': ?mode, 'vulnerabilityMode': ?vulnerabilityMode};
  }
}

/// Used by:
///
/// - displayvideo:v3 : SelectedInventories
/// - displayvideo:v4 : SelectedInventories
class $SelectedInventories {
  /// Whether the ad group is opted-in to Discover inventory.
  core.bool? allowDiscover;

  /// Whether the ad group is opted-in to Gmail inventory.
  core.bool? allowGmail;

  /// Whether the ad group is opted-in to Google Display Network inventory.
  core.bool? allowGoogleDisplayNetwork;

  /// Whether the ad group is opted-in to YouTube in-feed inventory.
  core.bool? allowYoutubeFeed;

  /// Whether the ad group is opted-in to YouTube shorts inventory.
  core.bool? allowYoutubeShorts;

  /// Whether the ad group is opted-in to YouTube in-stream inventory.
  core.bool? allowYoutubeStream;

  $SelectedInventories({
    this.allowDiscover,
    this.allowGmail,
    this.allowGoogleDisplayNetwork,
    this.allowYoutubeFeed,
    this.allowYoutubeShorts,
    this.allowYoutubeStream,
  });

  $SelectedInventories.fromJson(core.Map json_)
    : this(
        allowDiscover: json_['allowDiscover'] as core.bool?,
        allowGmail: json_['allowGmail'] as core.bool?,
        allowGoogleDisplayNetwork:
            json_['allowGoogleDisplayNetwork'] as core.bool?,
        allowYoutubeFeed: json_['allowYoutubeFeed'] as core.bool?,
        allowYoutubeShorts: json_['allowYoutubeShorts'] as core.bool?,
        allowYoutubeStream: json_['allowYoutubeStream'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final allowDiscover = this.allowDiscover;
    final allowGmail = this.allowGmail;
    final allowGoogleDisplayNetwork = this.allowGoogleDisplayNetwork;
    final allowYoutubeFeed = this.allowYoutubeFeed;
    final allowYoutubeShorts = this.allowYoutubeShorts;
    final allowYoutubeStream = this.allowYoutubeStream;
    return {
      'allowDiscover': ?allowDiscover,
      'allowGmail': ?allowGmail,
      'allowGoogleDisplayNetwork': ?allowGoogleDisplayNetwork,
      'allowYoutubeFeed': ?allowYoutubeFeed,
      'allowYoutubeShorts': ?allowYoutubeShorts,
      'allowYoutubeStream': ?allowYoutubeStream,
    };
  }
}

/// Used by:
///
/// - trafficdirector:v2 : SemanticVersion
/// - trafficdirector:v3 : SemanticVersion
class $SemanticVersion {
  core.int? majorNumber;
  core.int? minorNumber;
  core.int? patch;

  $SemanticVersion({this.majorNumber, this.minorNumber, this.patch});

  $SemanticVersion.fromJson(core.Map json_)
    : this(
        majorNumber: json_['majorNumber'] as core.int?,
        minorNumber: json_['minorNumber'] as core.int?,
        patch: json_['patch'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final majorNumber = this.majorNumber;
    final minorNumber = this.minorNumber;
    final patch = this.patch;
    return {
      'majorNumber': ?majorNumber,
      'minorNumber': ?minorNumber,
      'patch': ?patch,
    };
  }
}

/// Used by:
///
/// - displayvideo:v2 : SensitiveCategoryAssignedTargetingOptionDetails
/// - displayvideo:v3 : SensitiveCategoryAssignedTargetingOptionDetails
/// - displayvideo:v4 : SensitiveCategoryAssignedTargetingOptionDetails
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
  /// websites outside of YouTube.com.
  /// - "SENSITIVE_CATEGORY_LIVE_STREAMING_VIDEO" : Video of live events
  /// streamed over the internet.
  core.String? excludedSensitiveCategory;

  $SensitiveCategoryAssignedTargetingOptionDetails({
    this.excludedSensitiveCategory,
  });

  $SensitiveCategoryAssignedTargetingOptionDetails.fromJson(core.Map json_)
    : this(
        excludedSensitiveCategory:
            json_['excludedSensitiveCategory'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final excludedSensitiveCategory = this.excludedSensitiveCategory;
    return {'excludedSensitiveCategory': ?excludedSensitiveCategory};
  }
}

/// Used by:
///
/// - displayvideo:v2 : SensitiveCategoryTargetingOptionDetails
/// - displayvideo:v3 : SensitiveCategoryTargetingOptionDetails
/// - displayvideo:v4 : SensitiveCategoryTargetingOptionDetails
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
  /// websites outside of YouTube.com.
  /// - "SENSITIVE_CATEGORY_LIVE_STREAMING_VIDEO" : Video of live events
  /// streamed over the internet.
  core.String? sensitiveCategory;

  $SensitiveCategoryTargetingOptionDetails({this.sensitiveCategory});

  $SensitiveCategoryTargetingOptionDetails.fromJson(core.Map json_)
    : this(sensitiveCategory: json_['sensitiveCategory'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final sensitiveCategory = this.sensitiveCategory;
    return {'sensitiveCategory': ?sensitiveCategory};
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
/// - gkehub:v1 : ServiceMeshCondition
/// - gkehub:v2 : ServiceMeshCondition
class $ServiceMeshCondition {
  /// Unique identifier of the condition which describes the condition
  /// recognizable to the user.
  /// Possible string values are:
  /// - "CODE_UNSPECIFIED" : Default Unspecified code
  /// - "MESH_IAM_PERMISSION_DENIED" : Mesh IAM permission denied error code
  /// - "MESH_IAM_CROSS_PROJECT_PERMISSION_DENIED" : Permission denied error
  /// code for cross-project
  /// - "CNI_CONFIG_UNSUPPORTED" : CNI config unsupported error code
  /// - "GKE_SANDBOX_UNSUPPORTED" : GKE sandbox unsupported error code
  /// - "NODEPOOL_WORKLOAD_IDENTITY_FEDERATION_REQUIRED" : Nodepool workload
  /// identity federation required error code
  /// - "CNI_INSTALLATION_FAILED" : CNI installation failed error code
  /// - "CNI_POD_UNSCHEDULABLE" : CNI pod unschedulable error code
  /// - "CLUSTER_HAS_ZERO_NODES" : Cluster has zero node code
  /// - "CANONICAL_SERVICE_ERROR" : Failure to reconcile CanonicalServices
  /// - "UNSUPPORTED_MULTIPLE_CONTROL_PLANES" : Multiple control planes
  /// unsupported error code
  /// - "VPCSC_GA_SUPPORTED" : VPC-SC GA is supported for this control plane.
  /// - "DEPRECATED_SPEC_CONTROL_PLANE_MANAGEMENT" : User is using deprecated
  /// ControlPlaneManagement and they have not yet set Management.
  /// - "DEPRECATED_SPEC_CONTROL_PLANE_MANAGEMENT_SAFE" : User is using
  /// deprecated ControlPlaneManagement and they have already set Management.
  /// - "CONFIG_APPLY_INTERNAL_ERROR" : Configuration (Istio/k8s resources)
  /// failed to apply due to internal error.
  /// - "CONFIG_VALIDATION_ERROR" : Configuration failed to be applied due to
  /// being invalid.
  /// - "CONFIG_VALIDATION_WARNING" : Encountered configuration(s) with possible
  /// unintended behavior or invalid configuration. These configs may not have
  /// been applied.
  /// - "QUOTA_EXCEEDED_BACKEND_SERVICES" : BackendService quota exceeded error
  /// code.
  /// - "QUOTA_EXCEEDED_HEALTH_CHECKS" : HealthCheck quota exceeded error code.
  /// - "QUOTA_EXCEEDED_HTTP_ROUTES" : HTTPRoute quota exceeded error code.
  /// - "QUOTA_EXCEEDED_TCP_ROUTES" : TCPRoute quota exceeded error code.
  /// - "QUOTA_EXCEEDED_TLS_ROUTES" : TLS routes quota exceeded error code.
  /// - "QUOTA_EXCEEDED_TRAFFIC_POLICIES" : TrafficPolicy quota exceeded error
  /// code.
  /// - "QUOTA_EXCEEDED_ENDPOINT_POLICIES" : EndpointPolicy quota exceeded error
  /// code.
  /// - "QUOTA_EXCEEDED_GATEWAYS" : Gateway quota exceeded error code.
  /// - "QUOTA_EXCEEDED_MESHES" : Mesh quota exceeded error code.
  /// - "QUOTA_EXCEEDED_SERVER_TLS_POLICIES" : ServerTLSPolicy quota exceeded
  /// error code.
  /// - "QUOTA_EXCEEDED_CLIENT_TLS_POLICIES" : ClientTLSPolicy quota exceeded
  /// error code.
  /// - "QUOTA_EXCEEDED_SERVICE_LB_POLICIES" : ServiceLBPolicy quota exceeded
  /// error code.
  /// - "QUOTA_EXCEEDED_HTTP_FILTERS" : HTTPFilter quota exceeded error code.
  /// - "QUOTA_EXCEEDED_TCP_FILTERS" : TCPFilter quota exceeded error code.
  /// - "QUOTA_EXCEEDED_NETWORK_ENDPOINT_GROUPS" : NetworkEndpointGroup quota
  /// exceeded error code.
  /// - "CONFIG_APPLY_BLOCKED" : Configuration failed to apply due to fleet
  /// being blocked.
  /// - "LEGACY_MC_SECRETS" : Legacy istio secrets found for multicluster error
  /// code
  /// - "WORKLOAD_IDENTITY_REQUIRED" : Workload identity required error code
  /// - "NON_STANDARD_BINARY_USAGE" : Non-standard binary usage error code
  /// - "UNSUPPORTED_GATEWAY_CLASS" : Unsupported gateway class error code
  /// - "MANAGED_CNI_NOT_ENABLED" : Managed CNI not enabled error code
  /// - "MISSING_CONTROL_PLANE_CONFIG" : Missing control plane configuration
  /// error code
  /// - "SHARED_VPC_MISSING_PERMISSIONS" : Shared VPC missing permissions error
  /// code
  /// - "REQUIRED_ORG_POLICY_DISABLED" : Required org policy disabled error code
  /// - "MODERNIZATION_INCOMPATIBLE_POD_ANNOTATION" : One or more Pods have
  /// unsupported annotations.
  /// - "MODERNIZATION_INCOMPATIBLE_CONFIG" : Incompatible config found in the
  /// cluster.
  /// - "MODERNIZATION_INCOMPATIBLE_GATEWAY_POD_SCALE" : Gateway pods per
  /// cluster limit exceeded.
  /// - "MODERNIZATION_SCHEDULED" : Modernization is scheduled for a cluster.
  /// - "MODERNIZATION_IN_PROGRESS" : Modernization is in progress for a
  /// cluster.
  /// - "MODERNIZATION_COMPLETED" : Modernization is completed for a cluster.
  /// - "MODERNIZATION_ABORTED" : Modernization is aborted for a cluster.
  /// - "MODERNIZATION_PREPARING" : Preparing cluster so that its workloads can
  /// be migrated.
  /// - "MODERNIZATION_STALLED" : Modernization is stalled for a cluster.
  /// - "MODERNIZATION_PREPARED" : Cluster has been prepared for its workloads
  /// to be migrated.
  /// - "MODERNIZATION_MIGRATING_WORKLOADS" : Migrating the cluster's workloads
  /// to the new implementation.
  /// - "MODERNIZATION_ROLLING_BACK_CLUSTER" : Rollback is in progress for
  /// modernization of a cluster.
  /// - "MODERNIZATION_WILL_BE_SCHEDULED" : Modernization will be scheduled for
  /// a fleet.
  /// - "MODERNIZATION_MANUAL" : Fleet is opted out from automated
  /// modernization.
  /// - "MODERNIZATION_ELIGIBLE" : Fleet is eligible for modernization.
  /// - "MODERNIZATION_MODERNIZING" : Modernization of one or more clusters in a
  /// fleet is in progress.
  /// - "MODERNIZATION_MODERNIZED_SOAKING" : Modernization of all the fleet's
  /// clusters is complete. Soaking before finalizing the modernization.
  /// - "MODERNIZATION_FINALIZED" : Modernization is finalized for all clusters
  /// in a fleet. Rollback is no longer allowed.
  /// - "MODERNIZATION_ROLLING_BACK_FLEET" : Rollback is in progress for
  /// modernization of all clusters in a fleet.
  /// - "MODERNIZATION_MODERNIZED" : Modernization of all the fleet's clusters
  /// is complete. Soaking before finalizing the modernization.
  /// - "MODERNIZATION_COMPATIBLE" : Fleet is compatible for modernization.
  /// - "MODERNIZATION_INCOMPATIBLE" : Fleet is not yet compatible for
  /// modernization.
  /// - "MODERNIZATION_INCOMPATIBLE_FLEET_SCALE" : Fleet exceeds service mesh
  /// fleet-level scalability limits.
  /// - "MODERNIZATION_INCOMPATIBLE_FLEET_QUOTA" : Fleet exceeds service mesh
  /// fleet-level quota limits.
  core.String? code;

  /// A short summary about the issue.
  core.String? details;

  /// Links contains actionable information.
  core.String? documentationLink;

  /// Severity level of the condition.
  /// Possible string values are:
  /// - "SEVERITY_UNSPECIFIED" : Unspecified severity
  /// - "ERROR" : Indicates an issue that prevents the mesh from operating
  /// correctly
  /// - "WARNING" : Indicates a setting is likely wrong, but the mesh is still
  /// able to operate
  /// - "INFO" : An informational message, not requiring any action
  core.String? severity;

  $ServiceMeshCondition({
    this.code,
    this.details,
    this.documentationLink,
    this.severity,
  });

  $ServiceMeshCondition.fromJson(core.Map json_)
    : this(
        code: json_['code'] as core.String?,
        details: json_['details'] as core.String?,
        documentationLink: json_['documentationLink'] as core.String?,
        severity: json_['severity'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final code = this.code;
    final details = this.details;
    final documentationLink = this.documentationLink;
    final severity = this.severity;
    return {
      'code': ?code,
      'details': ?details,
      'documentationLink': ?documentationLink,
      'severity': ?severity,
    };
  }
}

/// Used by:
///
/// - gkehub:v1 : ServiceMeshStatusDetails
/// - gkehub:v2 : ServiceMeshStatusDetails
class $ServiceMeshStatusDetails {
  /// A machine-readable code that further describes a broad status.
  core.String? code;

  /// Human-readable explanation of code.
  core.String? details;

  $ServiceMeshStatusDetails({this.code, this.details});

  $ServiceMeshStatusDetails.fromJson(core.Map json_)
    : this(
        code: json_['code'] as core.String?,
        details: json_['details'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final code = this.code;
    final details = this.details;
    return {'code': ?code, 'details': ?details};
  }
}

/// Used by:
///
/// - displayvideo:v2 : SessionPositionAssignedTargetingOptionDetails
/// - displayvideo:v3 : SessionPositionAssignedTargetingOptionDetails
/// - displayvideo:v4 : SessionPositionAssignedTargetingOptionDetails
class $SessionPositionAssignedTargetingOptionDetails {
  /// The position where the ad will show in a session.
  /// Possible string values are:
  /// - "SESSION_POSITION_UNSPECIFIED" : This is a placeholder, does not
  /// indicate any positions.
  /// - "SESSION_POSITION_FIRST_IMPRESSION" : The first impression of the
  /// session.
  core.String? sessionPosition;

  $SessionPositionAssignedTargetingOptionDetails({this.sessionPosition});

  $SessionPositionAssignedTargetingOptionDetails.fromJson(core.Map json_)
    : this(sessionPosition: json_['sessionPosition'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final sessionPosition = this.sessionPosition;
    return {'sessionPosition': ?sessionPosition};
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
/// - gkebackup:v1 : SetTagsRequest
/// - memcache:v1 : SetTagsRequest
class $SetTagsRequest {
  /// A checksum based on the current bindings which can be passed to prevent
  /// race conditions.
  ///
  /// If not passed, etag check would be skipped.
  ///
  /// Optional.
  core.String? etag;

  /// The full resource name of the service resource.
  ///
  /// Required.
  core.String? name;

  /// A unique identifier for this request.
  ///
  /// Must be a valid UUID. This request is only idempotent if a `request_id` is
  /// provided.
  ///
  /// Optional.
  core.String? requestId;

  /// These bindings will override any bindings previously set and will be
  /// effective immediately.
  ///
  /// Each item in the map must be expressed as " : ". For example:
  /// "123/environment" : "production", "123/costCenter" : "marketing"
  ///
  /// Required.
  core.Map<core.String, core.String>? tags;

  $SetTagsRequest({this.etag, this.name, this.requestId, this.tags});

  $SetTagsRequest.fromJson(core.Map json_)
    : this(
        etag: json_['etag'] as core.String?,
        name: json_['name'] as core.String?,
        requestId: json_['requestId'] as core.String?,
        tags: (json_['tags'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final etag = this.etag;
    final name = this.name;
    final requestId = this.requestId;
    final tags = this.tags;
    return {
      'etag': ?etag,
      'name': ?name,
      'requestId': ?requestId,
      'tags': ?tags,
    };
  }
}

/// Used by:
///
/// - content:v2.1 : AccountImageImprovementsSettings
/// - merchantapi:accounts_v1 : ImageImprovementsAccountLevelSettings
class $Settings {
  /// Enables automatic image improvements.
  core.bool? allowAutomaticImageImprovements;

  $Settings({this.allowAutomaticImageImprovements});

  $Settings.fromJson(core.Map json_)
    : this(
        allowAutomaticImageImprovements:
            json_['allowAutomaticImageImprovements'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final allowAutomaticImageImprovements =
        this.allowAutomaticImageImprovements;
    return {
      'allowAutomaticImageImprovements': ?allowAutomaticImageImprovements,
    };
  }
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

  $SetupTag({this.stopOnSetupFailure, this.tagName});

  $SetupTag.fromJson(core.Map json_)
    : this(
        stopOnSetupFailure: json_['stopOnSetupFailure'] as core.bool?,
        tagName: json_['tagName'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final stopOnSetupFailure = this.stopOnSetupFailure;
    final tagName = this.tagName;
    return {'stopOnSetupFailure': ?stopOnSetupFailure, 'tagName': ?tagName};
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
/// - aiplatform:v1 : GoogleCloudAiplatformV1AudioTranscriptionConfigLanguageAuto
/// - androidpublisher:v3 : ArchiveSubscriptionRequest
/// - bigtableadmin:v2 : GoogleBigtableAdminV2TypeStringEncodingUtf8Raw
/// - cloudchannel:v1 : GoogleCloudChannelV1RepricingConfigChannelPartnerGranularity
/// - domains:v1 : ExportRegistrationRequest
/// - driveactivity:v2 : File
/// - run:v2 : Proto2BridgeMessageSet
/// - tpu:v1 : StartNodeRequest
/// - tpu:v1 : StopNodeRequest
class $Shared01 {
  $Shared01();

  $Shared01.fromJson(
    // ignore: avoid_unused_constructor_parameters
    core.Map json_,
  );

  core.Map<core.String, core.dynamic> toJson() => {};
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
/// - osconfig:v1 : OSPolicyResourcePackageResourceAPT
/// - osconfig:v1 : OSPolicyResourcePackageResourceGooGet
/// - osconfig:v1 : OSPolicyResourcePackageResourceYUM
/// - osconfig:v1 : OSPolicyResourcePackageResourceZypper
/// - osconfig:v2 : OSPolicyResourcePackageResourceAPT
/// - osconfig:v2 : OSPolicyResourcePackageResourceGooGet
/// - osconfig:v2 : OSPolicyResourcePackageResourceYUM
/// - osconfig:v2 : OSPolicyResourcePackageResourceZypper
class $Shared03 {
  /// Package name.
  ///
  /// Required.
  core.String? name;

  $Shared03({this.name});

  $Shared03.fromJson(core.Map json_)
    : this(name: json_['name'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final name = this.name;
    return {'name': ?name};
  }
}

/// Used by:
///
/// - chat:v1 : TextParagraph
/// - dialogflow:v2 : GoogleCloudDialogflowV2FreeFormContext
/// - dialogflow:v2 : GoogleCloudDialogflowV2IntentMessageTableCardCell
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3AgentUtterance
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3Phrase
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3TextInput
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3UserUtterance
class $Shared04 {
  core.String? text;

  $Shared04({this.text});

  $Shared04.fromJson(core.Map json_)
    : this(text: json_['text'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final text = this.text;
    return {'text': ?text};
  }
}

/// Used by:
///
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3GeneratorPlaceholder
/// - securitycenter:v1 : AwsAccount
/// - securitycenter:v1 : AwsOrganizationalUnit
/// - securitycenter:v1 : AzureResourceGroup
class $Shared05 {
  core.String? id;
  core.String? name;

  $Shared05({this.id, this.name});

  $Shared05.fromJson(core.Map json_)
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
/// - gkehub:v1 : ConfigManagementPolicyControllerMonitoring
/// - gkehub:v1 : PolicyControllerMonitoringConfig
/// - gkehub:v2 : ConfigManagementPolicyControllerMonitoring
/// - gkehub:v2 : PolicyControllerMonitoringConfig
class $Shared06 {
  /// Specifies the list of backends Policy Controller will export to.
  ///
  /// An empty list would effectively disable metrics export.
  core.List<core.String>? backends;

  $Shared06({this.backends});

  $Shared06.fromJson(core.Map json_)
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
/// - osconfig:v1 : OSPolicyAssignmentInstanceFilterInventory
/// - osconfig:v1 : OSPolicyInventoryFilter
/// - osconfig:v2 : OSPolicyAssignmentInstanceFilterInventory
/// - osconfig:v2 : OSPolicyInventoryFilter
class $Shared07 {
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

  $Shared07({this.osShortName, this.osVersion});

  $Shared07.fromJson(core.Map json_)
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
/// - securitycenter:v1 : Agent
/// - securitycenter:v1 : AzureManagementGroup
/// - securitycenter:v1 : AzureSubscription
/// - securitycenter:v1 : AzureTenant
class $Shared08 {
  core.String? displayName;
  core.String? id;

  $Shared08({this.displayName, this.id});

  $Shared08.fromJson(core.Map json_)
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
class $Shared09 {
  core.String? name;
  core.String? value;

  $Shared09({this.name, this.value});

  $Shared09.fromJson(core.Map json_)
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
class $Shared10 {
  core.String? languageCode;

  $Shared10({this.languageCode});

  $Shared10.fromJson(core.Map json_)
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
class $Shared11 {
  core.String? uri;

  $Shared11({this.uri});

  $Shared11.fromJson(core.Map json_) : this(uri: json_['uri'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final uri = this.uri;
    return {'uri': ?uri};
  }
}

/// Used by:
///
/// - admin:reports_v1 : FieldValueTextListValue
/// - contentwarehouse:v1 : GoogleCloudContentwarehouseV1TextArray
class $Shared12 {
  /// List of text values.
  core.List<core.String>? values;

  $Shared12({this.values});

  $Shared12.fromJson(core.Map json_)
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
/// - content:v2.1 : Price
/// - content:v2.1 : PriceAmount
class $Shared15 {
  /// The currency of the price.
  core.String? currency;

  /// The price represented as a number.
  core.String? value;

  $Shared15({this.currency, this.value});

  $Shared15.fromJson(core.Map json_)
    : this(
        currency: json_['currency'] as core.String?,
        value: json_['value'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final currency = this.currency;
    final value = this.value;
    return {'currency': ?currency, 'value': ?value};
  }
}

/// Used by:
///
/// - dataform:v1 : ReadRepositoryFileResponse
/// - dataform:v1 : WriteFile
class $Shared16 {
  /// The file's contents.
  core.String? contents;
  core.List<core.int> get contentsAsBytes => convert.base64.decode(contents!);

  set contentsAsBytes(core.List<core.int> bytes_) {
    contents = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  $Shared16({this.contents});

  $Shared16.fromJson(core.Map json_)
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
class $Shared17 {
  core.String? dataset;

  $Shared17({this.dataset});

  $Shared17.fromJson(core.Map json_)
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
class $Shared18 {
  core.double? magnitude;
  core.double? score;

  $Shared18({this.magnitude, this.score});

  $Shared18.fromJson(core.Map json_)
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
class $Shared19 {
  core.String? languageCode;
  core.String? text;

  $Shared19({this.languageCode, this.text});

  $Shared19.fromJson(core.Map json_)
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
class $Shared20 {
  core.String? value;

  $Shared20({this.value});

  $Shared20.fromJson(core.Map json_)
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
class $Shared21 {
  core.String? displayName;
  core.String? flow;

  $Shared21({this.displayName, this.flow});

  $Shared21.fromJson(core.Map json_)
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
class $Shared22 {
  core.String? displayName;
  core.String? playbook;

  $Shared22({this.displayName, this.playbook});

  $Shared22.fromJson(core.Map json_)
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
class $Shared23 {
  core.String? displayName;
  core.String? name;

  $Shared23({this.displayName, this.name});

  $Shared23.fromJson(core.Map json_)
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
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3ResponseMessageConversationSuccess
/// - dialogflow:v3 : GoogleCloudDialogflowCxV3ResponseMessageLiveAgentHandoff
class $Shared24 {
  ///
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? metadata;

  $Shared24({this.metadata});

  $Shared24.fromJson(core.Map json_)
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
            json_['enableIntegrityMonitoring'] as core.bool?,
        enableSecureBoot: json_['enableSecureBoot'] as core.bool?,
        enableVtpm: json_['enableVtpm'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final enableIntegrityMonitoring = this.enableIntegrityMonitoring;
    final enableSecureBoot = this.enableSecureBoot;
    final enableVtpm = this.enableVtpm;
    return {
      'enableIntegrityMonitoring': ?enableIntegrityMonitoring,
      'enableSecureBoot': ?enableSecureBoot,
      'enableVtpm': ?enableVtpm,
    };
  }
}

/// Used by:
///
/// - content:v2.1 : ProductShippingDimension
/// - merchantapi:products_v1 : ShippingDimension
class $ShippingDimension {
  /// The unit of value.
  core.String? unit;

  /// The dimension of the product used to calculate the shipping cost of the
  /// item.
  core.double? value;

  $ShippingDimension({this.unit, this.value});

  $ShippingDimension.fromJson(core.Map json_)
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
/// - content:v2.1 : AccountShippingImprovements
/// - merchantapi:accounts_v1 : AutomaticShippingImprovements
class $ShippingImprovements {
  /// Enables automatic shipping improvements.
  core.bool? allowShippingImprovements;

  $ShippingImprovements({this.allowShippingImprovements});

  $ShippingImprovements.fromJson(core.Map json_)
    : this(
        allowShippingImprovements:
            json_['allowShippingImprovements'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final allowShippingImprovements = this.allowShippingImprovements;
    return {'allowShippingImprovements': ?allowShippingImprovements};
  }
}

/// Used by:
///
/// - content:v2.1 : ProductShippingWeight
/// - merchantapi:products_v1 : ShippingWeight
class $ShippingWeight {
  /// The unit of value.
  core.String? unit;

  /// The weight of the product used to calculate the shipping cost of the item.
  core.double? value;

  $ShippingWeight({this.unit, this.value});

  $ShippingWeight.fromJson(core.Map json_)
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
/// - displayvideo:v2 : Site
/// - displayvideo:v3 : Site
/// - displayvideo:v4 : Site
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

  $Site({this.name, this.urlOrAppId});

  $Site.fromJson(core.Map json_)
    : this(
        name: json_['name'] as core.String?,
        urlOrAppId: json_['urlOrAppId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final name = this.name;
    final urlOrAppId = this.urlOrAppId;
    return {'name': ?name, 'urlOrAppId': ?urlOrAppId};
  }
}

/// Used by:
///
/// - dfareporting:v3.5 : Size
/// - dfareporting:v5 : Size
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

  $Size({this.height, this.iab, this.id, this.kind, this.width});

  $Size.fromJson(core.Map json_)
    : this(
        height: json_['height'] as core.int?,
        iab: json_['iab'] as core.bool?,
        id: json_['id'] as core.String?,
        kind: json_['kind'] as core.String?,
        width: json_['width'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final height = this.height;
    final iab = this.iab;
    final id = this.id;
    final kind = this.kind;
    final width = this.width;
    return {
      'height': ?height,
      'iab': ?iab,
      'id': ?id,
      'kind': ?kind,
      'width': ?width,
    };
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

  $StaticCluster({this.cluster, this.lastUpdated});

  $StaticCluster.fromJson(core.Map json_)
    : this(
        cluster: json_.containsKey('cluster')
            ? json_['cluster'] as core.Map<core.String, core.dynamic>
            : null,
        lastUpdated: json_['lastUpdated'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final cluster = this.cluster;
    final lastUpdated = this.lastUpdated;
    return {'cluster': ?cluster, 'lastUpdated': ?lastUpdated};
  }
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

  $StaticListener({this.lastUpdated, this.listener});

  $StaticListener.fromJson(core.Map json_)
    : this(
        lastUpdated: json_['lastUpdated'] as core.String?,
        listener: json_.containsKey('listener')
            ? json_['listener'] as core.Map<core.String, core.dynamic>
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final lastUpdated = this.lastUpdated;
    final listener = this.listener;
    return {'lastUpdated': ?lastUpdated, 'listener': ?listener};
  }
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

  $StaticRouteConfig({this.lastUpdated, this.routeConfig});

  $StaticRouteConfig.fromJson(core.Map json_)
    : this(
        lastUpdated: json_['lastUpdated'] as core.String?,
        routeConfig: json_.containsKey('routeConfig')
            ? json_['routeConfig'] as core.Map<core.String, core.dynamic>
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final lastUpdated = this.lastUpdated;
    final routeConfig = this.routeConfig;
    return {'lastUpdated': ?lastUpdated, 'routeConfig': ?routeConfig};
  }
}

/// Used by:
///
/// - accesscontextmanager:v1 : Status
/// - admin:directory_v1 : Status
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
/// - backupdr:v1 : Status
/// - baremetalsolution:v2 : Status
/// - batch:v1 : Status
/// - beyondcorp:v1 : GoogleRpcStatus
/// - bigquerydatatransfer:v1 : Status
/// - bigqueryreservation:v1 : Status
/// - bigtableadmin:v2 : Status
/// - blockchainnodeengine:v1 : Status
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
/// - cloudresourcemanager:v2 : Status
/// - cloudresourcemanager:v3 : Status
/// - cloudscheduler:v1 : Status
/// - cloudsearch:v1 : Status
/// - cloudshell:v1 : Status
/// - cloudtasks:v2 : Status
/// - cloudtrace:v2 : Status
/// - composer:v1 : Status
/// - config:v1 : Status
/// - connectors:v1 : Status
/// - contactcenterinsights:v1 : GoogleRpcStatus
/// - container:v1 : Status
/// - containeranalysis:v1 : Status
/// - contentwarehouse:v1 : GoogleRpcStatus
/// - datacatalog:v1 : Status
/// - dataform:v1 : Status
/// - datafusion:v1 : Status
/// - datalineage:v1 : GoogleRpcStatus
/// - datamigration:v1 : Status
/// - datapipelines:v1 : GoogleRpcStatus
/// - dataplex:v1 : GoogleRpcStatus
/// - dataproc:v1 : Status
/// - datastore:v1 : Status
/// - datastream:v1 : Status
/// - deploymentmanager:v2 : Status
/// - developerconnect:v1 : Status
/// - displayvideo:v2 : Status
/// - displayvideo:v3 : Status
/// - displayvideo:v4 : Status
/// - dlp:v2 : GoogleRpcStatus
/// - documentai:v1 : GoogleRpcStatus
/// - domains:v1 : Status
/// - drive:v3 : Status
/// - eventarc:v1 : GoogleRpcStatus
/// - file:v1 : Status
/// - firebaseappdistribution:v1 : GoogleRpcStatus
/// - firebaseapphosting:v1 : Status
/// - firebasedataconnect:v1 : Status
/// - firebasehosting:v1 : Status
/// - firebaseml:v1 : Status
/// - firestore:v1 : Status
/// - ftp:v1 : Status
/// - games:v1 : Status
/// - gkebackup:v1 : GoogleRpcStatus
/// - gkehub:v1 : GoogleRpcStatus
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
/// - memcache:v1 : Status
/// - metastore:v1 : Status
/// - migrationcenter:v1 : Status
/// - ml:v1 : GoogleRpc__Status
/// - monitoring:v3 : Status
/// - netapp:v1 : Status
/// - networkconnectivity:v1 : GoogleRpcStatus
/// - networkmanagement:v1 : Status
/// - networksecurity:v1 : Status
/// - networkservices:v1 : Status
/// - notebooks:v1 : Status
/// - notebooks:v2 : Status
/// - observability:v1 : Status
/// - ondemandscanning:v1 : Status
/// - oracledatabase:v1 : Status
/// - osconfig:v1 : Status
/// - osconfig:v2 : Status
/// - parallelstore:v1 : Status
/// - people:v1 : Status
/// - policysimulator:v1 : GoogleRpcStatus
/// - policytroubleshooter:v1 : GoogleRpcStatus
/// - policytroubleshooter:v3 : GoogleRpcStatus
/// - privateca:v1 : Status
/// - pubsublite:v1 : Status
/// - rapidmigrationassessment:v1 : Status
/// - recaptchaenterprise:v1 : GoogleRpcStatus
/// - redis:v1 : Status
/// - retail:v2 : GoogleRpcStatus
/// - run:v1 : GoogleRpcStatus
/// - run:v2 : GoogleRpcStatus
/// - runtimeconfig:v1 : Status
/// - saasservicemgmt:v1 : Status
/// - searchads360:v23 : GoogleRpc__Status
/// - secretmanager:v1 : Status
/// - securesourcemanager:v1 : Status
/// - securityposture:v1 : Status
/// - serviceconsumermanagement:v1 : Status
/// - servicecontrol:v1 : Status
/// - servicecontrol:v2 : Status
/// - servicemanagement:v1 : Status
/// - servicenetworking:v1 : Status
/// - serviceusage:v1 : Status
/// - spanner:v1 : Status
/// - speech:v1 : Status
/// - storagebatchoperations:v1 : Status
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
/// - gkehub:v1 : Status
/// - gkehub:v2 : AppDevExperienceStatus
class $Status02 {
  /// Code specifies AppDevExperienceFeature's subcomponent ready state.
  /// Possible string values are:
  /// - "CODE_UNSPECIFIED" : Not set.
  /// - "OK" : AppDevExperienceFeature's specified subcomponent is ready.
  /// - "FAILED" : AppDevExperienceFeature's specified subcomponent ready state
  /// is false. This means AppDevExperienceFeature has encountered an issue that
  /// blocks all, or a portion, of its normal operation. See the `description`
  /// for more details.
  /// - "UNKNOWN" : AppDevExperienceFeature's specified subcomponent has a
  /// pending or unknown state.
  core.String? code;

  /// Description is populated if Code is Failed, explaining why it has failed.
  core.String? description;

  $Status02({this.code, this.description});

  $Status02.fromJson(core.Map json_)
    : this(
        code: json_['code'] as core.String?,
        description: json_['description'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final code = this.code;
    final description = this.description;
    return {'code': ?code, 'description': ?description};
  }
}

/// Used by:
///
/// - admob:v1 : StringList
/// - gmailpostmastertools:v2 : StringList
class $StringList {
  /// The string values.
  core.List<core.String>? values;

  $StringList({this.values});

  $StringList.fromJson(core.Map json_)
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
/// - displayvideo:v2 : SubExchangeAssignedTargetingOptionDetails
/// - displayvideo:v3 : SubExchangeAssignedTargetingOptionDetails
/// - displayvideo:v4 : SubExchangeAssignedTargetingOptionDetails
class $SubExchangeAssignedTargetingOptionDetails {
  /// The targeting_option_id of a TargetingOption of type
  /// `TARGETING_TYPE_SUB_EXCHANGE`.
  ///
  /// Required.
  core.String? targetingOptionId;

  $SubExchangeAssignedTargetingOptionDetails({this.targetingOptionId});

  $SubExchangeAssignedTargetingOptionDetails.fromJson(core.Map json_)
    : this(targetingOptionId: json_['targetingOptionId'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final targetingOptionId = this.targetingOptionId;
    return {'targetingOptionId': ?targetingOptionId};
  }
}

/// Used by:
///
/// - displayvideo:v2 : SubExchangeTargetingOptionDetails
/// - displayvideo:v3 : SubExchangeTargetingOptionDetails
/// - displayvideo:v4 : SubExchangeTargetingOptionDetails
class $SubExchangeTargetingOptionDetails {
  /// The display name of the sub-exchange.
  ///
  /// Output only.
  core.String? displayName;

  $SubExchangeTargetingOptionDetails({this.displayName});

  $SubExchangeTargetingOptionDetails.fromJson(core.Map json_)
    : this(displayName: json_['displayName'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final displayName = this.displayName;
    return {'displayName': ?displayName};
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
/// - gkebackup:v1 : GetTagsResponse
/// - gkebackup:v1 : SetTagsResponse
/// - memcache:v1 : GetTagsResponse
/// - memcache:v1 : SetTagsResponse
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
/// - displayvideo:v2 : TargetFrequency
/// - displayvideo:v3 : TargetFrequency
/// - displayvideo:v4 : TargetFrequency
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

  $TargetFrequency({this.targetCount, this.timeUnit, this.timeUnitCount});

  $TargetFrequency.fromJson(core.Map json_)
    : this(
        targetCount: json_['targetCount'] as core.String?,
        timeUnit: json_['timeUnit'] as core.String?,
        timeUnitCount: json_['timeUnitCount'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final targetCount = this.targetCount;
    final timeUnit = this.timeUnit;
    final timeUnitCount = this.timeUnitCount;
    return {
      'targetCount': ?targetCount,
      'timeUnit': ?timeUnit,
      'timeUnitCount': ?timeUnitCount,
    };
  }
}

/// Used by:
///
/// - displayvideo:v3 : TargetingExpansionConfig
/// - displayvideo:v4 : TargetingExpansionConfig
class $TargetingExpansionConfig {
  /// Magnitude of expansion for eligible first-party user lists under this ad
  /// group.
  ///
  /// This field only applies to YouTube and Partners line item and ad group
  /// resources.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "UNKNOWN" : Audience expansion level is not specified or is unknown in
  /// this version.
  /// - "NO_REACH" : Audience expansion off.
  /// - "LEAST_REACH" : Conservative audience expansion.
  /// - "MID_REACH" : Moderate audience expansion.
  /// - "MOST_REACH" : Aggressive audience expansion.
  core.String? audienceExpansionLevel;

  /// Whether to exclude seed list for audience expansion.
  ///
  /// This field only applies to YouTube and Partners line item and ad group
  /// resources.
  ///
  /// Output only.
  core.bool? audienceExpansionSeedListExcluded;

  /// Whether to enable Optimized Targeting for the line item.
  ///
  /// Optimized targeting is not compatible with all bid strategies. Attempting
  /// to set this field to `true` for a line item using the BiddingStrategy
  /// field fixed_bid or one of the following combinations of BiddingStrategy
  /// fields and BiddingStrategyPerformanceGoalType will result in an error:
  /// maximize_auto_spend_bid: * `BIDDING_STRATEGY_PERFORMANCE_GOAL_TYPE_CIVA` *
  /// `BIDDING_STRATEGY_PERFORMANCE_GOAL_TYPE_IVO_TEN` *
  /// `BIDDING_STRATEGY_PERFORMANCE_GOAL_TYPE_AV_VIEWED`
  /// performance_goal_auto_bid: *
  /// `BIDDING_STRATEGY_PERFORMANCE_GOAL_TYPE_VIEWABLE_CPM` This also applies if
  /// the line item inherits one of the above bid strategies from the parent
  /// insertion order. Bid strategies set at the insertion order-level will be
  /// inherited by their line items if the `InsertionOrder` budget field
  /// automationType is set to `INSERTION_ORDER_AUTOMATION_TYPE_BUDGET` or
  /// `INSERTION_ORDER_AUTOMATION_TYPE_BID_BUDGET`.
  ///
  /// Required.
  core.bool? enableOptimizedTargeting;

  /// Whether to exclude demographic expansion for Optimized Targeting.
  ///
  /// This field can only be set for Demand Gen ad groups.
  ///
  /// Optional.
  core.bool? excludeDemographicExpansion;

  $TargetingExpansionConfig({
    this.audienceExpansionLevel,
    this.audienceExpansionSeedListExcluded,
    this.enableOptimizedTargeting,
    this.excludeDemographicExpansion,
  });

  $TargetingExpansionConfig.fromJson(core.Map json_)
    : this(
        audienceExpansionLevel: json_['audienceExpansionLevel'] as core.String?,
        audienceExpansionSeedListExcluded:
            json_['audienceExpansionSeedListExcluded'] as core.bool?,
        enableOptimizedTargeting:
            json_['enableOptimizedTargeting'] as core.bool?,
        excludeDemographicExpansion:
            json_['excludeDemographicExpansion'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final audienceExpansionLevel = this.audienceExpansionLevel;
    final audienceExpansionSeedListExcluded =
        this.audienceExpansionSeedListExcluded;
    final enableOptimizedTargeting = this.enableOptimizedTargeting;
    final excludeDemographicExpansion = this.excludeDemographicExpansion;
    return {
      'audienceExpansionLevel': ?audienceExpansionLevel,
      'audienceExpansionSeedListExcluded': ?audienceExpansionSeedListExcluded,
      'enableOptimizedTargeting': ?enableOptimizedTargeting,
      'excludeDemographicExpansion': ?excludeDemographicExpansion,
    };
  }
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

  $TeardownTag({this.stopTeardownOnFailure, this.tagName});

  $TeardownTag.fromJson(core.Map json_)
    : this(
        stopTeardownOnFailure: json_['stopTeardownOnFailure'] as core.bool?,
        tagName: json_['tagName'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final stopTeardownOnFailure = this.stopTeardownOnFailure;
    final tagName = this.tagName;
    return {
      'stopTeardownOnFailure': ?stopTeardownOnFailure,
      'tagName': ?tagName,
    };
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
/// - cloudresourcemanager:v2 : TestIamPermissionsRequest
/// - cloudresourcemanager:v3 : TestIamPermissionsRequest
/// - cloudtasks:v2 : TestIamPermissionsRequest
/// - config:v1 : TestIamPermissionsRequest
/// - connectors:v1 : TestIamPermissionsRequest
/// - contactcenterinsights:v1 : GoogleIamV1TestIamPermissionsRequest
/// - containeranalysis:v1 : TestIamPermissionsRequest
/// - datacatalog:v1 : TestIamPermissionsRequest
/// - dataform:v1 : TestIamPermissionsRequest
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
/// - metastore:v1 : TestIamPermissionsRequest
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
/// - dataplex:v1 : GoogleIamV1TestIamPermissionsResponse
/// - dataproc:v1 : TestIamPermissionsResponse
/// - logging:v2 : TestIamPermissionsResponse
/// - metastore:v1 : TestIamPermissionsResponse
class $TestIamPermissionsResponse {
  /// A subset of TestPermissionsRequest.permissions that the caller is allowed.
  core.List<core.String>? permissions;

  $TestIamPermissionsResponse({this.permissions});

  $TestIamPermissionsResponse.fromJson(core.Map json_)
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
/// - displayvideo:v3 : AdPolicyTopicEvidenceTextList
/// - displayvideo:v4 : AdPolicyTopicEvidenceTextList
/// - searchads360:v23 : GoogleAdsSearchads360V23Common_PolicyTopicEvidence_TextList
class $TextList {
  /// The fragments of text from the resource that caused the policy finding.
  core.List<core.String>? texts;

  $TextList({this.texts});

  $TextList.fromJson(core.Map json_)
    : this(
        texts: (json_['texts'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final texts = this.texts;
    return {'texts': ?texts};
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
/// - content:v2.1 : TextWithTooltip
/// - merchantapi:issueresolution_v1 : TextWithTooltip
class $TextWithTooltip {
  /// Value of the tooltip as a simple text.
  core.String? simpleTooltipValue;

  /// Value of the message as a simple text.
  core.String? simpleValue;

  /// The suggested type of an icon for tooltip, if a tooltip is present.
  /// Possible string values are:
  /// - "TOOLTIP_ICON_STYLE_UNSPECIFIED" : Default value. Will never be provided
  /// by the API.
  /// - "INFO" : Used when the tooltip adds additional information to the
  /// context, the 'i' can be used as an icon.
  /// - "QUESTION" : Used when the tooltip shows helpful information, the '?'
  /// can be used as an icon.
  core.String? tooltipIconStyle;

  $TextWithTooltip({
    this.simpleTooltipValue,
    this.simpleValue,
    this.tooltipIconStyle,
  });

  $TextWithTooltip.fromJson(core.Map json_)
    : this(
        simpleTooltipValue: json_['simpleTooltipValue'] as core.String?,
        simpleValue: json_['simpleValue'] as core.String?,
        tooltipIconStyle: json_['tooltipIconStyle'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final simpleTooltipValue = this.simpleTooltipValue;
    final simpleValue = this.simpleValue;
    final tooltipIconStyle = this.tooltipIconStyle;
    return {
      'simpleTooltipValue': ?simpleTooltipValue,
      'simpleValue': ?simpleValue,
      'tooltipIconStyle': ?tooltipIconStyle,
    };
  }
}

/// Used by:
///
/// - displayvideo:v2 : ThirdPartyOnlyConfig
/// - displayvideo:v3 : ThirdPartyOnlyConfig
/// - displayvideo:v4 : ThirdPartyOnlyConfig
class $ThirdPartyOnlyConfig {
  /// Whether or not order ID reporting for pixels is enabled.
  ///
  /// This value cannot be changed once set to `true`.
  core.bool? pixelOrderIdReportingEnabled;

  $ThirdPartyOnlyConfig({this.pixelOrderIdReportingEnabled});

  $ThirdPartyOnlyConfig.fromJson(core.Map json_)
    : this(
        pixelOrderIdReportingEnabled:
            json_['pixelOrderIdReportingEnabled'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final pixelOrderIdReportingEnabled = this.pixelOrderIdReportingEnabled;
    return {'pixelOrderIdReportingEnabled': ?pixelOrderIdReportingEnabled};
  }
}

/// Used by:
///
/// - displayvideo:v2 : ThirdPartyUrl
/// - displayvideo:v3 : ThirdPartyUrl
/// - displayvideo:v4 : ThirdPartyUrl
class $ThirdPartyUrl {
  /// The type of interaction needs to be tracked by the tracking URL
  ///
  /// Optional.
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
  /// For example, `https://www.example.com/path`
  ///
  /// Optional.
  core.String? url;

  $ThirdPartyUrl({this.type, this.url});

  $ThirdPartyUrl.fromJson(core.Map json_)
    : this(
        type: json_['type'] as core.String?,
        url: json_['url'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final type = this.type;
    final url = this.url;
    return {'type': ?type, 'url': ?url};
  }
}

/// Used by:
///
/// - displayvideo:v2 : ThirdPartyVendorConfig
/// - displayvideo:v3 : ThirdPartyVendorConfig
/// - displayvideo:v4 : ThirdPartyVendorConfig
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
  /// - "THIRD_PARTY_VENDOR_TRANSUNION" : Transunion.
  /// - "THIRD_PARTY_VENDOR_ORIGIN" : Origin.
  /// - "THIRD_PARTY_VENDOR_GEMIUS" : Gemius.
  /// - "THIRD_PARTY_VENDOR_MEDIA_SCOPE" : MediaScope.
  /// - "THIRD_PARTY_VENDOR_AUDIENCE_PROJECT" : Audience Project.
  /// - "THIRD_PARTY_VENDOR_VIDEO_AMP" : Video Amp.
  /// - "THIRD_PARTY_VENDOR_ISPOT_TV" : Ispot TV.
  /// - "THIRD_PARTY_VENDOR_INTAGE" : Intage.
  /// - "THIRD_PARTY_VENDOR_MACROMILL" : Macromill.
  /// - "THIRD_PARTY_VENDOR_VIDEO_RESEARCH" : Video Research.
  core.String? vendor;

  $ThirdPartyVendorConfig({this.placementId, this.vendor});

  $ThirdPartyVendorConfig.fromJson(core.Map json_)
    : this(
        placementId: json_['placementId'] as core.String?,
        vendor: json_['vendor'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final placementId = this.placementId;
    final vendor = this.vendor;
    return {'placementId': ?placementId, 'vendor': ?vendor};
  }
}

/// Used by:
///
/// - alloydb:v1 : GoogleTypeTimeOfDay
/// - apigee:v1 : GoogleTypeTimeOfDay
/// - authorizedbuyersmarketplace:v1 : TimeOfDay
/// - businessprofileperformance:v1 : TimeOfDay
/// - classroom:v1 : TimeOfDay
/// - clouddeploy:v1 : TimeOfDay
/// - container:v1 : TimeOfDay
/// - dlp:v2 : GoogleTypeTimeOfDay
/// - gkebackup:v1 : TimeOfDay
/// - health:v4 : TimeOfDay
/// - jobs:v3 : TimeOfDay
/// - jobs:v4 : TimeOfDay
/// - looker:v1 : TimeOfDay
/// - memcache:v1 : TimeOfDay
/// - merchantapi:datasources_v1 : TimeOfDay
/// - monitoring:v3 : TimeOfDay
/// - mybusinessbusinessinformation:v1 : TimeOfDay
/// - mybusinesslodging:v1 : TimeOfDay
/// - oracledatabase:v1 : TimeOfDay
/// - osconfig:v1 : TimeOfDay
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
/// - content:v2.1 : TimeZone
/// - contentwarehouse:v1 : GoogleTypeTimeZone
/// - documentai:v1 : GoogleTypeTimeZone
/// - localservices:v1 : GoogleTypeTimeZone
/// - merchantapi:accounts_v1 : TimeZone
/// - merchantapi:ordertracking_v1 : TimeZone
/// - oracledatabase:v1 : TimeZone
/// - osconfig:v1 : TimeZone
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
/// - displayvideo:v2 : TimerEvent
/// - displayvideo:v3 : TimerEvent
/// - displayvideo:v4 : TimerEvent
class $TimerEvent {
  /// The name of the timer event.
  ///
  /// Required.
  core.String? name;

  /// The name used to identify this timer event in reports.
  ///
  /// Required.
  core.String? reportingName;

  $TimerEvent({this.name, this.reportingName});

  $TimerEvent.fromJson(core.Map json_)
    : this(
        name: json_['name'] as core.String?,
        reportingName: json_['reportingName'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final name = this.name;
    final reportingName = this.reportingName;
    return {'name': ?name, 'reportingName': ?reportingName};
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
/// - displayvideo:v2 : TrackingFloodlightActivityConfig
/// - displayvideo:v3 : TrackingFloodlightActivityConfig
/// - displayvideo:v4 : TrackingFloodlightActivityConfig
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
        floodlightActivityId: json_['floodlightActivityId'] as core.String?,
        postClickLookbackWindowDays:
            json_['postClickLookbackWindowDays'] as core.int?,
        postViewLookbackWindowDays:
            json_['postViewLookbackWindowDays'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final floodlightActivityId = this.floodlightActivityId;
    final postClickLookbackWindowDays = this.postClickLookbackWindowDays;
    final postViewLookbackWindowDays = this.postViewLookbackWindowDays;
    return {
      'floodlightActivityId': ?floodlightActivityId,
      'postClickLookbackWindowDays': ?postClickLookbackWindowDays,
      'postViewLookbackWindowDays': ?postViewLookbackWindowDays,
    };
  }
}

/// Used by:
///
/// - content:v2.1 : ProductUnitPricingBaseMeasure
/// - merchantapi:products_v1 : UnitPricingBaseMeasure
class $UnitPricingBaseMeasure {
  /// The unit of the denominator.
  core.String? unit;

  /// The denominator of the unit price.
  core.String? value;

  $UnitPricingBaseMeasure({this.unit, this.value});

  $UnitPricingBaseMeasure.fromJson(core.Map json_)
    : this(
        unit: json_['unit'] as core.String?,
        value: json_['value'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final unit = this.unit;
    final value = this.value;
    return {'unit': ?unit, 'value': ?value};
  }
}

/// Used by:
///
/// - content:v2.1 : ProductUnitPricingMeasure
/// - merchantapi:products_v1 : UnitPricingMeasure
class $UnitPricingMeasure {
  /// The unit of the measure.
  core.String? unit;

  /// The measure of an item.
  core.double? value;

  $UnitPricingMeasure({this.unit, this.value});

  $UnitPricingMeasure.fromJson(core.Map json_)
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
/// - displayvideo:v2 : UniversalAdId
/// - displayvideo:v3 : UniversalAdId
/// - displayvideo:v4 : UniversalAdId
class $UniversalAdId {
  /// The unique creative identifier.
  ///
  /// Optional.
  core.String? id;

  /// The registry provides unique creative identifiers.
  ///
  /// Optional.
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

  $UniversalAdId({this.id, this.registry});

  $UniversalAdId.fromJson(core.Map json_)
    : this(
        id: json_['id'] as core.String?,
        registry: json_['registry'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final id = this.id;
    final registry = this.registry;
    return {'id': ?id, 'registry': ?registry};
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
/// - displayvideo:v2 : UrlAssignedTargetingOptionDetails
/// - displayvideo:v3 : UrlAssignedTargetingOptionDetails
/// - displayvideo:v4 : UrlAssignedTargetingOptionDetails
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

  $UrlAssignedTargetingOptionDetails({this.negative, this.url});

  $UrlAssignedTargetingOptionDetails.fromJson(core.Map json_)
    : this(
        negative: json_['negative'] as core.bool?,
        url: json_['url'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final negative = this.negative;
    final url = this.url;
    return {'negative': ?negative, 'url': ?url};
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
/// - displayvideo:v2 : UserRewardedContentAssignedTargetingOptionDetails
/// - displayvideo:v3 : UserRewardedContentAssignedTargetingOptionDetails
/// - displayvideo:v4 : UserRewardedContentAssignedTargetingOptionDetails
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
        targetingOptionId: json_['targetingOptionId'] as core.String?,
        userRewardedContent: json_['userRewardedContent'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final targetingOptionId = this.targetingOptionId;
    final userRewardedContent = this.userRewardedContent;
    return {
      'targetingOptionId': ?targetingOptionId,
      'userRewardedContent': ?userRewardedContent,
    };
  }
}

/// Used by:
///
/// - displayvideo:v2 : UserRewardedContentTargetingOptionDetails
/// - displayvideo:v3 : UserRewardedContentTargetingOptionDetails
/// - displayvideo:v4 : UserRewardedContentTargetingOptionDetails
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

  $UserRewardedContentTargetingOptionDetails({this.userRewardedContent});

  $UserRewardedContentTargetingOptionDetails.fromJson(core.Map json_)
    : this(userRewardedContent: json_['userRewardedContent'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final userRewardedContent = this.userRewardedContent;
    return {'userRewardedContent': ?userRewardedContent};
  }
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

  $V1AccessTuple({this.fullResourceName, this.permission, this.principal});

  $V1AccessTuple.fromJson(core.Map json_)
    : this(
        fullResourceName: json_['fullResourceName'] as core.String?,
        permission: json_['permission'] as core.String?,
        principal: json_['principal'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final fullResourceName = this.fullResourceName;
    final permission = this.permission;
    final principal = this.principal;
    return {
      'fullResourceName': ?fullResourceName,
      'permission': ?permission,
      'principal': ?principal,
    };
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
/// - parametermanager:v1 : ParameterVersionPayload
/// - parametermanager:v1 : TemplateVersionPayload
class $VersionPayload {
  /// bytes data for storing payload.
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

  $VersionPayload({this.data});

  $VersionPayload.fromJson(core.Map json_)
    : this(data: json_['data'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final data = this.data;
    return {'data': ?data};
  }
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

  $VersionedPackage({this.architecture, this.packageName, this.version});

  $VersionedPackage.fromJson(core.Map json_)
    : this(
        architecture: json_['architecture'] as core.String?,
        packageName: json_['packageName'] as core.String?,
        version: json_['version'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final architecture = this.architecture;
    final packageName = this.packageName;
    final version = this.version;
    return {
      'architecture': ?architecture,
      'packageName': ?packageName,
      'version': ?version,
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
/// - displayvideo:v2 : VideoAdInventoryControl
/// - displayvideo:v3 : VideoAdInventoryControl
/// - displayvideo:v4 : VideoAdInventoryControl
class $VideoAdInventoryControl {
  /// Whether ads can serve as in-feed format.
  ///
  /// Optional.
  core.bool? allowInFeed;

  /// Whether ads can serve as in-stream format.
  ///
  /// Optional.
  core.bool? allowInStream;

  /// Indicates whether ads can serve as non-skippable in-stream format.
  ///
  /// Optional.
  core.bool? allowNonSkippableInStream;

  /// Whether ads can serve as shorts format.
  ///
  /// Optional.
  core.bool? allowShorts;

  $VideoAdInventoryControl({
    this.allowInFeed,
    this.allowInStream,
    this.allowNonSkippableInStream,
    this.allowShorts,
  });

  $VideoAdInventoryControl.fromJson(core.Map json_)
    : this(
        allowInFeed: json_['allowInFeed'] as core.bool?,
        allowInStream: json_['allowInStream'] as core.bool?,
        allowNonSkippableInStream:
            json_['allowNonSkippableInStream'] as core.bool?,
        allowShorts: json_['allowShorts'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final allowInFeed = this.allowInFeed;
    final allowInStream = this.allowInStream;
    final allowNonSkippableInStream = this.allowNonSkippableInStream;
    final allowShorts = this.allowShorts;
    return {
      'allowInFeed': ?allowInFeed,
      'allowInStream': ?allowInStream,
      'allowNonSkippableInStream': ?allowNonSkippableInStream,
      'allowShorts': ?allowShorts,
    };
  }
}

/// Used by:
///
/// - displayvideo:v2 : VideoAdSequenceStep
/// - displayvideo:v3 : VideoAdSequenceStep
/// - displayvideo:v4 : VideoAdSequenceStep
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
        adGroupId: json_['adGroupId'] as core.String?,
        interactionType: json_['interactionType'] as core.String?,
        previousStepId: json_['previousStepId'] as core.String?,
        stepId: json_['stepId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final adGroupId = this.adGroupId;
    final interactionType = this.interactionType;
    final previousStepId = this.previousStepId;
    final stepId = this.stepId;
    return {
      'adGroupId': ?adGroupId,
      'interactionType': ?interactionType,
      'previousStepId': ?previousStepId,
      'stepId': ?stepId,
    };
  }
}

/// Used by:
///
/// - displayvideo:v2 : VideoPlayerSizeAssignedTargetingOptionDetails
/// - displayvideo:v3 : VideoPlayerSizeAssignedTargetingOptionDetails
/// - displayvideo:v4 : VideoPlayerSizeAssignedTargetingOptionDetails
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

  $VideoPlayerSizeAssignedTargetingOptionDetails({this.videoPlayerSize});

  $VideoPlayerSizeAssignedTargetingOptionDetails.fromJson(core.Map json_)
    : this(videoPlayerSize: json_['videoPlayerSize'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final videoPlayerSize = this.videoPlayerSize;
    return {'videoPlayerSize': ?videoPlayerSize};
  }
}

/// Used by:
///
/// - displayvideo:v2 : VideoPlayerSizeTargetingOptionDetails
/// - displayvideo:v3 : VideoPlayerSizeTargetingOptionDetails
/// - displayvideo:v4 : VideoPlayerSizeTargetingOptionDetails
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

  $VideoPlayerSizeTargetingOptionDetails({this.videoPlayerSize});

  $VideoPlayerSizeTargetingOptionDetails.fromJson(core.Map json_)
    : this(videoPlayerSize: json_['videoPlayerSize'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final videoPlayerSize = this.videoPlayerSize;
    return {'videoPlayerSize': ?videoPlayerSize};
  }
}

/// Used by:
///
/// - displayvideo:v2 : ViewabilityAssignedTargetingOptionDetails
/// - displayvideo:v3 : ViewabilityAssignedTargetingOptionDetails
/// - displayvideo:v4 : ViewabilityAssignedTargetingOptionDetails
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

  $ViewabilityAssignedTargetingOptionDetails({this.viewability});

  $ViewabilityAssignedTargetingOptionDetails.fromJson(core.Map json_)
    : this(viewability: json_['viewability'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final viewability = this.viewability;
    return {'viewability': ?viewability};
  }
}

/// Used by:
///
/// - displayvideo:v2 : ViewabilityTargetingOptionDetails
/// - displayvideo:v3 : ViewabilityTargetingOptionDetails
/// - displayvideo:v4 : ViewabilityTargetingOptionDetails
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

  $ViewabilityTargetingOptionDetails({this.viewability});

  $ViewabilityTargetingOptionDetails.fromJson(core.Map json_)
    : this(viewability: json_['viewability'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final viewability = this.viewability;
    return {'viewability': ?viewability};
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
  /// portion must be properly truncated (i.e. all the host bits must be zero)
  /// or the input is considered malformed. For example, "192.0.2.0/24" is
  /// accepted but "192.0.2.1/24" is not. If empty, all IP addresses are
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
/// - displayvideo:v3 : AdPolicyTopicEvidenceWebsiteList
/// - displayvideo:v4 : AdPolicyTopicEvidenceWebsiteList
/// - searchads360:v23 : GoogleAdsSearchads360V23Common_PolicyTopicEvidence_WebsiteList
class $WebsiteList {
  /// Websites that caused the policy finding.
  core.List<core.String>? websites;

  $WebsiteList({this.websites});

  $WebsiteList.fromJson(core.Map json_)
    : this(
        websites: (json_['websites'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final websites = this.websites;
    return {'websites': ?websites};
  }
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
        caption: json_['caption'] as core.String?,
        description: json_['description'] as core.String?,
        hotFixId: json_['hotFixId'] as core.String?,
        installTime: json_['installTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final caption = this.caption;
    final description = this.description;
    final hotFixId = this.hotFixId;
    final installTime = this.installTime;
    return {
      'caption': ?caption,
      'description': ?description,
      'hotFixId': ?hotFixId,
      'installTime': ?installTime,
    };
  }
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

  $WindowsUpdateCategory({this.id, this.name});

  $WindowsUpdateCategory.fromJson(core.Map json_)
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
/// - gkehub:v1 : WorkloadIdentityIdentityProviderStateDetail
/// - gkehub:v2 : WorkloadIdentityIdentityProviderStateDetail
class $WorkloadIdentityIdentityProviderStateDetail {
  /// The state of the Identity Provider.
  /// Possible string values are:
  /// - "IDENTITY_PROVIDER_STATE_UNSPECIFIED" : Unknown state.
  /// - "IDENTITY_PROVIDER_STATE_OK" : The Identity Provider was created/updated
  /// successfully.
  /// - "IDENTITY_PROVIDER_STATE_ERROR" : The Identity Provider was not
  /// created/updated successfully. The error message is in the description
  /// field.
  core.String? code;

  /// A human-readable description of the current state or returned error.
  core.String? description;

  $WorkloadIdentityIdentityProviderStateDetail({this.code, this.description});

  $WorkloadIdentityIdentityProviderStateDetail.fromJson(core.Map json_)
    : this(
        code: json_['code'] as core.String?,
        description: json_['description'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final code = this.code;
    final description = this.description;
    return {'code': ?code, 'description': ?description};
  }
}

/// Used by:
///
/// - displayvideo:v2 : YoutubeAndPartnersBiddingStrategy
/// - displayvideo:v3 : YoutubeAndPartnersBiddingStrategy
/// - displayvideo:v4 : YoutubeAndPartnersBiddingStrategy
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
            json_['adGroupEffectiveTargetCpaSource'] as core.String?,
        adGroupEffectiveTargetCpaValue:
            json_['adGroupEffectiveTargetCpaValue'] as core.String?,
        type: json_['type'] as core.String?,
        value: json_['value'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final adGroupEffectiveTargetCpaSource =
        this.adGroupEffectiveTargetCpaSource;
    final adGroupEffectiveTargetCpaValue = this.adGroupEffectiveTargetCpaValue;
    final type = this.type;
    final value = this.value;
    return {
      'adGroupEffectiveTargetCpaSource': ?adGroupEffectiveTargetCpaSource,
      'adGroupEffectiveTargetCpaValue': ?adGroupEffectiveTargetCpaValue,
      'type': ?type,
      'value': ?value,
    };
  }
}

/// Used by:
///
/// - displayvideo:v3 : YoutubeAndPartnersInventorySourceConfig
/// - displayvideo:v4 : YoutubeAndPartnersInventorySourceConfig
class $YoutubeAndPartnersInventorySourceConfig {
  /// Whether to target inventory in video apps available with Google TV.
  ///
  /// Optional.
  core.bool? includeGoogleTv;

  /// Whether to target inventory on YouTube.
  ///
  /// This includes both search, channels and videos.
  ///
  /// Optional.
  core.bool? includeYoutube;

  /// Whether to target inventory on a collection of partner sites and apps that
  /// follow the same brand safety standards as YouTube.
  core.bool? includeYoutubeVideoPartners;

  $YoutubeAndPartnersInventorySourceConfig({
    this.includeGoogleTv,
    this.includeYoutube,
    this.includeYoutubeVideoPartners,
  });

  $YoutubeAndPartnersInventorySourceConfig.fromJson(core.Map json_)
    : this(
        includeGoogleTv: json_['includeGoogleTv'] as core.bool?,
        includeYoutube: json_['includeYoutube'] as core.bool?,
        includeYoutubeVideoPartners:
            json_['includeYoutubeVideoPartners'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final includeGoogleTv = this.includeGoogleTv;
    final includeYoutube = this.includeYoutube;
    final includeYoutubeVideoPartners = this.includeYoutubeVideoPartners;
    return {
      'includeGoogleTv': ?includeGoogleTv,
      'includeYoutube': ?includeYoutube,
      'includeYoutubeVideoPartners': ?includeYoutubeVideoPartners,
    };
  }
}

/// Used by:
///
/// - displayvideo:v2 : YoutubeChannelAssignedTargetingOptionDetails
/// - displayvideo:v3 : YoutubeChannelAssignedTargetingOptionDetails
/// - displayvideo:v4 : YoutubeChannelAssignedTargetingOptionDetails
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
        channelId: json_['channelId'] as core.String?,
        negative: json_['negative'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final channelId = this.channelId;
    final negative = this.negative;
    return {'channelId': ?channelId, 'negative': ?negative};
  }
}

/// Used by:
///
/// - displayvideo:v2 : YoutubeChannelPackAssignedTargetingOptionDetails
/// - displayvideo:v3 : YoutubeChannelPackAssignedTargetingOptionDetails
/// - displayvideo:v4 : YoutubeChannelPackAssignedTargetingOptionDetails
class $YoutubeChannelPackAssignedTargetingOptionDetails {
  /// The ID of the YouTube channel pack.
  ///
  /// Required.
  core.String? channelPackId;

  /// Indicates if this option is being negatively targeted.
  ///
  /// Optional.
  core.bool? negative;

  $YoutubeChannelPackAssignedTargetingOptionDetails({
    this.channelPackId,
    this.negative,
  });

  $YoutubeChannelPackAssignedTargetingOptionDetails.fromJson(core.Map json_)
    : this(
        channelPackId: json_['channelPackId'] as core.String?,
        negative: json_['negative'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final channelPackId = this.channelPackId;
    final negative = this.negative;
    return {'channelPackId': ?channelPackId, 'negative': ?negative};
  }
}

/// Used by:
///
/// - displayvideo:v2 : YoutubeVideoAssignedTargetingOptionDetails
/// - displayvideo:v3 : YoutubeVideoAssignedTargetingOptionDetails
/// - displayvideo:v4 : YoutubeVideoAssignedTargetingOptionDetails
class $YoutubeVideoAssignedTargetingOptionDetails {
  /// Indicates if this option is being negatively targeted.
  core.bool? negative;

  /// YouTube video id as it appears on the YouTube watch page.
  core.String? videoId;

  $YoutubeVideoAssignedTargetingOptionDetails({this.negative, this.videoId});

  $YoutubeVideoAssignedTargetingOptionDetails.fromJson(core.Map json_)
    : this(
        negative: json_['negative'] as core.bool?,
        videoId: json_['videoId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final negative = this.negative;
    final videoId = this.videoId;
    return {'negative': ?negative, 'videoId': ?videoId};
  }
}

/// Used by:
///
/// - displayvideo:v2 : YoutubeVideoDetails
/// - displayvideo:v3 : YoutubeVideoDetails
/// - displayvideo:v4 : YoutubeVideoDetails
class $YoutubeVideoDetails {
  /// The YouTube video ID which can be searched on YouTube webpage.
  ///
  /// Output only.
  core.String? id;

  /// The reason why the video data is not available.
  /// Possible string values are:
  /// - "VIDEO_UNAVAILABLE_REASON_UNSPECIFIED" : Unknown or unspecified.
  /// - "VIDEO_UNAVAILABLE_REASON_PRIVATE" : The video is private.
  /// - "VIDEO_UNAVAILABLE_REASON_DELETED" : The video is deleted.
  core.String? unavailableReason;

  /// The YouTube video asset id.
  ///
  /// This is the adAssetId of an AdAsset resource.
  ///
  /// Required.
  core.String? videoAssetId;

  $YoutubeVideoDetails({this.id, this.unavailableReason, this.videoAssetId});

  $YoutubeVideoDetails.fromJson(core.Map json_)
    : this(
        id: json_['id'] as core.String?,
        unavailableReason: json_['unavailableReason'] as core.String?,
        videoAssetId: json_['videoAssetId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final id = this.id;
    final unavailableReason = this.unavailableReason;
    final videoAssetId = this.videoAssetId;
    return {
      'id': ?id,
      'unavailableReason': ?unavailableReason,
      'videoAssetId': ?videoAssetId,
    };
  }
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

  $ZypperPatch({this.category, this.patchName, this.severity, this.summary});

  $ZypperPatch.fromJson(core.Map json_)
    : this(
        category: json_['category'] as core.String?,
        patchName: json_['patchName'] as core.String?,
        severity: json_['severity'] as core.String?,
        summary: json_['summary'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final category = this.category;
    final patchName = this.patchName;
    final severity = this.severity;
    final summary = this.summary;
    return {
      'category': ?category,
      'patchName': ?patchName,
      'severity': ?severity,
      'summary': ?summary,
    };
  }
}
