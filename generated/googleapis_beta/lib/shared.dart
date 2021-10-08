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

  $AlertsRequest.fromJson(core.Map _json)
      : this(
          alertId: _json.containsKey('alertId')
              ? (_json['alertId'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          customerId: _json.containsKey('customerId')
              ? _json['customerId'] as core.String
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

  $AliasContext.fromJson(core.Map _json)
      : this(
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (name != null) 'name': name!,
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

  $Artifact.fromJson(core.Map _json)
      : this(
          checksum: _json.containsKey('checksum')
              ? _json['checksum'] as core.String
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          names: _json.containsKey('names')
              ? (_json['names'] as core.List)
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

  $AuditLogConfig.fromJson(core.Map _json)
      : this(
          exemptedMembers: _json.containsKey('exemptedMembers')
              ? (_json['exemptedMembers'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          logType: _json.containsKey('logType')
              ? _json['logType'] as core.String
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

  $CertificateAuthorityRequest.fromJson(core.Map _json)
      : this(
          requestId: _json.containsKey('requestId')
              ? _json['requestId'] as core.String
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

  $Command.fromJson(core.Map _json)
      : this(
          args: _json.containsKey('args')
              ? (_json['args'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          dir: _json.containsKey('dir') ? _json['dir'] as core.String : null,
          env: _json.containsKey('env')
              ? (_json['env'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          waitFor: _json.containsKey('waitFor')
              ? (_json['waitFor'] as core.List)
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
/// - documentai:v1beta3 : GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata
/// - documentai:v1beta3 : GoogleCloudDocumentaiV1CommonOperationMetadata
/// - documentai:v1beta3 : GoogleCloudDocumentaiV1beta3CommonOperationMetadata
class $CommonOperationMetadata {
  /// The creation time of the operation.
  core.String? createTime;

  /// The state of the operation.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Unspecified state.
  /// - "RUNNING" : Operation is still running.
  /// - "CANCELLING" : Operation is being cancelled.
  /// - "SUCCEEDED" : Operation succeeded.
  /// - "FAILED" : Operation failed.
  /// - "CANCELLED" : Operation is cancelled.
  core.String? state;

  /// A message providing more details about the current state of processing.
  core.String? stateMessage;

  /// The last update time of the operation.
  core.String? updateTime;

  $CommonOperationMetadata({
    this.createTime,
    this.state,
    this.stateMessage,
    this.updateTime,
  });

  $CommonOperationMetadata.fromJson(core.Map _json)
      : this(
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
          stateMessage: _json.containsKey('stateMessage')
              ? _json['stateMessage'] as core.String
              : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (state != null) 'state': state!,
        if (stateMessage != null) 'stateMessage': stateMessage!,
        if (updateTime != null) 'updateTime': updateTime!,
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

  $Config.fromJson(core.Map _json)
      : this(
          annotationSpecSet: _json.containsKey('annotationSpecSet')
              ? _json['annotationSpecSet'] as core.String
              : null,
          instructionMessage: _json.containsKey('instructionMessage')
              ? _json['instructionMessage'] as core.String
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

  $Date.fromJson(core.Map _json)
      : this(
          day: _json.containsKey('day') ? _json['day'] as core.int : null,
          month: _json.containsKey('month') ? _json['month'] as core.int : null,
          year: _json.containsKey('year') ? _json['year'] as core.int : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (day != null) 'day': day!,
        if (month != null) 'month': month!,
        if (year != null) 'year': year!,
      };
}

/// Used by:
///
/// - documentai:v1beta3 : GoogleCloudDocumentaiV1beta1DocumentEntityRelation
/// - documentai:v1beta3 : GoogleCloudDocumentaiV1beta2DocumentEntityRelation
/// - documentai:v1beta3 : GoogleCloudDocumentaiV1beta3DocumentEntityRelation
class $DocumentEntityRelation {
  /// Object entity id.
  core.String? objectId;

  /// Relationship description.
  core.String? relation;

  /// Subject entity id.
  core.String? subjectId;

  $DocumentEntityRelation({
    this.objectId,
    this.relation,
    this.subjectId,
  });

  $DocumentEntityRelation.fromJson(core.Map _json)
      : this(
          objectId: _json.containsKey('objectId')
              ? _json['objectId'] as core.String
              : null,
          relation: _json.containsKey('relation')
              ? _json['relation'] as core.String
              : null,
          subjectId: _json.containsKey('subjectId')
              ? _json['subjectId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (objectId != null) 'objectId': objectId!,
        if (relation != null) 'relation': relation!,
        if (subjectId != null) 'subjectId': subjectId!,
      };
}

/// Used by:
///
/// - documentai:v1beta3 : GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage
/// - documentai:v1beta3 : GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage
/// - documentai:v1beta3 : GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage
class $DocumentPageDetectedLanguage {
  /// Confidence of detected language.
  ///
  /// Range \[0, 1\].
  core.double? confidence;

  /// The BCP-47 language code, such as "en-US" or "sr-Latn".
  ///
  /// For more information, see
  /// http://www.unicode.org/reports/tr35/#Unicode_locale_identifier.
  core.String? languageCode;

  $DocumentPageDetectedLanguage({
    this.confidence,
    this.languageCode,
  });

  $DocumentPageDetectedLanguage.fromJson(core.Map _json)
      : this(
          confidence: _json.containsKey('confidence')
              ? (_json['confidence'] as core.num).toDouble()
              : null,
          languageCode: _json.containsKey('languageCode')
              ? _json['languageCode'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (confidence != null) 'confidence': confidence!,
        if (languageCode != null) 'languageCode': languageCode!,
      };
}

/// Used by:
///
/// - documentai:v1beta3 : GoogleCloudDocumentaiV1beta1DocumentPageDimension
/// - documentai:v1beta3 : GoogleCloudDocumentaiV1beta2DocumentPageDimension
/// - documentai:v1beta3 : GoogleCloudDocumentaiV1beta3DocumentPageDimension
class $DocumentPageDimension {
  /// Page height.
  core.double? height;

  /// Dimension unit.
  core.String? unit;

  /// Page width.
  core.double? width;

  $DocumentPageDimension({
    this.height,
    this.unit,
    this.width,
  });

  $DocumentPageDimension.fromJson(core.Map _json)
      : this(
          height: _json.containsKey('height')
              ? (_json['height'] as core.num).toDouble()
              : null,
          unit: _json.containsKey('unit') ? _json['unit'] as core.String : null,
          width: _json.containsKey('width')
              ? (_json['width'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (height != null) 'height': height!,
        if (unit != null) 'unit': unit!,
        if (width != null) 'width': width!,
      };
}

/// Used by:
///
/// - documentai:v1beta3 : GoogleCloudDocumentaiV1beta1DocumentPageImage
/// - documentai:v1beta3 : GoogleCloudDocumentaiV1beta2DocumentPageImage
/// - documentai:v1beta3 : GoogleCloudDocumentaiV1beta3DocumentPageImage
class $DocumentPageImage {
  /// Raw byte content of the image.
  core.String? content;
  core.List<core.int> get contentAsBytes => convert.base64.decode(content!);

  set contentAsBytes(core.List<core.int> _bytes) {
    content =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Height of the image in pixels.
  core.int? height;

  /// Encoding mime type for the image.
  core.String? mimeType;

  /// Width of the image in pixels.
  core.int? width;

  $DocumentPageImage({
    this.content,
    this.height,
    this.mimeType,
    this.width,
  });

  $DocumentPageImage.fromJson(core.Map _json)
      : this(
          content: _json.containsKey('content')
              ? _json['content'] as core.String
              : null,
          height:
              _json.containsKey('height') ? _json['height'] as core.int : null,
          mimeType: _json.containsKey('mimeType')
              ? _json['mimeType'] as core.String
              : null,
          width: _json.containsKey('width') ? _json['width'] as core.int : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (content != null) 'content': content!,
        if (height != null) 'height': height!,
        if (mimeType != null) 'mimeType': mimeType!,
        if (width != null) 'width': width!,
      };
}

/// Used by:
///
/// - documentai:v1beta3 : GoogleCloudDocumentaiV1beta1DocumentPageMatrix
/// - documentai:v1beta3 : GoogleCloudDocumentaiV1beta2DocumentPageMatrix
/// - documentai:v1beta3 : GoogleCloudDocumentaiV1beta3DocumentPageMatrix
class $DocumentPageMatrix {
  /// Number of columns in the matrix.
  core.int? cols;

  /// The matrix data.
  core.String? data;
  core.List<core.int> get dataAsBytes => convert.base64.decode(data!);

  set dataAsBytes(core.List<core.int> _bytes) {
    data =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Number of rows in the matrix.
  core.int? rows;

  /// This encodes information about what data type the matrix uses.
  ///
  /// For example, 0 (CV_8U) is an unsigned 8-bit image. For the full list of
  /// OpenCV primitive data types, please refer to
  /// https://docs.opencv.org/4.3.0/d1/d1b/group__core__hal__interface.html
  core.int? type;

  $DocumentPageMatrix({
    this.cols,
    this.data,
    this.rows,
    this.type,
  });

  $DocumentPageMatrix.fromJson(core.Map _json)
      : this(
          cols: _json.containsKey('cols') ? _json['cols'] as core.int : null,
          data: _json.containsKey('data') ? _json['data'] as core.String : null,
          rows: _json.containsKey('rows') ? _json['rows'] as core.int : null,
          type: _json.containsKey('type') ? _json['type'] as core.int : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cols != null) 'cols': cols!,
        if (data != null) 'data': data!,
        if (rows != null) 'rows': rows!,
        if (type != null) 'type': type!,
      };
}

/// Used by:
///
/// - documentai:v1beta3 : GoogleCloudDocumentaiV1beta1DocumentPageTokenDetectedBreak
/// - documentai:v1beta3 : GoogleCloudDocumentaiV1beta2DocumentPageTokenDetectedBreak
/// - documentai:v1beta3 : GoogleCloudDocumentaiV1beta3DocumentPageTokenDetectedBreak
class $DocumentPageTokenDetectedBreak {
  /// Detected break type.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Unspecified break type.
  /// - "SPACE" : A single whitespace.
  /// - "WIDE_SPACE" : A wider whitespace.
  /// - "HYPHEN" : A hyphen that indicates that a token has been split across
  /// lines.
  core.String? type;

  $DocumentPageTokenDetectedBreak({
    this.type,
  });

  $DocumentPageTokenDetectedBreak.fromJson(core.Map _json)
      : this(
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (type != null) 'type': type!,
      };
}

/// Used by:
///
/// - documentai:v1beta3 : GoogleCloudDocumentaiV1beta1DocumentProvenanceParent
/// - documentai:v1beta3 : GoogleCloudDocumentaiV1beta2DocumentProvenanceParent
/// - documentai:v1beta3 : GoogleCloudDocumentaiV1beta3DocumentProvenanceParent
class $DocumentProvenanceParent {
  /// The id of the parent provenance.
  core.int? id;

  /// The index of the parent item in the corresponding item list (eg.
  ///
  /// list of entities, properties within entities, etc.) on parent revision.
  core.int? index;

  /// The index of the \[Document.revisions\] identifying the parent revision.
  core.int? revision;

  $DocumentProvenanceParent({
    this.id,
    this.index,
    this.revision,
  });

  $DocumentProvenanceParent.fromJson(core.Map _json)
      : this(
          id: _json.containsKey('id') ? _json['id'] as core.int : null,
          index: _json.containsKey('index') ? _json['index'] as core.int : null,
          revision: _json.containsKey('revision')
              ? _json['revision'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
        if (index != null) 'index': index!,
        if (revision != null) 'revision': revision!,
      };
}

/// Used by:
///
/// - documentai:v1beta3 : GoogleCloudDocumentaiV1beta1DocumentRevisionHumanReview
/// - documentai:v1beta3 : GoogleCloudDocumentaiV1beta2DocumentRevisionHumanReview
/// - documentai:v1beta3 : GoogleCloudDocumentaiV1beta3DocumentRevisionHumanReview
class $DocumentRevisionHumanReview {
  /// Human review state.
  ///
  /// e.g. `requested`, `succeeded`, `rejected`.
  core.String? state;

  /// A message providing more details about the current state of processing.
  ///
  /// For example, the rejection reason when the state is `rejected`.
  core.String? stateMessage;

  $DocumentRevisionHumanReview({
    this.state,
    this.stateMessage,
  });

  $DocumentRevisionHumanReview.fromJson(core.Map _json)
      : this(
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
          stateMessage: _json.containsKey('stateMessage')
              ? _json['stateMessage'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (state != null) 'state': state!,
        if (stateMessage != null) 'stateMessage': stateMessage!,
      };
}

/// Used by:
///
/// - documentai:v1beta3 : GoogleCloudDocumentaiV1beta1DocumentShardInfo
/// - documentai:v1beta3 : GoogleCloudDocumentaiV1beta2DocumentShardInfo
/// - documentai:v1beta3 : GoogleCloudDocumentaiV1beta3DocumentShardInfo
class $DocumentShardInfo {
  /// Total number of shards.
  core.String? shardCount;

  /// The 0-based index of this shard.
  core.String? shardIndex;

  /// The index of the first character in Document.text in the overall document
  /// global text.
  core.String? textOffset;

  $DocumentShardInfo({
    this.shardCount,
    this.shardIndex,
    this.textOffset,
  });

  $DocumentShardInfo.fromJson(core.Map _json)
      : this(
          shardCount: _json.containsKey('shardCount')
              ? _json['shardCount'] as core.String
              : null,
          shardIndex: _json.containsKey('shardIndex')
              ? _json['shardIndex'] as core.String
              : null,
          textOffset: _json.containsKey('textOffset')
              ? _json['textOffset'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (shardCount != null) 'shardCount': shardCount!,
        if (shardIndex != null) 'shardIndex': shardIndex!,
        if (textOffset != null) 'textOffset': textOffset!,
      };
}

/// Used by:
///
/// - documentai:v1beta3 : GoogleCloudDocumentaiV1beta1DocumentStyleFontSize
/// - documentai:v1beta3 : GoogleCloudDocumentaiV1beta2DocumentStyleFontSize
/// - documentai:v1beta3 : GoogleCloudDocumentaiV1beta3DocumentStyleFontSize
class $DocumentStyleFontSize {
  /// Font size for the text.
  core.double? size;

  /// Unit for the font size.
  ///
  /// Follows CSS naming (in, px, pt, etc.).
  core.String? unit;

  $DocumentStyleFontSize({
    this.size,
    this.unit,
  });

  $DocumentStyleFontSize.fromJson(core.Map _json)
      : this(
          size: _json.containsKey('size')
              ? (_json['size'] as core.num).toDouble()
              : null,
          unit: _json.containsKey('unit') ? _json['unit'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (size != null) 'size': size!,
        if (unit != null) 'unit': unit!,
      };
}

/// Used by:
///
/// - documentai:v1beta3 : GoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment
/// - documentai:v1beta3 : GoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment
/// - documentai:v1beta3 : GoogleCloudDocumentaiV1beta3DocumentTextAnchorTextSegment
class $DocumentTextAnchorTextSegment {
  /// TextSegment half open end UTF-8 char index in the Document.text.
  core.String? endIndex;

  /// TextSegment start UTF-8 char index in the Document.text.
  core.String? startIndex;

  $DocumentTextAnchorTextSegment({
    this.endIndex,
    this.startIndex,
  });

  $DocumentTextAnchorTextSegment.fromJson(core.Map _json)
      : this(
          endIndex: _json.containsKey('endIndex')
              ? _json['endIndex'] as core.String
              : null,
          startIndex: _json.containsKey('startIndex')
              ? _json['startIndex'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (endIndex != null) 'endIndex': endIndex!,
        if (startIndex != null) 'startIndex': startIndex!,
      };
}

/// Used by:
///
/// - adexchangebuyer2:v2beta1 : CancelNegotiationRequest
/// - adexchangebuyer2:v2beta1 : CompleteSetupRequest
/// - adexchangebuyer2:v2beta1 : Empty
/// - adexchangebuyer2:v2beta1 : ResumeProposalRequest
/// - adexchangebuyer2:v2beta1 : StopWatchingCreativeRequest
/// - alertcenter:v1beta1 : ActionInfo
/// - alertcenter:v1beta1 : Empty
/// - analyticsadmin:v1alpha : GoogleAnalyticsAdminV1alphaAcknowledgeUserDataCollectionResponse
/// - analyticsadmin:v1alpha : GoogleAnalyticsAdminV1alphaApproveDisplayVideo360AdvertiserLinkProposalRequest
/// - analyticsadmin:v1alpha : GoogleAnalyticsAdminV1alphaArchiveCustomDimensionRequest
/// - analyticsadmin:v1alpha : GoogleAnalyticsAdminV1alphaArchiveCustomMetricRequest
/// - analyticsadmin:v1alpha : GoogleAnalyticsAdminV1alphaCancelDisplayVideo360AdvertiserLinkProposalRequest
/// - analyticsadmin:v1alpha : GoogleProtobufEmpty
/// - area120tables:v1alpha1 : Empty
/// - bigqueryconnection:v1beta1 : Empty
/// - clouderrorreporting:v1beta1 : DeleteEventsResponse
/// - clouderrorreporting:v1beta1 : ReportErrorEventResponse
/// - containeranalysis:v1beta1 : Empty
/// - containeranalysis:v1beta1 : RelationshipNote
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
/// - documentai:v1beta3 : GoogleCloudDocumentaiUiv1beta3BatchDeleteDocumentsResponse
/// - documentai:v1beta3 : GoogleCloudDocumentaiUiv1beta3BatchMoveDocumentsResponse
/// - documentai:v1beta3 : GoogleCloudDocumentaiUiv1beta3DeployProcessorVersionResponse
/// - documentai:v1beta3 : GoogleCloudDocumentaiUiv1beta3DisableProcessorResponse
/// - documentai:v1beta3 : GoogleCloudDocumentaiUiv1beta3EnableProcessorResponse
/// - documentai:v1beta3 : GoogleCloudDocumentaiUiv1beta3ImportDocumentsResponse
/// - documentai:v1beta3 : GoogleCloudDocumentaiUiv1beta3SetDefaultProcessorVersionResponse
/// - documentai:v1beta3 : GoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionResponse
/// - documentai:v1beta3 : GoogleCloudDocumentaiV1BatchProcessResponse
/// - documentai:v1beta3 : GoogleCloudDocumentaiV1DeployProcessorVersionResponse
/// - documentai:v1beta3 : GoogleCloudDocumentaiV1DisableProcessorResponse
/// - documentai:v1beta3 : GoogleCloudDocumentaiV1EnableProcessorResponse
/// - documentai:v1beta3 : GoogleCloudDocumentaiV1SetDefaultProcessorVersionResponse
/// - documentai:v1beta3 : GoogleCloudDocumentaiV1UndeployProcessorVersionResponse
/// - documentai:v1beta3 : GoogleCloudDocumentaiV1beta3BatchProcessResponse
/// - documentai:v1beta3 : GoogleCloudDocumentaiV1beta3DeployProcessorVersionRequest
/// - documentai:v1beta3 : GoogleCloudDocumentaiV1beta3DeployProcessorVersionResponse
/// - documentai:v1beta3 : GoogleCloudDocumentaiV1beta3DisableProcessorRequest
/// - documentai:v1beta3 : GoogleCloudDocumentaiV1beta3DisableProcessorResponse
/// - documentai:v1beta3 : GoogleCloudDocumentaiV1beta3EnableProcessorRequest
/// - documentai:v1beta3 : GoogleCloudDocumentaiV1beta3EnableProcessorResponse
/// - documentai:v1beta3 : GoogleCloudDocumentaiV1beta3SetDefaultProcessorVersionResponse
/// - documentai:v1beta3 : GoogleCloudDocumentaiV1beta3UndeployProcessorVersionRequest
/// - documentai:v1beta3 : GoogleCloudDocumentaiV1beta3UndeployProcessorVersionResponse
/// - documentai:v1beta3 : GoogleProtobufEmpty
/// - domains:v1beta1 : ExportRegistrationRequest
/// - domains:v1beta1 : ResetAuthorizationCodeRequest
/// - factchecktools:v1alpha1 : GoogleProtobufEmpty
/// - firebase:v1beta1 : Empty
/// - firebase:v1beta1 : MessageSet
/// - firebaseappcheck:v1beta : GoogleFirebaseAppcheckV1betaGenerateAppAttestChallengeRequest
/// - firebaseappcheck:v1beta : GoogleProtobufEmpty
/// - firebasedatabase:v1beta : DisableDatabaseInstanceRequest
/// - firebasedatabase:v1beta : ReenableDatabaseInstanceRequest
/// - firebasestorage:v1beta : AddFirebaseRequest
/// - firebasestorage:v1beta : Empty
/// - firebasestorage:v1beta : RemoveFirebaseRequest
/// - lifesciences:v2beta : CancelOperationRequest
/// - lifesciences:v2beta : Empty
/// - lifesciences:v2beta : RunPipelineResponse
/// - metastore:v1beta : Empty
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
/// - recommendationengine:v1beta1 : GoogleCloudRecommendationengineV1alphaRejoinCatalogMetadata
/// - recommendationengine:v1beta1 : GoogleCloudRecommendationengineV1alphaTuningResponse
/// - recommendationengine:v1beta1 : GoogleCloudRecommendationengineV1beta1RejoinUserEventsMetadata
/// - recommendationengine:v1beta1 : GoogleProtobufEmpty
/// - sasportal:v1alpha1 : SasPortalEmpty
/// - sasportal:v1alpha1 : SasPortalGenerateSecretRequest
/// - sasportal:v1alpha1 : SasPortalValidateInstallerResponse
/// - toolresults:v1beta3 : AndroidTestLoop
/// - toolresults:v1beta3 : AvailableDeepLinks
/// - toolresults:v1beta3 : DeviceOutOfMemory
/// - toolresults:v1beta3 : FailedToInstall
/// - toolresults:v1beta3 : InsufficientCoverage
/// - toolresults:v1beta3 : IosRoboTest
/// - toolresults:v1beta3 : LauncherActivityNotFound
/// - toolresults:v1beta3 : LogcatCollectionError
/// - toolresults:v1beta3 : MatrixDimensionDefinition
/// - toolresults:v1beta3 : PerformedGoogleLogin
/// - toolresults:v1beta3 : StepSummary
/// - toolresults:v1beta3 : UnspecifiedWarning
/// - transcoder:v1beta1 : Empty
class $Empty {
  $Empty();

  $Empty.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.dynamic> toJson() => {};
}

/// Used by:
///
/// - transcoder:v1beta1 : Aes128Encryption
/// - transcoder:v1beta1 : SampleAesEncryption
class $Encryption {
  /// URI of the key delivery service.
  ///
  /// This URI is inserted into the M3U8 header.
  ///
  /// Required.
  core.String? keyUri;

  $Encryption({
    this.keyUri,
  });

  $Encryption.fromJson(core.Map _json)
      : this(
          keyUri: _json.containsKey('keyUri')
              ? _json['keyUri'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (keyUri != null) 'keyUri': keyUri!,
      };
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

  $Entry.fromJson(core.Map _json)
      : this(
          key: _json.containsKey('key') ? _json['key'] as core.String : null,
          value:
              _json.containsKey('value') ? _json['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (key != null) 'key': key!,
        if (value != null) 'value': value!,
      };
}

/// Used by:
///
/// - lifesciences:v2beta : PullStartedEvent
/// - lifesciences:v2beta : PullStoppedEvent
class $Event {
  /// The URI of the image that was pulled.
  core.String? imageUri;

  $Event({
    this.imageUri,
  });

  $Event.fromJson(core.Map _json)
      : this(
          imageUri: _json.containsKey('imageUri')
              ? _json['imageUri'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (imageUri != null) 'imageUri': imageUri!,
      };
}

/// Used by:
///
/// - bigqueryconnection:v1beta1 : Expr
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

  $Expr.fromJson(core.Map _json)
      : this(
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          expression: _json.containsKey('expression')
              ? _json['expression'] as core.String
              : null,
          location: _json.containsKey('location')
              ? _json['location'] as core.String
              : null,
          title:
              _json.containsKey('title') ? _json['title'] as core.String : null,
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

  $Fingerprint.fromJson(core.Map _json)
      : this(
          v1Name: _json.containsKey('v1Name')
              ? _json['v1Name'] as core.String
              : null,
          v2Blob: _json.containsKey('v2Blob')
              ? (_json['v2Blob'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          v2Name: _json.containsKey('v2Name')
              ? _json['v2Name'] as core.String
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
/// - datalabeling:v1beta1 : GoogleCloudDatalabelingV1alpha1GcsDestination
/// - datalabeling:v1beta1 : GoogleCloudDatalabelingV1beta1GcsDestination
/// - datalabeling:v1beta1 : GoogleCloudDatalabelingV1p1alpha1GcsDestination
/// - datalabeling:v1beta1 : GoogleCloudDatalabelingV1p2alpha1GcsDestination
class $GcsDestination {
  /// The format of the gcs destination.
  ///
  /// Only "text/csv" and "application/json" are supported.
  ///
  /// Required.
  core.String? mimeType;

  /// The output uri of destination file.
  ///
  /// Required.
  core.String? outputUri;

  $GcsDestination({
    this.mimeType,
    this.outputUri,
  });

  $GcsDestination.fromJson(core.Map _json)
      : this(
          mimeType: _json.containsKey('mimeType')
              ? _json['mimeType'] as core.String
              : null,
          outputUri: _json.containsKey('outputUri')
              ? _json['outputUri'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (mimeType != null) 'mimeType': mimeType!,
        if (outputUri != null) 'outputUri': outputUri!,
      };
}

/// Used by:
///
/// - datalabeling:v1beta1 : GoogleCloudDatalabelingV1alpha1GcsFolderDestination
/// - datalabeling:v1beta1 : GoogleCloudDatalabelingV1beta1GcsFolderDestination
/// - datalabeling:v1beta1 : GoogleCloudDatalabelingV1p1alpha1GcsFolderDestination
/// - datalabeling:v1beta1 : GoogleCloudDatalabelingV1p2alpha1GcsFolderDestination
class $GcsFolderDestination {
  /// Cloud Storage directory to export data to.
  ///
  /// Required.
  core.String? outputFolderUri;

  $GcsFolderDestination({
    this.outputFolderUri,
  });

  $GcsFolderDestination.fromJson(core.Map _json)
      : this(
          outputFolderUri: _json.containsKey('outputFolderUri')
              ? _json['outputFolderUri'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (outputFolderUri != null) 'outputFolderUri': outputFolderUri!,
      };
}

/// Used by:
///
/// - bigqueryconnection:v1beta1 : GetPolicyOptions
/// - containeranalysis:v1beta1 : GetPolicyOptions
/// - datacatalog:v1beta1 : GetPolicyOptions
class $GetPolicyOptions {
  /// The policy format version to be returned.
  ///
  /// Valid values are 0, 1, and 3. Requests specifying an invalid value will be
  /// rejected. Requests for policies with any conditional bindings must specify
  /// version 3. Policies without any conditional bindings may specify any valid
  /// value or leave the field unset. To learn which resources support
  /// conditions in their IAM policies, see the
  /// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
  ///
  /// Optional.
  core.int? requestedPolicyVersion;

  $GetPolicyOptions({
    this.requestedPolicyVersion,
  });

  $GetPolicyOptions.fromJson(core.Map _json)
      : this(
          requestedPolicyVersion: _json.containsKey('requestedPolicyVersion')
              ? _json['requestedPolicyVersion'] as core.int
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

  $GitSourceContext.fromJson(core.Map _json)
      : this(
          revisionId: _json.containsKey('revisionId')
              ? _json['revisionId'] as core.String
              : null,
          url: _json.containsKey('url') ? _json['url'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (revisionId != null) 'revisionId': revisionId!,
        if (url != null) 'url': url!,
      };
}

/// Used by:
///
/// - datalabeling:v1beta1 : GoogleCloudDatalabelingV1alpha1HumanAnnotationConfig
/// - datalabeling:v1beta1 : GoogleCloudDatalabelingV1beta1HumanAnnotationConfig
/// - datalabeling:v1beta1 : GoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig
/// - datalabeling:v1beta1 : GoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig
class $HumanAnnotationConfig {
  /// A human-readable description for AnnotatedDataset.
  ///
  /// The description can be up to 10000 characters long.
  ///
  /// Optional.
  core.String? annotatedDatasetDescription;

  /// A human-readable name for AnnotatedDataset defined by users.
  ///
  /// Maximum of 64 characters .
  ///
  /// Required.
  core.String? annotatedDatasetDisplayName;

  /// If you want your own labeling contributors to manage and work on this
  /// labeling request, you can set these contributors here.
  ///
  /// We will give them access to the question types in crowdcompute. Note that
  /// these emails must be registered in crowdcompute worker UI:
  /// https://crowd-compute.appspot.com/
  ///
  /// Optional.
  core.List<core.String>? contributorEmails;

  /// Instruction resource name.
  ///
  /// Required.
  core.String? instruction;

  /// A human-readable label used to logically group labeling tasks.
  ///
  /// This string must match the regular expression `[a-zA-Z\\d_-]{0,128}`.
  ///
  /// Optional.
  core.String? labelGroup;

  /// The Language of this question, as a
  /// \[BCP-47\](https://www.rfc-editor.org/rfc/bcp/bcp47.txt).
  ///
  /// Default value is en-US. Only need to set this when task is language
  /// related. For example, French text classification.
  ///
  /// Optional.
  core.String? languageCode;

  /// Maximum duration for contributors to answer a question.
  ///
  /// Maximum is 3600 seconds. Default is 3600 seconds.
  ///
  /// Optional.
  core.String? questionDuration;

  /// Replication of questions.
  ///
  /// Each question will be sent to up to this number of contributors to label.
  /// Aggregated answers will be returned. Default is set to 1. For image
  /// related labeling, valid values are 1, 3, 5.
  ///
  /// Optional.
  core.int? replicaCount;

  /// Email of the user who started the labeling task and should be notified by
  /// email.
  ///
  /// If empty no notification will be sent.
  core.String? userEmailAddress;

  $HumanAnnotationConfig({
    this.annotatedDatasetDescription,
    this.annotatedDatasetDisplayName,
    this.contributorEmails,
    this.instruction,
    this.labelGroup,
    this.languageCode,
    this.questionDuration,
    this.replicaCount,
    this.userEmailAddress,
  });

  $HumanAnnotationConfig.fromJson(core.Map _json)
      : this(
          annotatedDatasetDescription:
              _json.containsKey('annotatedDatasetDescription')
                  ? _json['annotatedDatasetDescription'] as core.String
                  : null,
          annotatedDatasetDisplayName:
              _json.containsKey('annotatedDatasetDisplayName')
                  ? _json['annotatedDatasetDisplayName'] as core.String
                  : null,
          contributorEmails: _json.containsKey('contributorEmails')
              ? (_json['contributorEmails'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          instruction: _json.containsKey('instruction')
              ? _json['instruction'] as core.String
              : null,
          labelGroup: _json.containsKey('labelGroup')
              ? _json['labelGroup'] as core.String
              : null,
          languageCode: _json.containsKey('languageCode')
              ? _json['languageCode'] as core.String
              : null,
          questionDuration: _json.containsKey('questionDuration')
              ? _json['questionDuration'] as core.String
              : null,
          replicaCount: _json.containsKey('replicaCount')
              ? _json['replicaCount'] as core.int
              : null,
          userEmailAddress: _json.containsKey('userEmailAddress')
              ? _json['userEmailAddress'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (annotatedDatasetDescription != null)
          'annotatedDatasetDescription': annotatedDatasetDescription!,
        if (annotatedDatasetDisplayName != null)
          'annotatedDatasetDisplayName': annotatedDatasetDisplayName!,
        if (contributorEmails != null) 'contributorEmails': contributorEmails!,
        if (instruction != null) 'instruction': instruction!,
        if (labelGroup != null) 'labelGroup': labelGroup!,
        if (languageCode != null) 'languageCode': languageCode!,
        if (questionDuration != null) 'questionDuration': questionDuration!,
        if (replicaCount != null) 'replicaCount': replicaCount!,
        if (userEmailAddress != null) 'userEmailAddress': userEmailAddress!,
      };
}

/// Used by:
///
/// - documentai:v1beta3 : GoogleCloudDocumentaiV1HumanReviewStatus
/// - documentai:v1beta3 : GoogleCloudDocumentaiV1beta3HumanReviewStatus
class $HumanReviewStatus {
  /// The name of the operation triggered by the processed document.
  ///
  /// This field is populated only when the \[state\] is
  /// \[HUMAN_REVIEW_IN_PROGRESS\]. It has the same response type and metadata
  /// as the long running operation returned by \[ReviewDocument\] method.
  core.String? humanReviewOperation;

  /// The state of human review on the processing request.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Human review state is unspecified. Most likely due
  /// to an internal error.
  /// - "SKIPPED" : Human review is skipped for the document. This can happen
  /// because human review is not enabled on the processor or the processing
  /// request has been set to skip this document.
  /// - "VALIDATION_PASSED" : Human review validation is triggered and passed,
  /// so no review is needed.
  /// - "IN_PROGRESS" : Human review validation is triggered and the document is
  /// under review.
  /// - "ERROR" : Some error happened during triggering human review, see the
  /// \[state_message\] for details.
  core.String? state;

  /// A message providing more details about the human review state.
  core.String? stateMessage;

  $HumanReviewStatus({
    this.humanReviewOperation,
    this.state,
    this.stateMessage,
  });

  $HumanReviewStatus.fromJson(core.Map _json)
      : this(
          humanReviewOperation: _json.containsKey('humanReviewOperation')
              ? _json['humanReviewOperation'] as core.String
              : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
          stateMessage: _json.containsKey('stateMessage')
              ? _json['stateMessage'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (humanReviewOperation != null)
          'humanReviewOperation': humanReviewOperation!,
        if (state != null) 'state': state!,
        if (stateMessage != null) 'stateMessage': stateMessage!,
      };
}

/// Used by:
///
/// - datalabeling:v1beta1 : GoogleCloudDatalabelingV1alpha1ImportDataOperationResponse
/// - datalabeling:v1beta1 : GoogleCloudDatalabelingV1beta1ImportDataOperationResponse
/// - datalabeling:v1beta1 : GoogleCloudDatalabelingV1p1alpha1ImportDataOperationResponse
/// - datalabeling:v1beta1 : GoogleCloudDatalabelingV1p2alpha1ImportDataOperationResponse
class $ImportDataOperationResponse {
  /// Ouptut only.
  ///
  /// The name of imported dataset.
  core.String? dataset;

  /// Number of examples imported successfully.
  ///
  /// Output only.
  core.int? importCount;

  /// Total number of examples requested to import
  ///
  /// Output only.
  core.int? totalCount;

  $ImportDataOperationResponse({
    this.dataset,
    this.importCount,
    this.totalCount,
  });

  $ImportDataOperationResponse.fromJson(core.Map _json)
      : this(
          dataset: _json.containsKey('dataset')
              ? _json['dataset'] as core.String
              : null,
          importCount: _json.containsKey('importCount')
              ? _json['importCount'] as core.int
              : null,
          totalCount: _json.containsKey('totalCount')
              ? _json['totalCount'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataset != null) 'dataset': dataset!,
        if (importCount != null) 'importCount': importCount!,
        if (totalCount != null) 'totalCount': totalCount!,
      };
}

/// Used by:
///
/// - datalabeling:v1beta1 : GoogleCloudDatalabelingV1alpha1LabelStats
/// - datalabeling:v1beta1 : GoogleCloudDatalabelingV1beta1LabelStats
/// - datalabeling:v1beta1 : GoogleCloudDatalabelingV1p1alpha1LabelStats
/// - datalabeling:v1beta1 : GoogleCloudDatalabelingV1p2alpha1LabelStats
class $LabelStats {
  /// Map of each annotation spec's example count.
  ///
  /// Key is the annotation spec name and value is the number of examples for
  /// that annotation spec. If the annotated dataset does not have annotation
  /// spec, the map will return a pair where the key is empty string and value
  /// is the total number of annotations.
  core.Map<core.String, core.String>? exampleCount;

  $LabelStats({
    this.exampleCount,
  });

  $LabelStats.fromJson(core.Map _json)
      : this(
          exampleCount: _json.containsKey('exampleCount')
              ? (_json['exampleCount'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (exampleCount != null) 'exampleCount': exampleCount!,
      };
}

/// Used by:
///
/// - documentai:v1beta3 : GoogleCloudLocationLocation
/// - domains:v1beta1 : Location
/// - lifesciences:v2beta : Location
/// - networkconnectivity:v1alpha1 : Location
/// - networksecurity:v1beta1 : Location
/// - privateca:v1beta1 : Location
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

  $Location.fromJson(core.Map _json)
      : this(
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          labels: _json.containsKey('labels')
              ? (_json['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          locationId: _json.containsKey('locationId')
              ? _json['locationId'] as core.String
              : null,
          metadata: _json.containsKey('metadata')
              ? _json['metadata'] as core.Map<core.String, core.dynamic>
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
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
/// - firebasestorage:v1beta : GoogleFirebaseStorageControlplaneV1alphaMigrateLocationDestructivelyMetadata
/// - firebasestorage:v1beta : GoogleFirebaseStorageControlplaneV1betaMigrateLocationDestructivelyMetadata
class $MigrateLocationDestructivelyMetadata {
  /// The time the LRO was created.
  core.String? createTime;

  /// The time the LRO was last updated.
  core.String? lastUpdateTime;

  /// The current state of the migration.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Unspecified state. Should not be used.
  /// - "PENDING" : The MigrateLocationDestructively request has passed
  /// precondition checks and the bucket migration will begin soon.
  /// - "CREATING_TEMP_BUCKET" : Generating a unique bucket name, storing the
  /// source -> temp mapping in Spanner, and actually creating the temporary
  /// bucket via Bigstore.
  /// - "TRANSFERRING_TO_TEMP" : The first STS transfer to move all objects from
  /// the source bucket to the temp bucket is underway.
  /// - "DELETING_SOURCE_BUCKET" : The source bucket is being emptied and
  /// deleted.
  /// - "CREATING_DESTINATION_BUCKET" : The source bucket is being recreated in
  /// the new location.
  /// - "TRANSFERRING_TO_DESTINATION" : The second STS transfer to move all
  /// objects from the temp bucket to the final bucket is underway.
  /// - "DELETING_TEMP_BUCKET" : The temp bucket is being emptied and deleted.
  /// - "SUCCEEDED" : All stages of the migration have completed and the
  /// operation has been marked done and updated with a response.
  /// - "FAILED" : The migration failed at some stage and it is not possible to
  /// continue retrying that stage. Manual recovery may be needed. Rollback is
  /// either impossible at this stage, or has been attempted and failed.
  /// - "ROLLING_BACK" : The migration has encountered a permanent failure and
  /// is now being rolled back so that the source bucket is restored to its
  /// original state.
  /// - "ROLLED_BACK" : The migration has been successfully rolled back.
  core.String? state;

  $MigrateLocationDestructivelyMetadata({
    this.createTime,
    this.lastUpdateTime,
    this.state,
  });

  $MigrateLocationDestructivelyMetadata.fromJson(core.Map _json)
      : this(
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          lastUpdateTime: _json.containsKey('lastUpdateTime')
              ? _json['lastUpdateTime'] as core.String
              : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (lastUpdateTime != null) 'lastUpdateTime': lastUpdateTime!,
        if (state != null) 'state': state!,
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

  $Money.fromJson(core.Map _json)
      : this(
          currencyCode: _json.containsKey('currencyCode')
              ? _json['currencyCode'] as core.String
              : null,
          nanos: _json.containsKey('nanos') ? _json['nanos'] as core.int : null,
          units:
              _json.containsKey('units') ? _json['units'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (currencyCode != null) 'currencyCode': currencyCode!,
        if (nanos != null) 'nanos': nanos!,
        if (units != null) 'units': units!,
      };
}

/// Used by:
///
/// - documentai:v1beta3 : GoogleCloudDocumentaiV1beta1NormalizedVertex
/// - documentai:v1beta3 : GoogleCloudDocumentaiV1beta2NormalizedVertex
/// - documentai:v1beta3 : GoogleCloudDocumentaiV1beta3NormalizedVertex
class $NormalizedVertex {
  /// X coordinate.
  core.double? x;

  /// Y coordinate (starts from the top of the image).
  core.double? y;

  $NormalizedVertex({
    this.x,
    this.y,
  });

  $NormalizedVertex.fromJson(core.Map _json)
      : this(
          x: _json.containsKey('x')
              ? (_json['x'] as core.num).toDouble()
              : null,
          y: _json.containsKey('y')
              ? (_json['y'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (x != null) 'x': x!,
        if (y != null) 'y': y!,
      };
}

/// Used by:
///
/// - networkconnectivity:v1alpha1 : OperationMetadata
/// - networksecurity:v1beta1 : OperationMetadata
/// - privateca:v1beta1 : OperationMetadata
class $OperationMetadata00 {
  /// API version used to start the operation.
  ///
  /// Output only.
  core.String? apiVersion;

  /// The time the operation was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The time the operation finished running.
  ///
  /// Output only.
  core.String? endTime;

  /// Identifies whether the user has requested cancellation of the operation.
  ///
  /// Operations that have successfully been cancelled have Operation.error
  /// value with a google.rpc.Status.code of 1, corresponding to
  /// `Code.CANCELLED`.
  ///
  /// Output only.
  core.bool? requestedCancellation;

  /// Human-readable status of the operation, if any.
  ///
  /// Output only.
  core.String? statusMessage;

  /// Server-defined resource path for the target of the operation.
  ///
  /// Output only.
  core.String? target;

  /// Name of the verb executed by the operation.
  ///
  /// Output only.
  core.String? verb;

  $OperationMetadata00({
    this.apiVersion,
    this.createTime,
    this.endTime,
    this.requestedCancellation,
    this.statusMessage,
    this.target,
    this.verb,
  });

  $OperationMetadata00.fromJson(core.Map _json)
      : this(
          apiVersion: _json.containsKey('apiVersion')
              ? _json['apiVersion'] as core.String
              : null,
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          endTime: _json.containsKey('endTime')
              ? _json['endTime'] as core.String
              : null,
          requestedCancellation: _json.containsKey('requestedCancellation')
              ? _json['requestedCancellation'] as core.bool
              : null,
          statusMessage: _json.containsKey('statusMessage')
              ? _json['statusMessage'] as core.String
              : null,
          target: _json.containsKey('target')
              ? _json['target'] as core.String
              : null,
          verb: _json.containsKey('verb') ? _json['verb'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (apiVersion != null) 'apiVersion': apiVersion!,
        if (createTime != null) 'createTime': createTime!,
        if (endTime != null) 'endTime': endTime!,
        if (requestedCancellation != null)
          'requestedCancellation': requestedCancellation!,
        if (statusMessage != null) 'statusMessage': statusMessage!,
        if (target != null) 'target': target!,
        if (verb != null) 'verb': verb!,
      };
}

/// Used by:
///
/// - documentai:v1beta3 : GoogleCloudDocumentaiV1beta1OperationMetadata
/// - documentai:v1beta3 : GoogleCloudDocumentaiV1beta2OperationMetadata
class $OperationMetadata01 {
  /// The creation time of the operation.
  core.String? createTime;

  /// The state of the current batch processing.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The default value. This value is used if the state
  /// is omitted.
  /// - "ACCEPTED" : Request is received.
  /// - "WAITING" : Request operation is waiting for scheduling.
  /// - "RUNNING" : Request is being processed.
  /// - "SUCCEEDED" : The batch processing completed successfully.
  /// - "CANCELLED" : The batch processing was cancelled.
  /// - "FAILED" : The batch processing has failed.
  core.String? state;

  /// A message providing more details about the current state of processing.
  core.String? stateMessage;

  /// The last update time of the operation.
  core.String? updateTime;

  $OperationMetadata01({
    this.createTime,
    this.state,
    this.stateMessage,
    this.updateTime,
  });

  $OperationMetadata01.fromJson(core.Map _json)
      : this(
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
          stateMessage: _json.containsKey('stateMessage')
              ? _json['stateMessage'] as core.String
              : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (state != null) 'state': state!,
        if (stateMessage != null) 'stateMessage': stateMessage!,
        if (updateTime != null) 'updateTime': updateTime!,
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

  $PostalAddress.fromJson(core.Map _json)
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

  $ProjectRepoId.fromJson(core.Map _json)
      : this(
          projectId: _json.containsKey('projectId')
              ? _json['projectId'] as core.String
              : null,
          repoName: _json.containsKey('repoName')
              ? _json['repoName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (projectId != null) 'projectId': projectId!,
        if (repoName != null) 'repoName': repoName!,
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

  $RelatedUrl.fromJson(core.Map _json)
      : this(
          label:
              _json.containsKey('label') ? _json['label'] as core.String : null,
          url: _json.containsKey('url') ? _json['url'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (label != null) 'label': label!,
        if (url != null) 'url': url!,
      };
}

/// Used by:
///
/// - policysimulator:v1beta1 : GoogleCloudPolicysimulatorV1ReplayOperationMetadata
/// - policysimulator:v1beta1 : GoogleCloudPolicysimulatorV1beta1ReplayOperationMetadata
class $ReplayOperationMetadata {
  /// Time when the request was received.
  core.String? startTime;

  $ReplayOperationMetadata({
    this.startTime,
  });

  $ReplayOperationMetadata.fromJson(core.Map _json)
      : this(
          startTime: _json.containsKey('startTime')
              ? _json['startTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (startTime != null) 'startTime': startTime!,
      };
}

/// Used by:
///
/// - recommendationengine:v1beta1 : GoogleCloudRecommendationengineV1alphaRejoinCatalogResponse
/// - recommendationengine:v1beta1 : GoogleCloudRecommendationengineV1beta1RejoinUserEventsResponse
class $Response {
  /// Number of user events that were joined with latest catalog items.
  core.String? rejoinedUserEventsCount;

  $Response({
    this.rejoinedUserEventsCount,
  });

  $Response.fromJson(core.Map _json)
      : this(
          rejoinedUserEventsCount: _json.containsKey('rejoinedUserEventsCount')
              ? _json['rejoinedUserEventsCount'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (rejoinedUserEventsCount != null)
          'rejoinedUserEventsCount': rejoinedUserEventsCount!,
      };
}

/// Used by:
///
/// - documentai:v1beta3 : GoogleCloudDocumentaiV1ReviewDocumentResponse
/// - documentai:v1beta3 : GoogleCloudDocumentaiV1beta3ReviewDocumentResponse
class $ReviewDocumentResponse {
  /// The Cloud Storage uri for the human reviewed document.
  core.String? gcsDestination;

  $ReviewDocumentResponse({
    this.gcsDestination,
  });

  $ReviewDocumentResponse.fromJson(core.Map _json)
      : this(
          gcsDestination: _json.containsKey('gcsDestination')
              ? _json['gcsDestination'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (gcsDestination != null) 'gcsDestination': gcsDestination!,
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

  $SasPortalAssignment.fromJson(core.Map _json)
      : this(
          members: _json.containsKey('members')
              ? (_json['members'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          role: _json.containsKey('role') ? _json['role'] as core.String : null,
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

  set encodedDeviceAsBytes(core.List<core.int> _bytes) {
    encodedDevice =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
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

  $SasPortalCreateSignedDeviceRequest.fromJson(core.Map _json)
      : this(
          encodedDevice: _json.containsKey('encodedDevice')
              ? _json['encodedDevice'] as core.String
              : null,
          installerId: _json.containsKey('installerId')
              ? _json['installerId'] as core.String
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

  $SasPortalCustomer.fromJson(core.Map _json)
      : this(
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          sasUserIds: _json.containsKey('sasUserIds')
              ? (_json['sasUserIds'] as core.List)
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
  /// The allowed billing modes under this deployment.
  core.List<core.String>? allowedBillingModes;

  /// Default billing mode for the deployment and devices under it.
  /// Possible string values are:
  /// - "BILLING_MODE_UNSPECIFIED" : Billing mode has not been specified.
  /// - "MOBILE" : Price is based on category of CBSD: Category A, Category B
  /// registered with SAS.
  /// - "FIXED_WIRELESS" : Price is based on type of CBSD: Base station or CPE.
  core.String? defaultBillingMode;

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
    this.allowedBillingModes,
    this.defaultBillingMode,
    this.displayName,
    this.frns,
    this.name,
    this.sasUserIds,
  });

  $SasPortalDeployment.fromJson(core.Map _json)
      : this(
          allowedBillingModes: _json.containsKey('allowedBillingModes')
              ? (_json['allowedBillingModes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          defaultBillingMode: _json.containsKey('defaultBillingMode')
              ? _json['defaultBillingMode'] as core.String
              : null,
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          frns: _json.containsKey('frns')
              ? (_json['frns'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          sasUserIds: _json.containsKey('sasUserIds')
              ? (_json['sasUserIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowedBillingModes != null)
          'allowedBillingModes': allowedBillingModes!,
        if (defaultBillingMode != null)
          'defaultBillingMode': defaultBillingMode!,
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

  $SasPortalDeviceAirInterface.fromJson(core.Map _json)
      : this(
          radioTechnology: _json.containsKey('radioTechnology')
              ? _json['radioTechnology'] as core.String
              : null,
          supportedSpec: _json.containsKey('supportedSpec')
              ? _json['supportedSpec'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (radioTechnology != null) 'radioTechnology': radioTechnology!,
        if (supportedSpec != null) 'supportedSpec': supportedSpec!,
      };
}

/// Used by:
///
/// - prod_tt_sasportal:v1alpha1 : SasPortalDeviceMetadata
/// - sasportal:v1alpha1 : SasPortalDeviceMetadata
class $SasPortalDeviceMetadata {
  /// If populated, the Antenna Model Pattern to use.
  ///
  /// Format is: RecordCreatorId:PatternId
  core.String? antennaModel;

  /// CCG.
  ///
  /// A group of CBSDs in the same ICG requesting a common primary channel
  /// assignment. See CBRSA-TS-2001 V3.0.0 for more details.
  core.String? commonChannelGroup;

  /// ICG.
  ///
  /// A group of CBSDs that manage their own interference with the group. See
  /// CBRSA-TS-2001 V3.0.0 for more details.
  core.String? interferenceCoordinationGroup;

  $SasPortalDeviceMetadata({
    this.antennaModel,
    this.commonChannelGroup,
    this.interferenceCoordinationGroup,
  });

  $SasPortalDeviceMetadata.fromJson(core.Map _json)
      : this(
          antennaModel: _json.containsKey('antennaModel')
              ? _json['antennaModel'] as core.String
              : null,
          commonChannelGroup: _json.containsKey('commonChannelGroup')
              ? _json['commonChannelGroup'] as core.String
              : null,
          interferenceCoordinationGroup:
              _json.containsKey('interferenceCoordinationGroup')
                  ? _json['interferenceCoordinationGroup'] as core.String
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (antennaModel != null) 'antennaModel': antennaModel!,
        if (commonChannelGroup != null)
          'commonChannelGroup': commonChannelGroup!,
        if (interferenceCoordinationGroup != null)
          'interferenceCoordinationGroup': interferenceCoordinationGroup!,
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

  $SasPortalDeviceModel.fromJson(core.Map _json)
      : this(
          firmwareVersion: _json.containsKey('firmwareVersion')
              ? _json['firmwareVersion'] as core.String
              : null,
          hardwareVersion: _json.containsKey('hardwareVersion')
              ? _json['hardwareVersion'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          softwareVersion: _json.containsKey('softwareVersion')
              ? _json['softwareVersion'] as core.String
              : null,
          vendor: _json.containsKey('vendor')
              ? _json['vendor'] as core.String
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

  $SasPortalFrequencyRange.fromJson(core.Map _json)
      : this(
          highFrequencyMhz: _json.containsKey('highFrequencyMhz')
              ? (_json['highFrequencyMhz'] as core.num).toDouble()
              : null,
          lowFrequencyMhz: _json.containsKey('lowFrequencyMhz')
              ? (_json['lowFrequencyMhz'] as core.num).toDouble()
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

  $SasPortalGenerateSecretResponse.fromJson(core.Map _json)
      : this(
          secret: _json.containsKey('secret')
              ? _json['secret'] as core.String
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

  $SasPortalGetPolicyRequest.fromJson(core.Map _json)
      : this(
          resource: _json.containsKey('resource')
              ? _json['resource'] as core.String
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

  $SasPortalInstallationParams.fromJson(core.Map _json)
      : this(
          antennaAzimuth: _json.containsKey('antennaAzimuth')
              ? _json['antennaAzimuth'] as core.int
              : null,
          antennaBeamwidth: _json.containsKey('antennaBeamwidth')
              ? _json['antennaBeamwidth'] as core.int
              : null,
          antennaDowntilt: _json.containsKey('antennaDowntilt')
              ? _json['antennaDowntilt'] as core.int
              : null,
          antennaGain: _json.containsKey('antennaGain')
              ? _json['antennaGain'] as core.int
              : null,
          antennaModel: _json.containsKey('antennaModel')
              ? _json['antennaModel'] as core.String
              : null,
          cpeCbsdIndication: _json.containsKey('cpeCbsdIndication')
              ? _json['cpeCbsdIndication'] as core.bool
              : null,
          eirpCapability: _json.containsKey('eirpCapability')
              ? _json['eirpCapability'] as core.int
              : null,
          height: _json.containsKey('height')
              ? (_json['height'] as core.num).toDouble()
              : null,
          heightType: _json.containsKey('heightType')
              ? _json['heightType'] as core.String
              : null,
          horizontalAccuracy: _json.containsKey('horizontalAccuracy')
              ? (_json['horizontalAccuracy'] as core.num).toDouble()
              : null,
          indoorDeployment: _json.containsKey('indoorDeployment')
              ? _json['indoorDeployment'] as core.bool
              : null,
          latitude: _json.containsKey('latitude')
              ? (_json['latitude'] as core.num).toDouble()
              : null,
          longitude: _json.containsKey('longitude')
              ? (_json['longitude'] as core.num).toDouble()
              : null,
          verticalAccuracy: _json.containsKey('verticalAccuracy')
              ? (_json['verticalAccuracy'] as core.num).toDouble()
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

  $SasPortalMoveDeploymentRequest.fromJson(core.Map _json)
      : this(
          destination: _json.containsKey('destination')
              ? _json['destination'] as core.String
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

  $SasPortalMoveDeviceRequest.fromJson(core.Map _json)
      : this(
          destination: _json.containsKey('destination')
              ? _json['destination'] as core.String
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

  $SasPortalMoveNodeRequest.fromJson(core.Map _json)
      : this(
          destination: _json.containsKey('destination')
              ? _json['destination'] as core.String
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

  $SasPortalNode.fromJson(core.Map _json)
      : this(
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          sasUserIds: _json.containsKey('sasUserIds')
              ? (_json['sasUserIds'] as core.List)
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

  $SasPortalTestPermissionsRequest.fromJson(core.Map _json)
      : this(
          permissions: _json.containsKey('permissions')
              ? (_json['permissions'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          resource: _json.containsKey('resource')
              ? _json['resource'] as core.String
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

  $SasPortalTestPermissionsResponse.fromJson(core.Map _json)
      : this(
          permissions: _json.containsKey('permissions')
              ? (_json['permissions'] as core.List)
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

  set encodedDeviceAsBytes(core.List<core.int> _bytes) {
    encodedDevice =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
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

  $SasPortalUpdateSignedDeviceRequest.fromJson(core.Map _json)
      : this(
          encodedDevice: _json.containsKey('encodedDevice')
              ? _json['encodedDevice'] as core.String
              : null,
          installerId: _json.containsKey('installerId')
              ? _json['installerId'] as core.String
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

  $SasPortalValidateInstallerRequest.fromJson(core.Map _json)
      : this(
          encodedSecret: _json.containsKey('encodedSecret')
              ? _json['encodedSecret'] as core.String
              : null,
          installerId: _json.containsKey('installerId')
              ? _json['installerId'] as core.String
              : null,
          secret: _json.containsKey('secret')
              ? _json['secret'] as core.String
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
/// - documentai:v1beta3 : GoogleCloudDocumentaiV1beta1GcsDestination
/// - documentai:v1beta3 : GoogleCloudDocumentaiV1beta1GcsSource
/// - documentai:v1beta3 : GoogleCloudDocumentaiV1beta2GcsDestination
/// - documentai:v1beta3 : GoogleCloudDocumentaiV1beta2GcsSource
class $Shared00 {
  core.String? uri;

  $Shared00({
    this.uri,
  });

  $Shared00.fromJson(core.Map _json)
      : this(
          uri: _json.containsKey('uri') ? _json['uri'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (uri != null) 'uri': uri!,
      };
}

/// Used by:
///
/// - osconfig:v1alpha : OSPolicyResourcePackageResourceAPT
/// - osconfig:v1alpha : OSPolicyResourcePackageResourceGooGet
/// - osconfig:v1alpha : OSPolicyResourcePackageResourceYUM
/// - osconfig:v1alpha : OSPolicyResourcePackageResourceZypper
class $Shared01 {
  /// Package name.
  ///
  /// Required.
  core.String? name;

  $Shared01({
    this.name,
  });

  $Shared01.fromJson(core.Map _json)
      : this(
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
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

  $Shared02.fromJson(core.Map _json)
      : this(
          customValues: _json.containsKey('customValues')
              ? (_json['customValues'] as core.Map<core.String, core.dynamic>)
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

  $Shared03.fromJson(core.Map _json)
      : this(
          address: _json.containsKey('address')
              ? _json['address'] as core.String
              : null,
          config: _json.containsKey('config')
              ? _json['config'] as core.String
              : null,
          deployTime: _json.containsKey('deployTime')
              ? _json['deployTime'] as core.String
              : null,
          platform: _json.containsKey('platform')
              ? _json['platform'] as core.String
              : null,
          resourceUri: _json.containsKey('resourceUri')
              ? (_json['resourceUri'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          undeployTime: _json.containsKey('undeployTime')
              ? _json['undeployTime'] as core.String
              : null,
          userEmail: _json.containsKey('userEmail')
              ? _json['userEmail'] as core.String
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
/// - ondemandscanning:v1beta1 : AnalyzePackagesMetadata
/// - ondemandscanning:v1beta1 : AnalyzePackagesMetadataV1
class $Shared04 {
  /// When the scan was created.
  core.String? createTime;

  /// The resource URI of the container image being scanned.
  core.String? resourceUri;

  $Shared04({
    this.createTime,
    this.resourceUri,
  });

  $Shared04.fromJson(core.Map _json)
      : this(
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          resourceUri: _json.containsKey('resourceUri')
              ? _json['resourceUri'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (resourceUri != null) 'resourceUri': resourceUri!,
      };
}

/// Used by:
///
/// - ondemandscanning:v1beta1 : AnalyzePackagesResponse
/// - ondemandscanning:v1beta1 : AnalyzePackagesResponseV1
class $Shared05 {
  /// The name of the scan resource created by this successful scan.
  core.String? scan;

  $Shared05({
    this.scan,
  });

  $Shared05.fromJson(core.Map _json)
      : this(
          scan: _json.containsKey('scan') ? _json['scan'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (scan != null) 'scan': scan!,
      };
}

/// Used by:
///
/// - osconfig:v1alpha : OSPolicyAssignmentInstanceFilterInventory
/// - osconfig:v1alpha : OSPolicyInventoryFilter
class $Shared06 {
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

  $Shared06({
    this.osShortName,
    this.osVersion,
  });

  $Shared06.fromJson(core.Map _json)
      : this(
          osShortName: _json.containsKey('osShortName')
              ? _json['osShortName'] as core.String
              : null,
          osVersion: _json.containsKey('osVersion')
              ? _json['osVersion'] as core.String
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

  set signatureAsBytes(core.List<core.int> _bytes) {
    signature =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  $Signature({
    this.publicKeyId,
    this.signature,
  });

  $Signature.fromJson(core.Map _json)
      : this(
          publicKeyId: _json.containsKey('publicKeyId')
              ? _json['publicKeyId'] as core.String
              : null,
          signature: _json.containsKey('signature')
              ? _json['signature'] as core.String
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
/// - containeranalysis:v1beta1 : Status
/// - dataflow:v1b3 : Status
/// - datalabeling:v1beta1 : GoogleRpcStatus
/// - documentai:v1beta3 : GoogleRpcStatus
/// - domains:v1beta1 : Status
/// - firebase:v1beta1 : Status
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

  $Status.fromJson(core.Map _json)
      : this(
          code: _json.containsKey('code') ? _json['code'] as core.int : null,
          details: _json.containsKey('details')
              ? (_json['details'] as core.List)
                  .map((value) => value as core.Map<core.String, core.dynamic>)
                  .toList()
              : null,
          message: _json.containsKey('message')
              ? _json['message'] as core.String
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
/// - bigqueryconnection:v1beta1 : TestIamPermissionsRequest
/// - containeranalysis:v1beta1 : TestIamPermissionsRequest
/// - datacatalog:v1beta1 : TestIamPermissionsRequest
/// - domains:v1beta1 : TestIamPermissionsRequest
/// - networkconnectivity:v1alpha1 : TestIamPermissionsRequest
/// - networksecurity:v1beta1 : GoogleIamV1TestIamPermissionsRequest
/// - privateca:v1beta1 : TestIamPermissionsRequest
class $TestIamPermissionsRequest {
  /// The set of permissions to check for the `resource`.
  ///
  /// Permissions with wildcards (such as '*' or 'storage.*') are not allowed.
  /// For more information see
  /// [IAM Overview](https://cloud.google.com/iam/docs/overview#permissions).
  core.List<core.String>? permissions;

  $TestIamPermissionsRequest({
    this.permissions,
  });

  $TestIamPermissionsRequest.fromJson(core.Map _json)
      : this(
          permissions: _json.containsKey('permissions')
              ? (_json['permissions'] as core.List)
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

  $TestIamPermissionsResponse.fromJson(core.Map _json)
      : this(
          permissions: _json.containsKey('permissions')
              ? (_json['permissions'] as core.List)
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
/// - documentai:v1beta3 : GoogleCloudDocumentaiV1beta1Vertex
/// - documentai:v1beta3 : GoogleCloudDocumentaiV1beta2Vertex
/// - documentai:v1beta3 : GoogleCloudDocumentaiV1beta3Vertex
class $Vertex {
  /// X coordinate.
  core.int? x;

  /// Y coordinate (starts from the top of the image).
  core.int? y;

  $Vertex({
    this.x,
    this.y,
  });

  $Vertex.fromJson(core.Map _json)
      : this(
          x: _json.containsKey('x') ? _json['x'] as core.int : null,
          y: _json.containsKey('y') ? _json['y'] as core.int : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (x != null) 'x': x!,
        if (y != null) 'y': y!,
      };
}
