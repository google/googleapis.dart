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

/// Merchant API - ordertracking_v1
///
/// Programmatically manage your Merchant Center Accounts.
///
/// For more information, see <https://developers.google.com/merchant/api>
///
/// Create an instance of [MerchantApi] to access these resources:
///
/// - [AccountsResource]
///   - [AccountsOrderTrackingSignalsResource]
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

/// Programmatically manage your Merchant Center Accounts.
class MerchantApi {
  /// Manage your product listings and accounts for Google Shopping
  static const contentScope = 'https://www.googleapis.com/auth/content';

  final commons.ApiRequester _requester;

  AccountsResource get accounts => AccountsResource(_requester);

  MerchantApi(
    http.Client client, {
    core.String rootUrl = 'https://merchantapi.googleapis.com/',
    core.String servicePath = '',
  }) : _requester = commons.ApiRequester(
         client,
         rootUrl,
         servicePath,
         requestHeaders,
       );
}

class AccountsResource {
  final commons.ApiRequester _requester;

  AccountsOrderTrackingSignalsResource get orderTrackingSignals =>
      AccountsOrderTrackingSignalsResource(_requester);

  AccountsResource(commons.ApiRequester client) : _requester = client;
}

class AccountsOrderTrackingSignalsResource {
  final commons.ApiRequester _requester;

  AccountsOrderTrackingSignalsResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates new order tracking signal.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The account of the business for which the order
  /// signal is created. Format: accounts/{account}
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [orderTrackingSignalId] - Output only. The ID that uniquely identifies
  /// this order tracking signal.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [OrderTrackingSignal].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<OrderTrackingSignal> create(
    OrderTrackingSignal request,
    core.String parent, {
    core.String? orderTrackingSignalId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (orderTrackingSignalId != null)
        'orderTrackingSignalId': [orderTrackingSignalId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'ordertracking/v1/' +
        core.Uri.encodeFull('$parent') +
        '/orderTrackingSignals';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return OrderTrackingSignal.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

/// Represents civil time (or occasionally physical time).
///
/// This type can represent a civil time in one of a few possible ways: * When
/// utc_offset is set and time_zone is unset: a civil time on a calendar day
/// with a particular offset from UTC. * When time_zone is set and utc_offset is
/// unset: a civil time on a calendar day in a particular time zone. * When
/// neither time_zone nor utc_offset is set: a civil time on a calendar day in
/// local time. The date is relative to the Proleptic Gregorian Calendar. If
/// year, month, or day are 0, the DateTime is considered not to have a specific
/// year, month, or day respectively. This type may also be used to represent a
/// physical time if all the date and time fields are set and either case of the
/// `time_offset` oneof is set. Consider using `Timestamp` message for physical
/// time instead. If your use case also would like to store the user's timezone,
/// that can be done in another field. This type is more flexible than some
/// applications may want. Make sure to document and validate your application's
/// limitations.
class DateTime {
  /// Day of month.
  ///
  /// Must be from 1 to 31 and valid for the year and month, or 0 if specifying
  /// a datetime without a day.
  ///
  /// Optional.
  core.int? day;

  /// Hours of day in 24 hour format.
  ///
  /// Should be from 0 to 23, defaults to 0 (midnight). An API may choose to
  /// allow the value "24:00:00" for scenarios like business closing time.
  ///
  /// Optional.
  core.int? hours;

  /// Minutes of hour of day.
  ///
  /// Must be from 0 to 59, defaults to 0.
  ///
  /// Optional.
  core.int? minutes;

  /// Month of year.
  ///
  /// Must be from 1 to 12, or 0 if specifying a datetime without a month.
  ///
  /// Optional.
  core.int? month;

  /// Fractions of seconds in nanoseconds.
  ///
  /// Must be from 0 to 999,999,999, defaults to 0.
  ///
  /// Optional.
  core.int? nanos;

  /// Seconds of minutes of the time.
  ///
  /// Must normally be from 0 to 59, defaults to 0. An API may allow the value
  /// 60 if it allows leap-seconds.
  ///
  /// Optional.
  core.int? seconds;

  /// Time zone.
  TimeZone? timeZone;

  /// UTC offset.
  ///
  /// Must be whole seconds, between -18 hours and +18 hours. For example, a UTC
  /// offset of -4:00 would be represented as { seconds: -14400 }.
  core.String? utcOffset;

  /// Year of date.
  ///
  /// Must be from 1 to 9999, or 0 if specifying a datetime without a year.
  ///
  /// Optional.
  core.int? year;

  DateTime({
    this.day,
    this.hours,
    this.minutes,
    this.month,
    this.nanos,
    this.seconds,
    this.timeZone,
    this.utcOffset,
    this.year,
  });

  DateTime.fromJson(core.Map json_)
    : this(
        day: json_['day'] as core.int?,
        hours: json_['hours'] as core.int?,
        minutes: json_['minutes'] as core.int?,
        month: json_['month'] as core.int?,
        nanos: json_['nanos'] as core.int?,
        seconds: json_['seconds'] as core.int?,
        timeZone:
            json_.containsKey('timeZone')
                ? TimeZone.fromJson(
                  json_['timeZone'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        utcOffset: json_['utcOffset'] as core.String?,
        year: json_['year'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (day != null) 'day': day!,
    if (hours != null) 'hours': hours!,
    if (minutes != null) 'minutes': minutes!,
    if (month != null) 'month': month!,
    if (nanos != null) 'nanos': nanos!,
    if (seconds != null) 'seconds': seconds!,
    if (timeZone != null) 'timeZone': timeZone!,
    if (utcOffset != null) 'utcOffset': utcOffset!,
    if (year != null) 'year': year!,
  };
}

/// The line items of the order.
class LineItemDetails {
  /// Brand of the product.
  ///
  /// Optional.
  core.String? brand;

  /// The Global Trade Item Numbers.
  ///
  /// Optional.
  core.List<core.String>? gtins;

  /// The ID for this line item.
  ///
  /// Required.
  core.String? lineItemId;

  /// The manufacturer part number.
  ///
  /// Optional.
  core.String? mpn;

  /// The Content API REST ID of the product, in the form
  /// channel:contentLanguage:targetCountry:offerId.
  ///
  /// Required.
  core.String? productId;

  /// Plain text title of this product.
  ///
  /// Optional.
  core.String? productTitle;

  /// The quantity of the line item in the order.
  ///
  /// Required.
  core.String? quantity;

  LineItemDetails({
    this.brand,
    this.gtins,
    this.lineItemId,
    this.mpn,
    this.productId,
    this.productTitle,
    this.quantity,
  });

  LineItemDetails.fromJson(core.Map json_)
    : this(
        brand: json_['brand'] as core.String?,
        gtins:
            (json_['gtins'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        lineItemId: json_['lineItemId'] as core.String?,
        mpn: json_['mpn'] as core.String?,
        productId: json_['productId'] as core.String?,
        productTitle: json_['productTitle'] as core.String?,
        quantity: json_['quantity'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (brand != null) 'brand': brand!,
    if (gtins != null) 'gtins': gtins!,
    if (lineItemId != null) 'lineItemId': lineItemId!,
    if (mpn != null) 'mpn': mpn!,
    if (productId != null) 'productId': productId!,
    if (productTitle != null) 'productTitle': productTitle!,
    if (quantity != null) 'quantity': quantity!,
  };
}

/// Represents a business trade from which signals are extracted, such as
/// shipping.
class OrderTrackingSignal {
  /// The shipping fee of the order; this value should be set to zero in the
  /// case of free shipping.
  ///
  /// Optional.
  Price? customerShippingFee;

  /// The delivery postal code, as a continuous string without spaces or dashes,
  /// for example "95016".
  ///
  /// This field will be anonymized in returned OrderTrackingSignal creation
  /// response.
  ///
  /// Optional.
  core.String? deliveryPostalCode;

  /// The
  /// [CLDR territory code](http://www.unicode.org/repos/cldr/tags/latest/common/main/en.xml)
  /// for the shipping destination.
  ///
  /// Optional.
  core.String? deliveryRegionCode;

  /// Information about line items in the order.
  ///
  /// Required.
  core.List<LineItemDetails>? lineItems;

  /// The Google Merchant Center ID of this order tracking signal.
  ///
  /// This value is optional. If left unset, the caller's Merchant Center ID is
  /// used. You must request access in order to provide data on behalf of
  /// another business. For more information, see \[Submitting Order Tracking
  /// Signals\](/shopping-content/guides/order-tracking-signals).
  ///
  /// Optional.
  core.String? merchantId;

  /// The time when the order was created on the businesses side.
  ///
  /// Include the year and timezone string, if available.
  ///
  /// Required.
  DateTime? orderCreatedTime;

  /// The ID of the order on the businesses side.
  ///
  /// This field will be hashed in returned OrderTrackingSignal creation
  /// response.
  ///
  /// Required.
  core.String? orderId;

  /// The ID that uniquely identifies this order tracking signal.
  ///
  /// Output only.
  core.String? orderTrackingSignalId;

  /// The mapping of the line items to the shipment information.
  ///
  /// Optional.
  core.List<ShipmentLineItemMapping>? shipmentLineItemMapping;

  /// The shipping information for the order.
  ///
  /// Required.
  core.List<ShippingInfo>? shippingInfo;

  OrderTrackingSignal({
    this.customerShippingFee,
    this.deliveryPostalCode,
    this.deliveryRegionCode,
    this.lineItems,
    this.merchantId,
    this.orderCreatedTime,
    this.orderId,
    this.orderTrackingSignalId,
    this.shipmentLineItemMapping,
    this.shippingInfo,
  });

  OrderTrackingSignal.fromJson(core.Map json_)
    : this(
        customerShippingFee:
            json_.containsKey('customerShippingFee')
                ? Price.fromJson(
                  json_['customerShippingFee']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        deliveryPostalCode: json_['deliveryPostalCode'] as core.String?,
        deliveryRegionCode: json_['deliveryRegionCode'] as core.String?,
        lineItems:
            (json_['lineItems'] as core.List?)
                ?.map(
                  (value) => LineItemDetails.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        merchantId: json_['merchantId'] as core.String?,
        orderCreatedTime:
            json_.containsKey('orderCreatedTime')
                ? DateTime.fromJson(
                  json_['orderCreatedTime']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        orderId: json_['orderId'] as core.String?,
        orderTrackingSignalId: json_['orderTrackingSignalId'] as core.String?,
        shipmentLineItemMapping:
            (json_['shipmentLineItemMapping'] as core.List?)
                ?.map(
                  (value) => ShipmentLineItemMapping.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        shippingInfo:
            (json_['shippingInfo'] as core.List?)
                ?.map(
                  (value) => ShippingInfo.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (customerShippingFee != null)
      'customerShippingFee': customerShippingFee!,
    if (deliveryPostalCode != null) 'deliveryPostalCode': deliveryPostalCode!,
    if (deliveryRegionCode != null) 'deliveryRegionCode': deliveryRegionCode!,
    if (lineItems != null) 'lineItems': lineItems!,
    if (merchantId != null) 'merchantId': merchantId!,
    if (orderCreatedTime != null) 'orderCreatedTime': orderCreatedTime!,
    if (orderId != null) 'orderId': orderId!,
    if (orderTrackingSignalId != null)
      'orderTrackingSignalId': orderTrackingSignalId!,
    if (shipmentLineItemMapping != null)
      'shipmentLineItemMapping': shipmentLineItemMapping!,
    if (shippingInfo != null) 'shippingInfo': shippingInfo!,
  };
}

/// The price represented as a number and currency.
typedef Price = $Price;

/// Represents how many items are in the shipment for the given shipment_id and
/// line_item_id.
class ShipmentLineItemMapping {
  /// The line item ID.
  ///
  /// Required.
  core.String? lineItemId;

  /// The line item quantity in the shipment.
  ///
  /// Required.
  core.String? quantity;

  /// The shipment ID.
  ///
  /// This field will be hashed in returned OrderTrackingSignal creation
  /// response.
  ///
  /// Required.
  core.String? shipmentId;

  ShipmentLineItemMapping({this.lineItemId, this.quantity, this.shipmentId});

  ShipmentLineItemMapping.fromJson(core.Map json_)
    : this(
        lineItemId: json_['lineItemId'] as core.String?,
        quantity: json_['quantity'] as core.String?,
        shipmentId: json_['shipmentId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (lineItemId != null) 'lineItemId': lineItemId!,
    if (quantity != null) 'quantity': quantity!,
    if (shipmentId != null) 'shipmentId': shipmentId!,
  };
}

/// The shipping information for the order.
class ShippingInfo {
  /// The time when the shipment was actually delivered.
  ///
  /// Include the year and timezone string, if available. This field is
  /// required, if one of the following fields is absent: tracking_id or
  /// carrier_name.
  ///
  /// Optional.
  DateTime? actualDeliveryTime;

  /// The name of the shipping carrier for the delivery.
  ///
  /// This field is required if one of the following fields is absent:
  /// earliest_delivery_promise_time, latest_delivery_promise_time, and
  /// actual_delivery_time.
  ///
  /// Optional.
  core.String? carrier;

  /// The service type for fulfillment, such as GROUND, FIRST_CLASS, etc.
  ///
  /// Optional.
  core.String? carrierService;

  /// The earliest delivery promised time.
  ///
  /// Include the year and timezone string, if available. This field is
  /// required, if one of the following fields is absent: tracking_id or
  /// carrier_name.
  ///
  /// Optional.
  DateTime? earliestDeliveryPromiseTime;

  /// The latest delivery promised time.
  ///
  /// Include the year and timezone string, if available. This field is
  /// required, if one of the following fields is absent: tracking_id or
  /// carrier_name.
  ///
  /// Optional.
  DateTime? latestDeliveryPromiseTime;

  /// The origin postal code, as a continuous string without spaces or dashes,
  /// for example "95016".
  ///
  /// This field will be anonymized in returned OrderTrackingSignal creation
  /// response.
  ///
  /// Required.
  core.String? originPostalCode;

  /// The
  /// [CLDR territory code](http://www.unicode.org/repos/cldr/tags/latest/common/main/en.xml)
  /// for the shipping origin.
  ///
  /// Required.
  core.String? originRegionCode;

  /// The shipment ID.
  ///
  /// This field will be hashed in returned OrderTrackingSignal creation
  /// response.
  ///
  /// Required.
  core.String? shipmentId;

  /// The time when the shipment was shipped.
  ///
  /// Include the year and timezone string, if available.
  ///
  /// Optional.
  DateTime? shippedTime;

  /// The status of the shipment.
  ///
  /// Required.
  /// Possible string values are:
  /// - "SHIPPING_STATE_UNSPECIFIED" : The shipping status is not known to
  /// business.
  /// - "SHIPPED" : All items are shipped.
  /// - "DELIVERED" : The shipment is already delivered.
  core.String? shippingStatus;

  /// The tracking ID of the shipment.
  ///
  /// This field is required if one of the following fields is absent:
  /// earliest_delivery_promise_time, latest_delivery_promise_time, and
  /// actual_delivery_time.
  ///
  /// Optional.
  core.String? trackingId;

  ShippingInfo({
    this.actualDeliveryTime,
    this.carrier,
    this.carrierService,
    this.earliestDeliveryPromiseTime,
    this.latestDeliveryPromiseTime,
    this.originPostalCode,
    this.originRegionCode,
    this.shipmentId,
    this.shippedTime,
    this.shippingStatus,
    this.trackingId,
  });

  ShippingInfo.fromJson(core.Map json_)
    : this(
        actualDeliveryTime:
            json_.containsKey('actualDeliveryTime')
                ? DateTime.fromJson(
                  json_['actualDeliveryTime']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        carrier: json_['carrier'] as core.String?,
        carrierService: json_['carrierService'] as core.String?,
        earliestDeliveryPromiseTime:
            json_.containsKey('earliestDeliveryPromiseTime')
                ? DateTime.fromJson(
                  json_['earliestDeliveryPromiseTime']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        latestDeliveryPromiseTime:
            json_.containsKey('latestDeliveryPromiseTime')
                ? DateTime.fromJson(
                  json_['latestDeliveryPromiseTime']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        originPostalCode: json_['originPostalCode'] as core.String?,
        originRegionCode: json_['originRegionCode'] as core.String?,
        shipmentId: json_['shipmentId'] as core.String?,
        shippedTime:
            json_.containsKey('shippedTime')
                ? DateTime.fromJson(
                  json_['shippedTime'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        shippingStatus: json_['shippingStatus'] as core.String?,
        trackingId: json_['trackingId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (actualDeliveryTime != null) 'actualDeliveryTime': actualDeliveryTime!,
    if (carrier != null) 'carrier': carrier!,
    if (carrierService != null) 'carrierService': carrierService!,
    if (earliestDeliveryPromiseTime != null)
      'earliestDeliveryPromiseTime': earliestDeliveryPromiseTime!,
    if (latestDeliveryPromiseTime != null)
      'latestDeliveryPromiseTime': latestDeliveryPromiseTime!,
    if (originPostalCode != null) 'originPostalCode': originPostalCode!,
    if (originRegionCode != null) 'originRegionCode': originRegionCode!,
    if (shipmentId != null) 'shipmentId': shipmentId!,
    if (shippedTime != null) 'shippedTime': shippedTime!,
    if (shippingStatus != null) 'shippingStatus': shippingStatus!,
    if (trackingId != null) 'trackingId': trackingId!,
  };
}

/// Represents a time zone from the
/// [IANA Time Zone Database](https://www.iana.org/time-zones).
typedef TimeZone = $TimeZone;
