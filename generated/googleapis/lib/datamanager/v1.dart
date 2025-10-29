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

/// Data Manager API - v1
///
/// A unified ingestion API for data partners, agencies and advertisers to
/// connect first-party data across Google advertising products.
///
/// For more information, see <https://developers.google.com/data-manager>
///
/// Create an instance of [DataManagerApi] to access these resources:
///
/// - [AudienceMembersResource]
/// - [EventsResource]
/// - [RequestStatusResource]
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

/// A unified ingestion API for data partners, agencies and advertisers to
/// connect first-party data across Google advertising products.
class DataManagerApi {
  /// See, edit, create, import, or delete your customer data in Google Ads,
  /// Google Marketing Platform (Campaign Manager 360, Search Ads 360, Display &
  /// Video 360), and Google Analytics
  static const datamanagerScope = 'https://www.googleapis.com/auth/datamanager';

  final commons.ApiRequester _requester;

  AudienceMembersResource get audienceMembers =>
      AudienceMembersResource(_requester);
  EventsResource get events => EventsResource(_requester);
  RequestStatusResource get requestStatus => RequestStatusResource(_requester);

  DataManagerApi(
    http.Client client, {
    core.String rootUrl = 'https://datamanager.googleapis.com/',
    core.String servicePath = '',
  }) : _requester = commons.ApiRequester(
         client,
         rootUrl,
         servicePath,
         requestHeaders,
       );
}

class AudienceMembersResource {
  final commons.ApiRequester _requester;

  AudienceMembersResource(commons.ApiRequester client) : _requester = client;

  /// Uploads a list of AudienceMember resources to the provided Destination.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [IngestAudienceMembersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<IngestAudienceMembersResponse> ingest(
    IngestAudienceMembersRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/audienceMembers:ingest';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return IngestAudienceMembersResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Removes a list of AudienceMember resources from the provided Destination.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RemoveAudienceMembersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RemoveAudienceMembersResponse> remove(
    RemoveAudienceMembersRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/audienceMembers:remove';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return RemoveAudienceMembersResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class EventsResource {
  final commons.ApiRequester _requester;

  EventsResource(commons.ApiRequester client) : _requester = client;

  /// Uploads a list of Event resources from the provided Destination.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [IngestEventsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<IngestEventsResponse> ingest(
    IngestEventsRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/events:ingest';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return IngestEventsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class RequestStatusResource {
  final commons.ApiRequester _requester;

  RequestStatusResource(commons.ApiRequester client) : _requester = client;

  /// Gets the status of a request given request id.
  ///
  /// Request parameters:
  ///
  /// [requestId] - Required. Required. The request ID of the Data Manager API
  /// request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RetrieveRequestStatusResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RetrieveRequestStatusResponse> retrieve({
    core.String? requestId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/requestStatus:retrieve';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return RetrieveRequestStatusResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

/// Identifiers and other information used to match the conversion event with
/// other online activity (such as ad clicks).
class AdIdentifiers {
  /// The click identifier for clicks associated with app events and originating
  /// from iOS devices starting with iOS14.
  ///
  /// Optional.
  core.String? gbraid;

  /// The Google click ID (gclid) associated with this event.
  ///
  /// Optional.
  core.String? gclid;

  /// Information gathered about the device being used (if any) at the time of
  /// landing onto the advertiser’s site after interacting with the ad.
  ///
  /// Optional.
  DeviceInfo? landingPageDeviceInfo;

  /// Session attributes for event attribution and modeling.
  ///
  /// Optional.
  core.String? sessionAttributes;

  /// The click identifier for clicks associated with web events and originating
  /// from iOS devices starting with iOS14.
  ///
  /// Optional.
  core.String? wbraid;

  AdIdentifiers({
    this.gbraid,
    this.gclid,
    this.landingPageDeviceInfo,
    this.sessionAttributes,
    this.wbraid,
  });

  AdIdentifiers.fromJson(core.Map json_)
    : this(
        gbraid: json_['gbraid'] as core.String?,
        gclid: json_['gclid'] as core.String?,
        landingPageDeviceInfo:
            json_.containsKey('landingPageDeviceInfo')
                ? DeviceInfo.fromJson(
                  json_['landingPageDeviceInfo']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        sessionAttributes: json_['sessionAttributes'] as core.String?,
        wbraid: json_['wbraid'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (gbraid != null) 'gbraid': gbraid!,
    if (gclid != null) 'gclid': gclid!,
    if (landingPageDeviceInfo != null)
      'landingPageDeviceInfo': landingPageDeviceInfo!,
    if (sessionAttributes != null) 'sessionAttributes': sessionAttributes!,
    if (wbraid != null) 'wbraid': wbraid!,
  };
}

/// Address information for the user.
class AddressInfo {
  /// Family (last) name of the user, all lowercase, with no punctuation, no
  /// leading or trailing whitespace, and hashed as SHA-256.
  ///
  /// Required.
  core.String? familyName;

  /// Given (first) name of the user, all lowercase, with no punctuation, no
  /// leading or trailing whitespace, and hashed as SHA-256.
  ///
  /// Required.
  core.String? givenName;

  /// The postal code of the user's address.
  ///
  /// Required.
  core.String? postalCode;

  /// The 2-letter region code in ISO-3166-1 alpha-2 of the user's address.
  ///
  /// Required.
  core.String? regionCode;

  AddressInfo({
    this.familyName,
    this.givenName,
    this.postalCode,
    this.regionCode,
  });

  AddressInfo.fromJson(core.Map json_)
    : this(
        familyName: json_['familyName'] as core.String?,
        givenName: json_['givenName'] as core.String?,
        postalCode: json_['postalCode'] as core.String?,
        regionCode: json_['regionCode'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (familyName != null) 'familyName': familyName!,
    if (givenName != null) 'givenName': givenName!,
    if (postalCode != null) 'postalCode': postalCode!,
    if (regionCode != null) 'regionCode': regionCode!,
  };
}

/// The audience member to be operated on.
class AudienceMember {
  /// The consent setting for the user.
  ///
  /// Optional.
  Consent? consent;

  /// Defines which Destination to send the audience member to.
  ///
  /// Optional.
  core.List<core.String>? destinationReferences;

  /// Data identifying the user's mobile devices.
  MobileData? mobileData;

  /// \[Publisher Advertiser Identity Reconciliation (PAIR)
  /// IDs\](//support.google.com/admanager/answer/15067908).
  PairData? pairData;

  /// User-provided data that identifies the user.
  UserData? userData;

  AudienceMember({
    this.consent,
    this.destinationReferences,
    this.mobileData,
    this.pairData,
    this.userData,
  });

  AudienceMember.fromJson(core.Map json_)
    : this(
        consent:
            json_.containsKey('consent')
                ? Consent.fromJson(
                  json_['consent'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        destinationReferences:
            (json_['destinationReferences'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        mobileData:
            json_.containsKey('mobileData')
                ? MobileData.fromJson(
                  json_['mobileData'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        pairData:
            json_.containsKey('pairData')
                ? PairData.fromJson(
                  json_['pairData'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        userData:
            json_.containsKey('userData')
                ? UserData.fromJson(
                  json_['userData'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (consent != null) 'consent': consent!,
    if (destinationReferences != null)
      'destinationReferences': destinationReferences!,
    if (mobileData != null) 'mobileData': mobileData!,
    if (pairData != null) 'pairData': pairData!,
    if (userData != null) 'userData': userData!,
  };
}

/// A data encryption key wrapped by an AWS KMS key.
class AwsWrappedKeyInfo {
  /// The base64 encoded encrypted data encryption key.
  ///
  /// Required.
  core.String? encryptedDek;

  /// The URI of the AWS KMS key used to decrypt the DEK.
  ///
  /// Should be in the format of
  /// `arn:{partition}:kms:{region}:{account_id}:key/{key_id}` or
  /// `aws-kms://arn:{partition}:kms:{region}:{account_id}:key/{key_id}`
  ///
  /// Required.
  core.String? kekUri;

  /// The type of algorithm used to encrypt the data.
  ///
  /// Required.
  /// Possible string values are:
  /// - "KEY_TYPE_UNSPECIFIED" : Unspecified key type. Should never be used.
  /// - "XCHACHA20_POLY1305" : Algorithm XChaCha20-Poly1305
  core.String? keyType;

  /// The Amazon Resource Name of the IAM Role to assume for KMS decryption
  /// access.
  ///
  /// Should be in the format of
  /// `arn:{partition}:iam::{account_id}:role/{role_name}`
  ///
  /// Required.
  core.String? roleArn;

  AwsWrappedKeyInfo({
    this.encryptedDek,
    this.kekUri,
    this.keyType,
    this.roleArn,
  });

  AwsWrappedKeyInfo.fromJson(core.Map json_)
    : this(
        encryptedDek: json_['encryptedDek'] as core.String?,
        kekUri: json_['kekUri'] as core.String?,
        keyType: json_['keyType'] as core.String?,
        roleArn: json_['roleArn'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (encryptedDek != null) 'encryptedDek': encryptedDek!,
    if (kekUri != null) 'kekUri': kekUri!,
    if (keyType != null) 'keyType': keyType!,
    if (roleArn != null) 'roleArn': roleArn!,
  };
}

/// The cart data associated with the event.
class CartData {
  /// The list of items associated with the event.
  ///
  /// Optional.
  core.List<Item>? items;

  /// The Merchant Center feed label associated with the feed of the items.
  ///
  /// Optional.
  core.String? merchantFeedLabel;

  /// The language code in ISO 639-1 associated with the Merchant Center feed of
  /// the items.where your items are uploaded.
  ///
  /// Optional.
  core.String? merchantFeedLanguageCode;

  /// The Merchant Center ID associated with the items.
  ///
  /// Optional.
  core.String? merchantId;

  /// The sum of all discounts associated with the transaction.
  ///
  /// Optional.
  core.double? transactionDiscount;

  CartData({
    this.items,
    this.merchantFeedLabel,
    this.merchantFeedLanguageCode,
    this.merchantId,
    this.transactionDiscount,
  });

  CartData.fromJson(core.Map json_)
    : this(
        items:
            (json_['items'] as core.List?)
                ?.map(
                  (value) => Item.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        merchantFeedLabel: json_['merchantFeedLabel'] as core.String?,
        merchantFeedLanguageCode:
            json_['merchantFeedLanguageCode'] as core.String?,
        merchantId: json_['merchantId'] as core.String?,
        transactionDiscount:
            (json_['transactionDiscount'] as core.num?)?.toDouble(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (items != null) 'items': items!,
    if (merchantFeedLabel != null) 'merchantFeedLabel': merchantFeedLabel!,
    if (merchantFeedLanguageCode != null)
      'merchantFeedLanguageCode': merchantFeedLanguageCode!,
    if (merchantId != null) 'merchantId': merchantId!,
    if (transactionDiscount != null)
      'transactionDiscount': transactionDiscount!,
  };
}

/// \[Digital Markets Act (DMA)\](//digital-markets-act.ec.europa.eu/index_en)
/// consent settings for the user.
class Consent {
  /// Represents if the user consents to ad personalization.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "CONSENT_STATUS_UNSPECIFIED" : Not specified.
  /// - "CONSENT_GRANTED" : Granted.
  /// - "CONSENT_DENIED" : Denied.
  core.String? adPersonalization;

  /// Represents if the user consents to ad user data.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "CONSENT_STATUS_UNSPECIFIED" : Not specified.
  /// - "CONSENT_GRANTED" : Granted.
  /// - "CONSENT_DENIED" : Denied.
  core.String? adUserData;

  Consent({this.adPersonalization, this.adUserData});

  Consent.fromJson(core.Map json_)
    : this(
        adPersonalization: json_['adPersonalization'] as core.String?,
        adUserData: json_['adUserData'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (adPersonalization != null) 'adPersonalization': adPersonalization!,
    if (adUserData != null) 'adUserData': adUserData!,
  };
}

/// Custom variable for ads conversions.
class CustomVariable {
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

  CustomVariable({this.destinationReferences, this.value, this.variable});

  CustomVariable.fromJson(core.Map json_)
    : this(
        destinationReferences:
            (json_['destinationReferences'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        value: json_['value'] as core.String?,
        variable: json_['variable'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (destinationReferences != null)
      'destinationReferences': destinationReferences!,
    if (value != null) 'value': value!,
    if (variable != null) 'variable': variable!,
  };
}

/// The Google product you're sending data to.
///
/// For example, a Google Ads account.
class Destination {
  /// An account that the calling user's `login_account` has access to, through
  /// an established account link.
  ///
  /// For example, a data partner's `login_account` might have access to a
  /// client's `linked_account`. The partner might use this field to send data
  /// from the `linked_account` to another `operating_account`.
  ///
  /// Optional.
  ProductAccount? linkedAccount;

  /// The account used to make this API call.
  ///
  /// To add or remove data from the `operating_account`, this `login_account`
  /// must have write access to the `operating_account`. For example, a manager
  /// account of the `operating_account`, or an account with an established link
  /// to the `operating_account`.
  ///
  /// Optional.
  ProductAccount? loginAccount;

  /// The account to send the data to or remove the data from.
  ///
  /// Required.
  ProductAccount? operatingAccount;

  /// The object within the product account to ingest into.
  ///
  /// For example, a Google Ads audience ID, a Display & Video 360 audience ID
  /// or a Google Ads conversion action ID.
  ///
  /// Required.
  core.String? productDestinationId;

  /// ID for this `Destination` resource, unique within the request.
  ///
  /// Use to reference this `Destination` in the IngestEventsRequest and
  /// IngestAudienceMembersRequest.
  ///
  /// Optional.
  core.String? reference;

  Destination({
    this.linkedAccount,
    this.loginAccount,
    this.operatingAccount,
    this.productDestinationId,
    this.reference,
  });

  Destination.fromJson(core.Map json_)
    : this(
        linkedAccount:
            json_.containsKey('linkedAccount')
                ? ProductAccount.fromJson(
                  json_['linkedAccount'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        loginAccount:
            json_.containsKey('loginAccount')
                ? ProductAccount.fromJson(
                  json_['loginAccount'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        operatingAccount:
            json_.containsKey('operatingAccount')
                ? ProductAccount.fromJson(
                  json_['operatingAccount']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        productDestinationId: json_['productDestinationId'] as core.String?,
        reference: json_['reference'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (linkedAccount != null) 'linkedAccount': linkedAccount!,
    if (loginAccount != null) 'loginAccount': loginAccount!,
    if (operatingAccount != null) 'operatingAccount': operatingAccount!,
    if (productDestinationId != null)
      'productDestinationId': productDestinationId!,
    if (reference != null) 'reference': reference!,
  };
}

/// Information about the device being used (if any) when the event happened.
class DeviceInfo {
  /// The IP address of the device for the given context.
  ///
  /// **Note:** Google Ads does not support IP address matching for end users in
  /// the European Economic Area (EEA), United Kingdom (UK), or Switzerland
  /// (CH). Add logic to conditionally exclude sharing IP addresses from users
  /// from these regions and ensure that you provide users with clear and
  /// comprehensive information about the data you collect on your sites, apps,
  /// and other properties and get consent where required by law or any
  /// applicable Google policies. See the
  /// [About offline conversion imports](https://support.google.com/google-ads/answer/2998031)
  /// page for more details.
  ///
  /// Optional.
  core.String? ipAddress;

  /// The user-agent string of the device for the given context.
  ///
  /// Optional.
  core.String? userAgent;

  DeviceInfo({this.ipAddress, this.userAgent});

  DeviceInfo.fromJson(core.Map json_)
    : this(
        ipAddress: json_['ipAddress'] as core.String?,
        userAgent: json_['userAgent'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (ipAddress != null) 'ipAddress': ipAddress!,
    if (userAgent != null) 'userAgent': userAgent!,
  };
}

/// Encryption information for the data being ingested.
class EncryptionInfo {
  /// Amazon Web Services wrapped key information.
  AwsWrappedKeyInfo? awsWrappedKeyInfo;

  /// Google Cloud Platform wrapped key information.
  GcpWrappedKeyInfo? gcpWrappedKeyInfo;

  EncryptionInfo({this.awsWrappedKeyInfo, this.gcpWrappedKeyInfo});

  EncryptionInfo.fromJson(core.Map json_)
    : this(
        awsWrappedKeyInfo:
            json_.containsKey('awsWrappedKeyInfo')
                ? AwsWrappedKeyInfo.fromJson(
                  json_['awsWrappedKeyInfo']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        gcpWrappedKeyInfo:
            json_.containsKey('gcpWrappedKeyInfo')
                ? GcpWrappedKeyInfo.fromJson(
                  json_['gcpWrappedKeyInfo']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (awsWrappedKeyInfo != null) 'awsWrappedKeyInfo': awsWrappedKeyInfo!,
    if (gcpWrappedKeyInfo != null) 'gcpWrappedKeyInfo': gcpWrappedKeyInfo!,
  };
}

/// The error count for a given error reason.
class ErrorCount {
  /// The error reason of the failed records.
  /// Possible string values are:
  /// - "PROCESSING_ERROR_REASON_UNSPECIFIED" : The processing error reason is
  /// unknown.
  /// - "PROCESSING_ERROR_REASON_INVALID_CUSTOM_VARIABLE" : The custom variable
  /// is invalid.
  /// - "PROCESSING_ERROR_REASON_CUSTOM_VARIABLE_NOT_ENABLED" : The status of
  /// the custom variable is not enabled.
  /// - "PROCESSING_ERROR_REASON_EVENT_TOO_OLD" : The conversion is older than
  /// max supported age.
  /// - "PROCESSING_ERROR_REASON_DENIED_CONSENT" : The ad user data is denied,
  /// either by the user or in the advertiser default settings.
  /// - "PROCESSING_ERROR_REASON_NO_CONSENT" : Advertiser did not give 3P
  /// consent for the Ads core platform services.
  /// - "PROCESSING_ERROR_REASON_UNKNOWN_CONSENT" : The overall consent
  /// (determined from row level consent, request level consent, and account
  /// settings) could not be determined for this user
  /// - "PROCESSING_ERROR_REASON_DUPLICATE_GCLID" : A conversion with the same
  /// GCLID and conversion time already exists in the system.
  /// - "PROCESSING_ERROR_REASON_DUPLICATE_TRANSACTION_ID" : A conversion with
  /// the same order id and conversion action combination was already uploaded.
  /// - "PROCESSING_ERROR_REASON_INVALID_GBRAID" : The gbraid could not be
  /// decoded.
  /// - "PROCESSING_ERROR_REASON_INVALID_GCLID" : The google click ID could not
  /// be decoded.
  /// - "PROCESSING_ERROR_REASON_INVALID_MERCHANT_ID" : Merchant id contains
  /// non-digit characters.
  /// - "PROCESSING_ERROR_REASON_INVALID_WBRAID" : The wbraid could not be
  /// decoded.
  /// - "PROCESSING_ERROR_REASON_INTERNAL_ERROR" : Internal error.
  /// -
  /// "PROCESSING_ERROR_REASON_DESTINATION_ACCOUNT_ENHANCED_CONVERSIONS_TERMS_NOT_SIGNED"
  /// : Enhanced conversions terms are not signed in the destination account.
  /// - "PROCESSING_ERROR_REASON_INVALID_EVENT" : The event is invalid.
  /// - "PROCESSING_ERROR_REASON_INSUFFICIENT_MATCHED_TRANSACTIONS" : The
  /// matched transactions are less than the minimum threshold.
  /// - "PROCESSING_ERROR_REASON_INSUFFICIENT_TRANSACTIONS" : The transactions
  /// are less than the minimum threshold.
  /// - "PROCESSING_ERROR_REASON_INVALID_FORMAT" : The event has format error.
  /// - "PROCESSING_ERROR_REASON_DECRYPTION_ERROR" : The event has a decryption
  /// error.
  /// - "PROCESSING_ERROR_REASON_DEK_DECRYPTION_ERROR" : The DEK failed to be
  /// decrypted.
  /// - "PROCESSING_ERROR_REASON_INVALID_WIP" : The WIP is formatted incorrectly
  /// or the WIP does not exist.
  /// - "PROCESSING_ERROR_REASON_INVALID_KEK" : The KEK cannot decrypt data
  /// because it is the wrong KEK, or it does not exist.
  /// - "PROCESSING_ERROR_REASON_WIP_AUTH_FAILED" : The WIP could not be used
  /// because it was rejected by its attestation condition.
  /// - "PROCESSING_ERROR_REASON_KEK_PERMISSION_DENIED" : The system did not
  /// have the permissions needed to access the KEK.
  /// - "PROCESSING_ERROR_REASON_AWS_AUTH_FAILED" : The system failed to
  /// authenticate with AWS.
  /// - "PROCESSING_ERROR_REASON_USER_IDENTIFIER_DECRYPTION_ERROR" : Failed to
  /// decrypt the UserIdentifier data using the DEK.
  /// - "PROCESSING_ERROR_OPERATING_ACCOUNT_MISMATCH_FOR_AD_IDENTIFIER" : The
  /// user attempted to ingest events with an ad identifier that isn't from the
  /// operating account's ads.
  core.String? reason;

  /// The count of records that failed to upload for a given reason.
  core.String? recordCount;

  ErrorCount({this.reason, this.recordCount});

  ErrorCount.fromJson(core.Map json_)
    : this(
        reason: json_['reason'] as core.String?,
        recordCount: json_['recordCount'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (reason != null) 'reason': reason!,
    if (recordCount != null) 'recordCount': recordCount!,
  };
}

/// Error counts for each type of error.
class ErrorInfo {
  /// A list of errors and counts per error reason.
  ///
  /// May not be populated in all cases.
  core.List<ErrorCount>? errorCounts;

  ErrorInfo({this.errorCounts});

  ErrorInfo.fromJson(core.Map json_)
    : this(
        errorCounts:
            (json_['errorCounts'] as core.List?)
                ?.map(
                  (value) => ErrorCount.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (errorCounts != null) 'errorCounts': errorCounts!,
  };
}

/// An event representing a user interaction with an advertiser's website or
/// app.
class Event {
  /// Identifiers and other information used to match the conversion event with
  /// other online activity (such as ad clicks).
  ///
  /// Optional.
  AdIdentifiers? adIdentifiers;

  /// A bucket of any
  /// [event parameters](https://developers.google.com/analytics/devguides/collection/protocol/ga4/reference/events)
  /// to be included within the event that were not already specified using
  /// other structured fields.
  ///
  /// Optional.
  core.List<EventParameter>? additionalEventParameters;

  /// Information about the transaction and items associated with the event.
  ///
  /// Optional.
  CartData? cartData;

  /// A unique identifier for the user instance of a web client for this GA4 web
  /// stream.
  ///
  /// Optional.
  core.String? clientId;

  /// Information about whether the associated user has provided different types
  /// of consent.
  ///
  /// Optional.
  Consent? consent;

  /// The conversion value associated with the event, for value-based
  /// conversions.
  ///
  /// Optional.
  core.double? conversionValue;

  /// The currency code associated with all monetary values within this event.
  ///
  /// Optional.
  core.String? currency;

  /// Additional key/value pair information to send to the conversion containers
  /// (conversion action or FL activity).
  ///
  /// Optional.
  core.List<CustomVariable>? customVariables;

  /// Reference string used to determine the destination.
  ///
  /// If empty, the event will be sent to all destinations in the request.
  ///
  /// Optional.
  core.List<core.String>? destinationReferences;

  /// Information gathered about the device being used (if any) when the event
  /// happened.
  ///
  /// Optional.
  DeviceInfo? eventDeviceInfo;

  /// The name of the event.
  ///
  /// Required for GA4 events.
  ///
  /// Optional.
  core.String? eventName;

  /// Signal for where the event happened (web, app, in-store, etc.).
  ///
  /// Optional.
  /// Possible string values are:
  /// - "EVENT_SOURCE_UNSPECIFIED" : Unspecified EventSource. Should never be
  /// used.
  /// - "WEB" : The event was generated from a web browser.
  /// - "APP" : The event was generated from an app.
  /// - "IN_STORE" : The event was generated from an in-store transaction.
  /// - "PHONE" : The event was generated from a phone call.
  /// - "OTHER" : The event was generated from other sources.
  core.String? eventSource;

  /// The time the event occurred.
  ///
  /// Required.
  core.String? eventTimestamp;

  /// A list of key/value pairs for experimental fields that may eventually be
  /// promoted to be part of the API.
  ///
  /// Optional.
  core.List<ExperimentalField>? experimentalFields;

  /// The last time the event was updated.
  ///
  /// Optional.
  core.String? lastUpdatedTimestamp;

  /// The unique identifier for this event.
  ///
  /// Required for conversions using multiple data sources.
  ///
  /// Optional.
  core.String? transactionId;

  /// Pieces of user provided data, representing the user the event is
  /// associated with.
  ///
  /// Optional.
  UserData? userData;

  /// A unique identifier for a user, as defined by the advertiser.
  ///
  /// Optional.
  core.String? userId;

  /// Advertiser-assessed information about the user at the time that the event
  /// happened.
  ///
  /// Optional.
  UserProperties? userProperties;

  Event({
    this.adIdentifiers,
    this.additionalEventParameters,
    this.cartData,
    this.clientId,
    this.consent,
    this.conversionValue,
    this.currency,
    this.customVariables,
    this.destinationReferences,
    this.eventDeviceInfo,
    this.eventName,
    this.eventSource,
    this.eventTimestamp,
    this.experimentalFields,
    this.lastUpdatedTimestamp,
    this.transactionId,
    this.userData,
    this.userId,
    this.userProperties,
  });

  Event.fromJson(core.Map json_)
    : this(
        adIdentifiers:
            json_.containsKey('adIdentifiers')
                ? AdIdentifiers.fromJson(
                  json_['adIdentifiers'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        additionalEventParameters:
            (json_['additionalEventParameters'] as core.List?)
                ?.map(
                  (value) => EventParameter.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        cartData:
            json_.containsKey('cartData')
                ? CartData.fromJson(
                  json_['cartData'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        clientId: json_['clientId'] as core.String?,
        consent:
            json_.containsKey('consent')
                ? Consent.fromJson(
                  json_['consent'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        conversionValue: (json_['conversionValue'] as core.num?)?.toDouble(),
        currency: json_['currency'] as core.String?,
        customVariables:
            (json_['customVariables'] as core.List?)
                ?.map(
                  (value) => CustomVariable.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        destinationReferences:
            (json_['destinationReferences'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        eventDeviceInfo:
            json_.containsKey('eventDeviceInfo')
                ? DeviceInfo.fromJson(
                  json_['eventDeviceInfo']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        eventName: json_['eventName'] as core.String?,
        eventSource: json_['eventSource'] as core.String?,
        eventTimestamp: json_['eventTimestamp'] as core.String?,
        experimentalFields:
            (json_['experimentalFields'] as core.List?)
                ?.map(
                  (value) => ExperimentalField.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        lastUpdatedTimestamp: json_['lastUpdatedTimestamp'] as core.String?,
        transactionId: json_['transactionId'] as core.String?,
        userData:
            json_.containsKey('userData')
                ? UserData.fromJson(
                  json_['userData'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        userId: json_['userId'] as core.String?,
        userProperties:
            json_.containsKey('userProperties')
                ? UserProperties.fromJson(
                  json_['userProperties']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (adIdentifiers != null) 'adIdentifiers': adIdentifiers!,
    if (additionalEventParameters != null)
      'additionalEventParameters': additionalEventParameters!,
    if (cartData != null) 'cartData': cartData!,
    if (clientId != null) 'clientId': clientId!,
    if (consent != null) 'consent': consent!,
    if (conversionValue != null) 'conversionValue': conversionValue!,
    if (currency != null) 'currency': currency!,
    if (customVariables != null) 'customVariables': customVariables!,
    if (destinationReferences != null)
      'destinationReferences': destinationReferences!,
    if (eventDeviceInfo != null) 'eventDeviceInfo': eventDeviceInfo!,
    if (eventName != null) 'eventName': eventName!,
    if (eventSource != null) 'eventSource': eventSource!,
    if (eventTimestamp != null) 'eventTimestamp': eventTimestamp!,
    if (experimentalFields != null) 'experimentalFields': experimentalFields!,
    if (lastUpdatedTimestamp != null)
      'lastUpdatedTimestamp': lastUpdatedTimestamp!,
    if (transactionId != null) 'transactionId': transactionId!,
    if (userData != null) 'userData': userData!,
    if (userId != null) 'userId': userId!,
    if (userProperties != null) 'userProperties': userProperties!,
  };
}

/// Event parameter for GA4 events.
typedef EventParameter = $Parameter;

/// Experimental field representing unofficial fields.
class ExperimentalField {
  /// The name of the field to use.
  ///
  /// Optional.
  core.String? field;

  /// The value the field to set.
  ///
  /// Optional.
  core.String? value;

  ExperimentalField({this.field, this.value});

  ExperimentalField.fromJson(core.Map json_)
    : this(
        field: json_['field'] as core.String?,
        value: json_['value'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (field != null) 'field': field!,
    if (value != null) 'value': value!,
  };
}

/// Information about the Google Cloud Platform wrapped key.
class GcpWrappedKeyInfo {
  /// The base64 encoded encrypted data encryption key.
  ///
  /// Required.
  core.String? encryptedDek;

  /// Google Cloud Platform \[Cloud Key Management Service resource
  /// ID\](//cloud.google.com/kms/docs/getting-resource-ids).
  ///
  /// Should be in the format of
  /// `projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{key}`
  /// or
  /// `gcp-kms://projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{key}`
  ///
  /// Required.
  core.String? kekUri;

  /// The type of algorithm used to encrypt the data.
  ///
  /// Required.
  /// Possible string values are:
  /// - "KEY_TYPE_UNSPECIFIED" : Unspecified key type. Should never be used.
  /// - "XCHACHA20_POLY1305" : Algorithm XChaCha20-Poly1305
  core.String? keyType;

  /// The \[Workload
  /// Identity\](//cloud.google.com/iam/docs/workload-identity-federation) pool
  /// provider required to use KEK.
  ///
  /// Required.
  core.String? wipProvider;

  GcpWrappedKeyInfo({
    this.encryptedDek,
    this.kekUri,
    this.keyType,
    this.wipProvider,
  });

  GcpWrappedKeyInfo.fromJson(core.Map json_)
    : this(
        encryptedDek: json_['encryptedDek'] as core.String?,
        kekUri: json_['kekUri'] as core.String?,
        keyType: json_['keyType'] as core.String?,
        wipProvider: json_['wipProvider'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (encryptedDek != null) 'encryptedDek': encryptedDek!,
    if (kekUri != null) 'kekUri': kekUri!,
    if (keyType != null) 'keyType': keyType!,
    if (wipProvider != null) 'wipProvider': wipProvider!,
  };
}

/// Request to upload audience members to the provided destinations.
///
/// Returns an IngestAudienceMembersResponse.
class IngestAudienceMembersRequest {
  /// The list of users to send to the specified destinations.
  ///
  /// At most 10000 AudienceMember resources can be sent in a single request.
  ///
  /// Required.
  core.List<AudienceMember>? audienceMembers;

  /// Request-level consent to apply to all users in the request.
  ///
  /// User-level consent overrides request-level consent, and can be specified
  /// in each AudienceMember.
  ///
  /// Optional.
  Consent? consent;

  /// The list of destinations to send the audience members to.
  ///
  /// Required.
  core.List<Destination>? destinations;

  /// Required for UserData uploads.
  ///
  /// The encoding type of the user identifiers. For hashed user identifiers,
  /// this is the encoding type of the hashed string. For encrypted hashed user
  /// identifiers, this is the encoding type of the outer encrypted string, but
  /// not necessarily the inner hashed string, meaning the inner hashed string
  /// could be encoded in a different way than the outer encrypted string. For
  /// non `UserData` uploads, this field is ignored.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "ENCODING_UNSPECIFIED" : Unspecified Encoding type. Should never be
  /// used.
  /// - "HEX" : Hex encoding.
  /// - "BASE64" : Base 64 encoding.
  core.String? encoding;

  /// Encryption information for UserData uploads.
  ///
  /// If not set, it's assumed that uploaded identifying information is hashed
  /// but not encrypted. For non `UserData` uploads, this field is ignored.
  ///
  /// Optional.
  EncryptionInfo? encryptionInfo;

  /// The terms of service that the user has accepted/rejected.
  ///
  /// Optional.
  TermsOfService? termsOfService;

  /// For testing purposes.
  ///
  /// If `true`, the request is validated but not executed. Only errors are
  /// returned, not results.
  ///
  /// Optional.
  core.bool? validateOnly;

  IngestAudienceMembersRequest({
    this.audienceMembers,
    this.consent,
    this.destinations,
    this.encoding,
    this.encryptionInfo,
    this.termsOfService,
    this.validateOnly,
  });

  IngestAudienceMembersRequest.fromJson(core.Map json_)
    : this(
        audienceMembers:
            (json_['audienceMembers'] as core.List?)
                ?.map(
                  (value) => AudienceMember.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        consent:
            json_.containsKey('consent')
                ? Consent.fromJson(
                  json_['consent'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        destinations:
            (json_['destinations'] as core.List?)
                ?.map(
                  (value) => Destination.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        encoding: json_['encoding'] as core.String?,
        encryptionInfo:
            json_.containsKey('encryptionInfo')
                ? EncryptionInfo.fromJson(
                  json_['encryptionInfo']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        termsOfService:
            json_.containsKey('termsOfService')
                ? TermsOfService.fromJson(
                  json_['termsOfService']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        validateOnly: json_['validateOnly'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (audienceMembers != null) 'audienceMembers': audienceMembers!,
    if (consent != null) 'consent': consent!,
    if (destinations != null) 'destinations': destinations!,
    if (encoding != null) 'encoding': encoding!,
    if (encryptionInfo != null) 'encryptionInfo': encryptionInfo!,
    if (termsOfService != null) 'termsOfService': termsOfService!,
    if (validateOnly != null) 'validateOnly': validateOnly!,
  };
}

/// Response from the IngestAudienceMembersRequest.
typedef IngestAudienceMembersResponse = $Response00;

/// The status of the ingest audience members request.
class IngestAudienceMembersStatus {
  /// The status of the mobile data ingestion to the destination.
  IngestMobileDataStatus? mobileDataIngestionStatus;

  /// The status of the pair data ingestion to the destination.
  IngestPairDataStatus? pairDataIngestionStatus;

  /// The status of the user data ingestion to the destination.
  IngestUserDataStatus? userDataIngestionStatus;

  IngestAudienceMembersStatus({
    this.mobileDataIngestionStatus,
    this.pairDataIngestionStatus,
    this.userDataIngestionStatus,
  });

  IngestAudienceMembersStatus.fromJson(core.Map json_)
    : this(
        mobileDataIngestionStatus:
            json_.containsKey('mobileDataIngestionStatus')
                ? IngestMobileDataStatus.fromJson(
                  json_['mobileDataIngestionStatus']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        pairDataIngestionStatus:
            json_.containsKey('pairDataIngestionStatus')
                ? IngestPairDataStatus.fromJson(
                  json_['pairDataIngestionStatus']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        userDataIngestionStatus:
            json_.containsKey('userDataIngestionStatus')
                ? IngestUserDataStatus.fromJson(
                  json_['userDataIngestionStatus']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (mobileDataIngestionStatus != null)
      'mobileDataIngestionStatus': mobileDataIngestionStatus!,
    if (pairDataIngestionStatus != null)
      'pairDataIngestionStatus': pairDataIngestionStatus!,
    if (userDataIngestionStatus != null)
      'userDataIngestionStatus': userDataIngestionStatus!,
  };
}

/// Request to upload audience members to the provided destinations.
///
/// Returns an IngestEventsResponse.
class IngestEventsRequest {
  /// Request-level consent to apply to all users in the request.
  ///
  /// User-level consent overrides request-level consent, and can be specified
  /// in each Event.
  ///
  /// Optional.
  Consent? consent;

  /// The list of destinations to send the events to.
  ///
  /// Required.
  core.List<Destination>? destinations;

  /// Required for UserData uploads.
  ///
  /// The encoding type of the user identifiers. For hashed user identifiers,
  /// this is the encoding type of the hashed string. For encrypted hashed user
  /// identifiers, this is the encoding type of the outer encrypted string, but
  /// not necessarily the inner hashed string, meaning the inner hashed string
  /// could be encoded in a different way than the outer encrypted string. For
  /// non `UserData` uploads, this field is ignored.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "ENCODING_UNSPECIFIED" : Unspecified Encoding type. Should never be
  /// used.
  /// - "HEX" : Hex encoding.
  /// - "BASE64" : Base 64 encoding.
  core.String? encoding;

  /// Encryption information for UserData uploads.
  ///
  /// If not set, it's assumed that uploaded identifying information is hashed
  /// but not encrypted. For non `UserData` uploads, this field is ignored.
  ///
  /// Optional.
  EncryptionInfo? encryptionInfo;

  /// The list of events to send to the specified destinations.
  ///
  /// At most 2000 Event resources can be sent in a single request.
  ///
  /// Required.
  core.List<Event>? events;

  /// For testing purposes.
  ///
  /// If `true`, the request is validated but not executed. Only errors are
  /// returned, not results.
  ///
  /// Optional.
  core.bool? validateOnly;

  IngestEventsRequest({
    this.consent,
    this.destinations,
    this.encoding,
    this.encryptionInfo,
    this.events,
    this.validateOnly,
  });

  IngestEventsRequest.fromJson(core.Map json_)
    : this(
        consent:
            json_.containsKey('consent')
                ? Consent.fromJson(
                  json_['consent'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        destinations:
            (json_['destinations'] as core.List?)
                ?.map(
                  (value) => Destination.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        encoding: json_['encoding'] as core.String?,
        encryptionInfo:
            json_.containsKey('encryptionInfo')
                ? EncryptionInfo.fromJson(
                  json_['encryptionInfo']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        events:
            (json_['events'] as core.List?)
                ?.map(
                  (value) => Event.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        validateOnly: json_['validateOnly'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (consent != null) 'consent': consent!,
    if (destinations != null) 'destinations': destinations!,
    if (encoding != null) 'encoding': encoding!,
    if (encryptionInfo != null) 'encryptionInfo': encryptionInfo!,
    if (events != null) 'events': events!,
    if (validateOnly != null) 'validateOnly': validateOnly!,
  };
}

/// Response from the IngestEventsRequest.
typedef IngestEventsResponse = $Response00;

/// The status of the events ingestion to the destination.
class IngestEventsStatus {
  /// The total count of events sent in the upload request.
  ///
  /// Includes all events in the request, regardless of whether they were
  /// successfully ingested or not.
  core.String? recordCount;

  IngestEventsStatus({this.recordCount});

  IngestEventsStatus.fromJson(core.Map json_)
    : this(recordCount: json_['recordCount'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (recordCount != null) 'recordCount': recordCount!,
  };
}

/// The status of the mobile data ingestion to the destination containing stats
/// related to the ingestion.
class IngestMobileDataStatus {
  /// The total count of mobile ids sent in the upload request for the
  /// destination.
  ///
  /// Includes all mobile ids in the request, regardless of whether they were
  /// successfully ingested or not.
  core.String? mobileIdCount;

  /// The total count of audience members sent in the upload request for the
  /// destination.
  ///
  /// Includes all audience members in the request, regardless of whether they
  /// were successfully ingested or not.
  core.String? recordCount;

  IngestMobileDataStatus({this.mobileIdCount, this.recordCount});

  IngestMobileDataStatus.fromJson(core.Map json_)
    : this(
        mobileIdCount: json_['mobileIdCount'] as core.String?,
        recordCount: json_['recordCount'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (mobileIdCount != null) 'mobileIdCount': mobileIdCount!,
    if (recordCount != null) 'recordCount': recordCount!,
  };
}

/// The status of the pair data ingestion to the destination containing stats
/// related to the ingestion.
class IngestPairDataStatus {
  /// The total count of pair ids sent in the upload request for the
  /// destination.
  ///
  /// Includes all pair ids in the request, regardless of whether they were
  /// successfully ingested or not.
  core.String? pairIdCount;

  /// The total count of audience members sent in the upload request for the
  /// destination.
  ///
  /// Includes all audience members in the request, regardless of whether they
  /// were successfully ingested or not.
  core.String? recordCount;

  IngestPairDataStatus({this.pairIdCount, this.recordCount});

  IngestPairDataStatus.fromJson(core.Map json_)
    : this(
        pairIdCount: json_['pairIdCount'] as core.String?,
        recordCount: json_['recordCount'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (pairIdCount != null) 'pairIdCount': pairIdCount!,
    if (recordCount != null) 'recordCount': recordCount!,
  };
}

/// The status of the user data ingestion to the destination containing stats
/// related to the ingestion.
class IngestUserDataStatus {
  /// The total count of audience members sent in the upload request for the
  /// destination.
  ///
  /// Includes all audience members in the request, regardless of whether they
  /// were successfully ingested or not.
  core.String? recordCount;

  /// The match rate range of the upload.
  /// Possible string values are:
  /// - "MATCH_RATE_RANGE_UNKNOWN" : The match rate range is unknown.
  /// - "MATCH_RATE_RANGE_NOT_ELIGIBLE" : The match rate range is not eligible.
  /// - "MATCH_RATE_RANGE_LESS_THAN_20" : The match rate range is less than 20%
  /// (in the interval `[0, 20)`).
  /// - "MATCH_RATE_RANGE_20_TO_30" : The match rate range is between 20% and
  /// 30% (in the interval `[20, 31)`).
  /// - "MATCH_RATE_RANGE_31_TO_40" : The match rate range is between 31% and
  /// 40% (in the interval `[31, 41)`).
  /// - "MATCH_RATE_RANGE_41_TO_50" : The match rate range is between 41% and
  /// 50% (in the interval `[41, 51)`).
  /// - "MATCH_RATE_RANGE_51_TO_60" : The match rate range is between 51% and
  /// 60% (in the interval `[51, 61)`.
  /// - "MATCH_RATE_RANGE_61_TO_70" : The match rate range is between 61% and
  /// 70% (in the interval `[61, 71)`).
  /// - "MATCH_RATE_RANGE_71_TO_80" : The match rate range is between 71% and
  /// 80% (in the interval `[71, 81)`).
  /// - "MATCH_RATE_RANGE_81_TO_90" : The match rate range is between 81% and
  /// 90% (in the interval `[81, 91)`).
  /// - "MATCH_RATE_RANGE_91_TO_100" : The match rate range is between 91% and
  /// 100% (in the interval `[91, 100]`).
  core.String? uploadMatchRateRange;

  /// The total count of user identifiers sent in the upload request for the
  /// destination.
  ///
  /// Includes all user identifiers in the request, regardless of whether they
  /// were successfully ingested or not.
  core.String? userIdentifierCount;

  IngestUserDataStatus({
    this.recordCount,
    this.uploadMatchRateRange,
    this.userIdentifierCount,
  });

  IngestUserDataStatus.fromJson(core.Map json_)
    : this(
        recordCount: json_['recordCount'] as core.String?,
        uploadMatchRateRange: json_['uploadMatchRateRange'] as core.String?,
        userIdentifierCount: json_['userIdentifierCount'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (recordCount != null) 'recordCount': recordCount!,
    if (uploadMatchRateRange != null)
      'uploadMatchRateRange': uploadMatchRateRange!,
    if (userIdentifierCount != null)
      'userIdentifierCount': userIdentifierCount!,
  };
}

/// Represents an item in the cart associated with the event.
class Item {
  /// A bucket of any
  /// [event parameters related to an item](https://developers.google.com/analytics/devguides/collection/protocol/ga4/reference/events)
  /// to be included within the event that were not already specified using
  /// other structured fields.
  ///
  /// Optional.
  core.List<ItemParameter>? additionalItemParameters;

  /// A unique identifier to reference the item.
  ///
  /// Optional.
  core.String? itemId;

  /// The product ID within the Merchant Center account.
  ///
  /// Optional.
  core.String? merchantProductId;

  /// The number of this item associated with the event.
  ///
  /// Optional.
  core.String? quantity;

  /// The unit price excluding tax, shipping, and any transaction level
  /// discounts.
  ///
  /// Optional.
  core.double? unitPrice;

  Item({
    this.additionalItemParameters,
    this.itemId,
    this.merchantProductId,
    this.quantity,
    this.unitPrice,
  });

  Item.fromJson(core.Map json_)
    : this(
        additionalItemParameters:
            (json_['additionalItemParameters'] as core.List?)
                ?.map(
                  (value) => ItemParameter.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        itemId: json_['itemId'] as core.String?,
        merchantProductId: json_['merchantProductId'] as core.String?,
        quantity: json_['quantity'] as core.String?,
        unitPrice: (json_['unitPrice'] as core.num?)?.toDouble(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (additionalItemParameters != null)
      'additionalItemParameters': additionalItemParameters!,
    if (itemId != null) 'itemId': itemId!,
    if (merchantProductId != null) 'merchantProductId': merchantProductId!,
    if (quantity != null) 'quantity': quantity!,
    if (unitPrice != null) 'unitPrice': unitPrice!,
  };
}

/// A bucket of any
/// [event parameters related to an item](https://developers.google.com/analytics/devguides/collection/protocol/ga4/reference/events)
/// to be included within the event that were not already specified using other
/// structured fields.
typedef ItemParameter = $Parameter;

/// Mobile IDs for the audience.
///
/// At least one mobile ID is required.
class MobileData {
  /// The list of mobile device IDs (advertising ID/IDFA).
  ///
  /// At most 10 `mobileIds` can be provided in a single AudienceMember.
  ///
  /// Required.
  core.List<core.String>? mobileIds;

  MobileData({this.mobileIds});

  MobileData.fromJson(core.Map json_)
    : this(
        mobileIds:
            (json_['mobileIds'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (mobileIds != null) 'mobileIds': mobileIds!,
  };
}

/// \[PAIR\](//support.google.com/admanager/answer/15067908) IDs for the
/// audience.
///
/// At least one PAIR ID is required.
class PairData {
  /// Cleanroom-provided PII data, hashed with SHA256, and encrypted with an EC
  /// commutative cipher using publisher key for the
  /// \[PAIR\]((//support.google.com/admanager/answer/15067908)) user list.
  ///
  /// At most 10 `pairIds` can be provided in a single AudienceMember.
  ///
  /// Required.
  core.List<core.String>? pairIds;

  PairData({this.pairIds});

  PairData.fromJson(core.Map json_)
    : this(
        pairIds:
            (json_['pairIds'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (pairIds != null) 'pairIds': pairIds!,
  };
}

/// Represents a specific account.
class ProductAccount {
  /// The ID of the account.
  ///
  /// For example, your Google Ads account ID.
  ///
  /// Required.
  core.String? accountId;

  /// The type of the account.
  ///
  /// For example, `GOOGLE_ADS`. Either `account_type` or the deprecated
  /// `product` is required. If both are set, the values must match.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "ACCOUNT_TYPE_UNSPECIFIED" : Unspecified product. Should never be used.
  /// - "GOOGLE_ADS" : Google Ads.
  /// - "DISPLAY_VIDEO_PARTNER" : Display & Video 360 partner.
  /// - "DISPLAY_VIDEO_ADVERTISER" : Display & Video 360 advertiser.
  /// - "DATA_PARTNER" : Data Partner.
  /// - "GOOGLE_ANALYTICS_PROPERTY" : Google Analytics.
  core.String? accountType;

  /// Use `account_type` instead.
  ///
  /// Deprecated.
  /// Possible string values are:
  /// - "PRODUCT_UNSPECIFIED" : Unspecified product. Should never be used.
  /// - "GOOGLE_ADS" : Google Ads.
  /// - "DISPLAY_VIDEO_PARTNER" : Display & Video 360 partner.
  /// - "DISPLAY_VIDEO_ADVERTISER" : Display & Video 360 advertiser.
  /// - "DATA_PARTNER" : Data Partner.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? product;

  ProductAccount({this.accountId, this.accountType, this.product});

  ProductAccount.fromJson(core.Map json_)
    : this(
        accountId: json_['accountId'] as core.String?,
        accountType: json_['accountType'] as core.String?,
        product: json_['product'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (accountId != null) 'accountId': accountId!,
    if (accountType != null) 'accountType': accountType!,
    if (product != null) 'product': product!,
  };
}

/// Request to remove users from an audience in the provided destinations.
///
/// Returns a RemoveAudienceMembersResponse.
class RemoveAudienceMembersRequest {
  /// The list of users to remove.
  ///
  /// Required.
  core.List<AudienceMember>? audienceMembers;

  /// The list of destinations to remove the users from.
  ///
  /// Required.
  core.List<Destination>? destinations;

  /// Required for UserData uploads.
  ///
  /// The encoding type of the user identifiers. Applies to only the outer
  /// encoding for encrypted user identifiers. For non `UserData` uploads, this
  /// field is ignored.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "ENCODING_UNSPECIFIED" : Unspecified Encoding type. Should never be
  /// used.
  /// - "HEX" : Hex encoding.
  /// - "BASE64" : Base 64 encoding.
  core.String? encoding;

  /// Encryption information for UserData uploads.
  ///
  /// If not set, it's assumed that uploaded identifying information is hashed
  /// but not encrypted. For non `UserData` uploads, this field is ignored.
  ///
  /// Optional.
  EncryptionInfo? encryptionInfo;

  /// For testing purposes.
  ///
  /// If `true`, the request is validated but not executed. Only errors are
  /// returned, not results.
  ///
  /// Optional.
  core.bool? validateOnly;

  RemoveAudienceMembersRequest({
    this.audienceMembers,
    this.destinations,
    this.encoding,
    this.encryptionInfo,
    this.validateOnly,
  });

  RemoveAudienceMembersRequest.fromJson(core.Map json_)
    : this(
        audienceMembers:
            (json_['audienceMembers'] as core.List?)
                ?.map(
                  (value) => AudienceMember.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        destinations:
            (json_['destinations'] as core.List?)
                ?.map(
                  (value) => Destination.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        encoding: json_['encoding'] as core.String?,
        encryptionInfo:
            json_.containsKey('encryptionInfo')
                ? EncryptionInfo.fromJson(
                  json_['encryptionInfo']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        validateOnly: json_['validateOnly'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (audienceMembers != null) 'audienceMembers': audienceMembers!,
    if (destinations != null) 'destinations': destinations!,
    if (encoding != null) 'encoding': encoding!,
    if (encryptionInfo != null) 'encryptionInfo': encryptionInfo!,
    if (validateOnly != null) 'validateOnly': validateOnly!,
  };
}

/// Response from the RemoveAudienceMembersRequest.
typedef RemoveAudienceMembersResponse = $Response00;

/// The status of the remove audience members request.
class RemoveAudienceMembersStatus {
  /// The status of the mobile data removal from the destination.
  RemoveMobileDataStatus? mobileDataRemovalStatus;

  /// The status of the pair data removal from the destination.
  RemovePairDataStatus? pairDataRemovalStatus;

  /// The status of the user data removal from the destination.
  RemoveUserDataStatus? userDataRemovalStatus;

  RemoveAudienceMembersStatus({
    this.mobileDataRemovalStatus,
    this.pairDataRemovalStatus,
    this.userDataRemovalStatus,
  });

  RemoveAudienceMembersStatus.fromJson(core.Map json_)
    : this(
        mobileDataRemovalStatus:
            json_.containsKey('mobileDataRemovalStatus')
                ? RemoveMobileDataStatus.fromJson(
                  json_['mobileDataRemovalStatus']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        pairDataRemovalStatus:
            json_.containsKey('pairDataRemovalStatus')
                ? RemovePairDataStatus.fromJson(
                  json_['pairDataRemovalStatus']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        userDataRemovalStatus:
            json_.containsKey('userDataRemovalStatus')
                ? RemoveUserDataStatus.fromJson(
                  json_['userDataRemovalStatus']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (mobileDataRemovalStatus != null)
      'mobileDataRemovalStatus': mobileDataRemovalStatus!,
    if (pairDataRemovalStatus != null)
      'pairDataRemovalStatus': pairDataRemovalStatus!,
    if (userDataRemovalStatus != null)
      'userDataRemovalStatus': userDataRemovalStatus!,
  };
}

/// The status of the mobile data removal from the destination.
class RemoveMobileDataStatus {
  /// The total count of mobile Ids sent in the removal request.
  ///
  /// Includes all mobile ids in the request, regardless of whether they were
  /// successfully removed or not.
  core.String? mobileIdCount;

  /// The total count of audience members sent in the removal request.
  ///
  /// Includes all audience members in the request, regardless of whether they
  /// were successfully removed or not.
  core.String? recordCount;

  RemoveMobileDataStatus({this.mobileIdCount, this.recordCount});

  RemoveMobileDataStatus.fromJson(core.Map json_)
    : this(
        mobileIdCount: json_['mobileIdCount'] as core.String?,
        recordCount: json_['recordCount'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (mobileIdCount != null) 'mobileIdCount': mobileIdCount!,
    if (recordCount != null) 'recordCount': recordCount!,
  };
}

/// The status of the pair data removal from the destination.
class RemovePairDataStatus {
  /// The total count of pair ids sent in the removal request.
  ///
  /// Includes all pair ids in the request, regardless of whether they were
  /// successfully removed or not.
  core.String? pairIdCount;

  /// The total count of audience members sent in the removal request.
  ///
  /// Includes all audience members in the request, regardless of whether they
  /// were successfully removed or not.
  core.String? recordCount;

  RemovePairDataStatus({this.pairIdCount, this.recordCount});

  RemovePairDataStatus.fromJson(core.Map json_)
    : this(
        pairIdCount: json_['pairIdCount'] as core.String?,
        recordCount: json_['recordCount'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (pairIdCount != null) 'pairIdCount': pairIdCount!,
    if (recordCount != null) 'recordCount': recordCount!,
  };
}

/// The status of the user data removal from the destination.
class RemoveUserDataStatus {
  /// The total count of audience members sent in the removal request.
  ///
  /// Includes all audience members in the request, regardless of whether they
  /// were successfully removed or not.
  core.String? recordCount;

  /// The total count of user identifiers sent in the removal request.
  ///
  /// Includes all user identifiers in the request, regardless of whether they
  /// were successfully removed or not.
  core.String? userIdentifierCount;

  RemoveUserDataStatus({this.recordCount, this.userIdentifierCount});

  RemoveUserDataStatus.fromJson(core.Map json_)
    : this(
        recordCount: json_['recordCount'] as core.String?,
        userIdentifierCount: json_['userIdentifierCount'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (recordCount != null) 'recordCount': recordCount!,
    if (userIdentifierCount != null)
      'userIdentifierCount': userIdentifierCount!,
  };
}

/// A request status per destination.
class RequestStatusPerDestination {
  /// The status of the ingest audience members request.
  IngestAudienceMembersStatus? audienceMembersIngestionStatus;

  /// The status of the remove audience members request.
  RemoveAudienceMembersStatus? audienceMembersRemovalStatus;

  /// A destination within a DM API request.
  Destination? destination;

  /// An error info error containing the error reason and error counts related
  /// to the upload.
  ErrorInfo? errorInfo;

  /// The status of the ingest events request.
  IngestEventsStatus? eventsIngestionStatus;

  /// The request status of the destination.
  /// Possible string values are:
  /// - "REQUEST_STATUS_UNKNOWN" : The request status is unknown.
  /// - "SUCCESS" : The request succeeded.
  /// - "PROCESSING" : The request is processing.
  /// - "FAILED" : The request failed.
  /// - "PARTIAL_SUCCESS" : The request partially succeeded.
  core.String? requestStatus;

  /// A warning info containing the warning reason and warning counts related to
  /// the upload.
  WarningInfo? warningInfo;

  RequestStatusPerDestination({
    this.audienceMembersIngestionStatus,
    this.audienceMembersRemovalStatus,
    this.destination,
    this.errorInfo,
    this.eventsIngestionStatus,
    this.requestStatus,
    this.warningInfo,
  });

  RequestStatusPerDestination.fromJson(core.Map json_)
    : this(
        audienceMembersIngestionStatus:
            json_.containsKey('audienceMembersIngestionStatus')
                ? IngestAudienceMembersStatus.fromJson(
                  json_['audienceMembersIngestionStatus']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        audienceMembersRemovalStatus:
            json_.containsKey('audienceMembersRemovalStatus')
                ? RemoveAudienceMembersStatus.fromJson(
                  json_['audienceMembersRemovalStatus']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        destination:
            json_.containsKey('destination')
                ? Destination.fromJson(
                  json_['destination'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        errorInfo:
            json_.containsKey('errorInfo')
                ? ErrorInfo.fromJson(
                  json_['errorInfo'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        eventsIngestionStatus:
            json_.containsKey('eventsIngestionStatus')
                ? IngestEventsStatus.fromJson(
                  json_['eventsIngestionStatus']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        requestStatus: json_['requestStatus'] as core.String?,
        warningInfo:
            json_.containsKey('warningInfo')
                ? WarningInfo.fromJson(
                  json_['warningInfo'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (audienceMembersIngestionStatus != null)
      'audienceMembersIngestionStatus': audienceMembersIngestionStatus!,
    if (audienceMembersRemovalStatus != null)
      'audienceMembersRemovalStatus': audienceMembersRemovalStatus!,
    if (destination != null) 'destination': destination!,
    if (errorInfo != null) 'errorInfo': errorInfo!,
    if (eventsIngestionStatus != null)
      'eventsIngestionStatus': eventsIngestionStatus!,
    if (requestStatus != null) 'requestStatus': requestStatus!,
    if (warningInfo != null) 'warningInfo': warningInfo!,
  };
}

/// Response from the RetrieveRequestStatusRequest.
class RetrieveRequestStatusResponse {
  /// A list of request statuses per destination.
  ///
  /// The order of the statuses matches the order of the destinations in the
  /// original request.
  core.List<RequestStatusPerDestination>? requestStatusPerDestination;

  RetrieveRequestStatusResponse({this.requestStatusPerDestination});

  RetrieveRequestStatusResponse.fromJson(core.Map json_)
    : this(
        requestStatusPerDestination:
            (json_['requestStatusPerDestination'] as core.List?)
                ?.map(
                  (value) => RequestStatusPerDestination.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (requestStatusPerDestination != null)
      'requestStatusPerDestination': requestStatusPerDestination!,
  };
}

/// The terms of service that the user has accepted/rejected.
class TermsOfService {
  /// The Customer Match terms of service:
  /// https://support.google.com/adspolicy/answer/6299717.
  ///
  /// This must be accepted when ingesting UserData or MobileData. This field is
  /// not required for Partner Match User list.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "TERMS_OF_SERVICE_STATUS_UNSPECIFIED" : Not specified.
  /// - "ACCEPTED" : Status indicating the caller has chosen to accept the terms
  /// of service.
  /// - "REJECTED" : Status indicating the caller has chosen to reject the terms
  /// of service.
  core.String? customerMatchTermsOfServiceStatus;

  TermsOfService({this.customerMatchTermsOfServiceStatus});

  TermsOfService.fromJson(core.Map json_)
    : this(
        customerMatchTermsOfServiceStatus:
            json_['customerMatchTermsOfServiceStatus'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (customerMatchTermsOfServiceStatus != null)
      'customerMatchTermsOfServiceStatus': customerMatchTermsOfServiceStatus!,
  };
}

/// Data that identifies the user.
///
/// At least one identifier is required.
class UserData {
  /// The identifiers for the user.
  ///
  /// It's possible to provide multiple instances of the same type of data (for
  /// example, multiple email addresses). To increase the likelihood of a match,
  /// provide as many identifiers as possible. At most 10 `userIdentifiers` can
  /// be provided in a single AudienceMember or Event.
  ///
  /// Required.
  core.List<UserIdentifier>? userIdentifiers;

  UserData({this.userIdentifiers});

  UserData.fromJson(core.Map json_)
    : this(
        userIdentifiers:
            (json_['userIdentifiers'] as core.List?)
                ?.map(
                  (value) => UserIdentifier.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (userIdentifiers != null) 'userIdentifiers': userIdentifiers!,
  };
}

/// A single identifier for the user.
class UserIdentifier {
  /// The known components of a user's address.
  ///
  /// Holds a grouping of identifiers that are matched all at once.
  AddressInfo? address;

  /// Hashed email address using SHA-256 hash function after normalization.
  core.String? emailAddress;

  /// Hashed phone number using SHA-256 hash function after normalization (E164
  /// standard).
  core.String? phoneNumber;

  UserIdentifier({this.address, this.emailAddress, this.phoneNumber});

  UserIdentifier.fromJson(core.Map json_)
    : this(
        address:
            json_.containsKey('address')
                ? AddressInfo.fromJson(
                  json_['address'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        emailAddress: json_['emailAddress'] as core.String?,
        phoneNumber: json_['phoneNumber'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (address != null) 'address': address!,
    if (emailAddress != null) 'emailAddress': emailAddress!,
    if (phoneNumber != null) 'phoneNumber': phoneNumber!,
  };
}

/// Advertiser-assessed information about the user at the time that the event
/// happened.
///
/// See https://support.google.com/google-ads/answer/14007601 for more details.
class UserProperties {
  /// A bucket of any additional
  /// [user properties](https://developers.google.com/analytics/devguides/collection/protocol/ga4/user-properties)
  /// for the user associated with this event.
  ///
  /// Optional.
  core.List<UserProperty>? additionalUserProperties;

  /// Type of the customer associated with the event.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "CUSTOMER_TYPE_UNSPECIFIED" : Unspecified CustomerType. Should never be
  /// used.
  /// - "NEW" : The customer is new to the advertiser.
  /// - "RETURNING" : The customer is returning to the advertiser.
  /// - "REENGAGED" : The customer has re-engaged with the advertiser.
  core.String? customerType;

  /// The advertiser-assessed value of the customer.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "CUSTOMER_VALUE_BUCKET_UNSPECIFIED" : Unspecified CustomerValueBucket.
  /// Should never be used.
  /// - "LOW" : The customer is low value.
  /// - "MEDIUM" : The customer is medium value.
  /// - "HIGH" : The customer is high value.
  core.String? customerValueBucket;

  UserProperties({
    this.additionalUserProperties,
    this.customerType,
    this.customerValueBucket,
  });

  UserProperties.fromJson(core.Map json_)
    : this(
        additionalUserProperties:
            (json_['additionalUserProperties'] as core.List?)
                ?.map(
                  (value) => UserProperty.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        customerType: json_['customerType'] as core.String?,
        customerValueBucket: json_['customerValueBucket'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (additionalUserProperties != null)
      'additionalUserProperties': additionalUserProperties!,
    if (customerType != null) 'customerType': customerType!,
    if (customerValueBucket != null)
      'customerValueBucket': customerValueBucket!,
  };
}

/// A bucket of any additional
/// [user properties](https://developers.google.com/analytics/devguides/collection/protocol/ga4/user-properties)
/// for the user associated with this event.
class UserProperty {
  /// The name of the user property to use.
  ///
  /// Required.
  core.String? propertyName;

  /// The string representation of the value of the user property to use.
  ///
  /// Required.
  core.String? value;

  UserProperty({this.propertyName, this.value});

  UserProperty.fromJson(core.Map json_)
    : this(
        propertyName: json_['propertyName'] as core.String?,
        value: json_['value'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (propertyName != null) 'propertyName': propertyName!,
    if (value != null) 'value': value!,
  };
}

/// The warning count for a given warning reason.
class WarningCount {
  /// The warning reason.
  /// Possible string values are:
  /// - "PROCESSING_WARNING_REASON_UNSPECIFIED" : The processing warning reason
  /// is unknown.
  /// - "PROCESSING_WARNING_REASON_KEK_PERMISSION_DENIED" : The system did not
  /// have the permissions needed to access the KEK.
  /// - "PROCESSING_WARNING_REASON_DEK_DECRYPTION_ERROR" : The DEK failed to be
  /// decrypted.
  /// - "PROCESSING_WARNING_REASON_DECRYPTION_ERROR" : The event has a
  /// decryption error.
  /// - "PROCESSING_WARNING_REASON_WIP_AUTH_FAILED" : The WIP could not be used
  /// because it was rejected by its attestation condition.
  /// - "PROCESSING_WARNING_REASON_INVALID_WIP" : The WIP is formatted
  /// incorrectly or the WIP does not exist.
  /// - "PROCESSING_WARNING_REASON_INVALID_KEK" : The KEK cannot decrypt data
  /// because it is the wrong KEK, or it does not exist.
  /// - "PROCESSING_WARNING_REASON_USER_IDENTIFIER_DECRYPTION_ERROR" : Failed to
  /// decrypt th UserIdentifier data using the DEK.
  /// - "PROCESSING_WARNING_REASON_INTERNAL_ERROR" : Internal error.
  /// - "PROCESSING_WARNING_REASON_AWS_AUTH_FAILED" : The system failed to
  /// authenticate with AWS.
  core.String? reason;

  /// The count of records that have a warning.
  core.String? recordCount;

  WarningCount({this.reason, this.recordCount});

  WarningCount.fromJson(core.Map json_)
    : this(
        reason: json_['reason'] as core.String?,
        recordCount: json_['recordCount'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (reason != null) 'reason': reason!,
    if (recordCount != null) 'recordCount': recordCount!,
  };
}

/// Warning counts for each type of warning.
class WarningInfo {
  /// A list of warnings and counts per warning reason.
  core.List<WarningCount>? warningCounts;

  WarningInfo({this.warningCounts});

  WarningInfo.fromJson(core.Map json_)
    : this(
        warningCounts:
            (json_['warningCounts'] as core.List?)
                ?.map(
                  (value) => WarningCount.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (warningCounts != null) 'warningCounts': warningCounts!,
  };
}
