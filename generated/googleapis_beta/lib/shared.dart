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
// ignore_for_file: unused_import

import 'dart:convert' as convert;
import 'dart:core' as core;
import 'src/convert.dart';

/// Used by:
///
/// - analyticsadmin:v1alpha : GoogleAnalyticsAdminV1alphaAccessDateRange
/// - analyticsadmin:v1beta : GoogleAnalyticsAdminV1betaAccessDateRange
class $AccessDateRange {
  /// The inclusive end date for the query in the format `YYYY-MM-DD`.
  ///
  /// Cannot be before `startDate`. The format `NdaysAgo`, `yesterday`, or
  /// `today` is also accepted, and in that case, the date is inferred based on
  /// the current time in the request's time zone.
  core.String? endDate;

  /// The inclusive start date for the query in the format `YYYY-MM-DD`.
  ///
  /// Cannot be after `endDate`. The format `NdaysAgo`, `yesterday`, or `today`
  /// is also accepted, and in that case, the date is inferred based on the
  /// current time in the request's time zone.
  core.String? startDate;

  $AccessDateRange({
    this.endDate,
    this.startDate,
  });

  $AccessDateRange.fromJson(core.Map json_)
      : this(
          endDate: json_['endDate'] as core.String?,
          startDate: json_['startDate'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (endDate != null) 'endDate': endDate!,
        if (startDate != null) 'startDate': startDate!,
      };
}

/// Used by:
///
/// - analyticsadmin:v1alpha : GoogleAnalyticsAdminV1alphaAccessDimension
/// - analyticsadmin:v1beta : GoogleAnalyticsAdminV1betaAccessDimension
class $AccessDimension {
  /// The API name of the dimension.
  ///
  /// See
  /// [Data Access Schema](https://developers.google.com/analytics/devguides/config/admin/v1/access-api-schema)
  /// for the list of dimensions supported in this API. Dimensions are
  /// referenced by name in `dimensionFilter` and `orderBys`.
  core.String? dimensionName;

  $AccessDimension({
    this.dimensionName,
  });

  $AccessDimension.fromJson(core.Map json_)
      : this(
          dimensionName: json_['dimensionName'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dimensionName != null) 'dimensionName': dimensionName!,
      };
}

/// Used by:
///
/// - analyticsadmin:v1alpha : GoogleAnalyticsAdminV1alphaAccessDimensionHeader
/// - analyticsadmin:v1beta : GoogleAnalyticsAdminV1betaAccessDimensionHeader
class $AccessDimensionHeader {
  /// The dimension's name; for example 'userEmail'.
  core.String? dimensionName;

  $AccessDimensionHeader({
    this.dimensionName,
  });

  $AccessDimensionHeader.fromJson(core.Map json_)
      : this(
          dimensionName: json_['dimensionName'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dimensionName != null) 'dimensionName': dimensionName!,
      };
}

/// Used by:
///
/// - analyticsadmin:v1alpha : GoogleAnalyticsAdminV1alphaAccessDimensionValue
/// - analyticsadmin:v1beta : GoogleAnalyticsAdminV1betaAccessDimensionValue
class $AccessDimensionValue {
  /// The dimension value.
  ///
  /// For example, this value may be 'France' for the 'country' dimension.
  core.String? value;

  $AccessDimensionValue({
    this.value,
  });

  $AccessDimensionValue.fromJson(core.Map json_)
      : this(
          value: json_['value'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (value != null) 'value': value!,
      };
}

/// Used by:
///
/// - analyticsadmin:v1alpha : GoogleAnalyticsAdminV1alphaAccessMetric
/// - analyticsadmin:v1beta : GoogleAnalyticsAdminV1betaAccessMetric
class $AccessMetric {
  /// The API name of the metric.
  ///
  /// See
  /// [Data Access Schema](https://developers.google.com/analytics/devguides/config/admin/v1/access-api-schema)
  /// for the list of metrics supported in this API. Metrics are referenced by
  /// name in `metricFilter` & `orderBys`.
  core.String? metricName;

  $AccessMetric({
    this.metricName,
  });

  $AccessMetric.fromJson(core.Map json_)
      : this(
          metricName: json_['metricName'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (metricName != null) 'metricName': metricName!,
      };
}

/// Used by:
///
/// - analyticsadmin:v1alpha : GoogleAnalyticsAdminV1alphaAccessMetricHeader
/// - analyticsadmin:v1beta : GoogleAnalyticsAdminV1betaAccessMetricHeader
class $AccessMetricHeader {
  /// The metric's name; for example 'accessCount'.
  core.String? metricName;

  $AccessMetricHeader({
    this.metricName,
  });

  $AccessMetricHeader.fromJson(core.Map json_)
      : this(
          metricName: json_['metricName'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (metricName != null) 'metricName': metricName!,
      };
}

/// Used by:
///
/// - analyticsadmin:v1alpha : GoogleAnalyticsAdminV1alphaAccessMetricValue
/// - analyticsadmin:v1beta : GoogleAnalyticsAdminV1betaAccessMetricValue
class $AccessMetricValue {
  /// The measurement value.
  ///
  /// For example, this value may be '13'.
  core.String? value;

  $AccessMetricValue({
    this.value,
  });

  $AccessMetricValue.fromJson(core.Map json_)
      : this(
          value: json_['value'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (value != null) 'value': value!,
      };
}

/// Used by:
///
/// - analyticsadmin:v1alpha : GoogleAnalyticsAdminV1alphaAccount
/// - analyticsadmin:v1beta : GoogleAnalyticsAdminV1betaAccount
class $Account {
  /// Time when this account was originally created.
  ///
  /// Output only.
  core.String? createTime;

  /// Indicates whether this Account is soft-deleted or not.
  ///
  /// Deleted accounts are excluded from List results unless specifically
  /// requested.
  ///
  /// Output only.
  core.bool? deleted;

  /// Human-readable display name for this account.
  ///
  /// Required.
  core.String? displayName;

  /// The URI for a Google Marketing Platform organization resource.
  ///
  /// Only set when this account is connected to a GMP organization. Format:
  /// marketingplatformadmin.googleapis.com/organizations/{org_id}
  ///
  /// Output only.
  core.String? gmpOrganization;

  /// Resource name of this account.
  ///
  /// Format: accounts/{account} Example: "accounts/100"
  ///
  /// Output only.
  core.String? name;

  /// Country of business.
  ///
  /// Must be a Unicode CLDR region code.
  core.String? regionCode;

  /// Time when account payload fields were last updated.
  ///
  /// Output only.
  core.String? updateTime;

  $Account({
    this.createTime,
    this.deleted,
    this.displayName,
    this.gmpOrganization,
    this.name,
    this.regionCode,
    this.updateTime,
  });

  $Account.fromJson(core.Map json_)
      : this(
          createTime: json_['createTime'] as core.String?,
          deleted: json_['deleted'] as core.bool?,
          displayName: json_['displayName'] as core.String?,
          gmpOrganization: json_['gmpOrganization'] as core.String?,
          name: json_['name'] as core.String?,
          regionCode: json_['regionCode'] as core.String?,
          updateTime: json_['updateTime'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (deleted != null) 'deleted': deleted!,
        if (displayName != null) 'displayName': displayName!,
        if (gmpOrganization != null) 'gmpOrganization': gmpOrganization!,
        if (name != null) 'name': name!,
        if (regionCode != null) 'regionCode': regionCode!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// Used by:
///
/// - analyticsadmin:v1alpha : GoogleAnalyticsAdminV1alphaAcknowledgeUserDataCollectionRequest
/// - analyticsadmin:v1beta : GoogleAnalyticsAdminV1betaAcknowledgeUserDataCollectionRequest
class $AcknowledgeUserDataCollectionRequest {
  /// An acknowledgement that the caller of this method understands the terms of
  /// user data collection.
  ///
  /// This field must contain the exact value: "I acknowledge that I have the
  /// necessary privacy disclosures and rights from my end users for the
  /// collection and processing of their data, including the association of such
  /// data with the visitation information Google Analytics collects from my
  /// site and/or app property."
  ///
  /// Required.
  core.String? acknowledgement;

  $AcknowledgeUserDataCollectionRequest({
    this.acknowledgement,
  });

  $AcknowledgeUserDataCollectionRequest.fromJson(core.Map json_)
      : this(
          acknowledgement: json_['acknowledgement'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (acknowledgement != null) 'acknowledgement': acknowledgement!,
      };
}

/// Used by:
///
/// - datalabeling:v1beta1 : GoogleCloudDatalabelingV1beta1BoundingPolyConfig
/// - datalabeling:v1beta1 : GoogleCloudDatalabelingV1beta1PolylineConfig
class $Config {
  /// Annotation spec set resource name.
  ///
  /// Required.
  core.String? annotationSpecSet;

  /// Instruction message showed on contributors UI.
  ///
  /// Optional.
  core.String? instructionMessage;

  $Config({
    this.annotationSpecSet,
    this.instructionMessage,
  });

  $Config.fromJson(core.Map json_)
      : this(
          annotationSpecSet: json_['annotationSpecSet'] as core.String?,
          instructionMessage: json_['instructionMessage'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (annotationSpecSet != null) 'annotationSpecSet': annotationSpecSet!,
        if (instructionMessage != null)
          'instructionMessage': instructionMessage!,
      };
}

/// Used by:
///
/// - analyticsadmin:v1alpha : GoogleAnalyticsAdminV1alphaConversionEventDefaultConversionValue
/// - analyticsadmin:v1beta : GoogleAnalyticsAdminV1betaConversionEventDefaultConversionValue
class $ConversionEventDefaultConversionValue {
  /// When a conversion event for this event_name has no set currency, this
  /// currency will be applied as the default.
  ///
  /// Must be in ISO 4217 currency code format. See
  /// https://en.wikipedia.org/wiki/ISO_4217 for more information.
  core.String? currencyCode;

  /// This value will be used to populate the value for all conversions of the
  /// specified event_name where the event "value" parameter is unset.
  core.double? value;

  $ConversionEventDefaultConversionValue({
    this.currencyCode,
    this.value,
  });

  $ConversionEventDefaultConversionValue.fromJson(core.Map json_)
      : this(
          currencyCode: json_['currencyCode'] as core.String?,
          value: json_.containsKey('value')
              ? decodeDouble(json_['value'] as core.Object)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (currencyCode != null) 'currencyCode': currencyCode!,
        if (value != null) 'value': encodeDouble(value!),
      };
}

/// Used by:
///
/// - analyticsadmin:v1alpha : GoogleAnalyticsAdminV1alphaCustomDimension
/// - analyticsadmin:v1beta : GoogleAnalyticsAdminV1betaCustomDimension
class $CustomDimension {
  /// Description for this custom dimension.
  ///
  /// Max length of 150 characters.
  ///
  /// Optional.
  core.String? description;

  /// If set to true, sets this dimension as NPA and excludes it from ads
  /// personalization.
  ///
  /// This is currently only supported by user-scoped custom dimensions.
  ///
  /// Optional.
  core.bool? disallowAdsPersonalization;

  /// Display name for this custom dimension as shown in the Analytics UI.
  ///
  /// Max length of 82 characters, alphanumeric plus space and underscore
  /// starting with a letter. Legacy system-generated display names may contain
  /// square brackets, but updates to this field will never permit square
  /// brackets.
  ///
  /// Required.
  core.String? displayName;

  /// Resource name for this CustomDimension resource.
  ///
  /// Format: properties/{property}/customDimensions/{customDimension}
  ///
  /// Output only.
  core.String? name;

  /// Tagging parameter name for this custom dimension.
  ///
  /// If this is a user-scoped dimension, then this is the user property name.
  /// If this is an event-scoped dimension, then this is the event parameter
  /// name. If this is an item-scoped dimension, then this is the parameter name
  /// found in the eCommerce items array. May only contain alphanumeric and
  /// underscore characters, starting with a letter. Max length of 24 characters
  /// for user-scoped dimensions, 40 characters for event-scoped dimensions.
  ///
  /// Required. Immutable.
  core.String? parameterName;

  /// The scope of this dimension.
  ///
  /// Required. Immutable.
  /// Possible string values are:
  /// - "DIMENSION_SCOPE_UNSPECIFIED" : Scope unknown or not specified.
  /// - "EVENT" : Dimension scoped to an event.
  /// - "USER" : Dimension scoped to a user.
  /// - "ITEM" : Dimension scoped to eCommerce items
  core.String? scope;

  $CustomDimension({
    this.description,
    this.disallowAdsPersonalization,
    this.displayName,
    this.name,
    this.parameterName,
    this.scope,
  });

  $CustomDimension.fromJson(core.Map json_)
      : this(
          description: json_['description'] as core.String?,
          disallowAdsPersonalization:
              json_['disallowAdsPersonalization'] as core.bool?,
          displayName: json_['displayName'] as core.String?,
          name: json_['name'] as core.String?,
          parameterName: json_['parameterName'] as core.String?,
          scope: json_['scope'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (disallowAdsPersonalization != null)
          'disallowAdsPersonalization': disallowAdsPersonalization!,
        if (displayName != null) 'displayName': displayName!,
        if (name != null) 'name': name!,
        if (parameterName != null) 'parameterName': parameterName!,
        if (scope != null) 'scope': scope!,
      };
}

/// Used by:
///
/// - analyticsadmin:v1alpha : GoogleAnalyticsAdminV1alphaCustomMetric
/// - analyticsadmin:v1beta : GoogleAnalyticsAdminV1betaCustomMetric
class $CustomMetric {
  /// Description for this custom dimension.
  ///
  /// Max length of 150 characters.
  ///
  /// Optional.
  core.String? description;

  /// Display name for this custom metric as shown in the Analytics UI.
  ///
  /// Max length of 82 characters, alphanumeric plus space and underscore
  /// starting with a letter. Legacy system-generated display names may contain
  /// square brackets, but updates to this field will never permit square
  /// brackets.
  ///
  /// Required.
  core.String? displayName;

  /// The type for the custom metric's value.
  ///
  /// Required.
  /// Possible string values are:
  /// - "MEASUREMENT_UNIT_UNSPECIFIED" : MeasurementUnit unspecified or missing.
  /// - "STANDARD" : This metric uses default units.
  /// - "CURRENCY" : This metric measures a currency.
  /// - "FEET" : This metric measures feet.
  /// - "METERS" : This metric measures meters.
  /// - "KILOMETERS" : This metric measures kilometers.
  /// - "MILES" : This metric measures miles.
  /// - "MILLISECONDS" : This metric measures milliseconds.
  /// - "SECONDS" : This metric measures seconds.
  /// - "MINUTES" : This metric measures minutes.
  /// - "HOURS" : This metric measures hours.
  core.String? measurementUnit;

  /// Resource name for this CustomMetric resource.
  ///
  /// Format: properties/{property}/customMetrics/{customMetric}
  ///
  /// Output only.
  core.String? name;

  /// Tagging name for this custom metric.
  ///
  /// If this is an event-scoped metric, then this is the event parameter name.
  /// May only contain alphanumeric and underscore charactes, starting with a
  /// letter. Max length of 40 characters for event-scoped metrics.
  ///
  /// Required. Immutable.
  core.String? parameterName;

  /// Types of restricted data that this metric may contain.
  ///
  /// Required for metrics with CURRENCY measurement unit. Must be empty for
  /// metrics with a non-CURRENCY measurement unit.
  ///
  /// Optional.
  core.List<core.String>? restrictedMetricType;

  /// The scope of this custom metric.
  ///
  /// Required. Immutable.
  /// Possible string values are:
  /// - "METRIC_SCOPE_UNSPECIFIED" : Scope unknown or not specified.
  /// - "EVENT" : Metric scoped to an event.
  core.String? scope;

  $CustomMetric({
    this.description,
    this.displayName,
    this.measurementUnit,
    this.name,
    this.parameterName,
    this.restrictedMetricType,
    this.scope,
  });

  $CustomMetric.fromJson(core.Map json_)
      : this(
          description: json_['description'] as core.String?,
          displayName: json_['displayName'] as core.String?,
          measurementUnit: json_['measurementUnit'] as core.String?,
          name: json_['name'] as core.String?,
          parameterName: json_['parameterName'] as core.String?,
          restrictedMetricType: (json_['restrictedMetricType'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          scope: json_['scope'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (displayName != null) 'displayName': displayName!,
        if (measurementUnit != null) 'measurementUnit': measurementUnit!,
        if (name != null) 'name': name!,
        if (parameterName != null) 'parameterName': parameterName!,
        if (restrictedMetricType != null)
          'restrictedMetricType': restrictedMetricType!,
        if (scope != null) 'scope': scope!,
      };
}

/// Used by:
///
/// - analyticsadmin:v1alpha : GoogleAnalyticsAdminV1alphaDataRetentionSettings
/// - analyticsadmin:v1beta : GoogleAnalyticsAdminV1betaDataRetentionSettings
class $DataRetentionSettings {
  /// The length of time that event-level data is retained.
  ///
  /// Required.
  /// Possible string values are:
  /// - "RETENTION_DURATION_UNSPECIFIED" : Data retention time duration is not
  /// specified.
  /// - "TWO_MONTHS" : The data retention time duration is 2 months.
  /// - "FOURTEEN_MONTHS" : The data retention time duration is 14 months.
  /// - "TWENTY_SIX_MONTHS" : The data retention time duration is 26 months.
  /// Available to 360 properties only. Available for event data only.
  /// - "THIRTY_EIGHT_MONTHS" : The data retention time duration is 38 months.
  /// Available to 360 properties only. Available for event data only.
  /// - "FIFTY_MONTHS" : The data retention time duration is 50 months.
  /// Available to 360 properties only. Available for event data only.
  core.String? eventDataRetention;

  /// Resource name for this DataRetentionSetting resource.
  ///
  /// Format: properties/{property}/dataRetentionSettings
  ///
  /// Output only.
  core.String? name;

  /// If true, reset the retention period for the user identifier with every
  /// event from that user.
  core.bool? resetUserDataOnNewActivity;

  /// The length of time that user-level data is retained.
  ///
  /// Required.
  /// Possible string values are:
  /// - "RETENTION_DURATION_UNSPECIFIED" : Data retention time duration is not
  /// specified.
  /// - "TWO_MONTHS" : The data retention time duration is 2 months.
  /// - "FOURTEEN_MONTHS" : The data retention time duration is 14 months.
  /// - "TWENTY_SIX_MONTHS" : The data retention time duration is 26 months.
  /// Available to 360 properties only. Available for event data only.
  /// - "THIRTY_EIGHT_MONTHS" : The data retention time duration is 38 months.
  /// Available to 360 properties only. Available for event data only.
  /// - "FIFTY_MONTHS" : The data retention time duration is 50 months.
  /// Available to 360 properties only. Available for event data only.
  core.String? userDataRetention;

  $DataRetentionSettings({
    this.eventDataRetention,
    this.name,
    this.resetUserDataOnNewActivity,
    this.userDataRetention,
  });

  $DataRetentionSettings.fromJson(core.Map json_)
      : this(
          eventDataRetention: json_['eventDataRetention'] as core.String?,
          name: json_['name'] as core.String?,
          resetUserDataOnNewActivity:
              json_['resetUserDataOnNewActivity'] as core.bool?,
          userDataRetention: json_['userDataRetention'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (eventDataRetention != null)
          'eventDataRetention': eventDataRetention!,
        if (name != null) 'name': name!,
        if (resetUserDataOnNewActivity != null)
          'resetUserDataOnNewActivity': resetUserDataOnNewActivity!,
        if (userDataRetention != null) 'userDataRetention': userDataRetention!,
      };
}

/// Used by:
///
/// - analyticsadmin:v1alpha : GoogleAnalyticsAdminV1alphaDataSharingSettings
/// - analyticsadmin:v1beta : GoogleAnalyticsAdminV1betaDataSharingSettings
class $DataSharingSettings {
  /// Resource name.
  ///
  /// Format: accounts/{account}/dataSharingSettings Example:
  /// "accounts/1000/dataSharingSettings"
  ///
  /// Output only.
  core.String? name;

  /// This field is no longer used and always returns false.
  ///
  /// Deprecated.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.bool? sharingWithGoogleAnySalesEnabled;

  /// Allows Google access to your Google Analytics account data, including
  /// account usage and configuration data, product spending, and users
  /// associated with your Google Analytics account, so that Google can help you
  /// make the most of Google products, providing you with insights, offers,
  /// recommendations, and optimization tips across Google Analytics and other
  /// Google products for business.
  ///
  /// This field maps to the "Recommendations for your business" field in the
  /// Google Analytics Admin UI.
  core.bool? sharingWithGoogleAssignedSalesEnabled;

  /// Allows Google to use the data to improve other Google products or
  /// services.
  ///
  /// This fields maps to the "Google products & services" field in the Google
  /// Analytics Admin UI.
  core.bool? sharingWithGoogleProductsEnabled;

  /// Allows Google technical support representatives access to your Google
  /// Analytics data and account when necessary to provide service and find
  /// solutions to technical issues.
  ///
  /// This field maps to the "Technical support" field in the Google Analytics
  /// Admin UI.
  core.bool? sharingWithGoogleSupportEnabled;

  /// Enable features like predictions, modeled data, and benchmarking that can
  /// provide you with richer business insights when you contribute aggregated
  /// measurement data.
  ///
  /// The data you share (including information about the property from which it
  /// is shared) is aggregated and de-identified before being used to generate
  /// business insights. This field maps to the "Modeling contributions &
  /// business insights" field in the Google Analytics Admin UI.
  core.bool? sharingWithOthersEnabled;

  $DataSharingSettings({
    this.name,
    this.sharingWithGoogleAnySalesEnabled,
    this.sharingWithGoogleAssignedSalesEnabled,
    this.sharingWithGoogleProductsEnabled,
    this.sharingWithGoogleSupportEnabled,
    this.sharingWithOthersEnabled,
  });

  $DataSharingSettings.fromJson(core.Map json_)
      : this(
          name: json_['name'] as core.String?,
          sharingWithGoogleAnySalesEnabled:
              json_['sharingWithGoogleAnySalesEnabled'] as core.bool?,
          sharingWithGoogleAssignedSalesEnabled:
              json_['sharingWithGoogleAssignedSalesEnabled'] as core.bool?,
          sharingWithGoogleProductsEnabled:
              json_['sharingWithGoogleProductsEnabled'] as core.bool?,
          sharingWithGoogleSupportEnabled:
              json_['sharingWithGoogleSupportEnabled'] as core.bool?,
          sharingWithOthersEnabled:
              json_['sharingWithOthersEnabled'] as core.bool?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (sharingWithGoogleAnySalesEnabled != null)
          'sharingWithGoogleAnySalesEnabled': sharingWithGoogleAnySalesEnabled!,
        if (sharingWithGoogleAssignedSalesEnabled != null)
          'sharingWithGoogleAssignedSalesEnabled':
              sharingWithGoogleAssignedSalesEnabled!,
        if (sharingWithGoogleProductsEnabled != null)
          'sharingWithGoogleProductsEnabled': sharingWithGoogleProductsEnabled!,
        if (sharingWithGoogleSupportEnabled != null)
          'sharingWithGoogleSupportEnabled': sharingWithGoogleSupportEnabled!,
        if (sharingWithOthersEnabled != null)
          'sharingWithOthersEnabled': sharingWithOthersEnabled!,
      };
}

/// Used by:
///
/// - analyticsadmin:v1alpha : GoogleAnalyticsAdminV1alphaDataStreamAndroidAppStreamData
/// - analyticsadmin:v1beta : GoogleAnalyticsAdminV1betaDataStreamAndroidAppStreamData
class $DataStreamAndroidAppStreamData {
  /// ID of the corresponding Android app in Firebase, if any.
  ///
  /// This ID can change if the Android app is deleted and recreated.
  ///
  /// Output only.
  core.String? firebaseAppId;

  /// The package name for the app being measured.
  ///
  /// Example: "com.example.myandroidapp"
  ///
  /// Immutable.
  core.String? packageName;

  $DataStreamAndroidAppStreamData({
    this.firebaseAppId,
    this.packageName,
  });

  $DataStreamAndroidAppStreamData.fromJson(core.Map json_)
      : this(
          firebaseAppId: json_['firebaseAppId'] as core.String?,
          packageName: json_['packageName'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (firebaseAppId != null) 'firebaseAppId': firebaseAppId!,
        if (packageName != null) 'packageName': packageName!,
      };
}

/// Used by:
///
/// - analyticsadmin:v1alpha : GoogleAnalyticsAdminV1alphaDataStreamIosAppStreamData
/// - analyticsadmin:v1beta : GoogleAnalyticsAdminV1betaDataStreamIosAppStreamData
class $DataStreamIosAppStreamData {
  /// The Apple App Store Bundle ID for the app Example: "com.example.myiosapp"
  ///
  /// Required. Immutable.
  core.String? bundleId;

  /// ID of the corresponding iOS app in Firebase, if any.
  ///
  /// This ID can change if the iOS app is deleted and recreated.
  ///
  /// Output only.
  core.String? firebaseAppId;

  $DataStreamIosAppStreamData({
    this.bundleId,
    this.firebaseAppId,
  });

  $DataStreamIosAppStreamData.fromJson(core.Map json_)
      : this(
          bundleId: json_['bundleId'] as core.String?,
          firebaseAppId: json_['firebaseAppId'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bundleId != null) 'bundleId': bundleId!,
        if (firebaseAppId != null) 'firebaseAppId': firebaseAppId!,
      };
}

/// Used by:
///
/// - analyticsadmin:v1alpha : GoogleAnalyticsAdminV1alphaDataStreamWebStreamData
/// - analyticsadmin:v1beta : GoogleAnalyticsAdminV1betaDataStreamWebStreamData
class $DataStreamWebStreamData {
  /// Domain name of the web app being measured, or empty.
  ///
  /// Example: "http://www.google.com", "https://www.google.com"
  core.String? defaultUri;

  /// ID of the corresponding web app in Firebase, if any.
  ///
  /// This ID can change if the web app is deleted and recreated.
  ///
  /// Output only.
  core.String? firebaseAppId;

  /// Analytics Measurement ID.
  ///
  /// Example: "G-1A2BCD345E"
  ///
  /// Output only.
  core.String? measurementId;

  $DataStreamWebStreamData({
    this.defaultUri,
    this.firebaseAppId,
    this.measurementId,
  });

  $DataStreamWebStreamData.fromJson(core.Map json_)
      : this(
          defaultUri: json_['defaultUri'] as core.String?,
          firebaseAppId: json_['firebaseAppId'] as core.String?,
          measurementId: json_['measurementId'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (defaultUri != null) 'defaultUri': defaultUri!,
        if (firebaseAppId != null) 'firebaseAppId': firebaseAppId!,
        if (measurementId != null) 'measurementId': measurementId!,
      };
}

/// Used by:
///
/// - adexchangebuyer2:v2beta1 : Date
/// - fcmdata:v1beta1 : GoogleTypeDate
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
          day: json_['day'] as core.int?,
          month: json_['month'] as core.int?,
          year: json_['year'] as core.int?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (day != null) 'day': day!,
        if (month != null) 'month': month!,
        if (year != null) 'year': year!,
      };
}

/// Used by:
///
/// - analyticsadmin:v1alpha : GoogleAnalyticsAdminV1alphaAccessOrderByDimensionOrderBy
/// - analyticsadmin:v1beta : GoogleAnalyticsAdminV1betaAccessOrderByDimensionOrderBy
/// - analyticsdata:v1beta : DimensionOrderBy
class $DimensionOrderBy {
  /// A dimension name in the request to order by.
  core.String? dimensionName;

  /// Controls the rule for dimension value ordering.
  /// Possible string values are:
  /// - "ORDER_TYPE_UNSPECIFIED" : Unspecified.
  /// - "ALPHANUMERIC" : Alphanumeric sort by Unicode code point. For example,
  /// "2" \< "A" \< "X" \< "b" \< "z".
  /// - "CASE_INSENSITIVE_ALPHANUMERIC" : Case insensitive alphanumeric sort by
  /// lower case Unicode code point. For example, "2" \< "A" \< "b" \< "X" \<
  /// "z".
  /// - "NUMERIC" : Dimension values are converted to numbers before sorting.
  /// For example in NUMERIC sort, "25" \< "100", and in `ALPHANUMERIC` sort,
  /// "100" \< "25". Non-numeric dimension values all have equal ordering value
  /// below all numeric values.
  core.String? orderType;

  $DimensionOrderBy({
    this.dimensionName,
    this.orderType,
  });

  $DimensionOrderBy.fromJson(core.Map json_)
      : this(
          dimensionName: json_['dimensionName'] as core.String?,
          orderType: json_['orderType'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dimensionName != null) 'dimensionName': dimensionName!,
        if (orderType != null) 'orderType': orderType!,
      };
}

/// Used by:
///
/// - analyticsdata:v1beta : DimensionValue
/// - analyticsdata:v1beta : V1betaAudienceDimensionValue
class $DimensionValue {
  /// Value as a string if the dimension type is a string.
  core.String? value;

  $DimensionValue({
    this.value,
  });

  $DimensionValue.fromJson(core.Map json_)
      : this(
          value: json_['value'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (value != null) 'value': value!,
      };
}

/// Used by:
///
/// - adexchangebuyer2:v2beta1 : CancelNegotiationRequest
/// - adexchangebuyer2:v2beta1 : CompleteSetupRequest
/// - adexchangebuyer2:v2beta1 : Empty
/// - adexchangebuyer2:v2beta1 : ResumeProposalRequest
/// - adexchangebuyer2:v2beta1 : StopWatchingCreativeRequest
/// - alertcenter:v1beta1 : Empty
/// - analyticsadmin:v1alpha : GoogleAnalyticsAdminV1alphaAcknowledgeUserDataCollectionResponse
/// - analyticsadmin:v1alpha : GoogleAnalyticsAdminV1alphaApproveDisplayVideo360AdvertiserLinkProposalRequest
/// - analyticsadmin:v1alpha : GoogleAnalyticsAdminV1alphaArchiveAudienceRequest
/// - analyticsadmin:v1alpha : GoogleAnalyticsAdminV1alphaArchiveCustomDimensionRequest
/// - analyticsadmin:v1alpha : GoogleAnalyticsAdminV1alphaArchiveCustomMetricRequest
/// - analyticsadmin:v1alpha : GoogleAnalyticsAdminV1alphaCancelDisplayVideo360AdvertiserLinkProposalRequest
/// - analyticsadmin:v1alpha : GoogleAnalyticsAdminV1alphaCreateConnectedSiteTagResponse
/// - analyticsadmin:v1alpha : GoogleAnalyticsAdminV1alphaSetAutomatedGa4ConfigurationOptOutResponse
/// - analyticsadmin:v1alpha : GoogleProtobufEmpty
/// - analyticsadmin:v1beta : GoogleAnalyticsAdminV1betaAcknowledgeUserDataCollectionResponse
/// - analyticsadmin:v1beta : GoogleAnalyticsAdminV1betaArchiveCustomDimensionRequest
/// - analyticsadmin:v1beta : GoogleAnalyticsAdminV1betaArchiveCustomMetricRequest
/// - analyticsadmin:v1beta : GoogleProtobufEmpty
/// - analyticsdata:v1beta : EmptyFilter
/// - area120tables:v1alpha1 : Empty
/// - bigqueryconnection:v1beta1 : Empty
/// - clouderrorreporting:v1beta1 : DeleteEventsResponse
/// - clouderrorreporting:v1beta1 : ReportErrorEventResponse
/// - cloudsupport:v2beta : CloseCaseRequest
/// - dataflow:v1b3 : DeleteSnapshotResponse
/// - dataflow:v1b3 : ResourceUtilizationReportResponse
/// - dataflow:v1b3 : SendDebugCaptureResponse
/// - dataflow:v1b3 : WorkerShutdownNoticeResponse
/// - datalabeling:v1beta1 : GoogleCloudDatalabelingV1beta1OperatorFeedbackMetadata
/// - datalabeling:v1beta1 : GoogleCloudDatalabelingV1beta1PauseEvaluationJobRequest
/// - datalabeling:v1beta1 : GoogleCloudDatalabelingV1beta1RequesterFeedbackMetadata
/// - datalabeling:v1beta1 : GoogleCloudDatalabelingV1beta1ResumeEvaluationJobRequest
/// - datalabeling:v1beta1 : GoogleProtobufEmpty
/// - datastream:v1alpha1 : AvroFileFormat
/// - datastream:v1alpha1 : BackfillNoneStrategy
/// - datastream:v1alpha1 : CancelOperationRequest
/// - datastream:v1alpha1 : DropLargeObjects
/// - datastream:v1alpha1 : Empty
/// - datastream:v1alpha1 : FetchErrorsRequest
/// - datastream:v1alpha1 : NoConnectivitySettings
/// - datastream:v1alpha1 : StaticServiceIpConnectivity
/// - factchecktools:v1alpha1 : GoogleProtobufEmpty
/// - firebase:v1beta1 : Empty
/// - firebaseappcheck:v1beta : GoogleFirebaseAppcheckV1betaGenerateAppAttestChallengeRequest
/// - firebaseappcheck:v1beta : GoogleFirebaseAppcheckV1betaGeneratePlayIntegrityChallengeRequest
/// - firebaseappcheck:v1beta : GoogleProtobufEmpty
/// - firebasedatabase:v1beta : DisableDatabaseInstanceRequest
/// - firebasedatabase:v1beta : ReenableDatabaseInstanceRequest
/// - firebasedatabase:v1beta : UndeleteDatabaseInstanceRequest
/// - firebasestorage:v1beta : AddFirebaseRequest
/// - firebasestorage:v1beta : Empty
/// - firebasestorage:v1beta : RemoveFirebaseRequest
/// - gkehub:v2alpha : CancelOperationRequest
/// - gkehub:v2alpha : Empty
/// - lifesciences:v2beta : CancelOperationRequest
/// - lifesciences:v2beta : Empty
/// - prod_tt_sasportal:v1alpha1 : SasPortalEmpty
/// - prod_tt_sasportal:v1alpha1 : SasPortalGenerateSecretRequest
/// - prod_tt_sasportal:v1alpha1 : SasPortalValidateInstallerResponse
/// - recommendationengine:v1beta1 : GoogleProtobufEmpty
/// - sasportal:v1alpha1 : SasPortalEmpty
/// - sasportal:v1alpha1 : SasPortalGenerateSecretRequest
/// - sasportal:v1alpha1 : SasPortalValidateInstallerResponse
/// - sqladmin:v1beta4 : Empty
/// - sqladmin:v1beta4 : SqlInstancesResetReplicaSizeRequest
/// - toolresults:v1beta3 : AndroidTestLoop
/// - toolresults:v1beta3 : IosRoboTest
/// - toolresults:v1beta3 : MatrixDimensionDefinition
/// - toolresults:v1beta3 : StepSummary
class $Empty {
  $Empty();

  $Empty.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map json_);

  core.Map<core.String, core.dynamic> toJson() => {};
}

/// Used by:
///
/// - toolresults:v1beta3 : EnvironmentDimensionValueEntry
/// - toolresults:v1beta3 : StepDimensionValueEntry
/// - toolresults:v1beta3 : StepLabelsEntry
class $Entry {
  core.String? key;
  core.String? value;

  $Entry({
    this.key,
    this.value,
  });

  $Entry.fromJson(core.Map json_)
      : this(
          key: json_['key'] as core.String?,
          value: json_['value'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (key != null) 'key': key!,
        if (value != null) 'value': value!,
      };
}

/// Used by:
///
/// - analyticsadmin:v1alpha : GoogleAnalyticsAdminV1alphaFirebaseLink
/// - analyticsadmin:v1beta : GoogleAnalyticsAdminV1betaFirebaseLink
class $FirebaseLink {
  /// Time when this FirebaseLink was originally created.
  ///
  /// Output only.
  core.String? createTime;

  /// Example format: properties/1234/firebaseLinks/5678
  ///
  /// Output only.
  core.String? name;

  /// Firebase project resource name.
  ///
  /// When creating a FirebaseLink, you may provide this resource name using
  /// either a project number or project ID. Once this resource has been
  /// created, returned FirebaseLinks will always have a project_name that
  /// contains a project number. Format: 'projects/{project number}' Example:
  /// 'projects/1234'
  ///
  /// Immutable.
  core.String? project;

  $FirebaseLink({
    this.createTime,
    this.name,
    this.project,
  });

  $FirebaseLink.fromJson(core.Map json_)
      : this(
          createTime: json_['createTime'] as core.String?,
          name: json_['name'] as core.String?,
          project: json_['project'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (name != null) 'name': name!,
        if (project != null) 'project': project!,
      };
}

/// Used by:
///
/// - analyticsadmin:v1alpha : GoogleAnalyticsAdminV1alphaGoogleAdsLink
/// - analyticsadmin:v1beta : GoogleAnalyticsAdminV1betaGoogleAdsLink
class $GoogleAdsLink {
  /// Enable personalized advertising features with this integration.
  ///
  /// Automatically publish my Google Analytics audience lists and Google
  /// Analytics remarketing events/parameters to the linked Google Ads account.
  /// If this field is not set on create/update, it will be defaulted to true.
  core.bool? adsPersonalizationEnabled;

  /// If true, this link is for a Google Ads manager account.
  ///
  /// Output only.
  core.bool? canManageClients;

  /// Time when this link was originally created.
  ///
  /// Output only.
  core.String? createTime;

  /// Email address of the user that created the link.
  ///
  /// An empty string will be returned if the email address can't be retrieved.
  ///
  /// Output only.
  core.String? creatorEmailAddress;

  /// Google Ads customer ID.
  ///
  /// Immutable.
  core.String? customerId;

  /// Format: properties/{propertyId}/googleAdsLinks/{googleAdsLinkId} Note:
  /// googleAdsLinkId is not the Google Ads customer ID.
  ///
  /// Output only.
  core.String? name;

  /// Time when this link was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  $GoogleAdsLink({
    this.adsPersonalizationEnabled,
    this.canManageClients,
    this.createTime,
    this.creatorEmailAddress,
    this.customerId,
    this.name,
    this.updateTime,
  });

  $GoogleAdsLink.fromJson(core.Map json_)
      : this(
          adsPersonalizationEnabled:
              json_['adsPersonalizationEnabled'] as core.bool?,
          canManageClients: json_['canManageClients'] as core.bool?,
          createTime: json_['createTime'] as core.String?,
          creatorEmailAddress: json_['creatorEmailAddress'] as core.String?,
          customerId: json_['customerId'] as core.String?,
          name: json_['name'] as core.String?,
          updateTime: json_['updateTime'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (adsPersonalizationEnabled != null)
          'adsPersonalizationEnabled': adsPersonalizationEnabled!,
        if (canManageClients != null) 'canManageClients': canManageClients!,
        if (createTime != null) 'createTime': createTime!,
        if (creatorEmailAddress != null)
          'creatorEmailAddress': creatorEmailAddress!,
        if (customerId != null) 'customerId': customerId!,
        if (name != null) 'name': name!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// Used by:
///
/// - analyticsadmin:v1alpha : GoogleAnalyticsAdminV1alphaAccessInListFilter
/// - analyticsadmin:v1beta : GoogleAnalyticsAdminV1betaAccessInListFilter
/// - analyticsdata:v1beta : InListFilter
class $InListFilter {
  /// If true, the string value is case sensitive.
  core.bool? caseSensitive;

  /// The list of string values.
  ///
  /// Must be non-empty.
  core.List<core.String>? values;

  $InListFilter({
    this.caseSensitive,
    this.values,
  });

  $InListFilter.fromJson(core.Map json_)
      : this(
          caseSensitive: json_['caseSensitive'] as core.bool?,
          values: (json_['values'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (caseSensitive != null) 'caseSensitive': caseSensitive!,
        if (values != null) 'values': values!,
      };
}

/// Used by:
///
/// - analyticsadmin:v1alpha : GoogleAnalyticsAdminV1alphaKeyEventDefaultValue
/// - analyticsadmin:v1beta : GoogleAnalyticsAdminV1betaKeyEventDefaultValue
class $KeyEventDefaultValue {
  /// When an occurrence of this Key Event (specified by event_name) has no set
  /// currency this currency will be applied as the default.
  ///
  /// Must be in ISO 4217 currency code format. See
  /// https://en.wikipedia.org/wiki/ISO_4217 for more information.
  ///
  /// Required.
  core.String? currencyCode;

  /// This will be used to populate the "value" parameter for all occurrences of
  /// this Key Event (specified by event_name) where that parameter is unset.
  ///
  /// Required.
  core.double? numericValue;

  $KeyEventDefaultValue({
    this.currencyCode,
    this.numericValue,
  });

  $KeyEventDefaultValue.fromJson(core.Map json_)
      : this(
          currencyCode: json_['currencyCode'] as core.String?,
          numericValue: json_.containsKey('numericValue')
              ? decodeDouble(json_['numericValue'] as core.Object)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (currencyCode != null) 'currencyCode': currencyCode!,
        if (numericValue != null) 'numericValue': encodeDouble(numericValue!),
      };
}

/// Used by:
///
/// - datastream:v1alpha1 : Location
/// - gkehub:v2alpha : Location
/// - lifesciences:v2beta : Location
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

  $Location({
    this.displayName,
    this.labels,
    this.locationId,
    this.metadata,
    this.name,
  });

  $Location.fromJson(core.Map json_)
      : this(
          displayName: json_['displayName'] as core.String?,
          labels:
              (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
            (key, value) => core.MapEntry(
              key,
              value as core.String,
            ),
          ),
          locationId: json_['locationId'] as core.String?,
          metadata: json_.containsKey('metadata')
              ? json_['metadata'] as core.Map<core.String, core.dynamic>
              : null,
          name: json_['name'] as core.String?,
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
/// - analyticsadmin:v1alpha : GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret
/// - analyticsadmin:v1beta : GoogleAnalyticsAdminV1betaMeasurementProtocolSecret
class $MeasurementProtocolSecret {
  /// Human-readable display name for this secret.
  ///
  /// Required.
  core.String? displayName;

  /// Resource name of this secret.
  ///
  /// This secret may be a child of any type of stream. Format:
  /// properties/{property}/dataStreams/{dataStream}/measurementProtocolSecrets/{measurementProtocolSecret}
  ///
  /// Output only.
  core.String? name;

  /// The measurement protocol secret value.
  ///
  /// Pass this value to the api_secret field of the Measurement Protocol API
  /// when sending hits to this secret's parent property.
  ///
  /// Output only.
  core.String? secretValue;

  $MeasurementProtocolSecret({
    this.displayName,
    this.name,
    this.secretValue,
  });

  $MeasurementProtocolSecret.fromJson(core.Map json_)
      : this(
          displayName: json_['displayName'] as core.String?,
          name: json_['name'] as core.String?,
          secretValue: json_['secretValue'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (name != null) 'name': name!,
        if (secretValue != null) 'secretValue': secretValue!,
      };
}

/// Used by:
///
/// - analyticsadmin:v1alpha : GoogleAnalyticsAdminV1alphaAccessOrderByMetricOrderBy
/// - analyticsadmin:v1beta : GoogleAnalyticsAdminV1betaAccessOrderByMetricOrderBy
/// - analyticsdata:v1beta : MetricOrderBy
class $MetricOrderBy {
  /// A metric name in the request to order by.
  core.String? metricName;

  $MetricOrderBy({
    this.metricName,
  });

  $MetricOrderBy.fromJson(core.Map json_)
      : this(
          metricName: json_['metricName'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (metricName != null) 'metricName': metricName!,
      };
}

/// Used by:
///
/// - analyticsadmin:v1alpha : GoogleAnalyticsAdminV1alphaNumericValue
/// - analyticsadmin:v1beta : GoogleAnalyticsAdminV1betaNumericValue
/// - analyticsdata:v1beta : NumericValue
class $NumericValue {
  /// Double value
  core.double? doubleValue;

  /// Integer value
  core.String? int64Value;

  $NumericValue({
    this.doubleValue,
    this.int64Value,
  });

  $NumericValue.fromJson(core.Map json_)
      : this(
          doubleValue: json_.containsKey('doubleValue')
              ? decodeDouble(json_['doubleValue'] as core.Object)
              : null,
          int64Value: json_['int64Value'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (doubleValue != null) 'doubleValue': encodeDouble(doubleValue!),
        if (int64Value != null) 'int64Value': int64Value!,
      };
}

/// Used by:
///
/// - analyticsadmin:v1alpha : GoogleAnalyticsAdminV1alphaProperty
/// - analyticsadmin:v1beta : GoogleAnalyticsAdminV1betaProperty
class $Property {
  /// The resource name of the parent account Format: accounts/{account_id}
  /// Example: "accounts/123"
  ///
  /// Immutable.
  core.String? account;

  /// Time when the entity was originally created.
  ///
  /// Output only.
  core.String? createTime;

  /// The currency type used in reports involving monetary values.
  ///
  /// Format: https://en.wikipedia.org/wiki/ISO_4217 Examples: "USD", "EUR",
  /// "JPY"
  core.String? currencyCode;

  /// If set, the time at which this property was trashed.
  ///
  /// If not set, then this property is not currently in the trash can.
  ///
  /// Output only.
  core.String? deleteTime;

  /// Human-readable display name for this property.
  ///
  /// The max allowed display name length is 100 UTF-16 code units.
  ///
  /// Required.
  core.String? displayName;

  /// If set, the time at which this trashed property will be permanently
  /// deleted.
  ///
  /// If not set, then this property is not currently in the trash can and is
  /// not slated to be deleted.
  ///
  /// Output only.
  core.String? expireTime;

  /// Industry associated with this property Example: AUTOMOTIVE, FOOD_AND_DRINK
  /// Possible string values are:
  /// - "INDUSTRY_CATEGORY_UNSPECIFIED" : Industry category unspecified
  /// - "AUTOMOTIVE" : Automotive
  /// - "BUSINESS_AND_INDUSTRIAL_MARKETS" : Business and industrial markets
  /// - "FINANCE" : Finance
  /// - "HEALTHCARE" : Healthcare
  /// - "TECHNOLOGY" : Technology
  /// - "TRAVEL" : Travel
  /// - "OTHER" : Other
  /// - "ARTS_AND_ENTERTAINMENT" : Arts and entertainment
  /// - "BEAUTY_AND_FITNESS" : Beauty and fitness
  /// - "BOOKS_AND_LITERATURE" : Books and literature
  /// - "FOOD_AND_DRINK" : Food and drink
  /// - "GAMES" : Games
  /// - "HOBBIES_AND_LEISURE" : Hobbies and leisure
  /// - "HOME_AND_GARDEN" : Home and garden
  /// - "INTERNET_AND_TELECOM" : Internet and telecom
  /// - "LAW_AND_GOVERNMENT" : Law and government
  /// - "NEWS" : News
  /// - "ONLINE_COMMUNITIES" : Online communities
  /// - "PEOPLE_AND_SOCIETY" : People and society
  /// - "PETS_AND_ANIMALS" : Pets and animals
  /// - "REAL_ESTATE" : Real estate
  /// - "REFERENCE" : Reference
  /// - "SCIENCE" : Science
  /// - "SPORTS" : Sports
  /// - "JOBS_AND_EDUCATION" : Jobs and education
  /// - "SHOPPING" : Shopping
  core.String? industryCategory;

  /// Resource name of this property.
  ///
  /// Format: properties/{property_id} Example: "properties/1000"
  ///
  /// Output only.
  core.String? name;

  /// Resource name of this property's logical parent.
  ///
  /// Note: The Property-Moving UI can be used to change the parent. Format:
  /// accounts/{account}, properties/{property} Example: "accounts/100",
  /// "properties/101"
  ///
  /// Immutable.
  core.String? parent;

  /// The property type for this Property resource.
  ///
  /// When creating a property, if the type is "PROPERTY_TYPE_UNSPECIFIED", then
  /// "ORDINARY_PROPERTY" will be implied.
  ///
  /// Immutable.
  /// Possible string values are:
  /// - "PROPERTY_TYPE_UNSPECIFIED" : Unknown or unspecified property type
  /// - "PROPERTY_TYPE_ORDINARY" : Ordinary Google Analytics property
  /// - "PROPERTY_TYPE_SUBPROPERTY" : Google Analytics subproperty
  /// - "PROPERTY_TYPE_ROLLUP" : Google Analytics rollup property
  core.String? propertyType;

  /// The Google Analytics service level that applies to this property.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "SERVICE_LEVEL_UNSPECIFIED" : Service level not specified or invalid.
  /// - "GOOGLE_ANALYTICS_STANDARD" : The standard version of Google Analytics.
  /// - "GOOGLE_ANALYTICS_360" : The paid, premium version of Google Analytics.
  core.String? serviceLevel;

  /// Reporting Time Zone, used as the day boundary for reports, regardless of
  /// where the data originates.
  ///
  /// If the time zone honors DST, Analytics will automatically adjust for the
  /// changes. NOTE: Changing the time zone only affects data going forward, and
  /// is not applied retroactively. Format: https://www.iana.org/time-zones
  /// Example: "America/Los_Angeles"
  ///
  /// Required.
  core.String? timeZone;

  /// Time when entity payload fields were last updated.
  ///
  /// Output only.
  core.String? updateTime;

  $Property({
    this.account,
    this.createTime,
    this.currencyCode,
    this.deleteTime,
    this.displayName,
    this.expireTime,
    this.industryCategory,
    this.name,
    this.parent,
    this.propertyType,
    this.serviceLevel,
    this.timeZone,
    this.updateTime,
  });

  $Property.fromJson(core.Map json_)
      : this(
          account: json_['account'] as core.String?,
          createTime: json_['createTime'] as core.String?,
          currencyCode: json_['currencyCode'] as core.String?,
          deleteTime: json_['deleteTime'] as core.String?,
          displayName: json_['displayName'] as core.String?,
          expireTime: json_['expireTime'] as core.String?,
          industryCategory: json_['industryCategory'] as core.String?,
          name: json_['name'] as core.String?,
          parent: json_['parent'] as core.String?,
          propertyType: json_['propertyType'] as core.String?,
          serviceLevel: json_['serviceLevel'] as core.String?,
          timeZone: json_['timeZone'] as core.String?,
          updateTime: json_['updateTime'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (account != null) 'account': account!,
        if (createTime != null) 'createTime': createTime!,
        if (currencyCode != null) 'currencyCode': currencyCode!,
        if (deleteTime != null) 'deleteTime': deleteTime!,
        if (displayName != null) 'displayName': displayName!,
        if (expireTime != null) 'expireTime': expireTime!,
        if (industryCategory != null) 'industryCategory': industryCategory!,
        if (name != null) 'name': name!,
        if (parent != null) 'parent': parent!,
        if (propertyType != null) 'propertyType': propertyType!,
        if (serviceLevel != null) 'serviceLevel': serviceLevel!,
        if (timeZone != null) 'timeZone': timeZone!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// Used by:
///
/// - analyticsadmin:v1alpha : GoogleAnalyticsAdminV1alphaPropertySummary
/// - analyticsadmin:v1beta : GoogleAnalyticsAdminV1betaPropertySummary
class $PropertySummary {
  /// Display name for the property referred to in this property summary.
  core.String? displayName;

  /// Resource name of this property's logical parent.
  ///
  /// Note: The Property-Moving UI can be used to change the parent. Format:
  /// accounts/{account}, properties/{property} Example: "accounts/100",
  /// "properties/200"
  core.String? parent;

  /// Resource name of property referred to by this property summary Format:
  /// properties/{property_id} Example: "properties/1000"
  core.String? property;

  /// The property's property type.
  /// Possible string values are:
  /// - "PROPERTY_TYPE_UNSPECIFIED" : Unknown or unspecified property type
  /// - "PROPERTY_TYPE_ORDINARY" : Ordinary Google Analytics property
  /// - "PROPERTY_TYPE_SUBPROPERTY" : Google Analytics subproperty
  /// - "PROPERTY_TYPE_ROLLUP" : Google Analytics rollup property
  core.String? propertyType;

  $PropertySummary({
    this.displayName,
    this.parent,
    this.property,
    this.propertyType,
  });

  $PropertySummary.fromJson(core.Map json_)
      : this(
          displayName: json_['displayName'] as core.String?,
          parent: json_['parent'] as core.String?,
          property: json_['property'] as core.String?,
          propertyType: json_['propertyType'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (parent != null) 'parent': parent!,
        if (property != null) 'property': property!,
        if (propertyType != null) 'propertyType': propertyType!,
      };
}

/// Used by:
///
/// - analyticsadmin:v1alpha : GoogleAnalyticsAdminV1alphaProvisionAccountTicketResponse
/// - analyticsadmin:v1beta : GoogleAnalyticsAdminV1betaProvisionAccountTicketResponse
class $ProvisionAccountTicketResponse {
  /// The param to be passed in the ToS link.
  core.String? accountTicketId;

  $ProvisionAccountTicketResponse({
    this.accountTicketId,
  });

  $ProvisionAccountTicketResponse.fromJson(core.Map json_)
      : this(
          accountTicketId: json_['accountTicketId'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountTicketId != null) 'accountTicketId': accountTicketId!,
      };
}

/// Used by:
///
/// - analyticsadmin:v1alpha : GoogleAnalyticsAdminV1alphaAccessQuotaStatus
/// - analyticsadmin:v1beta : GoogleAnalyticsAdminV1betaAccessQuotaStatus
/// - analyticsdata:v1beta : QuotaStatus
class $QuotaStatus {
  /// Quota consumed by this request.
  core.int? consumed;

  /// Quota remaining after this request.
  core.int? remaining;

  $QuotaStatus({
    this.consumed,
    this.remaining,
  });

  $QuotaStatus.fromJson(core.Map json_)
      : this(
          consumed: json_['consumed'] as core.int?,
          remaining: json_['remaining'] as core.int?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (consumed != null) 'consumed': consumed!,
        if (remaining != null) 'remaining': remaining!,
      };
}

/// Used by:
///
/// - prod_tt_sasportal:v1alpha1 : SasPortalAssignment
/// - sasportal:v1alpha1 : SasPortalAssignment
class $SasPortalAssignment {
  /// The identities the role is assigned to.
  ///
  /// It can have the following values: * `{user_email}`: An email address that
  /// represents a specific Google account. For example: `alice@gmail.com`. *
  /// `{group_email}`: An email address that represents a Google group. For
  /// example, `viewers@gmail.com`.
  core.List<core.String>? members;

  /// Role that is assigned to `members`.
  ///
  /// Required.
  core.String? role;

  $SasPortalAssignment({
    this.members,
    this.role,
  });

  $SasPortalAssignment.fromJson(core.Map json_)
      : this(
          members: (json_['members'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          role: json_['role'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (members != null) 'members': members!,
        if (role != null) 'role': role!,
      };
}

/// Used by:
///
/// - prod_tt_sasportal:v1alpha1 : SasPortalCreateSignedDeviceRequest
/// - sasportal:v1alpha1 : SasPortalCreateSignedDeviceRequest
class $SasPortalCreateSignedDeviceRequest {
  /// JSON Web Token signed using a CPI private key.
  ///
  /// Payload must be the JSON encoding of the device. The user_id field must be
  /// set.
  ///
  /// Required.
  core.String? encodedDevice;
  core.List<core.int> get encodedDeviceAsBytes =>
      convert.base64.decode(encodedDevice!);

  set encodedDeviceAsBytes(core.List<core.int> bytes_) {
    encodedDevice =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Unique installer id (CPI ID) from the Certified Professional Installers
  /// database.
  ///
  /// Required.
  core.String? installerId;

  $SasPortalCreateSignedDeviceRequest({
    this.encodedDevice,
    this.installerId,
  });

  $SasPortalCreateSignedDeviceRequest.fromJson(core.Map json_)
      : this(
          encodedDevice: json_['encodedDevice'] as core.String?,
          installerId: json_['installerId'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (encodedDevice != null) 'encodedDevice': encodedDevice!,
        if (installerId != null) 'installerId': installerId!,
      };
}

/// Used by:
///
/// - prod_tt_sasportal:v1alpha1 : SasPortalCustomer
/// - sasportal:v1alpha1 : SasPortalCustomer
class $SasPortalCustomer {
  /// Name of the organization that the customer entity represents.
  ///
  /// Required.
  core.String? displayName;

  /// Resource name of the customer.
  ///
  /// Output only.
  core.String? name;

  /// User IDs used by the devices belonging to this customer.
  core.List<core.String>? sasUserIds;

  $SasPortalCustomer({
    this.displayName,
    this.name,
    this.sasUserIds,
  });

  $SasPortalCustomer.fromJson(core.Map json_)
      : this(
          displayName: json_['displayName'] as core.String?,
          name: json_['name'] as core.String?,
          sasUserIds: (json_['sasUserIds'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (name != null) 'name': name!,
        if (sasUserIds != null) 'sasUserIds': sasUserIds!,
      };
}

/// Used by:
///
/// - prod_tt_sasportal:v1alpha1 : SasPortalDeployment
/// - sasportal:v1alpha1 : SasPortalDeployment
class $SasPortalDeployment {
  /// The deployment's display name.
  core.String? displayName;

  /// The FCC Registration Numbers (FRNs) copied from its direct parent.
  ///
  /// Output only.
  core.List<core.String>? frns;

  /// Resource name.
  ///
  /// Output only.
  core.String? name;

  /// User ID used by the devices belonging to this deployment.
  ///
  /// Each deployment should be associated with one unique user ID.
  core.List<core.String>? sasUserIds;

  $SasPortalDeployment({
    this.displayName,
    this.frns,
    this.name,
    this.sasUserIds,
  });

  $SasPortalDeployment.fromJson(core.Map json_)
      : this(
          displayName: json_['displayName'] as core.String?,
          frns: (json_['frns'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          name: json_['name'] as core.String?,
          sasUserIds: (json_['sasUserIds'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (frns != null) 'frns': frns!,
        if (name != null) 'name': name!,
        if (sasUserIds != null) 'sasUserIds': sasUserIds!,
      };
}

/// Used by:
///
/// - prod_tt_sasportal:v1alpha1 : SasPortalDeviceAirInterface
/// - sasportal:v1alpha1 : SasPortalDeviceAirInterface
class $SasPortalDeviceAirInterface {
  /// Conditional.
  ///
  /// This field specifies the radio access technology that is used for the
  /// CBSD.
  /// Possible string values are:
  /// - "RADIO_TECHNOLOGY_UNSPECIFIED"
  /// - "E_UTRA"
  /// - "CAMBIUM_NETWORKS"
  /// - "FOUR_G_BBW_SAA_1"
  /// - "NR"
  /// - "DOODLE_CBRS"
  /// - "CW"
  /// - "REDLINE"
  /// - "TARANA_WIRELESS"
  /// - "FAROS"
  core.String? radioTechnology;

  /// This field is related to the `radioTechnology` and provides the air
  /// interface specification that the CBSD is compliant with at the time of
  /// registration.
  ///
  /// Optional.
  core.String? supportedSpec;

  $SasPortalDeviceAirInterface({
    this.radioTechnology,
    this.supportedSpec,
  });

  $SasPortalDeviceAirInterface.fromJson(core.Map json_)
      : this(
          radioTechnology: json_['radioTechnology'] as core.String?,
          supportedSpec: json_['supportedSpec'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (radioTechnology != null) 'radioTechnology': radioTechnology!,
        if (supportedSpec != null) 'supportedSpec': supportedSpec!,
      };
}

/// Used by:
///
/// - prod_tt_sasportal:v1alpha1 : SasPortalDeviceModel
/// - sasportal:v1alpha1 : SasPortalDeviceModel
class $SasPortalDeviceModel {
  /// The firmware version of the device.
  core.String? firmwareVersion;

  /// The hardware version of the device.
  core.String? hardwareVersion;

  /// The name of the device model.
  core.String? name;

  /// The software version of the device.
  core.String? softwareVersion;

  /// The name of the device vendor.
  core.String? vendor;

  $SasPortalDeviceModel({
    this.firmwareVersion,
    this.hardwareVersion,
    this.name,
    this.softwareVersion,
    this.vendor,
  });

  $SasPortalDeviceModel.fromJson(core.Map json_)
      : this(
          firmwareVersion: json_['firmwareVersion'] as core.String?,
          hardwareVersion: json_['hardwareVersion'] as core.String?,
          name: json_['name'] as core.String?,
          softwareVersion: json_['softwareVersion'] as core.String?,
          vendor: json_['vendor'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (firmwareVersion != null) 'firmwareVersion': firmwareVersion!,
        if (hardwareVersion != null) 'hardwareVersion': hardwareVersion!,
        if (name != null) 'name': name!,
        if (softwareVersion != null) 'softwareVersion': softwareVersion!,
        if (vendor != null) 'vendor': vendor!,
      };
}

/// Used by:
///
/// - prod_tt_sasportal:v1alpha1 : SasPortalFrequencyRange
/// - sasportal:v1alpha1 : SasPortalFrequencyRange
class $SasPortalFrequencyRange {
  /// The highest frequency of the frequency range in MHz.
  core.double? highFrequencyMhz;

  /// The lowest frequency of the frequency range in MHz.
  core.double? lowFrequencyMhz;

  $SasPortalFrequencyRange({
    this.highFrequencyMhz,
    this.lowFrequencyMhz,
  });

  $SasPortalFrequencyRange.fromJson(core.Map json_)
      : this(
          highFrequencyMhz: json_.containsKey('highFrequencyMhz')
              ? decodeDouble(json_['highFrequencyMhz'] as core.Object)
              : null,
          lowFrequencyMhz: json_.containsKey('lowFrequencyMhz')
              ? decodeDouble(json_['lowFrequencyMhz'] as core.Object)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (highFrequencyMhz != null)
          'highFrequencyMhz': encodeDouble(highFrequencyMhz!),
        if (lowFrequencyMhz != null)
          'lowFrequencyMhz': encodeDouble(lowFrequencyMhz!),
      };
}

/// Used by:
///
/// - prod_tt_sasportal:v1alpha1 : SasPortalGenerateSecretResponse
/// - sasportal:v1alpha1 : SasPortalGenerateSecretResponse
class $SasPortalGenerateSecretResponse {
  /// The secret generated by the string and used by ValidateInstaller.
  core.String? secret;

  $SasPortalGenerateSecretResponse({
    this.secret,
  });

  $SasPortalGenerateSecretResponse.fromJson(core.Map json_)
      : this(
          secret: json_['secret'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (secret != null) 'secret': secret!,
      };
}

/// Used by:
///
/// - prod_tt_sasportal:v1alpha1 : SasPortalGetPolicyRequest
/// - sasportal:v1alpha1 : SasPortalGetPolicyRequest
class $SasPortalGetPolicyRequest {
  /// The resource for which the policy is being requested.
  ///
  /// Required.
  core.String? resource;

  $SasPortalGetPolicyRequest({
    this.resource,
  });

  $SasPortalGetPolicyRequest.fromJson(core.Map json_)
      : this(
          resource: json_['resource'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (resource != null) 'resource': resource!,
      };
}

/// Used by:
///
/// - prod_tt_sasportal:v1alpha1 : SasPortalInstallationParams
/// - sasportal:v1alpha1 : SasPortalInstallationParams
class $SasPortalInstallationParams {
  /// Boresight direction of the horizontal plane of the antenna in degrees with
  /// respect to true north.
  ///
  /// The value of this parameter is an integer with a value between 0 and 359
  /// inclusive. A value of 0 degrees means true north; a value of 90 degrees
  /// means east. This parameter is optional for Category A devices and
  /// conditional for Category B devices.
  core.int? antennaAzimuth;

  /// 3-dB antenna beamwidth of the antenna in the horizontal-plane in degrees.
  ///
  /// This parameter is an unsigned integer having a value between 0 and 360
  /// (degrees) inclusive; it is optional for Category A devices and conditional
  /// for Category B devices.
  core.int? antennaBeamwidth;

  /// Antenna downtilt in degrees and is an integer with a value between -90 and
  /// +90 inclusive; a negative value means the antenna is tilted up (above
  /// horizontal).
  ///
  /// This parameter is optional for Category A devices and conditional for
  /// Category B devices.
  core.int? antennaDowntilt;

  /// Peak antenna gain in dBi.
  ///
  /// This parameter is a double with a value between -127 and +128 (dBi)
  /// inclusive. Part of Release 2 to support floating-point value
  core.double? antennaGain;

  /// If an external antenna is used, the antenna model is optionally provided
  /// in this field.
  ///
  /// The string has a maximum length of 128 octets.
  core.String? antennaModel;

  /// If present, this parameter specifies whether the CBSD is a CPE-CBSD or
  /// not.
  core.bool? cpeCbsdIndication;

  /// This parameter is the maximum device EIRP in units of dBm/10MHz and is an
  /// integer with a value between -127 and +47 (dBm/10 MHz) inclusive.
  ///
  /// If not included, SAS interprets it as maximum allowable EIRP in units of
  /// dBm/10MHz for device category.
  core.int? eirpCapability;

  /// Device antenna height in meters.
  ///
  /// When the `heightType` parameter value is "AGL", the antenna height should
  /// be given relative to ground level. When the `heightType` parameter value
  /// is "AMSL", it is given with respect to WGS84 datum.
  core.double? height;

  /// Specifies how the height is measured.
  /// Possible string values are:
  /// - "HEIGHT_TYPE_UNSPECIFIED" : Unspecified height type.
  /// - "HEIGHT_TYPE_AGL" : AGL height is measured relative to the ground level.
  /// - "HEIGHT_TYPE_AMSL" : AMSL height is measured relative to the mean sea
  /// level.
  core.String? heightType;

  /// A positive number in meters to indicate accuracy of the device antenna
  /// horizontal location.
  ///
  /// This optional parameter should only be present if its value is less than
  /// the FCC requirement of 50 meters.
  core.double? horizontalAccuracy;

  /// Whether the device antenna is indoor or not.
  ///
  /// `true`: indoor. `false`: outdoor.
  core.bool? indoorDeployment;

  /// Latitude of the device antenna location in degrees relative to the WGS 84
  /// datum.
  ///
  /// The allowed range is from -90.000000 to +90.000000. Positive values
  /// represent latitudes north of the equator; negative values south of the
  /// equator.
  core.double? latitude;

  /// Longitude of the device antenna location in degrees relative to the WGS 84
  /// datum.
  ///
  /// The allowed range is from -180.000000 to +180.000000. Positive values
  /// represent longitudes east of the prime meridian; negative values west of
  /// the prime meridian.
  core.double? longitude;

  /// A positive number in meters to indicate accuracy of the device antenna
  /// vertical location.
  ///
  /// This optional parameter should only be present if its value is less than
  /// the FCC requirement of 3 meters.
  core.double? verticalAccuracy;

  $SasPortalInstallationParams({
    this.antennaAzimuth,
    this.antennaBeamwidth,
    this.antennaDowntilt,
    this.antennaGain,
    this.antennaModel,
    this.cpeCbsdIndication,
    this.eirpCapability,
    this.height,
    this.heightType,
    this.horizontalAccuracy,
    this.indoorDeployment,
    this.latitude,
    this.longitude,
    this.verticalAccuracy,
  });

  $SasPortalInstallationParams.fromJson(core.Map json_)
      : this(
          antennaAzimuth: json_['antennaAzimuth'] as core.int?,
          antennaBeamwidth: json_['antennaBeamwidth'] as core.int?,
          antennaDowntilt: json_['antennaDowntilt'] as core.int?,
          antennaGain: json_.containsKey('antennaGain')
              ? decodeDouble(json_['antennaGain'] as core.Object)
              : null,
          antennaModel: json_['antennaModel'] as core.String?,
          cpeCbsdIndication: json_['cpeCbsdIndication'] as core.bool?,
          eirpCapability: json_['eirpCapability'] as core.int?,
          height: json_.containsKey('height')
              ? decodeDouble(json_['height'] as core.Object)
              : null,
          heightType: json_['heightType'] as core.String?,
          horizontalAccuracy: json_.containsKey('horizontalAccuracy')
              ? decodeDouble(json_['horizontalAccuracy'] as core.Object)
              : null,
          indoorDeployment: json_['indoorDeployment'] as core.bool?,
          latitude: json_.containsKey('latitude')
              ? decodeDouble(json_['latitude'] as core.Object)
              : null,
          longitude: json_.containsKey('longitude')
              ? decodeDouble(json_['longitude'] as core.Object)
              : null,
          verticalAccuracy: json_.containsKey('verticalAccuracy')
              ? decodeDouble(json_['verticalAccuracy'] as core.Object)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (antennaAzimuth != null) 'antennaAzimuth': antennaAzimuth!,
        if (antennaBeamwidth != null) 'antennaBeamwidth': antennaBeamwidth!,
        if (antennaDowntilt != null) 'antennaDowntilt': antennaDowntilt!,
        if (antennaGain != null) 'antennaGain': encodeDouble(antennaGain!),
        if (antennaModel != null) 'antennaModel': antennaModel!,
        if (cpeCbsdIndication != null) 'cpeCbsdIndication': cpeCbsdIndication!,
        if (eirpCapability != null) 'eirpCapability': eirpCapability!,
        if (height != null) 'height': encodeDouble(height!),
        if (heightType != null) 'heightType': heightType!,
        if (horizontalAccuracy != null)
          'horizontalAccuracy': encodeDouble(horizontalAccuracy!),
        if (indoorDeployment != null) 'indoorDeployment': indoorDeployment!,
        if (latitude != null) 'latitude': encodeDouble(latitude!),
        if (longitude != null) 'longitude': encodeDouble(longitude!),
        if (verticalAccuracy != null)
          'verticalAccuracy': encodeDouble(verticalAccuracy!),
      };
}

/// Used by:
///
/// - prod_tt_sasportal:v1alpha1 : SasPortalMigrateOrganizationRequest
/// - sasportal:v1alpha1 : SasPortalMigrateOrganizationRequest
class $SasPortalMigrateOrganizationRequest {
  /// Id of the SAS organization to be migrated.
  ///
  /// Required.
  core.String? organizationId;

  $SasPortalMigrateOrganizationRequest({
    this.organizationId,
  });

  $SasPortalMigrateOrganizationRequest.fromJson(core.Map json_)
      : this(
          organizationId: json_['organizationId'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (organizationId != null) 'organizationId': organizationId!,
      };
}

/// Used by:
///
/// - prod_tt_sasportal:v1alpha1 : SasPortalMoveDeploymentRequest
/// - sasportal:v1alpha1 : SasPortalMoveDeploymentRequest
class $SasPortalMoveDeploymentRequest {
  /// The name of the new parent resource node or customer to reparent the
  /// deployment under.
  ///
  /// Required.
  core.String? destination;

  $SasPortalMoveDeploymentRequest({
    this.destination,
  });

  $SasPortalMoveDeploymentRequest.fromJson(core.Map json_)
      : this(
          destination: json_['destination'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (destination != null) 'destination': destination!,
      };
}

/// Used by:
///
/// - prod_tt_sasportal:v1alpha1 : SasPortalMoveDeviceRequest
/// - sasportal:v1alpha1 : SasPortalMoveDeviceRequest
class $SasPortalMoveDeviceRequest {
  /// The name of the new parent resource node or customer to reparent the
  /// device under.
  ///
  /// Required.
  core.String? destination;

  $SasPortalMoveDeviceRequest({
    this.destination,
  });

  $SasPortalMoveDeviceRequest.fromJson(core.Map json_)
      : this(
          destination: json_['destination'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (destination != null) 'destination': destination!,
      };
}

/// Used by:
///
/// - prod_tt_sasportal:v1alpha1 : SasPortalMoveNodeRequest
/// - sasportal:v1alpha1 : SasPortalMoveNodeRequest
class $SasPortalMoveNodeRequest {
  /// The name of the new parent resource node or customer to reparent the node
  /// under.
  ///
  /// Required.
  core.String? destination;

  $SasPortalMoveNodeRequest({
    this.destination,
  });

  $SasPortalMoveNodeRequest.fromJson(core.Map json_)
      : this(
          destination: json_['destination'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (destination != null) 'destination': destination!,
      };
}

/// Used by:
///
/// - prod_tt_sasportal:v1alpha1 : SasPortalNode
/// - sasportal:v1alpha1 : SasPortalNode
class $SasPortalNode {
  /// The node's display name.
  core.String? displayName;

  /// Resource name.
  ///
  /// Output only.
  core.String? name;

  /// User ids used by the devices belonging to this node.
  core.List<core.String>? sasUserIds;

  $SasPortalNode({
    this.displayName,
    this.name,
    this.sasUserIds,
  });

  $SasPortalNode.fromJson(core.Map json_)
      : this(
          displayName: json_['displayName'] as core.String?,
          name: json_['name'] as core.String?,
          sasUserIds: (json_['sasUserIds'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (name != null) 'name': name!,
        if (sasUserIds != null) 'sasUserIds': sasUserIds!,
      };
}

/// Used by:
///
/// - prod_tt_sasportal:v1alpha1 : SasPortalNrqzValidation
/// - sasportal:v1alpha1 : SasPortalNrqzValidation
class $SasPortalNrqzValidation {
  /// Validation case ID.
  core.String? caseId;

  /// CPI who signed the validation.
  core.String? cpiId;

  /// Device latitude that's associated with the validation.
  core.double? latitude;

  /// Device longitude that's associated with the validation.
  core.double? longitude;

  /// State of the NRQZ validation info.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Unspecified state.
  /// - "DRAFT" : Draft state.
  /// - "FINAL" : Final state.
  core.String? state;

  $SasPortalNrqzValidation({
    this.caseId,
    this.cpiId,
    this.latitude,
    this.longitude,
    this.state,
  });

  $SasPortalNrqzValidation.fromJson(core.Map json_)
      : this(
          caseId: json_['caseId'] as core.String?,
          cpiId: json_['cpiId'] as core.String?,
          latitude: json_.containsKey('latitude')
              ? decodeDouble(json_['latitude'] as core.Object)
              : null,
          longitude: json_.containsKey('longitude')
              ? decodeDouble(json_['longitude'] as core.Object)
              : null,
          state: json_['state'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (caseId != null) 'caseId': caseId!,
        if (cpiId != null) 'cpiId': cpiId!,
        if (latitude != null) 'latitude': encodeDouble(latitude!),
        if (longitude != null) 'longitude': encodeDouble(longitude!),
        if (state != null) 'state': state!,
      };
}

/// Used by:
///
/// - prod_tt_sasportal:v1alpha1 : SasPortalOrganization
/// - sasportal:v1alpha1 : SasPortalOrganization
class $SasPortalOrganization {
  /// Name of organization
  core.String? displayName;

  /// Id of organization
  core.String? id;

  $SasPortalOrganization({
    this.displayName,
    this.id,
  });

  $SasPortalOrganization.fromJson(core.Map json_)
      : this(
          displayName: json_['displayName'] as core.String?,
          id: json_['id'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (id != null) 'id': id!,
      };
}

/// Used by:
///
/// - prod_tt_sasportal:v1alpha1 : SasPortalProvisionDeploymentRequest
/// - sasportal:v1alpha1 : SasPortalProvisionDeploymentRequest
class $SasPortalProvisionDeploymentRequest {
  /// If this field is set, and a new SAS Portal Deployment needs to be created,
  /// its display name will be set to the value of this field.
  ///
  /// Optional.
  core.String? newDeploymentDisplayName;

  /// If this field is set, and a new SAS Portal Organization needs to be
  /// created, its display name will be set to the value of this field.
  ///
  /// Optional.
  core.String? newOrganizationDisplayName;

  /// If this field is set then a new deployment will be created under the
  /// organization specified by this id.
  ///
  /// Optional.
  core.String? organizationId;

  $SasPortalProvisionDeploymentRequest({
    this.newDeploymentDisplayName,
    this.newOrganizationDisplayName,
    this.organizationId,
  });

  $SasPortalProvisionDeploymentRequest.fromJson(core.Map json_)
      : this(
          newDeploymentDisplayName:
              json_['newDeploymentDisplayName'] as core.String?,
          newOrganizationDisplayName:
              json_['newOrganizationDisplayName'] as core.String?,
          organizationId: json_['organizationId'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (newDeploymentDisplayName != null)
          'newDeploymentDisplayName': newDeploymentDisplayName!,
        if (newOrganizationDisplayName != null)
          'newOrganizationDisplayName': newOrganizationDisplayName!,
        if (organizationId != null) 'organizationId': organizationId!,
      };
}

/// Used by:
///
/// - prod_tt_sasportal:v1alpha1 : SasPortalProvisionDeploymentResponse
/// - sasportal:v1alpha1 : SasPortalProvisionDeploymentResponse
class $SasPortalProvisionDeploymentResponse {
  /// Optional error message if the provisioning request is not successful.
  ///
  /// Optional.
  core.String? errorMessage;

  $SasPortalProvisionDeploymentResponse({
    this.errorMessage,
  });

  $SasPortalProvisionDeploymentResponse.fromJson(core.Map json_)
      : this(
          errorMessage: json_['errorMessage'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (errorMessage != null) 'errorMessage': errorMessage!,
      };
}

/// Used by:
///
/// - prod_tt_sasportal:v1alpha1 : SasPortalSetupSasAnalyticsRequest
/// - sasportal:v1alpha1 : SasPortalSetupSasAnalyticsRequest
class $SasPortalSetupSasAnalyticsRequest {
  /// User id to setup analytics for, if not provided the user id associated
  /// with the project is used.
  ///
  /// optional
  ///
  /// Optional.
  core.String? userId;

  $SasPortalSetupSasAnalyticsRequest({
    this.userId,
  });

  $SasPortalSetupSasAnalyticsRequest.fromJson(core.Map json_)
      : this(
          userId: json_['userId'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (userId != null) 'userId': userId!,
      };
}

/// Used by:
///
/// - prod_tt_sasportal:v1alpha1 : SasPortalTestPermissionsRequest
/// - sasportal:v1alpha1 : SasPortalTestPermissionsRequest
class $SasPortalTestPermissionsRequest {
  /// The set of permissions to check for the `resource`.
  core.List<core.String>? permissions;

  /// The resource for which the permissions are being requested.
  ///
  /// Required.
  core.String? resource;

  $SasPortalTestPermissionsRequest({
    this.permissions,
    this.resource,
  });

  $SasPortalTestPermissionsRequest.fromJson(core.Map json_)
      : this(
          permissions: (json_['permissions'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          resource: json_['resource'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (permissions != null) 'permissions': permissions!,
        if (resource != null) 'resource': resource!,
      };
}

/// Used by:
///
/// - prod_tt_sasportal:v1alpha1 : SasPortalTestPermissionsResponse
/// - sasportal:v1alpha1 : SasPortalTestPermissionsResponse
class $SasPortalTestPermissionsResponse {
  /// A set of permissions that the caller is allowed.
  core.List<core.String>? permissions;

  $SasPortalTestPermissionsResponse({
    this.permissions,
  });

  $SasPortalTestPermissionsResponse.fromJson(core.Map json_)
      : this(
          permissions: (json_['permissions'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (permissions != null) 'permissions': permissions!,
      };
}

/// Used by:
///
/// - prod_tt_sasportal:v1alpha1 : SasPortalUpdateSignedDeviceRequest
/// - sasportal:v1alpha1 : SasPortalUpdateSignedDeviceRequest
class $SasPortalUpdateSignedDeviceRequest {
  /// The JSON Web Token signed using a CPI private key.
  ///
  /// Payload must be the JSON encoding of the device. The user_id field must be
  /// set.
  ///
  /// Required.
  core.String? encodedDevice;
  core.List<core.int> get encodedDeviceAsBytes =>
      convert.base64.decode(encodedDevice!);

  set encodedDeviceAsBytes(core.List<core.int> bytes_) {
    encodedDevice =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Unique installer ID (CPI ID) from the Certified Professional Installers
  /// database.
  ///
  /// Required.
  core.String? installerId;

  $SasPortalUpdateSignedDeviceRequest({
    this.encodedDevice,
    this.installerId,
  });

  $SasPortalUpdateSignedDeviceRequest.fromJson(core.Map json_)
      : this(
          encodedDevice: json_['encodedDevice'] as core.String?,
          installerId: json_['installerId'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (encodedDevice != null) 'encodedDevice': encodedDevice!,
        if (installerId != null) 'installerId': installerId!,
      };
}

/// Used by:
///
/// - prod_tt_sasportal:v1alpha1 : SasPortalValidateInstallerRequest
/// - sasportal:v1alpha1 : SasPortalValidateInstallerRequest
class $SasPortalValidateInstallerRequest {
  /// JSON Web Token signed using a CPI private key.
  ///
  /// Payload must include a "secret" claim whose value is the secret.
  ///
  /// Required.
  core.String? encodedSecret;

  /// Unique installer id (CPI ID) from the Certified Professional Installers
  /// database.
  ///
  /// Required.
  core.String? installerId;

  /// Secret returned by the GenerateSecret.
  ///
  /// Required.
  core.String? secret;

  $SasPortalValidateInstallerRequest({
    this.encodedSecret,
    this.installerId,
    this.secret,
  });

  $SasPortalValidateInstallerRequest.fromJson(core.Map json_)
      : this(
          encodedSecret: json_['encodedSecret'] as core.String?,
          installerId: json_['installerId'] as core.String?,
          secret: json_['secret'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (encodedSecret != null) 'encodedSecret': encodedSecret!,
        if (installerId != null) 'installerId': installerId!,
        if (secret != null) 'secret': secret!,
      };
}

/// Used by:
///
/// - gkehub:v2alpha : ConfigManagementPolicyControllerMonitoring
/// - gkehub:v2alpha : PolicyControllerMonitoringConfig
class $Shared {
  /// Specifies the list of backends Policy Controller will export to.
  ///
  /// An empty list would effectively disable metrics export.
  core.List<core.String>? backends;

  $Shared({
    this.backends,
  });

  $Shared.fromJson(core.Map json_)
      : this(
          backends: (json_['backends'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (backends != null) 'backends': backends!,
      };
}

/// Used by:
///
/// - alertcenter:v1beta1 : Status
/// - analyticsdata:v1beta : Status
/// - dataflow:v1b3 : Status
/// - datalabeling:v1beta1 : GoogleRpcStatus
/// - datastream:v1alpha1 : Status
/// - firebase:v1beta1 : Status
/// - gkehub:v2alpha : GoogleRpcStatus
/// - lifesciences:v2beta : Status
/// - prod_tt_sasportal:v1alpha1 : SasPortalStatus
/// - recommendationengine:v1beta1 : GoogleRpcStatus
/// - sasportal:v1alpha1 : SasPortalStatus
/// - toolresults:v1beta3 : Status
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
          code: json_['code'] as core.int?,
          details: (json_['details'] as core.List?)
              ?.map((value) => value as core.Map<core.String, core.dynamic>)
              .toList(),
          message: json_['message'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (code != null) 'code': code!,
        if (details != null) 'details': details!,
        if (message != null) 'message': message!,
      };
}

/// Used by:
///
/// - analyticsadmin:v1alpha : GoogleAnalyticsAdminV1alphaAccessStringFilter
/// - analyticsadmin:v1beta : GoogleAnalyticsAdminV1betaAccessStringFilter
/// - analyticsdata:v1beta : StringFilter
class $StringFilter {
  /// If true, the string value is case sensitive.
  core.bool? caseSensitive;

  /// The match type for this filter.
  /// Possible string values are:
  /// - "MATCH_TYPE_UNSPECIFIED" : Unspecified
  /// - "EXACT" : Exact match of the string value.
  /// - "BEGINS_WITH" : Begins with the string value.
  /// - "ENDS_WITH" : Ends with the string value.
  /// - "CONTAINS" : Contains the string value.
  /// - "FULL_REGEXP" : Full match for the regular expression with the string
  /// value.
  /// - "PARTIAL_REGEXP" : Partial match for the regular expression with the
  /// string value.
  core.String? matchType;

  /// The string value used for the matching.
  core.String? value;

  $StringFilter({
    this.caseSensitive,
    this.matchType,
    this.value,
  });

  $StringFilter.fromJson(core.Map json_)
      : this(
          caseSensitive: json_['caseSensitive'] as core.bool?,
          matchType: json_['matchType'] as core.String?,
          value: json_['value'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (caseSensitive != null) 'caseSensitive': caseSensitive!,
        if (matchType != null) 'matchType': matchType!,
        if (value != null) 'value': value!,
      };
}
