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

/// Poly API - v1
///
/// The Poly API provides read access to assets hosted on poly.google.com to
/// all, and upload access to poly.google.com for whitelisted accounts.
///
/// For more information, see <https://developers.google.com/poly/>
///
/// Create an instance of [PolyServiceApi] to access these resources:
///
/// - [AssetsResource]
/// - [UsersResource]
///   - [UsersAssetsResource]
///   - [UsersLikedassetsResource]
library poly.v1;

import 'dart:async' as async;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// The Poly API provides read access to assets hosted on poly.google.com to
/// all, and upload access to poly.google.com for whitelisted accounts.
class PolyServiceApi {
  final commons.ApiRequester _requester;

  AssetsResource get assets => AssetsResource(_requester);
  UsersResource get users => UsersResource(_requester);

  PolyServiceApi(http.Client client,
      {core.String rootUrl = 'https://poly.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class AssetsResource {
  final commons.ApiRequester _requester;

  AssetsResource(commons.ApiRequester client) : _requester = client;

  /// Returns detailed information about an asset given its name.
  ///
  /// PRIVATE assets are returned only if the currently authenticated user (via
  /// OAuth token) is the author of the asset.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. An asset's name in the form `assets/{ASSET_ID}`.
  /// Value must have pattern `^assets/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Asset].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Asset> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Asset.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists all public, remixable assets.
  ///
  /// These are assets with an access level of PUBLIC and published under the
  /// CC-By license.
  ///
  /// Request parameters:
  ///
  /// [category] - Filter assets based on the specified category. Supported
  /// values are: `animals`, `architecture`, `art`, `food`, `nature`, `objects`,
  /// `people`, `scenes`, `technology`, and `transport`.
  ///
  /// [curated] - Return only assets that have been curated by the Poly team.
  ///
  /// [format] - Return only assets with the matching format. Acceptable values
  /// are: `BLOCKS`, `FBX`, `GLTF`, `GLTF2`, `OBJ`, `TILT`.
  ///
  /// [keywords] - One or more search terms to be matched against all text that
  /// Poly has indexed for assets, which includes display_name, description, and
  /// tags. Multiple keywords should be separated by spaces.
  ///
  /// [maxComplexity] - Returns assets that are of the specified complexity or
  /// less. Defaults to COMPLEX. For example, a request for MEDIUM assets also
  /// includes SIMPLE assets.
  /// Possible string values are:
  /// - "COMPLEXITY_UNSPECIFIED" : No complexity specified. This is equivalent
  /// to omitting the filter.
  /// - "COMPLEX" : Highly-complex.
  /// - "MEDIUM" : Averagely-complex.
  /// - "SIMPLE" : Simple.
  ///
  /// [orderBy] - Specifies an ordering for assets. Acceptable values are:
  /// `BEST`, `NEWEST`, `OLDEST`. Defaults to `BEST`, which ranks assets based
  /// on a combination of popularity and other features.
  ///
  /// [pageSize] - The maximum number of assets to be returned. This value must
  /// be between `1` and `100`. Defaults to `20`.
  ///
  /// [pageToken] - Specifies a continuation token from a previous search whose
  /// results were split into multiple pages. To get the next page, submit the
  /// same request specifying the value from next_page_token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListAssetsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAssetsResponse> list({
    core.String? category,
    core.bool? curated,
    core.String? format,
    core.String? keywords,
    core.String? maxComplexity,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (category != null) 'category': [category],
      if (curated != null) 'curated': ['${curated}'],
      if (format != null) 'format': [format],
      if (keywords != null) 'keywords': [keywords],
      if (maxComplexity != null) 'maxComplexity': [maxComplexity],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1/assets';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListAssetsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class UsersResource {
  final commons.ApiRequester _requester;

  UsersAssetsResource get assets => UsersAssetsResource(_requester);
  UsersLikedassetsResource get likedassets =>
      UsersLikedassetsResource(_requester);

  UsersResource(commons.ApiRequester client) : _requester = client;
}

class UsersAssetsResource {
  final commons.ApiRequester _requester;

  UsersAssetsResource(commons.ApiRequester client) : _requester = client;

  /// Lists assets authored by the given user.
  ///
  /// Only the value 'me', representing the currently-authenticated user, is
  /// supported. May include assets with an access level of PRIVATE or UNLISTED
  /// and assets which are All Rights Reserved for the currently-authenticated
  /// user.
  ///
  /// Request parameters:
  ///
  /// [name] - A valid user id. Currently, only the special value 'me',
  /// representing the currently-authenticated user is supported. To use 'me',
  /// you must pass an OAuth token with the request.
  /// Value must have pattern `^users/\[^/\]+$`.
  ///
  /// [format] - Return only assets with the matching format. Acceptable values
  /// are: `BLOCKS`, `FBX`, `GLTF`, `GLTF2`, `OBJ`, and `TILT`.
  ///
  /// [orderBy] - Specifies an ordering for assets. Acceptable values are:
  /// `BEST`, `NEWEST`, `OLDEST`. Defaults to `BEST`, which ranks assets based
  /// on a combination of popularity and other features.
  ///
  /// [pageSize] - The maximum number of assets to be returned. This value must
  /// be between `1` and `100`. Defaults to `20`.
  ///
  /// [pageToken] - Specifies a continuation token from a previous search whose
  /// results were split into multiple pages. To get the next page, submit the
  /// same request specifying the value from next_page_token.
  ///
  /// [visibility] - The visibility of the assets to be returned. Defaults to
  /// VISIBILITY_UNSPECIFIED which returns all assets.
  /// Possible string values are:
  /// - "VISIBILITY_UNSPECIFIED" : No visibility specified. Returns all assets.
  /// - "PUBLISHED" : Returns only published assets.
  /// - "PRIVATE" : Returns only private assets.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListUserAssetsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListUserAssetsResponse> list(
    core.String name, {
    core.String? format,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? visibility,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (format != null) 'format': [format],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (visibility != null) 'visibility': [visibility],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + '/assets';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListUserAssetsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class UsersLikedassetsResource {
  final commons.ApiRequester _requester;

  UsersLikedassetsResource(commons.ApiRequester client) : _requester = client;

  /// Lists assets that the user has liked.
  ///
  /// Only the value 'me', representing the currently-authenticated user, is
  /// supported. May include assets with an access level of UNLISTED.
  ///
  /// Request parameters:
  ///
  /// [name] - A valid user id. Currently, only the special value 'me',
  /// representing the currently-authenticated user is supported. To use 'me',
  /// you must pass an OAuth token with the request.
  /// Value must have pattern `^users/\[^/\]+$`.
  ///
  /// [format] - Return only assets with the matching format. Acceptable values
  /// are: `BLOCKS`, `FBX`, `GLTF`, `GLTF2`, `OBJ`, `TILT`.
  ///
  /// [orderBy] - Specifies an ordering for assets. Acceptable values are:
  /// `BEST`, `NEWEST`, `OLDEST`, 'LIKED_TIME'. Defaults to `LIKED_TIME`, which
  /// ranks assets based on how recently they were liked.
  ///
  /// [pageSize] - The maximum number of assets to be returned. This value must
  /// be between `1` and `100`. Defaults to `20`.
  ///
  /// [pageToken] - Specifies a continuation token from a previous search whose
  /// results were split into multiple pages. To get the next page, submit the
  /// same request specifying the value from next_page_token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListLikedAssetsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListLikedAssetsResponse> list(
    core.String name, {
    core.String? format,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (format != null) 'format': [format],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + '/likedassets';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListLikedAssetsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

/// Represents and describes an asset in the Poly library.
///
/// An asset is a 3D model or scene created using \[Tilt
/// Brush\](//www.tiltbrush.com), \[Blocks\](//vr.google.com/blocks/), or any 3D
/// program that produces a file that can be upload to Poly.
class Asset {
  /// The author's publicly visible name.
  ///
  /// Use this name when giving credit to the author. For more information, see
  /// \[Licensing\](/poly/discover/licensing).
  core.String? authorName;

  /// For published assets, the time when the asset was published.
  ///
  /// For unpublished assets, the time when the asset was created.
  core.String? createTime;

  /// The human-readable description, set by the asset's author.
  core.String? description;

  /// The human-readable name, set by the asset's author.
  core.String? displayName;

  /// A list of Formats where each format describes one representation of the
  /// asset.
  core.List<Format>? formats;

  /// Whether this asset has been curated by the Poly team.
  core.bool? isCurated;

  /// The license under which the author has made the asset available for use,
  /// if any.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown license value.
  /// - "CREATIVE_COMMONS_BY" : Creative Commons CC-BY 3.0.
  /// https://creativecommons.org/licenses/by/3.0/
  /// - "ALL_RIGHTS_RESERVED" : Unlicensed: All Rights Reserved by the author.
  /// Unlicensed assets are **not** returned by List Assets.
  core.String? license;

  /// Application-defined opaque metadata for this asset.
  ///
  /// This field is only returned when querying for the signed-in user's own
  /// assets, not for public assets. This string is limited to 1K chars. It is
  /// up to the creator of the asset to define the format for this string (for
  /// example, JSON).
  core.String? metadata;

  /// The unique identifier for the asset in the form: `assets/{ASSET_ID}`.
  core.String? name;

  /// Hints for displaying the asset.
  ///
  /// Note that these parameters are not immutable; the author of an asset may
  /// change them post-publication.
  PresentationParams? presentationParams;

  /// The remix info for the asset.
  RemixInfo? remixInfo;

  /// The thumbnail image for the asset.
  File? thumbnail;

  /// The time when the asset was last modified.
  ///
  /// For published assets, whose contents are immutable, the update time
  /// changes only when metadata properties, such as visibility, are updated.
  core.String? updateTime;

  /// The visibility of the asset and who can access it.
  /// Possible string values are:
  /// - "VISIBILITY_UNSPECIFIED" : Unknown (and invalid) visibility.
  /// - "PRIVATE" : Access to the asset and its underlying files and resources
  /// is restricted to the author. **Authentication:** You must supply an OAuth
  /// token that corresponds to the author's account.
  /// - "UNLISTED" : Access to the asset and its underlying files and resources
  /// is available to anyone with the asset's name. Unlisted assets are **not**
  /// returned by List Assets.
  /// - "PUBLIC" : Access to the asset and its underlying files and resources is
  /// available to anyone.
  core.String? visibility;

  Asset({
    this.authorName,
    this.createTime,
    this.description,
    this.displayName,
    this.formats,
    this.isCurated,
    this.license,
    this.metadata,
    this.name,
    this.presentationParams,
    this.remixInfo,
    this.thumbnail,
    this.updateTime,
    this.visibility,
  });

  Asset.fromJson(core.Map _json)
      : this(
          authorName: _json.containsKey('authorName')
              ? _json['authorName'] as core.String
              : null,
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          formats: _json.containsKey('formats')
              ? (_json['formats'] as core.List)
                  .map<Format>((value) => Format.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          isCurated: _json.containsKey('isCurated')
              ? _json['isCurated'] as core.bool
              : null,
          license: _json.containsKey('license')
              ? _json['license'] as core.String
              : null,
          metadata: _json.containsKey('metadata')
              ? _json['metadata'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          presentationParams: _json.containsKey('presentationParams')
              ? PresentationParams.fromJson(_json['presentationParams']
                  as core.Map<core.String, core.dynamic>)
              : null,
          remixInfo: _json.containsKey('remixInfo')
              ? RemixInfo.fromJson(
                  _json['remixInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          thumbnail: _json.containsKey('thumbnail')
              ? File.fromJson(
                  _json['thumbnail'] as core.Map<core.String, core.dynamic>)
              : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
          visibility: _json.containsKey('visibility')
              ? _json['visibility'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (authorName != null) 'authorName': authorName!,
        if (createTime != null) 'createTime': createTime!,
        if (description != null) 'description': description!,
        if (displayName != null) 'displayName': displayName!,
        if (formats != null)
          'formats': formats!.map((value) => value.toJson()).toList(),
        if (isCurated != null) 'isCurated': isCurated!,
        if (license != null) 'license': license!,
        if (metadata != null) 'metadata': metadata!,
        if (name != null) 'name': name!,
        if (presentationParams != null)
          'presentationParams': presentationParams!.toJson(),
        if (remixInfo != null) 'remixInfo': remixInfo!.toJson(),
        if (thumbnail != null) 'thumbnail': thumbnail!.toJson(),
        if (updateTime != null) 'updateTime': updateTime!,
        if (visibility != null) 'visibility': visibility!,
      };
}

/// A message generated by the asset import process.
class AssetImportMessage {
  /// The code associated with this message.
  /// Possible string values are:
  /// - "CODE_UNSPECIFIED" : Unknown error code.
  /// - "NO_IMPORTABLE_FILE" : The asset import did not include any file that we
  /// can import (i.e. an OBJ file).
  /// - "EMPTY_MODEL" : When generating the preview for the import, no geometry
  /// was found.
  /// - "OBJ_PARSE_ERROR" : A problem was encountered while parsing the OBJ
  /// file. The converter makes a 'best effort' attempt to continue when
  /// encountering such issues. In some cases the resulting preview model may
  /// still be acceptable. The details can be found in the parse error message.
  /// - "EXPIRED" : The importer was not able to import the model before the
  /// expiration time.
  /// - "IMAGE_ERROR" : The importer encountered a problem reading an image
  /// file.
  /// - "EXTRA_FILES_WITH_ARCHIVE" : Multiple files were encountered in addition
  /// to a ZIP archive. When uploading an archive only one file is permitted.
  /// - "DEFAULT_MATERIALS" : Default materials are used in the model. This
  /// means that one or more faces is using default materials either because no
  /// usemtl statement was specified or because the requested material was not
  /// found due to a missing material file or bad material name. This does not
  /// cover the case of missing textures.
  /// - "FATAL_ERROR" : The importer encountered a fatal error and was unable to
  /// import the model.
  /// - "INVALID_ELEMENT_TYPE" : The import includes a file of an unsupported
  /// element type. The file path is specified.
  core.String? code;

  /// An optional file path.
  ///
  /// Only present for those error codes that specify it.
  core.String? filePath;

  /// An optional image error.
  ///
  /// Only present for INVALID_IMAGE_FILE.
  ImageError? imageError;

  /// An optional OBJ parse error.
  ///
  /// Only present for OBJ_PARSE_ERROR.
  ObjParseError? objParseError;

  AssetImportMessage({
    this.code,
    this.filePath,
    this.imageError,
    this.objParseError,
  });

  AssetImportMessage.fromJson(core.Map _json)
      : this(
          code: _json.containsKey('code') ? _json['code'] as core.String : null,
          filePath: _json.containsKey('filePath')
              ? _json['filePath'] as core.String
              : null,
          imageError: _json.containsKey('imageError')
              ? ImageError.fromJson(
                  _json['imageError'] as core.Map<core.String, core.dynamic>)
              : null,
          objParseError: _json.containsKey('objParseError')
              ? ObjParseError.fromJson(
                  _json['objParseError'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (code != null) 'code': code!,
        if (filePath != null) 'filePath': filePath!,
        if (imageError != null) 'imageError': imageError!.toJson(),
        if (objParseError != null) 'objParseError': objParseError!.toJson(),
      };
}

/// Represents a file in Poly, which can be a root, resource, or thumbnail file.
class File {
  /// The MIME content-type, such as `image/png`.
  ///
  /// For more information, see \[MIME
  /// types\](//developer.mozilla.org/en-US/docs/Web/HTTP/Basics_of_HTTP/MIME_types).
  core.String? contentType;

  /// The path of the resource file relative to the root file.
  ///
  /// For root or thumbnail files, this is just the filename.
  core.String? relativePath;

  /// The URL where the file data can be retrieved.
  core.String? url;

  File({
    this.contentType,
    this.relativePath,
    this.url,
  });

  File.fromJson(core.Map _json)
      : this(
          contentType: _json.containsKey('contentType')
              ? _json['contentType'] as core.String
              : null,
          relativePath: _json.containsKey('relativePath')
              ? _json['relativePath'] as core.String
              : null,
          url: _json.containsKey('url') ? _json['url'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (contentType != null) 'contentType': contentType!,
        if (relativePath != null) 'relativePath': relativePath!,
        if (url != null) 'url': url!,
      };
}

/// The same asset can be represented in different formats, for example, a
/// \[WaveFront .obj\](//en.wikipedia.org/wiki/Wavefront_.obj_file) file with
/// its corresponding .mtl file or a \[Khronos glTF\](//www.khronos.org/gltf)
/// file with its corresponding .glb binary data.
///
/// A format refers to a specific representation of an asset and contains all
/// information needed to retrieve and describe this representation.
class Format {
  /// Complexity stats about this representation of the asset.
  FormatComplexity? formatComplexity;

  /// A short string that identifies the format type of this representation.
  ///
  /// Possible values are: `FBX`, `GLTF`, `GLTF2`, `OBJ`, and `TILT`.
  core.String? formatType;

  /// A list of dependencies of the root element.
  ///
  /// May include, but is not limited to, materials, textures, and shader
  /// programs.
  core.List<File>? resources;

  /// The root of the file hierarchy.
  ///
  /// This will always be populated. For some format_types - such as `TILT`,
  /// which are self-contained - this is all of the data. Other types - such as
  /// `OBJ` - often reference other data elements. These are contained in the
  /// resources field.
  File? root;

  Format({
    this.formatComplexity,
    this.formatType,
    this.resources,
    this.root,
  });

  Format.fromJson(core.Map _json)
      : this(
          formatComplexity: _json.containsKey('formatComplexity')
              ? FormatComplexity.fromJson(_json['formatComplexity']
                  as core.Map<core.String, core.dynamic>)
              : null,
          formatType: _json.containsKey('formatType')
              ? _json['formatType'] as core.String
              : null,
          resources: _json.containsKey('resources')
              ? (_json['resources'] as core.List)
                  .map<File>((value) => File.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          root: _json.containsKey('root')
              ? File.fromJson(
                  _json['root'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (formatComplexity != null)
          'formatComplexity': formatComplexity!.toJson(),
        if (formatType != null) 'formatType': formatType!,
        if (resources != null)
          'resources': resources!.map((value) => value.toJson()).toList(),
        if (root != null) 'root': root!.toJson(),
      };
}

/// Information on the complexity of this Format.
class FormatComplexity {
  /// A non-negative integer that represents the level of detail (LOD) of this
  /// format relative to other formats of the same asset with the same
  /// format_type.
  ///
  /// This hint allows you to sort formats from the most-detailed (0) to
  /// least-detailed (integers greater than 0).
  core.int? lodHint;

  /// The estimated number of triangles.
  core.String? triangleCount;

  FormatComplexity({
    this.lodHint,
    this.triangleCount,
  });

  FormatComplexity.fromJson(core.Map _json)
      : this(
          lodHint: _json.containsKey('lodHint')
              ? _json['lodHint'] as core.int
              : null,
          triangleCount: _json.containsKey('triangleCount')
              ? _json['triangleCount'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (lodHint != null) 'lodHint': lodHint!,
        if (triangleCount != null) 'triangleCount': triangleCount!,
      };
}

/// A message resulting from reading an image file.
class ImageError {
  /// The type of image error encountered.
  ///
  /// Optional for older image errors.
  /// Possible string values are:
  /// - "CODE_UNSPECIFIED" : Unknown error code.
  /// - "INVALID_IMAGE" : We were unable to read the image file.
  /// - "IMAGE_TOO_BIG" : The image size is too large.
  /// - "WRONG_IMAGE_TYPE" : The image data does not match the expected MIME
  /// type of the image.
  core.String? code;

  /// The file path in the import of the image that was rejected.
  core.String? filePath;

  ImageError({
    this.code,
    this.filePath,
  });

  ImageError.fromJson(core.Map _json)
      : this(
          code: _json.containsKey('code') ? _json['code'] as core.String : null,
          filePath: _json.containsKey('filePath')
              ? _json['filePath'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (code != null) 'code': code!,
        if (filePath != null) 'filePath': filePath!,
      };
}

/// A response message from a request to list.
class ListAssetsResponse {
  /// A list of assets that match the criteria specified in the request.
  core.List<Asset>? assets;

  /// The continuation token for retrieving the next page.
  ///
  /// If empty, indicates that there are no more pages. To get the next page,
  /// submit the same request specifying this value as the page_token.
  core.String? nextPageToken;

  /// The total number of assets in the list, without pagination.
  core.int? totalSize;

  ListAssetsResponse({
    this.assets,
    this.nextPageToken,
    this.totalSize,
  });

  ListAssetsResponse.fromJson(core.Map _json)
      : this(
          assets: _json.containsKey('assets')
              ? (_json['assets'] as core.List)
                  .map<Asset>((value) => Asset.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          totalSize: _json.containsKey('totalSize')
              ? _json['totalSize'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (assets != null)
          'assets': assets!.map((value) => value.toJson()).toList(),
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (totalSize != null) 'totalSize': totalSize!,
      };
}

/// A response message from a request to list.
class ListLikedAssetsResponse {
  /// A list of assets that match the criteria specified in the request.
  core.List<Asset>? assets;

  /// The continuation token for retrieving the next page.
  ///
  /// If empty, indicates that there are no more pages. To get the next page,
  /// submit the same request specifying this value as the page_token.
  core.String? nextPageToken;

  /// The total number of assets in the list, without pagination.
  core.int? totalSize;

  ListLikedAssetsResponse({
    this.assets,
    this.nextPageToken,
    this.totalSize,
  });

  ListLikedAssetsResponse.fromJson(core.Map _json)
      : this(
          assets: _json.containsKey('assets')
              ? (_json['assets'] as core.List)
                  .map<Asset>((value) => Asset.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          totalSize: _json.containsKey('totalSize')
              ? _json['totalSize'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (assets != null)
          'assets': assets!.map((value) => value.toJson()).toList(),
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (totalSize != null) 'totalSize': totalSize!,
      };
}

/// A response message from a request to list.
class ListUserAssetsResponse {
  /// The continuation token for retrieving the next page.
  ///
  /// If empty, indicates that there are no more pages. To get the next page,
  /// submit the same request specifying this value as the page_token.
  core.String? nextPageToken;

  /// The total number of assets in the list, without pagination.
  core.int? totalSize;

  /// A list of UserAssets matching the request.
  core.List<UserAsset>? userAssets;

  ListUserAssetsResponse({
    this.nextPageToken,
    this.totalSize,
    this.userAssets,
  });

  ListUserAssetsResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          totalSize: _json.containsKey('totalSize')
              ? _json['totalSize'] as core.int
              : null,
          userAssets: _json.containsKey('userAssets')
              ? (_json['userAssets'] as core.List)
                  .map<UserAsset>((value) => UserAsset.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (totalSize != null) 'totalSize': totalSize!,
        if (userAssets != null)
          'userAssets': userAssets!.map((value) => value.toJson()).toList(),
      };
}

/// Details of an error resulting from parsing an OBJ file
class ObjParseError {
  /// The type of problem found (required).
  /// Possible string values are:
  /// - "CODE_UNSPECIFIED" : Unknown error code.
  /// - "INCONSISTENT_VERTEX_REFS" : Vertex references are specified in an
  /// inconsistent style for a face (e.g. some vertices specify texture vertices
  /// but some don't).
  /// - "INVALID_COMMAND" : The command is invalid.
  /// - "INVALID_NUMBER" : A invalid number was specified.
  /// - "INVALID_VERTEX_REF" : An invalid vertex reference was specified.
  /// - "MISSING_GEOMETRIC_VERTEX" : A vertex reference does not specify a
  /// geometric vertex.
  /// - "MISSING_TOKEN" : An expected token was not found.
  /// - "TOO_FEW_DIMENSIONS" : The vertex specified too few dimensions for its
  /// usage.
  /// - "TOO_FEW_VERTICES" : The face specified too few vertices.
  /// - "TOO_MANY_DIMENSIONS" : The vertex specified too many dimensions for its
  /// usage.
  /// - "UNSUPPORTED_COMMAND" : This command is a valid OBJ command but is not
  /// supported. This error is only generated for the first instance of such a
  /// command.
  /// - "UNUSED_TOKENS" : This line ended with unparsed token characters.
  /// - "VERTEX_NOT_FOUND" : The specified vertex was not found.
  /// - "NUMBER_OUT_OF_RANGE" : The specified number was too large or small for
  /// its usage.
  /// - "INVALID_VALUE" : The specified parameter value was not recognized.
  /// - "INVALID_TEXTURE_OPTION" : The specified texture option is not valid.
  /// - "TOO_MANY_PROBLEMS" : The maximum number of problems to report was
  /// reached. Parsing continues, but further problems will be ignored.
  /// - "MISSING_FILE_NAME" : An expected file name was not specified.
  /// - "FILE_NOT_FOUND" : The specified file was not found in the import.
  /// - "UNKNOWN_MATERIAL" : The specified material was not found in any
  /// material definition in the import.
  /// - "NO_MATERIAL_DEFINED" : Material parameters were specified before the
  /// first material definition.
  /// - "INVALID_SMOOTHING_GROUP" : The smoothing group is not valid.
  /// - "MISSING_VERTEX_COLORS" : Vertex colors were specified for only some
  /// vertices of a face.
  /// - "FILE_SUBSTITUTION" : A missing file was found at a different file path.
  /// - "LINE_TOO_LONG" : A line in an OBJ or MTL file exceeded the maximum line
  /// length.
  /// - "INVALID_FILE_PATH" : The file path was invalid. Only relative paths are
  /// supported.
  core.String? code;

  /// The ending character index at which the problem was found.
  core.int? endIndex;

  /// The file path in which the problem was found.
  core.String? filePath;

  /// The text of the line.
  ///
  /// Note that this may be truncated if the line was very long. This may not
  /// include the error if it occurs after line truncation.
  core.String? line;

  /// Line number at which the problem was found.
  core.int? lineNumber;

  /// The starting character index at which the problem was found.
  core.int? startIndex;

  ObjParseError({
    this.code,
    this.endIndex,
    this.filePath,
    this.line,
    this.lineNumber,
    this.startIndex,
  });

  ObjParseError.fromJson(core.Map _json)
      : this(
          code: _json.containsKey('code') ? _json['code'] as core.String : null,
          endIndex: _json.containsKey('endIndex')
              ? _json['endIndex'] as core.int
              : null,
          filePath: _json.containsKey('filePath')
              ? _json['filePath'] as core.String
              : null,
          line: _json.containsKey('line') ? _json['line'] as core.String : null,
          lineNumber: _json.containsKey('lineNumber')
              ? _json['lineNumber'] as core.int
              : null,
          startIndex: _json.containsKey('startIndex')
              ? _json['startIndex'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (code != null) 'code': code!,
        if (endIndex != null) 'endIndex': endIndex!,
        if (filePath != null) 'filePath': filePath!,
        if (line != null) 'line': line!,
        if (lineNumber != null) 'lineNumber': lineNumber!,
        if (startIndex != null) 'startIndex': startIndex!,
      };
}

/// Hints for displaying the asset, based on information available when the
/// asset was uploaded.
class PresentationParams {
  /// A background color which could be used for displaying the 3D asset in a
  /// 'thumbnail' or 'palette' style view.
  ///
  /// Authors have the option to set this background color when publishing or
  /// editing their asset. This is represented as a six-digit hexademical
  /// triplet specifying the RGB components of the background color, e.g.
  /// #FF0000 for Red.
  core.String? backgroundColor;

  /// The materials' diffuse/albedo color.
  ///
  /// This does not apply to vertex colors or texture maps.
  /// Possible string values are:
  /// - "UNKNOWN" : Invalid color value.
  /// - "LINEAR" : Linear color values. Default.
  /// - "GAMMA" : Colors should be converted to linear by assuming gamma = 2.0.
  core.String? colorSpace;

  /// A rotation that should be applied to the object root to make it upright.
  ///
  /// More precisely, this quaternion transforms from "object space" (the space
  /// in which the object is defined) to "presentation space", a coordinate
  /// system where +Y is up, +X is right, -Z is forward. For example, if the
  /// object is the Eiffel Tower, in its local coordinate system the object
  /// might be laid out such that the base of the tower is on the YZ plane and
  /// the tip of the tower is towards positive X. In this case this quaternion
  /// would specify a rotation (of 90 degrees about the Z axis) such that in the
  /// presentation space the base of the tower is aligned with the XZ plane, and
  /// the tip of the tower lies towards +Y. This rotation is unrelated to the
  /// object's pose in the web preview, which is just a camera position setting
  /// and is *not* reflected in this rotation. Please note: this is applicable
  /// only to the gLTF.
  Quaternion? orientingRotation;

  PresentationParams({
    this.backgroundColor,
    this.colorSpace,
    this.orientingRotation,
  });

  PresentationParams.fromJson(core.Map _json)
      : this(
          backgroundColor: _json.containsKey('backgroundColor')
              ? _json['backgroundColor'] as core.String
              : null,
          colorSpace: _json.containsKey('colorSpace')
              ? _json['colorSpace'] as core.String
              : null,
          orientingRotation: _json.containsKey('orientingRotation')
              ? Quaternion.fromJson(_json['orientingRotation']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (backgroundColor != null) 'backgroundColor': backgroundColor!,
        if (colorSpace != null) 'colorSpace': colorSpace!,
        if (orientingRotation != null)
          'orientingRotation': orientingRotation!.toJson(),
      };
}

/// A \[Quaternion\](//en.wikipedia.org/wiki/Quaternion).
///
/// Please note: if in the response you see "w: 1" and nothing else this is the
/// default value of \[0, 0, 0, 1\] where x,y, and z are 0.
class Quaternion {
  /// The scalar component.
  core.double? w;

  /// The x component.
  core.double? x;

  /// The y component.
  core.double? y;

  /// The z component.
  core.double? z;

  Quaternion({
    this.w,
    this.x,
    this.y,
    this.z,
  });

  Quaternion.fromJson(core.Map _json)
      : this(
          w: _json.containsKey('w')
              ? (_json['w'] as core.num).toDouble()
              : null,
          x: _json.containsKey('x')
              ? (_json['x'] as core.num).toDouble()
              : null,
          y: _json.containsKey('y')
              ? (_json['y'] as core.num).toDouble()
              : null,
          z: _json.containsKey('z')
              ? (_json['z'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (w != null) 'w': w!,
        if (x != null) 'x': x!,
        if (y != null) 'y': y!,
        if (z != null) 'z': z!,
      };
}

/// Info about the sources of this asset (i.e. assets that were remixed to
/// create this asset).
class RemixInfo {
  /// Resource ids for the sources of this remix, of the form:
  /// `assets/{ASSET_ID}`
  core.List<core.String>? sourceAsset;

  RemixInfo({
    this.sourceAsset,
  });

  RemixInfo.fromJson(core.Map _json)
      : this(
          sourceAsset: _json.containsKey('sourceAsset')
              ? (_json['sourceAsset'] as core.List)
                  .map<core.String>((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (sourceAsset != null) 'sourceAsset': sourceAsset!,
      };
}

/// A response message from a request to startImport.
///
/// This is returned in the response field of the Operation.
class StartAssetImportResponse {
  /// The id of newly created asset.
  ///
  /// If this is empty when the operation is complete it means the import
  /// failed. Please refer to the assetImportMessages field to understand what
  /// went wrong.
  core.String? assetId;

  /// The id of the asset import.
  core.String? assetImportId;

  /// The message from the asset import.
  ///
  /// This will contain any warnings (or - in the case of failure - errors) that
  /// occurred during import.
  core.List<AssetImportMessage>? assetImportMessages;

  /// The publish URL for the asset.
  core.String? publishUrl;

  StartAssetImportResponse({
    this.assetId,
    this.assetImportId,
    this.assetImportMessages,
    this.publishUrl,
  });

  StartAssetImportResponse.fromJson(core.Map _json)
      : this(
          assetId: _json.containsKey('assetId')
              ? _json['assetId'] as core.String
              : null,
          assetImportId: _json.containsKey('assetImportId')
              ? _json['assetImportId'] as core.String
              : null,
          assetImportMessages: _json.containsKey('assetImportMessages')
              ? (_json['assetImportMessages'] as core.List)
                  .map<AssetImportMessage>((value) =>
                      AssetImportMessage.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          publishUrl: _json.containsKey('publishUrl')
              ? _json['publishUrl'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (assetId != null) 'assetId': assetId!,
        if (assetImportId != null) 'assetImportId': assetImportId!,
        if (assetImportMessages != null)
          'assetImportMessages':
              assetImportMessages!.map((value) => value.toJson()).toList(),
        if (publishUrl != null) 'publishUrl': publishUrl!,
      };
}

/// Data about the user's asset.
class UserAsset {
  /// An Asset.
  Asset? asset;

  UserAsset({
    this.asset,
  });

  UserAsset.fromJson(core.Map _json)
      : this(
          asset: _json.containsKey('asset')
              ? Asset.fromJson(
                  _json['asset'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (asset != null) 'asset': asset!.toJson(),
      };
}
