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

/// Chrome Verified Access API - v2
///
/// API for Verified Access chrome extension to provide credential verification
/// for chrome devices connecting to an enterprise network
///
/// For more information, see
/// <https://developers.google.com/chrome/verified-access>
///
/// Create an instance of [VerifiedaccessApi] to access these resources:
///
/// - [ChallengeResource]
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

/// API for Verified Access chrome extension to provide credential verification
/// for chrome devices connecting to an enterprise network
class VerifiedaccessApi {
  /// Verify your enterprise credentials
  static const verifiedaccessScope =
      'https://www.googleapis.com/auth/verifiedaccess';

  final commons.ApiRequester _requester;

  ChallengeResource get challenge => ChallengeResource(_requester);

  VerifiedaccessApi(http.Client client,
      {core.String rootUrl = 'https://verifiedaccess.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class ChallengeResource {
  final commons.ApiRequester _requester;

  ChallengeResource(commons.ApiRequester client) : _requester = client;

  /// Generates a new challenge.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Challenge].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Challenge> generate(
    Empty request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v2/challenge:generate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Challenge.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Verifies the challenge response.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [VerifyChallengeResponseResult].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<VerifyChallengeResponseResult> verify(
    VerifyChallengeResponseRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v2/challenge:verify';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return VerifyChallengeResponseResult.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

/// Antivirus information on a device.
class Antivirus {
  /// The state of the antivirus on the device.
  ///
  /// Introduced in Chrome M136.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Unspecified.
  /// - "MISSING" : No antivirus was detected on the device.
  /// - "DISABLED" : At least one antivirus was installed on the device but none
  /// was enabled.
  /// - "ENABLED" : At least one antivirus was enabled on the device.
  core.String? state;

  Antivirus({
    this.state,
  });

  Antivirus.fromJson(core.Map json_)
      : this(
          state: json_['state'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (state != null) 'state': state!,
      };
}

/// Result message for VerifiedAccess.GenerateChallenge.
class Challenge {
  /// Generated challenge, the bytes representation of SignedData.
  core.String? challenge;
  core.List<core.int> get challengeAsBytes => convert.base64.decode(challenge!);

  set challengeAsBytes(core.List<core.int> bytes_) {
    challenge =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  Challenge({
    this.challenge,
  });

  Challenge.fromJson(core.Map json_)
      : this(
          challenge: json_['challenge'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (challenge != null) 'challenge': challenge!,
      };
}

/// Properties of the CrowdStrike agent installed on a device.
class CrowdStrikeAgent {
  /// The Agent ID of the Crowdstrike agent.
  ///
  /// Output only.
  core.String? agentId;

  /// The Customer ID to which the agent belongs to.
  ///
  /// Output only.
  core.String? customerId;

  CrowdStrikeAgent({
    this.agentId,
    this.customerId,
  });

  CrowdStrikeAgent.fromJson(core.Map json_)
      : this(
          agentId: json_['agentId'] as core.String?,
          customerId: json_['customerId'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (agentId != null) 'agentId': agentId!,
        if (customerId != null) 'customerId': customerId!,
      };
}

/// The device signals as reported by Chrome.
///
/// Unless otherwise specified, signals are available on all platforms.
class DeviceSignals {
  /// Value of the AllowScreenLock policy on the device.
  ///
  /// See https://chromeenterprise.google/policies/?policy=AllowScreenLock for
  /// more details. Available on ChromeOS only.
  ///
  /// Output only.
  core.bool? allowScreenLock;

  /// Information about Antivirus software on the device.
  ///
  /// Available on Windows only.
  ///
  /// Output only.
  Antivirus? antivirus;

  /// Current version of the Chrome browser which generated this set of signals.
  ///
  /// Example value: "107.0.5286.0".
  ///
  /// Output only.
  core.String? browserVersion;

  /// Whether Chrome's built-in DNS client is used.
  ///
  /// The OS DNS client is otherwise used. This value may be controlled by an
  /// enterprise policy:
  /// https://chromeenterprise.google/policies/#BuiltInDnsClientEnabled.
  ///
  /// Output only.
  core.bool? builtInDnsClientEnabled;

  /// Whether access to the Chrome Remote Desktop application is blocked via a
  /// policy.
  ///
  /// Output only.
  core.bool? chromeRemoteDesktopAppBlocked;

  /// Crowdstrike agent properties installed on the device, if any.
  ///
  /// Available on Windows and MacOS only.
  ///
  /// Output only.
  CrowdStrikeAgent? crowdStrikeAgent;

  /// Affiliation IDs of the organizations that are affiliated with the
  /// organization that is currently managing the device.
  ///
  /// When the sets of device and profile affiliation IDs overlap, it means that
  /// the organizations managing the device and user are affiliated. To learn
  /// more about user affiliation, visit
  /// https://support.google.com/chrome/a/answer/12801245?ref_topic=9027936.
  ///
  /// Output only.
  core.List<core.String>? deviceAffiliationIds;

  /// Enrollment domain of the customer which is currently managing the device.
  ///
  /// Output only.
  core.String? deviceEnrollmentDomain;

  /// The name of the device's manufacturer.
  ///
  /// Output only.
  core.String? deviceManufacturer;

  /// The name of the device's model.
  ///
  /// Output only.
  core.String? deviceModel;

  /// The encryption state of the disk.
  ///
  /// On ChromeOS, the main disk is always ENCRYPTED.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "DISK_ENCRYPTION_UNSPECIFIED" : Unspecified.
  /// - "DISK_ENCRYPTION_UNKNOWN" : Chrome could not evaluate the encryption
  /// state.
  /// - "DISK_ENCRYPTION_DISABLED" : The main disk is not encrypted.
  /// - "DISK_ENCRYPTION_ENCRYPTED" : The main disk is encrypted.
  core.String? diskEncryption;

  /// The display name of the device, as defined by the user.
  ///
  /// Output only.
  core.String? displayName;

  /// Hostname of the device.
  core.String? hostname;

  /// International Mobile Equipment Identity (IMEI) of the device.
  ///
  /// Available on ChromeOS only.
  ///
  /// Output only.
  core.List<core.String>? imei;

  /// MAC addresses of the device.
  ///
  /// Output only.
  core.List<core.String>? macAddresses;

  /// Mobile Equipment Identifier (MEID) of the device.
  ///
  /// Available on ChromeOS only.
  ///
  /// Output only.
  core.List<core.String>? meid;

  /// The type of the Operating System currently running on the device.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "OPERATING_SYSTEM_UNSPECIFIED" : UNSPECIFIED.
  /// - "CHROME_OS" : ChromeOS.
  /// - "CHROMIUM_OS" : ChromiumOS.
  /// - "WINDOWS" : Windows.
  /// - "MAC_OS_X" : Mac Os X.
  /// - "LINUX" : Linux
  core.String? operatingSystem;

  /// The state of the OS level firewall.
  ///
  /// On ChromeOS, the value will always be ENABLED on regular devices and
  /// UNKNOWN on devices in developer mode. Support for MacOS 15 (Sequoia) and
  /// later has been introduced in Chrome M131.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "OS_FIREWALL_UNSPECIFIED" : Unspecified.
  /// - "OS_FIREWALL_UNKNOWN" : Chrome could not evaluate the OS firewall state.
  /// - "OS_FIREWALL_DISABLED" : The OS firewall is disabled.
  /// - "OS_FIREWALL_ENABLED" : The OS firewall is enabled.
  core.String? osFirewall;

  /// The current version of the Operating System.
  ///
  /// On Windows and linux, the value will also include the security patch
  /// information.
  ///
  /// Output only.
  core.String? osVersion;

  /// Whether the Password Protection Warning feature is enabled or not.
  ///
  /// Password protection alerts users when they reuse their protected password
  /// on potentially suspicious sites. This setting is controlled by an
  /// enterprise policy:
  /// https://chromeenterprise.google/policies/#PasswordProtectionWarningTrigger.
  /// Note that the policy unset does not have the same effects as having the
  /// policy explicitly set to `PASSWORD_PROTECTION_OFF`.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "PASSWORD_PROTECTION_WARNING_TRIGGER_UNSPECIFIED" : Unspecified.
  /// - "POLICY_UNSET" : The policy is not set.
  /// - "PASSWORD_PROTECTION_OFF" : No password protection warning will be
  /// shown.
  /// - "PASSWORD_REUSE" : Password protection warning is shown if a protected
  /// password is re-used.
  /// - "PHISHING_REUSE" : Password protection warning is shown if a protected
  /// password is re-used on a known phishing website.
  core.String? passwordProtectionWarningTrigger;

  /// Affiliation IDs of the organizations that are affiliated with the
  /// organization that is currently managing the Chrome Profile’s user or
  /// ChromeOS user.
  ///
  /// Output only.
  core.List<core.String>? profileAffiliationIds;

  /// Enrollment domain of the customer which is currently managing the profile.
  ///
  /// Output only.
  core.String? profileEnrollmentDomain;

  /// Whether Enterprise-grade (i.e. custom) unsafe URL scanning is enabled or
  /// not.
  ///
  /// This setting may be controlled by an enterprise policy:
  /// https://chromeenterprise.google/policies/#EnterpriseRealTimeUrlCheckMode
  ///
  /// Output only.
  /// Possible string values are:
  /// - "REALTIME_URL_CHECK_MODE_UNSPECIFIED" : Unspecified.
  /// - "REALTIME_URL_CHECK_MODE_DISABLED" : Disabled. Consumer Safe Browsing
  /// checks are applied.
  /// - "REALTIME_URL_CHECK_MODE_ENABLED_MAIN_FRAME" : Realtime check for main
  /// frame URLs is enabled.
  core.String? realtimeUrlCheckMode;

  /// Safe Browsing Protection Level.
  ///
  /// That setting may be controlled by an enterprise policy:
  /// https://chromeenterprise.google/policies/#SafeBrowsingProtectionLevel.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "SAFE_BROWSING_PROTECTION_LEVEL_UNSPECIFIED" : Unspecified.
  /// - "INACTIVE" : Safe Browsing is disabled.
  /// - "STANDARD" : Safe Browsing is active in the standard mode.
  /// - "ENHANCED" : Safe Browsing is active in the enhanced mode.
  core.String? safeBrowsingProtectionLevel;

  /// The state of the Screen Lock password protection.
  ///
  /// On ChromeOS, this value will always be ENABLED as there is not way to
  /// disable requiring a password or pin when unlocking the device.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "SCREEN_LOCK_SECURED_UNSPECIFIED" : Unspecified.
  /// - "SCREEN_LOCK_SECURED_UNKNOWN" : Chrome could not evaluate the state of
  /// the Screen Lock mechanism.
  /// - "SCREEN_LOCK_SECURED_DISABLED" : The Screen Lock is not
  /// password-protected.
  /// - "SCREEN_LOCK_SECURED_ENABLED" : The Screen Lock is password-protected.
  core.String? screenLockSecured;

  /// Whether the device's startup software has its Secure Boot feature enabled.
  ///
  /// Available on Windows only.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "SECURE_BOOT_MODE_UNSPECIFIED" : Unspecified.
  /// - "SECURE_BOOT_MODE_UNKNOWN" : Chrome was unable to determine the Secure
  /// Boot mode.
  /// - "SECURE_BOOT_MODE_DISABLED" : Secure Boot was disabled on the startup
  /// software.
  /// - "SECURE_BOOT_MODE_ENABLED" : Secure Boot was enabled on the startup
  /// software.
  core.String? secureBootMode;

  /// The serial number of the device.
  ///
  /// On Windows, this represents the BIOS's serial number. Not available on
  /// most Linux distributions.
  ///
  /// Output only.
  core.String? serialNumber;

  /// Whether the Site Isolation (a.k.a Site Per Process) setting is enabled.
  ///
  /// That setting may be controlled by an enterprise policy:
  /// https://chromeenterprise.google/policies/#SitePerProcess
  ///
  /// Output only.
  core.bool? siteIsolationEnabled;

  /// List of the addesses of all OS level DNS servers configured in the
  /// device's network settings.
  core.List<core.String>? systemDnsServers;

  /// The corresponding policy is now deprecated.
  ///
  /// Whether Chrome is blocking third-party software injection or not. This
  /// setting may be controlled by an enterprise policy:
  /// https://chromeenterprise.google/policies/?policy=ThirdPartyBlockingEnabled.
  /// Available on Windows only.
  ///
  /// Output only. Deprecated.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.bool? thirdPartyBlockingEnabled;

  /// The trigger which generated this set of signals.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "TRIGGER_UNSPECIFIED" : Unspecified.
  /// - "TRIGGER_BROWSER_NAVIGATION" : When navigating to an URL inside a
  /// browser.
  /// - "TRIGGER_LOGIN_SCREEN" : When signing into an account on the ChromeOS
  /// login screen.
  core.String? trigger;

  /// Windows domain that the current machine has joined.
  ///
  /// Available on Windows only.
  ///
  /// Output only.
  core.String? windowsMachineDomain;

  /// Windows domain for the current OS user.
  ///
  /// Available on Windows only.
  ///
  /// Output only.
  core.String? windowsUserDomain;

  DeviceSignals({
    this.allowScreenLock,
    this.antivirus,
    this.browserVersion,
    this.builtInDnsClientEnabled,
    this.chromeRemoteDesktopAppBlocked,
    this.crowdStrikeAgent,
    this.deviceAffiliationIds,
    this.deviceEnrollmentDomain,
    this.deviceManufacturer,
    this.deviceModel,
    this.diskEncryption,
    this.displayName,
    this.hostname,
    this.imei,
    this.macAddresses,
    this.meid,
    this.operatingSystem,
    this.osFirewall,
    this.osVersion,
    this.passwordProtectionWarningTrigger,
    this.profileAffiliationIds,
    this.profileEnrollmentDomain,
    this.realtimeUrlCheckMode,
    this.safeBrowsingProtectionLevel,
    this.screenLockSecured,
    this.secureBootMode,
    this.serialNumber,
    this.siteIsolationEnabled,
    this.systemDnsServers,
    this.thirdPartyBlockingEnabled,
    this.trigger,
    this.windowsMachineDomain,
    this.windowsUserDomain,
  });

  DeviceSignals.fromJson(core.Map json_)
      : this(
          allowScreenLock: json_['allowScreenLock'] as core.bool?,
          antivirus: json_.containsKey('antivirus')
              ? Antivirus.fromJson(
                  json_['antivirus'] as core.Map<core.String, core.dynamic>)
              : null,
          browserVersion: json_['browserVersion'] as core.String?,
          builtInDnsClientEnabled:
              json_['builtInDnsClientEnabled'] as core.bool?,
          chromeRemoteDesktopAppBlocked:
              json_['chromeRemoteDesktopAppBlocked'] as core.bool?,
          crowdStrikeAgent: json_.containsKey('crowdStrikeAgent')
              ? CrowdStrikeAgent.fromJson(json_['crowdStrikeAgent']
                  as core.Map<core.String, core.dynamic>)
              : null,
          deviceAffiliationIds: (json_['deviceAffiliationIds'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          deviceEnrollmentDomain:
              json_['deviceEnrollmentDomain'] as core.String?,
          deviceManufacturer: json_['deviceManufacturer'] as core.String?,
          deviceModel: json_['deviceModel'] as core.String?,
          diskEncryption: json_['diskEncryption'] as core.String?,
          displayName: json_['displayName'] as core.String?,
          hostname: json_['hostname'] as core.String?,
          imei: (json_['imei'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          macAddresses: (json_['macAddresses'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          meid: (json_['meid'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          operatingSystem: json_['operatingSystem'] as core.String?,
          osFirewall: json_['osFirewall'] as core.String?,
          osVersion: json_['osVersion'] as core.String?,
          passwordProtectionWarningTrigger:
              json_['passwordProtectionWarningTrigger'] as core.String?,
          profileAffiliationIds: (json_['profileAffiliationIds'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          profileEnrollmentDomain:
              json_['profileEnrollmentDomain'] as core.String?,
          realtimeUrlCheckMode: json_['realtimeUrlCheckMode'] as core.String?,
          safeBrowsingProtectionLevel:
              json_['safeBrowsingProtectionLevel'] as core.String?,
          screenLockSecured: json_['screenLockSecured'] as core.String?,
          secureBootMode: json_['secureBootMode'] as core.String?,
          serialNumber: json_['serialNumber'] as core.String?,
          siteIsolationEnabled: json_['siteIsolationEnabled'] as core.bool?,
          systemDnsServers: (json_['systemDnsServers'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          thirdPartyBlockingEnabled:
              json_['thirdPartyBlockingEnabled'] as core.bool?,
          trigger: json_['trigger'] as core.String?,
          windowsMachineDomain: json_['windowsMachineDomain'] as core.String?,
          windowsUserDomain: json_['windowsUserDomain'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowScreenLock != null) 'allowScreenLock': allowScreenLock!,
        if (antivirus != null) 'antivirus': antivirus!,
        if (browserVersion != null) 'browserVersion': browserVersion!,
        if (builtInDnsClientEnabled != null)
          'builtInDnsClientEnabled': builtInDnsClientEnabled!,
        if (chromeRemoteDesktopAppBlocked != null)
          'chromeRemoteDesktopAppBlocked': chromeRemoteDesktopAppBlocked!,
        if (crowdStrikeAgent != null) 'crowdStrikeAgent': crowdStrikeAgent!,
        if (deviceAffiliationIds != null)
          'deviceAffiliationIds': deviceAffiliationIds!,
        if (deviceEnrollmentDomain != null)
          'deviceEnrollmentDomain': deviceEnrollmentDomain!,
        if (deviceManufacturer != null)
          'deviceManufacturer': deviceManufacturer!,
        if (deviceModel != null) 'deviceModel': deviceModel!,
        if (diskEncryption != null) 'diskEncryption': diskEncryption!,
        if (displayName != null) 'displayName': displayName!,
        if (hostname != null) 'hostname': hostname!,
        if (imei != null) 'imei': imei!,
        if (macAddresses != null) 'macAddresses': macAddresses!,
        if (meid != null) 'meid': meid!,
        if (operatingSystem != null) 'operatingSystem': operatingSystem!,
        if (osFirewall != null) 'osFirewall': osFirewall!,
        if (osVersion != null) 'osVersion': osVersion!,
        if (passwordProtectionWarningTrigger != null)
          'passwordProtectionWarningTrigger': passwordProtectionWarningTrigger!,
        if (profileAffiliationIds != null)
          'profileAffiliationIds': profileAffiliationIds!,
        if (profileEnrollmentDomain != null)
          'profileEnrollmentDomain': profileEnrollmentDomain!,
        if (realtimeUrlCheckMode != null)
          'realtimeUrlCheckMode': realtimeUrlCheckMode!,
        if (safeBrowsingProtectionLevel != null)
          'safeBrowsingProtectionLevel': safeBrowsingProtectionLevel!,
        if (screenLockSecured != null) 'screenLockSecured': screenLockSecured!,
        if (secureBootMode != null) 'secureBootMode': secureBootMode!,
        if (serialNumber != null) 'serialNumber': serialNumber!,
        if (siteIsolationEnabled != null)
          'siteIsolationEnabled': siteIsolationEnabled!,
        if (systemDnsServers != null) 'systemDnsServers': systemDnsServers!,
        if (thirdPartyBlockingEnabled != null)
          'thirdPartyBlockingEnabled': thirdPartyBlockingEnabled!,
        if (trigger != null) 'trigger': trigger!,
        if (windowsMachineDomain != null)
          'windowsMachineDomain': windowsMachineDomain!,
        if (windowsUserDomain != null) 'windowsUserDomain': windowsUserDomain!,
      };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// Signed ChallengeResponse.
class VerifyChallengeResponseRequest {
  /// The generated response to the challenge, the bytes representation of
  /// SignedData.
  ///
  /// Required.
  core.String? challengeResponse;
  core.List<core.int> get challengeResponseAsBytes =>
      convert.base64.decode(challengeResponse!);

  set challengeResponseAsBytes(core.List<core.int> bytes_) {
    challengeResponse =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Service can optionally provide identity information about the device or
  /// user associated with the key.
  ///
  /// For an EMK, this value is the enrolled domain. For an EUK, this value is
  /// the user's email address. If present, this value will be checked against
  /// contents of the response, and verification will fail if there is no match.
  ///
  /// Optional.
  core.String? expectedIdentity;

  VerifyChallengeResponseRequest({
    this.challengeResponse,
    this.expectedIdentity,
  });

  VerifyChallengeResponseRequest.fromJson(core.Map json_)
      : this(
          challengeResponse: json_['challengeResponse'] as core.String?,
          expectedIdentity: json_['expectedIdentity'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (challengeResponse != null) 'challengeResponse': challengeResponse!,
        if (expectedIdentity != null) 'expectedIdentity': expectedIdentity!,
      };
}

/// Result message for VerifiedAccess.VerifyChallengeResponse.
///
/// The response returned when successful for Managed profiles on Unmanaged
/// browsers will NOT have devicePermanentId, keyTrustLevel, virtualDeviceId and
/// customerId fields. Managed profiles will INSTEAD have the profileCustomerId,
/// virtualProfileId, profilePermanentId and profileKeyTrustLevel fields.
class VerifyChallengeResponseResult {
  /// Attested device ID (ADID).
  ///
  /// Output only.
  core.String? attestedDeviceId;

  /// Unique customer id that this device belongs to, as defined by the Google
  /// Admin SDK at
  /// https://developers.google.com/admin-sdk/directory/v1/guides/manage-customers
  ///
  /// Output only.
  core.String? customerId;

  /// Device enrollment id for ChromeOS devices.
  ///
  /// Output only.
  core.String? deviceEnrollmentId;

  /// Device permanent id is returned in this field (for the machine response
  /// only).
  ///
  /// Output only.
  core.String? devicePermanentId;

  /// Device signal in json string representation.
  ///
  /// Prefer using `device_signals` instead.
  ///
  /// Output only. Deprecated.
  core.String? deviceSignal;

  /// Device signals.
  ///
  /// Output only.
  DeviceSignals? deviceSignals;

  /// Device attested key trust level.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "KEY_TRUST_LEVEL_UNSPECIFIED" : UNSPECIFIED.
  /// - "CHROME_OS_VERIFIED_MODE" : ChromeOS device in verified mode.
  /// - "CHROME_OS_DEVELOPER_MODE" : ChromeOS device in developer mode.
  /// - "CHROME_BROWSER_HW_KEY" : Chrome Browser with the key stored in the
  /// device hardware.
  /// - "CHROME_BROWSER_OS_KEY" : Chrome Browser with the key stored at OS
  /// level.
  /// - "CHROME_BROWSER_NO_KEY" : Chrome Browser without an attestation key.
  core.String? keyTrustLevel;

  /// Unique customer id that this profile belongs to, as defined by the Google
  /// Admin SDK at
  /// https://developers.google.com/admin-sdk/directory/v1/guides/manage-customers
  ///
  /// Output only.
  core.String? profileCustomerId;

  /// Profile attested key trust level.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "KEY_TRUST_LEVEL_UNSPECIFIED" : UNSPECIFIED.
  /// - "CHROME_OS_VERIFIED_MODE" : ChromeOS device in verified mode.
  /// - "CHROME_OS_DEVELOPER_MODE" : ChromeOS device in developer mode.
  /// - "CHROME_BROWSER_HW_KEY" : Chrome Browser with the key stored in the
  /// device hardware.
  /// - "CHROME_BROWSER_OS_KEY" : Chrome Browser with the key stored at OS
  /// level.
  /// - "CHROME_BROWSER_NO_KEY" : Chrome Browser without an attestation key.
  core.String? profileKeyTrustLevel;

  /// The unique server-side ID of a profile on the device.
  ///
  /// Output only.
  core.String? profilePermanentId;

  /// Certificate Signing Request (in the SPKAC format, base64 encoded) is
  /// returned in this field.
  ///
  /// This field will be set only if device has included CSR in its challenge
  /// response. (the option to include CSR is now available for both user and
  /// machine responses)
  ///
  /// Output only.
  core.String? signedPublicKeyAndChallenge;

  /// Virtual device id of the device.
  ///
  /// The definition of virtual device id is platform-specific.
  ///
  /// Output only.
  core.String? virtualDeviceId;

  /// The client-provided ID of a profile on the device.
  ///
  /// Output only.
  core.String? virtualProfileId;

  VerifyChallengeResponseResult({
    this.attestedDeviceId,
    this.customerId,
    this.deviceEnrollmentId,
    this.devicePermanentId,
    this.deviceSignal,
    this.deviceSignals,
    this.keyTrustLevel,
    this.profileCustomerId,
    this.profileKeyTrustLevel,
    this.profilePermanentId,
    this.signedPublicKeyAndChallenge,
    this.virtualDeviceId,
    this.virtualProfileId,
  });

  VerifyChallengeResponseResult.fromJson(core.Map json_)
      : this(
          attestedDeviceId: json_['attestedDeviceId'] as core.String?,
          customerId: json_['customerId'] as core.String?,
          deviceEnrollmentId: json_['deviceEnrollmentId'] as core.String?,
          devicePermanentId: json_['devicePermanentId'] as core.String?,
          deviceSignal: json_['deviceSignal'] as core.String?,
          deviceSignals: json_.containsKey('deviceSignals')
              ? DeviceSignals.fromJson(
                  json_['deviceSignals'] as core.Map<core.String, core.dynamic>)
              : null,
          keyTrustLevel: json_['keyTrustLevel'] as core.String?,
          profileCustomerId: json_['profileCustomerId'] as core.String?,
          profileKeyTrustLevel: json_['profileKeyTrustLevel'] as core.String?,
          profilePermanentId: json_['profilePermanentId'] as core.String?,
          signedPublicKeyAndChallenge:
              json_['signedPublicKeyAndChallenge'] as core.String?,
          virtualDeviceId: json_['virtualDeviceId'] as core.String?,
          virtualProfileId: json_['virtualProfileId'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (attestedDeviceId != null) 'attestedDeviceId': attestedDeviceId!,
        if (customerId != null) 'customerId': customerId!,
        if (deviceEnrollmentId != null)
          'deviceEnrollmentId': deviceEnrollmentId!,
        if (devicePermanentId != null) 'devicePermanentId': devicePermanentId!,
        if (deviceSignal != null) 'deviceSignal': deviceSignal!,
        if (deviceSignals != null) 'deviceSignals': deviceSignals!,
        if (keyTrustLevel != null) 'keyTrustLevel': keyTrustLevel!,
        if (profileCustomerId != null) 'profileCustomerId': profileCustomerId!,
        if (profileKeyTrustLevel != null)
          'profileKeyTrustLevel': profileKeyTrustLevel!,
        if (profilePermanentId != null)
          'profilePermanentId': profilePermanentId!,
        if (signedPublicKeyAndChallenge != null)
          'signedPublicKeyAndChallenge': signedPublicKeyAndChallenge!,
        if (virtualDeviceId != null) 'virtualDeviceId': virtualDeviceId!,
        if (virtualProfileId != null) 'virtualProfileId': virtualProfileId!,
      };
}
