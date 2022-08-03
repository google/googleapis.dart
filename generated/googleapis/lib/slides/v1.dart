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

/// Google Slides API - v1
///
/// Reads and writes Google Slides presentations.
///
/// For more information, see <https://developers.google.com/slides/>
///
/// Create an instance of [SlidesApi] to access these resources:
///
/// - [PresentationsResource]
///   - [PresentationsPagesResource]
library slides.v1;

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

/// Reads and writes Google Slides presentations.
class SlidesApi {
  /// See, edit, create, and delete all of your Google Drive files
  static const driveScope = 'https://www.googleapis.com/auth/drive';

  /// See, edit, create, and delete only the specific Google Drive files you use
  /// with this app
  static const driveFileScope = 'https://www.googleapis.com/auth/drive.file';

  /// See and download all your Google Drive files
  static const driveReadonlyScope =
      'https://www.googleapis.com/auth/drive.readonly';

  /// See, edit, create, and delete all your Google Slides presentations
  static const presentationsScope =
      'https://www.googleapis.com/auth/presentations';

  /// See all your Google Slides presentations
  static const presentationsReadonlyScope =
      'https://www.googleapis.com/auth/presentations.readonly';

  /// See, edit, create, and delete all your Google Sheets spreadsheets
  static const spreadsheetsScope =
      'https://www.googleapis.com/auth/spreadsheets';

  /// See all your Google Sheets spreadsheets
  static const spreadsheetsReadonlyScope =
      'https://www.googleapis.com/auth/spreadsheets.readonly';

  final commons.ApiRequester _requester;

  PresentationsResource get presentations => PresentationsResource(_requester);

  SlidesApi(http.Client client,
      {core.String rootUrl = 'https://slides.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class PresentationsResource {
  final commons.ApiRequester _requester;

  PresentationsPagesResource get pages =>
      PresentationsPagesResource(_requester);

  PresentationsResource(commons.ApiRequester client) : _requester = client;

  /// Applies one or more updates to the presentation.
  ///
  /// Each request is validated before being applied. If any request is not
  /// valid, then the entire request will fail and nothing will be applied. Some
  /// requests have replies to give you some information about how they are
  /// applied. Other requests do not need to return information; these each
  /// return an empty reply. The order of replies matches that of the requests.
  /// For example, suppose you call batchUpdate with four updates, and only the
  /// third one returns information. The response would have two empty replies:
  /// the reply to the third request, and another empty reply, in that order.
  /// Because other users may be editing the presentation, the presentation
  /// might not exactly reflect your changes: your changes may be altered with
  /// respect to collaborator changes. If there are no collaborators, the
  /// presentation should reflect your changes. In any case, the updates in your
  /// request are guaranteed to be applied together atomically.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [presentationId] - The presentation to apply the updates to.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BatchUpdatePresentationResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BatchUpdatePresentationResponse> batchUpdate(
    BatchUpdatePresentationRequest request,
    core.String presentationId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/presentations/' +
        commons.escapeVariable('$presentationId') +
        ':batchUpdate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return BatchUpdatePresentationResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates a blank presentation using the title given in the request.
  ///
  /// If a `presentationId` is provided, it is used as the ID of the new
  /// presentation. Otherwise, a new ID is generated. Other fields in the
  /// request, including any provided content, are ignored. Returns the created
  /// presentation.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Presentation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Presentation> create(
    Presentation request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/presentations';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Presentation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the latest version of the specified presentation.
  ///
  /// Request parameters:
  ///
  /// [presentationId] - The ID of the presentation to retrieve.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Presentation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Presentation> get(
    core.String presentationId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/presentations/' + core.Uri.encodeFull('$presentationId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Presentation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class PresentationsPagesResource {
  final commons.ApiRequester _requester;

  PresentationsPagesResource(commons.ApiRequester client) : _requester = client;

  /// Gets the latest version of the specified page in the presentation.
  ///
  /// Request parameters:
  ///
  /// [presentationId] - The ID of the presentation to retrieve.
  ///
  /// [pageObjectId] - The object ID of the page to retrieve.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Page].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Page> get(
    core.String presentationId,
    core.String pageObjectId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/presentations/' +
        commons.escapeVariable('$presentationId') +
        '/pages/' +
        commons.escapeVariable('$pageObjectId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Page.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Generates a thumbnail of the latest version of the specified page in the
  /// presentation and returns a URL to the thumbnail image.
  ///
  /// This request counts as an \[expensive read request\](/slides/limits) for
  /// quota purposes.
  ///
  /// Request parameters:
  ///
  /// [presentationId] - The ID of the presentation to retrieve.
  ///
  /// [pageObjectId] - The object ID of the page whose thumbnail to retrieve.
  ///
  /// [thumbnailProperties_mimeType] - The optional mime type of the thumbnail
  /// image. If you don't specify the mime type, the mime type defaults to PNG.
  /// Possible string values are:
  /// - "PNG" : The default mime type.
  ///
  /// [thumbnailProperties_thumbnailSize] - The optional thumbnail image size.
  /// If you don't specify the size, the server chooses a default size of the
  /// image.
  /// Possible string values are:
  /// - "THUMBNAIL_SIZE_UNSPECIFIED" : The default thumbnail image size. The
  /// unspecified thumbnail size implies that the server chooses the size of the
  /// image in a way that might vary in the future.
  /// - "LARGE" : The thumbnail image width of 1600px.
  /// - "MEDIUM" : The thumbnail image width of 800px.
  /// - "SMALL" : The thumbnail image width of 200px.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Thumbnail].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Thumbnail> getThumbnail(
    core.String presentationId,
    core.String pageObjectId, {
    core.String? thumbnailProperties_mimeType,
    core.String? thumbnailProperties_thumbnailSize,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (thumbnailProperties_mimeType != null)
        'thumbnailProperties.mimeType': [thumbnailProperties_mimeType],
      if (thumbnailProperties_thumbnailSize != null)
        'thumbnailProperties.thumbnailSize': [
          thumbnailProperties_thumbnailSize
        ],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/presentations/' +
        commons.escapeVariable('$presentationId') +
        '/pages/' +
        commons.escapeVariable('$pageObjectId') +
        '/thumbnail';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Thumbnail.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

/// AffineTransform uses a 3x3 matrix with an implied last row of \[ 0 0 1 \] to
/// transform source coordinates (x,y) into destination coordinates (x', y')
/// according to: x' x = shear_y scale_y translate_y 1 \[ 1 \] After
/// transformation, x' = scale_x * x + shear_x * y + translate_x; y' = scale_y *
/// y + shear_y * x + translate_y; This message is therefore composed of these
/// six matrix elements.
class AffineTransform {
  /// The X coordinate scaling element.
  core.double? scaleX;

  /// The Y coordinate scaling element.
  core.double? scaleY;

  /// The X coordinate shearing element.
  core.double? shearX;

  /// The Y coordinate shearing element.
  core.double? shearY;

  /// The X coordinate translation element.
  core.double? translateX;

  /// The Y coordinate translation element.
  core.double? translateY;

  /// The units for translate elements.
  /// Possible string values are:
  /// - "UNIT_UNSPECIFIED" : The units are unknown.
  /// - "EMU" : An English Metric Unit (EMU) is defined as 1/360,000 of a
  /// centimeter and thus there are 914,400 EMUs per inch, and 12,700 EMUs per
  /// point.
  /// - "PT" : A point, 1/72 of an inch.
  core.String? unit;

  AffineTransform({
    this.scaleX,
    this.scaleY,
    this.shearX,
    this.shearY,
    this.translateX,
    this.translateY,
    this.unit,
  });

  AffineTransform.fromJson(core.Map json_)
      : this(
          scaleX: json_.containsKey('scaleX')
              ? (json_['scaleX'] as core.num).toDouble()
              : null,
          scaleY: json_.containsKey('scaleY')
              ? (json_['scaleY'] as core.num).toDouble()
              : null,
          shearX: json_.containsKey('shearX')
              ? (json_['shearX'] as core.num).toDouble()
              : null,
          shearY: json_.containsKey('shearY')
              ? (json_['shearY'] as core.num).toDouble()
              : null,
          translateX: json_.containsKey('translateX')
              ? (json_['translateX'] as core.num).toDouble()
              : null,
          translateY: json_.containsKey('translateY')
              ? (json_['translateY'] as core.num).toDouble()
              : null,
          unit: json_.containsKey('unit') ? json_['unit'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (scaleX != null) 'scaleX': scaleX!,
        if (scaleY != null) 'scaleY': scaleY!,
        if (shearX != null) 'shearX': shearX!,
        if (shearY != null) 'shearY': shearY!,
        if (translateX != null) 'translateX': translateX!,
        if (translateY != null) 'translateY': translateY!,
        if (unit != null) 'unit': unit!,
      };
}

/// A TextElement kind that represents auto text.
class AutoText {
  /// The rendered content of this auto text, if available.
  core.String? content;

  /// The styling applied to this auto text.
  TextStyle? style;

  /// The type of this auto text.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : An unspecified autotext type.
  /// - "SLIDE_NUMBER" : Type for autotext that represents the current slide
  /// number.
  core.String? type;

  AutoText({
    this.content,
    this.style,
    this.type,
  });

  AutoText.fromJson(core.Map json_)
      : this(
          content: json_.containsKey('content')
              ? json_['content'] as core.String
              : null,
          style: json_.containsKey('style')
              ? TextStyle.fromJson(
                  json_['style'] as core.Map<core.String, core.dynamic>)
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (content != null) 'content': content!,
        if (style != null) 'style': style!,
        if (type != null) 'type': type!,
      };
}

/// The autofit properties of a Shape.
class Autofit {
  /// The autofit type of the shape.
  ///
  /// If the autofit type is AUTOFIT_TYPE_UNSPECIFIED, the autofit type is
  /// inherited from a parent placeholder if it exists. The field is
  /// automatically set to NONE if a request is made that might affect text
  /// fitting within its bounding text box. In this case the font_scale is
  /// applied to the font_size and the line_spacing_reduction is applied to the
  /// line_spacing. Both properties are also reset to default values.
  /// Possible string values are:
  /// - "AUTOFIT_TYPE_UNSPECIFIED" : The autofit type is unspecified.
  /// - "NONE" : Do not autofit.
  /// - "TEXT_AUTOFIT" : Shrink text on overflow to fit the shape.
  /// - "SHAPE_AUTOFIT" : Resize the shape to fit the text.
  core.String? autofitType;

  /// The font scale applied to the shape.
  ///
  /// For shapes with autofit_type NONE or SHAPE_AUTOFIT, this value is the
  /// default value of 1. For TEXT_AUTOFIT, this value multiplied by the
  /// font_size gives the font size that is rendered in the editor. This
  /// property is read-only.
  core.double? fontScale;

  /// The line spacing reduction applied to the shape.
  ///
  /// For shapes with autofit_type NONE or SHAPE_AUTOFIT, this value is the
  /// default value of 0. For TEXT_AUTOFIT, this value subtracted from the
  /// line_spacing gives the line spacing that is rendered in the editor. This
  /// property is read-only.
  core.double? lineSpacingReduction;

  Autofit({
    this.autofitType,
    this.fontScale,
    this.lineSpacingReduction,
  });

  Autofit.fromJson(core.Map json_)
      : this(
          autofitType: json_.containsKey('autofitType')
              ? json_['autofitType'] as core.String
              : null,
          fontScale: json_.containsKey('fontScale')
              ? (json_['fontScale'] as core.num).toDouble()
              : null,
          lineSpacingReduction: json_.containsKey('lineSpacingReduction')
              ? (json_['lineSpacingReduction'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (autofitType != null) 'autofitType': autofitType!,
        if (fontScale != null) 'fontScale': fontScale!,
        if (lineSpacingReduction != null)
          'lineSpacingReduction': lineSpacingReduction!,
      };
}

/// Request message for PresentationsService.BatchUpdatePresentation.
class BatchUpdatePresentationRequest {
  /// A list of updates to apply to the presentation.
  core.List<Request>? requests;

  /// Provides control over how write requests are executed.
  WriteControl? writeControl;

  BatchUpdatePresentationRequest({
    this.requests,
    this.writeControl,
  });

  BatchUpdatePresentationRequest.fromJson(core.Map json_)
      : this(
          requests: json_.containsKey('requests')
              ? (json_['requests'] as core.List)
                  .map((value) => Request.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          writeControl: json_.containsKey('writeControl')
              ? WriteControl.fromJson(
                  json_['writeControl'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (requests != null) 'requests': requests!,
        if (writeControl != null) 'writeControl': writeControl!,
      };
}

/// Response message from a batch update.
class BatchUpdatePresentationResponse {
  /// The presentation the updates were applied to.
  core.String? presentationId;

  /// The reply of the updates.
  ///
  /// This maps 1:1 with the updates, although replies to some requests may be
  /// empty.
  core.List<Response>? replies;

  /// The updated write control after applying the request.
  WriteControl? writeControl;

  BatchUpdatePresentationResponse({
    this.presentationId,
    this.replies,
    this.writeControl,
  });

  BatchUpdatePresentationResponse.fromJson(core.Map json_)
      : this(
          presentationId: json_.containsKey('presentationId')
              ? json_['presentationId'] as core.String
              : null,
          replies: json_.containsKey('replies')
              ? (json_['replies'] as core.List)
                  .map((value) => Response.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          writeControl: json_.containsKey('writeControl')
              ? WriteControl.fromJson(
                  json_['writeControl'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (presentationId != null) 'presentationId': presentationId!,
        if (replies != null) 'replies': replies!,
        if (writeControl != null) 'writeControl': writeControl!,
      };
}

/// Describes the bullet of a paragraph.
class Bullet {
  /// The paragraph specific text style applied to this bullet.
  TextStyle? bulletStyle;

  /// The rendered bullet glyph for this paragraph.
  core.String? glyph;

  /// The ID of the list this paragraph belongs to.
  core.String? listId;

  /// The nesting level of this paragraph in the list.
  core.int? nestingLevel;

  Bullet({
    this.bulletStyle,
    this.glyph,
    this.listId,
    this.nestingLevel,
  });

  Bullet.fromJson(core.Map json_)
      : this(
          bulletStyle: json_.containsKey('bulletStyle')
              ? TextStyle.fromJson(
                  json_['bulletStyle'] as core.Map<core.String, core.dynamic>)
              : null,
          glyph:
              json_.containsKey('glyph') ? json_['glyph'] as core.String : null,
          listId: json_.containsKey('listId')
              ? json_['listId'] as core.String
              : null,
          nestingLevel: json_.containsKey('nestingLevel')
              ? json_['nestingLevel'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bulletStyle != null) 'bulletStyle': bulletStyle!,
        if (glyph != null) 'glyph': glyph!,
        if (listId != null) 'listId': listId!,
        if (nestingLevel != null) 'nestingLevel': nestingLevel!,
      };
}

/// The palette of predefined colors for a page.
class ColorScheme {
  /// The ThemeColorType and corresponding concrete color pairs.
  core.List<ThemeColorPair>? colors;

  ColorScheme({
    this.colors,
  });

  ColorScheme.fromJson(core.Map json_)
      : this(
          colors: json_.containsKey('colors')
              ? (json_['colors'] as core.List)
                  .map((value) => ThemeColorPair.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (colors != null) 'colors': colors!,
      };
}

/// A color and position in a gradient band.
class ColorStop {
  /// The alpha value of this color in the gradient band.
  ///
  /// Defaults to 1.0, fully opaque.
  core.double? alpha;

  /// The color of the gradient stop.
  OpaqueColor? color;

  /// The relative position of the color stop in the gradient band measured in
  /// percentage.
  ///
  /// The value should be in the interval \[0.0, 1.0\].
  core.double? position;

  ColorStop({
    this.alpha,
    this.color,
    this.position,
  });

  ColorStop.fromJson(core.Map json_)
      : this(
          alpha: json_.containsKey('alpha')
              ? (json_['alpha'] as core.num).toDouble()
              : null,
          color: json_.containsKey('color')
              ? OpaqueColor.fromJson(
                  json_['color'] as core.Map<core.String, core.dynamic>)
              : null,
          position: json_.containsKey('position')
              ? (json_['position'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (alpha != null) 'alpha': alpha!,
        if (color != null) 'color': color!,
        if (position != null) 'position': position!,
      };
}

/// Creates an image.
class CreateImageRequest {
  /// The element properties for the image.
  ///
  /// When the aspect ratio of the provided size does not match the image aspect
  /// ratio, the image is scaled and centered with respect to the size in order
  /// to maintain aspect ratio. The provided transform is applied after this
  /// operation. The PageElementProperties.size property is optional. If you
  /// don't specify the size, the default size of the image is used. The
  /// PageElementProperties.transform property is optional. If you don't specify
  /// a transform, the image will be placed at the top left corner of the page.
  PageElementProperties? elementProperties;

  /// A user-supplied object ID.
  ///
  /// If you specify an ID, it must be unique among all pages and page elements
  /// in the presentation. The ID must start with an alphanumeric character or
  /// an underscore (matches regex `[a-zA-Z0-9_]`); remaining characters may
  /// include those as well as a hyphen or colon (matches regex
  /// `[a-zA-Z0-9_-:]`). The length of the ID must not be less than 5 or greater
  /// than 50. If you don't specify an ID, a unique one is generated.
  core.String? objectId;

  /// The image URL.
  ///
  /// The image is fetched once at insertion time and a copy is stored for
  /// display inside the presentation. Images must be less than 50MB in size,
  /// cannot exceed 25 megapixels, and must be in one of PNG, JPEG, or GIF
  /// format. The provided URL can be at most 2 kB in length. The URL itself is
  /// saved with the image, and exposed via the Image.source_url field.
  core.String? url;

  CreateImageRequest({
    this.elementProperties,
    this.objectId,
    this.url,
  });

  CreateImageRequest.fromJson(core.Map json_)
      : this(
          elementProperties: json_.containsKey('elementProperties')
              ? PageElementProperties.fromJson(json_['elementProperties']
                  as core.Map<core.String, core.dynamic>)
              : null,
          objectId: json_.containsKey('objectId')
              ? json_['objectId'] as core.String
              : null,
          url: json_.containsKey('url') ? json_['url'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (elementProperties != null) 'elementProperties': elementProperties!,
        if (objectId != null) 'objectId': objectId!,
        if (url != null) 'url': url!,
      };
}

/// The result of creating an image.
class CreateImageResponse {
  /// The object ID of the created image.
  core.String? objectId;

  CreateImageResponse({
    this.objectId,
  });

  CreateImageResponse.fromJson(core.Map json_)
      : this(
          objectId: json_.containsKey('objectId')
              ? json_['objectId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (objectId != null) 'objectId': objectId!,
      };
}

/// Creates a line.
class CreateLineRequest {
  /// The category of the line to be created.
  ///
  /// The exact line type created is determined based on the category and how
  /// it's routed to connect to other page elements. If you specify both a
  /// `category` and a `line_category`, the `category` takes precedence. If you
  /// do not specify a value for `category`, but specify a value for
  /// `line_category`, then the specified `line_category` value is used. If you
  /// do not specify either, then STRAIGHT is used.
  /// Possible string values are:
  /// - "LINE_CATEGORY_UNSPECIFIED" : Unspecified line category.
  /// - "STRAIGHT" : Straight connectors, including straight connector 1.
  /// - "BENT" : Bent connectors, including bent connector 2 to 5.
  /// - "CURVED" : Curved connectors, including curved connector 2 to 5.
  core.String? category;

  /// The element properties for the line.
  PageElementProperties? elementProperties;

  /// The category of the line to be created.
  ///
  /// *Deprecated*: use `category` instead. The exact line type created is
  /// determined based on the category and how it's routed to connect to other
  /// page elements. If you specify both a `category` and a `line_category`, the
  /// `category` takes precedence.
  /// Possible string values are:
  /// - "STRAIGHT" : Straight connectors, including straight connector 1. The is
  /// the default category when one is not specified.
  /// - "BENT" : Bent connectors, including bent connector 2 to 5.
  /// - "CURVED" : Curved connectors, including curved connector 2 to 5.
  core.String? lineCategory;

  /// A user-supplied object ID.
  ///
  /// If you specify an ID, it must be unique among all pages and page elements
  /// in the presentation. The ID must start with an alphanumeric character or
  /// an underscore (matches regex `[a-zA-Z0-9_]`); remaining characters may
  /// include those as well as a hyphen or colon (matches regex
  /// `[a-zA-Z0-9_-:]`). The length of the ID must not be less than 5 or greater
  /// than 50. If you don't specify an ID, a unique one is generated.
  core.String? objectId;

  CreateLineRequest({
    this.category,
    this.elementProperties,
    this.lineCategory,
    this.objectId,
  });

  CreateLineRequest.fromJson(core.Map json_)
      : this(
          category: json_.containsKey('category')
              ? json_['category'] as core.String
              : null,
          elementProperties: json_.containsKey('elementProperties')
              ? PageElementProperties.fromJson(json_['elementProperties']
                  as core.Map<core.String, core.dynamic>)
              : null,
          lineCategory: json_.containsKey('lineCategory')
              ? json_['lineCategory'] as core.String
              : null,
          objectId: json_.containsKey('objectId')
              ? json_['objectId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (category != null) 'category': category!,
        if (elementProperties != null) 'elementProperties': elementProperties!,
        if (lineCategory != null) 'lineCategory': lineCategory!,
        if (objectId != null) 'objectId': objectId!,
      };
}

/// The result of creating a line.
class CreateLineResponse {
  /// The object ID of the created line.
  core.String? objectId;

  CreateLineResponse({
    this.objectId,
  });

  CreateLineResponse.fromJson(core.Map json_)
      : this(
          objectId: json_.containsKey('objectId')
              ? json_['objectId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (objectId != null) 'objectId': objectId!,
      };
}

/// Creates bullets for all of the paragraphs that overlap with the given text
/// index range.
///
/// The nesting level of each paragraph will be determined by counting leading
/// tabs in front of each paragraph. To avoid excess space between the bullet
/// and the corresponding paragraph, these leading tabs are removed by this
/// request. This may change the indices of parts of the text. If the paragraph
/// immediately before paragraphs being updated is in a list with a matching
/// preset, the paragraphs being updated are added to that preceding list.
class CreateParagraphBulletsRequest {
  /// The kinds of bullet glyphs to be used.
  ///
  /// Defaults to the `BULLET_DISC_CIRCLE_SQUARE` preset.
  /// Possible string values are:
  /// - "BULLET_DISC_CIRCLE_SQUARE" : A bulleted list with a `DISC`, `CIRCLE`
  /// and `SQUARE` bullet glyph for the first 3 list nesting levels.
  /// - "BULLET_DIAMONDX_ARROW3D_SQUARE" : A bulleted list with a `DIAMONDX`,
  /// `ARROW3D` and `SQUARE` bullet glyph for the first 3 list nesting levels.
  /// - "BULLET_CHECKBOX" : A bulleted list with `CHECKBOX` bullet glyphs for
  /// all list nesting levels.
  /// - "BULLET_ARROW_DIAMOND_DISC" : A bulleted list with a `ARROW`, `DIAMOND`
  /// and `DISC` bullet glyph for the first 3 list nesting levels.
  /// - "BULLET_STAR_CIRCLE_SQUARE" : A bulleted list with a `STAR`, `CIRCLE`
  /// and `SQUARE` bullet glyph for the first 3 list nesting levels.
  /// - "BULLET_ARROW3D_CIRCLE_SQUARE" : A bulleted list with a `ARROW3D`,
  /// `CIRCLE` and `SQUARE` bullet glyph for the first 3 list nesting levels.
  /// - "BULLET_LEFTTRIANGLE_DIAMOND_DISC" : A bulleted list with a
  /// `LEFTTRIANGLE`, `DIAMOND` and `DISC` bullet glyph for the first 3 list
  /// nesting levels.
  /// - "BULLET_DIAMONDX_HOLLOWDIAMOND_SQUARE" : A bulleted list with a
  /// `DIAMONDX`, `HOLLOWDIAMOND` and `SQUARE` bullet glyph for the first 3 list
  /// nesting levels.
  /// - "BULLET_DIAMOND_CIRCLE_SQUARE" : A bulleted list with a `DIAMOND`,
  /// `CIRCLE` and `SQUARE` bullet glyph for the first 3 list nesting levels.
  /// - "NUMBERED_DIGIT_ALPHA_ROMAN" : A numbered list with `DIGIT`, `ALPHA` and
  /// `ROMAN` numeric glyphs for the first 3 list nesting levels, followed by
  /// periods.
  /// - "NUMBERED_DIGIT_ALPHA_ROMAN_PARENS" : A numbered list with `DIGIT`,
  /// `ALPHA` and `ROMAN` numeric glyphs for the first 3 list nesting levels,
  /// followed by parenthesis.
  /// - "NUMBERED_DIGIT_NESTED" : A numbered list with `DIGIT` numeric glyphs
  /// separated by periods, where each nesting level uses the previous nesting
  /// level's glyph as a prefix. For example: '1.', '1.1.', '2.', '2.2.'.
  /// - "NUMBERED_UPPERALPHA_ALPHA_ROMAN" : A numbered list with `UPPERALPHA`,
  /// `ALPHA` and `ROMAN` numeric glyphs for the first 3 list nesting levels,
  /// followed by periods.
  /// - "NUMBERED_UPPERROMAN_UPPERALPHA_DIGIT" : A numbered list with
  /// `UPPERROMAN`, `UPPERALPHA` and `DIGIT` numeric glyphs for the first 3 list
  /// nesting levels, followed by periods.
  /// - "NUMBERED_ZERODIGIT_ALPHA_ROMAN" : A numbered list with `ZERODIGIT`,
  /// `ALPHA` and `ROMAN` numeric glyphs for the first 3 list nesting levels,
  /// followed by periods.
  core.String? bulletPreset;

  /// The optional table cell location if the text to be modified is in a table
  /// cell.
  ///
  /// If present, the object_id must refer to a table.
  TableCellLocation? cellLocation;

  /// The object ID of the shape or table containing the text to add bullets to.
  core.String? objectId;

  /// The range of text to apply the bullet presets to, based on TextElement
  /// indexes.
  Range? textRange;

  CreateParagraphBulletsRequest({
    this.bulletPreset,
    this.cellLocation,
    this.objectId,
    this.textRange,
  });

  CreateParagraphBulletsRequest.fromJson(core.Map json_)
      : this(
          bulletPreset: json_.containsKey('bulletPreset')
              ? json_['bulletPreset'] as core.String
              : null,
          cellLocation: json_.containsKey('cellLocation')
              ? TableCellLocation.fromJson(
                  json_['cellLocation'] as core.Map<core.String, core.dynamic>)
              : null,
          objectId: json_.containsKey('objectId')
              ? json_['objectId'] as core.String
              : null,
          textRange: json_.containsKey('textRange')
              ? Range.fromJson(
                  json_['textRange'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bulletPreset != null) 'bulletPreset': bulletPreset!,
        if (cellLocation != null) 'cellLocation': cellLocation!,
        if (objectId != null) 'objectId': objectId!,
        if (textRange != null) 'textRange': textRange!,
      };
}

/// Creates a new shape.
class CreateShapeRequest {
  /// The element properties for the shape.
  PageElementProperties? elementProperties;

  /// A user-supplied object ID.
  ///
  /// If you specify an ID, it must be unique among all pages and page elements
  /// in the presentation. The ID must start with an alphanumeric character or
  /// an underscore (matches regex `[a-zA-Z0-9_]`); remaining characters may
  /// include those as well as a hyphen or colon (matches regex
  /// `[a-zA-Z0-9_-:]`). The length of the ID must not be less than 5 or greater
  /// than 50. If empty, a unique identifier will be generated.
  core.String? objectId;

  /// The shape type.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : The shape type that is not predefined.
  /// - "TEXT_BOX" : Text box shape.
  /// - "RECTANGLE" : Rectangle shape. Corresponds to ECMA-376 ST_ShapeType
  /// 'rect'.
  /// - "ROUND_RECTANGLE" : Round corner rectangle shape. Corresponds to
  /// ECMA-376 ST_ShapeType 'roundRect'
  /// - "ELLIPSE" : Ellipse shape. Corresponds to ECMA-376 ST_ShapeType
  /// 'ellipse'
  /// - "ARC" : Curved arc shape. Corresponds to ECMA-376 ST_ShapeType 'arc'
  /// - "BENT_ARROW" : Bent arrow shape. Corresponds to ECMA-376 ST_ShapeType
  /// 'bentArrow'
  /// - "BENT_UP_ARROW" : Bent up arrow shape. Corresponds to ECMA-376
  /// ST_ShapeType 'bentUpArrow'
  /// - "BEVEL" : Bevel shape. Corresponds to ECMA-376 ST_ShapeType 'bevel'
  /// - "BLOCK_ARC" : Block arc shape. Corresponds to ECMA-376 ST_ShapeType
  /// 'blockArc'
  /// - "BRACE_PAIR" : Brace pair shape. Corresponds to ECMA-376 ST_ShapeType
  /// 'bracePair'
  /// - "BRACKET_PAIR" : Bracket pair shape. Corresponds to ECMA-376
  /// ST_ShapeType 'bracketPair'
  /// - "CAN" : Can shape. Corresponds to ECMA-376 ST_ShapeType 'can'
  /// - "CHEVRON" : Chevron shape. Corresponds to ECMA-376 ST_ShapeType
  /// 'chevron'
  /// - "CHORD" : Chord shape. Corresponds to ECMA-376 ST_ShapeType 'chord'
  /// - "CLOUD" : Cloud shape. Corresponds to ECMA-376 ST_ShapeType 'cloud'
  /// - "CORNER" : Corner shape. Corresponds to ECMA-376 ST_ShapeType 'corner'
  /// - "CUBE" : Cube shape. Corresponds to ECMA-376 ST_ShapeType 'cube'
  /// - "CURVED_DOWN_ARROW" : Curved down arrow shape. Corresponds to ECMA-376
  /// ST_ShapeType 'curvedDownArrow'
  /// - "CURVED_LEFT_ARROW" : Curved left arrow shape. Corresponds to ECMA-376
  /// ST_ShapeType 'curvedLeftArrow'
  /// - "CURVED_RIGHT_ARROW" : Curved right arrow shape. Corresponds to ECMA-376
  /// ST_ShapeType 'curvedRightArrow'
  /// - "CURVED_UP_ARROW" : Curved up arrow shape. Corresponds to ECMA-376
  /// ST_ShapeType 'curvedUpArrow'
  /// - "DECAGON" : Decagon shape. Corresponds to ECMA-376 ST_ShapeType
  /// 'decagon'
  /// - "DIAGONAL_STRIPE" : Diagonal stripe shape. Corresponds to ECMA-376
  /// ST_ShapeType 'diagStripe'
  /// - "DIAMOND" : Diamond shape. Corresponds to ECMA-376 ST_ShapeType
  /// 'diamond'
  /// - "DODECAGON" : Dodecagon shape. Corresponds to ECMA-376 ST_ShapeType
  /// 'dodecagon'
  /// - "DONUT" : Donut shape. Corresponds to ECMA-376 ST_ShapeType 'donut'
  /// - "DOUBLE_WAVE" : Double wave shape. Corresponds to ECMA-376 ST_ShapeType
  /// 'doubleWave'
  /// - "DOWN_ARROW" : Down arrow shape. Corresponds to ECMA-376 ST_ShapeType
  /// 'downArrow'
  /// - "DOWN_ARROW_CALLOUT" : Callout down arrow shape. Corresponds to ECMA-376
  /// ST_ShapeType 'downArrowCallout'
  /// - "FOLDED_CORNER" : Folded corner shape. Corresponds to ECMA-376
  /// ST_ShapeType 'foldedCorner'
  /// - "FRAME" : Frame shape. Corresponds to ECMA-376 ST_ShapeType 'frame'
  /// - "HALF_FRAME" : Half frame shape. Corresponds to ECMA-376 ST_ShapeType
  /// 'halfFrame'
  /// - "HEART" : Heart shape. Corresponds to ECMA-376 ST_ShapeType 'heart'
  /// - "HEPTAGON" : Heptagon shape. Corresponds to ECMA-376 ST_ShapeType
  /// 'heptagon'
  /// - "HEXAGON" : Hexagon shape. Corresponds to ECMA-376 ST_ShapeType
  /// 'hexagon'
  /// - "HOME_PLATE" : Home plate shape. Corresponds to ECMA-376 ST_ShapeType
  /// 'homePlate'
  /// - "HORIZONTAL_SCROLL" : Horizontal scroll shape. Corresponds to ECMA-376
  /// ST_ShapeType 'horizontalScroll'
  /// - "IRREGULAR_SEAL_1" : Irregular seal 1 shape. Corresponds to ECMA-376
  /// ST_ShapeType 'irregularSeal1'
  /// - "IRREGULAR_SEAL_2" : Irregular seal 2 shape. Corresponds to ECMA-376
  /// ST_ShapeType 'irregularSeal2'
  /// - "LEFT_ARROW" : Left arrow shape. Corresponds to ECMA-376 ST_ShapeType
  /// 'leftArrow'
  /// - "LEFT_ARROW_CALLOUT" : Callout left arrow shape. Corresponds to ECMA-376
  /// ST_ShapeType 'leftArrowCallout'
  /// - "LEFT_BRACE" : Left brace shape. Corresponds to ECMA-376 ST_ShapeType
  /// 'leftBrace'
  /// - "LEFT_BRACKET" : Left bracket shape. Corresponds to ECMA-376
  /// ST_ShapeType 'leftBracket'
  /// - "LEFT_RIGHT_ARROW" : Left right arrow shape. Corresponds to ECMA-376
  /// ST_ShapeType 'leftRightArrow'
  /// - "LEFT_RIGHT_ARROW_CALLOUT" : Callout left right arrow shape. Corresponds
  /// to ECMA-376 ST_ShapeType 'leftRightArrowCallout'
  /// - "LEFT_RIGHT_UP_ARROW" : Left right up arrow shape. Corresponds to
  /// ECMA-376 ST_ShapeType 'leftRightUpArrow'
  /// - "LEFT_UP_ARROW" : Left up arrow shape. Corresponds to ECMA-376
  /// ST_ShapeType 'leftUpArrow'
  /// - "LIGHTNING_BOLT" : Lightning bolt shape. Corresponds to ECMA-376
  /// ST_ShapeType 'lightningBolt'
  /// - "MATH_DIVIDE" : Divide math shape. Corresponds to ECMA-376 ST_ShapeType
  /// 'mathDivide'
  /// - "MATH_EQUAL" : Equal math shape. Corresponds to ECMA-376 ST_ShapeType
  /// 'mathEqual'
  /// - "MATH_MINUS" : Minus math shape. Corresponds to ECMA-376 ST_ShapeType
  /// 'mathMinus'
  /// - "MATH_MULTIPLY" : Multiply math shape. Corresponds to ECMA-376
  /// ST_ShapeType 'mathMultiply'
  /// - "MATH_NOT_EQUAL" : Not equal math shape. Corresponds to ECMA-376
  /// ST_ShapeType 'mathNotEqual'
  /// - "MATH_PLUS" : Plus math shape. Corresponds to ECMA-376 ST_ShapeType
  /// 'mathPlus'
  /// - "MOON" : Moon shape. Corresponds to ECMA-376 ST_ShapeType 'moon'
  /// - "NO_SMOKING" : No smoking shape. Corresponds to ECMA-376 ST_ShapeType
  /// 'noSmoking'
  /// - "NOTCHED_RIGHT_ARROW" : Notched right arrow shape. Corresponds to
  /// ECMA-376 ST_ShapeType 'notchedRightArrow'
  /// - "OCTAGON" : Octagon shape. Corresponds to ECMA-376 ST_ShapeType
  /// 'octagon'
  /// - "PARALLELOGRAM" : Parallelogram shape. Corresponds to ECMA-376
  /// ST_ShapeType 'parallelogram'
  /// - "PENTAGON" : Pentagon shape. Corresponds to ECMA-376 ST_ShapeType
  /// 'pentagon'
  /// - "PIE" : Pie shape. Corresponds to ECMA-376 ST_ShapeType 'pie'
  /// - "PLAQUE" : Plaque shape. Corresponds to ECMA-376 ST_ShapeType 'plaque'
  /// - "PLUS" : Plus shape. Corresponds to ECMA-376 ST_ShapeType 'plus'
  /// - "QUAD_ARROW" : Quad-arrow shape. Corresponds to ECMA-376 ST_ShapeType
  /// 'quadArrow'
  /// - "QUAD_ARROW_CALLOUT" : Callout quad-arrow shape. Corresponds to ECMA-376
  /// ST_ShapeType 'quadArrowCallout'
  /// - "RIBBON" : Ribbon shape. Corresponds to ECMA-376 ST_ShapeType 'ribbon'
  /// - "RIBBON_2" : Ribbon 2 shape. Corresponds to ECMA-376 ST_ShapeType
  /// 'ribbon2'
  /// - "RIGHT_ARROW" : Right arrow shape. Corresponds to ECMA-376 ST_ShapeType
  /// 'rightArrow'
  /// - "RIGHT_ARROW_CALLOUT" : Callout right arrow shape. Corresponds to
  /// ECMA-376 ST_ShapeType 'rightArrowCallout'
  /// - "RIGHT_BRACE" : Right brace shape. Corresponds to ECMA-376 ST_ShapeType
  /// 'rightBrace'
  /// - "RIGHT_BRACKET" : Right bracket shape. Corresponds to ECMA-376
  /// ST_ShapeType 'rightBracket'
  /// - "ROUND_1_RECTANGLE" : One round corner rectangle shape. Corresponds to
  /// ECMA-376 ST_ShapeType 'round1Rect'
  /// - "ROUND_2_DIAGONAL_RECTANGLE" : Two diagonal round corner rectangle
  /// shape. Corresponds to ECMA-376 ST_ShapeType 'round2DiagRect'
  /// - "ROUND_2_SAME_RECTANGLE" : Two same-side round corner rectangle shape.
  /// Corresponds to ECMA-376 ST_ShapeType 'round2SameRect'
  /// - "RIGHT_TRIANGLE" : Right triangle shape. Corresponds to ECMA-376
  /// ST_ShapeType 'rtTriangle'
  /// - "SMILEY_FACE" : Smiley face shape. Corresponds to ECMA-376 ST_ShapeType
  /// 'smileyFace'
  /// - "SNIP_1_RECTANGLE" : One snip corner rectangle shape. Corresponds to
  /// ECMA-376 ST_ShapeType 'snip1Rect'
  /// - "SNIP_2_DIAGONAL_RECTANGLE" : Two diagonal snip corner rectangle shape.
  /// Corresponds to ECMA-376 ST_ShapeType 'snip2DiagRect'
  /// - "SNIP_2_SAME_RECTANGLE" : Two same-side snip corner rectangle shape.
  /// Corresponds to ECMA-376 ST_ShapeType 'snip2SameRect'
  /// - "SNIP_ROUND_RECTANGLE" : One snip one round corner rectangle shape.
  /// Corresponds to ECMA-376 ST_ShapeType 'snipRoundRect'
  /// - "STAR_10" : Ten pointed star shape. Corresponds to ECMA-376 ST_ShapeType
  /// 'star10'
  /// - "STAR_12" : Twelve pointed star shape. Corresponds to ECMA-376
  /// ST_ShapeType 'star12'
  /// - "STAR_16" : Sixteen pointed star shape. Corresponds to ECMA-376
  /// ST_ShapeType 'star16'
  /// - "STAR_24" : Twenty four pointed star shape. Corresponds to ECMA-376
  /// ST_ShapeType 'star24'
  /// - "STAR_32" : Thirty two pointed star shape. Corresponds to ECMA-376
  /// ST_ShapeType 'star32'
  /// - "STAR_4" : Four pointed star shape. Corresponds to ECMA-376 ST_ShapeType
  /// 'star4'
  /// - "STAR_5" : Five pointed star shape. Corresponds to ECMA-376 ST_ShapeType
  /// 'star5'
  /// - "STAR_6" : Six pointed star shape. Corresponds to ECMA-376 ST_ShapeType
  /// 'star6'
  /// - "STAR_7" : Seven pointed star shape. Corresponds to ECMA-376
  /// ST_ShapeType 'star7'
  /// - "STAR_8" : Eight pointed star shape. Corresponds to ECMA-376
  /// ST_ShapeType 'star8'
  /// - "STRIPED_RIGHT_ARROW" : Striped right arrow shape. Corresponds to
  /// ECMA-376 ST_ShapeType 'stripedRightArrow'
  /// - "SUN" : Sun shape. Corresponds to ECMA-376 ST_ShapeType 'sun'
  /// - "TRAPEZOID" : Trapezoid shape. Corresponds to ECMA-376 ST_ShapeType
  /// 'trapezoid'
  /// - "TRIANGLE" : Triangle shape. Corresponds to ECMA-376 ST_ShapeType
  /// 'triangle'
  /// - "UP_ARROW" : Up arrow shape. Corresponds to ECMA-376 ST_ShapeType
  /// 'upArrow'
  /// - "UP_ARROW_CALLOUT" : Callout up arrow shape. Corresponds to ECMA-376
  /// ST_ShapeType 'upArrowCallout'
  /// - "UP_DOWN_ARROW" : Up down arrow shape. Corresponds to ECMA-376
  /// ST_ShapeType 'upDownArrow'
  /// - "UTURN_ARROW" : U-turn arrow shape. Corresponds to ECMA-376 ST_ShapeType
  /// 'uturnArrow'
  /// - "VERTICAL_SCROLL" : Vertical scroll shape. Corresponds to ECMA-376
  /// ST_ShapeType 'verticalScroll'
  /// - "WAVE" : Wave shape. Corresponds to ECMA-376 ST_ShapeType 'wave'
  /// - "WEDGE_ELLIPSE_CALLOUT" : Callout wedge ellipse shape. Corresponds to
  /// ECMA-376 ST_ShapeType 'wedgeEllipseCallout'
  /// - "WEDGE_RECTANGLE_CALLOUT" : Callout wedge rectangle shape. Corresponds
  /// to ECMA-376 ST_ShapeType 'wedgeRectCallout'
  /// - "WEDGE_ROUND_RECTANGLE_CALLOUT" : Callout wedge round rectangle shape.
  /// Corresponds to ECMA-376 ST_ShapeType 'wedgeRoundRectCallout'
  /// - "FLOW_CHART_ALTERNATE_PROCESS" : Alternate process flow shape.
  /// Corresponds to ECMA-376 ST_ShapeType 'flowChartAlternateProcess'
  /// - "FLOW_CHART_COLLATE" : Collate flow shape. Corresponds to ECMA-376
  /// ST_ShapeType 'flowChartCollate'
  /// - "FLOW_CHART_CONNECTOR" : Connector flow shape. Corresponds to ECMA-376
  /// ST_ShapeType 'flowChartConnector'
  /// - "FLOW_CHART_DECISION" : Decision flow shape. Corresponds to ECMA-376
  /// ST_ShapeType 'flowChartDecision'
  /// - "FLOW_CHART_DELAY" : Delay flow shape. Corresponds to ECMA-376
  /// ST_ShapeType 'flowChartDelay'
  /// - "FLOW_CHART_DISPLAY" : Display flow shape. Corresponds to ECMA-376
  /// ST_ShapeType 'flowChartDisplay'
  /// - "FLOW_CHART_DOCUMENT" : Document flow shape. Corresponds to ECMA-376
  /// ST_ShapeType 'flowChartDocument'
  /// - "FLOW_CHART_EXTRACT" : Extract flow shape. Corresponds to ECMA-376
  /// ST_ShapeType 'flowChartExtract'
  /// - "FLOW_CHART_INPUT_OUTPUT" : Input output flow shape. Corresponds to
  /// ECMA-376 ST_ShapeType 'flowChartInputOutput'
  /// - "FLOW_CHART_INTERNAL_STORAGE" : Internal storage flow shape. Corresponds
  /// to ECMA-376 ST_ShapeType 'flowChartInternalStorage'
  /// - "FLOW_CHART_MAGNETIC_DISK" : Magnetic disk flow shape. Corresponds to
  /// ECMA-376 ST_ShapeType 'flowChartMagneticDisk'
  /// - "FLOW_CHART_MAGNETIC_DRUM" : Magnetic drum flow shape. Corresponds to
  /// ECMA-376 ST_ShapeType 'flowChartMagneticDrum'
  /// - "FLOW_CHART_MAGNETIC_TAPE" : Magnetic tape flow shape. Corresponds to
  /// ECMA-376 ST_ShapeType 'flowChartMagneticTape'
  /// - "FLOW_CHART_MANUAL_INPUT" : Manual input flow shape. Corresponds to
  /// ECMA-376 ST_ShapeType 'flowChartManualInput'
  /// - "FLOW_CHART_MANUAL_OPERATION" : Manual operation flow shape. Corresponds
  /// to ECMA-376 ST_ShapeType 'flowChartManualOperation'
  /// - "FLOW_CHART_MERGE" : Merge flow shape. Corresponds to ECMA-376
  /// ST_ShapeType 'flowChartMerge'
  /// - "FLOW_CHART_MULTIDOCUMENT" : Multi-document flow shape. Corresponds to
  /// ECMA-376 ST_ShapeType 'flowChartMultidocument'
  /// - "FLOW_CHART_OFFLINE_STORAGE" : Offline storage flow shape. Corresponds
  /// to ECMA-376 ST_ShapeType 'flowChartOfflineStorage'
  /// - "FLOW_CHART_OFFPAGE_CONNECTOR" : Off-page connector flow shape.
  /// Corresponds to ECMA-376 ST_ShapeType 'flowChartOffpageConnector'
  /// - "FLOW_CHART_ONLINE_STORAGE" : Online storage flow shape. Corresponds to
  /// ECMA-376 ST_ShapeType 'flowChartOnlineStorage'
  /// - "FLOW_CHART_OR" : Or flow shape. Corresponds to ECMA-376 ST_ShapeType
  /// 'flowChartOr'
  /// - "FLOW_CHART_PREDEFINED_PROCESS" : Predefined process flow shape.
  /// Corresponds to ECMA-376 ST_ShapeType 'flowChartPredefinedProcess'
  /// - "FLOW_CHART_PREPARATION" : Preparation flow shape. Corresponds to
  /// ECMA-376 ST_ShapeType 'flowChartPreparation'
  /// - "FLOW_CHART_PROCESS" : Process flow shape. Corresponds to ECMA-376
  /// ST_ShapeType 'flowChartProcess'
  /// - "FLOW_CHART_PUNCHED_CARD" : Punched card flow shape. Corresponds to
  /// ECMA-376 ST_ShapeType 'flowChartPunchedCard'
  /// - "FLOW_CHART_PUNCHED_TAPE" : Punched tape flow shape. Corresponds to
  /// ECMA-376 ST_ShapeType 'flowChartPunchedTape'
  /// - "FLOW_CHART_SORT" : Sort flow shape. Corresponds to ECMA-376
  /// ST_ShapeType 'flowChartSort'
  /// - "FLOW_CHART_SUMMING_JUNCTION" : Summing junction flow shape. Corresponds
  /// to ECMA-376 ST_ShapeType 'flowChartSummingJunction'
  /// - "FLOW_CHART_TERMINATOR" : Terminator flow shape. Corresponds to ECMA-376
  /// ST_ShapeType 'flowChartTerminator'
  /// - "ARROW_EAST" : East arrow shape.
  /// - "ARROW_NORTH_EAST" : Northeast arrow shape.
  /// - "ARROW_NORTH" : North arrow shape.
  /// - "SPEECH" : Speech shape.
  /// - "STARBURST" : Star burst shape.
  /// - "TEARDROP" : Teardrop shape. Corresponds to ECMA-376 ST_ShapeType
  /// 'teardrop'
  /// - "ELLIPSE_RIBBON" : Ellipse ribbon shape. Corresponds to ECMA-376
  /// ST_ShapeType 'ellipseRibbon'
  /// - "ELLIPSE_RIBBON_2" : Ellipse ribbon 2 shape. Corresponds to ECMA-376
  /// ST_ShapeType 'ellipseRibbon2'
  /// - "CLOUD_CALLOUT" : Callout cloud shape. Corresponds to ECMA-376
  /// ST_ShapeType 'cloudCallout'
  /// - "CUSTOM" : Custom shape.
  core.String? shapeType;

  CreateShapeRequest({
    this.elementProperties,
    this.objectId,
    this.shapeType,
  });

  CreateShapeRequest.fromJson(core.Map json_)
      : this(
          elementProperties: json_.containsKey('elementProperties')
              ? PageElementProperties.fromJson(json_['elementProperties']
                  as core.Map<core.String, core.dynamic>)
              : null,
          objectId: json_.containsKey('objectId')
              ? json_['objectId'] as core.String
              : null,
          shapeType: json_.containsKey('shapeType')
              ? json_['shapeType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (elementProperties != null) 'elementProperties': elementProperties!,
        if (objectId != null) 'objectId': objectId!,
        if (shapeType != null) 'shapeType': shapeType!,
      };
}

/// The result of creating a shape.
class CreateShapeResponse {
  /// The object ID of the created shape.
  core.String? objectId;

  CreateShapeResponse({
    this.objectId,
  });

  CreateShapeResponse.fromJson(core.Map json_)
      : this(
          objectId: json_.containsKey('objectId')
              ? json_['objectId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (objectId != null) 'objectId': objectId!,
      };
}

/// Creates an embedded Google Sheets chart.
///
/// NOTE: Chart creation requires at least one of the spreadsheets.readonly,
/// spreadsheets, drive.readonly, drive.file, or drive OAuth scopes.
class CreateSheetsChartRequest {
  /// The ID of the specific chart in the Google Sheets spreadsheet.
  core.int? chartId;

  /// The element properties for the chart.
  ///
  /// When the aspect ratio of the provided size does not match the chart aspect
  /// ratio, the chart is scaled and centered with respect to the size in order
  /// to maintain aspect ratio. The provided transform is applied after this
  /// operation.
  PageElementProperties? elementProperties;

  /// The mode with which the chart is linked to the source spreadsheet.
  ///
  /// When not specified, the chart will be an image that is not linked.
  /// Possible string values are:
  /// - "NOT_LINKED_IMAGE" : The chart is not associated with the source
  /// spreadsheet and cannot be updated. A chart that is not linked will be
  /// inserted as an image.
  /// - "LINKED" : Linking the chart allows it to be updated, and other
  /// collaborators will see a link to the spreadsheet.
  core.String? linkingMode;

  /// A user-supplied object ID.
  ///
  /// If specified, the ID must be unique among all pages and page elements in
  /// the presentation. The ID should start with a word character \[a-zA-Z0-9_\]
  /// and then followed by any number of the following characters
  /// \[a-zA-Z0-9_-:\]. The length of the ID should not be less than 5 or
  /// greater than 50. If empty, a unique identifier will be generated.
  core.String? objectId;

  /// The ID of the Google Sheets spreadsheet that contains the chart.
  ///
  /// You might need to add a resource key to the HTTP header for a subset of
  /// old files. For more information, see \[Access link-shared files using
  /// resource keys\](https://developers.google.com/drive/api/v3/resource-keys).
  core.String? spreadsheetId;

  CreateSheetsChartRequest({
    this.chartId,
    this.elementProperties,
    this.linkingMode,
    this.objectId,
    this.spreadsheetId,
  });

  CreateSheetsChartRequest.fromJson(core.Map json_)
      : this(
          chartId: json_.containsKey('chartId')
              ? json_['chartId'] as core.int
              : null,
          elementProperties: json_.containsKey('elementProperties')
              ? PageElementProperties.fromJson(json_['elementProperties']
                  as core.Map<core.String, core.dynamic>)
              : null,
          linkingMode: json_.containsKey('linkingMode')
              ? json_['linkingMode'] as core.String
              : null,
          objectId: json_.containsKey('objectId')
              ? json_['objectId'] as core.String
              : null,
          spreadsheetId: json_.containsKey('spreadsheetId')
              ? json_['spreadsheetId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (chartId != null) 'chartId': chartId!,
        if (elementProperties != null) 'elementProperties': elementProperties!,
        if (linkingMode != null) 'linkingMode': linkingMode!,
        if (objectId != null) 'objectId': objectId!,
        if (spreadsheetId != null) 'spreadsheetId': spreadsheetId!,
      };
}

/// The result of creating an embedded Google Sheets chart.
class CreateSheetsChartResponse {
  /// The object ID of the created chart.
  core.String? objectId;

  CreateSheetsChartResponse({
    this.objectId,
  });

  CreateSheetsChartResponse.fromJson(core.Map json_)
      : this(
          objectId: json_.containsKey('objectId')
              ? json_['objectId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (objectId != null) 'objectId': objectId!,
      };
}

/// Creates a slide.
class CreateSlideRequest {
  /// The optional zero-based index indicating where to insert the slides.
  ///
  /// If you don't specify an index, the slide is created at the end.
  core.int? insertionIndex;

  /// A user-supplied object ID.
  ///
  /// If you specify an ID, it must be unique among all pages and page elements
  /// in the presentation. The ID must start with an alphanumeric character or
  /// an underscore (matches regex `[a-zA-Z0-9_]`); remaining characters may
  /// include those as well as a hyphen or colon (matches regex
  /// `[a-zA-Z0-9_-:]`). The ID length must be between 5 and 50 characters,
  /// inclusive. If you don't specify an ID, a unique one is generated.
  core.String? objectId;

  /// An optional list of object ID mappings from the placeholder(s) on the
  /// layout to the placeholders that are created on the slide from the
  /// specified layout.
  ///
  /// Can only be used when `slide_layout_reference` is specified.
  core.List<LayoutPlaceholderIdMapping>? placeholderIdMappings;

  /// Layout reference of the slide to be inserted, based on the *current
  /// master*, which is one of the following: - The master of the previous slide
  /// index.
  ///
  /// - The master of the first slide, if the insertion_index is zero. - The
  /// first master in the presentation, if there are no slides. If the
  /// LayoutReference is not found in the current master, a 400 bad request
  /// error is returned. If you don't specify a layout reference, the slide uses
  /// the predefined `BLANK` layout.
  LayoutReference? slideLayoutReference;

  CreateSlideRequest({
    this.insertionIndex,
    this.objectId,
    this.placeholderIdMappings,
    this.slideLayoutReference,
  });

  CreateSlideRequest.fromJson(core.Map json_)
      : this(
          insertionIndex: json_.containsKey('insertionIndex')
              ? json_['insertionIndex'] as core.int
              : null,
          objectId: json_.containsKey('objectId')
              ? json_['objectId'] as core.String
              : null,
          placeholderIdMappings: json_.containsKey('placeholderIdMappings')
              ? (json_['placeholderIdMappings'] as core.List)
                  .map((value) => LayoutPlaceholderIdMapping.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          slideLayoutReference: json_.containsKey('slideLayoutReference')
              ? LayoutReference.fromJson(json_['slideLayoutReference']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (insertionIndex != null) 'insertionIndex': insertionIndex!,
        if (objectId != null) 'objectId': objectId!,
        if (placeholderIdMappings != null)
          'placeholderIdMappings': placeholderIdMappings!,
        if (slideLayoutReference != null)
          'slideLayoutReference': slideLayoutReference!,
      };
}

/// The result of creating a slide.
class CreateSlideResponse {
  /// The object ID of the created slide.
  core.String? objectId;

  CreateSlideResponse({
    this.objectId,
  });

  CreateSlideResponse.fromJson(core.Map json_)
      : this(
          objectId: json_.containsKey('objectId')
              ? json_['objectId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (objectId != null) 'objectId': objectId!,
      };
}

/// Creates a new table.
class CreateTableRequest {
  /// Number of columns in the table.
  core.int? columns;

  /// The element properties for the table.
  ///
  /// The table will be created at the provided size, subject to a minimum size.
  /// If no size is provided, the table will be automatically sized. Table
  /// transforms must have a scale of 1 and no shear components. If no transform
  /// is provided, the table will be centered on the page.
  PageElementProperties? elementProperties;

  /// A user-supplied object ID.
  ///
  /// If you specify an ID, it must be unique among all pages and page elements
  /// in the presentation. The ID must start with an alphanumeric character or
  /// an underscore (matches regex `[a-zA-Z0-9_]`); remaining characters may
  /// include those as well as a hyphen or colon (matches regex
  /// `[a-zA-Z0-9_-:]`). The length of the ID must not be less than 5 or greater
  /// than 50. If you don't specify an ID, a unique one is generated.
  core.String? objectId;

  /// Number of rows in the table.
  core.int? rows;

  CreateTableRequest({
    this.columns,
    this.elementProperties,
    this.objectId,
    this.rows,
  });

  CreateTableRequest.fromJson(core.Map json_)
      : this(
          columns: json_.containsKey('columns')
              ? json_['columns'] as core.int
              : null,
          elementProperties: json_.containsKey('elementProperties')
              ? PageElementProperties.fromJson(json_['elementProperties']
                  as core.Map<core.String, core.dynamic>)
              : null,
          objectId: json_.containsKey('objectId')
              ? json_['objectId'] as core.String
              : null,
          rows: json_.containsKey('rows') ? json_['rows'] as core.int : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (columns != null) 'columns': columns!,
        if (elementProperties != null) 'elementProperties': elementProperties!,
        if (objectId != null) 'objectId': objectId!,
        if (rows != null) 'rows': rows!,
      };
}

/// The result of creating a table.
class CreateTableResponse {
  /// The object ID of the created table.
  core.String? objectId;

  CreateTableResponse({
    this.objectId,
  });

  CreateTableResponse.fromJson(core.Map json_)
      : this(
          objectId: json_.containsKey('objectId')
              ? json_['objectId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (objectId != null) 'objectId': objectId!,
      };
}

/// Creates a video.
///
/// NOTE: Creating a video from Google Drive requires that the requesting app
/// have at least one of the drive, drive.readonly, or drive.file OAuth scopes.
class CreateVideoRequest {
  /// The element properties for the video.
  ///
  /// The PageElementProperties.size property is optional. If you don't specify
  /// a size, a default size is chosen by the server. The
  /// PageElementProperties.transform property is optional. The transform must
  /// not have shear components. If you don't specify a transform, the video
  /// will be placed at the top left corner of the page.
  PageElementProperties? elementProperties;

  /// The video source's unique identifier for this video.
  ///
  /// e.g. For YouTube video https://www.youtube.com/watch?v=7U3axjORYZ0, the ID
  /// is 7U3axjORYZ0. For a Google Drive video
  /// https://drive.google.com/file/d/1xCgQLFTJi5_Xl8DgW_lcUYq5e-q6Hi5Q the ID
  /// is 1xCgQLFTJi5_Xl8DgW_lcUYq5e-q6Hi5Q. To access a Google Drive video file,
  /// you might need to add a resource key to the HTTP header for a subset of
  /// old files. For more information, see \[Access link-shared files using
  /// resource keys\](https://developers.google.com/drive/api/v3/resource-keys).
  core.String? id;

  /// A user-supplied object ID.
  ///
  /// If you specify an ID, it must be unique among all pages and page elements
  /// in the presentation. The ID must start with an alphanumeric character or
  /// an underscore (matches regex `[a-zA-Z0-9_]`); remaining characters may
  /// include those as well as a hyphen or colon (matches regex
  /// `[a-zA-Z0-9_-:]`). The length of the ID must not be less than 5 or greater
  /// than 50. If you don't specify an ID, a unique one is generated.
  core.String? objectId;

  /// The video source.
  /// Possible string values are:
  /// - "SOURCE_UNSPECIFIED" : The video source is unspecified.
  /// - "YOUTUBE" : The video source is YouTube.
  /// - "DRIVE" : The video source is Google Drive.
  core.String? source;

  CreateVideoRequest({
    this.elementProperties,
    this.id,
    this.objectId,
    this.source,
  });

  CreateVideoRequest.fromJson(core.Map json_)
      : this(
          elementProperties: json_.containsKey('elementProperties')
              ? PageElementProperties.fromJson(json_['elementProperties']
                  as core.Map<core.String, core.dynamic>)
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          objectId: json_.containsKey('objectId')
              ? json_['objectId'] as core.String
              : null,
          source: json_.containsKey('source')
              ? json_['source'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (elementProperties != null) 'elementProperties': elementProperties!,
        if (id != null) 'id': id!,
        if (objectId != null) 'objectId': objectId!,
        if (source != null) 'source': source!,
      };
}

/// The result of creating a video.
class CreateVideoResponse {
  /// The object ID of the created video.
  core.String? objectId;

  CreateVideoResponse({
    this.objectId,
  });

  CreateVideoResponse.fromJson(core.Map json_)
      : this(
          objectId: json_.containsKey('objectId')
              ? json_['objectId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (objectId != null) 'objectId': objectId!,
      };
}

/// The crop properties of an object enclosed in a container.
///
/// For example, an Image. The crop properties is represented by the offsets of
/// four edges which define a crop rectangle. The offsets are measured in
/// percentage from the corresponding edges of the object's original bounding
/// rectangle towards inside, relative to the object's original dimensions. - If
/// the offset is in the interval (0, 1), the corresponding edge of crop
/// rectangle is positioned inside of the object's original bounding rectangle.
/// - If the offset is negative or greater than 1, the corresponding edge of
/// crop rectangle is positioned outside of the object's original bounding
/// rectangle. - If the left edge of the crop rectangle is on the right side of
/// its right edge, the object will be flipped horizontally. - If the top edge
/// of the crop rectangle is below its bottom edge, the object will be flipped
/// vertically. - If all offsets and rotation angle is 0, the object is not
/// cropped. After cropping, the content in the crop rectangle will be stretched
/// to fit its container.
class CropProperties {
  /// The rotation angle of the crop window around its center, in radians.
  ///
  /// Rotation angle is applied after the offset.
  core.double? angle;

  /// The offset specifies the bottom edge of the crop rectangle that is located
  /// above the original bounding rectangle bottom edge, relative to the
  /// object's original height.
  core.double? bottomOffset;

  /// The offset specifies the left edge of the crop rectangle that is located
  /// to the right of the original bounding rectangle left edge, relative to the
  /// object's original width.
  core.double? leftOffset;

  /// The offset specifies the right edge of the crop rectangle that is located
  /// to the left of the original bounding rectangle right edge, relative to the
  /// object's original width.
  core.double? rightOffset;

  /// The offset specifies the top edge of the crop rectangle that is located
  /// below the original bounding rectangle top edge, relative to the object's
  /// original height.
  core.double? topOffset;

  CropProperties({
    this.angle,
    this.bottomOffset,
    this.leftOffset,
    this.rightOffset,
    this.topOffset,
  });

  CropProperties.fromJson(core.Map json_)
      : this(
          angle: json_.containsKey('angle')
              ? (json_['angle'] as core.num).toDouble()
              : null,
          bottomOffset: json_.containsKey('bottomOffset')
              ? (json_['bottomOffset'] as core.num).toDouble()
              : null,
          leftOffset: json_.containsKey('leftOffset')
              ? (json_['leftOffset'] as core.num).toDouble()
              : null,
          rightOffset: json_.containsKey('rightOffset')
              ? (json_['rightOffset'] as core.num).toDouble()
              : null,
          topOffset: json_.containsKey('topOffset')
              ? (json_['topOffset'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (angle != null) 'angle': angle!,
        if (bottomOffset != null) 'bottomOffset': bottomOffset!,
        if (leftOffset != null) 'leftOffset': leftOffset!,
        if (rightOffset != null) 'rightOffset': rightOffset!,
        if (topOffset != null) 'topOffset': topOffset!,
      };
}

/// Deletes an object, either pages or page elements, from the presentation.
class DeleteObjectRequest {
  /// The object ID of the page or page element to delete.
  ///
  /// If after a delete operation a group contains only 1 or no page elements,
  /// the group is also deleted. If a placeholder is deleted on a layout, any
  /// empty inheriting placeholders are also deleted.
  core.String? objectId;

  DeleteObjectRequest({
    this.objectId,
  });

  DeleteObjectRequest.fromJson(core.Map json_)
      : this(
          objectId: json_.containsKey('objectId')
              ? json_['objectId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (objectId != null) 'objectId': objectId!,
      };
}

/// Deletes bullets from all of the paragraphs that overlap with the given text
/// index range.
///
/// The nesting level of each paragraph will be visually preserved by adding
/// indent to the start of the corresponding paragraph.
class DeleteParagraphBulletsRequest {
  /// The optional table cell location if the text to be modified is in a table
  /// cell.
  ///
  /// If present, the object_id must refer to a table.
  TableCellLocation? cellLocation;

  /// The object ID of the shape or table containing the text to delete bullets
  /// from.
  core.String? objectId;

  /// The range of text to delete bullets from, based on TextElement indexes.
  Range? textRange;

  DeleteParagraphBulletsRequest({
    this.cellLocation,
    this.objectId,
    this.textRange,
  });

  DeleteParagraphBulletsRequest.fromJson(core.Map json_)
      : this(
          cellLocation: json_.containsKey('cellLocation')
              ? TableCellLocation.fromJson(
                  json_['cellLocation'] as core.Map<core.String, core.dynamic>)
              : null,
          objectId: json_.containsKey('objectId')
              ? json_['objectId'] as core.String
              : null,
          textRange: json_.containsKey('textRange')
              ? Range.fromJson(
                  json_['textRange'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cellLocation != null) 'cellLocation': cellLocation!,
        if (objectId != null) 'objectId': objectId!,
        if (textRange != null) 'textRange': textRange!,
      };
}

/// Deletes a column from a table.
class DeleteTableColumnRequest {
  /// The reference table cell location from which a column will be deleted.
  ///
  /// The column this cell spans will be deleted. If this is a merged cell,
  /// multiple columns will be deleted. If no columns remain in the table after
  /// this deletion, the whole table is deleted.
  TableCellLocation? cellLocation;

  /// The table to delete columns from.
  core.String? tableObjectId;

  DeleteTableColumnRequest({
    this.cellLocation,
    this.tableObjectId,
  });

  DeleteTableColumnRequest.fromJson(core.Map json_)
      : this(
          cellLocation: json_.containsKey('cellLocation')
              ? TableCellLocation.fromJson(
                  json_['cellLocation'] as core.Map<core.String, core.dynamic>)
              : null,
          tableObjectId: json_.containsKey('tableObjectId')
              ? json_['tableObjectId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cellLocation != null) 'cellLocation': cellLocation!,
        if (tableObjectId != null) 'tableObjectId': tableObjectId!,
      };
}

/// Deletes a row from a table.
class DeleteTableRowRequest {
  /// The reference table cell location from which a row will be deleted.
  ///
  /// The row this cell spans will be deleted. If this is a merged cell,
  /// multiple rows will be deleted. If no rows remain in the table after this
  /// deletion, the whole table is deleted.
  TableCellLocation? cellLocation;

  /// The table to delete rows from.
  core.String? tableObjectId;

  DeleteTableRowRequest({
    this.cellLocation,
    this.tableObjectId,
  });

  DeleteTableRowRequest.fromJson(core.Map json_)
      : this(
          cellLocation: json_.containsKey('cellLocation')
              ? TableCellLocation.fromJson(
                  json_['cellLocation'] as core.Map<core.String, core.dynamic>)
              : null,
          tableObjectId: json_.containsKey('tableObjectId')
              ? json_['tableObjectId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cellLocation != null) 'cellLocation': cellLocation!,
        if (tableObjectId != null) 'tableObjectId': tableObjectId!,
      };
}

/// Deletes text from a shape or a table cell.
class DeleteTextRequest {
  /// The optional table cell location if the text is to be deleted from a table
  /// cell.
  ///
  /// If present, the object_id must refer to a table.
  TableCellLocation? cellLocation;

  /// The object ID of the shape or table from which the text will be deleted.
  core.String? objectId;

  /// The range of text to delete, based on TextElement indexes.
  ///
  /// There is always an implicit newline character at the end of a shape's or
  /// table cell's text that cannot be deleted. `Range.Type.ALL` will use the
  /// correct bounds, but care must be taken when specifying explicit bounds for
  /// range types `FROM_START_INDEX` and `FIXED_RANGE`. For example, if the text
  /// is "ABC", followed by an implicit newline, then the maximum value is 2 for
  /// `text_range.start_index` and 3 for `text_range.end_index`. Deleting text
  /// that crosses a paragraph boundary may result in changes to paragraph
  /// styles and lists as the two paragraphs are merged. Ranges that include
  /// only one code unit of a surrogate pair are expanded to include both code
  /// units.
  Range? textRange;

  DeleteTextRequest({
    this.cellLocation,
    this.objectId,
    this.textRange,
  });

  DeleteTextRequest.fromJson(core.Map json_)
      : this(
          cellLocation: json_.containsKey('cellLocation')
              ? TableCellLocation.fromJson(
                  json_['cellLocation'] as core.Map<core.String, core.dynamic>)
              : null,
          objectId: json_.containsKey('objectId')
              ? json_['objectId'] as core.String
              : null,
          textRange: json_.containsKey('textRange')
              ? Range.fromJson(
                  json_['textRange'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cellLocation != null) 'cellLocation': cellLocation!,
        if (objectId != null) 'objectId': objectId!,
        if (textRange != null) 'textRange': textRange!,
      };
}

/// A magnitude in a single direction in the specified units.
class Dimension {
  /// The magnitude.
  core.double? magnitude;

  /// The units for magnitude.
  /// Possible string values are:
  /// - "UNIT_UNSPECIFIED" : The units are unknown.
  /// - "EMU" : An English Metric Unit (EMU) is defined as 1/360,000 of a
  /// centimeter and thus there are 914,400 EMUs per inch, and 12,700 EMUs per
  /// point.
  /// - "PT" : A point, 1/72 of an inch.
  core.String? unit;

  Dimension({
    this.magnitude,
    this.unit,
  });

  Dimension.fromJson(core.Map json_)
      : this(
          magnitude: json_.containsKey('magnitude')
              ? (json_['magnitude'] as core.num).toDouble()
              : null,
          unit: json_.containsKey('unit') ? json_['unit'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (magnitude != null) 'magnitude': magnitude!,
        if (unit != null) 'unit': unit!,
      };
}

/// Duplicates a slide or page element.
///
/// When duplicating a slide, the duplicate slide will be created immediately
/// following the specified slide. When duplicating a page element, the
/// duplicate will be placed on the same page at the same position as the
/// original.
class DuplicateObjectRequest {
  /// The ID of the object to duplicate.
  core.String? objectId;

  /// The object being duplicated may contain other objects, for example when
  /// duplicating a slide or a group page element.
  ///
  /// This map defines how the IDs of duplicated objects are generated: the keys
  /// are the IDs of the original objects and its values are the IDs that will
  /// be assigned to the corresponding duplicate object. The ID of the source
  /// object's duplicate may be specified in this map as well, using the same
  /// value of the `object_id` field as a key and the newly desired ID as the
  /// value. All keys must correspond to existing IDs in the presentation. All
  /// values must be unique in the presentation and must start with an
  /// alphanumeric character or an underscore (matches regex `[a-zA-Z0-9_]`);
  /// remaining characters may include those as well as a hyphen or colon
  /// (matches regex `[a-zA-Z0-9_-:]`). The length of the new ID must not be
  /// less than 5 or greater than 50. If any IDs of source objects are omitted
  /// from the map, a new random ID will be assigned. If the map is empty or
  /// unset, all duplicate objects will receive a new random ID.
  core.Map<core.String, core.String>? objectIds;

  DuplicateObjectRequest({
    this.objectId,
    this.objectIds,
  });

  DuplicateObjectRequest.fromJson(core.Map json_)
      : this(
          objectId: json_.containsKey('objectId')
              ? json_['objectId'] as core.String
              : null,
          objectIds: json_.containsKey('objectIds')
              ? (json_['objectIds'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (objectId != null) 'objectId': objectId!,
        if (objectIds != null) 'objectIds': objectIds!,
      };
}

/// The response of duplicating an object.
class DuplicateObjectResponse {
  /// The ID of the new duplicate object.
  core.String? objectId;

  DuplicateObjectResponse({
    this.objectId,
  });

  DuplicateObjectResponse.fromJson(core.Map json_)
      : this(
          objectId: json_.containsKey('objectId')
              ? json_['objectId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (objectId != null) 'objectId': objectId!,
      };
}

/// A PageElement kind representing a joined collection of PageElements.
class Group {
  /// The collection of elements in the group.
  ///
  /// The minimum size of a group is 2.
  core.List<PageElement>? children;

  Group({
    this.children,
  });

  Group.fromJson(core.Map json_)
      : this(
          children: json_.containsKey('children')
              ? (json_['children'] as core.List)
                  .map((value) => PageElement.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (children != null) 'children': children!,
      };
}

/// Groups objects to create an object group.
///
/// For example, groups PageElements to create a Group on the same page as all
/// the children.
class GroupObjectsRequest {
  /// The object IDs of the objects to group.
  ///
  /// Only page elements can be grouped. There should be at least two page
  /// elements on the same page that are not already in another group. Some page
  /// elements, such as videos, tables and placeholders cannot be grouped.
  core.List<core.String>? childrenObjectIds;

  /// A user-supplied object ID for the group to be created.
  ///
  /// If you specify an ID, it must be unique among all pages and page elements
  /// in the presentation. The ID must start with an alphanumeric character or
  /// an underscore (matches regex `[a-zA-Z0-9_]`); remaining characters may
  /// include those as well as a hyphen or colon (matches regex
  /// `[a-zA-Z0-9_-:]`). The length of the ID must not be less than 5 or greater
  /// than 50. If you don't specify an ID, a unique one is generated.
  core.String? groupObjectId;

  GroupObjectsRequest({
    this.childrenObjectIds,
    this.groupObjectId,
  });

  GroupObjectsRequest.fromJson(core.Map json_)
      : this(
          childrenObjectIds: json_.containsKey('childrenObjectIds')
              ? (json_['childrenObjectIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          groupObjectId: json_.containsKey('groupObjectId')
              ? json_['groupObjectId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (childrenObjectIds != null) 'childrenObjectIds': childrenObjectIds!,
        if (groupObjectId != null) 'groupObjectId': groupObjectId!,
      };
}

/// The result of grouping objects.
class GroupObjectsResponse {
  /// The object ID of the created group.
  core.String? objectId;

  GroupObjectsResponse({
    this.objectId,
  });

  GroupObjectsResponse.fromJson(core.Map json_)
      : this(
          objectId: json_.containsKey('objectId')
              ? json_['objectId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (objectId != null) 'objectId': objectId!,
      };
}

/// A PageElement kind representing an image.
class Image {
  /// An URL to an image with a default lifetime of 30 minutes.
  ///
  /// This URL is tagged with the account of the requester. Anyone with the URL
  /// effectively accesses the image as the original requester. Access to the
  /// image may be lost if the presentation's sharing settings change.
  core.String? contentUrl;

  /// The properties of the image.
  ImageProperties? imageProperties;

  /// Placeholders are page elements that inherit from corresponding
  /// placeholders on layouts and masters.
  ///
  /// If set, the image is a placeholder image and any inherited properties can
  /// be resolved by looking at the parent placeholder identified by the
  /// Placeholder.parent_object_id field.
  Placeholder? placeholder;

  /// The source URL is the URL used to insert the image.
  ///
  /// The source URL can be empty.
  core.String? sourceUrl;

  Image({
    this.contentUrl,
    this.imageProperties,
    this.placeholder,
    this.sourceUrl,
  });

  Image.fromJson(core.Map json_)
      : this(
          contentUrl: json_.containsKey('contentUrl')
              ? json_['contentUrl'] as core.String
              : null,
          imageProperties: json_.containsKey('imageProperties')
              ? ImageProperties.fromJson(json_['imageProperties']
                  as core.Map<core.String, core.dynamic>)
              : null,
          placeholder: json_.containsKey('placeholder')
              ? Placeholder.fromJson(
                  json_['placeholder'] as core.Map<core.String, core.dynamic>)
              : null,
          sourceUrl: json_.containsKey('sourceUrl')
              ? json_['sourceUrl'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (contentUrl != null) 'contentUrl': contentUrl!,
        if (imageProperties != null) 'imageProperties': imageProperties!,
        if (placeholder != null) 'placeholder': placeholder!,
        if (sourceUrl != null) 'sourceUrl': sourceUrl!,
      };
}

/// The properties of the Image.
class ImageProperties {
  /// The brightness effect of the image.
  ///
  /// The value should be in the interval \[-1.0, 1.0\], where 0 means no
  /// effect. This property is read-only.
  core.double? brightness;

  /// The contrast effect of the image.
  ///
  /// The value should be in the interval \[-1.0, 1.0\], where 0 means no
  /// effect. This property is read-only.
  core.double? contrast;

  /// The crop properties of the image.
  ///
  /// If not set, the image is not cropped. This property is read-only.
  CropProperties? cropProperties;

  /// The hyperlink destination of the image.
  ///
  /// If unset, there is no link.
  Link? link;

  /// The outline of the image.
  ///
  /// If not set, the image has no outline.
  Outline? outline;

  /// The recolor effect of the image.
  ///
  /// If not set, the image is not recolored. This property is read-only.
  Recolor? recolor;

  /// The shadow of the image.
  ///
  /// If not set, the image has no shadow. This property is read-only.
  Shadow? shadow;

  /// The transparency effect of the image.
  ///
  /// The value should be in the interval \[0.0, 1.0\], where 0 means no effect
  /// and 1 means completely transparent. This property is read-only.
  core.double? transparency;

  ImageProperties({
    this.brightness,
    this.contrast,
    this.cropProperties,
    this.link,
    this.outline,
    this.recolor,
    this.shadow,
    this.transparency,
  });

  ImageProperties.fromJson(core.Map json_)
      : this(
          brightness: json_.containsKey('brightness')
              ? (json_['brightness'] as core.num).toDouble()
              : null,
          contrast: json_.containsKey('contrast')
              ? (json_['contrast'] as core.num).toDouble()
              : null,
          cropProperties: json_.containsKey('cropProperties')
              ? CropProperties.fromJson(json_['cropProperties']
                  as core.Map<core.String, core.dynamic>)
              : null,
          link: json_.containsKey('link')
              ? Link.fromJson(
                  json_['link'] as core.Map<core.String, core.dynamic>)
              : null,
          outline: json_.containsKey('outline')
              ? Outline.fromJson(
                  json_['outline'] as core.Map<core.String, core.dynamic>)
              : null,
          recolor: json_.containsKey('recolor')
              ? Recolor.fromJson(
                  json_['recolor'] as core.Map<core.String, core.dynamic>)
              : null,
          shadow: json_.containsKey('shadow')
              ? Shadow.fromJson(
                  json_['shadow'] as core.Map<core.String, core.dynamic>)
              : null,
          transparency: json_.containsKey('transparency')
              ? (json_['transparency'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (brightness != null) 'brightness': brightness!,
        if (contrast != null) 'contrast': contrast!,
        if (cropProperties != null) 'cropProperties': cropProperties!,
        if (link != null) 'link': link!,
        if (outline != null) 'outline': outline!,
        if (recolor != null) 'recolor': recolor!,
        if (shadow != null) 'shadow': shadow!,
        if (transparency != null) 'transparency': transparency!,
      };
}

/// Inserts columns into a table.
///
/// Other columns in the table will be resized to fit the new column.
class InsertTableColumnsRequest {
  /// The reference table cell location from which columns will be inserted.
  ///
  /// A new column will be inserted to the left (or right) of the column where
  /// the reference cell is. If the reference cell is a merged cell, a new
  /// column will be inserted to the left (or right) of the merged cell.
  TableCellLocation? cellLocation;

  /// Whether to insert new columns to the right of the reference cell location.
  ///
  /// - `True`: insert to the right. - `False`: insert to the left.
  core.bool? insertRight;

  /// The number of columns to be inserted.
  ///
  /// Maximum 20 per request.
  core.int? number;

  /// The table to insert columns into.
  core.String? tableObjectId;

  InsertTableColumnsRequest({
    this.cellLocation,
    this.insertRight,
    this.number,
    this.tableObjectId,
  });

  InsertTableColumnsRequest.fromJson(core.Map json_)
      : this(
          cellLocation: json_.containsKey('cellLocation')
              ? TableCellLocation.fromJson(
                  json_['cellLocation'] as core.Map<core.String, core.dynamic>)
              : null,
          insertRight: json_.containsKey('insertRight')
              ? json_['insertRight'] as core.bool
              : null,
          number:
              json_.containsKey('number') ? json_['number'] as core.int : null,
          tableObjectId: json_.containsKey('tableObjectId')
              ? json_['tableObjectId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cellLocation != null) 'cellLocation': cellLocation!,
        if (insertRight != null) 'insertRight': insertRight!,
        if (number != null) 'number': number!,
        if (tableObjectId != null) 'tableObjectId': tableObjectId!,
      };
}

/// Inserts rows into a table.
class InsertTableRowsRequest {
  /// The reference table cell location from which rows will be inserted.
  ///
  /// A new row will be inserted above (or below) the row where the reference
  /// cell is. If the reference cell is a merged cell, a new row will be
  /// inserted above (or below) the merged cell.
  TableCellLocation? cellLocation;

  /// Whether to insert new rows below the reference cell location.
  ///
  /// - `True`: insert below the cell. - `False`: insert above the cell.
  core.bool? insertBelow;

  /// The number of rows to be inserted.
  ///
  /// Maximum 20 per request.
  core.int? number;

  /// The table to insert rows into.
  core.String? tableObjectId;

  InsertTableRowsRequest({
    this.cellLocation,
    this.insertBelow,
    this.number,
    this.tableObjectId,
  });

  InsertTableRowsRequest.fromJson(core.Map json_)
      : this(
          cellLocation: json_.containsKey('cellLocation')
              ? TableCellLocation.fromJson(
                  json_['cellLocation'] as core.Map<core.String, core.dynamic>)
              : null,
          insertBelow: json_.containsKey('insertBelow')
              ? json_['insertBelow'] as core.bool
              : null,
          number:
              json_.containsKey('number') ? json_['number'] as core.int : null,
          tableObjectId: json_.containsKey('tableObjectId')
              ? json_['tableObjectId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cellLocation != null) 'cellLocation': cellLocation!,
        if (insertBelow != null) 'insertBelow': insertBelow!,
        if (number != null) 'number': number!,
        if (tableObjectId != null) 'tableObjectId': tableObjectId!,
      };
}

/// Inserts text into a shape or a table cell.
class InsertTextRequest {
  /// The optional table cell location if the text is to be inserted into a
  /// table cell.
  ///
  /// If present, the object_id must refer to a table.
  TableCellLocation? cellLocation;

  /// The index where the text will be inserted, in Unicode code units, based on
  /// TextElement indexes.
  ///
  /// The index is zero-based and is computed from the start of the string. The
  /// index may be adjusted to prevent insertions inside Unicode grapheme
  /// clusters. In these cases, the text will be inserted immediately after the
  /// grapheme cluster.
  core.int? insertionIndex;

  /// The object ID of the shape or table where the text will be inserted.
  core.String? objectId;

  /// The text to be inserted.
  ///
  /// Inserting a newline character will implicitly create a new ParagraphMarker
  /// at that index. The paragraph style of the new paragraph will be copied
  /// from the paragraph at the current insertion index, including lists and
  /// bullets. Text styles for inserted text will be determined automatically,
  /// generally preserving the styling of neighboring text. In most cases, the
  /// text will be added to the TextRun that exists at the insertion index. Some
  /// control characters (U+0000-U+0008, U+000C-U+001F) and characters from the
  /// Unicode Basic Multilingual Plane Private Use Area (U+E000-U+F8FF) will be
  /// stripped out of the inserted text.
  core.String? text;

  InsertTextRequest({
    this.cellLocation,
    this.insertionIndex,
    this.objectId,
    this.text,
  });

  InsertTextRequest.fromJson(core.Map json_)
      : this(
          cellLocation: json_.containsKey('cellLocation')
              ? TableCellLocation.fromJson(
                  json_['cellLocation'] as core.Map<core.String, core.dynamic>)
              : null,
          insertionIndex: json_.containsKey('insertionIndex')
              ? json_['insertionIndex'] as core.int
              : null,
          objectId: json_.containsKey('objectId')
              ? json_['objectId'] as core.String
              : null,
          text: json_.containsKey('text') ? json_['text'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cellLocation != null) 'cellLocation': cellLocation!,
        if (insertionIndex != null) 'insertionIndex': insertionIndex!,
        if (objectId != null) 'objectId': objectId!,
        if (text != null) 'text': text!,
      };
}

/// The user-specified ID mapping for a placeholder that will be created on a
/// slide from a specified layout.
class LayoutPlaceholderIdMapping {
  /// The placeholder on a layout that will be applied to a slide.
  ///
  /// Only type and index are needed. For example, a predefined `TITLE_AND_BODY`
  /// layout may usually have a TITLE placeholder with index 0 and a BODY
  /// placeholder with index 0.
  Placeholder? layoutPlaceholder;

  /// The object ID of the placeholder on a layout that will be applied to a
  /// slide.
  core.String? layoutPlaceholderObjectId;

  /// A user-supplied object ID for the placeholder identified above that to be
  /// created onto a slide.
  ///
  /// If you specify an ID, it must be unique among all pages and page elements
  /// in the presentation. The ID must start with an alphanumeric character or
  /// an underscore (matches regex `[a-zA-Z0-9_]`); remaining characters may
  /// include those as well as a hyphen or colon (matches regex
  /// `[a-zA-Z0-9_-:]`). The length of the ID must not be less than 5 or greater
  /// than 50. If you don't specify an ID, a unique one is generated.
  core.String? objectId;

  LayoutPlaceholderIdMapping({
    this.layoutPlaceholder,
    this.layoutPlaceholderObjectId,
    this.objectId,
  });

  LayoutPlaceholderIdMapping.fromJson(core.Map json_)
      : this(
          layoutPlaceholder: json_.containsKey('layoutPlaceholder')
              ? Placeholder.fromJson(json_['layoutPlaceholder']
                  as core.Map<core.String, core.dynamic>)
              : null,
          layoutPlaceholderObjectId:
              json_.containsKey('layoutPlaceholderObjectId')
                  ? json_['layoutPlaceholderObjectId'] as core.String
                  : null,
          objectId: json_.containsKey('objectId')
              ? json_['objectId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (layoutPlaceholder != null) 'layoutPlaceholder': layoutPlaceholder!,
        if (layoutPlaceholderObjectId != null)
          'layoutPlaceholderObjectId': layoutPlaceholderObjectId!,
        if (objectId != null) 'objectId': objectId!,
      };
}

/// The properties of Page are only relevant for pages with page_type LAYOUT.
class LayoutProperties {
  /// The human-readable name of the layout.
  core.String? displayName;

  /// The object ID of the master that this layout is based on.
  core.String? masterObjectId;

  /// The name of the layout.
  core.String? name;

  LayoutProperties({
    this.displayName,
    this.masterObjectId,
    this.name,
  });

  LayoutProperties.fromJson(core.Map json_)
      : this(
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          masterObjectId: json_.containsKey('masterObjectId')
              ? json_['masterObjectId'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (masterObjectId != null) 'masterObjectId': masterObjectId!,
        if (name != null) 'name': name!,
      };
}

/// Slide layout reference.
///
/// This may reference either: - A predefined layout - One of the layouts in the
/// presentation.
class LayoutReference {
  /// Layout ID: the object ID of one of the layouts in the presentation.
  core.String? layoutId;

  /// Predefined layout.
  /// Possible string values are:
  /// - "PREDEFINED_LAYOUT_UNSPECIFIED" : Unspecified layout.
  /// - "BLANK" : Blank layout, with no placeholders.
  /// - "CAPTION_ONLY" : Layout with a caption at the bottom.
  /// - "TITLE" : Layout with a title and a subtitle.
  /// - "TITLE_AND_BODY" : Layout with a title and body.
  /// - "TITLE_AND_TWO_COLUMNS" : Layout with a title and two columns.
  /// - "TITLE_ONLY" : Layout with only a title.
  /// - "SECTION_HEADER" : Layout with a section title.
  /// - "SECTION_TITLE_AND_DESCRIPTION" : Layout with a title and subtitle on
  /// one side and description on the other.
  /// - "ONE_COLUMN_TEXT" : Layout with one title and one body, arranged in a
  /// single column.
  /// - "MAIN_POINT" : Layout with a main point.
  /// - "BIG_NUMBER" : Layout with a big number heading.
  core.String? predefinedLayout;

  LayoutReference({
    this.layoutId,
    this.predefinedLayout,
  });

  LayoutReference.fromJson(core.Map json_)
      : this(
          layoutId: json_.containsKey('layoutId')
              ? json_['layoutId'] as core.String
              : null,
          predefinedLayout: json_.containsKey('predefinedLayout')
              ? json_['predefinedLayout'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (layoutId != null) 'layoutId': layoutId!,
        if (predefinedLayout != null) 'predefinedLayout': predefinedLayout!,
      };
}

/// A PageElement kind representing a non-connector line, straight connector,
/// curved connector, or bent connector.
class Line {
  /// The category of the line.
  ///
  /// It matches the `category` specified in CreateLineRequest, and can be
  /// updated with UpdateLineCategoryRequest.
  /// Possible string values are:
  /// - "LINE_CATEGORY_UNSPECIFIED" : Unspecified line category.
  /// - "STRAIGHT" : Straight connectors, including straight connector 1.
  /// - "BENT" : Bent connectors, including bent connector 2 to 5.
  /// - "CURVED" : Curved connectors, including curved connector 2 to 5.
  core.String? lineCategory;

  /// The properties of the line.
  LineProperties? lineProperties;

  /// The type of the line.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : An unspecified line type.
  /// - "STRAIGHT_CONNECTOR_1" : Straight connector 1 form. Corresponds to
  /// ECMA-376 ST_ShapeType 'straightConnector1'.
  /// - "BENT_CONNECTOR_2" : Bent connector 2 form. Corresponds to ECMA-376
  /// ST_ShapeType 'bentConnector2'.
  /// - "BENT_CONNECTOR_3" : Bent connector 3 form. Corresponds to ECMA-376
  /// ST_ShapeType 'bentConnector3'.
  /// - "BENT_CONNECTOR_4" : Bent connector 4 form. Corresponds to ECMA-376
  /// ST_ShapeType 'bentConnector4'.
  /// - "BENT_CONNECTOR_5" : Bent connector 5 form. Corresponds to ECMA-376
  /// ST_ShapeType 'bentConnector5'.
  /// - "CURVED_CONNECTOR_2" : Curved connector 2 form. Corresponds to ECMA-376
  /// ST_ShapeType 'curvedConnector2'.
  /// - "CURVED_CONNECTOR_3" : Curved connector 3 form. Corresponds to ECMA-376
  /// ST_ShapeType 'curvedConnector3'.
  /// - "CURVED_CONNECTOR_4" : Curved connector 4 form. Corresponds to ECMA-376
  /// ST_ShapeType 'curvedConnector4'.
  /// - "CURVED_CONNECTOR_5" : Curved connector 5 form. Corresponds to ECMA-376
  /// ST_ShapeType 'curvedConnector5'.
  /// - "STRAIGHT_LINE" : Straight line. Corresponds to ECMA-376 ST_ShapeType
  /// 'line'. This line type is not a connector.
  core.String? lineType;

  Line({
    this.lineCategory,
    this.lineProperties,
    this.lineType,
  });

  Line.fromJson(core.Map json_)
      : this(
          lineCategory: json_.containsKey('lineCategory')
              ? json_['lineCategory'] as core.String
              : null,
          lineProperties: json_.containsKey('lineProperties')
              ? LineProperties.fromJson(json_['lineProperties']
                  as core.Map<core.String, core.dynamic>)
              : null,
          lineType: json_.containsKey('lineType')
              ? json_['lineType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (lineCategory != null) 'lineCategory': lineCategory!,
        if (lineProperties != null) 'lineProperties': lineProperties!,
        if (lineType != null) 'lineType': lineType!,
      };
}

/// The properties for one end of a Line connection.
class LineConnection {
  /// The object ID of the connected page element.
  ///
  /// Some page elements, such as groups, tables, and lines do not have
  /// connection sites and therefore cannot be connected to a connector line.
  core.String? connectedObjectId;

  /// The index of the connection site on the connected page element.
  ///
  /// In most cases, it corresponds to the predefined connection site index from
  /// the ECMA-376 standard. More information on those connection sites can be
  /// found in the description of the "cnx" attribute in section 20.1.9.9 and
  /// Annex H. "Predefined DrawingML Shape and Text Geometries" of "Office Open
  /// XML File Formats-Fundamentals and Markup Language Reference", part 1 of
  /// \[ECMA-376 5th
  /// edition\](http://www.ecma-international.org/publications/standards/Ecma-376.htm).
  /// The position of each connection site can also be viewed from Slides
  /// editor.
  core.int? connectionSiteIndex;

  LineConnection({
    this.connectedObjectId,
    this.connectionSiteIndex,
  });

  LineConnection.fromJson(core.Map json_)
      : this(
          connectedObjectId: json_.containsKey('connectedObjectId')
              ? json_['connectedObjectId'] as core.String
              : null,
          connectionSiteIndex: json_.containsKey('connectionSiteIndex')
              ? json_['connectionSiteIndex'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (connectedObjectId != null) 'connectedObjectId': connectedObjectId!,
        if (connectionSiteIndex != null)
          'connectionSiteIndex': connectionSiteIndex!,
      };
}

/// The fill of the line.
class LineFill {
  /// Solid color fill.
  SolidFill? solidFill;

  LineFill({
    this.solidFill,
  });

  LineFill.fromJson(core.Map json_)
      : this(
          solidFill: json_.containsKey('solidFill')
              ? SolidFill.fromJson(
                  json_['solidFill'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (solidFill != null) 'solidFill': solidFill!,
      };
}

/// The properties of the Line.
///
/// When unset, these fields default to values that match the appearance of new
/// lines created in the Slides editor.
class LineProperties {
  /// The dash style of the line.
  /// Possible string values are:
  /// - "DASH_STYLE_UNSPECIFIED" : Unspecified dash style.
  /// - "SOLID" : Solid line. Corresponds to ECMA-376 ST_PresetLineDashVal value
  /// 'solid'. This is the default dash style.
  /// - "DOT" : Dotted line. Corresponds to ECMA-376 ST_PresetLineDashVal value
  /// 'dot'.
  /// - "DASH" : Dashed line. Corresponds to ECMA-376 ST_PresetLineDashVal value
  /// 'dash'.
  /// - "DASH_DOT" : Alternating dashes and dots. Corresponds to ECMA-376
  /// ST_PresetLineDashVal value 'dashDot'.
  /// - "LONG_DASH" : Line with large dashes. Corresponds to ECMA-376
  /// ST_PresetLineDashVal value 'lgDash'.
  /// - "LONG_DASH_DOT" : Alternating large dashes and dots. Corresponds to
  /// ECMA-376 ST_PresetLineDashVal value 'lgDashDot'.
  core.String? dashStyle;

  /// The style of the arrow at the end of the line.
  /// Possible string values are:
  /// - "ARROW_STYLE_UNSPECIFIED" : An unspecified arrow style.
  /// - "NONE" : No arrow.
  /// - "STEALTH_ARROW" : Arrow with notched back. Corresponds to ECMA-376
  /// ST_LineEndType value 'stealth'.
  /// - "FILL_ARROW" : Filled arrow. Corresponds to ECMA-376 ST_LineEndType
  /// value 'triangle'.
  /// - "FILL_CIRCLE" : Filled circle. Corresponds to ECMA-376 ST_LineEndType
  /// value 'oval'.
  /// - "FILL_SQUARE" : Filled square.
  /// - "FILL_DIAMOND" : Filled diamond. Corresponds to ECMA-376 ST_LineEndType
  /// value 'diamond'.
  /// - "OPEN_ARROW" : Hollow arrow.
  /// - "OPEN_CIRCLE" : Hollow circle.
  /// - "OPEN_SQUARE" : Hollow square.
  /// - "OPEN_DIAMOND" : Hollow diamond.
  core.String? endArrow;

  /// The connection at the end of the line.
  ///
  /// If unset, there is no connection. Only lines with a Type indicating it is
  /// a "connector" can have an `end_connection`.
  LineConnection? endConnection;

  /// The fill of the line.
  ///
  /// The default line fill matches the defaults for new lines created in the
  /// Slides editor.
  LineFill? lineFill;

  /// The hyperlink destination of the line.
  ///
  /// If unset, there is no link.
  Link? link;

  /// The style of the arrow at the beginning of the line.
  /// Possible string values are:
  /// - "ARROW_STYLE_UNSPECIFIED" : An unspecified arrow style.
  /// - "NONE" : No arrow.
  /// - "STEALTH_ARROW" : Arrow with notched back. Corresponds to ECMA-376
  /// ST_LineEndType value 'stealth'.
  /// - "FILL_ARROW" : Filled arrow. Corresponds to ECMA-376 ST_LineEndType
  /// value 'triangle'.
  /// - "FILL_CIRCLE" : Filled circle. Corresponds to ECMA-376 ST_LineEndType
  /// value 'oval'.
  /// - "FILL_SQUARE" : Filled square.
  /// - "FILL_DIAMOND" : Filled diamond. Corresponds to ECMA-376 ST_LineEndType
  /// value 'diamond'.
  /// - "OPEN_ARROW" : Hollow arrow.
  /// - "OPEN_CIRCLE" : Hollow circle.
  /// - "OPEN_SQUARE" : Hollow square.
  /// - "OPEN_DIAMOND" : Hollow diamond.
  core.String? startArrow;

  /// The connection at the beginning of the line.
  ///
  /// If unset, there is no connection. Only lines with a Type indicating it is
  /// a "connector" can have a `start_connection`.
  LineConnection? startConnection;

  /// The thickness of the line.
  Dimension? weight;

  LineProperties({
    this.dashStyle,
    this.endArrow,
    this.endConnection,
    this.lineFill,
    this.link,
    this.startArrow,
    this.startConnection,
    this.weight,
  });

  LineProperties.fromJson(core.Map json_)
      : this(
          dashStyle: json_.containsKey('dashStyle')
              ? json_['dashStyle'] as core.String
              : null,
          endArrow: json_.containsKey('endArrow')
              ? json_['endArrow'] as core.String
              : null,
          endConnection: json_.containsKey('endConnection')
              ? LineConnection.fromJson(
                  json_['endConnection'] as core.Map<core.String, core.dynamic>)
              : null,
          lineFill: json_.containsKey('lineFill')
              ? LineFill.fromJson(
                  json_['lineFill'] as core.Map<core.String, core.dynamic>)
              : null,
          link: json_.containsKey('link')
              ? Link.fromJson(
                  json_['link'] as core.Map<core.String, core.dynamic>)
              : null,
          startArrow: json_.containsKey('startArrow')
              ? json_['startArrow'] as core.String
              : null,
          startConnection: json_.containsKey('startConnection')
              ? LineConnection.fromJson(json_['startConnection']
                  as core.Map<core.String, core.dynamic>)
              : null,
          weight: json_.containsKey('weight')
              ? Dimension.fromJson(
                  json_['weight'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dashStyle != null) 'dashStyle': dashStyle!,
        if (endArrow != null) 'endArrow': endArrow!,
        if (endConnection != null) 'endConnection': endConnection!,
        if (lineFill != null) 'lineFill': lineFill!,
        if (link != null) 'link': link!,
        if (startArrow != null) 'startArrow': startArrow!,
        if (startConnection != null) 'startConnection': startConnection!,
        if (weight != null) 'weight': weight!,
      };
}

/// A hypertext link.
class Link {
  /// If set, indicates this is a link to the specific page in this presentation
  /// with this ID.
  ///
  /// A page with this ID may not exist.
  core.String? pageObjectId;

  /// If set, indicates this is a link to a slide in this presentation,
  /// addressed by its position.
  /// Possible string values are:
  /// - "RELATIVE_SLIDE_LINK_UNSPECIFIED" : An unspecified relative slide link.
  /// - "NEXT_SLIDE" : A link to the next slide.
  /// - "PREVIOUS_SLIDE" : A link to the previous slide.
  /// - "FIRST_SLIDE" : A link to the first slide in the presentation.
  /// - "LAST_SLIDE" : A link to the last slide in the presentation.
  core.String? relativeLink;

  /// If set, indicates this is a link to the slide at this zero-based index in
  /// the presentation.
  ///
  /// There may not be a slide at this index.
  core.int? slideIndex;

  /// If set, indicates this is a link to the external web page at this URL.
  core.String? url;

  Link({
    this.pageObjectId,
    this.relativeLink,
    this.slideIndex,
    this.url,
  });

  Link.fromJson(core.Map json_)
      : this(
          pageObjectId: json_.containsKey('pageObjectId')
              ? json_['pageObjectId'] as core.String
              : null,
          relativeLink: json_.containsKey('relativeLink')
              ? json_['relativeLink'] as core.String
              : null,
          slideIndex: json_.containsKey('slideIndex')
              ? json_['slideIndex'] as core.int
              : null,
          url: json_.containsKey('url') ? json_['url'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (pageObjectId != null) 'pageObjectId': pageObjectId!,
        if (relativeLink != null) 'relativeLink': relativeLink!,
        if (slideIndex != null) 'slideIndex': slideIndex!,
        if (url != null) 'url': url!,
      };
}

/// A List describes the look and feel of bullets belonging to paragraphs
/// associated with a list.
///
/// A paragraph that is part of a list has an implicit reference to that list's
/// ID.
class List {
  /// The ID of the list.
  core.String? listId;

  /// A map of nesting levels to the properties of bullets at the associated
  /// level.
  ///
  /// A list has at most nine levels of nesting, so the possible values for the
  /// keys of this map are 0 through 8, inclusive.
  core.Map<core.String, NestingLevel>? nestingLevel;

  List({
    this.listId,
    this.nestingLevel,
  });

  List.fromJson(core.Map json_)
      : this(
          listId: json_.containsKey('listId')
              ? json_['listId'] as core.String
              : null,
          nestingLevel: json_.containsKey('nestingLevel')
              ? (json_['nestingLevel'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    NestingLevel.fromJson(
                        item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (listId != null) 'listId': listId!,
        if (nestingLevel != null) 'nestingLevel': nestingLevel!,
      };
}

/// The properties of Page that are only relevant for pages with page_type
/// MASTER.
class MasterProperties {
  /// The human-readable name of the master.
  core.String? displayName;

  MasterProperties({
    this.displayName,
  });

  MasterProperties.fromJson(core.Map json_)
      : this(
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
      };
}

/// Merges cells in a Table.
class MergeTableCellsRequest {
  /// The object ID of the table.
  core.String? objectId;

  /// The table range specifying which cells of the table to merge.
  ///
  /// Any text in the cells being merged will be concatenated and stored in the
  /// upper-left ("head") cell of the range. If the range is non-rectangular
  /// (which can occur in some cases where the range covers cells that are
  /// already merged), a 400 bad request error is returned.
  TableRange? tableRange;

  MergeTableCellsRequest({
    this.objectId,
    this.tableRange,
  });

  MergeTableCellsRequest.fromJson(core.Map json_)
      : this(
          objectId: json_.containsKey('objectId')
              ? json_['objectId'] as core.String
              : null,
          tableRange: json_.containsKey('tableRange')
              ? TableRange.fromJson(
                  json_['tableRange'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (objectId != null) 'objectId': objectId!,
        if (tableRange != null) 'tableRange': tableRange!,
      };
}

/// Contains properties describing the look and feel of a list bullet at a given
/// level of nesting.
class NestingLevel {
  /// The style of a bullet at this level of nesting.
  TextStyle? bulletStyle;

  NestingLevel({
    this.bulletStyle,
  });

  NestingLevel.fromJson(core.Map json_)
      : this(
          bulletStyle: json_.containsKey('bulletStyle')
              ? TextStyle.fromJson(
                  json_['bulletStyle'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bulletStyle != null) 'bulletStyle': bulletStyle!,
      };
}

/// The properties of Page that are only relevant for pages with page_type
/// NOTES.
class NotesProperties {
  /// The object ID of the shape on this notes page that contains the speaker
  /// notes for the corresponding slide.
  ///
  /// The actual shape may not always exist on the notes page. Inserting text
  /// using this object ID will automatically create the shape. In this case,
  /// the actual shape may have different object ID. The `GetPresentation` or
  /// `GetPage` action will always return the latest object ID.
  core.String? speakerNotesObjectId;

  NotesProperties({
    this.speakerNotesObjectId,
  });

  NotesProperties.fromJson(core.Map json_)
      : this(
          speakerNotesObjectId: json_.containsKey('speakerNotesObjectId')
              ? json_['speakerNotesObjectId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (speakerNotesObjectId != null)
          'speakerNotesObjectId': speakerNotesObjectId!,
      };
}

/// A themeable solid color value.
class OpaqueColor {
  /// An opaque RGB color.
  RgbColor? rgbColor;

  /// An opaque theme color.
  /// Possible string values are:
  /// - "THEME_COLOR_TYPE_UNSPECIFIED" : Unspecified theme color. This value
  /// should not be used.
  /// - "DARK1" : Represents the first dark color.
  /// - "LIGHT1" : Represents the first light color.
  /// - "DARK2" : Represents the second dark color.
  /// - "LIGHT2" : Represents the second light color.
  /// - "ACCENT1" : Represents the first accent color.
  /// - "ACCENT2" : Represents the second accent color.
  /// - "ACCENT3" : Represents the third accent color.
  /// - "ACCENT4" : Represents the fourth accent color.
  /// - "ACCENT5" : Represents the fifth accent color.
  /// - "ACCENT6" : Represents the sixth accent color.
  /// - "HYPERLINK" : Represents the color to use for hyperlinks.
  /// - "FOLLOWED_HYPERLINK" : Represents the color to use for visited
  /// hyperlinks.
  /// - "TEXT1" : Represents the first text color.
  /// - "BACKGROUND1" : Represents the first background color.
  /// - "TEXT2" : Represents the second text color.
  /// - "BACKGROUND2" : Represents the second background color.
  core.String? themeColor;

  OpaqueColor({
    this.rgbColor,
    this.themeColor,
  });

  OpaqueColor.fromJson(core.Map json_)
      : this(
          rgbColor: json_.containsKey('rgbColor')
              ? RgbColor.fromJson(
                  json_['rgbColor'] as core.Map<core.String, core.dynamic>)
              : null,
          themeColor: json_.containsKey('themeColor')
              ? json_['themeColor'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (rgbColor != null) 'rgbColor': rgbColor!,
        if (themeColor != null) 'themeColor': themeColor!,
      };
}

/// A color that can either be fully opaque or fully transparent.
class OptionalColor {
  /// If set, this will be used as an opaque color.
  ///
  /// If unset, this represents a transparent color.
  OpaqueColor? opaqueColor;

  OptionalColor({
    this.opaqueColor,
  });

  OptionalColor.fromJson(core.Map json_)
      : this(
          opaqueColor: json_.containsKey('opaqueColor')
              ? OpaqueColor.fromJson(
                  json_['opaqueColor'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (opaqueColor != null) 'opaqueColor': opaqueColor!,
      };
}

/// The outline of a PageElement.
///
/// If these fields are unset, they may be inherited from a parent placeholder
/// if it exists. If there is no parent, the fields will default to the value
/// used for new page elements created in the Slides editor, which may depend on
/// the page element kind.
class Outline {
  /// The dash style of the outline.
  /// Possible string values are:
  /// - "DASH_STYLE_UNSPECIFIED" : Unspecified dash style.
  /// - "SOLID" : Solid line. Corresponds to ECMA-376 ST_PresetLineDashVal value
  /// 'solid'. This is the default dash style.
  /// - "DOT" : Dotted line. Corresponds to ECMA-376 ST_PresetLineDashVal value
  /// 'dot'.
  /// - "DASH" : Dashed line. Corresponds to ECMA-376 ST_PresetLineDashVal value
  /// 'dash'.
  /// - "DASH_DOT" : Alternating dashes and dots. Corresponds to ECMA-376
  /// ST_PresetLineDashVal value 'dashDot'.
  /// - "LONG_DASH" : Line with large dashes. Corresponds to ECMA-376
  /// ST_PresetLineDashVal value 'lgDash'.
  /// - "LONG_DASH_DOT" : Alternating large dashes and dots. Corresponds to
  /// ECMA-376 ST_PresetLineDashVal value 'lgDashDot'.
  core.String? dashStyle;

  /// The fill of the outline.
  OutlineFill? outlineFill;

  /// The outline property state.
  ///
  /// Updating the outline on a page element will implicitly update this field
  /// to `RENDERED`, unless another value is specified in the same request. To
  /// have no outline on a page element, set this field to `NOT_RENDERED`. In
  /// this case, any other outline fields set in the same request will be
  /// ignored.
  /// Possible string values are:
  /// - "RENDERED" : If a property's state is RENDERED, then the element has the
  /// corresponding property when rendered on a page. If the element is a
  /// placeholder shape as determined by the placeholder field, and it inherits
  /// from a placeholder shape, the corresponding field may be unset, meaning
  /// that the property value is inherited from a parent placeholder. If the
  /// element does not inherit, then the field will contain the rendered value.
  /// This is the default value.
  /// - "NOT_RENDERED" : If a property's state is NOT_RENDERED, then the element
  /// does not have the corresponding property when rendered on a page. However,
  /// the field may still be set so it can be inherited by child shapes. To
  /// remove a property from a rendered element, set its property_state to
  /// NOT_RENDERED.
  /// - "INHERIT" : If a property's state is INHERIT, then the property state
  /// uses the value of corresponding `property_state` field on the parent
  /// shape. Elements that do not inherit will never have an INHERIT property
  /// state.
  core.String? propertyState;

  /// The thickness of the outline.
  Dimension? weight;

  Outline({
    this.dashStyle,
    this.outlineFill,
    this.propertyState,
    this.weight,
  });

  Outline.fromJson(core.Map json_)
      : this(
          dashStyle: json_.containsKey('dashStyle')
              ? json_['dashStyle'] as core.String
              : null,
          outlineFill: json_.containsKey('outlineFill')
              ? OutlineFill.fromJson(
                  json_['outlineFill'] as core.Map<core.String, core.dynamic>)
              : null,
          propertyState: json_.containsKey('propertyState')
              ? json_['propertyState'] as core.String
              : null,
          weight: json_.containsKey('weight')
              ? Dimension.fromJson(
                  json_['weight'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dashStyle != null) 'dashStyle': dashStyle!,
        if (outlineFill != null) 'outlineFill': outlineFill!,
        if (propertyState != null) 'propertyState': propertyState!,
        if (weight != null) 'weight': weight!,
      };
}

/// The fill of the outline.
class OutlineFill {
  /// Solid color fill.
  SolidFill? solidFill;

  OutlineFill({
    this.solidFill,
  });

  OutlineFill.fromJson(core.Map json_)
      : this(
          solidFill: json_.containsKey('solidFill')
              ? SolidFill.fromJson(
                  json_['solidFill'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (solidFill != null) 'solidFill': solidFill!,
      };
}

/// A page in a presentation.
class Page {
  /// Layout specific properties.
  ///
  /// Only set if page_type = LAYOUT.
  LayoutProperties? layoutProperties;

  /// Master specific properties.
  ///
  /// Only set if page_type = MASTER.
  MasterProperties? masterProperties;

  /// Notes specific properties.
  ///
  /// Only set if page_type = NOTES.
  NotesProperties? notesProperties;

  /// The object ID for this page.
  ///
  /// Object IDs used by Page and PageElement share the same namespace.
  core.String? objectId;

  /// The page elements rendered on the page.
  core.List<PageElement>? pageElements;

  /// The properties of the page.
  PageProperties? pageProperties;

  /// The type of the page.
  /// Possible string values are:
  /// - "SLIDE" : A slide page.
  /// - "MASTER" : A master slide page.
  /// - "LAYOUT" : A layout page.
  /// - "NOTES" : A notes page.
  /// - "NOTES_MASTER" : A notes master page.
  core.String? pageType;

  /// The revision ID of the presentation.
  ///
  /// Can be used in update requests to assert the presentation revision hasn't
  /// changed since the last read operation. Only populated if the user has edit
  /// access to the presentation. The revision ID is not a sequential number but
  /// an opaque string. The format of the revision ID might change over time. A
  /// returned revision ID is only guaranteed to be valid for 24 hours after it
  /// has been returned and cannot be shared across users. If the revision ID is
  /// unchanged between calls, then the presentation has not changed.
  /// Conversely, a changed ID (for the same presentation and user) usually
  /// means the presentation has been updated. However, a changed ID can also be
  /// due to internal factors such as ID format changes.
  ///
  /// Output only.
  core.String? revisionId;

  /// Slide specific properties.
  ///
  /// Only set if page_type = SLIDE.
  SlideProperties? slideProperties;

  Page({
    this.layoutProperties,
    this.masterProperties,
    this.notesProperties,
    this.objectId,
    this.pageElements,
    this.pageProperties,
    this.pageType,
    this.revisionId,
    this.slideProperties,
  });

  Page.fromJson(core.Map json_)
      : this(
          layoutProperties: json_.containsKey('layoutProperties')
              ? LayoutProperties.fromJson(json_['layoutProperties']
                  as core.Map<core.String, core.dynamic>)
              : null,
          masterProperties: json_.containsKey('masterProperties')
              ? MasterProperties.fromJson(json_['masterProperties']
                  as core.Map<core.String, core.dynamic>)
              : null,
          notesProperties: json_.containsKey('notesProperties')
              ? NotesProperties.fromJson(json_['notesProperties']
                  as core.Map<core.String, core.dynamic>)
              : null,
          objectId: json_.containsKey('objectId')
              ? json_['objectId'] as core.String
              : null,
          pageElements: json_.containsKey('pageElements')
              ? (json_['pageElements'] as core.List)
                  .map((value) => PageElement.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          pageProperties: json_.containsKey('pageProperties')
              ? PageProperties.fromJson(json_['pageProperties']
                  as core.Map<core.String, core.dynamic>)
              : null,
          pageType: json_.containsKey('pageType')
              ? json_['pageType'] as core.String
              : null,
          revisionId: json_.containsKey('revisionId')
              ? json_['revisionId'] as core.String
              : null,
          slideProperties: json_.containsKey('slideProperties')
              ? SlideProperties.fromJson(json_['slideProperties']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (layoutProperties != null) 'layoutProperties': layoutProperties!,
        if (masterProperties != null) 'masterProperties': masterProperties!,
        if (notesProperties != null) 'notesProperties': notesProperties!,
        if (objectId != null) 'objectId': objectId!,
        if (pageElements != null) 'pageElements': pageElements!,
        if (pageProperties != null) 'pageProperties': pageProperties!,
        if (pageType != null) 'pageType': pageType!,
        if (revisionId != null) 'revisionId': revisionId!,
        if (slideProperties != null) 'slideProperties': slideProperties!,
      };
}

/// The page background fill.
class PageBackgroundFill {
  /// The background fill property state.
  ///
  /// Updating the fill on a page will implicitly update this field to
  /// `RENDERED`, unless another value is specified in the same request. To have
  /// no fill on a page, set this field to `NOT_RENDERED`. In this case, any
  /// other fill fields set in the same request will be ignored.
  /// Possible string values are:
  /// - "RENDERED" : If a property's state is RENDERED, then the element has the
  /// corresponding property when rendered on a page. If the element is a
  /// placeholder shape as determined by the placeholder field, and it inherits
  /// from a placeholder shape, the corresponding field may be unset, meaning
  /// that the property value is inherited from a parent placeholder. If the
  /// element does not inherit, then the field will contain the rendered value.
  /// This is the default value.
  /// - "NOT_RENDERED" : If a property's state is NOT_RENDERED, then the element
  /// does not have the corresponding property when rendered on a page. However,
  /// the field may still be set so it can be inherited by child shapes. To
  /// remove a property from a rendered element, set its property_state to
  /// NOT_RENDERED.
  /// - "INHERIT" : If a property's state is INHERIT, then the property state
  /// uses the value of corresponding `property_state` field on the parent
  /// shape. Elements that do not inherit will never have an INHERIT property
  /// state.
  core.String? propertyState;

  /// Solid color fill.
  SolidFill? solidFill;

  /// Stretched picture fill.
  StretchedPictureFill? stretchedPictureFill;

  PageBackgroundFill({
    this.propertyState,
    this.solidFill,
    this.stretchedPictureFill,
  });

  PageBackgroundFill.fromJson(core.Map json_)
      : this(
          propertyState: json_.containsKey('propertyState')
              ? json_['propertyState'] as core.String
              : null,
          solidFill: json_.containsKey('solidFill')
              ? SolidFill.fromJson(
                  json_['solidFill'] as core.Map<core.String, core.dynamic>)
              : null,
          stretchedPictureFill: json_.containsKey('stretchedPictureFill')
              ? StretchedPictureFill.fromJson(json_['stretchedPictureFill']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (propertyState != null) 'propertyState': propertyState!,
        if (solidFill != null) 'solidFill': solidFill!,
        if (stretchedPictureFill != null)
          'stretchedPictureFill': stretchedPictureFill!,
      };
}

/// A visual element rendered on a page.
class PageElement {
  /// The description of the page element.
  ///
  /// Combined with title to display alt text. The field is not supported for
  /// Group elements.
  core.String? description;

  /// A collection of page elements joined as a single unit.
  Group? elementGroup;

  /// An image page element.
  Image? image;

  /// A line page element.
  Line? line;

  /// The object ID for this page element.
  ///
  /// Object IDs used by google.apps.slides.v1.Page and
  /// google.apps.slides.v1.PageElement share the same namespace.
  core.String? objectId;

  /// A generic shape.
  Shape? shape;

  /// A linked chart embedded from Google Sheets.
  ///
  /// Unlinked charts are represented as images.
  SheetsChart? sheetsChart;

  /// The size of the page element.
  Size? size;

  /// A table page element.
  Table? table;

  /// The title of the page element.
  ///
  /// Combined with description to display alt text. The field is not supported
  /// for Group elements.
  core.String? title;

  /// The transform of the page element.
  ///
  /// The visual appearance of the page element is determined by its absolute
  /// transform. To compute the absolute transform, preconcatenate a page
  /// element's transform with the transforms of all of its parent groups. If
  /// the page element is not in a group, its absolute transform is the same as
  /// the value in this field. The initial transform for the newly created Group
  /// is always the identity transform.
  AffineTransform? transform;

  /// A video page element.
  Video? video;

  /// A word art page element.
  WordArt? wordArt;

  PageElement({
    this.description,
    this.elementGroup,
    this.image,
    this.line,
    this.objectId,
    this.shape,
    this.sheetsChart,
    this.size,
    this.table,
    this.title,
    this.transform,
    this.video,
    this.wordArt,
  });

  PageElement.fromJson(core.Map json_)
      : this(
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          elementGroup: json_.containsKey('elementGroup')
              ? Group.fromJson(
                  json_['elementGroup'] as core.Map<core.String, core.dynamic>)
              : null,
          image: json_.containsKey('image')
              ? Image.fromJson(
                  json_['image'] as core.Map<core.String, core.dynamic>)
              : null,
          line: json_.containsKey('line')
              ? Line.fromJson(
                  json_['line'] as core.Map<core.String, core.dynamic>)
              : null,
          objectId: json_.containsKey('objectId')
              ? json_['objectId'] as core.String
              : null,
          shape: json_.containsKey('shape')
              ? Shape.fromJson(
                  json_['shape'] as core.Map<core.String, core.dynamic>)
              : null,
          sheetsChart: json_.containsKey('sheetsChart')
              ? SheetsChart.fromJson(
                  json_['sheetsChart'] as core.Map<core.String, core.dynamic>)
              : null,
          size: json_.containsKey('size')
              ? Size.fromJson(
                  json_['size'] as core.Map<core.String, core.dynamic>)
              : null,
          table: json_.containsKey('table')
              ? Table.fromJson(
                  json_['table'] as core.Map<core.String, core.dynamic>)
              : null,
          title:
              json_.containsKey('title') ? json_['title'] as core.String : null,
          transform: json_.containsKey('transform')
              ? AffineTransform.fromJson(
                  json_['transform'] as core.Map<core.String, core.dynamic>)
              : null,
          video: json_.containsKey('video')
              ? Video.fromJson(
                  json_['video'] as core.Map<core.String, core.dynamic>)
              : null,
          wordArt: json_.containsKey('wordArt')
              ? WordArt.fromJson(
                  json_['wordArt'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (elementGroup != null) 'elementGroup': elementGroup!,
        if (image != null) 'image': image!,
        if (line != null) 'line': line!,
        if (objectId != null) 'objectId': objectId!,
        if (shape != null) 'shape': shape!,
        if (sheetsChart != null) 'sheetsChart': sheetsChart!,
        if (size != null) 'size': size!,
        if (table != null) 'table': table!,
        if (title != null) 'title': title!,
        if (transform != null) 'transform': transform!,
        if (video != null) 'video': video!,
        if (wordArt != null) 'wordArt': wordArt!,
      };
}

/// Common properties for a page element.
///
/// Note: When you initially create a PageElement, the API may modify the values
/// of both `size` and `transform`, but the visual size will be unchanged.
class PageElementProperties {
  /// The object ID of the page where the element is located.
  core.String? pageObjectId;

  /// The size of the element.
  Size? size;

  /// The transform for the element.
  AffineTransform? transform;

  PageElementProperties({
    this.pageObjectId,
    this.size,
    this.transform,
  });

  PageElementProperties.fromJson(core.Map json_)
      : this(
          pageObjectId: json_.containsKey('pageObjectId')
              ? json_['pageObjectId'] as core.String
              : null,
          size: json_.containsKey('size')
              ? Size.fromJson(
                  json_['size'] as core.Map<core.String, core.dynamic>)
              : null,
          transform: json_.containsKey('transform')
              ? AffineTransform.fromJson(
                  json_['transform'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (pageObjectId != null) 'pageObjectId': pageObjectId!,
        if (size != null) 'size': size!,
        if (transform != null) 'transform': transform!,
      };
}

/// The properties of the Page.
///
/// The page will inherit properties from the parent page. Depending on the page
/// type the hierarchy is defined in either SlideProperties or LayoutProperties.
class PageProperties {
  /// The color scheme of the page.
  ///
  /// If unset, the color scheme is inherited from a parent page. If the page
  /// has no parent, the color scheme uses a default Slides color scheme,
  /// matching the defaults in the Slides editor. Only the concrete colors of
  /// the first 12 ThemeColorTypes are editable. In addition, only the color
  /// scheme on `Master` pages can be updated. To update the field, a color
  /// scheme containing mappings from all the first 12 ThemeColorTypes to their
  /// concrete colors must be provided. Colors for the remaining ThemeColorTypes
  /// will be ignored.
  ColorScheme? colorScheme;

  /// The background fill of the page.
  ///
  /// If unset, the background fill is inherited from a parent page if it
  /// exists. If the page has no parent, then the background fill defaults to
  /// the corresponding fill in the Slides editor.
  PageBackgroundFill? pageBackgroundFill;

  PageProperties({
    this.colorScheme,
    this.pageBackgroundFill,
  });

  PageProperties.fromJson(core.Map json_)
      : this(
          colorScheme: json_.containsKey('colorScheme')
              ? ColorScheme.fromJson(
                  json_['colorScheme'] as core.Map<core.String, core.dynamic>)
              : null,
          pageBackgroundFill: json_.containsKey('pageBackgroundFill')
              ? PageBackgroundFill.fromJson(json_['pageBackgroundFill']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (colorScheme != null) 'colorScheme': colorScheme!,
        if (pageBackgroundFill != null)
          'pageBackgroundFill': pageBackgroundFill!,
      };
}

/// A TextElement kind that represents the beginning of a new paragraph.
class ParagraphMarker {
  /// The bullet for this paragraph.
  ///
  /// If not present, the paragraph does not belong to a list.
  Bullet? bullet;

  /// The paragraph's style
  ParagraphStyle? style;

  ParagraphMarker({
    this.bullet,
    this.style,
  });

  ParagraphMarker.fromJson(core.Map json_)
      : this(
          bullet: json_.containsKey('bullet')
              ? Bullet.fromJson(
                  json_['bullet'] as core.Map<core.String, core.dynamic>)
              : null,
          style: json_.containsKey('style')
              ? ParagraphStyle.fromJson(
                  json_['style'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bullet != null) 'bullet': bullet!,
        if (style != null) 'style': style!,
      };
}

/// Styles that apply to a whole paragraph.
///
/// If this text is contained in a shape with a parent placeholder, then these
/// paragraph styles may be inherited from the parent. Which paragraph styles
/// are inherited depend on the nesting level of lists: * A paragraph not in a
/// list will inherit its paragraph style from the paragraph at the 0 nesting
/// level of the list inside the parent placeholder. * A paragraph in a list
/// will inherit its paragraph style from the paragraph at its corresponding
/// nesting level of the list inside the parent placeholder. Inherited paragraph
/// styles are represented as unset fields in this message.
class ParagraphStyle {
  /// The text alignment for this paragraph.
  /// Possible string values are:
  /// - "ALIGNMENT_UNSPECIFIED" : The paragraph alignment is inherited from the
  /// parent.
  /// - "START" : The paragraph is aligned to the start of the line.
  /// Left-aligned for LTR text, right-aligned otherwise.
  /// - "CENTER" : The paragraph is centered.
  /// - "END" : The paragraph is aligned to the end of the line. Right-aligned
  /// for LTR text, left-aligned otherwise.
  /// - "JUSTIFIED" : The paragraph is justified.
  core.String? alignment;

  /// The text direction of this paragraph.
  ///
  /// If unset, the value defaults to LEFT_TO_RIGHT since text direction is not
  /// inherited.
  /// Possible string values are:
  /// - "TEXT_DIRECTION_UNSPECIFIED" : The text direction is inherited from the
  /// parent.
  /// - "LEFT_TO_RIGHT" : The text goes from left to right.
  /// - "RIGHT_TO_LEFT" : The text goes from right to left.
  core.String? direction;

  /// The amount indentation for the paragraph on the side that corresponds to
  /// the end of the text, based on the current text direction.
  ///
  /// If unset, the value is inherited from the parent.
  Dimension? indentEnd;

  /// The amount of indentation for the start of the first line of the
  /// paragraph.
  ///
  /// If unset, the value is inherited from the parent.
  Dimension? indentFirstLine;

  /// The amount indentation for the paragraph on the side that corresponds to
  /// the start of the text, based on the current text direction.
  ///
  /// If unset, the value is inherited from the parent.
  Dimension? indentStart;

  /// The amount of space between lines, as a percentage of normal, where normal
  /// is represented as 100.0.
  ///
  /// If unset, the value is inherited from the parent.
  core.double? lineSpacing;

  /// The amount of extra space above the paragraph.
  ///
  /// If unset, the value is inherited from the parent.
  Dimension? spaceAbove;

  /// The amount of extra space below the paragraph.
  ///
  /// If unset, the value is inherited from the parent.
  Dimension? spaceBelow;

  /// The spacing mode for the paragraph.
  /// Possible string values are:
  /// - "SPACING_MODE_UNSPECIFIED" : The spacing mode is inherited from the
  /// parent.
  /// - "NEVER_COLLAPSE" : Paragraph spacing is always rendered.
  /// - "COLLAPSE_LISTS" : Paragraph spacing is skipped between list elements.
  core.String? spacingMode;

  ParagraphStyle({
    this.alignment,
    this.direction,
    this.indentEnd,
    this.indentFirstLine,
    this.indentStart,
    this.lineSpacing,
    this.spaceAbove,
    this.spaceBelow,
    this.spacingMode,
  });

  ParagraphStyle.fromJson(core.Map json_)
      : this(
          alignment: json_.containsKey('alignment')
              ? json_['alignment'] as core.String
              : null,
          direction: json_.containsKey('direction')
              ? json_['direction'] as core.String
              : null,
          indentEnd: json_.containsKey('indentEnd')
              ? Dimension.fromJson(
                  json_['indentEnd'] as core.Map<core.String, core.dynamic>)
              : null,
          indentFirstLine: json_.containsKey('indentFirstLine')
              ? Dimension.fromJson(json_['indentFirstLine']
                  as core.Map<core.String, core.dynamic>)
              : null,
          indentStart: json_.containsKey('indentStart')
              ? Dimension.fromJson(
                  json_['indentStart'] as core.Map<core.String, core.dynamic>)
              : null,
          lineSpacing: json_.containsKey('lineSpacing')
              ? (json_['lineSpacing'] as core.num).toDouble()
              : null,
          spaceAbove: json_.containsKey('spaceAbove')
              ? Dimension.fromJson(
                  json_['spaceAbove'] as core.Map<core.String, core.dynamic>)
              : null,
          spaceBelow: json_.containsKey('spaceBelow')
              ? Dimension.fromJson(
                  json_['spaceBelow'] as core.Map<core.String, core.dynamic>)
              : null,
          spacingMode: json_.containsKey('spacingMode')
              ? json_['spacingMode'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (alignment != null) 'alignment': alignment!,
        if (direction != null) 'direction': direction!,
        if (indentEnd != null) 'indentEnd': indentEnd!,
        if (indentFirstLine != null) 'indentFirstLine': indentFirstLine!,
        if (indentStart != null) 'indentStart': indentStart!,
        if (lineSpacing != null) 'lineSpacing': lineSpacing!,
        if (spaceAbove != null) 'spaceAbove': spaceAbove!,
        if (spaceBelow != null) 'spaceBelow': spaceBelow!,
        if (spacingMode != null) 'spacingMode': spacingMode!,
      };
}

/// The placeholder information that uniquely identifies a placeholder shape.
class Placeholder {
  /// The index of the placeholder.
  ///
  /// If the same placeholder types are present in the same page, they would
  /// have different index values.
  core.int? index;

  /// The object ID of this shape's parent placeholder.
  ///
  /// If unset, the parent placeholder shape does not exist, so the shape does
  /// not inherit properties from any other shape.
  core.String? parentObjectId;

  /// The type of the placeholder.
  /// Possible string values are:
  /// - "NONE" : Default value, signifies it is not a placeholder.
  /// - "BODY" : Body text.
  /// - "CHART" : Chart or graph.
  /// - "CLIP_ART" : Clip art image.
  /// - "CENTERED_TITLE" : Title centered.
  /// - "DIAGRAM" : Diagram.
  /// - "DATE_AND_TIME" : Date and time.
  /// - "FOOTER" : Footer text.
  /// - "HEADER" : Header text.
  /// - "MEDIA" : Multimedia.
  /// - "OBJECT" : Any content type.
  /// - "PICTURE" : Picture.
  /// - "SLIDE_NUMBER" : Number of a slide.
  /// - "SUBTITLE" : Subtitle.
  /// - "TABLE" : Table.
  /// - "TITLE" : Slide title.
  /// - "SLIDE_IMAGE" : Slide image.
  core.String? type;

  Placeholder({
    this.index,
    this.parentObjectId,
    this.type,
  });

  Placeholder.fromJson(core.Map json_)
      : this(
          index: json_.containsKey('index') ? json_['index'] as core.int : null,
          parentObjectId: json_.containsKey('parentObjectId')
              ? json_['parentObjectId'] as core.String
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (index != null) 'index': index!,
        if (parentObjectId != null) 'parentObjectId': parentObjectId!,
        if (type != null) 'type': type!,
      };
}

/// A Google Slides presentation.
class Presentation {
  /// The layouts in the presentation.
  ///
  /// A layout is a template that determines how content is arranged and styled
  /// on the slides that inherit from that layout.
  core.List<Page>? layouts;

  /// The locale of the presentation, as an IETF BCP 47 language tag.
  core.String? locale;

  /// The slide masters in the presentation.
  ///
  /// A slide master contains all common page elements and the common properties
  /// for a set of layouts. They serve three purposes: - Placeholder shapes on a
  /// master contain the default text styles and shape properties of all
  /// placeholder shapes on pages that use that master. - The master page
  /// properties define the common page properties inherited by its layouts. -
  /// Any other shapes on the master slide appear on all slides using that
  /// master, regardless of their layout.
  core.List<Page>? masters;

  /// The notes master in the presentation.
  ///
  /// It serves three purposes: - Placeholder shapes on a notes master contain
  /// the default text styles and shape properties of all placeholder shapes on
  /// notes pages. Specifically, a `SLIDE_IMAGE` placeholder shape contains the
  /// slide thumbnail, and a `BODY` placeholder shape contains the speaker
  /// notes. - The notes master page properties define the common page
  /// properties inherited by all notes pages. - Any other shapes on the notes
  /// master appear on all notes pages. The notes master is read-only.
  Page? notesMaster;

  /// The size of pages in the presentation.
  Size? pageSize;

  /// The ID of the presentation.
  core.String? presentationId;

  /// The revision ID of the presentation.
  ///
  /// Can be used in update requests to assert the presentation revision hasn't
  /// changed since the last read operation. Only populated if the user has edit
  /// access to the presentation. The revision ID is not a sequential number but
  /// a nebulous string. The format of the revision ID may change over time, so
  /// it should be treated opaquely. A returned revision ID is only guaranteed
  /// to be valid for 24 hours after it has been returned and cannot be shared
  /// across users. If the revision ID is unchanged between calls, then the
  /// presentation has not changed. Conversely, a changed ID (for the same
  /// presentation and user) usually means the presentation has been updated.
  /// However, a changed ID can also be due to internal factors such as ID
  /// format changes.
  ///
  /// Output only.
  core.String? revisionId;

  /// The slides in the presentation.
  ///
  /// A slide inherits properties from a slide layout.
  core.List<Page>? slides;

  /// The title of the presentation.
  core.String? title;

  Presentation({
    this.layouts,
    this.locale,
    this.masters,
    this.notesMaster,
    this.pageSize,
    this.presentationId,
    this.revisionId,
    this.slides,
    this.title,
  });

  Presentation.fromJson(core.Map json_)
      : this(
          layouts: json_.containsKey('layouts')
              ? (json_['layouts'] as core.List)
                  .map((value) => Page.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          locale: json_.containsKey('locale')
              ? json_['locale'] as core.String
              : null,
          masters: json_.containsKey('masters')
              ? (json_['masters'] as core.List)
                  .map((value) => Page.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          notesMaster: json_.containsKey('notesMaster')
              ? Page.fromJson(
                  json_['notesMaster'] as core.Map<core.String, core.dynamic>)
              : null,
          pageSize: json_.containsKey('pageSize')
              ? Size.fromJson(
                  json_['pageSize'] as core.Map<core.String, core.dynamic>)
              : null,
          presentationId: json_.containsKey('presentationId')
              ? json_['presentationId'] as core.String
              : null,
          revisionId: json_.containsKey('revisionId')
              ? json_['revisionId'] as core.String
              : null,
          slides: json_.containsKey('slides')
              ? (json_['slides'] as core.List)
                  .map((value) => Page.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          title:
              json_.containsKey('title') ? json_['title'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (layouts != null) 'layouts': layouts!,
        if (locale != null) 'locale': locale!,
        if (masters != null) 'masters': masters!,
        if (notesMaster != null) 'notesMaster': notesMaster!,
        if (pageSize != null) 'pageSize': pageSize!,
        if (presentationId != null) 'presentationId': presentationId!,
        if (revisionId != null) 'revisionId': revisionId!,
        if (slides != null) 'slides': slides!,
        if (title != null) 'title': title!,
      };
}

/// Specifies a contiguous range of an indexed collection, such as characters in
/// text.
class Range {
  /// The optional zero-based index of the end of the collection.
  ///
  /// Required for `FIXED_RANGE` ranges.
  core.int? endIndex;

  /// The optional zero-based index of the beginning of the collection.
  ///
  /// Required for `FIXED_RANGE` and `FROM_START_INDEX` ranges.
  core.int? startIndex;

  /// The type of range.
  /// Possible string values are:
  /// - "RANGE_TYPE_UNSPECIFIED" : Unspecified range type. This value must not
  /// be used.
  /// - "FIXED_RANGE" : A fixed range. Both the `start_index` and `end_index`
  /// must be specified.
  /// - "FROM_START_INDEX" : Starts the range at `start_index` and continues
  /// until the end of the collection. The `end_index` must not be specified.
  /// - "ALL" : Sets the range to be the whole length of the collection. Both
  /// the `start_index` and the `end_index` must not be specified.
  core.String? type;

  Range({
    this.endIndex,
    this.startIndex,
    this.type,
  });

  Range.fromJson(core.Map json_)
      : this(
          endIndex: json_.containsKey('endIndex')
              ? json_['endIndex'] as core.int
              : null,
          startIndex: json_.containsKey('startIndex')
              ? json_['startIndex'] as core.int
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (endIndex != null) 'endIndex': endIndex!,
        if (startIndex != null) 'startIndex': startIndex!,
        if (type != null) 'type': type!,
      };
}

/// A recolor effect applied on an image.
class Recolor {
  /// The name of the recolor effect.
  ///
  /// The name is determined from the `recolor_stops` by matching the gradient
  /// against the colors in the page's current color scheme. This property is
  /// read-only.
  /// Possible string values are:
  /// - "NONE" : No recolor effect. The default value.
  /// - "LIGHT1" : A recolor effect that lightens the image using the page's
  /// first available color from its color scheme.
  /// - "LIGHT2" : A recolor effect that lightens the image using the page's
  /// second available color from its color scheme.
  /// - "LIGHT3" : A recolor effect that lightens the image using the page's
  /// third available color from its color scheme.
  /// - "LIGHT4" : A recolor effect that lightens the image using the page's
  /// forth available color from its color scheme.
  /// - "LIGHT5" : A recolor effect that lightens the image using the page's
  /// fifth available color from its color scheme.
  /// - "LIGHT6" : A recolor effect that lightens the image using the page's
  /// sixth available color from its color scheme.
  /// - "LIGHT7" : A recolor effect that lightens the image using the page's
  /// seventh available color from its color scheme.
  /// - "LIGHT8" : A recolor effect that lightens the image using the page's
  /// eighth available color from its color scheme.
  /// - "LIGHT9" : A recolor effect that lightens the image using the page's
  /// ninth available color from its color scheme.
  /// - "LIGHT10" : A recolor effect that lightens the image using the page's
  /// tenth available color from its color scheme.
  /// - "DARK1" : A recolor effect that darkens the image using the page's first
  /// available color from its color scheme.
  /// - "DARK2" : A recolor effect that darkens the image using the page's
  /// second available color from its color scheme.
  /// - "DARK3" : A recolor effect that darkens the image using the page's third
  /// available color from its color scheme.
  /// - "DARK4" : A recolor effect that darkens the image using the page's
  /// fourth available color from its color scheme.
  /// - "DARK5" : A recolor effect that darkens the image using the page's fifth
  /// available color from its color scheme.
  /// - "DARK6" : A recolor effect that darkens the image using the page's sixth
  /// available color from its color scheme.
  /// - "DARK7" : A recolor effect that darkens the image using the page's
  /// seventh available color from its color scheme.
  /// - "DARK8" : A recolor effect that darkens the image using the page's
  /// eighth available color from its color scheme.
  /// - "DARK9" : A recolor effect that darkens the image using the page's ninth
  /// available color from its color scheme.
  /// - "DARK10" : A recolor effect that darkens the image using the page's
  /// tenth available color from its color scheme.
  /// - "GRAYSCALE" : A recolor effect that recolors the image to grayscale.
  /// - "NEGATIVE" : A recolor effect that recolors the image to negative
  /// grayscale.
  /// - "SEPIA" : A recolor effect that recolors the image using the sepia
  /// color.
  /// - "CUSTOM" : Custom recolor effect. Refer to `recolor_stops` for the
  /// concrete gradient.
  core.String? name;

  /// The recolor effect is represented by a gradient, which is a list of color
  /// stops.
  ///
  /// The colors in the gradient will replace the corresponding colors at the
  /// same position in the color palette and apply to the image. This property
  /// is read-only.
  core.List<ColorStop>? recolorStops;

  Recolor({
    this.name,
    this.recolorStops,
  });

  Recolor.fromJson(core.Map json_)
      : this(
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          recolorStops: json_.containsKey('recolorStops')
              ? (json_['recolorStops'] as core.List)
                  .map((value) => ColorStop.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (recolorStops != null) 'recolorStops': recolorStops!,
      };
}

/// Refreshes an embedded Google Sheets chart by replacing it with the latest
/// version of the chart from Google Sheets.
///
/// NOTE: Refreshing charts requires at least one of the spreadsheets.readonly,
/// spreadsheets, drive.readonly, or drive OAuth scopes.
class RefreshSheetsChartRequest {
  /// The object ID of the chart to refresh.
  core.String? objectId;

  RefreshSheetsChartRequest({
    this.objectId,
  });

  RefreshSheetsChartRequest.fromJson(core.Map json_)
      : this(
          objectId: json_.containsKey('objectId')
              ? json_['objectId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (objectId != null) 'objectId': objectId!,
      };
}

/// Replaces all shapes that match the given criteria with the provided image.
///
/// The images replacing the shapes are rectangular after being inserted into
/// the presentation and do not take on the forms of the shapes.
class ReplaceAllShapesWithImageRequest {
  /// If set, this request will replace all of the shapes that contain the given
  /// text.
  SubstringMatchCriteria? containsText;

  /// The image replace method.
  ///
  /// If you specify both a `replace_method` and an `image_replace_method`, the
  /// `image_replace_method` takes precedence. If you do not specify a value for
  /// `image_replace_method`, but specify a value for `replace_method`, then the
  /// specified `replace_method` value is used. If you do not specify either,
  /// then CENTER_INSIDE is used.
  /// Possible string values are:
  /// - "IMAGE_REPLACE_METHOD_UNSPECIFIED" : Unspecified image replace method.
  /// This value must not be used.
  /// - "CENTER_INSIDE" : Scales and centers the image to fit within the bounds
  /// of the original shape and maintains the image's aspect ratio. The rendered
  /// size of the image may be smaller than the size of the shape. This is the
  /// default method when one is not specified.
  /// - "CENTER_CROP" : Scales and centers the image to fill the bounds of the
  /// original shape. The image may be cropped in order to fill the shape. The
  /// rendered size of the image will be the same as the original shape.
  core.String? imageReplaceMethod;

  /// The image URL.
  ///
  /// The image is fetched once at insertion time and a copy is stored for
  /// display inside the presentation. Images must be less than 50MB in size,
  /// cannot exceed 25 megapixels, and must be in one of PNG, JPEG, or GIF
  /// format. The provided URL can be at most 2 kB in length. The URL itself is
  /// saved with the image, and exposed via the Image.source_url field.
  core.String? imageUrl;

  /// If non-empty, limits the matches to page elements only on the given pages.
  ///
  /// Returns a 400 bad request error if given the page object ID of a notes
  /// page or a notes master, or if a page with that object ID doesn't exist in
  /// the presentation.
  core.List<core.String>? pageObjectIds;

  /// The replace method.
  ///
  /// *Deprecated*: use `image_replace_method` instead. If you specify both a
  /// `replace_method` and an `image_replace_method`, the `image_replace_method`
  /// takes precedence.
  /// Possible string values are:
  /// - "CENTER_INSIDE" : Scales and centers the image to fit within the bounds
  /// of the original shape and maintains the image's aspect ratio. The rendered
  /// size of the image may be smaller than the size of the shape. This is the
  /// default method when one is not specified.
  /// - "CENTER_CROP" : Scales and centers the image to fill the bounds of the
  /// original shape. The image may be cropped in order to fill the shape. The
  /// rendered size of the image will be the same as that of the original shape.
  core.String? replaceMethod;

  ReplaceAllShapesWithImageRequest({
    this.containsText,
    this.imageReplaceMethod,
    this.imageUrl,
    this.pageObjectIds,
    this.replaceMethod,
  });

  ReplaceAllShapesWithImageRequest.fromJson(core.Map json_)
      : this(
          containsText: json_.containsKey('containsText')
              ? SubstringMatchCriteria.fromJson(
                  json_['containsText'] as core.Map<core.String, core.dynamic>)
              : null,
          imageReplaceMethod: json_.containsKey('imageReplaceMethod')
              ? json_['imageReplaceMethod'] as core.String
              : null,
          imageUrl: json_.containsKey('imageUrl')
              ? json_['imageUrl'] as core.String
              : null,
          pageObjectIds: json_.containsKey('pageObjectIds')
              ? (json_['pageObjectIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          replaceMethod: json_.containsKey('replaceMethod')
              ? json_['replaceMethod'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (containsText != null) 'containsText': containsText!,
        if (imageReplaceMethod != null)
          'imageReplaceMethod': imageReplaceMethod!,
        if (imageUrl != null) 'imageUrl': imageUrl!,
        if (pageObjectIds != null) 'pageObjectIds': pageObjectIds!,
        if (replaceMethod != null) 'replaceMethod': replaceMethod!,
      };
}

/// The result of replacing shapes with an image.
class ReplaceAllShapesWithImageResponse {
  /// The number of shapes replaced with images.
  core.int? occurrencesChanged;

  ReplaceAllShapesWithImageResponse({
    this.occurrencesChanged,
  });

  ReplaceAllShapesWithImageResponse.fromJson(core.Map json_)
      : this(
          occurrencesChanged: json_.containsKey('occurrencesChanged')
              ? json_['occurrencesChanged'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (occurrencesChanged != null)
          'occurrencesChanged': occurrencesChanged!,
      };
}

/// Replaces all shapes that match the given criteria with the provided Google
/// Sheets chart.
///
/// The chart will be scaled and centered to fit within the bounds of the
/// original shape. NOTE: Replacing shapes with a chart requires at least one of
/// the spreadsheets.readonly, spreadsheets, drive.readonly, or drive OAuth
/// scopes.
class ReplaceAllShapesWithSheetsChartRequest {
  /// The ID of the specific chart in the Google Sheets spreadsheet.
  core.int? chartId;

  /// The criteria that the shapes must match in order to be replaced.
  ///
  /// The request will replace all of the shapes that contain the given text.
  SubstringMatchCriteria? containsText;

  /// The mode with which the chart is linked to the source spreadsheet.
  ///
  /// When not specified, the chart will be an image that is not linked.
  /// Possible string values are:
  /// - "NOT_LINKED_IMAGE" : The chart is not associated with the source
  /// spreadsheet and cannot be updated. A chart that is not linked will be
  /// inserted as an image.
  /// - "LINKED" : Linking the chart allows it to be updated, and other
  /// collaborators will see a link to the spreadsheet.
  core.String? linkingMode;

  /// If non-empty, limits the matches to page elements only on the given pages.
  ///
  /// Returns a 400 bad request error if given the page object ID of a notes
  /// page or a notes master, or if a page with that object ID doesn't exist in
  /// the presentation.
  core.List<core.String>? pageObjectIds;

  /// The ID of the Google Sheets spreadsheet that contains the chart.
  core.String? spreadsheetId;

  ReplaceAllShapesWithSheetsChartRequest({
    this.chartId,
    this.containsText,
    this.linkingMode,
    this.pageObjectIds,
    this.spreadsheetId,
  });

  ReplaceAllShapesWithSheetsChartRequest.fromJson(core.Map json_)
      : this(
          chartId: json_.containsKey('chartId')
              ? json_['chartId'] as core.int
              : null,
          containsText: json_.containsKey('containsText')
              ? SubstringMatchCriteria.fromJson(
                  json_['containsText'] as core.Map<core.String, core.dynamic>)
              : null,
          linkingMode: json_.containsKey('linkingMode')
              ? json_['linkingMode'] as core.String
              : null,
          pageObjectIds: json_.containsKey('pageObjectIds')
              ? (json_['pageObjectIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          spreadsheetId: json_.containsKey('spreadsheetId')
              ? json_['spreadsheetId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (chartId != null) 'chartId': chartId!,
        if (containsText != null) 'containsText': containsText!,
        if (linkingMode != null) 'linkingMode': linkingMode!,
        if (pageObjectIds != null) 'pageObjectIds': pageObjectIds!,
        if (spreadsheetId != null) 'spreadsheetId': spreadsheetId!,
      };
}

/// The result of replacing shapes with a Google Sheets chart.
class ReplaceAllShapesWithSheetsChartResponse {
  /// The number of shapes replaced with charts.
  core.int? occurrencesChanged;

  ReplaceAllShapesWithSheetsChartResponse({
    this.occurrencesChanged,
  });

  ReplaceAllShapesWithSheetsChartResponse.fromJson(core.Map json_)
      : this(
          occurrencesChanged: json_.containsKey('occurrencesChanged')
              ? json_['occurrencesChanged'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (occurrencesChanged != null)
          'occurrencesChanged': occurrencesChanged!,
      };
}

/// Replaces all instances of text matching a criteria with replace text.
class ReplaceAllTextRequest {
  /// Finds text in a shape matching this substring.
  SubstringMatchCriteria? containsText;

  /// If non-empty, limits the matches to page elements only on the given pages.
  ///
  /// Returns a 400 bad request error if given the page object ID of a notes
  /// master, or if a page with that object ID doesn't exist in the
  /// presentation.
  core.List<core.String>? pageObjectIds;

  /// The text that will replace the matched text.
  core.String? replaceText;

  ReplaceAllTextRequest({
    this.containsText,
    this.pageObjectIds,
    this.replaceText,
  });

  ReplaceAllTextRequest.fromJson(core.Map json_)
      : this(
          containsText: json_.containsKey('containsText')
              ? SubstringMatchCriteria.fromJson(
                  json_['containsText'] as core.Map<core.String, core.dynamic>)
              : null,
          pageObjectIds: json_.containsKey('pageObjectIds')
              ? (json_['pageObjectIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          replaceText: json_.containsKey('replaceText')
              ? json_['replaceText'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (containsText != null) 'containsText': containsText!,
        if (pageObjectIds != null) 'pageObjectIds': pageObjectIds!,
        if (replaceText != null) 'replaceText': replaceText!,
      };
}

/// The result of replacing text.
typedef ReplaceAllTextResponse = $ReplaceAllTextResponse;

/// Replaces an existing image with a new image.
///
/// Replacing an image removes some image effects from the existing image.
class ReplaceImageRequest {
  /// The ID of the existing image that will be replaced.
  ///
  /// The ID can be retrieved from the response of a get request.
  core.String? imageObjectId;

  /// The replacement method.
  /// Possible string values are:
  /// - "IMAGE_REPLACE_METHOD_UNSPECIFIED" : Unspecified image replace method.
  /// This value must not be used.
  /// - "CENTER_INSIDE" : Scales and centers the image to fit within the bounds
  /// of the original shape and maintains the image's aspect ratio. The rendered
  /// size of the image may be smaller than the size of the shape. This is the
  /// default method when one is not specified.
  /// - "CENTER_CROP" : Scales and centers the image to fill the bounds of the
  /// original shape. The image may be cropped in order to fill the shape. The
  /// rendered size of the image will be the same as the original shape.
  core.String? imageReplaceMethod;

  /// The image URL.
  ///
  /// The image is fetched once at insertion time and a copy is stored for
  /// display inside the presentation. Images must be less than 50MB, cannot
  /// exceed 25 megapixels, and must be in PNG, JPEG, or GIF format. The
  /// provided URL can't surpass 2 KB in length. The URL is saved with the
  /// image, and exposed through the Image.source_url field.
  core.String? url;

  ReplaceImageRequest({
    this.imageObjectId,
    this.imageReplaceMethod,
    this.url,
  });

  ReplaceImageRequest.fromJson(core.Map json_)
      : this(
          imageObjectId: json_.containsKey('imageObjectId')
              ? json_['imageObjectId'] as core.String
              : null,
          imageReplaceMethod: json_.containsKey('imageReplaceMethod')
              ? json_['imageReplaceMethod'] as core.String
              : null,
          url: json_.containsKey('url') ? json_['url'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (imageObjectId != null) 'imageObjectId': imageObjectId!,
        if (imageReplaceMethod != null)
          'imageReplaceMethod': imageReplaceMethod!,
        if (url != null) 'url': url!,
      };
}

/// A single kind of update to apply to a presentation.
class Request {
  /// Creates an image.
  CreateImageRequest? createImage;

  /// Creates a line.
  CreateLineRequest? createLine;

  /// Creates bullets for paragraphs.
  CreateParagraphBulletsRequest? createParagraphBullets;

  /// Creates a new shape.
  CreateShapeRequest? createShape;

  /// Creates an embedded Google Sheets chart.
  CreateSheetsChartRequest? createSheetsChart;

  /// Creates a new slide.
  CreateSlideRequest? createSlide;

  /// Creates a new table.
  CreateTableRequest? createTable;

  /// Creates a video.
  CreateVideoRequest? createVideo;

  /// Deletes a page or page element from the presentation.
  DeleteObjectRequest? deleteObject;

  /// Deletes bullets from paragraphs.
  DeleteParagraphBulletsRequest? deleteParagraphBullets;

  /// Deletes a column from a table.
  DeleteTableColumnRequest? deleteTableColumn;

  /// Deletes a row from a table.
  DeleteTableRowRequest? deleteTableRow;

  /// Deletes text from a shape or a table cell.
  DeleteTextRequest? deleteText;

  /// Duplicates a slide or page element.
  DuplicateObjectRequest? duplicateObject;

  /// Groups objects, such as page elements.
  GroupObjectsRequest? groupObjects;

  /// Inserts columns into a table.
  InsertTableColumnsRequest? insertTableColumns;

  /// Inserts rows into a table.
  InsertTableRowsRequest? insertTableRows;

  /// Inserts text into a shape or table cell.
  InsertTextRequest? insertText;

  /// Merges cells in a Table.
  MergeTableCellsRequest? mergeTableCells;

  /// Refreshes a Google Sheets chart.
  RefreshSheetsChartRequest? refreshSheetsChart;

  /// Replaces all shapes matching some criteria with an image.
  ReplaceAllShapesWithImageRequest? replaceAllShapesWithImage;

  /// Replaces all shapes matching some criteria with a Google Sheets chart.
  ReplaceAllShapesWithSheetsChartRequest? replaceAllShapesWithSheetsChart;

  /// Replaces all instances of specified text.
  ReplaceAllTextRequest? replaceAllText;

  /// Replaces an existing image with a new image.
  ReplaceImageRequest? replaceImage;

  /// Reroutes a line such that it's connected at the two closest connection
  /// sites on the connected page elements.
  RerouteLineRequest? rerouteLine;

  /// Ungroups objects, such as groups.
  UngroupObjectsRequest? ungroupObjects;

  /// Unmerges cells in a Table.
  UnmergeTableCellsRequest? unmergeTableCells;

  /// Updates the properties of an Image.
  UpdateImagePropertiesRequest? updateImageProperties;

  /// Updates the category of a line.
  UpdateLineCategoryRequest? updateLineCategory;

  /// Updates the properties of a Line.
  UpdateLinePropertiesRequest? updateLineProperties;

  /// Updates the alt text title and/or description of a page element.
  UpdatePageElementAltTextRequest? updatePageElementAltText;

  /// Updates the transform of a page element.
  UpdatePageElementTransformRequest? updatePageElementTransform;

  /// Updates the Z-order of page elements.
  UpdatePageElementsZOrderRequest? updatePageElementsZOrder;

  /// Updates the properties of a Page.
  UpdatePagePropertiesRequest? updatePageProperties;

  /// Updates the styling of paragraphs within a Shape or Table.
  UpdateParagraphStyleRequest? updateParagraphStyle;

  /// Updates the properties of a Shape.
  UpdateShapePropertiesRequest? updateShapeProperties;

  /// Updates the properties of a Slide
  UpdateSlidePropertiesRequest? updateSlideProperties;

  /// Updates the position of a set of slides in the presentation.
  UpdateSlidesPositionRequest? updateSlidesPosition;

  /// Updates the properties of the table borders in a Table.
  UpdateTableBorderPropertiesRequest? updateTableBorderProperties;

  /// Updates the properties of a TableCell.
  UpdateTableCellPropertiesRequest? updateTableCellProperties;

  /// Updates the properties of a Table column.
  UpdateTableColumnPropertiesRequest? updateTableColumnProperties;

  /// Updates the properties of a Table row.
  UpdateTableRowPropertiesRequest? updateTableRowProperties;

  /// Updates the styling of text within a Shape or Table.
  UpdateTextStyleRequest? updateTextStyle;

  /// Updates the properties of a Video.
  UpdateVideoPropertiesRequest? updateVideoProperties;

  Request({
    this.createImage,
    this.createLine,
    this.createParagraphBullets,
    this.createShape,
    this.createSheetsChart,
    this.createSlide,
    this.createTable,
    this.createVideo,
    this.deleteObject,
    this.deleteParagraphBullets,
    this.deleteTableColumn,
    this.deleteTableRow,
    this.deleteText,
    this.duplicateObject,
    this.groupObjects,
    this.insertTableColumns,
    this.insertTableRows,
    this.insertText,
    this.mergeTableCells,
    this.refreshSheetsChart,
    this.replaceAllShapesWithImage,
    this.replaceAllShapesWithSheetsChart,
    this.replaceAllText,
    this.replaceImage,
    this.rerouteLine,
    this.ungroupObjects,
    this.unmergeTableCells,
    this.updateImageProperties,
    this.updateLineCategory,
    this.updateLineProperties,
    this.updatePageElementAltText,
    this.updatePageElementTransform,
    this.updatePageElementsZOrder,
    this.updatePageProperties,
    this.updateParagraphStyle,
    this.updateShapeProperties,
    this.updateSlideProperties,
    this.updateSlidesPosition,
    this.updateTableBorderProperties,
    this.updateTableCellProperties,
    this.updateTableColumnProperties,
    this.updateTableRowProperties,
    this.updateTextStyle,
    this.updateVideoProperties,
  });

  Request.fromJson(core.Map json_)
      : this(
          createImage: json_.containsKey('createImage')
              ? CreateImageRequest.fromJson(
                  json_['createImage'] as core.Map<core.String, core.dynamic>)
              : null,
          createLine: json_.containsKey('createLine')
              ? CreateLineRequest.fromJson(
                  json_['createLine'] as core.Map<core.String, core.dynamic>)
              : null,
          createParagraphBullets: json_.containsKey('createParagraphBullets')
              ? CreateParagraphBulletsRequest.fromJson(
                  json_['createParagraphBullets']
                      as core.Map<core.String, core.dynamic>)
              : null,
          createShape: json_.containsKey('createShape')
              ? CreateShapeRequest.fromJson(
                  json_['createShape'] as core.Map<core.String, core.dynamic>)
              : null,
          createSheetsChart: json_.containsKey('createSheetsChart')
              ? CreateSheetsChartRequest.fromJson(json_['createSheetsChart']
                  as core.Map<core.String, core.dynamic>)
              : null,
          createSlide: json_.containsKey('createSlide')
              ? CreateSlideRequest.fromJson(
                  json_['createSlide'] as core.Map<core.String, core.dynamic>)
              : null,
          createTable: json_.containsKey('createTable')
              ? CreateTableRequest.fromJson(
                  json_['createTable'] as core.Map<core.String, core.dynamic>)
              : null,
          createVideo: json_.containsKey('createVideo')
              ? CreateVideoRequest.fromJson(
                  json_['createVideo'] as core.Map<core.String, core.dynamic>)
              : null,
          deleteObject: json_.containsKey('deleteObject')
              ? DeleteObjectRequest.fromJson(
                  json_['deleteObject'] as core.Map<core.String, core.dynamic>)
              : null,
          deleteParagraphBullets: json_.containsKey('deleteParagraphBullets')
              ? DeleteParagraphBulletsRequest.fromJson(
                  json_['deleteParagraphBullets']
                      as core.Map<core.String, core.dynamic>)
              : null,
          deleteTableColumn: json_.containsKey('deleteTableColumn')
              ? DeleteTableColumnRequest.fromJson(json_['deleteTableColumn']
                  as core.Map<core.String, core.dynamic>)
              : null,
          deleteTableRow: json_.containsKey('deleteTableRow')
              ? DeleteTableRowRequest.fromJson(json_['deleteTableRow']
                  as core.Map<core.String, core.dynamic>)
              : null,
          deleteText: json_.containsKey('deleteText')
              ? DeleteTextRequest.fromJson(
                  json_['deleteText'] as core.Map<core.String, core.dynamic>)
              : null,
          duplicateObject: json_.containsKey('duplicateObject')
              ? DuplicateObjectRequest.fromJson(json_['duplicateObject']
                  as core.Map<core.String, core.dynamic>)
              : null,
          groupObjects: json_.containsKey('groupObjects')
              ? GroupObjectsRequest.fromJson(
                  json_['groupObjects'] as core.Map<core.String, core.dynamic>)
              : null,
          insertTableColumns: json_.containsKey('insertTableColumns')
              ? InsertTableColumnsRequest.fromJson(json_['insertTableColumns']
                  as core.Map<core.String, core.dynamic>)
              : null,
          insertTableRows: json_.containsKey('insertTableRows')
              ? InsertTableRowsRequest.fromJson(json_['insertTableRows']
                  as core.Map<core.String, core.dynamic>)
              : null,
          insertText: json_.containsKey('insertText')
              ? InsertTextRequest.fromJson(
                  json_['insertText'] as core.Map<core.String, core.dynamic>)
              : null,
          mergeTableCells: json_.containsKey('mergeTableCells')
              ? MergeTableCellsRequest.fromJson(json_['mergeTableCells']
                  as core.Map<core.String, core.dynamic>)
              : null,
          refreshSheetsChart: json_.containsKey('refreshSheetsChart')
              ? RefreshSheetsChartRequest.fromJson(json_['refreshSheetsChart']
                  as core.Map<core.String, core.dynamic>)
              : null,
          replaceAllShapesWithImage:
              json_.containsKey('replaceAllShapesWithImage')
                  ? ReplaceAllShapesWithImageRequest.fromJson(
                      json_['replaceAllShapesWithImage']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          replaceAllShapesWithSheetsChart:
              json_.containsKey('replaceAllShapesWithSheetsChart')
                  ? ReplaceAllShapesWithSheetsChartRequest.fromJson(
                      json_['replaceAllShapesWithSheetsChart']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          replaceAllText: json_.containsKey('replaceAllText')
              ? ReplaceAllTextRequest.fromJson(json_['replaceAllText']
                  as core.Map<core.String, core.dynamic>)
              : null,
          replaceImage: json_.containsKey('replaceImage')
              ? ReplaceImageRequest.fromJson(
                  json_['replaceImage'] as core.Map<core.String, core.dynamic>)
              : null,
          rerouteLine: json_.containsKey('rerouteLine')
              ? RerouteLineRequest.fromJson(
                  json_['rerouteLine'] as core.Map<core.String, core.dynamic>)
              : null,
          ungroupObjects: json_.containsKey('ungroupObjects')
              ? UngroupObjectsRequest.fromJson(json_['ungroupObjects']
                  as core.Map<core.String, core.dynamic>)
              : null,
          unmergeTableCells: json_.containsKey('unmergeTableCells')
              ? UnmergeTableCellsRequest.fromJson(json_['unmergeTableCells']
                  as core.Map<core.String, core.dynamic>)
              : null,
          updateImageProperties: json_.containsKey('updateImageProperties')
              ? UpdateImagePropertiesRequest.fromJson(
                  json_['updateImageProperties']
                      as core.Map<core.String, core.dynamic>)
              : null,
          updateLineCategory: json_.containsKey('updateLineCategory')
              ? UpdateLineCategoryRequest.fromJson(json_['updateLineCategory']
                  as core.Map<core.String, core.dynamic>)
              : null,
          updateLineProperties: json_.containsKey('updateLineProperties')
              ? UpdateLinePropertiesRequest.fromJson(
                  json_['updateLineProperties']
                      as core.Map<core.String, core.dynamic>)
              : null,
          updatePageElementAltText:
              json_.containsKey('updatePageElementAltText')
                  ? UpdatePageElementAltTextRequest.fromJson(
                      json_['updatePageElementAltText']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          updatePageElementTransform:
              json_.containsKey('updatePageElementTransform')
                  ? UpdatePageElementTransformRequest.fromJson(
                      json_['updatePageElementTransform']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          updatePageElementsZOrder:
              json_.containsKey('updatePageElementsZOrder')
                  ? UpdatePageElementsZOrderRequest.fromJson(
                      json_['updatePageElementsZOrder']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          updatePageProperties: json_.containsKey('updatePageProperties')
              ? UpdatePagePropertiesRequest.fromJson(
                  json_['updatePageProperties']
                      as core.Map<core.String, core.dynamic>)
              : null,
          updateParagraphStyle: json_.containsKey('updateParagraphStyle')
              ? UpdateParagraphStyleRequest.fromJson(
                  json_['updateParagraphStyle']
                      as core.Map<core.String, core.dynamic>)
              : null,
          updateShapeProperties: json_.containsKey('updateShapeProperties')
              ? UpdateShapePropertiesRequest.fromJson(
                  json_['updateShapeProperties']
                      as core.Map<core.String, core.dynamic>)
              : null,
          updateSlideProperties: json_.containsKey('updateSlideProperties')
              ? UpdateSlidePropertiesRequest.fromJson(
                  json_['updateSlideProperties']
                      as core.Map<core.String, core.dynamic>)
              : null,
          updateSlidesPosition: json_.containsKey('updateSlidesPosition')
              ? UpdateSlidesPositionRequest.fromJson(
                  json_['updateSlidesPosition']
                      as core.Map<core.String, core.dynamic>)
              : null,
          updateTableBorderProperties:
              json_.containsKey('updateTableBorderProperties')
                  ? UpdateTableBorderPropertiesRequest.fromJson(
                      json_['updateTableBorderProperties']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          updateTableCellProperties:
              json_.containsKey('updateTableCellProperties')
                  ? UpdateTableCellPropertiesRequest.fromJson(
                      json_['updateTableCellProperties']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          updateTableColumnProperties:
              json_.containsKey('updateTableColumnProperties')
                  ? UpdateTableColumnPropertiesRequest.fromJson(
                      json_['updateTableColumnProperties']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          updateTableRowProperties:
              json_.containsKey('updateTableRowProperties')
                  ? UpdateTableRowPropertiesRequest.fromJson(
                      json_['updateTableRowProperties']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          updateTextStyle: json_.containsKey('updateTextStyle')
              ? UpdateTextStyleRequest.fromJson(json_['updateTextStyle']
                  as core.Map<core.String, core.dynamic>)
              : null,
          updateVideoProperties: json_.containsKey('updateVideoProperties')
              ? UpdateVideoPropertiesRequest.fromJson(
                  json_['updateVideoProperties']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createImage != null) 'createImage': createImage!,
        if (createLine != null) 'createLine': createLine!,
        if (createParagraphBullets != null)
          'createParagraphBullets': createParagraphBullets!,
        if (createShape != null) 'createShape': createShape!,
        if (createSheetsChart != null) 'createSheetsChart': createSheetsChart!,
        if (createSlide != null) 'createSlide': createSlide!,
        if (createTable != null) 'createTable': createTable!,
        if (createVideo != null) 'createVideo': createVideo!,
        if (deleteObject != null) 'deleteObject': deleteObject!,
        if (deleteParagraphBullets != null)
          'deleteParagraphBullets': deleteParagraphBullets!,
        if (deleteTableColumn != null) 'deleteTableColumn': deleteTableColumn!,
        if (deleteTableRow != null) 'deleteTableRow': deleteTableRow!,
        if (deleteText != null) 'deleteText': deleteText!,
        if (duplicateObject != null) 'duplicateObject': duplicateObject!,
        if (groupObjects != null) 'groupObjects': groupObjects!,
        if (insertTableColumns != null)
          'insertTableColumns': insertTableColumns!,
        if (insertTableRows != null) 'insertTableRows': insertTableRows!,
        if (insertText != null) 'insertText': insertText!,
        if (mergeTableCells != null) 'mergeTableCells': mergeTableCells!,
        if (refreshSheetsChart != null)
          'refreshSheetsChart': refreshSheetsChart!,
        if (replaceAllShapesWithImage != null)
          'replaceAllShapesWithImage': replaceAllShapesWithImage!,
        if (replaceAllShapesWithSheetsChart != null)
          'replaceAllShapesWithSheetsChart': replaceAllShapesWithSheetsChart!,
        if (replaceAllText != null) 'replaceAllText': replaceAllText!,
        if (replaceImage != null) 'replaceImage': replaceImage!,
        if (rerouteLine != null) 'rerouteLine': rerouteLine!,
        if (ungroupObjects != null) 'ungroupObjects': ungroupObjects!,
        if (unmergeTableCells != null) 'unmergeTableCells': unmergeTableCells!,
        if (updateImageProperties != null)
          'updateImageProperties': updateImageProperties!,
        if (updateLineCategory != null)
          'updateLineCategory': updateLineCategory!,
        if (updateLineProperties != null)
          'updateLineProperties': updateLineProperties!,
        if (updatePageElementAltText != null)
          'updatePageElementAltText': updatePageElementAltText!,
        if (updatePageElementTransform != null)
          'updatePageElementTransform': updatePageElementTransform!,
        if (updatePageElementsZOrder != null)
          'updatePageElementsZOrder': updatePageElementsZOrder!,
        if (updatePageProperties != null)
          'updatePageProperties': updatePageProperties!,
        if (updateParagraphStyle != null)
          'updateParagraphStyle': updateParagraphStyle!,
        if (updateShapeProperties != null)
          'updateShapeProperties': updateShapeProperties!,
        if (updateSlideProperties != null)
          'updateSlideProperties': updateSlideProperties!,
        if (updateSlidesPosition != null)
          'updateSlidesPosition': updateSlidesPosition!,
        if (updateTableBorderProperties != null)
          'updateTableBorderProperties': updateTableBorderProperties!,
        if (updateTableCellProperties != null)
          'updateTableCellProperties': updateTableCellProperties!,
        if (updateTableColumnProperties != null)
          'updateTableColumnProperties': updateTableColumnProperties!,
        if (updateTableRowProperties != null)
          'updateTableRowProperties': updateTableRowProperties!,
        if (updateTextStyle != null) 'updateTextStyle': updateTextStyle!,
        if (updateVideoProperties != null)
          'updateVideoProperties': updateVideoProperties!,
      };
}

/// Reroutes a line such that it's connected at the two closest connection sites
/// on the connected page elements.
class RerouteLineRequest {
  /// The object ID of the line to reroute.
  ///
  /// Only a line with a category indicating it is a "connector" can be
  /// rerouted. The start and end connections of the line must be on different
  /// page elements.
  core.String? objectId;

  RerouteLineRequest({
    this.objectId,
  });

  RerouteLineRequest.fromJson(core.Map json_)
      : this(
          objectId: json_.containsKey('objectId')
              ? json_['objectId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (objectId != null) 'objectId': objectId!,
      };
}

/// A single response from an update.
class Response {
  /// The result of creating an image.
  CreateImageResponse? createImage;

  /// The result of creating a line.
  CreateLineResponse? createLine;

  /// The result of creating a shape.
  CreateShapeResponse? createShape;

  /// The result of creating a Google Sheets chart.
  CreateSheetsChartResponse? createSheetsChart;

  /// The result of creating a slide.
  CreateSlideResponse? createSlide;

  /// The result of creating a table.
  CreateTableResponse? createTable;

  /// The result of creating a video.
  CreateVideoResponse? createVideo;

  /// The result of duplicating an object.
  DuplicateObjectResponse? duplicateObject;

  /// The result of grouping objects.
  GroupObjectsResponse? groupObjects;

  /// The result of replacing all shapes matching some criteria with an image.
  ReplaceAllShapesWithImageResponse? replaceAllShapesWithImage;

  /// The result of replacing all shapes matching some criteria with a Google
  /// Sheets chart.
  ReplaceAllShapesWithSheetsChartResponse? replaceAllShapesWithSheetsChart;

  /// The result of replacing text.
  ReplaceAllTextResponse? replaceAllText;

  Response({
    this.createImage,
    this.createLine,
    this.createShape,
    this.createSheetsChart,
    this.createSlide,
    this.createTable,
    this.createVideo,
    this.duplicateObject,
    this.groupObjects,
    this.replaceAllShapesWithImage,
    this.replaceAllShapesWithSheetsChart,
    this.replaceAllText,
  });

  Response.fromJson(core.Map json_)
      : this(
          createImage: json_.containsKey('createImage')
              ? CreateImageResponse.fromJson(
                  json_['createImage'] as core.Map<core.String, core.dynamic>)
              : null,
          createLine: json_.containsKey('createLine')
              ? CreateLineResponse.fromJson(
                  json_['createLine'] as core.Map<core.String, core.dynamic>)
              : null,
          createShape: json_.containsKey('createShape')
              ? CreateShapeResponse.fromJson(
                  json_['createShape'] as core.Map<core.String, core.dynamic>)
              : null,
          createSheetsChart: json_.containsKey('createSheetsChart')
              ? CreateSheetsChartResponse.fromJson(json_['createSheetsChart']
                  as core.Map<core.String, core.dynamic>)
              : null,
          createSlide: json_.containsKey('createSlide')
              ? CreateSlideResponse.fromJson(
                  json_['createSlide'] as core.Map<core.String, core.dynamic>)
              : null,
          createTable: json_.containsKey('createTable')
              ? CreateTableResponse.fromJson(
                  json_['createTable'] as core.Map<core.String, core.dynamic>)
              : null,
          createVideo: json_.containsKey('createVideo')
              ? CreateVideoResponse.fromJson(
                  json_['createVideo'] as core.Map<core.String, core.dynamic>)
              : null,
          duplicateObject: json_.containsKey('duplicateObject')
              ? DuplicateObjectResponse.fromJson(json_['duplicateObject']
                  as core.Map<core.String, core.dynamic>)
              : null,
          groupObjects: json_.containsKey('groupObjects')
              ? GroupObjectsResponse.fromJson(
                  json_['groupObjects'] as core.Map<core.String, core.dynamic>)
              : null,
          replaceAllShapesWithImage:
              json_.containsKey('replaceAllShapesWithImage')
                  ? ReplaceAllShapesWithImageResponse.fromJson(
                      json_['replaceAllShapesWithImage']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          replaceAllShapesWithSheetsChart:
              json_.containsKey('replaceAllShapesWithSheetsChart')
                  ? ReplaceAllShapesWithSheetsChartResponse.fromJson(
                      json_['replaceAllShapesWithSheetsChart']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          replaceAllText: json_.containsKey('replaceAllText')
              ? ReplaceAllTextResponse.fromJson(json_['replaceAllText']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createImage != null) 'createImage': createImage!,
        if (createLine != null) 'createLine': createLine!,
        if (createShape != null) 'createShape': createShape!,
        if (createSheetsChart != null) 'createSheetsChart': createSheetsChart!,
        if (createSlide != null) 'createSlide': createSlide!,
        if (createTable != null) 'createTable': createTable!,
        if (createVideo != null) 'createVideo': createVideo!,
        if (duplicateObject != null) 'duplicateObject': duplicateObject!,
        if (groupObjects != null) 'groupObjects': groupObjects!,
        if (replaceAllShapesWithImage != null)
          'replaceAllShapesWithImage': replaceAllShapesWithImage!,
        if (replaceAllShapesWithSheetsChart != null)
          'replaceAllShapesWithSheetsChart': replaceAllShapesWithSheetsChart!,
        if (replaceAllText != null) 'replaceAllText': replaceAllText!,
      };
}

/// An RGB color.
typedef RgbColor = $RgbColor;

/// The shadow properties of a page element.
///
/// If these fields are unset, they may be inherited from a parent placeholder
/// if it exists. If there is no parent, the fields will default to the value
/// used for new page elements created in the Slides editor, which may depend on
/// the page element kind.
class Shadow {
  /// The alignment point of the shadow, that sets the origin for translate,
  /// scale and skew of the shadow.
  ///
  /// This property is read-only.
  /// Possible string values are:
  /// - "RECTANGLE_POSITION_UNSPECIFIED" : Unspecified.
  /// - "TOP_LEFT" : Top left.
  /// - "TOP_CENTER" : Top center.
  /// - "TOP_RIGHT" : Top right.
  /// - "LEFT_CENTER" : Left center.
  /// - "CENTER" : Center.
  /// - "RIGHT_CENTER" : Right center.
  /// - "BOTTOM_LEFT" : Bottom left.
  /// - "BOTTOM_CENTER" : Bottom center.
  /// - "BOTTOM_RIGHT" : Bottom right.
  core.String? alignment;

  /// The alpha of the shadow's color, from 0.0 to 1.0.
  core.double? alpha;

  /// The radius of the shadow blur.
  ///
  /// The larger the radius, the more diffuse the shadow becomes.
  Dimension? blurRadius;

  /// The shadow color value.
  OpaqueColor? color;

  /// The shadow property state.
  ///
  /// Updating the shadow on a page element will implicitly update this field to
  /// `RENDERED`, unless another value is specified in the same request. To have
  /// no shadow on a page element, set this field to `NOT_RENDERED`. In this
  /// case, any other shadow fields set in the same request will be ignored.
  /// Possible string values are:
  /// - "RENDERED" : If a property's state is RENDERED, then the element has the
  /// corresponding property when rendered on a page. If the element is a
  /// placeholder shape as determined by the placeholder field, and it inherits
  /// from a placeholder shape, the corresponding field may be unset, meaning
  /// that the property value is inherited from a parent placeholder. If the
  /// element does not inherit, then the field will contain the rendered value.
  /// This is the default value.
  /// - "NOT_RENDERED" : If a property's state is NOT_RENDERED, then the element
  /// does not have the corresponding property when rendered on a page. However,
  /// the field may still be set so it can be inherited by child shapes. To
  /// remove a property from a rendered element, set its property_state to
  /// NOT_RENDERED.
  /// - "INHERIT" : If a property's state is INHERIT, then the property state
  /// uses the value of corresponding `property_state` field on the parent
  /// shape. Elements that do not inherit will never have an INHERIT property
  /// state.
  core.String? propertyState;

  /// Whether the shadow should rotate with the shape.
  ///
  /// This property is read-only.
  core.bool? rotateWithShape;

  /// Transform that encodes the translate, scale, and skew of the shadow,
  /// relative to the alignment position.
  AffineTransform? transform;

  /// The type of the shadow.
  ///
  /// This property is read-only.
  /// Possible string values are:
  /// - "SHADOW_TYPE_UNSPECIFIED" : Unspecified shadow type.
  /// - "OUTER" : Outer shadow.
  core.String? type;

  Shadow({
    this.alignment,
    this.alpha,
    this.blurRadius,
    this.color,
    this.propertyState,
    this.rotateWithShape,
    this.transform,
    this.type,
  });

  Shadow.fromJson(core.Map json_)
      : this(
          alignment: json_.containsKey('alignment')
              ? json_['alignment'] as core.String
              : null,
          alpha: json_.containsKey('alpha')
              ? (json_['alpha'] as core.num).toDouble()
              : null,
          blurRadius: json_.containsKey('blurRadius')
              ? Dimension.fromJson(
                  json_['blurRadius'] as core.Map<core.String, core.dynamic>)
              : null,
          color: json_.containsKey('color')
              ? OpaqueColor.fromJson(
                  json_['color'] as core.Map<core.String, core.dynamic>)
              : null,
          propertyState: json_.containsKey('propertyState')
              ? json_['propertyState'] as core.String
              : null,
          rotateWithShape: json_.containsKey('rotateWithShape')
              ? json_['rotateWithShape'] as core.bool
              : null,
          transform: json_.containsKey('transform')
              ? AffineTransform.fromJson(
                  json_['transform'] as core.Map<core.String, core.dynamic>)
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (alignment != null) 'alignment': alignment!,
        if (alpha != null) 'alpha': alpha!,
        if (blurRadius != null) 'blurRadius': blurRadius!,
        if (color != null) 'color': color!,
        if (propertyState != null) 'propertyState': propertyState!,
        if (rotateWithShape != null) 'rotateWithShape': rotateWithShape!,
        if (transform != null) 'transform': transform!,
        if (type != null) 'type': type!,
      };
}

/// A PageElement kind representing a generic shape that does not have a more
/// specific classification.
class Shape {
  /// Placeholders are page elements that inherit from corresponding
  /// placeholders on layouts and masters.
  ///
  /// If set, the shape is a placeholder shape and any inherited properties can
  /// be resolved by looking at the parent placeholder identified by the
  /// Placeholder.parent_object_id field.
  Placeholder? placeholder;

  /// The properties of the shape.
  ShapeProperties? shapeProperties;

  /// The type of the shape.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : The shape type that is not predefined.
  /// - "TEXT_BOX" : Text box shape.
  /// - "RECTANGLE" : Rectangle shape. Corresponds to ECMA-376 ST_ShapeType
  /// 'rect'.
  /// - "ROUND_RECTANGLE" : Round corner rectangle shape. Corresponds to
  /// ECMA-376 ST_ShapeType 'roundRect'
  /// - "ELLIPSE" : Ellipse shape. Corresponds to ECMA-376 ST_ShapeType
  /// 'ellipse'
  /// - "ARC" : Curved arc shape. Corresponds to ECMA-376 ST_ShapeType 'arc'
  /// - "BENT_ARROW" : Bent arrow shape. Corresponds to ECMA-376 ST_ShapeType
  /// 'bentArrow'
  /// - "BENT_UP_ARROW" : Bent up arrow shape. Corresponds to ECMA-376
  /// ST_ShapeType 'bentUpArrow'
  /// - "BEVEL" : Bevel shape. Corresponds to ECMA-376 ST_ShapeType 'bevel'
  /// - "BLOCK_ARC" : Block arc shape. Corresponds to ECMA-376 ST_ShapeType
  /// 'blockArc'
  /// - "BRACE_PAIR" : Brace pair shape. Corresponds to ECMA-376 ST_ShapeType
  /// 'bracePair'
  /// - "BRACKET_PAIR" : Bracket pair shape. Corresponds to ECMA-376
  /// ST_ShapeType 'bracketPair'
  /// - "CAN" : Can shape. Corresponds to ECMA-376 ST_ShapeType 'can'
  /// - "CHEVRON" : Chevron shape. Corresponds to ECMA-376 ST_ShapeType
  /// 'chevron'
  /// - "CHORD" : Chord shape. Corresponds to ECMA-376 ST_ShapeType 'chord'
  /// - "CLOUD" : Cloud shape. Corresponds to ECMA-376 ST_ShapeType 'cloud'
  /// - "CORNER" : Corner shape. Corresponds to ECMA-376 ST_ShapeType 'corner'
  /// - "CUBE" : Cube shape. Corresponds to ECMA-376 ST_ShapeType 'cube'
  /// - "CURVED_DOWN_ARROW" : Curved down arrow shape. Corresponds to ECMA-376
  /// ST_ShapeType 'curvedDownArrow'
  /// - "CURVED_LEFT_ARROW" : Curved left arrow shape. Corresponds to ECMA-376
  /// ST_ShapeType 'curvedLeftArrow'
  /// - "CURVED_RIGHT_ARROW" : Curved right arrow shape. Corresponds to ECMA-376
  /// ST_ShapeType 'curvedRightArrow'
  /// - "CURVED_UP_ARROW" : Curved up arrow shape. Corresponds to ECMA-376
  /// ST_ShapeType 'curvedUpArrow'
  /// - "DECAGON" : Decagon shape. Corresponds to ECMA-376 ST_ShapeType
  /// 'decagon'
  /// - "DIAGONAL_STRIPE" : Diagonal stripe shape. Corresponds to ECMA-376
  /// ST_ShapeType 'diagStripe'
  /// - "DIAMOND" : Diamond shape. Corresponds to ECMA-376 ST_ShapeType
  /// 'diamond'
  /// - "DODECAGON" : Dodecagon shape. Corresponds to ECMA-376 ST_ShapeType
  /// 'dodecagon'
  /// - "DONUT" : Donut shape. Corresponds to ECMA-376 ST_ShapeType 'donut'
  /// - "DOUBLE_WAVE" : Double wave shape. Corresponds to ECMA-376 ST_ShapeType
  /// 'doubleWave'
  /// - "DOWN_ARROW" : Down arrow shape. Corresponds to ECMA-376 ST_ShapeType
  /// 'downArrow'
  /// - "DOWN_ARROW_CALLOUT" : Callout down arrow shape. Corresponds to ECMA-376
  /// ST_ShapeType 'downArrowCallout'
  /// - "FOLDED_CORNER" : Folded corner shape. Corresponds to ECMA-376
  /// ST_ShapeType 'foldedCorner'
  /// - "FRAME" : Frame shape. Corresponds to ECMA-376 ST_ShapeType 'frame'
  /// - "HALF_FRAME" : Half frame shape. Corresponds to ECMA-376 ST_ShapeType
  /// 'halfFrame'
  /// - "HEART" : Heart shape. Corresponds to ECMA-376 ST_ShapeType 'heart'
  /// - "HEPTAGON" : Heptagon shape. Corresponds to ECMA-376 ST_ShapeType
  /// 'heptagon'
  /// - "HEXAGON" : Hexagon shape. Corresponds to ECMA-376 ST_ShapeType
  /// 'hexagon'
  /// - "HOME_PLATE" : Home plate shape. Corresponds to ECMA-376 ST_ShapeType
  /// 'homePlate'
  /// - "HORIZONTAL_SCROLL" : Horizontal scroll shape. Corresponds to ECMA-376
  /// ST_ShapeType 'horizontalScroll'
  /// - "IRREGULAR_SEAL_1" : Irregular seal 1 shape. Corresponds to ECMA-376
  /// ST_ShapeType 'irregularSeal1'
  /// - "IRREGULAR_SEAL_2" : Irregular seal 2 shape. Corresponds to ECMA-376
  /// ST_ShapeType 'irregularSeal2'
  /// - "LEFT_ARROW" : Left arrow shape. Corresponds to ECMA-376 ST_ShapeType
  /// 'leftArrow'
  /// - "LEFT_ARROW_CALLOUT" : Callout left arrow shape. Corresponds to ECMA-376
  /// ST_ShapeType 'leftArrowCallout'
  /// - "LEFT_BRACE" : Left brace shape. Corresponds to ECMA-376 ST_ShapeType
  /// 'leftBrace'
  /// - "LEFT_BRACKET" : Left bracket shape. Corresponds to ECMA-376
  /// ST_ShapeType 'leftBracket'
  /// - "LEFT_RIGHT_ARROW" : Left right arrow shape. Corresponds to ECMA-376
  /// ST_ShapeType 'leftRightArrow'
  /// - "LEFT_RIGHT_ARROW_CALLOUT" : Callout left right arrow shape. Corresponds
  /// to ECMA-376 ST_ShapeType 'leftRightArrowCallout'
  /// - "LEFT_RIGHT_UP_ARROW" : Left right up arrow shape. Corresponds to
  /// ECMA-376 ST_ShapeType 'leftRightUpArrow'
  /// - "LEFT_UP_ARROW" : Left up arrow shape. Corresponds to ECMA-376
  /// ST_ShapeType 'leftUpArrow'
  /// - "LIGHTNING_BOLT" : Lightning bolt shape. Corresponds to ECMA-376
  /// ST_ShapeType 'lightningBolt'
  /// - "MATH_DIVIDE" : Divide math shape. Corresponds to ECMA-376 ST_ShapeType
  /// 'mathDivide'
  /// - "MATH_EQUAL" : Equal math shape. Corresponds to ECMA-376 ST_ShapeType
  /// 'mathEqual'
  /// - "MATH_MINUS" : Minus math shape. Corresponds to ECMA-376 ST_ShapeType
  /// 'mathMinus'
  /// - "MATH_MULTIPLY" : Multiply math shape. Corresponds to ECMA-376
  /// ST_ShapeType 'mathMultiply'
  /// - "MATH_NOT_EQUAL" : Not equal math shape. Corresponds to ECMA-376
  /// ST_ShapeType 'mathNotEqual'
  /// - "MATH_PLUS" : Plus math shape. Corresponds to ECMA-376 ST_ShapeType
  /// 'mathPlus'
  /// - "MOON" : Moon shape. Corresponds to ECMA-376 ST_ShapeType 'moon'
  /// - "NO_SMOKING" : No smoking shape. Corresponds to ECMA-376 ST_ShapeType
  /// 'noSmoking'
  /// - "NOTCHED_RIGHT_ARROW" : Notched right arrow shape. Corresponds to
  /// ECMA-376 ST_ShapeType 'notchedRightArrow'
  /// - "OCTAGON" : Octagon shape. Corresponds to ECMA-376 ST_ShapeType
  /// 'octagon'
  /// - "PARALLELOGRAM" : Parallelogram shape. Corresponds to ECMA-376
  /// ST_ShapeType 'parallelogram'
  /// - "PENTAGON" : Pentagon shape. Corresponds to ECMA-376 ST_ShapeType
  /// 'pentagon'
  /// - "PIE" : Pie shape. Corresponds to ECMA-376 ST_ShapeType 'pie'
  /// - "PLAQUE" : Plaque shape. Corresponds to ECMA-376 ST_ShapeType 'plaque'
  /// - "PLUS" : Plus shape. Corresponds to ECMA-376 ST_ShapeType 'plus'
  /// - "QUAD_ARROW" : Quad-arrow shape. Corresponds to ECMA-376 ST_ShapeType
  /// 'quadArrow'
  /// - "QUAD_ARROW_CALLOUT" : Callout quad-arrow shape. Corresponds to ECMA-376
  /// ST_ShapeType 'quadArrowCallout'
  /// - "RIBBON" : Ribbon shape. Corresponds to ECMA-376 ST_ShapeType 'ribbon'
  /// - "RIBBON_2" : Ribbon 2 shape. Corresponds to ECMA-376 ST_ShapeType
  /// 'ribbon2'
  /// - "RIGHT_ARROW" : Right arrow shape. Corresponds to ECMA-376 ST_ShapeType
  /// 'rightArrow'
  /// - "RIGHT_ARROW_CALLOUT" : Callout right arrow shape. Corresponds to
  /// ECMA-376 ST_ShapeType 'rightArrowCallout'
  /// - "RIGHT_BRACE" : Right brace shape. Corresponds to ECMA-376 ST_ShapeType
  /// 'rightBrace'
  /// - "RIGHT_BRACKET" : Right bracket shape. Corresponds to ECMA-376
  /// ST_ShapeType 'rightBracket'
  /// - "ROUND_1_RECTANGLE" : One round corner rectangle shape. Corresponds to
  /// ECMA-376 ST_ShapeType 'round1Rect'
  /// - "ROUND_2_DIAGONAL_RECTANGLE" : Two diagonal round corner rectangle
  /// shape. Corresponds to ECMA-376 ST_ShapeType 'round2DiagRect'
  /// - "ROUND_2_SAME_RECTANGLE" : Two same-side round corner rectangle shape.
  /// Corresponds to ECMA-376 ST_ShapeType 'round2SameRect'
  /// - "RIGHT_TRIANGLE" : Right triangle shape. Corresponds to ECMA-376
  /// ST_ShapeType 'rtTriangle'
  /// - "SMILEY_FACE" : Smiley face shape. Corresponds to ECMA-376 ST_ShapeType
  /// 'smileyFace'
  /// - "SNIP_1_RECTANGLE" : One snip corner rectangle shape. Corresponds to
  /// ECMA-376 ST_ShapeType 'snip1Rect'
  /// - "SNIP_2_DIAGONAL_RECTANGLE" : Two diagonal snip corner rectangle shape.
  /// Corresponds to ECMA-376 ST_ShapeType 'snip2DiagRect'
  /// - "SNIP_2_SAME_RECTANGLE" : Two same-side snip corner rectangle shape.
  /// Corresponds to ECMA-376 ST_ShapeType 'snip2SameRect'
  /// - "SNIP_ROUND_RECTANGLE" : One snip one round corner rectangle shape.
  /// Corresponds to ECMA-376 ST_ShapeType 'snipRoundRect'
  /// - "STAR_10" : Ten pointed star shape. Corresponds to ECMA-376 ST_ShapeType
  /// 'star10'
  /// - "STAR_12" : Twelve pointed star shape. Corresponds to ECMA-376
  /// ST_ShapeType 'star12'
  /// - "STAR_16" : Sixteen pointed star shape. Corresponds to ECMA-376
  /// ST_ShapeType 'star16'
  /// - "STAR_24" : Twenty four pointed star shape. Corresponds to ECMA-376
  /// ST_ShapeType 'star24'
  /// - "STAR_32" : Thirty two pointed star shape. Corresponds to ECMA-376
  /// ST_ShapeType 'star32'
  /// - "STAR_4" : Four pointed star shape. Corresponds to ECMA-376 ST_ShapeType
  /// 'star4'
  /// - "STAR_5" : Five pointed star shape. Corresponds to ECMA-376 ST_ShapeType
  /// 'star5'
  /// - "STAR_6" : Six pointed star shape. Corresponds to ECMA-376 ST_ShapeType
  /// 'star6'
  /// - "STAR_7" : Seven pointed star shape. Corresponds to ECMA-376
  /// ST_ShapeType 'star7'
  /// - "STAR_8" : Eight pointed star shape. Corresponds to ECMA-376
  /// ST_ShapeType 'star8'
  /// - "STRIPED_RIGHT_ARROW" : Striped right arrow shape. Corresponds to
  /// ECMA-376 ST_ShapeType 'stripedRightArrow'
  /// - "SUN" : Sun shape. Corresponds to ECMA-376 ST_ShapeType 'sun'
  /// - "TRAPEZOID" : Trapezoid shape. Corresponds to ECMA-376 ST_ShapeType
  /// 'trapezoid'
  /// - "TRIANGLE" : Triangle shape. Corresponds to ECMA-376 ST_ShapeType
  /// 'triangle'
  /// - "UP_ARROW" : Up arrow shape. Corresponds to ECMA-376 ST_ShapeType
  /// 'upArrow'
  /// - "UP_ARROW_CALLOUT" : Callout up arrow shape. Corresponds to ECMA-376
  /// ST_ShapeType 'upArrowCallout'
  /// - "UP_DOWN_ARROW" : Up down arrow shape. Corresponds to ECMA-376
  /// ST_ShapeType 'upDownArrow'
  /// - "UTURN_ARROW" : U-turn arrow shape. Corresponds to ECMA-376 ST_ShapeType
  /// 'uturnArrow'
  /// - "VERTICAL_SCROLL" : Vertical scroll shape. Corresponds to ECMA-376
  /// ST_ShapeType 'verticalScroll'
  /// - "WAVE" : Wave shape. Corresponds to ECMA-376 ST_ShapeType 'wave'
  /// - "WEDGE_ELLIPSE_CALLOUT" : Callout wedge ellipse shape. Corresponds to
  /// ECMA-376 ST_ShapeType 'wedgeEllipseCallout'
  /// - "WEDGE_RECTANGLE_CALLOUT" : Callout wedge rectangle shape. Corresponds
  /// to ECMA-376 ST_ShapeType 'wedgeRectCallout'
  /// - "WEDGE_ROUND_RECTANGLE_CALLOUT" : Callout wedge round rectangle shape.
  /// Corresponds to ECMA-376 ST_ShapeType 'wedgeRoundRectCallout'
  /// - "FLOW_CHART_ALTERNATE_PROCESS" : Alternate process flow shape.
  /// Corresponds to ECMA-376 ST_ShapeType 'flowChartAlternateProcess'
  /// - "FLOW_CHART_COLLATE" : Collate flow shape. Corresponds to ECMA-376
  /// ST_ShapeType 'flowChartCollate'
  /// - "FLOW_CHART_CONNECTOR" : Connector flow shape. Corresponds to ECMA-376
  /// ST_ShapeType 'flowChartConnector'
  /// - "FLOW_CHART_DECISION" : Decision flow shape. Corresponds to ECMA-376
  /// ST_ShapeType 'flowChartDecision'
  /// - "FLOW_CHART_DELAY" : Delay flow shape. Corresponds to ECMA-376
  /// ST_ShapeType 'flowChartDelay'
  /// - "FLOW_CHART_DISPLAY" : Display flow shape. Corresponds to ECMA-376
  /// ST_ShapeType 'flowChartDisplay'
  /// - "FLOW_CHART_DOCUMENT" : Document flow shape. Corresponds to ECMA-376
  /// ST_ShapeType 'flowChartDocument'
  /// - "FLOW_CHART_EXTRACT" : Extract flow shape. Corresponds to ECMA-376
  /// ST_ShapeType 'flowChartExtract'
  /// - "FLOW_CHART_INPUT_OUTPUT" : Input output flow shape. Corresponds to
  /// ECMA-376 ST_ShapeType 'flowChartInputOutput'
  /// - "FLOW_CHART_INTERNAL_STORAGE" : Internal storage flow shape. Corresponds
  /// to ECMA-376 ST_ShapeType 'flowChartInternalStorage'
  /// - "FLOW_CHART_MAGNETIC_DISK" : Magnetic disk flow shape. Corresponds to
  /// ECMA-376 ST_ShapeType 'flowChartMagneticDisk'
  /// - "FLOW_CHART_MAGNETIC_DRUM" : Magnetic drum flow shape. Corresponds to
  /// ECMA-376 ST_ShapeType 'flowChartMagneticDrum'
  /// - "FLOW_CHART_MAGNETIC_TAPE" : Magnetic tape flow shape. Corresponds to
  /// ECMA-376 ST_ShapeType 'flowChartMagneticTape'
  /// - "FLOW_CHART_MANUAL_INPUT" : Manual input flow shape. Corresponds to
  /// ECMA-376 ST_ShapeType 'flowChartManualInput'
  /// - "FLOW_CHART_MANUAL_OPERATION" : Manual operation flow shape. Corresponds
  /// to ECMA-376 ST_ShapeType 'flowChartManualOperation'
  /// - "FLOW_CHART_MERGE" : Merge flow shape. Corresponds to ECMA-376
  /// ST_ShapeType 'flowChartMerge'
  /// - "FLOW_CHART_MULTIDOCUMENT" : Multi-document flow shape. Corresponds to
  /// ECMA-376 ST_ShapeType 'flowChartMultidocument'
  /// - "FLOW_CHART_OFFLINE_STORAGE" : Offline storage flow shape. Corresponds
  /// to ECMA-376 ST_ShapeType 'flowChartOfflineStorage'
  /// - "FLOW_CHART_OFFPAGE_CONNECTOR" : Off-page connector flow shape.
  /// Corresponds to ECMA-376 ST_ShapeType 'flowChartOffpageConnector'
  /// - "FLOW_CHART_ONLINE_STORAGE" : Online storage flow shape. Corresponds to
  /// ECMA-376 ST_ShapeType 'flowChartOnlineStorage'
  /// - "FLOW_CHART_OR" : Or flow shape. Corresponds to ECMA-376 ST_ShapeType
  /// 'flowChartOr'
  /// - "FLOW_CHART_PREDEFINED_PROCESS" : Predefined process flow shape.
  /// Corresponds to ECMA-376 ST_ShapeType 'flowChartPredefinedProcess'
  /// - "FLOW_CHART_PREPARATION" : Preparation flow shape. Corresponds to
  /// ECMA-376 ST_ShapeType 'flowChartPreparation'
  /// - "FLOW_CHART_PROCESS" : Process flow shape. Corresponds to ECMA-376
  /// ST_ShapeType 'flowChartProcess'
  /// - "FLOW_CHART_PUNCHED_CARD" : Punched card flow shape. Corresponds to
  /// ECMA-376 ST_ShapeType 'flowChartPunchedCard'
  /// - "FLOW_CHART_PUNCHED_TAPE" : Punched tape flow shape. Corresponds to
  /// ECMA-376 ST_ShapeType 'flowChartPunchedTape'
  /// - "FLOW_CHART_SORT" : Sort flow shape. Corresponds to ECMA-376
  /// ST_ShapeType 'flowChartSort'
  /// - "FLOW_CHART_SUMMING_JUNCTION" : Summing junction flow shape. Corresponds
  /// to ECMA-376 ST_ShapeType 'flowChartSummingJunction'
  /// - "FLOW_CHART_TERMINATOR" : Terminator flow shape. Corresponds to ECMA-376
  /// ST_ShapeType 'flowChartTerminator'
  /// - "ARROW_EAST" : East arrow shape.
  /// - "ARROW_NORTH_EAST" : Northeast arrow shape.
  /// - "ARROW_NORTH" : North arrow shape.
  /// - "SPEECH" : Speech shape.
  /// - "STARBURST" : Star burst shape.
  /// - "TEARDROP" : Teardrop shape. Corresponds to ECMA-376 ST_ShapeType
  /// 'teardrop'
  /// - "ELLIPSE_RIBBON" : Ellipse ribbon shape. Corresponds to ECMA-376
  /// ST_ShapeType 'ellipseRibbon'
  /// - "ELLIPSE_RIBBON_2" : Ellipse ribbon 2 shape. Corresponds to ECMA-376
  /// ST_ShapeType 'ellipseRibbon2'
  /// - "CLOUD_CALLOUT" : Callout cloud shape. Corresponds to ECMA-376
  /// ST_ShapeType 'cloudCallout'
  /// - "CUSTOM" : Custom shape.
  core.String? shapeType;

  /// The text content of the shape.
  TextContent? text;

  Shape({
    this.placeholder,
    this.shapeProperties,
    this.shapeType,
    this.text,
  });

  Shape.fromJson(core.Map json_)
      : this(
          placeholder: json_.containsKey('placeholder')
              ? Placeholder.fromJson(
                  json_['placeholder'] as core.Map<core.String, core.dynamic>)
              : null,
          shapeProperties: json_.containsKey('shapeProperties')
              ? ShapeProperties.fromJson(json_['shapeProperties']
                  as core.Map<core.String, core.dynamic>)
              : null,
          shapeType: json_.containsKey('shapeType')
              ? json_['shapeType'] as core.String
              : null,
          text: json_.containsKey('text')
              ? TextContent.fromJson(
                  json_['text'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (placeholder != null) 'placeholder': placeholder!,
        if (shapeProperties != null) 'shapeProperties': shapeProperties!,
        if (shapeType != null) 'shapeType': shapeType!,
        if (text != null) 'text': text!,
      };
}

/// The shape background fill.
class ShapeBackgroundFill {
  /// The background fill property state.
  ///
  /// Updating the fill on a shape will implicitly update this field to
  /// `RENDERED`, unless another value is specified in the same request. To have
  /// no fill on a shape, set this field to `NOT_RENDERED`. In this case, any
  /// other fill fields set in the same request will be ignored.
  /// Possible string values are:
  /// - "RENDERED" : If a property's state is RENDERED, then the element has the
  /// corresponding property when rendered on a page. If the element is a
  /// placeholder shape as determined by the placeholder field, and it inherits
  /// from a placeholder shape, the corresponding field may be unset, meaning
  /// that the property value is inherited from a parent placeholder. If the
  /// element does not inherit, then the field will contain the rendered value.
  /// This is the default value.
  /// - "NOT_RENDERED" : If a property's state is NOT_RENDERED, then the element
  /// does not have the corresponding property when rendered on a page. However,
  /// the field may still be set so it can be inherited by child shapes. To
  /// remove a property from a rendered element, set its property_state to
  /// NOT_RENDERED.
  /// - "INHERIT" : If a property's state is INHERIT, then the property state
  /// uses the value of corresponding `property_state` field on the parent
  /// shape. Elements that do not inherit will never have an INHERIT property
  /// state.
  core.String? propertyState;

  /// Solid color fill.
  SolidFill? solidFill;

  ShapeBackgroundFill({
    this.propertyState,
    this.solidFill,
  });

  ShapeBackgroundFill.fromJson(core.Map json_)
      : this(
          propertyState: json_.containsKey('propertyState')
              ? json_['propertyState'] as core.String
              : null,
          solidFill: json_.containsKey('solidFill')
              ? SolidFill.fromJson(
                  json_['solidFill'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (propertyState != null) 'propertyState': propertyState!,
        if (solidFill != null) 'solidFill': solidFill!,
      };
}

/// The properties of a Shape.
///
/// If the shape is a placeholder shape as determined by the placeholder field,
/// then these properties may be inherited from a parent placeholder shape.
/// Determining the rendered value of the property depends on the corresponding
/// property_state field value. Any text autofit settings on the shape are
/// automatically deactivated by requests that can impact how text fits in the
/// shape.
class ShapeProperties {
  /// The autofit properties of the shape.
  ///
  /// This property is only set for shapes that allow text.
  Autofit? autofit;

  /// The alignment of the content in the shape.
  ///
  /// If unspecified, the alignment is inherited from a parent placeholder if it
  /// exists. If the shape has no parent, the default alignment matches the
  /// alignment for new shapes created in the Slides editor.
  /// Possible string values are:
  /// - "CONTENT_ALIGNMENT_UNSPECIFIED" : An unspecified content alignment. The
  /// content alignment is inherited from the parent if it exists.
  /// - "CONTENT_ALIGNMENT_UNSUPPORTED" : An unsupported content alignment.
  /// - "TOP" : An alignment that aligns the content to the top of the content
  /// holder. Corresponds to ECMA-376 ST_TextAnchoringType 't'.
  /// - "MIDDLE" : An alignment that aligns the content to the middle of the
  /// content holder. Corresponds to ECMA-376 ST_TextAnchoringType 'ctr'.
  /// - "BOTTOM" : An alignment that aligns the content to the bottom of the
  /// content holder. Corresponds to ECMA-376 ST_TextAnchoringType 'b'.
  core.String? contentAlignment;

  /// The hyperlink destination of the shape.
  ///
  /// If unset, there is no link. Links are not inherited from parent
  /// placeholders.
  Link? link;

  /// The outline of the shape.
  ///
  /// If unset, the outline is inherited from a parent placeholder if it exists.
  /// If the shape has no parent, then the default outline depends on the shape
  /// type, matching the defaults for new shapes created in the Slides editor.
  Outline? outline;

  /// The shadow properties of the shape.
  ///
  /// If unset, the shadow is inherited from a parent placeholder if it exists.
  /// If the shape has no parent, then the default shadow matches the defaults
  /// for new shapes created in the Slides editor. This property is read-only.
  Shadow? shadow;

  /// The background fill of the shape.
  ///
  /// If unset, the background fill is inherited from a parent placeholder if it
  /// exists. If the shape has no parent, then the default background fill
  /// depends on the shape type, matching the defaults for new shapes created in
  /// the Slides editor.
  ShapeBackgroundFill? shapeBackgroundFill;

  ShapeProperties({
    this.autofit,
    this.contentAlignment,
    this.link,
    this.outline,
    this.shadow,
    this.shapeBackgroundFill,
  });

  ShapeProperties.fromJson(core.Map json_)
      : this(
          autofit: json_.containsKey('autofit')
              ? Autofit.fromJson(
                  json_['autofit'] as core.Map<core.String, core.dynamic>)
              : null,
          contentAlignment: json_.containsKey('contentAlignment')
              ? json_['contentAlignment'] as core.String
              : null,
          link: json_.containsKey('link')
              ? Link.fromJson(
                  json_['link'] as core.Map<core.String, core.dynamic>)
              : null,
          outline: json_.containsKey('outline')
              ? Outline.fromJson(
                  json_['outline'] as core.Map<core.String, core.dynamic>)
              : null,
          shadow: json_.containsKey('shadow')
              ? Shadow.fromJson(
                  json_['shadow'] as core.Map<core.String, core.dynamic>)
              : null,
          shapeBackgroundFill: json_.containsKey('shapeBackgroundFill')
              ? ShapeBackgroundFill.fromJson(json_['shapeBackgroundFill']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (autofit != null) 'autofit': autofit!,
        if (contentAlignment != null) 'contentAlignment': contentAlignment!,
        if (link != null) 'link': link!,
        if (outline != null) 'outline': outline!,
        if (shadow != null) 'shadow': shadow!,
        if (shapeBackgroundFill != null)
          'shapeBackgroundFill': shapeBackgroundFill!,
      };
}

/// A PageElement kind representing a linked chart embedded from Google Sheets.
class SheetsChart {
  /// The ID of the specific chart in the Google Sheets spreadsheet that is
  /// embedded.
  core.int? chartId;

  /// The URL of an image of the embedded chart, with a default lifetime of 30
  /// minutes.
  ///
  /// This URL is tagged with the account of the requester. Anyone with the URL
  /// effectively accesses the image as the original requester. Access to the
  /// image may be lost if the presentation's sharing settings change.
  core.String? contentUrl;

  /// The properties of the Sheets chart.
  SheetsChartProperties? sheetsChartProperties;

  /// The ID of the Google Sheets spreadsheet that contains the source chart.
  core.String? spreadsheetId;

  SheetsChart({
    this.chartId,
    this.contentUrl,
    this.sheetsChartProperties,
    this.spreadsheetId,
  });

  SheetsChart.fromJson(core.Map json_)
      : this(
          chartId: json_.containsKey('chartId')
              ? json_['chartId'] as core.int
              : null,
          contentUrl: json_.containsKey('contentUrl')
              ? json_['contentUrl'] as core.String
              : null,
          sheetsChartProperties: json_.containsKey('sheetsChartProperties')
              ? SheetsChartProperties.fromJson(json_['sheetsChartProperties']
                  as core.Map<core.String, core.dynamic>)
              : null,
          spreadsheetId: json_.containsKey('spreadsheetId')
              ? json_['spreadsheetId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (chartId != null) 'chartId': chartId!,
        if (contentUrl != null) 'contentUrl': contentUrl!,
        if (sheetsChartProperties != null)
          'sheetsChartProperties': sheetsChartProperties!,
        if (spreadsheetId != null) 'spreadsheetId': spreadsheetId!,
      };
}

/// The properties of the SheetsChart.
class SheetsChartProperties {
  /// The properties of the embedded chart image.
  ImageProperties? chartImageProperties;

  SheetsChartProperties({
    this.chartImageProperties,
  });

  SheetsChartProperties.fromJson(core.Map json_)
      : this(
          chartImageProperties: json_.containsKey('chartImageProperties')
              ? ImageProperties.fromJson(json_['chartImageProperties']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (chartImageProperties != null)
          'chartImageProperties': chartImageProperties!,
      };
}

/// A width and height.
class Size {
  /// The height of the object.
  Dimension? height;

  /// The width of the object.
  Dimension? width;

  Size({
    this.height,
    this.width,
  });

  Size.fromJson(core.Map json_)
      : this(
          height: json_.containsKey('height')
              ? Dimension.fromJson(
                  json_['height'] as core.Map<core.String, core.dynamic>)
              : null,
          width: json_.containsKey('width')
              ? Dimension.fromJson(
                  json_['width'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (height != null) 'height': height!,
        if (width != null) 'width': width!,
      };
}

/// The properties of Page that are only relevant for pages with page_type
/// SLIDE.
class SlideProperties {
  /// Whether the slide is skipped in the presentation mode.
  ///
  /// Defaults to false.
  core.bool? isSkipped;

  /// The object ID of the layout that this slide is based on.
  ///
  /// This property is read-only.
  core.String? layoutObjectId;

  /// The object ID of the master that this slide is based on.
  ///
  /// This property is read-only.
  core.String? masterObjectId;

  /// The notes page that this slide is associated with.
  ///
  /// It defines the visual appearance of a notes page when printing or
  /// exporting slides with speaker notes. A notes page inherits properties from
  /// the notes master. The placeholder shape with type BODY on the notes page
  /// contains the speaker notes for this slide. The ID of this shape is
  /// identified by the speakerNotesObjectId field. The notes page is read-only
  /// except for the text content and styles of the speaker notes shape. This
  /// property is read-only.
  Page? notesPage;

  SlideProperties({
    this.isSkipped,
    this.layoutObjectId,
    this.masterObjectId,
    this.notesPage,
  });

  SlideProperties.fromJson(core.Map json_)
      : this(
          isSkipped: json_.containsKey('isSkipped')
              ? json_['isSkipped'] as core.bool
              : null,
          layoutObjectId: json_.containsKey('layoutObjectId')
              ? json_['layoutObjectId'] as core.String
              : null,
          masterObjectId: json_.containsKey('masterObjectId')
              ? json_['masterObjectId'] as core.String
              : null,
          notesPage: json_.containsKey('notesPage')
              ? Page.fromJson(
                  json_['notesPage'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (isSkipped != null) 'isSkipped': isSkipped!,
        if (layoutObjectId != null) 'layoutObjectId': layoutObjectId!,
        if (masterObjectId != null) 'masterObjectId': masterObjectId!,
        if (notesPage != null) 'notesPage': notesPage!,
      };
}

/// A solid color fill.
///
/// The page or page element is filled entirely with the specified color value.
/// If any field is unset, its value may be inherited from a parent placeholder
/// if it exists.
class SolidFill {
  /// The fraction of this `color` that should be applied to the pixel.
  ///
  /// That is, the final pixel color is defined by the equation: pixel color =
  /// alpha * (color) + (1.0 - alpha) * (background color) This means that a
  /// value of 1.0 corresponds to a solid color, whereas a value of 0.0
  /// corresponds to a completely transparent color.
  core.double? alpha;

  /// The color value of the solid fill.
  OpaqueColor? color;

  SolidFill({
    this.alpha,
    this.color,
  });

  SolidFill.fromJson(core.Map json_)
      : this(
          alpha: json_.containsKey('alpha')
              ? (json_['alpha'] as core.num).toDouble()
              : null,
          color: json_.containsKey('color')
              ? OpaqueColor.fromJson(
                  json_['color'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (alpha != null) 'alpha': alpha!,
        if (color != null) 'color': color!,
      };
}

/// The stretched picture fill.
///
/// The page or page element is filled entirely with the specified picture. The
/// picture is stretched to fit its container.
class StretchedPictureFill {
  /// Reading the content_url: An URL to a picture with a default lifetime of 30
  /// minutes.
  ///
  /// This URL is tagged with the account of the requester. Anyone with the URL
  /// effectively accesses the picture as the original requester. Access to the
  /// picture may be lost if the presentation's sharing settings change. Writing
  /// the content_url: The picture is fetched once at insertion time and a copy
  /// is stored for display inside the presentation. Pictures must be less than
  /// 50MB in size, cannot exceed 25 megapixels, and must be in one of PNG,
  /// JPEG, or GIF format. The provided URL can be at most 2 kB in length.
  core.String? contentUrl;

  /// The original size of the picture fill.
  ///
  /// This field is read-only.
  Size? size;

  StretchedPictureFill({
    this.contentUrl,
    this.size,
  });

  StretchedPictureFill.fromJson(core.Map json_)
      : this(
          contentUrl: json_.containsKey('contentUrl')
              ? json_['contentUrl'] as core.String
              : null,
          size: json_.containsKey('size')
              ? Size.fromJson(
                  json_['size'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (contentUrl != null) 'contentUrl': contentUrl!,
        if (size != null) 'size': size!,
      };
}

/// A criteria that matches a specific string of text in a shape or table.
class SubstringMatchCriteria {
  /// Indicates whether the search should respect case: - `True`: the search is
  /// case sensitive.
  ///
  /// - `False`: the search is case insensitive.
  core.bool? matchCase;

  /// The text to search for in the shape or table.
  core.String? text;

  SubstringMatchCriteria({
    this.matchCase,
    this.text,
  });

  SubstringMatchCriteria.fromJson(core.Map json_)
      : this(
          matchCase: json_.containsKey('matchCase')
              ? json_['matchCase'] as core.bool
              : null,
          text: json_.containsKey('text') ? json_['text'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (matchCase != null) 'matchCase': matchCase!,
        if (text != null) 'text': text!,
      };
}

/// A PageElement kind representing a table.
class Table {
  /// Number of columns in the table.
  core.int? columns;

  /// Properties of horizontal cell borders.
  ///
  /// A table's horizontal cell borders are represented as a grid. The grid has
  /// one more row than the number of rows in the table and the same number of
  /// columns as the table. For example, if the table is 3 x 3, its horizontal
  /// borders will be represented as a grid with 4 rows and 3 columns.
  core.List<TableBorderRow>? horizontalBorderRows;

  /// Number of rows in the table.
  core.int? rows;

  /// Properties of each column.
  core.List<TableColumnProperties>? tableColumns;

  /// Properties and contents of each row.
  ///
  /// Cells that span multiple rows are contained in only one of these rows and
  /// have a row_span greater than 1.
  core.List<TableRow>? tableRows;

  /// Properties of vertical cell borders.
  ///
  /// A table's vertical cell borders are represented as a grid. The grid has
  /// the same number of rows as the table and one more column than the number
  /// of columns in the table. For example, if the table is 3 x 3, its vertical
  /// borders will be represented as a grid with 3 rows and 4 columns.
  core.List<TableBorderRow>? verticalBorderRows;

  Table({
    this.columns,
    this.horizontalBorderRows,
    this.rows,
    this.tableColumns,
    this.tableRows,
    this.verticalBorderRows,
  });

  Table.fromJson(core.Map json_)
      : this(
          columns: json_.containsKey('columns')
              ? json_['columns'] as core.int
              : null,
          horizontalBorderRows: json_.containsKey('horizontalBorderRows')
              ? (json_['horizontalBorderRows'] as core.List)
                  .map((value) => TableBorderRow.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          rows: json_.containsKey('rows') ? json_['rows'] as core.int : null,
          tableColumns: json_.containsKey('tableColumns')
              ? (json_['tableColumns'] as core.List)
                  .map((value) => TableColumnProperties.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          tableRows: json_.containsKey('tableRows')
              ? (json_['tableRows'] as core.List)
                  .map((value) => TableRow.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          verticalBorderRows: json_.containsKey('verticalBorderRows')
              ? (json_['verticalBorderRows'] as core.List)
                  .map((value) => TableBorderRow.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (columns != null) 'columns': columns!,
        if (horizontalBorderRows != null)
          'horizontalBorderRows': horizontalBorderRows!,
        if (rows != null) 'rows': rows!,
        if (tableColumns != null) 'tableColumns': tableColumns!,
        if (tableRows != null) 'tableRows': tableRows!,
        if (verticalBorderRows != null)
          'verticalBorderRows': verticalBorderRows!,
      };
}

/// The properties of each border cell.
class TableBorderCell {
  /// The location of the border within the border table.
  TableCellLocation? location;

  /// The border properties.
  TableBorderProperties? tableBorderProperties;

  TableBorderCell({
    this.location,
    this.tableBorderProperties,
  });

  TableBorderCell.fromJson(core.Map json_)
      : this(
          location: json_.containsKey('location')
              ? TableCellLocation.fromJson(
                  json_['location'] as core.Map<core.String, core.dynamic>)
              : null,
          tableBorderProperties: json_.containsKey('tableBorderProperties')
              ? TableBorderProperties.fromJson(json_['tableBorderProperties']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (location != null) 'location': location!,
        if (tableBorderProperties != null)
          'tableBorderProperties': tableBorderProperties!,
      };
}

/// The fill of the border.
class TableBorderFill {
  /// Solid fill.
  SolidFill? solidFill;

  TableBorderFill({
    this.solidFill,
  });

  TableBorderFill.fromJson(core.Map json_)
      : this(
          solidFill: json_.containsKey('solidFill')
              ? SolidFill.fromJson(
                  json_['solidFill'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (solidFill != null) 'solidFill': solidFill!,
      };
}

/// The border styling properties of the TableBorderCell.
class TableBorderProperties {
  /// The dash style of the border.
  /// Possible string values are:
  /// - "DASH_STYLE_UNSPECIFIED" : Unspecified dash style.
  /// - "SOLID" : Solid line. Corresponds to ECMA-376 ST_PresetLineDashVal value
  /// 'solid'. This is the default dash style.
  /// - "DOT" : Dotted line. Corresponds to ECMA-376 ST_PresetLineDashVal value
  /// 'dot'.
  /// - "DASH" : Dashed line. Corresponds to ECMA-376 ST_PresetLineDashVal value
  /// 'dash'.
  /// - "DASH_DOT" : Alternating dashes and dots. Corresponds to ECMA-376
  /// ST_PresetLineDashVal value 'dashDot'.
  /// - "LONG_DASH" : Line with large dashes. Corresponds to ECMA-376
  /// ST_PresetLineDashVal value 'lgDash'.
  /// - "LONG_DASH_DOT" : Alternating large dashes and dots. Corresponds to
  /// ECMA-376 ST_PresetLineDashVal value 'lgDashDot'.
  core.String? dashStyle;

  /// The fill of the table border.
  TableBorderFill? tableBorderFill;

  /// The thickness of the border.
  Dimension? weight;

  TableBorderProperties({
    this.dashStyle,
    this.tableBorderFill,
    this.weight,
  });

  TableBorderProperties.fromJson(core.Map json_)
      : this(
          dashStyle: json_.containsKey('dashStyle')
              ? json_['dashStyle'] as core.String
              : null,
          tableBorderFill: json_.containsKey('tableBorderFill')
              ? TableBorderFill.fromJson(json_['tableBorderFill']
                  as core.Map<core.String, core.dynamic>)
              : null,
          weight: json_.containsKey('weight')
              ? Dimension.fromJson(
                  json_['weight'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dashStyle != null) 'dashStyle': dashStyle!,
        if (tableBorderFill != null) 'tableBorderFill': tableBorderFill!,
        if (weight != null) 'weight': weight!,
      };
}

/// Contents of each border row in a table.
class TableBorderRow {
  /// Properties of each border cell.
  ///
  /// When a border's adjacent table cells are merged, it is not included in the
  /// response.
  core.List<TableBorderCell>? tableBorderCells;

  TableBorderRow({
    this.tableBorderCells,
  });

  TableBorderRow.fromJson(core.Map json_)
      : this(
          tableBorderCells: json_.containsKey('tableBorderCells')
              ? (json_['tableBorderCells'] as core.List)
                  .map((value) => TableBorderCell.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (tableBorderCells != null) 'tableBorderCells': tableBorderCells!,
      };
}

/// Properties and contents of each table cell.
class TableCell {
  /// Column span of the cell.
  core.int? columnSpan;

  /// The location of the cell within the table.
  TableCellLocation? location;

  /// Row span of the cell.
  core.int? rowSpan;

  /// The properties of the table cell.
  TableCellProperties? tableCellProperties;

  /// The text content of the cell.
  TextContent? text;

  TableCell({
    this.columnSpan,
    this.location,
    this.rowSpan,
    this.tableCellProperties,
    this.text,
  });

  TableCell.fromJson(core.Map json_)
      : this(
          columnSpan: json_.containsKey('columnSpan')
              ? json_['columnSpan'] as core.int
              : null,
          location: json_.containsKey('location')
              ? TableCellLocation.fromJson(
                  json_['location'] as core.Map<core.String, core.dynamic>)
              : null,
          rowSpan: json_.containsKey('rowSpan')
              ? json_['rowSpan'] as core.int
              : null,
          tableCellProperties: json_.containsKey('tableCellProperties')
              ? TableCellProperties.fromJson(json_['tableCellProperties']
                  as core.Map<core.String, core.dynamic>)
              : null,
          text: json_.containsKey('text')
              ? TextContent.fromJson(
                  json_['text'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (columnSpan != null) 'columnSpan': columnSpan!,
        if (location != null) 'location': location!,
        if (rowSpan != null) 'rowSpan': rowSpan!,
        if (tableCellProperties != null)
          'tableCellProperties': tableCellProperties!,
        if (text != null) 'text': text!,
      };
}

/// The table cell background fill.
class TableCellBackgroundFill {
  /// The background fill property state.
  ///
  /// Updating the fill on a table cell will implicitly update this field to
  /// `RENDERED`, unless another value is specified in the same request. To have
  /// no fill on a table cell, set this field to `NOT_RENDERED`. In this case,
  /// any other fill fields set in the same request will be ignored.
  /// Possible string values are:
  /// - "RENDERED" : If a property's state is RENDERED, then the element has the
  /// corresponding property when rendered on a page. If the element is a
  /// placeholder shape as determined by the placeholder field, and it inherits
  /// from a placeholder shape, the corresponding field may be unset, meaning
  /// that the property value is inherited from a parent placeholder. If the
  /// element does not inherit, then the field will contain the rendered value.
  /// This is the default value.
  /// - "NOT_RENDERED" : If a property's state is NOT_RENDERED, then the element
  /// does not have the corresponding property when rendered on a page. However,
  /// the field may still be set so it can be inherited by child shapes. To
  /// remove a property from a rendered element, set its property_state to
  /// NOT_RENDERED.
  /// - "INHERIT" : If a property's state is INHERIT, then the property state
  /// uses the value of corresponding `property_state` field on the parent
  /// shape. Elements that do not inherit will never have an INHERIT property
  /// state.
  core.String? propertyState;

  /// Solid color fill.
  SolidFill? solidFill;

  TableCellBackgroundFill({
    this.propertyState,
    this.solidFill,
  });

  TableCellBackgroundFill.fromJson(core.Map json_)
      : this(
          propertyState: json_.containsKey('propertyState')
              ? json_['propertyState'] as core.String
              : null,
          solidFill: json_.containsKey('solidFill')
              ? SolidFill.fromJson(
                  json_['solidFill'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (propertyState != null) 'propertyState': propertyState!,
        if (solidFill != null) 'solidFill': solidFill!,
      };
}

/// A location of a single table cell within a table.
class TableCellLocation {
  /// The 0-based column index.
  core.int? columnIndex;

  /// The 0-based row index.
  core.int? rowIndex;

  TableCellLocation({
    this.columnIndex,
    this.rowIndex,
  });

  TableCellLocation.fromJson(core.Map json_)
      : this(
          columnIndex: json_.containsKey('columnIndex')
              ? json_['columnIndex'] as core.int
              : null,
          rowIndex: json_.containsKey('rowIndex')
              ? json_['rowIndex'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (columnIndex != null) 'columnIndex': columnIndex!,
        if (rowIndex != null) 'rowIndex': rowIndex!,
      };
}

/// The properties of the TableCell.
class TableCellProperties {
  /// The alignment of the content in the table cell.
  ///
  /// The default alignment matches the alignment for newly created table cells
  /// in the Slides editor.
  /// Possible string values are:
  /// - "CONTENT_ALIGNMENT_UNSPECIFIED" : An unspecified content alignment. The
  /// content alignment is inherited from the parent if it exists.
  /// - "CONTENT_ALIGNMENT_UNSUPPORTED" : An unsupported content alignment.
  /// - "TOP" : An alignment that aligns the content to the top of the content
  /// holder. Corresponds to ECMA-376 ST_TextAnchoringType 't'.
  /// - "MIDDLE" : An alignment that aligns the content to the middle of the
  /// content holder. Corresponds to ECMA-376 ST_TextAnchoringType 'ctr'.
  /// - "BOTTOM" : An alignment that aligns the content to the bottom of the
  /// content holder. Corresponds to ECMA-376 ST_TextAnchoringType 'b'.
  core.String? contentAlignment;

  /// The background fill of the table cell.
  ///
  /// The default fill matches the fill for newly created table cells in the
  /// Slides editor.
  TableCellBackgroundFill? tableCellBackgroundFill;

  TableCellProperties({
    this.contentAlignment,
    this.tableCellBackgroundFill,
  });

  TableCellProperties.fromJson(core.Map json_)
      : this(
          contentAlignment: json_.containsKey('contentAlignment')
              ? json_['contentAlignment'] as core.String
              : null,
          tableCellBackgroundFill: json_.containsKey('tableCellBackgroundFill')
              ? TableCellBackgroundFill.fromJson(
                  json_['tableCellBackgroundFill']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (contentAlignment != null) 'contentAlignment': contentAlignment!,
        if (tableCellBackgroundFill != null)
          'tableCellBackgroundFill': tableCellBackgroundFill!,
      };
}

/// Properties of each column in a table.
class TableColumnProperties {
  /// Width of a column.
  Dimension? columnWidth;

  TableColumnProperties({
    this.columnWidth,
  });

  TableColumnProperties.fromJson(core.Map json_)
      : this(
          columnWidth: json_.containsKey('columnWidth')
              ? Dimension.fromJson(
                  json_['columnWidth'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (columnWidth != null) 'columnWidth': columnWidth!,
      };
}

/// A table range represents a reference to a subset of a table.
///
/// It's important to note that the cells specified by a table range do not
/// necessarily form a rectangle. For example, let's say we have a 3 x 3 table
/// where all the cells of the last row are merged together. The table looks
/// like this: \[ \] A table range with location = (0, 0), row span = 3 and
/// column span = 2 specifies the following cells: x x \[ x x x \]
class TableRange {
  /// The column span of the table range.
  core.int? columnSpan;

  /// The starting location of the table range.
  TableCellLocation? location;

  /// The row span of the table range.
  core.int? rowSpan;

  TableRange({
    this.columnSpan,
    this.location,
    this.rowSpan,
  });

  TableRange.fromJson(core.Map json_)
      : this(
          columnSpan: json_.containsKey('columnSpan')
              ? json_['columnSpan'] as core.int
              : null,
          location: json_.containsKey('location')
              ? TableCellLocation.fromJson(
                  json_['location'] as core.Map<core.String, core.dynamic>)
              : null,
          rowSpan: json_.containsKey('rowSpan')
              ? json_['rowSpan'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (columnSpan != null) 'columnSpan': columnSpan!,
        if (location != null) 'location': location!,
        if (rowSpan != null) 'rowSpan': rowSpan!,
      };
}

/// Properties and contents of each row in a table.
class TableRow {
  /// Height of a row.
  Dimension? rowHeight;

  /// Properties and contents of each cell.
  ///
  /// Cells that span multiple columns are represented only once with a
  /// column_span greater than 1. As a result, the length of this collection
  /// does not always match the number of columns of the entire table.
  core.List<TableCell>? tableCells;

  /// Properties of the row.
  TableRowProperties? tableRowProperties;

  TableRow({
    this.rowHeight,
    this.tableCells,
    this.tableRowProperties,
  });

  TableRow.fromJson(core.Map json_)
      : this(
          rowHeight: json_.containsKey('rowHeight')
              ? Dimension.fromJson(
                  json_['rowHeight'] as core.Map<core.String, core.dynamic>)
              : null,
          tableCells: json_.containsKey('tableCells')
              ? (json_['tableCells'] as core.List)
                  .map((value) => TableCell.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          tableRowProperties: json_.containsKey('tableRowProperties')
              ? TableRowProperties.fromJson(json_['tableRowProperties']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (rowHeight != null) 'rowHeight': rowHeight!,
        if (tableCells != null) 'tableCells': tableCells!,
        if (tableRowProperties != null)
          'tableRowProperties': tableRowProperties!,
      };
}

/// Properties of each row in a table.
class TableRowProperties {
  /// Minimum height of the row.
  ///
  /// The row will be rendered in the Slides editor at a height equal to or
  /// greater than this value in order to show all the text in the row's
  /// cell(s).
  Dimension? minRowHeight;

  TableRowProperties({
    this.minRowHeight,
  });

  TableRowProperties.fromJson(core.Map json_)
      : this(
          minRowHeight: json_.containsKey('minRowHeight')
              ? Dimension.fromJson(
                  json_['minRowHeight'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (minRowHeight != null) 'minRowHeight': minRowHeight!,
      };
}

/// The general text content.
///
/// The text must reside in a compatible shape (e.g. text box or rectangle) or a
/// table cell in a page.
class TextContent {
  /// The bulleted lists contained in this text, keyed by list ID.
  core.Map<core.String, List>? lists;

  /// The text contents broken down into its component parts, including styling
  /// information.
  ///
  /// This property is read-only.
  core.List<TextElement>? textElements;

  TextContent({
    this.lists,
    this.textElements,
  });

  TextContent.fromJson(core.Map json_)
      : this(
          lists: json_.containsKey('lists')
              ? (json_['lists'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    List.fromJson(item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          textElements: json_.containsKey('textElements')
              ? (json_['textElements'] as core.List)
                  .map((value) => TextElement.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (lists != null) 'lists': lists!,
        if (textElements != null) 'textElements': textElements!,
      };
}

/// A TextElement describes the content of a range of indices in the text
/// content of a Shape or TableCell.
class TextElement {
  /// A TextElement representing a spot in the text that is dynamically replaced
  /// with content that can change over time.
  AutoText? autoText;

  /// The zero-based end index of this text element, exclusive, in Unicode code
  /// units.
  core.int? endIndex;

  /// A marker representing the beginning of a new paragraph.
  ///
  /// The `start_index` and `end_index` of this TextElement represent the range
  /// of the paragraph. Other TextElements with an index range contained inside
  /// this paragraph's range are considered to be part of this paragraph. The
  /// range of indices of two separate paragraphs will never overlap.
  ParagraphMarker? paragraphMarker;

  /// The zero-based start index of this text element, in Unicode code units.
  core.int? startIndex;

  /// A TextElement representing a run of text where all of the characters in
  /// the run have the same TextStyle.
  ///
  /// The `start_index` and `end_index` of TextRuns will always be fully
  /// contained in the index range of a single `paragraph_marker` TextElement.
  /// In other words, a TextRun will never span multiple paragraphs.
  TextRun? textRun;

  TextElement({
    this.autoText,
    this.endIndex,
    this.paragraphMarker,
    this.startIndex,
    this.textRun,
  });

  TextElement.fromJson(core.Map json_)
      : this(
          autoText: json_.containsKey('autoText')
              ? AutoText.fromJson(
                  json_['autoText'] as core.Map<core.String, core.dynamic>)
              : null,
          endIndex: json_.containsKey('endIndex')
              ? json_['endIndex'] as core.int
              : null,
          paragraphMarker: json_.containsKey('paragraphMarker')
              ? ParagraphMarker.fromJson(json_['paragraphMarker']
                  as core.Map<core.String, core.dynamic>)
              : null,
          startIndex: json_.containsKey('startIndex')
              ? json_['startIndex'] as core.int
              : null,
          textRun: json_.containsKey('textRun')
              ? TextRun.fromJson(
                  json_['textRun'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (autoText != null) 'autoText': autoText!,
        if (endIndex != null) 'endIndex': endIndex!,
        if (paragraphMarker != null) 'paragraphMarker': paragraphMarker!,
        if (startIndex != null) 'startIndex': startIndex!,
        if (textRun != null) 'textRun': textRun!,
      };
}

/// A TextElement kind that represents a run of text that all has the same
/// styling.
class TextRun {
  /// The text of this run.
  core.String? content;

  /// The styling applied to this run.
  TextStyle? style;

  TextRun({
    this.content,
    this.style,
  });

  TextRun.fromJson(core.Map json_)
      : this(
          content: json_.containsKey('content')
              ? json_['content'] as core.String
              : null,
          style: json_.containsKey('style')
              ? TextStyle.fromJson(
                  json_['style'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (content != null) 'content': content!,
        if (style != null) 'style': style!,
      };
}

/// Represents the styling that can be applied to a TextRun.
///
/// If this text is contained in a shape with a parent placeholder, then these
/// text styles may be inherited from the parent. Which text styles are
/// inherited depend on the nesting level of lists: * A text run in a paragraph
/// that is not in a list will inherit its text style from the the newline
/// character in the paragraph at the 0 nesting level of the list inside the
/// parent placeholder. * A text run in a paragraph that is in a list will
/// inherit its text style from the newline character in the paragraph at its
/// corresponding nesting level of the list inside the parent placeholder.
/// Inherited text styles are represented as unset fields in this message. If
/// text is contained in a shape without a parent placeholder, unsetting these
/// fields will revert the style to a value matching the defaults in the Slides
/// editor.
class TextStyle {
  /// The background color of the text.
  ///
  /// If set, the color is either opaque or transparent, depending on if the
  /// `opaque_color` field in it is set.
  OptionalColor? backgroundColor;

  /// The text's vertical offset from its normal position.
  ///
  /// Text with `SUPERSCRIPT` or `SUBSCRIPT` baseline offsets is automatically
  /// rendered in a smaller font size, computed based on the `font_size` field.
  /// The `font_size` itself is not affected by changes in this field.
  /// Possible string values are:
  /// - "BASELINE_OFFSET_UNSPECIFIED" : The text's baseline offset is inherited
  /// from the parent.
  /// - "NONE" : The text is not vertically offset.
  /// - "SUPERSCRIPT" : The text is vertically offset upwards (superscript).
  /// - "SUBSCRIPT" : The text is vertically offset downwards (subscript).
  core.String? baselineOffset;

  /// Whether or not the text is rendered as bold.
  core.bool? bold;

  /// The font family of the text.
  ///
  /// The font family can be any font from the Font menu in Slides or from
  /// [Google Fonts](https://fonts.google.com/). If the font name is
  /// unrecognized, the text is rendered in `Arial`. Some fonts can affect the
  /// weight of the text. If an update request specifies values for both
  /// `font_family` and `bold`, the explicitly-set `bold` value is used.
  core.String? fontFamily;

  /// The size of the text's font.
  ///
  /// When read, the `font_size` will specified in points.
  Dimension? fontSize;

  /// The color of the text itself.
  ///
  /// If set, the color is either opaque or transparent, depending on if the
  /// `opaque_color` field in it is set.
  OptionalColor? foregroundColor;

  /// Whether or not the text is italicized.
  core.bool? italic;

  /// The hyperlink destination of the text.
  ///
  /// If unset, there is no link. Links are not inherited from parent text.
  /// Changing the link in an update request causes some other changes to the
  /// text style of the range: * When setting a link, the text foreground color
  /// will be set to ThemeColorType.HYPERLINK and the text will be underlined.
  /// If these fields are modified in the same request, those values will be
  /// used instead of the link defaults. * Setting a link on a text range that
  /// overlaps with an existing link will also update the existing link to point
  /// to the new URL. * Links are not settable on newline characters. As a
  /// result, setting a link on a text range that crosses a paragraph boundary,
  /// such as `"ABC\n123"`, will separate the newline character(s) into their
  /// own text runs. The link will be applied separately to the runs before and
  /// after the newline. * Removing a link will update the text style of the
  /// range to match the style of the preceding text (or the default text styles
  /// if the preceding text is another link) unless different styles are being
  /// set in the same request.
  Link? link;

  /// Whether or not the text is in small capital letters.
  core.bool? smallCaps;

  /// Whether or not the text is struck through.
  core.bool? strikethrough;

  /// Whether or not the text is underlined.
  core.bool? underline;

  /// The font family and rendered weight of the text.
  ///
  /// This field is an extension of `font_family` meant to support explicit font
  /// weights without breaking backwards compatibility. As such, when reading
  /// the style of a range of text, the value of
  /// `weighted_font_family#font_family` will always be equal to that of
  /// `font_family`. However, when writing, if both fields are included in the
  /// field mask (either explicitly or through the wildcard `"*"`), their values
  /// are reconciled as follows: * If `font_family` is set and
  /// `weighted_font_family` is not, the value of `font_family` is applied with
  /// weight `400` ("normal"). * If both fields are set, the value of
  /// `font_family` must match that of `weighted_font_family#font_family`. If
  /// so, the font family and weight of `weighted_font_family` is applied.
  /// Otherwise, a 400 bad request error is returned. * If
  /// `weighted_font_family` is set and `font_family` is not, the font family
  /// and weight of `weighted_font_family` is applied. * If neither field is
  /// set, the font family and weight of the text inherit from the parent. Note
  /// that these properties cannot inherit separately from each other. If an
  /// update request specifies values for both `weighted_font_family` and
  /// `bold`, the `weighted_font_family` is applied first, then `bold`. If
  /// `weighted_font_family#weight` is not set, it defaults to `400`. If
  /// `weighted_font_family` is set, then `weighted_font_family#font_family`
  /// must also be set with a non-empty value. Otherwise, a 400 bad request
  /// error is returned.
  WeightedFontFamily? weightedFontFamily;

  TextStyle({
    this.backgroundColor,
    this.baselineOffset,
    this.bold,
    this.fontFamily,
    this.fontSize,
    this.foregroundColor,
    this.italic,
    this.link,
    this.smallCaps,
    this.strikethrough,
    this.underline,
    this.weightedFontFamily,
  });

  TextStyle.fromJson(core.Map json_)
      : this(
          backgroundColor: json_.containsKey('backgroundColor')
              ? OptionalColor.fromJson(json_['backgroundColor']
                  as core.Map<core.String, core.dynamic>)
              : null,
          baselineOffset: json_.containsKey('baselineOffset')
              ? json_['baselineOffset'] as core.String
              : null,
          bold: json_.containsKey('bold') ? json_['bold'] as core.bool : null,
          fontFamily: json_.containsKey('fontFamily')
              ? json_['fontFamily'] as core.String
              : null,
          fontSize: json_.containsKey('fontSize')
              ? Dimension.fromJson(
                  json_['fontSize'] as core.Map<core.String, core.dynamic>)
              : null,
          foregroundColor: json_.containsKey('foregroundColor')
              ? OptionalColor.fromJson(json_['foregroundColor']
                  as core.Map<core.String, core.dynamic>)
              : null,
          italic:
              json_.containsKey('italic') ? json_['italic'] as core.bool : null,
          link: json_.containsKey('link')
              ? Link.fromJson(
                  json_['link'] as core.Map<core.String, core.dynamic>)
              : null,
          smallCaps: json_.containsKey('smallCaps')
              ? json_['smallCaps'] as core.bool
              : null,
          strikethrough: json_.containsKey('strikethrough')
              ? json_['strikethrough'] as core.bool
              : null,
          underline: json_.containsKey('underline')
              ? json_['underline'] as core.bool
              : null,
          weightedFontFamily: json_.containsKey('weightedFontFamily')
              ? WeightedFontFamily.fromJson(json_['weightedFontFamily']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (backgroundColor != null) 'backgroundColor': backgroundColor!,
        if (baselineOffset != null) 'baselineOffset': baselineOffset!,
        if (bold != null) 'bold': bold!,
        if (fontFamily != null) 'fontFamily': fontFamily!,
        if (fontSize != null) 'fontSize': fontSize!,
        if (foregroundColor != null) 'foregroundColor': foregroundColor!,
        if (italic != null) 'italic': italic!,
        if (link != null) 'link': link!,
        if (smallCaps != null) 'smallCaps': smallCaps!,
        if (strikethrough != null) 'strikethrough': strikethrough!,
        if (underline != null) 'underline': underline!,
        if (weightedFontFamily != null)
          'weightedFontFamily': weightedFontFamily!,
      };
}

/// A pair mapping a theme color type to the concrete color it represents.
class ThemeColorPair {
  /// The concrete color corresponding to the theme color type above.
  RgbColor? color;

  /// The type of the theme color.
  /// Possible string values are:
  /// - "THEME_COLOR_TYPE_UNSPECIFIED" : Unspecified theme color. This value
  /// should not be used.
  /// - "DARK1" : Represents the first dark color.
  /// - "LIGHT1" : Represents the first light color.
  /// - "DARK2" : Represents the second dark color.
  /// - "LIGHT2" : Represents the second light color.
  /// - "ACCENT1" : Represents the first accent color.
  /// - "ACCENT2" : Represents the second accent color.
  /// - "ACCENT3" : Represents the third accent color.
  /// - "ACCENT4" : Represents the fourth accent color.
  /// - "ACCENT5" : Represents the fifth accent color.
  /// - "ACCENT6" : Represents the sixth accent color.
  /// - "HYPERLINK" : Represents the color to use for hyperlinks.
  /// - "FOLLOWED_HYPERLINK" : Represents the color to use for visited
  /// hyperlinks.
  /// - "TEXT1" : Represents the first text color.
  /// - "BACKGROUND1" : Represents the first background color.
  /// - "TEXT2" : Represents the second text color.
  /// - "BACKGROUND2" : Represents the second background color.
  core.String? type;

  ThemeColorPair({
    this.color,
    this.type,
  });

  ThemeColorPair.fromJson(core.Map json_)
      : this(
          color: json_.containsKey('color')
              ? RgbColor.fromJson(
                  json_['color'] as core.Map<core.String, core.dynamic>)
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (color != null) 'color': color!,
        if (type != null) 'type': type!,
      };
}

/// The thumbnail of a page.
class Thumbnail {
  /// The content URL of the thumbnail image.
  ///
  /// The URL to the image has a default lifetime of 30 minutes. This URL is
  /// tagged with the account of the requester. Anyone with the URL effectively
  /// accesses the image as the original requester. Access to the image may be
  /// lost if the presentation's sharing settings change. The mime type of the
  /// thumbnail image is the same as specified in the `GetPageThumbnailRequest`.
  core.String? contentUrl;

  /// The positive height in pixels of the thumbnail image.
  core.int? height;

  /// The positive width in pixels of the thumbnail image.
  core.int? width;

  Thumbnail({
    this.contentUrl,
    this.height,
    this.width,
  });

  Thumbnail.fromJson(core.Map json_)
      : this(
          contentUrl: json_.containsKey('contentUrl')
              ? json_['contentUrl'] as core.String
              : null,
          height:
              json_.containsKey('height') ? json_['height'] as core.int : null,
          width: json_.containsKey('width') ? json_['width'] as core.int : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (contentUrl != null) 'contentUrl': contentUrl!,
        if (height != null) 'height': height!,
        if (width != null) 'width': width!,
      };
}

/// Ungroups objects, such as groups.
class UngroupObjectsRequest {
  /// The object IDs of the objects to ungroup.
  ///
  /// Only groups that are not inside other groups can be ungrouped. All the
  /// groups should be on the same page. The group itself is deleted. The visual
  /// sizes and positions of all the children are preserved.
  core.List<core.String>? objectIds;

  UngroupObjectsRequest({
    this.objectIds,
  });

  UngroupObjectsRequest.fromJson(core.Map json_)
      : this(
          objectIds: json_.containsKey('objectIds')
              ? (json_['objectIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (objectIds != null) 'objectIds': objectIds!,
      };
}

/// Unmerges cells in a Table.
class UnmergeTableCellsRequest {
  /// The object ID of the table.
  core.String? objectId;

  /// The table range specifying which cells of the table to unmerge.
  ///
  /// All merged cells in this range will be unmerged, and cells that are
  /// already unmerged will not be affected. If the range has no merged cells,
  /// the request will do nothing. If there is text in any of the merged cells,
  /// the text will remain in the upper-left ("head") cell of the resulting
  /// block of unmerged cells.
  TableRange? tableRange;

  UnmergeTableCellsRequest({
    this.objectId,
    this.tableRange,
  });

  UnmergeTableCellsRequest.fromJson(core.Map json_)
      : this(
          objectId: json_.containsKey('objectId')
              ? json_['objectId'] as core.String
              : null,
          tableRange: json_.containsKey('tableRange')
              ? TableRange.fromJson(
                  json_['tableRange'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (objectId != null) 'objectId': objectId!,
        if (tableRange != null) 'tableRange': tableRange!,
      };
}

/// Update the properties of an Image.
class UpdateImagePropertiesRequest {
  /// The fields that should be updated.
  ///
  /// At least one field must be specified. The root `imageProperties` is
  /// implied and should not be specified. A single `"*"` can be used as
  /// short-hand for listing every field. For example to update the image
  /// outline color, set `fields` to `"outline.outlineFill.solidFill.color"`. To
  /// reset a property to its default value, include its field name in the field
  /// mask but leave the field itself unset.
  core.String? fields;

  /// The image properties to update.
  ImageProperties? imageProperties;

  /// The object ID of the image the updates are applied to.
  core.String? objectId;

  UpdateImagePropertiesRequest({
    this.fields,
    this.imageProperties,
    this.objectId,
  });

  UpdateImagePropertiesRequest.fromJson(core.Map json_)
      : this(
          fields: json_.containsKey('fields')
              ? json_['fields'] as core.String
              : null,
          imageProperties: json_.containsKey('imageProperties')
              ? ImageProperties.fromJson(json_['imageProperties']
                  as core.Map<core.String, core.dynamic>)
              : null,
          objectId: json_.containsKey('objectId')
              ? json_['objectId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fields != null) 'fields': fields!,
        if (imageProperties != null) 'imageProperties': imageProperties!,
        if (objectId != null) 'objectId': objectId!,
      };
}

/// Updates the category of a line.
class UpdateLineCategoryRequest {
  /// The line category to update to.
  ///
  /// The exact line type is determined based on the category to update to and
  /// how it's routed to connect to other page elements.
  /// Possible string values are:
  /// - "LINE_CATEGORY_UNSPECIFIED" : Unspecified line category.
  /// - "STRAIGHT" : Straight connectors, including straight connector 1.
  /// - "BENT" : Bent connectors, including bent connector 2 to 5.
  /// - "CURVED" : Curved connectors, including curved connector 2 to 5.
  core.String? lineCategory;

  /// The object ID of the line the update is applied to.
  ///
  /// Only a line with a category indicating it is a "connector" can be updated.
  /// The line may be rerouted after updating its category.
  core.String? objectId;

  UpdateLineCategoryRequest({
    this.lineCategory,
    this.objectId,
  });

  UpdateLineCategoryRequest.fromJson(core.Map json_)
      : this(
          lineCategory: json_.containsKey('lineCategory')
              ? json_['lineCategory'] as core.String
              : null,
          objectId: json_.containsKey('objectId')
              ? json_['objectId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (lineCategory != null) 'lineCategory': lineCategory!,
        if (objectId != null) 'objectId': objectId!,
      };
}

/// Updates the properties of a Line.
class UpdateLinePropertiesRequest {
  /// The fields that should be updated.
  ///
  /// At least one field must be specified. The root `lineProperties` is implied
  /// and should not be specified. A single `"*"` can be used as short-hand for
  /// listing every field. For example to update the line solid fill color, set
  /// `fields` to `"lineFill.solidFill.color"`. To reset a property to its
  /// default value, include its field name in the field mask but leave the
  /// field itself unset.
  core.String? fields;

  /// The line properties to update.
  LineProperties? lineProperties;

  /// The object ID of the line the update is applied to.
  core.String? objectId;

  UpdateLinePropertiesRequest({
    this.fields,
    this.lineProperties,
    this.objectId,
  });

  UpdateLinePropertiesRequest.fromJson(core.Map json_)
      : this(
          fields: json_.containsKey('fields')
              ? json_['fields'] as core.String
              : null,
          lineProperties: json_.containsKey('lineProperties')
              ? LineProperties.fromJson(json_['lineProperties']
                  as core.Map<core.String, core.dynamic>)
              : null,
          objectId: json_.containsKey('objectId')
              ? json_['objectId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fields != null) 'fields': fields!,
        if (lineProperties != null) 'lineProperties': lineProperties!,
        if (objectId != null) 'objectId': objectId!,
      };
}

/// Updates the alt text title and/or description of a page element.
class UpdatePageElementAltTextRequest {
  /// The updated alt text description of the page element.
  ///
  /// If unset the existing value will be maintained. The description is exposed
  /// to screen readers and other accessibility interfaces. Only use human
  /// readable values related to the content of the page element.
  core.String? description;

  /// The object ID of the page element the updates are applied to.
  core.String? objectId;

  /// The updated alt text title of the page element.
  ///
  /// If unset the existing value will be maintained. The title is exposed to
  /// screen readers and other accessibility interfaces. Only use human readable
  /// values related to the content of the page element.
  core.String? title;

  UpdatePageElementAltTextRequest({
    this.description,
    this.objectId,
    this.title,
  });

  UpdatePageElementAltTextRequest.fromJson(core.Map json_)
      : this(
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          objectId: json_.containsKey('objectId')
              ? json_['objectId'] as core.String
              : null,
          title:
              json_.containsKey('title') ? json_['title'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (objectId != null) 'objectId': objectId!,
        if (title != null) 'title': title!,
      };
}

/// Updates the transform of a page element.
///
/// Updating the transform of a group will change the absolute transform of the
/// page elements in that group, which can change their visual appearance. See
/// the documentation for PageElement.transform for more details.
class UpdatePageElementTransformRequest {
  /// The apply mode of the transform update.
  /// Possible string values are:
  /// - "APPLY_MODE_UNSPECIFIED" : Unspecified mode.
  /// - "RELATIVE" : Applies the new AffineTransform matrix to the existing one,
  /// and replaces the existing one with the resulting concatenation.
  /// - "ABSOLUTE" : Replaces the existing AffineTransform matrix with the new
  /// one.
  core.String? applyMode;

  /// The object ID of the page element to update.
  core.String? objectId;

  /// The input transform matrix used to update the page element.
  AffineTransform? transform;

  UpdatePageElementTransformRequest({
    this.applyMode,
    this.objectId,
    this.transform,
  });

  UpdatePageElementTransformRequest.fromJson(core.Map json_)
      : this(
          applyMode: json_.containsKey('applyMode')
              ? json_['applyMode'] as core.String
              : null,
          objectId: json_.containsKey('objectId')
              ? json_['objectId'] as core.String
              : null,
          transform: json_.containsKey('transform')
              ? AffineTransform.fromJson(
                  json_['transform'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (applyMode != null) 'applyMode': applyMode!,
        if (objectId != null) 'objectId': objectId!,
        if (transform != null) 'transform': transform!,
      };
}

/// Updates the Z-order of page elements.
///
/// Z-order is an ordering of the elements on the page from back to front. The
/// page element in the front may cover the elements that are behind it.
class UpdatePageElementsZOrderRequest {
  /// The Z-order operation to apply on the page elements.
  ///
  /// When applying the operation on multiple page elements, the relative
  /// Z-orders within these page elements before the operation is maintained.
  /// Possible string values are:
  /// - "Z_ORDER_OPERATION_UNSPECIFIED" : Unspecified operation.
  /// - "BRING_TO_FRONT" : Brings the page elements to the front of the page.
  /// - "BRING_FORWARD" : Brings the page elements forward on the page by one
  /// element relative to the forwardmost one in the specified page elements.
  /// - "SEND_BACKWARD" : Sends the page elements backward on the page by one
  /// element relative to the furthest behind one in the specified page
  /// elements.
  /// - "SEND_TO_BACK" : Sends the page elements to the back of the page.
  core.String? operation;

  /// The object IDs of the page elements to update.
  ///
  /// All the page elements must be on the same page and must not be grouped.
  core.List<core.String>? pageElementObjectIds;

  UpdatePageElementsZOrderRequest({
    this.operation,
    this.pageElementObjectIds,
  });

  UpdatePageElementsZOrderRequest.fromJson(core.Map json_)
      : this(
          operation: json_.containsKey('operation')
              ? json_['operation'] as core.String
              : null,
          pageElementObjectIds: json_.containsKey('pageElementObjectIds')
              ? (json_['pageElementObjectIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (operation != null) 'operation': operation!,
        if (pageElementObjectIds != null)
          'pageElementObjectIds': pageElementObjectIds!,
      };
}

/// Updates the properties of a Page.
class UpdatePagePropertiesRequest {
  /// The fields that should be updated.
  ///
  /// At least one field must be specified. The root `pageProperties` is implied
  /// and should not be specified. A single `"*"` can be used as short-hand for
  /// listing every field. For example to update the page background solid fill
  /// color, set `fields` to `"pageBackgroundFill.solidFill.color"`. To reset a
  /// property to its default value, include its field name in the field mask
  /// but leave the field itself unset.
  core.String? fields;

  /// The object ID of the page the update is applied to.
  core.String? objectId;

  /// The page properties to update.
  PageProperties? pageProperties;

  UpdatePagePropertiesRequest({
    this.fields,
    this.objectId,
    this.pageProperties,
  });

  UpdatePagePropertiesRequest.fromJson(core.Map json_)
      : this(
          fields: json_.containsKey('fields')
              ? json_['fields'] as core.String
              : null,
          objectId: json_.containsKey('objectId')
              ? json_['objectId'] as core.String
              : null,
          pageProperties: json_.containsKey('pageProperties')
              ? PageProperties.fromJson(json_['pageProperties']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fields != null) 'fields': fields!,
        if (objectId != null) 'objectId': objectId!,
        if (pageProperties != null) 'pageProperties': pageProperties!,
      };
}

/// Updates the styling for all of the paragraphs within a Shape or Table that
/// overlap with the given text index range.
class UpdateParagraphStyleRequest {
  /// The location of the cell in the table containing the paragraph(s) to
  /// style.
  ///
  /// If `object_id` refers to a table, `cell_location` must have a value.
  /// Otherwise, it must not.
  TableCellLocation? cellLocation;

  /// The fields that should be updated.
  ///
  /// At least one field must be specified. The root `style` is implied and
  /// should not be specified. A single `"*"` can be used as short-hand for
  /// listing every field. For example, to update the paragraph alignment, set
  /// `fields` to `"alignment"`. To reset a property to its default value,
  /// include its field name in the field mask but leave the field itself unset.
  core.String? fields;

  /// The object ID of the shape or table with the text to be styled.
  core.String? objectId;

  /// The paragraph's style.
  ParagraphStyle? style;

  /// The range of text containing the paragraph(s) to style.
  Range? textRange;

  UpdateParagraphStyleRequest({
    this.cellLocation,
    this.fields,
    this.objectId,
    this.style,
    this.textRange,
  });

  UpdateParagraphStyleRequest.fromJson(core.Map json_)
      : this(
          cellLocation: json_.containsKey('cellLocation')
              ? TableCellLocation.fromJson(
                  json_['cellLocation'] as core.Map<core.String, core.dynamic>)
              : null,
          fields: json_.containsKey('fields')
              ? json_['fields'] as core.String
              : null,
          objectId: json_.containsKey('objectId')
              ? json_['objectId'] as core.String
              : null,
          style: json_.containsKey('style')
              ? ParagraphStyle.fromJson(
                  json_['style'] as core.Map<core.String, core.dynamic>)
              : null,
          textRange: json_.containsKey('textRange')
              ? Range.fromJson(
                  json_['textRange'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cellLocation != null) 'cellLocation': cellLocation!,
        if (fields != null) 'fields': fields!,
        if (objectId != null) 'objectId': objectId!,
        if (style != null) 'style': style!,
        if (textRange != null) 'textRange': textRange!,
      };
}

/// Update the properties of a Shape.
class UpdateShapePropertiesRequest {
  /// The fields that should be updated.
  ///
  /// At least one field must be specified. The root `shapeProperties` is
  /// implied and should not be specified. A single `"*"` can be used as
  /// short-hand for listing every field. For example to update the shape
  /// background solid fill color, set `fields` to
  /// `"shapeBackgroundFill.solidFill.color"`. To reset a property to its
  /// default value, include its field name in the field mask but leave the
  /// field itself unset.
  core.String? fields;

  /// The object ID of the shape the updates are applied to.
  core.String? objectId;

  /// The shape properties to update.
  ShapeProperties? shapeProperties;

  UpdateShapePropertiesRequest({
    this.fields,
    this.objectId,
    this.shapeProperties,
  });

  UpdateShapePropertiesRequest.fromJson(core.Map json_)
      : this(
          fields: json_.containsKey('fields')
              ? json_['fields'] as core.String
              : null,
          objectId: json_.containsKey('objectId')
              ? json_['objectId'] as core.String
              : null,
          shapeProperties: json_.containsKey('shapeProperties')
              ? ShapeProperties.fromJson(json_['shapeProperties']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fields != null) 'fields': fields!,
        if (objectId != null) 'objectId': objectId!,
        if (shapeProperties != null) 'shapeProperties': shapeProperties!,
      };
}

/// Updates the properties of a Slide.
class UpdateSlidePropertiesRequest {
  /// The fields that should be updated.
  ///
  /// At least one field must be specified. The root 'slideProperties' is
  /// implied and should not be specified. A single `"*"` can be used as
  /// short-hand for listing every field. For example to update whether a slide
  /// is skipped, set `fields` to `"isSkipped"`. To reset a property to its
  /// default value, include its field name in the field mask but leave the
  /// field itself unset.
  core.String? fields;

  /// The object ID of the slide the update is applied to.
  core.String? objectId;

  /// The slide properties to update.
  SlideProperties? slideProperties;

  UpdateSlidePropertiesRequest({
    this.fields,
    this.objectId,
    this.slideProperties,
  });

  UpdateSlidePropertiesRequest.fromJson(core.Map json_)
      : this(
          fields: json_.containsKey('fields')
              ? json_['fields'] as core.String
              : null,
          objectId: json_.containsKey('objectId')
              ? json_['objectId'] as core.String
              : null,
          slideProperties: json_.containsKey('slideProperties')
              ? SlideProperties.fromJson(json_['slideProperties']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fields != null) 'fields': fields!,
        if (objectId != null) 'objectId': objectId!,
        if (slideProperties != null) 'slideProperties': slideProperties!,
      };
}

/// Updates the position of slides in the presentation.
class UpdateSlidesPositionRequest {
  /// The index where the slides should be inserted, based on the slide
  /// arrangement before the move takes place.
  ///
  /// Must be between zero and the number of slides in the presentation,
  /// inclusive.
  core.int? insertionIndex;

  /// The IDs of the slides in the presentation that should be moved.
  ///
  /// The slides in this list must be in existing presentation order, without
  /// duplicates.
  core.List<core.String>? slideObjectIds;

  UpdateSlidesPositionRequest({
    this.insertionIndex,
    this.slideObjectIds,
  });

  UpdateSlidesPositionRequest.fromJson(core.Map json_)
      : this(
          insertionIndex: json_.containsKey('insertionIndex')
              ? json_['insertionIndex'] as core.int
              : null,
          slideObjectIds: json_.containsKey('slideObjectIds')
              ? (json_['slideObjectIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (insertionIndex != null) 'insertionIndex': insertionIndex!,
        if (slideObjectIds != null) 'slideObjectIds': slideObjectIds!,
      };
}

/// Updates the properties of the table borders in a Table.
class UpdateTableBorderPropertiesRequest {
  /// The border position in the table range the updates should apply to.
  ///
  /// If a border position is not specified, the updates will apply to all
  /// borders in the table range.
  /// Possible string values are:
  /// - "ALL" : All borders in the range.
  /// - "BOTTOM" : Borders at the bottom of the range.
  /// - "INNER" : Borders on the inside of the range.
  /// - "INNER_HORIZONTAL" : Horizontal borders on the inside of the range.
  /// - "INNER_VERTICAL" : Vertical borders on the inside of the range.
  /// - "LEFT" : Borders at the left of the range.
  /// - "OUTER" : Borders along the outside of the range.
  /// - "RIGHT" : Borders at the right of the range.
  /// - "TOP" : Borders at the top of the range.
  core.String? borderPosition;

  /// The fields that should be updated.
  ///
  /// At least one field must be specified. The root `tableBorderProperties` is
  /// implied and should not be specified. A single `"*"` can be used as
  /// short-hand for listing every field. For example to update the table border
  /// solid fill color, set `fields` to `"tableBorderFill.solidFill.color"`. To
  /// reset a property to its default value, include its field name in the field
  /// mask but leave the field itself unset.
  core.String? fields;

  /// The object ID of the table.
  core.String? objectId;

  /// The table border properties to update.
  TableBorderProperties? tableBorderProperties;

  /// The table range representing the subset of the table to which the updates
  /// are applied.
  ///
  /// If a table range is not specified, the updates will apply to the entire
  /// table.
  TableRange? tableRange;

  UpdateTableBorderPropertiesRequest({
    this.borderPosition,
    this.fields,
    this.objectId,
    this.tableBorderProperties,
    this.tableRange,
  });

  UpdateTableBorderPropertiesRequest.fromJson(core.Map json_)
      : this(
          borderPosition: json_.containsKey('borderPosition')
              ? json_['borderPosition'] as core.String
              : null,
          fields: json_.containsKey('fields')
              ? json_['fields'] as core.String
              : null,
          objectId: json_.containsKey('objectId')
              ? json_['objectId'] as core.String
              : null,
          tableBorderProperties: json_.containsKey('tableBorderProperties')
              ? TableBorderProperties.fromJson(json_['tableBorderProperties']
                  as core.Map<core.String, core.dynamic>)
              : null,
          tableRange: json_.containsKey('tableRange')
              ? TableRange.fromJson(
                  json_['tableRange'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (borderPosition != null) 'borderPosition': borderPosition!,
        if (fields != null) 'fields': fields!,
        if (objectId != null) 'objectId': objectId!,
        if (tableBorderProperties != null)
          'tableBorderProperties': tableBorderProperties!,
        if (tableRange != null) 'tableRange': tableRange!,
      };
}

/// Update the properties of a TableCell.
class UpdateTableCellPropertiesRequest {
  /// The fields that should be updated.
  ///
  /// At least one field must be specified. The root `tableCellProperties` is
  /// implied and should not be specified. A single `"*"` can be used as
  /// short-hand for listing every field. For example to update the table cell
  /// background solid fill color, set `fields` to
  /// `"tableCellBackgroundFill.solidFill.color"`. To reset a property to its
  /// default value, include its field name in the field mask but leave the
  /// field itself unset.
  core.String? fields;

  /// The object ID of the table.
  core.String? objectId;

  /// The table cell properties to update.
  TableCellProperties? tableCellProperties;

  /// The table range representing the subset of the table to which the updates
  /// are applied.
  ///
  /// If a table range is not specified, the updates will apply to the entire
  /// table.
  TableRange? tableRange;

  UpdateTableCellPropertiesRequest({
    this.fields,
    this.objectId,
    this.tableCellProperties,
    this.tableRange,
  });

  UpdateTableCellPropertiesRequest.fromJson(core.Map json_)
      : this(
          fields: json_.containsKey('fields')
              ? json_['fields'] as core.String
              : null,
          objectId: json_.containsKey('objectId')
              ? json_['objectId'] as core.String
              : null,
          tableCellProperties: json_.containsKey('tableCellProperties')
              ? TableCellProperties.fromJson(json_['tableCellProperties']
                  as core.Map<core.String, core.dynamic>)
              : null,
          tableRange: json_.containsKey('tableRange')
              ? TableRange.fromJson(
                  json_['tableRange'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fields != null) 'fields': fields!,
        if (objectId != null) 'objectId': objectId!,
        if (tableCellProperties != null)
          'tableCellProperties': tableCellProperties!,
        if (tableRange != null) 'tableRange': tableRange!,
      };
}

/// Updates the properties of a Table column.
class UpdateTableColumnPropertiesRequest {
  /// The list of zero-based indices specifying which columns to update.
  ///
  /// If no indices are provided, all columns in the table will be updated.
  core.List<core.int>? columnIndices;

  /// The fields that should be updated.
  ///
  /// At least one field must be specified. The root `tableColumnProperties` is
  /// implied and should not be specified. A single `"*"` can be used as
  /// short-hand for listing every field. For example to update the column
  /// width, set `fields` to `"column_width"`. If '"column_width"' is included
  /// in the field mask but the property is left unset, the column width will
  /// default to 406,400 EMU (32 points).
  core.String? fields;

  /// The object ID of the table.
  core.String? objectId;

  /// The table column properties to update.
  ///
  /// If the value of `table_column_properties#column_width` in the request is
  /// less than 406,400 EMU (32 points), a 400 bad request error is returned.
  TableColumnProperties? tableColumnProperties;

  UpdateTableColumnPropertiesRequest({
    this.columnIndices,
    this.fields,
    this.objectId,
    this.tableColumnProperties,
  });

  UpdateTableColumnPropertiesRequest.fromJson(core.Map json_)
      : this(
          columnIndices: json_.containsKey('columnIndices')
              ? (json_['columnIndices'] as core.List)
                  .map((value) => value as core.int)
                  .toList()
              : null,
          fields: json_.containsKey('fields')
              ? json_['fields'] as core.String
              : null,
          objectId: json_.containsKey('objectId')
              ? json_['objectId'] as core.String
              : null,
          tableColumnProperties: json_.containsKey('tableColumnProperties')
              ? TableColumnProperties.fromJson(json_['tableColumnProperties']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (columnIndices != null) 'columnIndices': columnIndices!,
        if (fields != null) 'fields': fields!,
        if (objectId != null) 'objectId': objectId!,
        if (tableColumnProperties != null)
          'tableColumnProperties': tableColumnProperties!,
      };
}

/// Updates the properties of a Table row.
class UpdateTableRowPropertiesRequest {
  /// The fields that should be updated.
  ///
  /// At least one field must be specified. The root `tableRowProperties` is
  /// implied and should not be specified. A single `"*"` can be used as
  /// short-hand for listing every field. For example to update the minimum row
  /// height, set `fields` to `"min_row_height"`. If '"min_row_height"' is
  /// included in the field mask but the property is left unset, the minimum row
  /// height will default to 0.
  core.String? fields;

  /// The object ID of the table.
  core.String? objectId;

  /// The list of zero-based indices specifying which rows to update.
  ///
  /// If no indices are provided, all rows in the table will be updated.
  core.List<core.int>? rowIndices;

  /// The table row properties to update.
  TableRowProperties? tableRowProperties;

  UpdateTableRowPropertiesRequest({
    this.fields,
    this.objectId,
    this.rowIndices,
    this.tableRowProperties,
  });

  UpdateTableRowPropertiesRequest.fromJson(core.Map json_)
      : this(
          fields: json_.containsKey('fields')
              ? json_['fields'] as core.String
              : null,
          objectId: json_.containsKey('objectId')
              ? json_['objectId'] as core.String
              : null,
          rowIndices: json_.containsKey('rowIndices')
              ? (json_['rowIndices'] as core.List)
                  .map((value) => value as core.int)
                  .toList()
              : null,
          tableRowProperties: json_.containsKey('tableRowProperties')
              ? TableRowProperties.fromJson(json_['tableRowProperties']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fields != null) 'fields': fields!,
        if (objectId != null) 'objectId': objectId!,
        if (rowIndices != null) 'rowIndices': rowIndices!,
        if (tableRowProperties != null)
          'tableRowProperties': tableRowProperties!,
      };
}

/// Update the styling of text in a Shape or Table.
class UpdateTextStyleRequest {
  /// The location of the cell in the table containing the text to style.
  ///
  /// If `object_id` refers to a table, `cell_location` must have a value.
  /// Otherwise, it must not.
  TableCellLocation? cellLocation;

  /// The fields that should be updated.
  ///
  /// At least one field must be specified. The root `style` is implied and
  /// should not be specified. A single `"*"` can be used as short-hand for
  /// listing every field. For example, to update the text style to bold, set
  /// `fields` to `"bold"`. To reset a property to its default value, include
  /// its field name in the field mask but leave the field itself unset.
  core.String? fields;

  /// The object ID of the shape or table with the text to be styled.
  core.String? objectId;

  /// The style(s) to set on the text.
  ///
  /// If the value for a particular style matches that of the parent, that style
  /// will be set to inherit. Certain text style changes may cause other changes
  /// meant to mirror the behavior of the Slides editor. See the documentation
  /// of TextStyle for more information.
  TextStyle? style;

  /// The range of text to style.
  ///
  /// The range may be extended to include adjacent newlines. If the range fully
  /// contains a paragraph belonging to a list, the paragraph's bullet is also
  /// updated with the matching text style.
  Range? textRange;

  UpdateTextStyleRequest({
    this.cellLocation,
    this.fields,
    this.objectId,
    this.style,
    this.textRange,
  });

  UpdateTextStyleRequest.fromJson(core.Map json_)
      : this(
          cellLocation: json_.containsKey('cellLocation')
              ? TableCellLocation.fromJson(
                  json_['cellLocation'] as core.Map<core.String, core.dynamic>)
              : null,
          fields: json_.containsKey('fields')
              ? json_['fields'] as core.String
              : null,
          objectId: json_.containsKey('objectId')
              ? json_['objectId'] as core.String
              : null,
          style: json_.containsKey('style')
              ? TextStyle.fromJson(
                  json_['style'] as core.Map<core.String, core.dynamic>)
              : null,
          textRange: json_.containsKey('textRange')
              ? Range.fromJson(
                  json_['textRange'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cellLocation != null) 'cellLocation': cellLocation!,
        if (fields != null) 'fields': fields!,
        if (objectId != null) 'objectId': objectId!,
        if (style != null) 'style': style!,
        if (textRange != null) 'textRange': textRange!,
      };
}

/// Update the properties of a Video.
class UpdateVideoPropertiesRequest {
  /// The fields that should be updated.
  ///
  /// At least one field must be specified. The root `videoProperties` is
  /// implied and should not be specified. A single `"*"` can be used as
  /// short-hand for listing every field. For example to update the video
  /// outline color, set `fields` to `"outline.outlineFill.solidFill.color"`. To
  /// reset a property to its default value, include its field name in the field
  /// mask but leave the field itself unset.
  core.String? fields;

  /// The object ID of the video the updates are applied to.
  core.String? objectId;

  /// The video properties to update.
  VideoProperties? videoProperties;

  UpdateVideoPropertiesRequest({
    this.fields,
    this.objectId,
    this.videoProperties,
  });

  UpdateVideoPropertiesRequest.fromJson(core.Map json_)
      : this(
          fields: json_.containsKey('fields')
              ? json_['fields'] as core.String
              : null,
          objectId: json_.containsKey('objectId')
              ? json_['objectId'] as core.String
              : null,
          videoProperties: json_.containsKey('videoProperties')
              ? VideoProperties.fromJson(json_['videoProperties']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fields != null) 'fields': fields!,
        if (objectId != null) 'objectId': objectId!,
        if (videoProperties != null) 'videoProperties': videoProperties!,
      };
}

/// A PageElement kind representing a video.
class Video {
  /// The video source's unique identifier for this video.
  core.String? id;

  /// The video source.
  /// Possible string values are:
  /// - "SOURCE_UNSPECIFIED" : The video source is unspecified.
  /// - "YOUTUBE" : The video source is YouTube.
  /// - "DRIVE" : The video source is Google Drive.
  core.String? source;

  /// An URL to a video.
  ///
  /// The URL is valid as long as the source video exists and sharing settings
  /// do not change.
  core.String? url;

  /// The properties of the video.
  VideoProperties? videoProperties;

  Video({
    this.id,
    this.source,
    this.url,
    this.videoProperties,
  });

  Video.fromJson(core.Map json_)
      : this(
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          source: json_.containsKey('source')
              ? json_['source'] as core.String
              : null,
          url: json_.containsKey('url') ? json_['url'] as core.String : null,
          videoProperties: json_.containsKey('videoProperties')
              ? VideoProperties.fromJson(json_['videoProperties']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
        if (source != null) 'source': source!,
        if (url != null) 'url': url!,
        if (videoProperties != null) 'videoProperties': videoProperties!,
      };
}

/// The properties of the Video.
class VideoProperties {
  /// Whether to enable video autoplay when the page is displayed in present
  /// mode.
  ///
  /// Defaults to false.
  core.bool? autoPlay;

  /// The time at which to end playback, measured in seconds from the beginning
  /// of the video.
  ///
  /// If set, the end time should be after the start time. If not set or if you
  /// set this to a value that exceeds the video's length, the video will be
  /// played until its end.
  core.int? end;

  /// Whether to mute the audio during video playback.
  ///
  /// Defaults to false.
  core.bool? mute;

  /// The outline of the video.
  ///
  /// The default outline matches the defaults for new videos created in the
  /// Slides editor.
  Outline? outline;

  /// The time at which to start playback, measured in seconds from the
  /// beginning of the video.
  ///
  /// If set, the start time should be before the end time. If you set this to a
  /// value that exceeds the video's length in seconds, the video will be played
  /// from the last second. If not set, the video will be played from the
  /// beginning.
  core.int? start;

  VideoProperties({
    this.autoPlay,
    this.end,
    this.mute,
    this.outline,
    this.start,
  });

  VideoProperties.fromJson(core.Map json_)
      : this(
          autoPlay: json_.containsKey('autoPlay')
              ? json_['autoPlay'] as core.bool
              : null,
          end: json_.containsKey('end') ? json_['end'] as core.int : null,
          mute: json_.containsKey('mute') ? json_['mute'] as core.bool : null,
          outline: json_.containsKey('outline')
              ? Outline.fromJson(
                  json_['outline'] as core.Map<core.String, core.dynamic>)
              : null,
          start: json_.containsKey('start') ? json_['start'] as core.int : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (autoPlay != null) 'autoPlay': autoPlay!,
        if (end != null) 'end': end!,
        if (mute != null) 'mute': mute!,
        if (outline != null) 'outline': outline!,
        if (start != null) 'start': start!,
      };
}

/// Represents a font family and weight used to style a TextRun.
class WeightedFontFamily {
  /// The font family of the text.
  ///
  /// The font family can be any font from the Font menu in Slides or from
  /// [Google Fonts](https://fonts.google.com/). If the font name is
  /// unrecognized, the text is rendered in `Arial`.
  core.String? fontFamily;

  /// The rendered weight of the text.
  ///
  /// This field can have any value that is a multiple of `100` between `100`
  /// and `900`, inclusive. This range corresponds to the numerical values
  /// described in the CSS 2.1 Specification,
  /// [section 15.6](https://www.w3.org/TR/CSS21/fonts.html#font-boldness), with
  /// non-numerical values disallowed. Weights greater than or equal to `700`
  /// are considered bold, and weights less than `700`are not bold. The default
  /// value is `400` ("normal").
  core.int? weight;

  WeightedFontFamily({
    this.fontFamily,
    this.weight,
  });

  WeightedFontFamily.fromJson(core.Map json_)
      : this(
          fontFamily: json_.containsKey('fontFamily')
              ? json_['fontFamily'] as core.String
              : null,
          weight:
              json_.containsKey('weight') ? json_['weight'] as core.int : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fontFamily != null) 'fontFamily': fontFamily!,
        if (weight != null) 'weight': weight!,
      };
}

/// A PageElement kind representing word art.
class WordArt {
  /// The text rendered as word art.
  core.String? renderedText;

  WordArt({
    this.renderedText,
  });

  WordArt.fromJson(core.Map json_)
      : this(
          renderedText: json_.containsKey('renderedText')
              ? json_['renderedText'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (renderedText != null) 'renderedText': renderedText!,
      };
}

/// Provides control over how write requests are executed.
class WriteControl {
  /// The revision ID of the presentation required for the write request.
  ///
  /// If specified and the required revision ID doesn't match the presentation's
  /// current revision ID, the request is not processed and returns a 400 bad
  /// request error. When a required revision ID is returned in a response, it
  /// indicates the revision ID of the document after the request was applied.
  core.String? requiredRevisionId;

  WriteControl({
    this.requiredRevisionId,
  });

  WriteControl.fromJson(core.Map json_)
      : this(
          requiredRevisionId: json_.containsKey('requiredRevisionId')
              ? json_['requiredRevisionId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (requiredRevisionId != null)
          'requiredRevisionId': requiredRevisionId!,
      };
}
