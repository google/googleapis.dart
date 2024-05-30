/// Shared types to minimize the package size. Do not use directly.
@core.Deprecated(
  'Avoid importing this library. '
  'Use the members defined in the target API library instead.',
)
library;

// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: doc_directive_unknown
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_string_interpolations

import 'dart:core' as core;

/// Used by:
///
/// - toyApi:0.1 : ToyResourceResponse
/// - toyApi:0.1 : ToyResponse
class $Response {
  core.String? result;

  $Response({
    this.result,
  });

  $Response.fromJson(core.Map json_)
      : this(
          result: json_.containsKey('result')
              ? json_['result'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (result != null) 'result': result!,
      };
}
