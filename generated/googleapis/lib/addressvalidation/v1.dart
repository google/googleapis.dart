// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_string_interpolations

/// Address Validation API - v1
///
/// The Address Validation API allows developers to verify the accuracy of
/// addresses. Given an address, it returns information about the correctness of
/// the components of the parsed address, a geocode, and a verdict on the
/// deliverability of the parsed address.
///
/// For more information, see
/// <https://developers.google.com/maps/documentation/addressvalidation>
///
/// Create an instance of [AddressValidationApi] to access these resources:
///
/// - [V1Resource]
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

/// The Address Validation API allows developers to verify the accuracy of
/// addresses.
///
/// Given an address, it returns information about the correctness of the
/// components of the parsed address, a geocode, and a verdict on the
/// deliverability of the parsed address.
class AddressValidationApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  /// Private Service:
  /// https://www.googleapis.com/auth/maps-platform.addressvalidation
  static const mapsPlatformAddressvalidationScope =
      'https://www.googleapis.com/auth/maps-platform.addressvalidation';

  final commons.ApiRequester _requester;

  V1Resource get v1 => V1Resource(_requester);

  AddressValidationApi(http.Client client,
      {core.String rootUrl = 'https://addressvalidation.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class V1Resource {
  final commons.ApiRequester _requester;

  V1Resource(commons.ApiRequester client) : _requester = client;

  /// Feedback about the outcome of the sequence of validation attempts.
  ///
  /// This should be the last call made after a sequence of validation calls for
  /// the same address, and should be called once the transaction is concluded.
  /// This should only be sent once for the sequence of `ValidateAddress`
  /// requests needed to validate an address fully.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleMapsAddressvalidationV1ProvideValidationFeedbackResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleMapsAddressvalidationV1ProvideValidationFeedbackResponse>
      provideValidationFeedback(
    GoogleMapsAddressvalidationV1ProvideValidationFeedbackRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1:provideValidationFeedback';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleMapsAddressvalidationV1ProvideValidationFeedbackResponse
        .fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Validates an address.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleMapsAddressvalidationV1ValidateAddressResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleMapsAddressvalidationV1ValidateAddressResponse>
      validateAddress(
    GoogleMapsAddressvalidationV1ValidateAddressRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1:validateAddress';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleMapsAddressvalidationV1ValidateAddressResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

/// A latitude-longitude viewport, represented as two diagonally opposite `low`
/// and `high` points.
///
/// A viewport is considered a closed region, i.e. it includes its boundary. The
/// latitude bounds must range between -90 to 90 degrees inclusive, and the
/// longitude bounds must range between -180 to 180 degrees inclusive. Various
/// cases include: - If `low` = `high`, the viewport consists of that single
/// point. - If `low.longitude` \> `high.longitude`, the longitude range is
/// inverted (the viewport crosses the 180 degree longitude line). - If
/// `low.longitude` = -180 degrees and `high.longitude` = 180 degrees, the
/// viewport includes all longitudes. - If `low.longitude` = 180 degrees and
/// `high.longitude` = -180 degrees, the longitude range is empty. - If
/// `low.latitude` \> `high.latitude`, the latitude range is empty. Both `low`
/// and `high` must be populated, and the represented box cannot be empty (as
/// specified by the definitions above). An empty viewport will result in an
/// error. For example, this viewport fully encloses New York City: { "low": {
/// "latitude": 40.477398, "longitude": -74.259087 }, "high": { "latitude":
/// 40.91618, "longitude": -73.70018 } }
class GoogleGeoTypeViewport {
  /// The high point of the viewport.
  ///
  /// Required.
  GoogleTypeLatLng? high;

  /// The low point of the viewport.
  ///
  /// Required.
  GoogleTypeLatLng? low;

  GoogleGeoTypeViewport({
    this.high,
    this.low,
  });

  GoogleGeoTypeViewport.fromJson(core.Map json_)
      : this(
          high: json_.containsKey('high')
              ? GoogleTypeLatLng.fromJson(
                  json_['high'] as core.Map<core.String, core.dynamic>)
              : null,
          low: json_.containsKey('low')
              ? GoogleTypeLatLng.fromJson(
                  json_['low'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (high != null) 'high': high!,
        if (low != null) 'low': low!,
      };
}

/// Details of the post-processed address.
///
/// Post-processing includes correcting misspelled parts of the address,
/// replacing incorrect parts, and inferring missing parts.
class GoogleMapsAddressvalidationV1Address {
  /// Unordered list.
  ///
  /// The individual address components of the formatted and corrected address,
  /// along with validation information. This provides information on the
  /// validation status of the individual components. Address components are not
  /// ordered in a particular way. Do not make any assumptions on the ordering
  /// of the address components in the list.
  core.List<GoogleMapsAddressvalidationV1AddressComponent>? addressComponents;

  /// The post-processed address, formatted as a single-line address following
  /// the address formatting rules of the region where the address is located.
  core.String? formattedAddress;

  /// The types of components that were expected to be present in a correctly
  /// formatted mailing address but were not found in the input AND could not be
  /// inferred.
  ///
  /// Components of this type are not present in `formatted_address`,
  /// `postal_address`, or `address_components`. An example might be
  /// `['street_number', 'route']` for an input like "Boulder, Colorado, 80301,
  /// USA". The list of possible types can be found
  /// [here](https://developers.google.com/maps/documentation/geocoding/requests-geocoding#Types).
  core.List<core.String>? missingComponentTypes;

  /// The post-processed address represented as a postal address.
  GoogleTypePostalAddress? postalAddress;

  /// The types of the components that are present in the `address_components`
  /// but could not be confirmed to be correct.
  ///
  /// This field is provided for the sake of convenience: its contents are
  /// equivalent to iterating through the `address_components` to find the types
  /// of all the components where the confirmation_level is not CONFIRMED or the
  /// inferred flag is not set to `true`. The list of possible types can be
  /// found
  /// [here](https://developers.google.com/maps/documentation/geocoding/requests-geocoding#Types).
  core.List<core.String>? unconfirmedComponentTypes;

  /// Any tokens in the input that could not be resolved.
  ///
  /// This might be an input that was not recognized as a valid part of an
  /// address (for example in an input like "123235253253 Main St, San
  /// Francisco, CA, 94105", the unresolved tokens may look like
  /// `["123235253253"]` since that does not look like a valid street number.
  core.List<core.String>? unresolvedTokens;

  GoogleMapsAddressvalidationV1Address({
    this.addressComponents,
    this.formattedAddress,
    this.missingComponentTypes,
    this.postalAddress,
    this.unconfirmedComponentTypes,
    this.unresolvedTokens,
  });

  GoogleMapsAddressvalidationV1Address.fromJson(core.Map json_)
      : this(
          addressComponents: json_.containsKey('addressComponents')
              ? (json_['addressComponents'] as core.List)
                  .map((value) =>
                      GoogleMapsAddressvalidationV1AddressComponent.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          formattedAddress: json_.containsKey('formattedAddress')
              ? json_['formattedAddress'] as core.String
              : null,
          missingComponentTypes: json_.containsKey('missingComponentTypes')
              ? (json_['missingComponentTypes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          postalAddress: json_.containsKey('postalAddress')
              ? GoogleTypePostalAddress.fromJson(
                  json_['postalAddress'] as core.Map<core.String, core.dynamic>)
              : null,
          unconfirmedComponentTypes:
              json_.containsKey('unconfirmedComponentTypes')
                  ? (json_['unconfirmedComponentTypes'] as core.List)
                      .map((value) => value as core.String)
                      .toList()
                  : null,
          unresolvedTokens: json_.containsKey('unresolvedTokens')
              ? (json_['unresolvedTokens'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (addressComponents != null) 'addressComponents': addressComponents!,
        if (formattedAddress != null) 'formattedAddress': formattedAddress!,
        if (missingComponentTypes != null)
          'missingComponentTypes': missingComponentTypes!,
        if (postalAddress != null) 'postalAddress': postalAddress!,
        if (unconfirmedComponentTypes != null)
          'unconfirmedComponentTypes': unconfirmedComponentTypes!,
        if (unresolvedTokens != null) 'unresolvedTokens': unresolvedTokens!,
      };
}

/// Represents an address component, such as a street, city, or state.
class GoogleMapsAddressvalidationV1AddressComponent {
  /// The name for this component.
  GoogleMapsAddressvalidationV1ComponentName? componentName;

  /// The type of the address component.
  ///
  /// See \[Table 2: Additional types returned by the Places
  /// service\](https://developers.google.com/places/web-service/supported_types#table2)
  /// for a list of possible types.
  core.String? componentType;

  /// Indicates the level of certainty that we have that the component is
  /// correct.
  /// Possible string values are:
  /// - "CONFIRMATION_LEVEL_UNSPECIFIED" : Default value. This value is unused.
  /// - "CONFIRMED" : We were able to verify that this component exists and
  /// makes sense in the context of the rest of the address.
  /// - "UNCONFIRMED_BUT_PLAUSIBLE" : This component could not be confirmed, but
  /// it is plausible that it exists. For example, a street number within a
  /// known valid range of numbers on a street where specific house numbers are
  /// not known.
  /// - "UNCONFIRMED_AND_SUSPICIOUS" : This component was not confirmed and is
  /// likely to be wrong. For example, a neighborhood that does not fit the rest
  /// of the address.
  core.String? confirmationLevel;

  /// Indicates that the component was not part of the input, but we inferred it
  /// for the address location and believe it should be provided for a complete
  /// address.
  core.bool? inferred;

  /// Indicates the name of the component was replaced with a completely
  /// different one, for example a wrong postal code being replaced with one
  /// that is correct for the address.
  ///
  /// This is not a cosmetic change, the input component has been changed to a
  /// different one.
  core.bool? replaced;

  /// Indicates a correction to a misspelling in the component name.
  ///
  /// The API does not always flag changes from one spelling variant to another,
  /// such as when changing "centre" to "center". It also does not always flag
  /// common misspellings, such as when changing "Amphitheater Pkwy" to
  /// "Amphitheatre Pkwy".
  core.bool? spellCorrected;

  /// Indicates an address component that is not expected to be present in a
  /// postal address for the given region.
  ///
  /// We have retained it only because it was part of the input.
  core.bool? unexpected;

  GoogleMapsAddressvalidationV1AddressComponent({
    this.componentName,
    this.componentType,
    this.confirmationLevel,
    this.inferred,
    this.replaced,
    this.spellCorrected,
    this.unexpected,
  });

  GoogleMapsAddressvalidationV1AddressComponent.fromJson(core.Map json_)
      : this(
          componentName: json_.containsKey('componentName')
              ? GoogleMapsAddressvalidationV1ComponentName.fromJson(
                  json_['componentName'] as core.Map<core.String, core.dynamic>)
              : null,
          componentType: json_.containsKey('componentType')
              ? json_['componentType'] as core.String
              : null,
          confirmationLevel: json_.containsKey('confirmationLevel')
              ? json_['confirmationLevel'] as core.String
              : null,
          inferred: json_.containsKey('inferred')
              ? json_['inferred'] as core.bool
              : null,
          replaced: json_.containsKey('replaced')
              ? json_['replaced'] as core.bool
              : null,
          spellCorrected: json_.containsKey('spellCorrected')
              ? json_['spellCorrected'] as core.bool
              : null,
          unexpected: json_.containsKey('unexpected')
              ? json_['unexpected'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (componentName != null) 'componentName': componentName!,
        if (componentType != null) 'componentType': componentType!,
        if (confirmationLevel != null) 'confirmationLevel': confirmationLevel!,
        if (inferred != null) 'inferred': inferred!,
        if (replaced != null) 'replaced': replaced!,
        if (spellCorrected != null) 'spellCorrected': spellCorrected!,
        if (unexpected != null) 'unexpected': unexpected!,
      };
}

/// The metadata for the address.
///
/// `metadata` is not guaranteed to be fully populated for every address sent to
/// the Address Validation API.
class GoogleMapsAddressvalidationV1AddressMetadata {
  /// Indicates that this is the address of a business.
  ///
  /// If unset, indicates that the value is unknown.
  core.bool? business;

  /// Indicates that the address of a PO box.
  ///
  /// If unset, indicates that the value is unknown.
  core.bool? poBox;

  /// Indicates that this is the address of a residence.
  ///
  /// If unset, indicates that the value is unknown.
  core.bool? residential;

  GoogleMapsAddressvalidationV1AddressMetadata({
    this.business,
    this.poBox,
    this.residential,
  });

  GoogleMapsAddressvalidationV1AddressMetadata.fromJson(core.Map json_)
      : this(
          business: json_.containsKey('business')
              ? json_['business'] as core.bool
              : null,
          poBox:
              json_.containsKey('poBox') ? json_['poBox'] as core.bool : null,
          residential: json_.containsKey('residential')
              ? json_['residential'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (business != null) 'business': business!,
        if (poBox != null) 'poBox': poBox!,
        if (residential != null) 'residential': residential!,
      };
}

/// A wrapper for the name of the component.
class GoogleMapsAddressvalidationV1ComponentName {
  /// The BCP-47 language code.
  ///
  /// This will not be present if the component name is not associated with a
  /// language, such as a street number.
  core.String? languageCode;

  /// The name text.
  ///
  /// For example, "5th Avenue" for a street name or "1253" for a street number.
  core.String? text;

  GoogleMapsAddressvalidationV1ComponentName({
    this.languageCode,
    this.text,
  });

  GoogleMapsAddressvalidationV1ComponentName.fromJson(core.Map json_)
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

/// Contains information about the place the input was geocoded to.
class GoogleMapsAddressvalidationV1Geocode {
  /// The bounds of the geocoded place.
  GoogleGeoTypeViewport? bounds;

  /// The size of the geocoded place, in meters.
  ///
  /// This is another measure of the coarseness of the geocoded location, but in
  /// physical size rather than in semantic meaning.
  core.double? featureSizeMeters;

  /// The geocoded location of the input.
  ///
  /// Using place IDs is preferred over using addresses, latitude/longitude
  /// coordinates, or plus codes. Using coordinates when routing or calculating
  /// driving directions will always result in the point being snapped to the
  /// road nearest to those coordinates. This may not be a road that will
  /// quickly or safely lead to the destination and may not be near an access
  /// point to the property. Additionally, when a location is reverse geocoded,
  /// there is no guarantee that the returned address will match the original.
  GoogleTypeLatLng? location;

  /// The PlaceID of the place this input geocodes to.
  ///
  /// For more information about Place IDs see
  /// [here](https://developers.google.com/maps/documentation/places/web-service/place-id).
  core.String? placeId;

  /// The type(s) of place that the input geocoded to.
  ///
  /// For example, `['locality', 'political']`. The full list of types can be
  /// found
  /// [here](https://developers.google.com/maps/documentation/geocoding/requests-geocoding#Types).
  core.List<core.String>? placeTypes;

  /// The plus code corresponding to the `location`.
  GoogleMapsAddressvalidationV1PlusCode? plusCode;

  GoogleMapsAddressvalidationV1Geocode({
    this.bounds,
    this.featureSizeMeters,
    this.location,
    this.placeId,
    this.placeTypes,
    this.plusCode,
  });

  GoogleMapsAddressvalidationV1Geocode.fromJson(core.Map json_)
      : this(
          bounds: json_.containsKey('bounds')
              ? GoogleGeoTypeViewport.fromJson(
                  json_['bounds'] as core.Map<core.String, core.dynamic>)
              : null,
          featureSizeMeters: json_.containsKey('featureSizeMeters')
              ? (json_['featureSizeMeters'] as core.num).toDouble()
              : null,
          location: json_.containsKey('location')
              ? GoogleTypeLatLng.fromJson(
                  json_['location'] as core.Map<core.String, core.dynamic>)
              : null,
          placeId: json_.containsKey('placeId')
              ? json_['placeId'] as core.String
              : null,
          placeTypes: json_.containsKey('placeTypes')
              ? (json_['placeTypes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          plusCode: json_.containsKey('plusCode')
              ? GoogleMapsAddressvalidationV1PlusCode.fromJson(
                  json_['plusCode'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bounds != null) 'bounds': bounds!,
        if (featureSizeMeters != null) 'featureSizeMeters': featureSizeMeters!,
        if (location != null) 'location': location!,
        if (placeId != null) 'placeId': placeId!,
        if (placeTypes != null) 'placeTypes': placeTypes!,
        if (plusCode != null) 'plusCode': plusCode!,
      };
}

/// Preview: This feature is in Preview (pre-GA).
///
/// Pre-GA products and features might have limited support, and changes to
/// pre-GA products and features might not be compatible with other pre-GA
/// versions. Pre-GA Offerings are covered by the
/// [Google Maps Platform Service Specific Terms](https://cloud.google.com/maps-platform/terms/maps-service-terms).
/// For more information, see the
/// [launch stage descriptions](https://developers.google.com/maps/launch-stages).
/// Enables the Address Validation API to include additional information in the
/// response.
class GoogleMapsAddressvalidationV1LanguageOptions {
  /// Preview: Return a \[google.maps.addressvalidation.v1.Address\] in English.
  ///
  /// See
  /// \[google.maps.addressvalidation.v1.ValidationResult.english_latin_address\]
  /// for details.
  core.bool? returnEnglishLatinAddress;

  GoogleMapsAddressvalidationV1LanguageOptions({
    this.returnEnglishLatinAddress,
  });

  GoogleMapsAddressvalidationV1LanguageOptions.fromJson(core.Map json_)
      : this(
          returnEnglishLatinAddress:
              json_.containsKey('returnEnglishLatinAddress')
                  ? json_['returnEnglishLatinAddress'] as core.bool
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (returnEnglishLatinAddress != null)
          'returnEnglishLatinAddress': returnEnglishLatinAddress!,
      };
}

/// Plus code (http://plus.codes) is a location reference with two formats:
/// global code defining a 14mx14m (1/8000th of a degree) or smaller rectangle,
/// and compound code, replacing the prefix with a reference location.
typedef GoogleMapsAddressvalidationV1PlusCode = $PlusCode;

/// The request for sending validation feedback.
class GoogleMapsAddressvalidationV1ProvideValidationFeedbackRequest {
  /// The outcome of the sequence of validation attempts.
  ///
  /// If this field is set to `VALIDATION_CONCLUSION_UNSPECIFIED`, an
  /// `INVALID_ARGUMENT` error will be returned.
  ///
  /// Required.
  /// Possible string values are:
  /// - "VALIDATION_CONCLUSION_UNSPECIFIED" : This value is unused. If the
  /// `ProvideValidationFeedbackRequest.conclusion` field is set to
  /// `VALIDATION_CONCLUSION_UNSPECIFIED`, an `INVALID_ARGUMENT` error will be
  /// returned.
  /// - "VALIDATED_VERSION_USED" : The version of the address returned by the
  /// Address Validation API was used for the transaction.
  /// - "USER_VERSION_USED" : The version of the address provided by the user
  /// was used for the transaction
  /// - "UNVALIDATED_VERSION_USED" : A version of the address that was entered
  /// after the last validation attempt but that was not re-validated was used
  /// for the transaction.
  /// - "UNUSED" : The transaction was abandoned and the address was not used.
  core.String? conclusion;

  /// The ID of the response that this feedback is for.
  ///
  /// This should be the response_id from the first response in a series of
  /// address validation attempts.
  ///
  /// Required.
  core.String? responseId;

  GoogleMapsAddressvalidationV1ProvideValidationFeedbackRequest({
    this.conclusion,
    this.responseId,
  });

  GoogleMapsAddressvalidationV1ProvideValidationFeedbackRequest.fromJson(
      core.Map json_)
      : this(
          conclusion: json_.containsKey('conclusion')
              ? json_['conclusion'] as core.String
              : null,
          responseId: json_.containsKey('responseId')
              ? json_['responseId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (conclusion != null) 'conclusion': conclusion!,
        if (responseId != null) 'responseId': responseId!,
      };
}

/// The response for validation feedback.
///
/// The response is empty if the feedback is sent successfully.
typedef GoogleMapsAddressvalidationV1ProvideValidationFeedbackResponse = $Empty;

/// USPS representation of a US address.
class GoogleMapsAddressvalidationV1UspsAddress {
  /// City name.
  core.String? city;

  /// City + state + postal code.
  core.String? cityStateZipAddressLine;

  /// Firm name.
  core.String? firm;

  /// First address line.
  core.String? firstAddressLine;

  /// Second address line.
  core.String? secondAddressLine;

  /// 2 letter state code.
  core.String? state;

  /// Puerto Rican urbanization name.
  core.String? urbanization;

  /// Postal code e.g. 10009.
  core.String? zipCode;

  /// 4-digit postal code extension e.g. 5023.
  core.String? zipCodeExtension;

  GoogleMapsAddressvalidationV1UspsAddress({
    this.city,
    this.cityStateZipAddressLine,
    this.firm,
    this.firstAddressLine,
    this.secondAddressLine,
    this.state,
    this.urbanization,
    this.zipCode,
    this.zipCodeExtension,
  });

  GoogleMapsAddressvalidationV1UspsAddress.fromJson(core.Map json_)
      : this(
          city: json_.containsKey('city') ? json_['city'] as core.String : null,
          cityStateZipAddressLine: json_.containsKey('cityStateZipAddressLine')
              ? json_['cityStateZipAddressLine'] as core.String
              : null,
          firm: json_.containsKey('firm') ? json_['firm'] as core.String : null,
          firstAddressLine: json_.containsKey('firstAddressLine')
              ? json_['firstAddressLine'] as core.String
              : null,
          secondAddressLine: json_.containsKey('secondAddressLine')
              ? json_['secondAddressLine'] as core.String
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          urbanization: json_.containsKey('urbanization')
              ? json_['urbanization'] as core.String
              : null,
          zipCode: json_.containsKey('zipCode')
              ? json_['zipCode'] as core.String
              : null,
          zipCodeExtension: json_.containsKey('zipCodeExtension')
              ? json_['zipCodeExtension'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (city != null) 'city': city!,
        if (cityStateZipAddressLine != null)
          'cityStateZipAddressLine': cityStateZipAddressLine!,
        if (firm != null) 'firm': firm!,
        if (firstAddressLine != null) 'firstAddressLine': firstAddressLine!,
        if (secondAddressLine != null) 'secondAddressLine': secondAddressLine!,
        if (state != null) 'state': state!,
        if (urbanization != null) 'urbanization': urbanization!,
        if (zipCode != null) 'zipCode': zipCode!,
        if (zipCodeExtension != null) 'zipCodeExtension': zipCodeExtension!,
      };
}

/// The USPS data for the address.
///
/// `uspsData` is not guaranteed to be fully populated for every US or PR
/// address sent to the Address Validation API. It's recommended to integrate
/// the backup address fields in the response if you utilize uspsData as the
/// primary part of the response.
class GoogleMapsAddressvalidationV1UspsData {
  /// Abbreviated city.
  core.String? abbreviatedCity;

  /// Type of the address record that matches the input address.
  ///
  /// * `F`: FIRM. This is a match to a Firm Record, which is the finest level
  /// of match available for an address. * `G`: GENERAL DELIVERY. This is a
  /// match to a General Delivery record. * `H`: BUILDING / APARTMENT. This is a
  /// match to a Building or Apartment record. * `P`: POST OFFICE BOX. This is a
  /// match to a Post Office Box. * `R`: RURAL ROUTE or HIGHWAY CONTRACT: This
  /// is a match to either a Rural Route or a Highway Contract record, both of
  /// which may have associated Box Number ranges. * `S`: STREET RECORD: This is
  /// a match to a Street record containing a valid primary number range.
  core.String? addressRecordType;

  /// The carrier route code.
  ///
  /// A four character code consisting of a one letter prefix and a three digit
  /// route designator. Prefixes: * `C`: Carrier route (or city route) * `R`:
  /// Rural route * `H`: Highway Contract Route * `B`: Post Office Box Section *
  /// `G`: General delivery unit
  core.String? carrierRoute;

  /// Carrier route rate sort indicator.
  core.String? carrierRouteIndicator;

  /// Indicator that the request has been CASS processed.
  core.bool? cassProcessed;

  /// County name.
  core.String? county;

  /// Indicator that a default address was found, but more specific addresses
  /// exists.
  core.bool? defaultAddress;

  /// The delivery point check digit.
  ///
  /// This number is added to the end of the delivery_point_barcode for
  /// mechanically scanned mail. Adding all the digits of the
  /// delivery_point_barcode, delivery_point_check_digit, postal code, and ZIP+4
  /// together should yield a number divisible by 10.
  core.String? deliveryPointCheckDigit;

  /// 2 digit delivery point code
  core.String? deliveryPointCode;

  /// Indicates if the address is a CMRA (Commercial Mail Receiving Agency)--a
  /// private business receiving mail for clients.
  ///
  /// Returns a single character. * `Y`: The address is a CMRA * `N`: The
  /// address is not a CMRA
  core.String? dpvCmra;

  /// The possible values for DPV confirmation.
  ///
  /// Returns a single character or returns no value. * `N`: Primary and any
  /// secondary number information failed to DPV confirm. * `D`: Address was DPV
  /// confirmed for the primary number only, and the secondary number
  /// information was missing. * `S`: Address was DPV confirmed for the primary
  /// number only, and the secondary number information was present but not
  /// confirmed. * `Y`: Address was DPV confirmed for primary and any secondary
  /// numbers. * Empty: If the response does not contain a `dpv_confirmation`
  /// value, the address was not submitted for DPV confirmation.
  core.String? dpvConfirmation;

  /// Flag indicates addresses where USPS cannot knock on a door to deliver
  /// mail.
  ///
  /// Returns a single character. * `Y`: The door is not accessible. * `N`: No
  /// indication the door is not accessible.
  core.String? dpvDoorNotAccessible;

  /// Flag indicates mail is delivered to a single receptable at a site.
  ///
  /// Returns a single character. * `Y`: The mail is delivered to a single
  /// receptable at a site. * `N`: The mail is not delivered to a single
  /// receptable at a site.
  core.String? dpvDrop;

  /// Indicates that more than one DPV return code is valid for the address.
  ///
  /// Returns a single character. * `Y`: Address was DPV confirmed for primary
  /// and any secondary numbers. * `N`: Primary and any secondary number
  /// information failed to DPV confirm. * `S`: Address was DPV confirmed for
  /// the primary number only, and the secondary number information was present
  /// by not confirmed, or a single trailing alpha on a primary number was
  /// dropped to make a DPV match and secondary information required. * `D`:
  /// Address was DPV confirmed for the primary number only, and the secondary
  /// number information was missing. * `R`: Address confirmed but assigned to
  /// phantom route R777 and R779 and USPS delivery is not provided.
  core.String? dpvEnhancedDeliveryCode;

  /// The footnotes from delivery point validation.
  ///
  /// Multiple footnotes may be strung together in the same string. * `AA`:
  /// Input address matched to the ZIP+4 file * `A1`: Input address was not
  /// matched to the ZIP+4 file * `BB`: Matched to DPV (all components) * `CC`:
  /// Secondary number not matched and not required * `C1`: Secondary number not
  /// matched but required * `N1`: High-rise address missing secondary number *
  /// `M1`: Primary number missing * `M3`: Primary number invalid * `P1`: Input
  /// address PO, RR or HC box number missing * `P3`: Input address PO, RR, or
  /// HC Box number invalid * `F1`: Input address matched to a military address
  /// * `G1`: Input address matched to a general delivery address * `U1`: Input
  /// address matched to a unique ZIP code * `PB`: Input address matched to PBSA
  /// record * `RR`: DPV confirmed address with PMB information * `R1`: DPV
  /// confirmed address without PMB information * `R7`: Carrier Route R777 or
  /// R779 record * `IA`: Informed Address identified * `TA`: Primary number
  /// matched by dropping a trailing alpha
  core.String? dpvFootnote;

  /// Flag indicates door is accessible, but package will not be left due to
  /// security concerns.
  ///
  /// Returns a single character. * `Y`: The package will not be left due to
  /// security concerns. * `N`: No indication the package will not be left due
  /// to security concerns.
  core.String? dpvNoSecureLocation;

  /// Is this a no stat address or an active address? No stat addresses are ones
  /// which are not continuously occupied or addresses that the USPS does not
  /// service.
  ///
  /// Returns a single character. * `Y`: The address is not active * `N`: The
  /// address is active
  core.String? dpvNoStat;

  /// Indicates the NoStat type.
  ///
  /// Returns a reason code as int. * `1`: IDA (Internal Drop Address) –
  /// Addresses that do not receive mail directly from the USPS but are
  /// delivered to a drop address that services them. * `2`: CDS - Addresses
  /// that have not yet become deliverable. For example, a new subdivision where
  /// lots and primary numbers have been determined, but no structure exists yet
  /// for occupancy. * `3`: Collision - Addresses that do not actually DPV
  /// confirm. * `4`: CMZ (College, Military and Other Types) - ZIP + 4 records
  /// USPS has incorporated into the data. * `5`: Regular - Indicates addresses
  /// not receiving delivery and the addresses are not counted as possible
  /// deliveries. * `6`: Secondary Required - The address requires secondary
  /// information.
  core.int? dpvNoStatReasonCode;

  /// Flag indicates mail delivery is not performed every day of the week.
  ///
  /// Returns a single character. * `Y`: The mail delivery is not performed
  /// every day of the week. * `N`: No indication the mail delivery is not
  /// performed every day of the week.
  core.String? dpvNonDeliveryDays;

  /// Integer identifying non-delivery days.
  ///
  /// It can be interrogated using bit flags: 0x40 – Sunday is a non-delivery
  /// day 0x20 – Monday is a non-delivery day 0x10 – Tuesday is a non-delivery
  /// day 0x08 – Wednesday is a non-delivery day 0x04 – Thursday is a
  /// non-delivery day 0x02 – Friday is a non-delivery day 0x01 – Saturday is a
  /// non-delivery day
  core.int? dpvNonDeliveryDaysValues;

  /// Indicates the address was matched to PBSA record.
  ///
  /// Returns a single character. * `Y`: The address was matched to PBSA record.
  /// * `N`: The address was not matched to PBSA record.
  core.String? dpvPbsa;

  /// Indicates that mail is not delivered to the street address.
  ///
  /// Returns a single character. * `Y`: The mail is not delivered to the street
  /// address. * `N`: The mail is delivered to the street address.
  core.String? dpvThrowback;

  /// Is this place vacant? Returns a single character.
  ///
  /// * `Y`: The address is vacant * `N`: The address is not vacant
  core.String? dpvVacant;

  /// eLOT Ascending/Descending Flag (A/D).
  core.String? elotFlag;

  /// Enhanced Line of Travel (eLOT) number.
  core.String? elotNumber;

  /// Error message for USPS data retrieval.
  ///
  /// This is populated when USPS processing is suspended because of the
  /// detection of artificially created addresses. The USPS data fields might
  /// not be populated when this error is present.
  core.String? errorMessage;

  /// The delivery address is matchable, but the EWS file indicates that an
  /// exact match will be available soon.
  core.bool? ewsNoMatch;

  /// FIPS county code.
  core.String? fipsCountyCode;

  /// LACSLink indicator.
  core.String? lacsLinkIndicator;

  /// LACSLink return code.
  core.String? lacsLinkReturnCode;

  /// PMB (Private Mail Box) unit designator.
  core.String? pmbDesignator;

  /// PMB (Private Mail Box) number;
  core.String? pmbNumber;

  /// PO Box only postal code.
  core.bool? poBoxOnlyPostalCode;

  /// Main post office city.
  core.String? postOfficeCity;

  /// Main post office state.
  core.String? postOfficeState;

  /// USPS standardized address.
  GoogleMapsAddressvalidationV1UspsAddress? standardizedAddress;

  /// Footnotes from matching a street or highrise record to suite information.
  ///
  /// If business name match is found, the secondary number is returned. * `A`:
  /// SuiteLink record match, business address improved. * `00`: No match,
  /// business address is not improved.
  core.String? suitelinkFootnote;

  GoogleMapsAddressvalidationV1UspsData({
    this.abbreviatedCity,
    this.addressRecordType,
    this.carrierRoute,
    this.carrierRouteIndicator,
    this.cassProcessed,
    this.county,
    this.defaultAddress,
    this.deliveryPointCheckDigit,
    this.deliveryPointCode,
    this.dpvCmra,
    this.dpvConfirmation,
    this.dpvDoorNotAccessible,
    this.dpvDrop,
    this.dpvEnhancedDeliveryCode,
    this.dpvFootnote,
    this.dpvNoSecureLocation,
    this.dpvNoStat,
    this.dpvNoStatReasonCode,
    this.dpvNonDeliveryDays,
    this.dpvNonDeliveryDaysValues,
    this.dpvPbsa,
    this.dpvThrowback,
    this.dpvVacant,
    this.elotFlag,
    this.elotNumber,
    this.errorMessage,
    this.ewsNoMatch,
    this.fipsCountyCode,
    this.lacsLinkIndicator,
    this.lacsLinkReturnCode,
    this.pmbDesignator,
    this.pmbNumber,
    this.poBoxOnlyPostalCode,
    this.postOfficeCity,
    this.postOfficeState,
    this.standardizedAddress,
    this.suitelinkFootnote,
  });

  GoogleMapsAddressvalidationV1UspsData.fromJson(core.Map json_)
      : this(
          abbreviatedCity: json_.containsKey('abbreviatedCity')
              ? json_['abbreviatedCity'] as core.String
              : null,
          addressRecordType: json_.containsKey('addressRecordType')
              ? json_['addressRecordType'] as core.String
              : null,
          carrierRoute: json_.containsKey('carrierRoute')
              ? json_['carrierRoute'] as core.String
              : null,
          carrierRouteIndicator: json_.containsKey('carrierRouteIndicator')
              ? json_['carrierRouteIndicator'] as core.String
              : null,
          cassProcessed: json_.containsKey('cassProcessed')
              ? json_['cassProcessed'] as core.bool
              : null,
          county: json_.containsKey('county')
              ? json_['county'] as core.String
              : null,
          defaultAddress: json_.containsKey('defaultAddress')
              ? json_['defaultAddress'] as core.bool
              : null,
          deliveryPointCheckDigit: json_.containsKey('deliveryPointCheckDigit')
              ? json_['deliveryPointCheckDigit'] as core.String
              : null,
          deliveryPointCode: json_.containsKey('deliveryPointCode')
              ? json_['deliveryPointCode'] as core.String
              : null,
          dpvCmra: json_.containsKey('dpvCmra')
              ? json_['dpvCmra'] as core.String
              : null,
          dpvConfirmation: json_.containsKey('dpvConfirmation')
              ? json_['dpvConfirmation'] as core.String
              : null,
          dpvDoorNotAccessible: json_.containsKey('dpvDoorNotAccessible')
              ? json_['dpvDoorNotAccessible'] as core.String
              : null,
          dpvDrop: json_.containsKey('dpvDrop')
              ? json_['dpvDrop'] as core.String
              : null,
          dpvEnhancedDeliveryCode: json_.containsKey('dpvEnhancedDeliveryCode')
              ? json_['dpvEnhancedDeliveryCode'] as core.String
              : null,
          dpvFootnote: json_.containsKey('dpvFootnote')
              ? json_['dpvFootnote'] as core.String
              : null,
          dpvNoSecureLocation: json_.containsKey('dpvNoSecureLocation')
              ? json_['dpvNoSecureLocation'] as core.String
              : null,
          dpvNoStat: json_.containsKey('dpvNoStat')
              ? json_['dpvNoStat'] as core.String
              : null,
          dpvNoStatReasonCode: json_.containsKey('dpvNoStatReasonCode')
              ? json_['dpvNoStatReasonCode'] as core.int
              : null,
          dpvNonDeliveryDays: json_.containsKey('dpvNonDeliveryDays')
              ? json_['dpvNonDeliveryDays'] as core.String
              : null,
          dpvNonDeliveryDaysValues:
              json_.containsKey('dpvNonDeliveryDaysValues')
                  ? json_['dpvNonDeliveryDaysValues'] as core.int
                  : null,
          dpvPbsa: json_.containsKey('dpvPbsa')
              ? json_['dpvPbsa'] as core.String
              : null,
          dpvThrowback: json_.containsKey('dpvThrowback')
              ? json_['dpvThrowback'] as core.String
              : null,
          dpvVacant: json_.containsKey('dpvVacant')
              ? json_['dpvVacant'] as core.String
              : null,
          elotFlag: json_.containsKey('elotFlag')
              ? json_['elotFlag'] as core.String
              : null,
          elotNumber: json_.containsKey('elotNumber')
              ? json_['elotNumber'] as core.String
              : null,
          errorMessage: json_.containsKey('errorMessage')
              ? json_['errorMessage'] as core.String
              : null,
          ewsNoMatch: json_.containsKey('ewsNoMatch')
              ? json_['ewsNoMatch'] as core.bool
              : null,
          fipsCountyCode: json_.containsKey('fipsCountyCode')
              ? json_['fipsCountyCode'] as core.String
              : null,
          lacsLinkIndicator: json_.containsKey('lacsLinkIndicator')
              ? json_['lacsLinkIndicator'] as core.String
              : null,
          lacsLinkReturnCode: json_.containsKey('lacsLinkReturnCode')
              ? json_['lacsLinkReturnCode'] as core.String
              : null,
          pmbDesignator: json_.containsKey('pmbDesignator')
              ? json_['pmbDesignator'] as core.String
              : null,
          pmbNumber: json_.containsKey('pmbNumber')
              ? json_['pmbNumber'] as core.String
              : null,
          poBoxOnlyPostalCode: json_.containsKey('poBoxOnlyPostalCode')
              ? json_['poBoxOnlyPostalCode'] as core.bool
              : null,
          postOfficeCity: json_.containsKey('postOfficeCity')
              ? json_['postOfficeCity'] as core.String
              : null,
          postOfficeState: json_.containsKey('postOfficeState')
              ? json_['postOfficeState'] as core.String
              : null,
          standardizedAddress: json_.containsKey('standardizedAddress')
              ? GoogleMapsAddressvalidationV1UspsAddress.fromJson(
                  json_['standardizedAddress']
                      as core.Map<core.String, core.dynamic>)
              : null,
          suitelinkFootnote: json_.containsKey('suitelinkFootnote')
              ? json_['suitelinkFootnote'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (abbreviatedCity != null) 'abbreviatedCity': abbreviatedCity!,
        if (addressRecordType != null) 'addressRecordType': addressRecordType!,
        if (carrierRoute != null) 'carrierRoute': carrierRoute!,
        if (carrierRouteIndicator != null)
          'carrierRouteIndicator': carrierRouteIndicator!,
        if (cassProcessed != null) 'cassProcessed': cassProcessed!,
        if (county != null) 'county': county!,
        if (defaultAddress != null) 'defaultAddress': defaultAddress!,
        if (deliveryPointCheckDigit != null)
          'deliveryPointCheckDigit': deliveryPointCheckDigit!,
        if (deliveryPointCode != null) 'deliveryPointCode': deliveryPointCode!,
        if (dpvCmra != null) 'dpvCmra': dpvCmra!,
        if (dpvConfirmation != null) 'dpvConfirmation': dpvConfirmation!,
        if (dpvDoorNotAccessible != null)
          'dpvDoorNotAccessible': dpvDoorNotAccessible!,
        if (dpvDrop != null) 'dpvDrop': dpvDrop!,
        if (dpvEnhancedDeliveryCode != null)
          'dpvEnhancedDeliveryCode': dpvEnhancedDeliveryCode!,
        if (dpvFootnote != null) 'dpvFootnote': dpvFootnote!,
        if (dpvNoSecureLocation != null)
          'dpvNoSecureLocation': dpvNoSecureLocation!,
        if (dpvNoStat != null) 'dpvNoStat': dpvNoStat!,
        if (dpvNoStatReasonCode != null)
          'dpvNoStatReasonCode': dpvNoStatReasonCode!,
        if (dpvNonDeliveryDays != null)
          'dpvNonDeliveryDays': dpvNonDeliveryDays!,
        if (dpvNonDeliveryDaysValues != null)
          'dpvNonDeliveryDaysValues': dpvNonDeliveryDaysValues!,
        if (dpvPbsa != null) 'dpvPbsa': dpvPbsa!,
        if (dpvThrowback != null) 'dpvThrowback': dpvThrowback!,
        if (dpvVacant != null) 'dpvVacant': dpvVacant!,
        if (elotFlag != null) 'elotFlag': elotFlag!,
        if (elotNumber != null) 'elotNumber': elotNumber!,
        if (errorMessage != null) 'errorMessage': errorMessage!,
        if (ewsNoMatch != null) 'ewsNoMatch': ewsNoMatch!,
        if (fipsCountyCode != null) 'fipsCountyCode': fipsCountyCode!,
        if (lacsLinkIndicator != null) 'lacsLinkIndicator': lacsLinkIndicator!,
        if (lacsLinkReturnCode != null)
          'lacsLinkReturnCode': lacsLinkReturnCode!,
        if (pmbDesignator != null) 'pmbDesignator': pmbDesignator!,
        if (pmbNumber != null) 'pmbNumber': pmbNumber!,
        if (poBoxOnlyPostalCode != null)
          'poBoxOnlyPostalCode': poBoxOnlyPostalCode!,
        if (postOfficeCity != null) 'postOfficeCity': postOfficeCity!,
        if (postOfficeState != null) 'postOfficeState': postOfficeState!,
        if (standardizedAddress != null)
          'standardizedAddress': standardizedAddress!,
        if (suitelinkFootnote != null) 'suitelinkFootnote': suitelinkFootnote!,
      };
}

/// The request for validating an address.
class GoogleMapsAddressvalidationV1ValidateAddressRequest {
  /// The address being validated.
  ///
  /// Unformatted addresses should be submitted via `address_lines`. The total
  /// length of the fields in this input must not exceed 280 characters.
  /// Supported regions can be found
  /// [here](https://developers.google.com/maps/documentation/address-validation/coverage).
  /// The language_code value in the input address is reserved for future uses
  /// and is ignored today. The validated address result will be populated based
  /// on the preferred language for the given address, as identified by the
  /// system. The Address Validation API ignores the values in recipients and
  /// organization. Any values in those fields will be discarded and not
  /// returned. Please do not set them.
  ///
  /// Required.
  GoogleTypePostalAddress? address;

  /// Enables USPS CASS compatible mode.
  ///
  /// This affects _only_ the
  /// \[google.maps.addressvalidation.v1.ValidationResult.usps_data\] field of
  /// \[google.maps.addressvalidation.v1.ValidationResult\]. Note: for USPS CASS
  /// enabled requests for addresses in Puerto Rico, a
  /// \[google.type.PostalAddress.region_code\] of the `address` must be
  /// provided as "PR", or an \[google.type.PostalAddress.administrative_area\]
  /// of the `address` must be provided as "Puerto Rico" (case-insensitive) or
  /// "PR". It's recommended to use a componentized `address`, or alternatively
  /// specify at least two \[google.type.PostalAddress.address_lines\] where the
  /// first line contains the street number and name and the second line
  /// contains the city, state, and zip code.
  core.bool? enableUspsCass;

  /// Preview: This feature is in Preview (pre-GA).
  ///
  /// Pre-GA products and features might have limited support, and changes to
  /// pre-GA products and features might not be compatible with other pre-GA
  /// versions. Pre-GA Offerings are covered by the
  /// [Google Maps Platform Service Specific Terms](https://cloud.google.com/maps-platform/terms/maps-service-terms).
  /// For more information, see the
  /// [launch stage descriptions](https://developers.google.com/maps/launch-stages).
  /// Enables the Address Validation API to include additional information in
  /// the response.
  ///
  /// Optional.
  GoogleMapsAddressvalidationV1LanguageOptions? languageOptions;

  /// This field must be empty for the first address validation request.
  ///
  /// If more requests are necessary to fully validate a single address (for
  /// example if the changes the user makes after the initial validation need to
  /// be re-validated), then each followup request must populate this field with
  /// the response_id from the very first response in the validation sequence.
  core.String? previousResponseId;

  /// A string which identifies an Autocomplete session for billing purposes.
  ///
  /// Must be a URL and filename safe base64 string with at most 36 ASCII
  /// characters in length. Otherwise an INVALID_ARGUMENT error is returned. The
  /// session begins when the user makes an Autocomplete query, and concludes
  /// when they select a place and a call to Place Details or Address Validation
  /// is made. Each session can have multiple Autocomplete queries, followed by
  /// one Place Details or Address Validation request. The credentials used for
  /// each request within a session must belong to the same Google Cloud Console
  /// project. Once a session has concluded, the token is no longer valid; your
  /// app must generate a fresh token for each session. If the `sessionToken`
  /// parameter is omitted, or if you reuse a session token, the session is
  /// charged as if no session token was provided (each request is billed
  /// separately). Note: Address Validation can only be used in sessions with
  /// the Autocomplete (New) API, not the Autocomplete API. See
  /// https://developers.google.com/maps/documentation/places/web-service/session-pricing
  /// for more details.
  ///
  /// Optional.
  core.String? sessionToken;

  GoogleMapsAddressvalidationV1ValidateAddressRequest({
    this.address,
    this.enableUspsCass,
    this.languageOptions,
    this.previousResponseId,
    this.sessionToken,
  });

  GoogleMapsAddressvalidationV1ValidateAddressRequest.fromJson(core.Map json_)
      : this(
          address: json_.containsKey('address')
              ? GoogleTypePostalAddress.fromJson(
                  json_['address'] as core.Map<core.String, core.dynamic>)
              : null,
          enableUspsCass: json_.containsKey('enableUspsCass')
              ? json_['enableUspsCass'] as core.bool
              : null,
          languageOptions: json_.containsKey('languageOptions')
              ? GoogleMapsAddressvalidationV1LanguageOptions.fromJson(
                  json_['languageOptions']
                      as core.Map<core.String, core.dynamic>)
              : null,
          previousResponseId: json_.containsKey('previousResponseId')
              ? json_['previousResponseId'] as core.String
              : null,
          sessionToken: json_.containsKey('sessionToken')
              ? json_['sessionToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (address != null) 'address': address!,
        if (enableUspsCass != null) 'enableUspsCass': enableUspsCass!,
        if (languageOptions != null) 'languageOptions': languageOptions!,
        if (previousResponseId != null)
          'previousResponseId': previousResponseId!,
        if (sessionToken != null) 'sessionToken': sessionToken!,
      };
}

/// The response to an address validation request.
class GoogleMapsAddressvalidationV1ValidateAddressResponse {
  /// The UUID that identifies this response.
  ///
  /// If the address needs to be re-validated, this UUID *must* accompany the
  /// new request.
  core.String? responseId;

  /// The result of the address validation.
  GoogleMapsAddressvalidationV1ValidationResult? result;

  GoogleMapsAddressvalidationV1ValidateAddressResponse({
    this.responseId,
    this.result,
  });

  GoogleMapsAddressvalidationV1ValidateAddressResponse.fromJson(core.Map json_)
      : this(
          responseId: json_.containsKey('responseId')
              ? json_['responseId'] as core.String
              : null,
          result: json_.containsKey('result')
              ? GoogleMapsAddressvalidationV1ValidationResult.fromJson(
                  json_['result'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (responseId != null) 'responseId': responseId!,
        if (result != null) 'result': result!,
      };
}

/// The result of validating an address.
class GoogleMapsAddressvalidationV1ValidationResult {
  /// Information about the address itself as opposed to the geocode.
  GoogleMapsAddressvalidationV1Address? address;

  /// Preview: This feature is in Preview (pre-GA).
  ///
  /// Pre-GA products and features might have limited support, and changes to
  /// pre-GA products and features might not be compatible with other pre-GA
  /// versions. Pre-GA Offerings are covered by the
  /// [Google Maps Platform Service Specific Terms](https://cloud.google.com/maps-platform/terms/maps-service-terms).
  /// For more information, see the
  /// [launch stage descriptions](https://developers.google.com/maps/launch-stages).
  /// The address translated to English. Translated addresses are not reusable
  /// as API input. The service provides them so that the user can use their
  /// native language to confirm or deny the validation of the
  /// originally-provided address. If part of the address doesn't have an
  /// English translation, the service returns that part in an alternate
  /// language that uses a Latin script. See
  /// [here](https://developers.google.com/maps/documentation/address-validation/convert-addresses-english)
  /// for an explanation of how the alternate language is selected. If part of
  /// the address doesn't have any translations or transliterations in a
  /// language that uses a Latin script, the service returns that part in the
  /// local language associated with the address. Enable this output by using
  /// the
  /// \[google.maps.addressvalidation.v1.LanguageOptions.return_english_latin_address\]
  /// flag. Note: the
  /// \[google.maps.addressvalidation.v1.Address.unconfirmed_component_types\]
  /// field in the `english_latin_address` and the
  /// \[google.maps.addressvalidation.v1.AddressComponent.confirmation_level\]
  /// fields in `english_latin_address.address_components` are not populated.
  GoogleMapsAddressvalidationV1Address? englishLatinAddress;

  /// Information about the location and place that the address geocoded to.
  GoogleMapsAddressvalidationV1Geocode? geocode;

  /// Other information relevant to deliverability.
  ///
  /// `metadata` is not guaranteed to be fully populated for every address sent
  /// to the Address Validation API.
  GoogleMapsAddressvalidationV1AddressMetadata? metadata;

  /// Extra deliverability flags provided by USPS.
  ///
  /// Only provided in region `US` and `PR`.
  GoogleMapsAddressvalidationV1UspsData? uspsData;

  /// Overall verdict flags
  GoogleMapsAddressvalidationV1Verdict? verdict;

  GoogleMapsAddressvalidationV1ValidationResult({
    this.address,
    this.englishLatinAddress,
    this.geocode,
    this.metadata,
    this.uspsData,
    this.verdict,
  });

  GoogleMapsAddressvalidationV1ValidationResult.fromJson(core.Map json_)
      : this(
          address: json_.containsKey('address')
              ? GoogleMapsAddressvalidationV1Address.fromJson(
                  json_['address'] as core.Map<core.String, core.dynamic>)
              : null,
          englishLatinAddress: json_.containsKey('englishLatinAddress')
              ? GoogleMapsAddressvalidationV1Address.fromJson(
                  json_['englishLatinAddress']
                      as core.Map<core.String, core.dynamic>)
              : null,
          geocode: json_.containsKey('geocode')
              ? GoogleMapsAddressvalidationV1Geocode.fromJson(
                  json_['geocode'] as core.Map<core.String, core.dynamic>)
              : null,
          metadata: json_.containsKey('metadata')
              ? GoogleMapsAddressvalidationV1AddressMetadata.fromJson(
                  json_['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          uspsData: json_.containsKey('uspsData')
              ? GoogleMapsAddressvalidationV1UspsData.fromJson(
                  json_['uspsData'] as core.Map<core.String, core.dynamic>)
              : null,
          verdict: json_.containsKey('verdict')
              ? GoogleMapsAddressvalidationV1Verdict.fromJson(
                  json_['verdict'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (address != null) 'address': address!,
        if (englishLatinAddress != null)
          'englishLatinAddress': englishLatinAddress!,
        if (geocode != null) 'geocode': geocode!,
        if (metadata != null) 'metadata': metadata!,
        if (uspsData != null) 'uspsData': uspsData!,
        if (verdict != null) 'verdict': verdict!,
      };
}

/// High level overview of the address validation result and geocode.
class GoogleMapsAddressvalidationV1Verdict {
  /// The address is considered complete if there are no unresolved tokens, no
  /// unexpected or missing address components.
  ///
  /// If unset, indicates that the value is `false`. See
  /// `missing_component_types`, `unresolved_tokens` or `unexpected` fields for
  /// more details.
  core.bool? addressComplete;

  /// Information about the granularity of the `geocode`.
  ///
  /// This can be understood as the semantic meaning of how coarse or fine the
  /// geocoded location is. This can differ from the `validation_granularity`
  /// above occasionally. For example, our database might record the existence
  /// of an apartment number but do not have a precise location for the
  /// apartment within a big apartment complex. In that case, the
  /// `validation_granularity` will be `SUB_PREMISE` but the
  /// `geocode_granularity` will be `PREMISE`.
  /// Possible string values are:
  /// - "GRANULARITY_UNSPECIFIED" : Default value. This value is unused.
  /// - "SUB_PREMISE" : Below-building level result, such as an apartment.
  /// - "PREMISE" : Building-level result.
  /// - "PREMISE_PROXIMITY" : A geocode that approximates the building-level
  /// location of the address.
  /// - "BLOCK" : The address or geocode indicates a block. Only used in regions
  /// which have block-level addressing, such as Japan.
  /// - "ROUTE" : The geocode or address is granular to route, such as a street,
  /// road, or highway.
  /// - "OTHER" : All other granularities, which are bucketed together since
  /// they are not deliverable.
  core.String? geocodeGranularity;

  /// At least one address component was inferred (added) that wasn't in the
  /// input, see \[google.maps.addressvalidation.v1.Address.address_components\]
  /// for details.
  core.bool? hasInferredComponents;

  /// At least one address component was replaced, see
  /// \[google.maps.addressvalidation.v1.Address.address_components\] for
  /// details.
  core.bool? hasReplacedComponents;

  /// At least one address component cannot be categorized or validated, see
  /// \[google.maps.addressvalidation.v1.Address.address_components\] for
  /// details.
  core.bool? hasUnconfirmedComponents;

  /// The granularity of the **input** address.
  ///
  /// This is the result of parsing the input address and does not give any
  /// validation signals. For validation signals, refer to
  /// `validation_granularity` below. For example, if the input address includes
  /// a specific apartment number, then the `input_granularity` here will be
  /// `SUB_PREMISE`. If we cannot match the apartment number in the databases or
  /// the apartment number is invalid, the `validation_granularity` will likely
  /// be `PREMISE` or below.
  /// Possible string values are:
  /// - "GRANULARITY_UNSPECIFIED" : Default value. This value is unused.
  /// - "SUB_PREMISE" : Below-building level result, such as an apartment.
  /// - "PREMISE" : Building-level result.
  /// - "PREMISE_PROXIMITY" : A geocode that approximates the building-level
  /// location of the address.
  /// - "BLOCK" : The address or geocode indicates a block. Only used in regions
  /// which have block-level addressing, such as Japan.
  /// - "ROUTE" : The geocode or address is granular to route, such as a street,
  /// road, or highway.
  /// - "OTHER" : All other granularities, which are bucketed together since
  /// they are not deliverable.
  core.String? inputGranularity;

  /// The granularity level that the API can fully **validate** the address to.
  ///
  /// For example, an `validation_granularity` of `PREMISE` indicates all
  /// address components at the level of `PREMISE` or more coarse can be
  /// validated. Per address component validation result can be found in
  /// \[google.maps.addressvalidation.v1.Address.address_components\].
  /// Possible string values are:
  /// - "GRANULARITY_UNSPECIFIED" : Default value. This value is unused.
  /// - "SUB_PREMISE" : Below-building level result, such as an apartment.
  /// - "PREMISE" : Building-level result.
  /// - "PREMISE_PROXIMITY" : A geocode that approximates the building-level
  /// location of the address.
  /// - "BLOCK" : The address or geocode indicates a block. Only used in regions
  /// which have block-level addressing, such as Japan.
  /// - "ROUTE" : The geocode or address is granular to route, such as a street,
  /// road, or highway.
  /// - "OTHER" : All other granularities, which are bucketed together since
  /// they are not deliverable.
  core.String? validationGranularity;

  GoogleMapsAddressvalidationV1Verdict({
    this.addressComplete,
    this.geocodeGranularity,
    this.hasInferredComponents,
    this.hasReplacedComponents,
    this.hasUnconfirmedComponents,
    this.inputGranularity,
    this.validationGranularity,
  });

  GoogleMapsAddressvalidationV1Verdict.fromJson(core.Map json_)
      : this(
          addressComplete: json_.containsKey('addressComplete')
              ? json_['addressComplete'] as core.bool
              : null,
          geocodeGranularity: json_.containsKey('geocodeGranularity')
              ? json_['geocodeGranularity'] as core.String
              : null,
          hasInferredComponents: json_.containsKey('hasInferredComponents')
              ? json_['hasInferredComponents'] as core.bool
              : null,
          hasReplacedComponents: json_.containsKey('hasReplacedComponents')
              ? json_['hasReplacedComponents'] as core.bool
              : null,
          hasUnconfirmedComponents:
              json_.containsKey('hasUnconfirmedComponents')
                  ? json_['hasUnconfirmedComponents'] as core.bool
                  : null,
          inputGranularity: json_.containsKey('inputGranularity')
              ? json_['inputGranularity'] as core.String
              : null,
          validationGranularity: json_.containsKey('validationGranularity')
              ? json_['validationGranularity'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (addressComplete != null) 'addressComplete': addressComplete!,
        if (geocodeGranularity != null)
          'geocodeGranularity': geocodeGranularity!,
        if (hasInferredComponents != null)
          'hasInferredComponents': hasInferredComponents!,
        if (hasReplacedComponents != null)
          'hasReplacedComponents': hasReplacedComponents!,
        if (hasUnconfirmedComponents != null)
          'hasUnconfirmedComponents': hasUnconfirmedComponents!,
        if (inputGranularity != null) 'inputGranularity': inputGranularity!,
        if (validationGranularity != null)
          'validationGranularity': validationGranularity!,
      };
}

/// An object that represents a latitude/longitude pair.
///
/// This is expressed as a pair of doubles to represent degrees latitude and
/// degrees longitude. Unless specified otherwise, this object must conform to
/// the WGS84 standard. Values must be within normalized ranges.
typedef GoogleTypeLatLng = $LatLng;

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
typedef GoogleTypePostalAddress = $PostalAddress;
