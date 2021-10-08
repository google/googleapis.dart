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

import 'dart:core' as core;

/// Shared implementation type for:
///
/// - toyApi:0.1 : ToyResourceResponse
/// - toyApi:0.1 : ToyResponse
class $Response {
  core.String? result;

  $Response({
    this.result,
  });

  $Response.fromJson(core.Map _json)
      : this(
          result: _json.containsKey('result')
              ? _json['result'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (result != null) 'result': result!,
      };
}
