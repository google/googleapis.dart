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
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
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

import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

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
            commons.ApiRequester(client, rootUrl, servicePath, userAgent);

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
    core.String $fields,
  }) async {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;

    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'failing';

    await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
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
    core.String $fields,
  }) async {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;

    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'hello';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
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
    core.String $fields,
  }) async {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;

    core.String _body;
    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'helloListOfClass';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
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
    core.String $fields,
  }) async {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;

    core.String _body;
    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'helloListOfListOfClass';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
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
    core.String $fields,
  }) async {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;

    core.String _body;
    if (request != null) {
      _body = convert.json.encode(request);
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'helloMap';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
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
    core.String $fields,
  }) async {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if (age == null) {
      throw core.ArgumentError('Parameter age is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'hello/' +
        commons.Escaper.ecapeVariable('$name') +
        '/age/' +
        commons.Escaper.ecapeVariable('$age');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
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
    core.String $fields,
  }) async {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;

    core.String _body;
    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'helloPost/' + commons.Escaper.ecapeVariable('$name');

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
    );
    return ToyResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Request parameters:
  ///
  /// [name] - Path parameter: 'name'.
  ///
  /// [age] - Query parameter: 'age'.
  ///
  /// [foo] - Query parameter: 'foo'.
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
    core.String name, {
    core.int age,
    core.String foo,
    core.String $fields,
  }) async {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if (age != null) {
      _queryParams['age'] = ['${age}'];
    }
    if (foo != null) {
      _queryParams['foo'] = [foo];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'helloQuery/' + commons.Escaper.ecapeVariable('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
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
    core.String $fields,
  }) async {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;

    core.String _body;
    if (request != null) {
      _body = convert.json.encode(request);
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'helloNestedListList';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
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
    core.String $fields,
  }) async {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;

    core.String _body;
    if (request != null) {
      _body = convert.json.encode(request);
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'helloNestedListMapList';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
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
    core.String $fields,
  }) async {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;

    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'helloNestedMap';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
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
    core.String $fields,
  }) async {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;

    core.String _body;
    if (request != null) {
      _body = convert.json.encode(request);
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'helloNestedMapListMap';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
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
    core.String $fields,
  }) async {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;

    core.String _body;
    if (request != null) {
      _body = convert.json.encode(request);
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'helloNestedMapMap';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
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
    core.String $fields,
  }) async {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;

    core.String _body;
    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'helloPost';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
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
    core.String $fields,
  }) async {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;

    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'helloReturnNull';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
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
    core.String $fields,
  }) async {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;

    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'helloVoid';

    final _response = await _requester.request(
      _url,
      'POST',
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
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
    core.String $fields,
  }) async {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;

    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'noop';

    await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
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
    core.String $fields,
  }) async {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;

    core.String _body;
    if (request != null) {
      _body = convert.json.encode(request);
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'reverseList';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
    );
    return ListOfString.fromJson(_response as core.List);
  }
}

class ComputeResource {
  final commons.ApiRequester _requester;

  ComputeResource(commons.ApiRequester client) : _requester = client;

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
    core.String $fields,
  }) async {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;

    if (resource == null) {
      throw core.ArgumentError('Parameter resource is required.');
    }
    if (compute == null) {
      throw core.ArgumentError('Parameter compute is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'toyresource/' +
        commons.Escaper.ecapeVariable('$resource') +
        '/compute/' +
        commons.Escaper.ecapeVariable('$compute');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
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
    core.String $fields,
  }) async {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;

    if (resource == null) {
      throw core.ArgumentError('Parameter resource is required.');
    }
    if (storage == null) {
      throw core.ArgumentError('Parameter storage is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'toyresource/' +
        commons.Escaper.ecapeVariable('$resource') +
        '/storage/' +
        commons.Escaper.ecapeVariable('$storage');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
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
                .map<core.String>((value) => value as core.String)
                .toList())
            .toList();

  core.List<core.List<core.String>> toJson() {
    return _inner.map((value) => value).toList();
  }

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
}

class ListOfListOfToyRequest
    extends collection.ListBase<core.List<ToyRequest>> {
  final core.List<core.List<ToyRequest>> _inner;

  ListOfListOfToyRequest() : _inner = [];

  ListOfListOfToyRequest.fromJson(core.List json)
      : _inner = json
            .map((value) => (value as core.List)
                .map<ToyRequest>((value) => ToyRequest.fromJson(
                    value as core.Map<core.String, core.dynamic>))
                .toList())
            .toList();

  core.List<core.List<core.Map<core.String, core.Object>>> toJson() {
    return _inner
        .map((value) => value.map((value) => value.toJson()).toList())
        .toList();
  }

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
}

class ListOfListOfint extends collection.ListBase<core.List<core.int>> {
  final core.List<core.List<core.int>> _inner;

  ListOfListOfint() : _inner = [];

  ListOfListOfint.fromJson(core.List json)
      : _inner = json
            .map((value) => (value as core.List)
                .map<core.int>((value) => value as core.int)
                .toList())
            .toList();

  core.List<core.List<core.int>> toJson() {
    return _inner.map((value) => value).toList();
  }

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
}

class ListOfMapOfListOfString
    extends collection.ListBase<core.Map<core.String, core.List<core.String>>> {
  final core.List<core.Map<core.String, core.List<core.String>>> _inner;

  ListOfMapOfListOfString() : _inner = [];

  ListOfMapOfListOfString.fromJson(core.List json)
      : _inner = json
            .map((value) =>
                (value as core.Map).cast<core.String, core.List>().map(
                      (key, item) => core.MapEntry(
                        key,
                        (item as core.List)
                            .map<core.String>((value) => value as core.String)
                            .toList(),
                      ),
                    ))
            .toList();

  core.List<core.Map<core.String, core.List<core.String>>> toJson() {
    return _inner.map((value) => value).toList();
  }

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
}

class ListOfMapOfListOfint
    extends collection.ListBase<core.Map<core.String, core.List<core.int>>> {
  final core.List<core.Map<core.String, core.List<core.int>>> _inner;

  ListOfMapOfListOfint() : _inner = [];

  ListOfMapOfListOfint.fromJson(core.List json)
      : _inner = json
            .map((value) =>
                (value as core.Map).cast<core.String, core.List>().map(
                      (key, item) => core.MapEntry(
                        key,
                        (item as core.List)
                            .map<core.int>((value) => value as core.int)
                            .toList(),
                      ),
                    ))
            .toList();

  core.List<core.Map<core.String, core.List<core.int>>> toJson() {
    return _inner.map((value) => value).toList();
  }

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
}

class ListOfString extends collection.ListBase<core.String> {
  final core.List<core.String> _inner;

  ListOfString() : _inner = [];

  ListOfString.fromJson(core.List json)
      : _inner = json.map((value) => value as core.String).toList();

  core.List<core.String> toJson() {
    return _inner.map((value) => value).toList();
  }

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
}

class ListOfToyRequest extends collection.ListBase<ToyRequest> {
  final core.List<ToyRequest> _inner;

  ListOfToyRequest() : _inner = [];

  ListOfToyRequest.fromJson(core.List json)
      : _inner = json
            .map((value) => ToyRequest.fromJson(
                value as core.Map<core.String, core.dynamic>))
            .toList();

  core.List<core.Map<core.String, core.Object>> toJson() {
    return _inner.map((value) => value.toJson()).toList();
  }

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
}

class MapOfListOfMapOfbool extends collection
    .MapBase<core.String, core.List<core.Map<core.String, core.bool>>> {
  final _innerMap =
      <core.String, core.List<core.Map<core.String, core.bool>>>{};

  MapOfListOfMapOfbool();

  MapOfListOfMapOfbool.fromJson(core.Map<core.String, core.dynamic> _json) {
    _json.forEach((core.String key, value) {
      this[key] = (value as core.List)
          .map<core.Map<core.String, core.bool>>(
              (value) => (value as core.Map).cast<core.String, core.bool>().map(
                    (key, item) => core.MapEntry(
                      key,
                      item as core.bool,
                    ),
                  ))
          .toList();
    });
  }

  core.Map<core.String, core.dynamic> toJson() =>
      core.Map<core.String, core.dynamic>.of(this);

  @core.override
  core.List<core.Map<core.String, core.bool>> operator [](core.Object key) =>
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
  core.List<core.Map<core.String, core.bool>> remove(core.Object key) =>
      _innerMap.remove(key);
}

class MapOfListOfMapOfint extends collection
    .MapBase<core.String, core.List<core.Map<core.String, core.int>>> {
  final _innerMap = <core.String, core.List<core.Map<core.String, core.int>>>{};

  MapOfListOfMapOfint();

  MapOfListOfMapOfint.fromJson(core.Map<core.String, core.dynamic> _json) {
    _json.forEach((core.String key, value) {
      this[key] = (value as core.List)
          .map<core.Map<core.String, core.int>>(
              (value) => (value as core.Map).cast<core.String, core.int>().map(
                    (key, item) => core.MapEntry(
                      key,
                      item as core.int,
                    ),
                  ))
          .toList();
    });
  }

  core.Map<core.String, core.dynamic> toJson() =>
      core.Map<core.String, core.dynamic>.of(this);

  @core.override
  core.List<core.Map<core.String, core.int>> operator [](core.Object key) =>
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
  core.List<core.Map<core.String, core.int>> remove(core.Object key) =>
      _innerMap.remove(key);
}

class MapOfMapOfbool
    extends collection.MapBase<core.String, core.Map<core.String, core.bool>> {
  final _innerMap = <core.String, core.Map<core.String, core.bool>>{};

  MapOfMapOfbool();

  MapOfMapOfbool.fromJson(core.Map<core.String, core.dynamic> _json) {
    _json.forEach((core.String key, value) {
      this[key] = (value as core.Map).cast<core.String, core.bool>().map(
            (key, item) => core.MapEntry(
              key,
              item as core.bool,
            ),
          );
    });
  }

  core.Map<core.String, core.dynamic> toJson() =>
      core.Map<core.String, core.dynamic>.of(this);

  @core.override
  core.Map<core.String, core.bool> operator [](core.Object key) =>
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
  core.Map<core.String, core.bool> remove(core.Object key) =>
      _innerMap.remove(key);
}

class MapOfMapOfint
    extends collection.MapBase<core.String, core.Map<core.String, core.int>> {
  final _innerMap = <core.String, core.Map<core.String, core.int>>{};

  MapOfMapOfint();

  MapOfMapOfint.fromJson(core.Map<core.String, core.dynamic> _json) {
    _json.forEach((core.String key, value) {
      this[key] = (value as core.Map).cast<core.String, core.int>().map(
            (key, item) => core.MapEntry(
              key,
              item as core.int,
            ),
          );
    });
  }

  core.Map<core.String, core.dynamic> toJson() =>
      core.Map<core.String, core.dynamic>.of(this);

  @core.override
  core.Map<core.String, core.int> operator [](core.Object key) =>
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
  core.Map<core.String, core.int> remove(core.Object key) =>
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

  core.Map<core.String, core.dynamic> toJson() =>
      core.Map<core.String, core.dynamic>.of(this);

  @core.override
  ToyResponse operator [](core.Object key) => _innerMap[key];

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
  ToyResponse remove(core.Object key) => _innerMap.remove(key);
}

class MapOfint extends collection.MapBase<core.String, core.int> {
  final _innerMap = <core.String, core.int>{};

  MapOfint();

  MapOfint.fromJson(core.Map<core.String, core.dynamic> _json) {
    _json.forEach((core.String key, value) {
      this[key] = value as core.int;
    });
  }

  core.Map<core.String, core.dynamic> toJson() =>
      core.Map<core.String, core.dynamic>.of(this);

  @core.override
  core.int operator [](core.Object key) => _innerMap[key];

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
  core.int remove(core.Object key) => _innerMap.remove(key);
}

class NestedResponse {
  core.String nestedResult;

  NestedResponse();

  NestedResponse.fromJson(core.Map _json) {
    if (_json.containsKey('nestedResult')) {
      nestedResult = _json['nestedResult'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (nestedResult != null) {
      _json['nestedResult'] = nestedResult;
    }
    return _json;
  }
}

class ToyAgeRequest {
  core.int age;

  ToyAgeRequest();

  ToyAgeRequest.fromJson(core.Map _json) {
    if (_json.containsKey('age')) {
      age = _json['age'] as core.int;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (age != null) {
      _json['age'] = age;
    }
    return _json;
  }
}

class ToyMapResponse {
  core.Map<core.String, NestedResponse> mapResult;
  core.String result;

  ToyMapResponse();

  ToyMapResponse.fromJson(core.Map _json) {
    if (_json.containsKey('mapResult')) {
      mapResult =
          (_json['mapResult'] as core.Map).cast<core.String, core.Map>().map(
                (key, item) => core.MapEntry(
                  key,
                  NestedResponse.fromJson(
                      item as core.Map<core.String, core.dynamic>),
                ),
              );
    }
    if (_json.containsKey('result')) {
      result = _json['result'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (mapResult != null) {
      _json['mapResult'] =
          mapResult.map((key, item) => core.MapEntry(key, item.toJson()));
    }
    if (result != null) {
      _json['result'] = result;
    }
    return _json;
  }
}

class ToyRequest {
  core.int age;
  core.String name;

  ToyRequest();

  ToyRequest.fromJson(core.Map _json) {
    if (_json.containsKey('age')) {
      age = _json['age'] as core.int;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (age != null) {
      _json['age'] = age;
    }
    if (name != null) {
      _json['name'] = name;
    }
    return _json;
  }
}

class ToyResourceResponse {
  core.String result;

  ToyResourceResponse();

  ToyResourceResponse.fromJson(core.Map _json) {
    if (_json.containsKey('result')) {
      result = _json['result'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (result != null) {
      _json['result'] = result;
    }
    return _json;
  }
}

class ToyResponse {
  core.String result;

  ToyResponse();

  ToyResponse.fromJson(core.Map _json) {
    if (_json.containsKey('result')) {
      result = _json['result'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (result != null) {
      _json['result'] = result;
    }
    return _json;
  }
}
