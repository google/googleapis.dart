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

library file_test_package.toyApi.client;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;
import 'package:file_test_package/messages.dart';
export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const userAgent = 'dart-api-client toyApi/0.1';

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
    final _queryParams = <core.String, core.List<core.String>>{};
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

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
    core.String $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{};
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    const _url = 'hello';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ToyResponseFactory.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [core.Map<core.String, ToyResponse>].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<core.Map<core.String, ToyResponse>> helloListOfClass(
    core.List<ToyRequest> request, {
    core.String $fields,
  }) async {
    core.String _body;
    if (request != null) {
      _body = convert.json.encode(
          request.map((value) => ToyRequestFactory.toJson(value)).toList());
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    const _url = 'helloListOfClass';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return (_response as core.Map).cast<core.String, core.Map>().map(
          (key, item) => core.MapEntry(
            key,
            ToyResponseFactory.fromJson(
                item as core.Map<core.String, core.dynamic>),
          ),
        );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [core.Map<core.String, ToyResponse>].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<core.Map<core.String, ToyResponse>> helloListOfListOfClass(
    core.List<core.List<ToyRequest>> request, {
    core.String $fields,
  }) async {
    core.String _body;
    if (request != null) {
      _body = convert.json.encode(request
          .map((value) =>
              value.map((value) => ToyRequestFactory.toJson(value)).toList())
          .toList());
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    const _url = 'helloListOfListOfClass';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return (_response as core.Map).cast<core.String, core.Map>().map(
          (key, item) => core.MapEntry(
            key,
            ToyResponseFactory.fromJson(
                item as core.Map<core.String, core.dynamic>),
          ),
        );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [core.Map<core.String, core.int>].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<core.Map<core.String, core.int>> helloMap(
    core.Map<core.String, core.int> request, {
    core.String $fields,
  }) async {
    core.String _body;
    if (request != null) {
      _body = convert.json.encode(request);
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    const _url = 'helloMap';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return (_response as core.Map).cast<core.String, core.int>().map(
          (key, item) => core.MapEntry(
            key,
            item as core.int,
          ),
        );
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
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if (age == null) {
      throw core.ArgumentError('Parameter age is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    final _url = 'hello/' +
        commons.Escaper.ecapeVariable('$name') +
        '/age/' +
        commons.Escaper.ecapeVariable('$age');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ToyResponseFactory.fromJson(
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
    core.String _body;
    if (request != null) {
      _body = convert.json.encode(ToyAgeRequestFactory.toJson(request));
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    final _url = 'helloPost/' + commons.Escaper.ecapeVariable('$name');

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return ToyResponseFactory.fromJson(
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
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if (age != null) {
      _queryParams['age'] = ['${age}'];
    }
    if (foo != null) {
      _queryParams['foo'] = [foo];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    final _url = 'helloQuery/' + commons.Escaper.ecapeVariable('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ToyResponseFactory.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [core.List<core.List<core.String>>].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<core.List<core.List<core.String>>> helloNestedListList(
    core.List<core.List<core.int>> request, {
    core.String $fields,
  }) async {
    core.String _body;
    if (request != null) {
      _body = convert.json.encode(request);
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    const _url = 'helloNestedListList';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return (_response as core.List)
        .map<core.List<core.String>>((value) => (value as core.List)
            .map<core.String>((value) => value as core.String)
            .toList())
        .toList();
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [core.List<core.Map<core.String,
  /// core.List<core.String>>>].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<core.List<core.Map<core.String, core.List<core.String>>>>
      helloNestedListMapList(
    core.List<core.Map<core.String, core.List<core.int>>> request, {
    core.String $fields,
  }) async {
    core.String _body;
    if (request != null) {
      _body = convert.json.encode(request);
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    const _url = 'helloNestedListMapList';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return (_response as core.List)
        .map<core.Map<core.String, core.List<core.String>>>(
            (value) => (value as core.Map).cast<core.String, core.List>().map(
                  (key, item) => core.MapEntry(
                    key,
                    (item as core.List)
                        .map<core.String>((value) => value as core.String)
                        .toList(),
                  ),
                ))
        .toList();
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
    final _queryParams = <core.String, core.List<core.String>>{};
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    const _url = 'helloNestedMap';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ToyMapResponseFactory.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [core.Map<core.String, core.List<core.Map<core.String,
  /// core.bool>>>].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<
          core.Map<core.String, core.List<core.Map<core.String, core.bool>>>>
      helloNestedMapListMap(
    core.Map<core.String, core.List<core.Map<core.String, core.int>>> request, {
    core.String $fields,
  }) async {
    core.String _body;
    if (request != null) {
      _body = convert.json.encode(request);
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    const _url = 'helloNestedMapListMap';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return (_response as core.Map).cast<core.String, core.List>().map(
          (key, item) => core.MapEntry(
            key,
            (item as core.List)
                .map<core.Map<core.String, core.bool>>((value) =>
                    (value as core.Map).cast<core.String, core.bool>().map(
                          (key, item) => core.MapEntry(
                            key,
                            item as core.bool,
                          ),
                        ))
                .toList(),
          ),
        );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [core.Map<core.String, core.Map<core.String,
  /// core.bool>>].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<core.Map<core.String, core.Map<core.String, core.bool>>>
      helloNestedMapMap(
    core.Map<core.String, core.Map<core.String, core.int>> request, {
    core.String $fields,
  }) async {
    core.String _body;
    if (request != null) {
      _body = convert.json.encode(request);
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    const _url = 'helloNestedMapMap';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return (_response as core.Map).cast<core.String, core.Map>().map(
          (key, item) => core.MapEntry(
            key,
            (item as core.Map).cast<core.String, core.bool>().map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.bool,
                  ),
                ),
          ),
        );
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
    core.String _body;
    if (request != null) {
      _body = convert.json.encode(ToyRequestFactory.toJson(request));
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    const _url = 'helloPost';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return ToyResponseFactory.fromJson(
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
    final _queryParams = <core.String, core.List<core.String>>{};
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    const _url = 'helloReturnNull';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ToyResponseFactory.fromJson(
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
    final _queryParams = <core.String, core.List<core.String>>{};
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    const _url = 'helloVoid';

    final _response = await _requester.request(
      _url,
      'POST',
      queryParams: _queryParams,
    );
    return ToyResponseFactory.fromJson(
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
    final _queryParams = <core.String, core.List<core.String>>{};
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

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
  /// Completes with a [core.List<core.String>].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<core.List<core.String>> reverseList(
    core.List<core.String> request, {
    core.String $fields,
  }) async {
    core.String _body;
    if (request != null) {
      _body = convert.json.encode(request);
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    const _url = 'reverseList';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return (_response as core.List)
        .map<core.String>((value) => value as core.String)
        .toList();
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
    if (resource == null) {
      throw core.ArgumentError('Parameter resource is required.');
    }
    if (compute == null) {
      throw core.ArgumentError('Parameter compute is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    final _url = 'toyresource/' +
        commons.Escaper.ecapeVariable('$resource') +
        '/compute/' +
        commons.Escaper.ecapeVariable('$compute');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ToyResourceResponseFactory.fromJson(
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
    if (resource == null) {
      throw core.ArgumentError('Parameter resource is required.');
    }
    if (storage == null) {
      throw core.ArgumentError('Parameter storage is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{};
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    final _url = 'toyresource/' +
        commons.Escaper.ecapeVariable('$resource') +
        '/storage/' +
        commons.Escaper.ecapeVariable('$storage');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ToyResourceResponseFactory.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class NestedResponseFactory {
  static NestedResponse fromJson(core.Map _json) {
    final message = NestedResponse();
    if (_json.containsKey('nestedResult')) {
      message.nestedResult = _json['nestedResult'] as core.String;
    }
    return message;
  }

  static core.Map<core.String, core.dynamic> toJson(NestedResponse message) {
    final _json = <core.String, core.dynamic>{};
    if (message.nestedResult != null) {
      _json['nestedResult'] = message.nestedResult;
    }
    return _json;
  }
}

class ToyAgeRequestFactory {
  static ToyAgeRequest fromJson(core.Map _json) {
    final message = ToyAgeRequest();
    if (_json.containsKey('age')) {
      message.age = _json['age'] as core.int;
    }
    return message;
  }

  static core.Map<core.String, core.dynamic> toJson(ToyAgeRequest message) {
    final _json = <core.String, core.dynamic>{};
    if (message.age != null) {
      _json['age'] = message.age;
    }
    return _json;
  }
}

class ToyMapResponseFactory {
  static ToyMapResponse fromJson(core.Map _json) {
    final message = ToyMapResponse();
    if (_json.containsKey('mapResult')) {
      message.mapResult =
          (_json['mapResult'] as core.Map).cast<core.String, core.Map>().map(
                (key, item) => core.MapEntry(
                  key,
                  NestedResponseFactory.fromJson(
                      item as core.Map<core.String, core.dynamic>),
                ),
              );
    }
    if (_json.containsKey('result')) {
      message.result = _json['result'] as core.String;
    }
    return message;
  }

  static core.Map<core.String, core.dynamic> toJson(ToyMapResponse message) {
    final _json = <core.String, core.dynamic>{};
    if (message.mapResult != null) {
      _json['mapResult'] = message.mapResult.map((key, item) =>
          core.MapEntry(key, NestedResponseFactory.toJson(item)));
    }
    if (message.result != null) {
      _json['result'] = message.result;
    }
    return _json;
  }
}

class ToyRequestFactory {
  static ToyRequest fromJson(core.Map _json) {
    final message = ToyRequest();
    if (_json.containsKey('age')) {
      message.age = _json['age'] as core.int;
    }
    if (_json.containsKey('name')) {
      message.name = _json['name'] as core.String;
    }
    return message;
  }

  static core.Map<core.String, core.dynamic> toJson(ToyRequest message) {
    final _json = <core.String, core.dynamic>{};
    if (message.age != null) {
      _json['age'] = message.age;
    }
    if (message.name != null) {
      _json['name'] = message.name;
    }
    return _json;
  }
}

class ToyResourceResponseFactory {
  static ToyResourceResponse fromJson(core.Map _json) {
    final message = ToyResourceResponse();
    if (_json.containsKey('result')) {
      message.result = _json['result'] as core.String;
    }
    return message;
  }

  static core.Map<core.String, core.dynamic> toJson(
      ToyResourceResponse message) {
    final _json = <core.String, core.dynamic>{};
    if (message.result != null) {
      _json['result'] = message.result;
    }
    return _json;
  }
}

class ToyResponseFactory {
  static ToyResponse fromJson(core.Map _json) {
    final message = ToyResponse();
    if (_json.containsKey('result')) {
      message.result = _json['result'] as core.String;
    }
    return message;
  }

  static core.Map<core.String, core.dynamic> toJson(ToyResponse message) {
    final _json = <core.String, core.dynamic>{};
    if (message.result != null) {
      _json['result'] = message.result;
    }
    return _json;
  }
}
