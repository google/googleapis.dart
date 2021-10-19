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

/// Toy API - 0.1
///
/// Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod
/// tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
/// quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
/// consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
/// cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat
/// non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
///
/// For more information, see <https://developers.google.com/discovery/>
///
/// Create an instance of [ToyApi] to access these resources:
///
/// - [ComputeResource]
/// - [StorageResource]
library toyApi.D0_1;

import 'dart:async' as async;
import 'dart:collection' as collection;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

// ignore: deprecated_member_use_from_same_package
import '../shared.dart';
import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show
        ApiRequestError,
        DetailedApiRequestError,
        Media,
        UploadOptions,
        ResumableUploadOptions,
        DownloadOptions,
        PartialDownloadOptions,
        ByteRange;

/// Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod
/// tempor incididunt ut labore et dolore magna aliqua.
///
/// Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut
/// aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in
/// voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint
/// occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit
/// anim id est laborum.
class ToyApi {
  final commons.ApiRequester _requester;

  ComputeResource get compute => ComputeResource(_requester);
  StorageResource get storage => StorageResource(_requester);

  ToyApi(http.Client client,
      {core.String rootUrl = 'http://localhost:9090/',
      core.String servicePath = 'api/toyApi/0.1/'})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);

  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> failing({
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'failing';

    await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
      downloadOptions: null,
    );
  }

  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ToyResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ToyResponse> hello({
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'hello';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ToyResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [MapOfToyResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<MapOfToyResponse> helloListOfClass(
    ListOfToyRequest request, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'helloListOfClass';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return MapOfToyResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [MapOfToyResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<MapOfToyResponse> helloListOfListOfClass(
    ListOfListOfToyRequest request, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'helloListOfListOfClass';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return MapOfToyResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [MapOfint].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<MapOfint> helloMap(
    MapOfint request, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'helloMap';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return MapOfint.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Request parameters:
  ///
  /// [name] - Path parameter: 'name'.
  ///
  /// [age] - Path parameter: 'age'.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ToyResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ToyResponse> helloNameAge(
    core.String name,
    core.int age, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'hello/' +
        commons.escapeVariable('$name') +
        '/age/' +
        commons.escapeVariable('$age');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ToyResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Path parameter: 'name'.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ToyResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ToyResponse> helloNamePostAge(
    ToyAgeRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'helloPost/' + commons.escapeVariable('$name');

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return ToyResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Request parameters:
  ///
  /// [foo] - Query parameter: 'foo'.
  ///
  /// [name] - Path parameter: 'name'.
  ///
  /// [age] - Query parameter: 'age'.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ToyResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ToyResponse> helloNameQueryAgeFoo(
    core.String foo,
    core.String name, {
    core.int? age,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      'foo': [foo],
      if (age != null) 'age': ['${age}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'helloQuery/' + commons.escapeVariable('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ToyResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListOfListOfString].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListOfListOfString> helloNestedListList(
    ListOfListOfint request, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'helloNestedListList';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return ListOfListOfString.fromJson(_response as core.List);
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListOfMapOfListOfString].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListOfMapOfListOfString> helloNestedListMapList(
    ListOfMapOfListOfint request, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'helloNestedListMapList';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return ListOfMapOfListOfString.fromJson(_response as core.List);
  }

  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ToyMapResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ToyMapResponse> helloNestedMap({
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'helloNestedMap';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ToyMapResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [MapOfListOfMapOfbool].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<MapOfListOfMapOfbool> helloNestedMapListMap(
    MapOfListOfMapOfint request, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'helloNestedMapListMap';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return MapOfListOfMapOfbool.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [MapOfMapOfbool].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<MapOfMapOfbool> helloNestedMapMap(
    MapOfMapOfint request, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'helloNestedMapMap';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return MapOfMapOfbool.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ToyResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ToyResponse> helloPost(
    ToyRequest request, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'helloPost';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return ToyResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ToyResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ToyResponse> helloReturnNull({
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'helloReturnNull';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ToyResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ToyResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ToyResponse> helloVoid({
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'helloVoid';

    final _response = await _requester.request(
      _url,
      'POST',
      queryParams: _queryParams,
    );
    return ToyResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> noop({
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'noop';

    await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
      downloadOptions: null,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListOfString].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListOfString> reverseList(
    ListOfString request, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'reverseList';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return ListOfString.fromJson(_response as core.List);
  }
}

class ComputeResource {
  final commons.ApiRequester _requester;

  ComputeResource(commons.ApiRequester client) : _requester = client;

  /// Downloads media.
  ///
  /// Download is supported on the URI `/v1/media/{+name}?alt=media`.
  ///
  /// Request parameters:
  ///
  /// [resourceName] - Name of the media that is being downloaded. See
  /// ReadRequest.resource_name.
  /// Value must have pattern `^.*$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// [downloadOptions] - Options for downloading. A download can be either a
  /// Metadata (default) or Media download. Partial Media downloads are possible
  /// as well.
  ///
  /// Completes with a
  ///
  /// - [ToyResourceResponse] for Metadata downloads (see [downloadOptions]).
  ///
  /// - [commons.Media] for Media downloads (see [downloadOptions]).
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<core.Object> download(
    core.String resourceName, {
    core.String? $fields,
    commons.DownloadOptions downloadOptions = commons.DownloadOptions.metadata,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/media/' + core.Uri.encodeFull('$resourceName');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
      downloadOptions: downloadOptions,
    );
    if (downloadOptions.isMetadataDownload) {
      return ToyResourceResponse.fromJson(
          _response as core.Map<core.String, core.dynamic>);
    } else {
      return _response as commons.Media;
    }
  }

  /// Exports a Google Doc to the requested MIME type and returns the exported
  /// content.
  ///
  /// Please note that the exported content is limited to 10MB.
  ///
  /// Request parameters:
  ///
  /// [fileId] - The ID of the file.
  ///
  /// [mimeType] - The MIME type of the format requested for this export.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// [downloadOptions] - Options for downloading. A download can be either a
  /// Metadata (default) or Media download. Partial Media downloads are possible
  /// as well.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<commons.Media?> export(
    core.String fileId,
    core.String mimeType, {
    core.String? $fields,
    commons.DownloadOptions downloadOptions = commons.DownloadOptions.metadata,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      'mimeType': [mimeType],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'files/' + commons.escapeVariable('$fileId') + '/export';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
      downloadOptions: downloadOptions,
    );
    if (downloadOptions.isMetadataDownload) {
      return null;
    } else {
      return _response as commons.Media;
    }
  }

  /// Request parameters:
  ///
  /// [resource] - Path parameter: 'resource'. Should not be empty.
  ///
  /// [compute] - Path parameter: 'compute'. Must be at least three characters
  /// long.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ToyResourceResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ToyResourceResponse> get(
    core.String resource,
    core.String compute, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'toyresource/' +
        commons.escapeVariable('$resource') +
        '/compute/' +
        commons.escapeVariable('$compute');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ToyResourceResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class StorageResource {
  final commons.ApiRequester _requester;

  StorageResource(commons.ApiRequester client) : _requester = client;

  /// Request parameters:
  ///
  /// [resource] - Path parameter: 'resource'. Can be used in a url like
  /// https://example.com/\[resource\]/something
  ///
  /// [storage] - Path parameter: 'storage'. Learn more at
  /// [the web site](https://example.com).
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ToyResourceResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ToyResourceResponse> get(
    core.String resource,
    core.String storage, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'toyresource/' +
        commons.escapeVariable('$resource') +
        '/storage/' +
        commons.escapeVariable('$storage');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ToyResourceResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ListOfListOfString extends collection.ListBase<core.List<core.String>> {
  final core.List<core.List<core.String>> _inner;

  ListOfListOfString() : _inner = [];

  ListOfListOfString.fromJson(core.List json)
      : _inner = json
            .map((value) => (value as core.List)
                .map((value) => value as core.String)
                .toList())
            .toList();

  @core.override
  core.List<core.String> operator [](core.int key) => _inner[key];

  @core.override
  void operator []=(core.int key, core.List<core.String> value) {
    _inner[key] = value;
  }

  @core.override
  core.int get length => _inner.length;

  @core.override
  set length(core.int newLength) {
    _inner.length = newLength;
  }

  @core.override
  void add(core.List<core.String> element) {
    _inner.add(element);
  }
}

class ListOfListOfToyRequest
    extends collection.ListBase<core.List<ToyRequest>> {
  final core.List<core.List<ToyRequest>> _inner;

  ListOfListOfToyRequest() : _inner = [];

  ListOfListOfToyRequest.fromJson(core.List json)
      : _inner = json
            .map((value) => (value as core.List)
                .map((value) => ToyRequest.fromJson(
                    value as core.Map<core.String, core.dynamic>))
                .toList())
            .toList();

  @core.override
  core.List<ToyRequest> operator [](core.int key) => _inner[key];

  @core.override
  void operator []=(core.int key, core.List<ToyRequest> value) {
    _inner[key] = value;
  }

  @core.override
  core.int get length => _inner.length;

  @core.override
  set length(core.int newLength) {
    _inner.length = newLength;
  }

  @core.override
  void add(core.List<ToyRequest> element) {
    _inner.add(element);
  }
}

class ListOfListOfint extends collection.ListBase<core.List<core.int>> {
  final core.List<core.List<core.int>> _inner;

  ListOfListOfint() : _inner = [];

  ListOfListOfint.fromJson(core.List json)
      : _inner = json
            .map((value) =>
                (value as core.List).map((value) => value as core.int).toList())
            .toList();

  @core.override
  core.List<core.int> operator [](core.int key) => _inner[key];

  @core.override
  void operator []=(core.int key, core.List<core.int> value) {
    _inner[key] = value;
  }

  @core.override
  core.int get length => _inner.length;

  @core.override
  set length(core.int newLength) {
    _inner.length = newLength;
  }

  @core.override
  void add(core.List<core.int> element) {
    _inner.add(element);
  }
}

class ListOfMapOfListOfString
    extends collection.ListBase<core.Map<core.String, core.List<core.String>>> {
  final core.List<core.Map<core.String, core.List<core.String>>> _inner;

  ListOfMapOfListOfString() : _inner = [];

  ListOfMapOfListOfString.fromJson(core.List json)
      : _inner = json
            .map((value) => (value as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    (item as core.List)
                        .map((value) => value as core.String)
                        .toList(),
                  ),
                ))
            .toList();

  @core.override
  core.Map<core.String, core.List<core.String>> operator [](core.int key) =>
      _inner[key];

  @core.override
  void operator []=(
      core.int key, core.Map<core.String, core.List<core.String>> value) {
    _inner[key] = value;
  }

  @core.override
  core.int get length => _inner.length;

  @core.override
  set length(core.int newLength) {
    _inner.length = newLength;
  }

  @core.override
  void add(core.Map<core.String, core.List<core.String>> element) {
    _inner.add(element);
  }
}

class ListOfMapOfListOfint
    extends collection.ListBase<core.Map<core.String, core.List<core.int>>> {
  final core.List<core.Map<core.String, core.List<core.int>>> _inner;

  ListOfMapOfListOfint() : _inner = [];

  ListOfMapOfListOfint.fromJson(core.List json)
      : _inner = json
            .map((value) => (value as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    (item as core.List)
                        .map((value) => value as core.int)
                        .toList(),
                  ),
                ))
            .toList();

  @core.override
  core.Map<core.String, core.List<core.int>> operator [](core.int key) =>
      _inner[key];

  @core.override
  void operator []=(
      core.int key, core.Map<core.String, core.List<core.int>> value) {
    _inner[key] = value;
  }

  @core.override
  core.int get length => _inner.length;

  @core.override
  set length(core.int newLength) {
    _inner.length = newLength;
  }

  @core.override
  void add(core.Map<core.String, core.List<core.int>> element) {
    _inner.add(element);
  }
}

class ListOfString extends collection.ListBase<core.String> {
  final core.List<core.String> _inner;

  ListOfString() : _inner = [];

  ListOfString.fromJson(core.List json)
      : _inner = json.map((value) => value as core.String).toList();

  @core.override
  core.String operator [](core.int key) => _inner[key];

  @core.override
  void operator []=(core.int key, core.String value) {
    _inner[key] = value;
  }

  @core.override
  core.int get length => _inner.length;

  @core.override
  set length(core.int newLength) {
    _inner.length = newLength;
  }

  @core.override
  void add(core.String element) {
    _inner.add(element);
  }
}

class ListOfToyRequest extends collection.ListBase<ToyRequest> {
  final core.List<ToyRequest> _inner;

  ListOfToyRequest() : _inner = [];

  ListOfToyRequest.fromJson(core.List json)
      : _inner = json
            .map((value) => ToyRequest.fromJson(
                value as core.Map<core.String, core.dynamic>))
            .toList();

  @core.override
  ToyRequest operator [](core.int key) => _inner[key];

  @core.override
  void operator []=(core.int key, ToyRequest value) {
    _inner[key] = value;
  }

  @core.override
  core.int get length => _inner.length;

  @core.override
  set length(core.int newLength) {
    _inner.length = newLength;
  }

  @core.override
  void add(ToyRequest element) {
    _inner.add(element);
  }
}

class MapOfListOfMapOfbool extends collection
    .MapBase<core.String, core.List<core.Map<core.String, core.bool>>> {
  final _innerMap =
      <core.String, core.List<core.Map<core.String, core.bool>>>{};

  MapOfListOfMapOfbool();

  MapOfListOfMapOfbool.fromJson(core.Map<core.String, core.dynamic> _json) {
    _json.forEach((core.String key, value) {
      this[key] = (value as core.List)
          .map((value) => (value as core.Map<core.String, core.dynamic>).map(
                (key, item) => core.MapEntry(
                  key,
                  item as core.bool,
                ),
              ))
          .toList();
    });
  }

  @core.override
  core.List<core.Map<core.String, core.bool>>? operator [](core.Object? key) =>
      _innerMap[key];

  @core.override
  void operator []=(
      core.String key, core.List<core.Map<core.String, core.bool>> value) {
    _innerMap[key] = value;
  }

  @core.override
  void clear() {
    _innerMap.clear();
  }

  @core.override
  core.Iterable<core.String> get keys => _innerMap.keys;

  @core.override
  core.List<core.Map<core.String, core.bool>>? remove(core.Object? key) =>
      _innerMap.remove(key);
}

class MapOfListOfMapOfint extends collection
    .MapBase<core.String, core.List<core.Map<core.String, core.int>>> {
  final _innerMap = <core.String, core.List<core.Map<core.String, core.int>>>{};

  MapOfListOfMapOfint();

  MapOfListOfMapOfint.fromJson(core.Map<core.String, core.dynamic> _json) {
    _json.forEach((core.String key, value) {
      this[key] = (value as core.List)
          .map((value) => (value as core.Map<core.String, core.dynamic>).map(
                (key, item) => core.MapEntry(
                  key,
                  item as core.int,
                ),
              ))
          .toList();
    });
  }

  @core.override
  core.List<core.Map<core.String, core.int>>? operator [](core.Object? key) =>
      _innerMap[key];

  @core.override
  void operator []=(
      core.String key, core.List<core.Map<core.String, core.int>> value) {
    _innerMap[key] = value;
  }

  @core.override
  void clear() {
    _innerMap.clear();
  }

  @core.override
  core.Iterable<core.String> get keys => _innerMap.keys;

  @core.override
  core.List<core.Map<core.String, core.int>>? remove(core.Object? key) =>
      _innerMap.remove(key);
}

class MapOfMapOfbool
    extends collection.MapBase<core.String, core.Map<core.String, core.bool>> {
  final _innerMap = <core.String, core.Map<core.String, core.bool>>{};

  MapOfMapOfbool();

  MapOfMapOfbool.fromJson(core.Map<core.String, core.dynamic> _json) {
    _json.forEach((core.String key, value) {
      this[key] = (value as core.Map<core.String, core.dynamic>).map(
        (key, item) => core.MapEntry(
          key,
          item as core.bool,
        ),
      );
    });
  }

  @core.override
  core.Map<core.String, core.bool>? operator [](core.Object? key) =>
      _innerMap[key];

  @core.override
  void operator []=(core.String key, core.Map<core.String, core.bool> value) {
    _innerMap[key] = value;
  }

  @core.override
  void clear() {
    _innerMap.clear();
  }

  @core.override
  core.Iterable<core.String> get keys => _innerMap.keys;

  @core.override
  core.Map<core.String, core.bool>? remove(core.Object? key) =>
      _innerMap.remove(key);
}

class MapOfMapOfint
    extends collection.MapBase<core.String, core.Map<core.String, core.int>> {
  final _innerMap = <core.String, core.Map<core.String, core.int>>{};

  MapOfMapOfint();

  MapOfMapOfint.fromJson(core.Map<core.String, core.dynamic> _json) {
    _json.forEach((core.String key, value) {
      this[key] = (value as core.Map<core.String, core.dynamic>).map(
        (key, item) => core.MapEntry(
          key,
          item as core.int,
        ),
      );
    });
  }

  @core.override
  core.Map<core.String, core.int>? operator [](core.Object? key) =>
      _innerMap[key];

  @core.override
  void operator []=(core.String key, core.Map<core.String, core.int> value) {
    _innerMap[key] = value;
  }

  @core.override
  void clear() {
    _innerMap.clear();
  }

  @core.override
  core.Iterable<core.String> get keys => _innerMap.keys;

  @core.override
  core.Map<core.String, core.int>? remove(core.Object? key) =>
      _innerMap.remove(key);
}

class MapOfToyResponse extends collection.MapBase<core.String, ToyResponse> {
  final _innerMap = <core.String, ToyResponse>{};

  MapOfToyResponse();

  MapOfToyResponse.fromJson(core.Map<core.String, core.dynamic> _json) {
    _json.forEach((core.String key, value) {
      this[key] =
          ToyResponse.fromJson(value as core.Map<core.String, core.dynamic>);
    });
  }

  @core.override
  ToyResponse? operator [](core.Object? key) => _innerMap[key];

  @core.override
  void operator []=(core.String key, ToyResponse value) {
    _innerMap[key] = value;
  }

  @core.override
  void clear() {
    _innerMap.clear();
  }

  @core.override
  core.Iterable<core.String> get keys => _innerMap.keys;

  @core.override
  ToyResponse? remove(core.Object? key) => _innerMap.remove(key);
}

class MapOfint extends collection.MapBase<core.String, core.int> {
  final _innerMap = <core.String, core.int>{};

  MapOfint();

  MapOfint.fromJson(core.Map<core.String, core.dynamic> _json) {
    _json.forEach((core.String key, value) {
      this[key] = value as core.int;
    });
  }

  @core.override
  core.int? operator [](core.Object? key) => _innerMap[key];

  @core.override
  void operator []=(core.String key, core.int value) {
    _innerMap[key] = value;
  }

  @core.override
  void clear() {
    _innerMap.clear();
  }

  @core.override
  core.Iterable<core.String> get keys => _innerMap.keys;

  @core.override
  core.int? remove(core.Object? key) => _innerMap.remove(key);
}

class NestedResponse {
  core.String? nestedResult;

  NestedResponse({
    this.nestedResult,
  });

  NestedResponse.fromJson(core.Map _json)
      : this(
          nestedResult: _json.containsKey('nestedResult')
              ? _json['nestedResult'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nestedResult != null) 'nestedResult': nestedResult!,
      };
}

class ToyAgeRequest {
  core.int? age;

  ToyAgeRequest({
    this.age,
  });

  ToyAgeRequest.fromJson(core.Map _json)
      : this(
          age: _json.containsKey('age') ? _json['age'] as core.int : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (age != null) 'age': age!,
      };
}

class ToyMapResponse {
  core.Map<core.String, NestedResponse>? mapResult;

  /// Nested message value of the parameter.
  ///
  /// Output only.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Map<core.String, core.Object?>>? msgValue;

  /// A null value.
  /// Possible string values are:
  /// - "NULL_VALUE" : Null value.
  core.String? nullValue;

  /// A collection of arbitrary key-value pairs which are visible to all apps.
  /// Entries with null values are cleared in update and copy requests.
  core.Map<core.String, core.String?>? properties;
  core.String? result;

  ///
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object? v;

  ToyMapResponse({
    this.mapResult,
    this.msgValue,
    this.nullValue,
    this.properties,
    this.result,
    this.v,
  });

  ToyMapResponse.fromJson(core.Map _json)
      : this(
          mapResult: _json.containsKey('mapResult')
              ? (_json['mapResult'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    NestedResponse.fromJson(
                        item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          msgValue: _json.containsKey('msgValue')
              ? (_json['msgValue'] as core.List)
                  .map((value) => value as core.Map<core.String, core.dynamic>)
                  .toList()
              : null,
          nullValue: _json.containsKey('nullValue') ? 'NULL_VALUE' : null,
          properties: _json.containsKey('properties')
              ? (_json['properties'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String?,
                  ),
                )
              : null,
          result: _json.containsKey('result')
              ? _json['result'] as core.String
              : null,
          v: _json.containsKey('v') ? _json['v'] : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (mapResult != null) 'mapResult': mapResult!,
        if (msgValue != null) 'msgValue': msgValue!,
        if (nullValue != null) 'nullValue': nullValue!,
        if (properties != null) 'properties': properties!,
        if (result != null) 'result': result!,
        if (v != null) 'v': v!,
      };
}

class ToyRequest {
  core.int? age;
  core.String? name;

  ToyRequest({
    this.age,
    this.name,
  });

  ToyRequest.fromJson(core.Map _json)
      : this(
          age: _json.containsKey('age') ? _json['age'] as core.int : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (age != null) 'age': age!,
        if (name != null) 'name': name!,
      };
}

typedef ToyResourceResponse = $Response;
typedef ToyResponse = $Response;
