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

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// Request headers used by all libraries in this package
final requestHeaders = {
  'user-agent': 'google-api-dart-client/0.1',
  'x-goog-api-client': 'gl-dart/${commons.dartVersion} gdcl/0.1',
};

class WrapApi {
  final commons.ApiRequester _requester;

  WrapApi(http.Client client,
      {core.String rootUrl = 'http://localhost:9090/',
      core.String servicePath = 'api/wrapApi/0.1/'})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// Completes with a [WrapResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<WrapResponse> helloPost(WrapRequest request) async {
    final body_ = convert.json.encode(request);
    const url_ = 'helloPost';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
    );
    return WrapResponse.fromJson(
        (response_ as core.Map)['data'] as core.Map<core.String, core.dynamic>);
  }
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); } The JSON representation for `Empty` is empty JSON
/// object `{}`.
class Empty {
  Empty();

  Empty.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map json_);

  core.Map<core.String, core.dynamic> toJson() => {};
}

class WrapRequest {
  core.int? age;
  core.String? name;

  WrapRequest({
    this.age,
    this.name,
  });

  WrapRequest.fromJson(core.Map json_)
      : this(
          age: json_['age'] as core.int?,
          name: json_['name'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (age != null) 'age': age!,
        if (name != null) 'name': name!,
      };
}

class WrapResponse {
  core.String? result;

  WrapResponse({
    this.result,
  });

  WrapResponse.fromJson(core.Map json_)
      : this(
          result: json_['result'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (result != null) 'result': result!,
      };
}
