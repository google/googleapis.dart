/// Shared types to minimize the package size. Do not use directly.
@core.Deprecated(
  'Avoid importing this library. '
  'Use the members defined in the target API library instead.',
)
library $shared;

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

import 'dart:convert' as convert;
import 'dart:core' as core;

/// Used by:
///
/// - alertcenter:v1beta1 : BatchDeleteAlertsRequest
/// - alertcenter:v1beta1 : BatchUndeleteAlertsRequest
class $AlertsRequest {
  /// list of alert IDs.
  ///
  /// Required.
  core.List<core.String>? alertId;

  /// The unique identifier of the Google Workspace organization account of the
  /// customer the alerts are associated with.
  ///
  /// Optional.
  core.String? customerId;

  $AlertsRequest({
    this.alertId,
    this.customerId,
  });

  $AlertsRequest.fromJson(core.Map json_)
      : this(
          alertId: json_.containsKey('alertId')
              ? (json_['alertId'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          customerId: json_.containsKey('customerId')
              ? json_['customerId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (alertId != null) 'alertId': alertId!,
        if (customerId != null) 'customerId': customerId!,
      };
}

/// Used by:
///
/// - containeranalysis:v1beta1 : AliasContext
/// - ondemandscanning:v1beta1 : AliasContext
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
/// - containeranalysis:v1beta1 : AnalysisCompleted
/// - ondemandscanning:v1beta1 : AnalysisCompleted
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
/// - containeranalysis:v1beta1 : Artifact
/// - ondemandscanning:v1beta1 : Artifact
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
/// - bigqueryconnection:v1beta1 : AuditLogConfig
/// - cloudfunctions:v2beta : AuditLogConfig
/// - domains:v1beta1 : AuditLogConfig
/// - metastore:v1beta : AuditLogConfig
/// - networkconnectivity:v1alpha1 : AuditLogConfig
/// - networksecurity:v1beta1 : GoogleIamV1AuditLogConfig
/// - policysimulator:v1beta1 : GoogleIamV1AuditLogConfig
/// - privateca:v1beta1 : AuditLogConfig
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
/// - privateca:v1beta1 : DisableCertificateAuthorityRequest
/// - privateca:v1beta1 : EnableCertificateAuthorityRequest
/// - privateca:v1beta1 : RestoreCertificateAuthorityRequest
class $CertificateAuthorityRequest {
  /// An ID to identify requests.
  ///
  /// Specify a unique request ID so that if you must retry your request, the
  /// server will know to ignore the request if it has already been completed.
  /// The server will guarantee that for at least 60 minutes since the first
  /// request. For example, consider a situation where you make an initial
  /// request and t he request times out. If you make the request again with the
  /// same request ID, the server can check if original operation with the same
  /// request ID was received, and if so, will ignore the second request. This
  /// prevents clients from accidentally creating duplicate commitments. The
  /// request ID must be a valid UUID with the exception that zero UUID is not
  /// supported (00000000-0000-0000-0000-000000000000).
  ///
  /// Optional.
  core.String? requestId;

  $CertificateAuthorityRequest({
    this.requestId,
  });

  $CertificateAuthorityRequest.fromJson(core.Map json_)
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
/// - containeranalysis:v1beta1 : Command
/// - ondemandscanning:v1beta1 : Command
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
/// - ondemandscanning:v1beta1 : Completeness
/// - ondemandscanning:v1beta1 : SlsaCompleteness
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
/// - documentai:v1beta3 : GoogleTypeDate
/// - fcmdata:v1beta1 : GoogleTypeDate
/// - osconfig:v1alpha : Date
/// - policysimulator:v1beta1 : GoogleTypeDate
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
/// - analyticsadmin:v1alpha : GoogleAnalyticsAdminV1alphaAccessOrderByDimensionOrderBy
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
/// - analyticsadmin:v1alpha : GoogleAnalyticsAdminV1alphaAcknowledgeUserDataCollectionResponse
/// - analyticsadmin:v1alpha : GoogleAnalyticsAdminV1alphaApproveDisplayVideo360AdvertiserLinkProposalRequest
/// - analyticsadmin:v1alpha : GoogleAnalyticsAdminV1alphaArchiveAudienceRequest
/// - analyticsadmin:v1alpha : GoogleAnalyticsAdminV1alphaArchiveCustomDimensionRequest
/// - analyticsadmin:v1alpha : GoogleAnalyticsAdminV1alphaArchiveCustomMetricRequest
/// - analyticsadmin:v1alpha : GoogleAnalyticsAdminV1alphaCancelDisplayVideo360AdvertiserLinkProposalRequest
/// - analyticsadmin:v1alpha : GoogleProtobufEmpty
/// - area120tables:v1alpha1 : Empty
/// - bigqueryconnection:v1beta1 : Empty
/// - clouderrorreporting:v1beta1 : DeleteEventsResponse
/// - clouderrorreporting:v1beta1 : ReportErrorEventResponse
/// - cloudfunctions:v2beta : GenerateDownloadUrlRequest
/// - cloudfunctions:v2beta : GenerateUploadUrlRequest
/// - cloudsupport:v2beta : CloseCaseRequest
/// - containeranalysis:v1beta1 : Empty
/// - datacatalog:v1beta1 : Empty
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
/// - documentai:v1beta3 : GoogleCloudDocumentaiV1beta3DeployProcessorVersionRequest
/// - documentai:v1beta3 : GoogleCloudDocumentaiV1beta3DisableProcessorRequest
/// - documentai:v1beta3 : GoogleCloudDocumentaiV1beta3EnableProcessorRequest
/// - documentai:v1beta3 : GoogleCloudDocumentaiV1beta3UndeployProcessorVersionRequest
/// - documentai:v1beta3 : GoogleProtobufEmpty
/// - domains:v1beta1 : ExportRegistrationRequest
/// - domains:v1beta1 : ResetAuthorizationCodeRequest
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
/// - metastore:v1beta : Empty
/// - metastore:v1beta : RemoveIamPolicyRequest
/// - networkconnectivity:v1alpha1 : Empty
/// - networkconnectivity:v1alpha1 : GoogleLongrunningCancelOperationRequest
/// - networksecurity:v1beta1 : CancelOperationRequest
/// - networksecurity:v1beta1 : Empty
/// - ondemandscanning:v1beta1 : Empty
/// - osconfig:v1alpha : CancelOperationRequest
/// - osconfig:v1alpha : Empty
/// - privateca:v1beta1 : CancelOperationRequest
/// - privateca:v1beta1 : Empty
/// - prod_tt_sasportal:v1alpha1 : SasPortalEmpty
/// - prod_tt_sasportal:v1alpha1 : SasPortalGenerateSecretRequest
/// - prod_tt_sasportal:v1alpha1 : SasPortalValidateInstallerResponse
/// - recommendationengine:v1beta1 : GoogleProtobufEmpty
/// - sasportal:v1alpha1 : SasPortalEmpty
/// - sasportal:v1alpha1 : SasPortalGenerateSecretRequest
/// - sasportal:v1alpha1 : SasPortalValidateInstallerResponse
/// - toolresults:v1beta3 : AndroidTestLoop
/// - toolresults:v1beta3 : IosRoboTest
/// - toolresults:v1beta3 : MatrixDimensionDefinition
/// - toolresults:v1beta3 : StepSummary
/// - tpu:v2alpha1 : Empty
/// - tpu:v2alpha1 : GenerateServiceIdentityRequest
/// - tpu:v2alpha1 : StartNodeRequest
/// - tpu:v2alpha1 : StopNodeRequest
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
/// - containeranalysis:v1beta1 : EnvelopeSignature
/// - ondemandscanning:v1beta1 : EnvelopeSignature
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
/// - bigqueryconnection:v1beta1 : Expr
/// - cloudfunctions:v2beta : Expr
/// - containeranalysis:v1beta1 : Expr
/// - datacatalog:v1beta1 : Expr
/// - domains:v1beta1 : Expr
/// - metastore:v1beta : Expr
/// - networkconnectivity:v1alpha1 : Expr
/// - networksecurity:v1beta1 : Expr
/// - policysimulator:v1beta1 : GoogleTypeExpr
/// - privateca:v1beta1 : Expr
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
/// - ondemandscanning:v1beta1 : FileLocation
/// - ondemandscanning:v1beta1 : GrafeasV1FileLocation
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
/// - containeranalysis:v1beta1 : Fingerprint
/// - ondemandscanning:v1beta1 : Fingerprint
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
/// - bigqueryconnection:v1beta1 : GetPolicyOptions
/// - containeranalysis:v1beta1 : GetPolicyOptions
/// - datacatalog:v1beta1 : GetPolicyOptions
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
/// - containeranalysis:v1beta1 : GitSourceContext
/// - ondemandscanning:v1beta1 : GitSourceContext
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
/// - analyticsadmin:v1alpha : GoogleAnalyticsAdminV1alphaAccessInListFilter
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
/// - containeranalysis:v1beta1 : License
/// - ondemandscanning:v1beta1 : License
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
/// - cloudfunctions:v2beta : Location
/// - datastream:v1alpha1 : Location
/// - documentai:v1beta3 : GoogleCloudLocationLocation
/// - domains:v1beta1 : Location
/// - gkehub:v2alpha : Location
/// - lifesciences:v2beta : Location
/// - networkconnectivity:v1alpha1 : Location
/// - networksecurity:v1beta1 : Location
/// - privateca:v1beta1 : Location
/// - tpu:v2alpha1 : Location
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
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
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
/// - ondemandscanning:v1beta1 : GrafeasV1SlsaProvenanceZeroTwoSlsaMaterial
/// - ondemandscanning:v1beta1 : Material
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
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
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
/// - analyticsadmin:v1alpha : GoogleAnalyticsAdminV1alphaAccessOrderByMetricOrderBy
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
/// - adexchangebuyer2:v2beta1 : Money
/// - documentai:v1beta3 : GoogleTypeMoney
/// - domains:v1beta1 : Money
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
/// - analyticsadmin:v1alpha : GoogleAnalyticsAdminV1alphaNumericValue
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
/// - documentai:v1beta3 : GoogleTypePostalAddress
/// - domains:v1beta1 : PostalAddress
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
/// - containeranalysis:v1beta1 : ProjectRepoId
/// - ondemandscanning:v1beta1 : ProjectRepoId
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
/// - analyticsadmin:v1alpha : GoogleAnalyticsAdminV1alphaAccessQuotaStatus
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
/// - containeranalysis:v1beta1 : RelatedUrl
/// - ondemandscanning:v1beta1 : RelatedUrl
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

  /// The FRNs copied from its direct parent.
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
          antennaModel: json_.containsKey('antennaModel')
              ? json_['antennaModel'] as core.String
              : null,
          cpeCbsdIndication: json_.containsKey('cpeCbsdIndication')
              ? json_['cpeCbsdIndication'] as core.bool
              : null,
          eirpCapability: json_.containsKey('eirpCapability')
              ? json_['eirpCapability'] as core.int
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
        if (antennaModel != null) 'antennaModel': antennaModel!,
        if (cpeCbsdIndication != null) 'cpeCbsdIndication': cpeCbsdIndication!,
        if (eirpCapability != null) 'eirpCapability': eirpCapability!,
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
  /// Validation case id.
  core.String? caseId;

  /// CPI who signed the validation.
  core.String? cpiId;

  /// Device latitude associated with the validation.
  core.double? latitude;

  /// Device longitude associated with the validation.
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
/// - osconfig:v1alpha : OSPolicyResourcePackageResourceAPT
/// - osconfig:v1alpha : OSPolicyResourcePackageResourceGooGet
/// - osconfig:v1alpha : OSPolicyResourcePackageResourceYUM
/// - osconfig:v1alpha : OSPolicyResourcePackageResourceZypper
class $Shared00 {
  /// Package name.
  ///
  /// Required.
  core.String? name;

  $Shared00({
    this.name,
  });

  $Shared00.fromJson(core.Map json_)
      : this(
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
      };
}

/// Used by:
///
/// - ondemandscanning:v1beta1 : BuilderConfig
/// - ondemandscanning:v1beta1 : GrafeasV1SlsaProvenanceZeroTwoSlsaBuilder
/// - ondemandscanning:v1beta1 : SlsaBuilder
class $Shared01 {
  core.String? id;

  $Shared01({
    this.id,
  });

  $Shared01.fromJson(core.Map json_)
      : this(
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
      };
}

/// Used by:
///
/// - containeranalysis:v1beta1 : ByProducts
/// - containeranalysis:v1beta1 : Environment
class $Shared02 {
  core.Map<core.String, core.String>? customValues;

  $Shared02({
    this.customValues,
  });

  $Shared02.fromJson(core.Map json_)
      : this(
          customValues: json_.containsKey('customValues')
              ? (json_['customValues'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (customValues != null) 'customValues': customValues!,
      };
}

/// Used by:
///
/// - containeranalysis:v1beta1 : Deployment
/// - ondemandscanning:v1beta1 : DeploymentOccurrence
class $Shared03 {
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

  $Shared03({
    this.address,
    this.config,
    this.deployTime,
    this.platform,
    this.resourceUri,
    this.undeployTime,
    this.userEmail,
  });

  $Shared03.fromJson(core.Map json_)
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
/// - osconfig:v1alpha : OSPolicyAssignmentInstanceFilterInventory
/// - osconfig:v1alpha : OSPolicyInventoryFilter
class $Shared04 {
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

  $Shared04({
    this.osShortName,
    this.osVersion,
  });

  $Shared04.fromJson(core.Map json_)
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
/// - containeranalysis:v1beta1 : Signature
/// - ondemandscanning:v1beta1 : Signature
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
/// - alertcenter:v1beta1 : Status
/// - cloudfunctions:v2beta : Status
/// - containeranalysis:v1beta1 : Status
/// - dataflow:v1b3 : Status
/// - datalabeling:v1beta1 : GoogleRpcStatus
/// - datastream:v1alpha1 : Status
/// - documentai:v1beta3 : GoogleRpcStatus
/// - domains:v1beta1 : Status
/// - firebase:v1beta1 : Status
/// - gkehub:v2alpha : GoogleRpcStatus
/// - lifesciences:v2beta : Status
/// - metastore:v1beta : Status
/// - networkconnectivity:v1alpha1 : GoogleRpcStatus
/// - networksecurity:v1beta1 : Status
/// - ondemandscanning:v1beta1 : Status
/// - osconfig:v1alpha : Status
/// - policysimulator:v1beta1 : GoogleRpcStatus
/// - privateca:v1beta1 : Status
/// - prod_tt_sasportal:v1alpha1 : SasPortalStatus
/// - recommendationengine:v1beta1 : GoogleRpcStatus
/// - sasportal:v1alpha1 : SasPortalStatus
/// - toolresults:v1beta3 : Status
/// - tpu:v2alpha1 : Status
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
/// - analyticsadmin:v1alpha : GoogleAnalyticsAdminV1alphaAccessStringFilter
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

/// Used by:
///
/// - bigqueryconnection:v1beta1 : TestIamPermissionsRequest
/// - cloudfunctions:v2beta : TestIamPermissionsRequest
/// - containeranalysis:v1beta1 : TestIamPermissionsRequest
/// - datacatalog:v1beta1 : TestIamPermissionsRequest
/// - domains:v1beta1 : TestIamPermissionsRequest
/// - networkconnectivity:v1alpha1 : TestIamPermissionsRequest
/// - networksecurity:v1beta1 : GoogleIamV1TestIamPermissionsRequest
/// - privateca:v1beta1 : TestIamPermissionsRequest
class $TestIamPermissionsRequest {
  /// The set of permissions to check for the `resource`.
  ///
  /// Permissions with wildcards (such as `*` or `storage.*`) are not allowed.
  /// For more information see
  /// [IAM Overview](https://cloud.google.com/iam/docs/overview#permissions).
  core.List<core.String>? permissions;

  $TestIamPermissionsRequest({
    this.permissions,
  });

  $TestIamPermissionsRequest.fromJson(core.Map json_)
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
/// - bigqueryconnection:v1beta1 : TestIamPermissionsResponse
/// - cloudfunctions:v2beta : TestIamPermissionsResponse
/// - containeranalysis:v1beta1 : TestIamPermissionsResponse
/// - datacatalog:v1beta1 : TestIamPermissionsResponse
/// - domains:v1beta1 : TestIamPermissionsResponse
/// - networkconnectivity:v1alpha1 : TestIamPermissionsResponse
/// - networksecurity:v1beta1 : GoogleIamV1TestIamPermissionsResponse
/// - privateca:v1beta1 : TestIamPermissionsResponse
class $TestIamPermissionsResponse {
  /// A subset of `TestPermissionsRequest.permissions` that the caller is
  /// allowed.
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
