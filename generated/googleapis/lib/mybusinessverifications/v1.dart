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

/// My Business Verifications API - v1
///
/// The My Business Verifications API provides an interface for taking
/// verifications related actions for locations.
///
/// For more information, see <https://developers.google.com/my-business/>
///
/// Create an instance of [MyBusinessVerificationsApi] to access these
/// resources:
///
/// - [LocationsResource]
///   - [LocationsVerificationsResource]
/// - [VerificationTokensResource]
library mybusinessverifications.v1;

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

/// The My Business Verifications API provides an interface for taking
/// verifications related actions for locations.
class MyBusinessVerificationsApi {
  final commons.ApiRequester _requester;

  LocationsResource get locations => LocationsResource(_requester);
  VerificationTokensResource get verificationTokens =>
      VerificationTokensResource(_requester);

  MyBusinessVerificationsApi(http.Client client,
      {core.String rootUrl = 'https://mybusinessverifications.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class LocationsResource {
  final commons.ApiRequester _requester;

  LocationsVerificationsResource get verifications =>
      LocationsVerificationsResource(_requester);

  LocationsResource(commons.ApiRequester client) : _requester = client;

  /// Reports all eligible verification options for a location in a specific
  /// language.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [location] - Required. The location to verify.
  /// Value must have pattern `^locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FetchVerificationOptionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FetchVerificationOptionsResponse> fetchVerificationOptions(
    FetchVerificationOptionsRequest request,
    core.String location, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$location') + ':fetchVerificationOptions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return FetchVerificationOptionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the VoiceOfMerchant state.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the location.
  /// Value must have pattern `^locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [VoiceOfMerchantState].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<VoiceOfMerchantState> getVoiceOfMerchantState(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + '/VoiceOfMerchantState';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return VoiceOfMerchantState.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Starts the verification process for a location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the location to verify.
  /// Value must have pattern `^locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [VerifyLocationResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<VerifyLocationResponse> verify(
    VerifyLocationRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':verify';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return VerifyLocationResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class LocationsVerificationsResource {
  final commons.ApiRequester _requester;

  LocationsVerificationsResource(commons.ApiRequester client)
      : _requester = client;

  /// Completes a `PENDING` verification.
  ///
  /// It is only necessary for non `AUTO` verification methods. `AUTO`
  /// verification request is instantly `VERIFIED` upon creation.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the verification to complete.
  /// Value must have pattern `^locations/\[^/\]+/verifications/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CompleteVerificationResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CompleteVerificationResponse> complete(
    CompleteVerificationRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':complete';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return CompleteVerificationResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// List verifications of a location, ordered by create time.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Resource name of the location that verification
  /// requests belong to.
  /// Value must have pattern `^locations/\[^/\]+$`.
  ///
  /// [pageSize] - How many verification to include per page. Minimum is 1, and
  /// the default and maximum page size is 100.
  ///
  /// [pageToken] - If specified, returns the next page of verifications.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListVerificationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListVerificationsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/verifications';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListVerificationsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class VerificationTokensResource {
  final commons.ApiRequester _requester;

  VerificationTokensResource(commons.ApiRequester client) : _requester = client;

  /// Generates a token for the provided location data as a vetted
  /// [partner](https://support.google.com/business/answer/7674102).
  ///
  /// Throws PERMISSION_DENIED if the caller is not a vetted partner account.
  /// Throws FAILED_PRECONDITION if the caller's VettedStatus is INVALID.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GenerateVerificationTokenResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GenerateVerificationTokenResponse> generate(
    GenerateVerificationTokenRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/verificationTokens:generate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GenerateVerificationTokenResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

/// Display data for verifications through postcard.
class AddressVerificationData {
  /// Address that a postcard can be sent to.
  PostalAddress? address;

  /// Merchant's business name.
  core.String? business;

  /// Expected number of days it takes to deliver a postcard to the address's
  /// region.
  core.int? expectedDeliveryDaysRegion;

  AddressVerificationData({
    this.address,
    this.business,
    this.expectedDeliveryDaysRegion,
  });

  AddressVerificationData.fromJson(core.Map json_)
      : this(
          address: json_.containsKey('address')
              ? PostalAddress.fromJson(
                  json_['address'] as core.Map<core.String, core.dynamic>)
              : null,
          business: json_.containsKey('business')
              ? json_['business'] as core.String
              : null,
          expectedDeliveryDaysRegion:
              json_.containsKey('expectedDeliveryDaysRegion')
                  ? json_['expectedDeliveryDaysRegion'] as core.int
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (address != null) 'address': address!,
        if (business != null) 'business': business!,
        if (expectedDeliveryDaysRegion != null)
          'expectedDeliveryDaysRegion': expectedDeliveryDaysRegion!,
      };
}

/// Request message for Verifications.CompleteVerificationAction.
class CompleteVerificationRequest {
  /// PIN code received by the merchant to complete the verification.
  ///
  /// Required.
  core.String? pin;

  CompleteVerificationRequest({
    this.pin,
  });

  CompleteVerificationRequest.fromJson(core.Map json_)
      : this(
          pin: json_.containsKey('pin') ? json_['pin'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (pin != null) 'pin': pin!,
      };
}

/// Response message for Verifications.CompleteVerificationAction.
class CompleteVerificationResponse {
  /// The completed verification.
  Verification? verification;

  CompleteVerificationResponse({
    this.verification,
  });

  CompleteVerificationResponse.fromJson(core.Map json_)
      : this(
          verification: json_.containsKey('verification')
              ? Verification.fromJson(
                  json_['verification'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (verification != null) 'verification': verification!,
      };
}

/// Indicates that the location fails to comply with our
/// [guidelines](https://support.google.com/business/answer/3038177).
class ComplyWithGuidelines {
  /// The reason why the location is being recommended to comply with
  /// guidelines.
  /// Possible string values are:
  /// - "RECOMMENDATION_REASON_UNSPECIFIED" : Not specified.
  /// - "BUSINESS_LOCATION_SUSPENDED" : The business location is suspended. To
  /// fix this issue, consult the
  /// [Help Center article](https://support.google.com/business/answer/4569145).
  /// - "BUSINESS_LOCATION_DISABLED" : The business location is disabled. To fix
  /// this issue, consult the
  /// [Help Center article](https://support.google.com/business/answer/9334246).
  core.String? recommendationReason;

  ComplyWithGuidelines({
    this.recommendationReason,
  });

  ComplyWithGuidelines.fromJson(core.Map json_)
      : this(
          recommendationReason: json_.containsKey('recommendationReason')
              ? json_['recommendationReason'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (recommendationReason != null)
          'recommendationReason': recommendationReason!,
      };
}

/// Display data for verifications through email.
class EmailVerificationData {
  /// Domain name in the email address.
  ///
  /// e.g. "gmail.com" in foo@gmail.com
  core.String? domain;

  /// Whether client is allowed to provide a different user name.
  core.bool? isUserNameEditable;

  /// User name in the email address.
  ///
  /// e.g. "foo" in foo@gmail.com
  core.String? user;

  EmailVerificationData({
    this.domain,
    this.isUserNameEditable,
    this.user,
  });

  EmailVerificationData.fromJson(core.Map json_)
      : this(
          domain: json_.containsKey('domain')
              ? json_['domain'] as core.String
              : null,
          isUserNameEditable: json_.containsKey('isUserNameEditable')
              ? json_['isUserNameEditable'] as core.bool
              : null,
          user: json_.containsKey('user') ? json_['user'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (domain != null) 'domain': domain!,
        if (isUserNameEditable != null)
          'isUserNameEditable': isUserNameEditable!,
        if (user != null) 'user': user!,
      };
}

/// Request message for Verifications.FetchVerificationOptions.
class FetchVerificationOptionsRequest {
  /// Extra context information for the verification of service businesses.
  ///
  /// Can only be applied to the locations whose business type is
  /// CUSTOMER_LOCATION_ONLY. Specifying an accurate address could enable more
  /// options. INVALID_ARGUMENT will be thrown if it is set for other business
  /// types of locations.
  ///
  /// Optional.
  ServiceBusinessContext? context;

  /// The BCP 47 language code representing the language that is to be used for
  /// the verification process.
  ///
  /// Available options vary by language.
  ///
  /// Required.
  core.String? languageCode;

  FetchVerificationOptionsRequest({
    this.context,
    this.languageCode,
  });

  FetchVerificationOptionsRequest.fromJson(core.Map json_)
      : this(
          context: json_.containsKey('context')
              ? ServiceBusinessContext.fromJson(
                  json_['context'] as core.Map<core.String, core.dynamic>)
              : null,
          languageCode: json_.containsKey('languageCode')
              ? json_['languageCode'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (context != null) 'context': context!,
        if (languageCode != null) 'languageCode': languageCode!,
      };
}

/// Response message for Verifications.FetchVerificationOptions.
class FetchVerificationOptionsResponse {
  /// The available verification options.
  core.List<VerificationOption>? options;

  FetchVerificationOptionsResponse({
    this.options,
  });

  FetchVerificationOptionsResponse.fromJson(core.Map json_)
      : this(
          options: json_.containsKey('options')
              ? (json_['options'] as core.List)
                  .map((value) => VerificationOption.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (options != null) 'options': options!,
      };
}

/// Request message for Verifications.GenerateVerificationToken.
class GenerateVerificationTokenRequest {
  /// The target location.
  ///
  /// Note: The location information should exactly match the target Location,
  /// otherwise the generated verification token won't be able to verify the
  /// target Location.
  ///
  /// Required.
  Location? location;

  GenerateVerificationTokenRequest({
    this.location,
  });

  GenerateVerificationTokenRequest.fromJson(core.Map json_)
      : this(
          location: json_.containsKey('location')
              ? Location.fromJson(
                  json_['location'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (location != null) 'location': location!,
      };
}

/// Response message for Verifications.GenerateVerificationToken.
class GenerateVerificationTokenResponse {
  /// The generated token to verify the location.
  VerificationToken? token;

  GenerateVerificationTokenResponse({
    this.token,
  });

  GenerateVerificationTokenResponse.fromJson(core.Map json_)
      : this(
          token: json_.containsKey('token')
              ? VerificationToken.fromJson(
                  json_['token'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (token != null) 'token': token!,
      };
}

/// Response message for Verifications.ListVerifications.
class ListVerificationsResponse {
  /// If the number of verifications exceeded the requested page size, this
  /// field will be populated with a token to fetch the next page of
  /// verification on a subsequent call.
  ///
  /// If there are no more attributes, this field will not be present in the
  /// response.
  core.String? nextPageToken;

  /// List of the verifications.
  core.List<Verification>? verifications;

  ListVerificationsResponse({
    this.nextPageToken,
    this.verifications,
  });

  ListVerificationsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          verifications: json_.containsKey('verifications')
              ? (json_['verifications'] as core.List)
                  .map((value) => Verification.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (verifications != null) 'verifications': verifications!,
      };
}

/// A subset of location info.
///
/// See the
/// [help center article](https://support.google.com/business/answer/3038177)
/// for a detailed description of these fields, or the \[category
/// endpoint\](/my-business/reference/rest/v4/categories) for a list of valid
/// business categories.
class Location {
  /// A precise, accurate address to describe your business location.
  ///
  /// PO boxes or mailboxes located at remote locations are not acceptable. At
  /// this time, you can specify a maximum of five `address_lines` values in the
  /// address.
  ///
  /// Required.
  PostalAddress? address;

  /// Location name should reflect your business's real-world name, as used
  /// consistently on your storefront, website, and stationery, and as known to
  /// customers.
  ///
  /// Any additional information, when relevant, can be included in other fields
  /// of the resource (for example, `Address`, `Categories`). Don't add
  /// unnecessary information to your name (for example, prefer "Google" over
  /// "Google Inc. - Mountain View Corporate Headquarters"). Don't include
  /// marketing taglines, store codes, special characters, hours or closed/open
  /// status, phone numbers, website URLs, service/product information,
  /// location/address or directions, or containment information (for example,
  /// "Chase ATM in Duane Reade").
  ///
  /// Required.
  core.String? name;

  /// Id of the category that best describes the core business this location
  /// engages in.
  ///
  /// e.g. gcid:bakery.
  ///
  /// Required.
  core.String? primaryCategoryId;

  /// A phone number that connects to your individual business location as
  /// directly as possible.
  ///
  /// Use a local phone number instead of a central, call center helpline number
  /// whenever possible.
  ///
  /// Optional.
  core.String? primaryPhone;

  /// A URL for this business.
  ///
  /// If possible, use a URL that represents this individual business location
  /// instead of a generic website/URL that represents all locations, or the
  /// brand.
  ///
  /// Optional.
  core.String? websiteUri;

  Location({
    this.address,
    this.name,
    this.primaryCategoryId,
    this.primaryPhone,
    this.websiteUri,
  });

  Location.fromJson(core.Map json_)
      : this(
          address: json_.containsKey('address')
              ? PostalAddress.fromJson(
                  json_['address'] as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          primaryCategoryId: json_.containsKey('primaryCategoryId')
              ? json_['primaryCategoryId'] as core.String
              : null,
          primaryPhone: json_.containsKey('primaryPhone')
              ? json_['primaryPhone'] as core.String
              : null,
          websiteUri: json_.containsKey('websiteUri')
              ? json_['websiteUri'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (address != null) 'address': address!,
        if (name != null) 'name': name!,
        if (primaryCategoryId != null) 'primaryCategoryId': primaryCategoryId!,
        if (primaryPhone != null) 'primaryPhone': primaryPhone!,
        if (websiteUri != null) 'websiteUri': websiteUri!,
      };
}

/// Represents a postal address, e.g. for postal delivery or payments addresses.
///
/// Given a postal address, a postal service can deliver items to a premise,
/// P.O. Box or similar. It is not intended to model geographical locations
/// (roads, towns, mountains). In typical usage an address would be created via
/// user input or from importing existing data, depending on the type of
/// process. Advice on address input / editing: - Use an
/// internationalization-ready address widget such as
/// https://github.com/google/libaddressinput) - Users should not be presented
/// with UI elements for input or editing of fields outside countries where that
/// field is used. For more guidance on how to use this schema, please see:
/// https://support.google.com/business/answer/6397478
typedef PostalAddress = $PostalAddress;

/// Indicates that the location duplicates another location that is in good
/// standing.
typedef ResolveOwnershipConflict = $Empty;

/// Additional data for service business verification.
class ServiceBusinessContext {
  /// The verification address of the location.
  ///
  /// It is used to either enable more verification options or send a postcard.
  PostalAddress? address;

  ServiceBusinessContext({
    this.address,
  });

  ServiceBusinessContext.fromJson(core.Map json_)
      : this(
          address: json_.containsKey('address')
              ? PostalAddress.fromJson(
                  json_['address'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (address != null) 'address': address!,
      };
}

/// A verification represents a verification attempt on a location.
class Verification {
  /// The timestamp when the verification is requested.
  core.String? createTime;

  /// The method of the verification.
  /// Possible string values are:
  /// - "VERIFICATION_METHOD_UNSPECIFIED" : Default value, will result in
  /// errors.
  /// - "ADDRESS" : Send a postcard with a verification PIN to a specific
  /// mailing address. The PIN is used to complete verification with Google.
  /// - "EMAIL" : Send an email with a verification PIN to a specific email
  /// address. The PIN is used to complete verification with Google.
  /// - "PHONE_CALL" : Make a phone call with a verification PIN to a specific
  /// phone number. The PIN is used to complete verification with Google.
  /// - "SMS" : Send an SMS with a verification PIN to a specific phone number.
  /// The PIN is used to complete verification with Google.
  /// - "AUTO" : Verify the location without additional user action. This option
  /// may not be available for all locations.
  /// - "VETTED_PARTNER" : Used for vetted
  /// [partners](https://support.google.com/business/answer/7674102). This
  /// option may not be available for all locations.
  core.String? method;

  /// Resource name of the verification.
  core.String? name;

  /// The state of the verification.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Default value, will result in errors.
  /// - "PENDING" : The verification is pending.
  /// - "COMPLETED" : The verification is completed.
  /// - "FAILED" : The verification is failed.
  core.String? state;

  Verification({
    this.createTime,
    this.method,
    this.name,
    this.state,
  });

  Verification.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          method: json_.containsKey('method')
              ? json_['method'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (method != null) 'method': method!,
        if (name != null) 'name': name!,
        if (state != null) 'state': state!,
      };
}

/// The verification option represents how to verify the location (indicated by
/// verification method) and where the verification will be sent to (indicated
/// by display data).
class VerificationOption {
  /// Set only if the method is MAIL.
  AddressVerificationData? addressData;

  /// Set only if the method is EMAIL.
  EmailVerificationData? emailData;

  /// Set only if the method is PHONE_CALL or SMS.
  ///
  /// Phone number that the PIN will be sent to.
  core.String? phoneNumber;

  /// Method to verify the location.
  /// Possible string values are:
  /// - "VERIFICATION_METHOD_UNSPECIFIED" : Default value, will result in
  /// errors.
  /// - "ADDRESS" : Send a postcard with a verification PIN to a specific
  /// mailing address. The PIN is used to complete verification with Google.
  /// - "EMAIL" : Send an email with a verification PIN to a specific email
  /// address. The PIN is used to complete verification with Google.
  /// - "PHONE_CALL" : Make a phone call with a verification PIN to a specific
  /// phone number. The PIN is used to complete verification with Google.
  /// - "SMS" : Send an SMS with a verification PIN to a specific phone number.
  /// The PIN is used to complete verification with Google.
  /// - "AUTO" : Verify the location without additional user action. This option
  /// may not be available for all locations.
  /// - "VETTED_PARTNER" : Used for vetted
  /// [partners](https://support.google.com/business/answer/7674102). This
  /// option may not be available for all locations.
  core.String? verificationMethod;

  VerificationOption({
    this.addressData,
    this.emailData,
    this.phoneNumber,
    this.verificationMethod,
  });

  VerificationOption.fromJson(core.Map json_)
      : this(
          addressData: json_.containsKey('addressData')
              ? AddressVerificationData.fromJson(
                  json_['addressData'] as core.Map<core.String, core.dynamic>)
              : null,
          emailData: json_.containsKey('emailData')
              ? EmailVerificationData.fromJson(
                  json_['emailData'] as core.Map<core.String, core.dynamic>)
              : null,
          phoneNumber: json_.containsKey('phoneNumber')
              ? json_['phoneNumber'] as core.String
              : null,
          verificationMethod: json_.containsKey('verificationMethod')
              ? json_['verificationMethod'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (addressData != null) 'addressData': addressData!,
        if (emailData != null) 'emailData': emailData!,
        if (phoneNumber != null) 'phoneNumber': phoneNumber!,
        if (verificationMethod != null)
          'verificationMethod': verificationMethod!,
      };
}

/// Token generated by a vetted
/// [partner](https://support.google.com/business/answer/7674102).
class VerificationToken {
  /// The token string.
  core.String? tokenString;

  VerificationToken({
    this.tokenString,
  });

  VerificationToken.fromJson(core.Map json_)
      : this(
          tokenString: json_.containsKey('tokenString')
              ? json_['tokenString'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (tokenString != null) 'tokenString': tokenString!,
      };
}

/// Indicates that the location requires verification.
///
/// Contains information about the current verification actions performed on the
/// location.
class Verify {
  /// Indicates whether a verification process has already started, and can be
  /// completed by the location.
  core.bool? hasPendingVerification;

  Verify({
    this.hasPendingVerification,
  });

  Verify.fromJson(core.Map json_)
      : this(
          hasPendingVerification: json_.containsKey('hasPendingVerification')
              ? json_['hasPendingVerification'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (hasPendingVerification != null)
          'hasPendingVerification': hasPendingVerification!,
      };
}

/// Request message for Verifications.VerifyLocation.
class VerifyLocationRequest {
  /// Extra context information for the verification of service businesses.
  ///
  /// It is only required for the locations whose business type is
  /// CUSTOMER_LOCATION_ONLY. For ADDRESS verification, the address will be used
  /// to send out postcard. For other methods, it should be the same as the one
  /// that is passed to GetVerificationOptions. INVALID_ARGUMENT will be thrown
  /// if it is set for other types of business locations.
  ///
  /// Optional.
  ServiceBusinessContext? context;

  /// The input for EMAIL method.
  ///
  /// Email address where the PIN should be sent to. An email address is
  /// accepted only if it is one of the addresses provided by
  /// FetchVerificationOptions. If the EmailVerificationData has
  /// is_user_name_editable set to true, the client may specify a different user
  /// name (local-part) but must match the domain name.
  ///
  /// Optional.
  core.String? emailAddress;

  /// The BCP 47 language code representing the language that is to be used for
  /// the verification process.
  ///
  /// Optional.
  core.String? languageCode;

  /// The input for ADDRESS method.
  ///
  /// Contact name the mail should be sent to.
  ///
  /// Optional.
  core.String? mailerContact;

  /// Verification method.
  ///
  /// Required.
  /// Possible string values are:
  /// - "VERIFICATION_METHOD_UNSPECIFIED" : Default value, will result in
  /// errors.
  /// - "ADDRESS" : Send a postcard with a verification PIN to a specific
  /// mailing address. The PIN is used to complete verification with Google.
  /// - "EMAIL" : Send an email with a verification PIN to a specific email
  /// address. The PIN is used to complete verification with Google.
  /// - "PHONE_CALL" : Make a phone call with a verification PIN to a specific
  /// phone number. The PIN is used to complete verification with Google.
  /// - "SMS" : Send an SMS with a verification PIN to a specific phone number.
  /// The PIN is used to complete verification with Google.
  /// - "AUTO" : Verify the location without additional user action. This option
  /// may not be available for all locations.
  /// - "VETTED_PARTNER" : Used for vetted
  /// [partners](https://support.google.com/business/answer/7674102). This
  /// option may not be available for all locations.
  core.String? method;

  /// The input for PHONE_CALL/SMS method The phone number that should be called
  /// or be sent SMS to.
  ///
  /// It must be one of the phone numbers in the eligible options.
  ///
  /// Optional.
  core.String? phoneNumber;

  /// The input for VETTED_PARTNER method available to select
  /// [partners.](https://support.google.com/business/answer/7674102) The input
  /// is not needed for a vetted account.
  ///
  /// Token that is associated to the location. Token that is associated to the
  /// location.
  ///
  /// Optional.
  VerificationToken? token;

  VerifyLocationRequest({
    this.context,
    this.emailAddress,
    this.languageCode,
    this.mailerContact,
    this.method,
    this.phoneNumber,
    this.token,
  });

  VerifyLocationRequest.fromJson(core.Map json_)
      : this(
          context: json_.containsKey('context')
              ? ServiceBusinessContext.fromJson(
                  json_['context'] as core.Map<core.String, core.dynamic>)
              : null,
          emailAddress: json_.containsKey('emailAddress')
              ? json_['emailAddress'] as core.String
              : null,
          languageCode: json_.containsKey('languageCode')
              ? json_['languageCode'] as core.String
              : null,
          mailerContact: json_.containsKey('mailerContact')
              ? json_['mailerContact'] as core.String
              : null,
          method: json_.containsKey('method')
              ? json_['method'] as core.String
              : null,
          phoneNumber: json_.containsKey('phoneNumber')
              ? json_['phoneNumber'] as core.String
              : null,
          token: json_.containsKey('token')
              ? VerificationToken.fromJson(
                  json_['token'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (context != null) 'context': context!,
        if (emailAddress != null) 'emailAddress': emailAddress!,
        if (languageCode != null) 'languageCode': languageCode!,
        if (mailerContact != null) 'mailerContact': mailerContact!,
        if (method != null) 'method': method!,
        if (phoneNumber != null) 'phoneNumber': phoneNumber!,
        if (token != null) 'token': token!,
      };
}

/// Response message for Verifications.VerifyLocation.
class VerifyLocationResponse {
  /// The created verification request.
  Verification? verification;

  VerifyLocationResponse({
    this.verification,
  });

  VerifyLocationResponse.fromJson(core.Map json_)
      : this(
          verification: json_.containsKey('verification')
              ? Verification.fromJson(
                  json_['verification'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (verification != null) 'verification': verification!,
      };
}

/// Response message for VoiceOfMerchant.GetVoiceOfMerchantState.
class VoiceOfMerchantState {
  /// The location fails to comply with our
  /// [guidelines](https://support.google.com/business/answer/3038177) and
  /// requires additional steps for reinstatement.
  ///
  /// To fix this issue, consult the
  /// [Help Center Article](https://support.google.com/business/answer/4569145).
  ComplyWithGuidelines? complyWithGuidelines;

  /// Indicates whether the location has the authority (ownership) over the
  /// business on Google.
  ///
  /// If true, another location cannot take over and become the dominant listing
  /// on Maps. However, edits will not become live unless Voice of Merchant is
  /// gained (i.e. has_voice_of_merchant is true).
  core.bool? hasBusinessAuthority;

  /// Indicates whether the location is in good standing and has control over
  /// the business on Google.
  ///
  /// Any edits made to the location will propagate to Maps after passing the
  /// review phase.
  core.bool? hasVoiceOfMerchant;

  /// This location duplicates another location that is in good standing.
  ///
  /// If you have access to the location in good standing, use that location's
  /// id to perform operations. Otherwise, request access from the current
  /// owner.
  ResolveOwnershipConflict? resolveOwnershipConflict;

  /// Start or continue the verification process.
  Verify? verify;

  /// Wait to gain Voice of Merchant.
  ///
  /// The location is under review for quality purposes.
  WaitForVoiceOfMerchant? waitForVoiceOfMerchant;

  VoiceOfMerchantState({
    this.complyWithGuidelines,
    this.hasBusinessAuthority,
    this.hasVoiceOfMerchant,
    this.resolveOwnershipConflict,
    this.verify,
    this.waitForVoiceOfMerchant,
  });

  VoiceOfMerchantState.fromJson(core.Map json_)
      : this(
          complyWithGuidelines: json_.containsKey('complyWithGuidelines')
              ? ComplyWithGuidelines.fromJson(json_['complyWithGuidelines']
                  as core.Map<core.String, core.dynamic>)
              : null,
          hasBusinessAuthority: json_.containsKey('hasBusinessAuthority')
              ? json_['hasBusinessAuthority'] as core.bool
              : null,
          hasVoiceOfMerchant: json_.containsKey('hasVoiceOfMerchant')
              ? json_['hasVoiceOfMerchant'] as core.bool
              : null,
          resolveOwnershipConflict:
              json_.containsKey('resolveOwnershipConflict')
                  ? ResolveOwnershipConflict.fromJson(
                      json_['resolveOwnershipConflict']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          verify: json_.containsKey('verify')
              ? Verify.fromJson(
                  json_['verify'] as core.Map<core.String, core.dynamic>)
              : null,
          waitForVoiceOfMerchant: json_.containsKey('waitForVoiceOfMerchant')
              ? WaitForVoiceOfMerchant.fromJson(json_['waitForVoiceOfMerchant']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (complyWithGuidelines != null)
          'complyWithGuidelines': complyWithGuidelines!,
        if (hasBusinessAuthority != null)
          'hasBusinessAuthority': hasBusinessAuthority!,
        if (hasVoiceOfMerchant != null)
          'hasVoiceOfMerchant': hasVoiceOfMerchant!,
        if (resolveOwnershipConflict != null)
          'resolveOwnershipConflict': resolveOwnershipConflict!,
        if (verify != null) 'verify': verify!,
        if (waitForVoiceOfMerchant != null)
          'waitForVoiceOfMerchant': waitForVoiceOfMerchant!,
      };
}

/// Indicates that the location will gain voice of merchant after passing
/// review.
typedef WaitForVoiceOfMerchant = $Empty;
