/// Shared types to minimize the package size. Do not use directly.
@core.Deprecated(
  'Avoid importing this library. '
  'Use the members defined in the target API library instead.',
)
library;

// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_library_directive
// ignore_for_file: unnecessary_string_interpolations

import 'dart:convert' as convert;
import 'dart:core' as core;

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
          annotationSpecSet: json_.containsKey('annotationSpecSet')
              ? json_['annotationSpecSet'] as core.String
              : null,
          instructionMessage: json_.containsKey('instructionMessage')
              ? json_['instructionMessage'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (annotationSpecSet != null) 'annotationSpecSet': annotationSpecSet!,
        if (instructionMessage != null)
          'instructionMessage': instructionMessage!,
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
          dimensionName: json_.containsKey('dimensionName')
              ? json_['dimensionName'] as core.String
              : null,
          orderType: json_.containsKey('orderType')
              ? json_['orderType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dimensionName != null) 'dimensionName': dimensionName!,
        if (orderType != null) 'orderType': orderType!,
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
/// - analyticsadmin:v1beta : GoogleAnalyticsAdminV1betaAcknowledgeUserDataCollectionResponse
/// - analyticsadmin:v1beta : GoogleAnalyticsAdminV1betaArchiveCustomDimensionRequest
/// - analyticsadmin:v1beta : GoogleAnalyticsAdminV1betaArchiveCustomMetricRequest
/// - analyticsadmin:v1beta : GoogleProtobufEmpty
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
          caseSensitive: json_.containsKey('caseSensitive')
              ? json_['caseSensitive'] as core.bool
              : null,
          values: json_.containsKey('values')
              ? (json_['values'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (caseSensitive != null) 'caseSensitive': caseSensitive!,
        if (values != null) 'values': values!,
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
          metricName: json_.containsKey('metricName')
              ? json_['metricName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (metricName != null) 'metricName': metricName!,
      };
}

/// Used by:
///
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
              ? (json_['doubleValue'] as core.num).toDouble()
              : null,
          int64Value: json_.containsKey('int64Value')
              ? json_['int64Value'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (doubleValue != null) 'doubleValue': doubleValue!,
        if (int64Value != null) 'int64Value': int64Value!,
      };
}

/// Used by:
///
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
          consumed: json_.containsKey('consumed')
              ? json_['consumed'] as core.int
              : null,
          remaining: json_.containsKey('remaining')
              ? json_['remaining'] as core.int
              : null,
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
          members: json_.containsKey('members')
              ? (json_['members'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          role: json_.containsKey('role') ? json_['role'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (members != null) 'members': members!,
        if (role != null) 'role': role!,
      };
}

/// Used by:
///
/// - prod_tt_sasportal:v1alpha1 : SasPortalCheckHasProvisionedDeploymentResponse
/// - sasportal:v1alpha1 : SasPortalCheckHasProvisionedDeploymentResponse
class $SasPortalCheckHasProvisionedDeploymentResponse {
  /// Whether a SAS deployment for the authentication context exists.
  core.bool? hasProvisionedDeployment;

  $SasPortalCheckHasProvisionedDeploymentResponse({
    this.hasProvisionedDeployment,
  });

  $SasPortalCheckHasProvisionedDeploymentResponse.fromJson(core.Map json_)
      : this(
          hasProvisionedDeployment:
              json_.containsKey('hasProvisionedDeployment')
                  ? json_['hasProvisionedDeployment'] as core.bool
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (hasProvisionedDeployment != null)
          'hasProvisionedDeployment': hasProvisionedDeployment!,
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
          encodedDevice: json_.containsKey('encodedDevice')
              ? json_['encodedDevice'] as core.String
              : null,
          installerId: json_.containsKey('installerId')
              ? json_['installerId'] as core.String
              : null,
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
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          sasUserIds: json_.containsKey('sasUserIds')
              ? (json_['sasUserIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
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
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          frns: json_.containsKey('frns')
              ? (json_['frns'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          sasUserIds: json_.containsKey('sasUserIds')
              ? (json_['sasUserIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
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
          radioTechnology: json_.containsKey('radioTechnology')
              ? json_['radioTechnology'] as core.String
              : null,
          supportedSpec: json_.containsKey('supportedSpec')
              ? json_['supportedSpec'] as core.String
              : null,
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
          firmwareVersion: json_.containsKey('firmwareVersion')
              ? json_['firmwareVersion'] as core.String
              : null,
          hardwareVersion: json_.containsKey('hardwareVersion')
              ? json_['hardwareVersion'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          softwareVersion: json_.containsKey('softwareVersion')
              ? json_['softwareVersion'] as core.String
              : null,
          vendor: json_.containsKey('vendor')
              ? json_['vendor'] as core.String
              : null,
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
              ? (json_['highFrequencyMhz'] as core.num).toDouble()
              : null,
          lowFrequencyMhz: json_.containsKey('lowFrequencyMhz')
              ? (json_['lowFrequencyMhz'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (highFrequencyMhz != null) 'highFrequencyMhz': highFrequencyMhz!,
        if (lowFrequencyMhz != null) 'lowFrequencyMhz': lowFrequencyMhz!,
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
          secret: json_.containsKey('secret')
              ? json_['secret'] as core.String
              : null,
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
          resource: json_.containsKey('resource')
              ? json_['resource'] as core.String
              : null,
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
  /// This parameter is an integer with a value between -127 and +128 (dBi)
  /// inclusive.
  core.int? antennaGain;

  /// As above, but as a DoubleValue.
  core.double? antennaGainNewField;

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

  /// As above, but as a DoubleValue.
  core.double? eirpCapabilityNewField;

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
    this.antennaGainNewField,
    this.antennaModel,
    this.cpeCbsdIndication,
    this.eirpCapability,
    this.eirpCapabilityNewField,
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
          antennaAzimuth: json_.containsKey('antennaAzimuth')
              ? json_['antennaAzimuth'] as core.int
              : null,
          antennaBeamwidth: json_.containsKey('antennaBeamwidth')
              ? json_['antennaBeamwidth'] as core.int
              : null,
          antennaDowntilt: json_.containsKey('antennaDowntilt')
              ? json_['antennaDowntilt'] as core.int
              : null,
          antennaGain: json_.containsKey('antennaGain')
              ? json_['antennaGain'] as core.int
              : null,
          antennaGainNewField: json_.containsKey('antennaGainNewField')
              ? (json_['antennaGainNewField'] as core.num).toDouble()
              : null,
          antennaModel: json_.containsKey('antennaModel')
              ? json_['antennaModel'] as core.String
              : null,
          cpeCbsdIndication: json_.containsKey('cpeCbsdIndication')
              ? json_['cpeCbsdIndication'] as core.bool
              : null,
          eirpCapability: json_.containsKey('eirpCapability')
              ? json_['eirpCapability'] as core.int
              : null,
          eirpCapabilityNewField: json_.containsKey('eirpCapabilityNewField')
              ? (json_['eirpCapabilityNewField'] as core.num).toDouble()
              : null,
          height: json_.containsKey('height')
              ? (json_['height'] as core.num).toDouble()
              : null,
          heightType: json_.containsKey('heightType')
              ? json_['heightType'] as core.String
              : null,
          horizontalAccuracy: json_.containsKey('horizontalAccuracy')
              ? (json_['horizontalAccuracy'] as core.num).toDouble()
              : null,
          indoorDeployment: json_.containsKey('indoorDeployment')
              ? json_['indoorDeployment'] as core.bool
              : null,
          latitude: json_.containsKey('latitude')
              ? (json_['latitude'] as core.num).toDouble()
              : null,
          longitude: json_.containsKey('longitude')
              ? (json_['longitude'] as core.num).toDouble()
              : null,
          verticalAccuracy: json_.containsKey('verticalAccuracy')
              ? (json_['verticalAccuracy'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (antennaAzimuth != null) 'antennaAzimuth': antennaAzimuth!,
        if (antennaBeamwidth != null) 'antennaBeamwidth': antennaBeamwidth!,
        if (antennaDowntilt != null) 'antennaDowntilt': antennaDowntilt!,
        if (antennaGain != null) 'antennaGain': antennaGain!,
        if (antennaGainNewField != null)
          'antennaGainNewField': antennaGainNewField!,
        if (antennaModel != null) 'antennaModel': antennaModel!,
        if (cpeCbsdIndication != null) 'cpeCbsdIndication': cpeCbsdIndication!,
        if (eirpCapability != null) 'eirpCapability': eirpCapability!,
        if (eirpCapabilityNewField != null)
          'eirpCapabilityNewField': eirpCapabilityNewField!,
        if (height != null) 'height': height!,
        if (heightType != null) 'heightType': heightType!,
        if (horizontalAccuracy != null)
          'horizontalAccuracy': horizontalAccuracy!,
        if (indoorDeployment != null) 'indoorDeployment': indoorDeployment!,
        if (latitude != null) 'latitude': latitude!,
        if (longitude != null) 'longitude': longitude!,
        if (verticalAccuracy != null) 'verticalAccuracy': verticalAccuracy!,
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
          organizationId: json_.containsKey('organizationId')
              ? json_['organizationId'] as core.String
              : null,
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
          destination: json_.containsKey('destination')
              ? json_['destination'] as core.String
              : null,
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
          destination: json_.containsKey('destination')
              ? json_['destination'] as core.String
              : null,
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
          destination: json_.containsKey('destination')
              ? json_['destination'] as core.String
              : null,
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
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          sasUserIds: json_.containsKey('sasUserIds')
              ? (json_['sasUserIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
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
          caseId: json_.containsKey('caseId')
              ? json_['caseId'] as core.String
              : null,
          cpiId:
              json_.containsKey('cpiId') ? json_['cpiId'] as core.String : null,
          latitude: json_.containsKey('latitude')
              ? (json_['latitude'] as core.num).toDouble()
              : null,
          longitude: json_.containsKey('longitude')
              ? (json_['longitude'] as core.num).toDouble()
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (caseId != null) 'caseId': caseId!,
        if (cpiId != null) 'cpiId': cpiId!,
        if (latitude != null) 'latitude': latitude!,
        if (longitude != null) 'longitude': longitude!,
        if (state != null) 'state': state!,
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
              json_.containsKey('newDeploymentDisplayName')
                  ? json_['newDeploymentDisplayName'] as core.String
                  : null,
          newOrganizationDisplayName:
              json_.containsKey('newOrganizationDisplayName')
                  ? json_['newOrganizationDisplayName'] as core.String
                  : null,
          organizationId: json_.containsKey('organizationId')
              ? json_['organizationId'] as core.String
              : null,
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
          permissions: json_.containsKey('permissions')
              ? (json_['permissions'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          resource: json_.containsKey('resource')
              ? json_['resource'] as core.String
              : null,
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
          encodedDevice: json_.containsKey('encodedDevice')
              ? json_['encodedDevice'] as core.String
              : null,
          installerId: json_.containsKey('installerId')
              ? json_['installerId'] as core.String
              : null,
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
          encodedSecret: json_.containsKey('encodedSecret')
              ? json_['encodedSecret'] as core.String
              : null,
          installerId: json_.containsKey('installerId')
              ? json_['installerId'] as core.String
              : null,
          secret: json_.containsKey('secret')
              ? json_['secret'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (encodedSecret != null) 'encodedSecret': encodedSecret!,
        if (installerId != null) 'installerId': installerId!,
        if (secret != null) 'secret': secret!,
      };
}

/// Used by:
///
/// - alertcenter:v1beta1 : Status
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
          caseSensitive: json_.containsKey('caseSensitive')
              ? json_['caseSensitive'] as core.bool
              : null,
          matchType: json_.containsKey('matchType')
              ? json_['matchType'] as core.String
              : null,
          value:
              json_.containsKey('value') ? json_['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (caseSensitive != null) 'caseSensitive': caseSensitive!,
        if (matchType != null) 'matchType': matchType!,
        if (value != null) 'value': value!,
      };
}
