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

import '../src/empty.dart';
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
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/' + core.Uri.encodeFull('$location') + ':fetchVerificationOptions';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return FetchVerificationOptionsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + '/VoiceOfMerchantState';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return VoiceOfMerchantState.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':verify';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return VerifyLocationResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':complete';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return CompleteVerificationResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/verifications';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListVerificationsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1/verificationTokens:generate';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GenerateVerificationTokenResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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

  AddressVerificationData.fromJson(core.Map _json)
      : this(
          address: _json.containsKey('address')
              ? PostalAddress.fromJson(
                  _json['address'] as core.Map<core.String, core.dynamic>)
              : null,
          business: _json.containsKey('business')
              ? _json['business'] as core.String
              : null,
          expectedDeliveryDaysRegion:
              _json.containsKey('expectedDeliveryDaysRegion')
                  ? _json['expectedDeliveryDaysRegion'] as core.int
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (address != null) 'address': address!.toJson(),
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

  CompleteVerificationRequest.fromJson(core.Map _json)
      : this(
          pin: _json.containsKey('pin') ? _json['pin'] as core.String : null,
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

  CompleteVerificationResponse.fromJson(core.Map _json)
      : this(
          verification: _json.containsKey('verification')
              ? Verification.fromJson(
                  _json['verification'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (verification != null) 'verification': verification!.toJson(),
      };
}

/// Indicates that the location fails to comply with our
/// [guidelines](https://support.google.com/business/answer/3038177).
///
/// To fix this issue, consult the
/// [Help Center Article](https://support.google.com/business/answer/4569145).
typedef ComplyWithGuidelines = $Empty;

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

  EmailVerificationData.fromJson(core.Map _json)
      : this(
          domain: _json.containsKey('domain')
              ? _json['domain'] as core.String
              : null,
          isUserNameEditable: _json.containsKey('isUserNameEditable')
              ? _json['isUserNameEditable'] as core.bool
              : null,
          user: _json.containsKey('user') ? _json['user'] as core.String : null,
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

  FetchVerificationOptionsRequest.fromJson(core.Map _json)
      : this(
          context: _json.containsKey('context')
              ? ServiceBusinessContext.fromJson(
                  _json['context'] as core.Map<core.String, core.dynamic>)
              : null,
          languageCode: _json.containsKey('languageCode')
              ? _json['languageCode'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (context != null) 'context': context!.toJson(),
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

  FetchVerificationOptionsResponse.fromJson(core.Map _json)
      : this(
          options: _json.containsKey('options')
              ? (_json['options'] as core.List)
                  .map((value) => VerificationOption.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (options != null)
          'options': options!.map((value) => value.toJson()).toList(),
      };
}

/// Request message for Verifications.GenerateVerificationToken.
class GenerateVerificationTokenRequest {
  /// The target location.
  ///
  /// Required.
  Location? location;

  GenerateVerificationTokenRequest({
    this.location,
  });

  GenerateVerificationTokenRequest.fromJson(core.Map _json)
      : this(
          location: _json.containsKey('location')
              ? Location.fromJson(
                  _json['location'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (location != null) 'location': location!.toJson(),
      };
}

/// Response message for Verifications.GenerateVerificationToken.
class GenerateVerificationTokenResponse {
  /// The generated token to verify the location.
  VerificationToken? token;

  GenerateVerificationTokenResponse({
    this.token,
  });

  GenerateVerificationTokenResponse.fromJson(core.Map _json)
      : this(
          token: _json.containsKey('token')
              ? VerificationToken.fromJson(
                  _json['token'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (token != null) 'token': token!.toJson(),
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

  ListVerificationsResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          verifications: _json.containsKey('verifications')
              ? (_json['verifications'] as core.List)
                  .map((value) => Verification.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (verifications != null)
          'verifications':
              verifications!.map((value) => value.toJson()).toList(),
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

  Location.fromJson(core.Map _json)
      : this(
          address: _json.containsKey('address')
              ? PostalAddress.fromJson(
                  _json['address'] as core.Map<core.String, core.dynamic>)
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          primaryCategoryId: _json.containsKey('primaryCategoryId')
              ? _json['primaryCategoryId'] as core.String
              : null,
          primaryPhone: _json.containsKey('primaryPhone')
              ? _json['primaryPhone'] as core.String
              : null,
          websiteUri: _json.containsKey('websiteUri')
              ? _json['websiteUri'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (address != null) 'address': address!.toJson(),
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
/// process. Advice on address input / editing: - Use an i18n-ready address
/// widget such as https://github.com/google/libaddressinput) - Users should not
/// be presented with UI elements for input or editing of fields outside
/// countries where that field is used. For more guidance on how to use this
/// schema, please see: https://support.google.com/business/answer/6397478
class PostalAddress {
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

  PostalAddress({
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

  PostalAddress.fromJson(core.Map _json)
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

  ServiceBusinessContext.fromJson(core.Map _json)
      : this(
          address: _json.containsKey('address')
              ? PostalAddress.fromJson(
                  _json['address'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (address != null) 'address': address!.toJson(),
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

  Verification.fromJson(core.Map _json)
      : this(
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          method: _json.containsKey('method')
              ? _json['method'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
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

  VerificationOption.fromJson(core.Map _json)
      : this(
          addressData: _json.containsKey('addressData')
              ? AddressVerificationData.fromJson(
                  _json['addressData'] as core.Map<core.String, core.dynamic>)
              : null,
          emailData: _json.containsKey('emailData')
              ? EmailVerificationData.fromJson(
                  _json['emailData'] as core.Map<core.String, core.dynamic>)
              : null,
          phoneNumber: _json.containsKey('phoneNumber')
              ? _json['phoneNumber'] as core.String
              : null,
          verificationMethod: _json.containsKey('verificationMethod')
              ? _json['verificationMethod'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (addressData != null) 'addressData': addressData!.toJson(),
        if (emailData != null) 'emailData': emailData!.toJson(),
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

  VerificationToken.fromJson(core.Map _json)
      : this(
          tokenString: _json.containsKey('tokenString')
              ? _json['tokenString'] as core.String
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

  Verify.fromJson(core.Map _json)
      : this(
          hasPendingVerification: _json.containsKey('hasPendingVerification')
              ? _json['hasPendingVerification'] as core.bool
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

  VerifyLocationRequest.fromJson(core.Map _json)
      : this(
          context: _json.containsKey('context')
              ? ServiceBusinessContext.fromJson(
                  _json['context'] as core.Map<core.String, core.dynamic>)
              : null,
          emailAddress: _json.containsKey('emailAddress')
              ? _json['emailAddress'] as core.String
              : null,
          languageCode: _json.containsKey('languageCode')
              ? _json['languageCode'] as core.String
              : null,
          mailerContact: _json.containsKey('mailerContact')
              ? _json['mailerContact'] as core.String
              : null,
          method: _json.containsKey('method')
              ? _json['method'] as core.String
              : null,
          phoneNumber: _json.containsKey('phoneNumber')
              ? _json['phoneNumber'] as core.String
              : null,
          token: _json.containsKey('token')
              ? VerificationToken.fromJson(
                  _json['token'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (context != null) 'context': context!.toJson(),
        if (emailAddress != null) 'emailAddress': emailAddress!,
        if (languageCode != null) 'languageCode': languageCode!,
        if (mailerContact != null) 'mailerContact': mailerContact!,
        if (method != null) 'method': method!,
        if (phoneNumber != null) 'phoneNumber': phoneNumber!,
        if (token != null) 'token': token!.toJson(),
      };
}

/// Response message for Verifications.VerifyLocation.
class VerifyLocationResponse {
  /// The created verification request.
  Verification? verification;

  VerifyLocationResponse({
    this.verification,
  });

  VerifyLocationResponse.fromJson(core.Map _json)
      : this(
          verification: _json.containsKey('verification')
              ? Verification.fromJson(
                  _json['verification'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (verification != null) 'verification': verification!.toJson(),
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

  VoiceOfMerchantState.fromJson(core.Map _json)
      : this(
          complyWithGuidelines: _json.containsKey('complyWithGuidelines')
              ? ComplyWithGuidelines.fromJson(_json['complyWithGuidelines']
                  as core.Map<core.String, core.dynamic>)
              : null,
          hasBusinessAuthority: _json.containsKey('hasBusinessAuthority')
              ? _json['hasBusinessAuthority'] as core.bool
              : null,
          hasVoiceOfMerchant: _json.containsKey('hasVoiceOfMerchant')
              ? _json['hasVoiceOfMerchant'] as core.bool
              : null,
          resolveOwnershipConflict:
              _json.containsKey('resolveOwnershipConflict')
                  ? ResolveOwnershipConflict.fromJson(
                      _json['resolveOwnershipConflict']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          verify: _json.containsKey('verify')
              ? Verify.fromJson(
                  _json['verify'] as core.Map<core.String, core.dynamic>)
              : null,
          waitForVoiceOfMerchant: _json.containsKey('waitForVoiceOfMerchant')
              ? WaitForVoiceOfMerchant.fromJson(_json['waitForVoiceOfMerchant']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (complyWithGuidelines != null)
          'complyWithGuidelines': complyWithGuidelines!.toJson(),
        if (hasBusinessAuthority != null)
          'hasBusinessAuthority': hasBusinessAuthority!,
        if (hasVoiceOfMerchant != null)
          'hasVoiceOfMerchant': hasVoiceOfMerchant!,
        if (resolveOwnershipConflict != null)
          'resolveOwnershipConflict': resolveOwnershipConflict!.toJson(),
        if (verify != null) 'verify': verify!.toJson(),
        if (waitForVoiceOfMerchant != null)
          'waitForVoiceOfMerchant': waitForVoiceOfMerchant!.toJson(),
      };
}

/// Indicates that the location will gain voice of merchant after passing
/// review.
typedef WaitForVoiceOfMerchant = $Empty;
