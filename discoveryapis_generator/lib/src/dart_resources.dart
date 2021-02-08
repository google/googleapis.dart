// Copyright (c) 2015, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: missing_whitespace_between_adjacent_strings

library discoveryapis_generator.dart_resources;

import 'dart:collection';

import 'dart_api_library.dart';
import 'dart_comments.dart';
import 'dart_schemas.dart';
import 'generated_googleapis/discovery/v1.dart';
import 'namer.dart';
import 'null_safety.dart';
import 'uri_template.dart';
import 'utils.dart';

const reservedMethodParameterNames = [
  'uploadMedia',
  'uploadOptions',
  'downloadOptions',
  'callOptions'
];

const whitelistedGlobalParameterNames = [
  'fields',
];

/// Represents a oauth2 authentication scope.
class OAuth2Scope {
  final String url;
  final Identifier identifier;
  final Comment comment;

  OAuth2Scope(this.url, this.identifier, this.comment);
}

/// Represents a parameter to a resource method.
class MethodParameter {
  final Identifier name;
  final Comment comment;
  final DartSchemaType type;
  final bool required;

  /// [jsonName] may be null if this parameter is the request object parameter.
  final String jsonName;

  /// The value is
  ///   - `true` if this parameter is encoded in the path of URL.
  ///   - `false` if this parameter is encoded in the query part of the URL.
  ///   - `null` otherwise.
  final bool encodedInPath;

  MethodParameter(
    this.name,
    this.comment,
    this.required,
    this.type,
    this.jsonName,
    this.encodedInPath,
  );

  /// Returns the declaration "Type name" of this method parameter.
  String get declaration =>
      '${type.declaration}${required ? '' : orNull} $name';
}

/// Represents a method on a resource class.
class DartResourceMethod {
  /// [requestParameter] may be [:null:].
  final MethodParameter requestParameter;

  /// [returnType] may be [:null:].
  final DartSchemaType returnType;

  final Comment comment;

  final DartApiImports imports;

  final Identifier name;
  final List<MethodParameter> parameters;
  final List<MethodParameter> namedParameters;
  final String jsonName;
  final String httpMethod;
  final bool mediaUpload;
  final bool mediaUploadResumable;
  final bool mediaDownload;

  final UriTemplate urlPattern;

  // Keys are always 'simple' and 'resumable'
  final Map<String, UriTemplate> mediaUploadPatterns;

  final bool enableDataWrapper;

  DartResourceMethod(
    this.imports,
    this.name,
    this.comment,
    this.requestParameter,
    this.parameters,
    this.namedParameters,
    this.returnType,
    this.jsonName,
    this.urlPattern,
    this.httpMethod,
    this.mediaUpload,
    this.mediaUploadResumable,
    this.mediaDownload,
    this.mediaUploadPatterns,
    this.enableDataWrapper,
  );

  String get signature {
    final parameterString = StringBuffer();

    // If a request object was defined, it is always the first parameter.
    if (requestParameter != null) {
      parameterString.write(requestParameter.declaration);
    }

    // Normal positional parameters are following.
    if (parameters.isNotEmpty) {
      if (parameterString.isNotEmpty) parameterString.write(', ');
      parameterString
          .write(parameters.map((param) => param.declaration).join(', '));
    }

    // Optional parameters come last (including the media parameters).
    if (namedParameters.isNotEmpty || mediaUpload || mediaDownload) {
      if (parameterString.isNotEmpty) parameterString.write(', ');

      final namedString = StringBuffer()
        ..write(namedParameters.map((param) => param.declaration).join(', '));

      if (mediaUpload) {
        if (namedString.isNotEmpty) namedString.write(', ');
        if (mediaUploadResumable) {
          // only take options if resume is supported
          namedString.write('${imports.commons}.UploadOptions uploadOptions = '
              '${imports.commons}.UploadOptions.Default, ');
        }
        namedString.write('${imports.commons}.Media$orNull uploadMedia');
      }

      if (mediaDownload) {
        if (namedString.isNotEmpty) namedString.write(', ');
        namedString
            .write('${imports.commons.ref()}DownloadOptions downloadOptions = '
                '${imports.commons}.DownloadOptions.Metadata');
      }

      parameterString.write('{$namedString,}');
    }

    var genericReturnType = '<void>';
    // NOTE: Media downloads are optional, so we cannot return [Media] as type.
    if (mediaDownload) {
      genericReturnType = '<${imports.core.ref()}Object>';
    } else if (returnType != null) {
      genericReturnType = '<${returnType.declaration}>';
    }
    return '${imports.async.ref()}Future$genericReturnType '
        '$name($parameterString)';
  }

  String get definition {
    final params = StringBuffer();

    final commentBuilder = StringBuffer();
    if (comment.rawComment.isNotEmpty) {
      commentBuilder.writeln(comment.rawComment);
      commentBuilder.writeln();
    }

    if (requestParameter != null) {
      commentBuilder.writeln('[${requestParameter.name.name}] - '
          '${requestParameter.comment.rawComment}\n');
    }

    commentBuilder.writeln('Request parameters:\n');

    for (var p in parameters) {
      commentBuilder.writeln('[${p.name}] - ${p.comment.rawComment}\n');
    }
    for (var p in namedParameters) {
      commentBuilder.writeln('[${p.name}] - ${p.comment.rawComment}\n');
    }

    if (mediaUpload) {
      commentBuilder.writeln('[uploadMedia] - The media to upload.\n');
    }
    if (mediaUploadResumable) {
      commentBuilder.writeln('[uploadOptions] - Options for the media upload. '
          'Streaming Media without the length being known '
          'ahead of time is only supported via resumable '
          'uploads.\n');
    }

    if (mediaDownload) {
      commentBuilder.writeln('[downloadOptions] - Options for downloading. '
          'A download can be either a Metadata (default) '
          'or Media download. Partial Media downloads '
          'are possible as well.\n');
    }

    if (returnType != null) {
      if (mediaDownload) {
        commentBuilder.writeln('Completes with a\n');
        commentBuilder.writeln('- [${returnType.declaration}] for Metadata '
            'downloads (see [downloadOptions]).\n');
        commentBuilder.writeln('- [${imports.commons}.Media] for Media '
            'downloads (see [downloadOptions]).\n');
      } else {
        commentBuilder
            .writeln('Completes with a [${returnType.declaration}].\n');
      }
    }
    commentBuilder.writeln('Completes with a '
        '[${imports.commons}.ApiRequestError] '
        'if the API endpoint returned an error.\n');
    commentBuilder.writeln('If the used [${imports.http}.Client] '
        'completes with an error when making a REST call, '
        'this method will complete with the same error.\n');

    final methodComment = Comment('$commentBuilder');

    final core = imports.core.ref();

    if (requestParameter != null) {
      final parameterEncode =
          requestParameter.type.jsonEncode('${requestParameter.name}');
      params.write(
        'final _body = ${requestParameter.name} == null ? '
        'null :${imports.convert.ref()}json.encode($parameterEncode);',
      );
    }

    final templateVars = <String, Identifier>{};

    void validatePathParam(MethodParameter param) {
      templateVars[param.jsonName] = param.name;

      if (param.required) {
        if (generateNullSafeCode) {
          // In null safe code these are required, no need to check for nulls.
          // Still check for empty arrays that should not be empty.
          if (param.type is UnnamedArrayType) {
            params.writeln('    if (${param.name}.isEmpty) {');
            params.writeln('      throw ${imports.core.ref()}ArgumentError'
                "('Parameter ${param.name} is required.');");
            params.writeln('    }');
          }
        } else {
          if (param.type is UnnamedArrayType) {
            params.writeln(
                '    if (${param.name} == null || ${param.name}.isEmpty) {');
          } else {
            params.writeln('    if (${param.name} == null) {');
          }
          params.writeln('      throw ${imports.core.ref()}ArgumentError'
              "('Parameter ${param.name} is required.');");
          params.writeln('    }');
        }
      } else {
        // Is this an error?
        throw ArgumentError('non-required path parameter');
      }
    }

    final queryParams = <String>[];
    void encodeQueryParam(MethodParameter param) {
      String propertyAssignment;
      // NOTE: We need to special case array values, since they get encoded
      // as repeated query parameters.
      if (param.type is UnnamedArrayType || param.type is NamedArrayType) {
        final innerType = (param.type as HasInnertype).innerType;
        String expr;
        if (innerType.needsPrimitiveEncoding) {
          expr = '${param.name}.map('
              '(item) => ${innerType.primitiveEncoding('item')}).toList()';
        } else {
          expr = param.name.name;
        }

        propertyAssignment = "'${escapeString(param.jsonName)}': $expr,";
      } else {
        final expr = param.type.primitiveEncoding(param.name.name);
        propertyAssignment = "'${escapeString(param.jsonName)}': [$expr],";
      }

      if (param.required) {
        if (param.type is UnnamedArrayType) {
          params.writeln(
              '    if (${param.name} == null || ${param.name}.isEmpty) {');
        } else {
          params.writeln('    if (${param.name} == null) {');
        }
        params.writeln('      throw ${imports.core.ref()}ArgumentError'
            "('Parameter ${param.name} is required.');");
        params.writeln('    }');

        queryParams.add(propertyAssignment);
      } else {
        queryParams.add('if (${param.name} != null) $propertyAssignment');
      }
    }

    for (var p in parameters) {
      if (p.encodedInPath) {
        validatePathParam(p);
      } else {
        encodeQueryParam(p);
      }
    }

    for (var p in namedParameters) {
      if (p.encodedInPath) {
        validatePathParam(p);
      } else {
        encodeQueryParam(p);
      }
    }

    if (queryParams.isNotEmpty) {
      params.writeln(
        '''
final _queryParams = <${core}String, ${core}List<${core}String>>{
  ${queryParams.join('\n')}
};''',
      );
    }

    final urlPatternCode = StringBuffer();
    if (!mediaUpload) {
      urlPatternCode.writeln(
        urlPattern.variableDeclaration('_url', templateVars),
      );
    } else {
      urlPatternCode.writeln('    ${core}String _url;');
      final patternExpr = urlPattern.stringExpression(templateVars);
      if (!mediaUploadResumable) {
        urlPatternCode.write('''
    if (uploadMedia == null) {
      _url = $patternExpr;
    } else {
      _url = ${mediaUploadPatterns['simple'].stringExpression(templateVars)};
    }
''');
      } else {
        urlPatternCode.write('''
    if (uploadMedia == null) {
      _url = $patternExpr;
    } else if (uploadOptions is ${imports.commons}.ResumableUploadOptions) {
      _url = ${mediaUploadPatterns['resumable'].stringExpression(templateVars)};
    } else {
      _url = ${mediaUploadPatterns['simple'].stringExpression(templateVars)};
    }
''');
      }
    }

    final responseVar =
        (returnType == null && !mediaDownload) ? '' : 'final _response = ';

    final downloadOptions = mediaDownload
        ? 'downloadOptions: downloadOptions,'
        : returnType == null
            ? 'downloadOptions: null,'
            : '';

    final bodyOption = requestParameter == null ? '' : 'body: _body,';
    final queryParamsArg =
        queryParams.isNotEmpty ? 'queryParams: _queryParams,' : '';
    final mediaUploadArg = mediaUpload ? 'uploadMedia: uploadMedia,' : '';
    final mediaResumableArg = mediaUploadResumable
        ? 'uploadOptions: uploadOptions,'
        : mediaUpload
            ? 'uploadOptions: ${imports.commons}.UploadOptions.Default,'
            : '';

    final requestCode = StringBuffer();

    requestCode.write('''

$urlPatternCode

    $responseVar await _requester.request(
      _url,
      '$httpMethod',
      $bodyOption
      $queryParamsArg
      $mediaUploadArg
      $mediaResumableArg
      $downloadOptions
    );
''');

    final data = enableDataWrapper ? "_response['data']" : '_response';
    final plainResponse =
        returnType != null ? returnType.jsonDecode(data) : 'null';
    if (mediaDownload) {
      requestCode.write('''
    if (downloadOptions == null ||
        downloadOptions == ${imports.commons}.DownloadOptions.Metadata) {
      return $plainResponse;
    } else {
      return _response;
    }
''');
    } else if (returnType != null) {
      requestCode.write('''
    return $plainResponse;
''');
    }

    final methodString = StringBuffer();
    methodString.write(methodComment.asDartDoc(2));
    methodString.writeln('  $signature async {');

    methodString.write(
      '''
$params$requestCode''',
    );

    methodString.writeln('  }');

    return '$methodString';
  }
}

/// Represents a resource of an Apiary API.
class DartResourceClass {
  final DartApiImports imports;
  final Identifier className;
  final Comment comment;
  final List<DartResourceMethod> methods;

  final List<Identifier> subResourceIdentifiers;
  final List<DartResourceClass> subResources;

  DartResourceClass(
    this.imports,
    this.className,
    this.comment,
    this.methods,
    this.subResourceIdentifiers,
    this.subResources,
  );

  String get preamble => '';

  String get fields {
    final str = StringBuffer();
    for (var i = 0; i < subResourceIdentifiers.length; i++) {
      final identifier = subResourceIdentifiers[i];
      final resource = subResources[i];
      str.writeln('  ${resource.className} get ${identifier.name} '
          '=> ${resource.className}(_requester);');
    }
    if (str.isNotEmpty) str.writeln();
    return '$str';
  }

  String get constructor {
    final str = StringBuffer();
    str.writeln('  $className(${imports.commons}.ApiRequester client) : ');
    str.writeln('      _requester = client;');
    return '$str';
  }

  String get functions {
    final str = StringBuffer();
    for (var m in methods) {
      str.writeln(m.definition);
    }
    return str.isNotEmpty ? '\n$str' : '';
  }

  String getClassDefinition() {
    final str = StringBuffer();
    str.write(comment.asDartDoc(0));
    str.writeln('class $className {');
    str.write(preamble);
    str.writeln('  final ${imports.commons}.ApiRequester _requester;');
    str.writeln();
    str.write('$fields$constructor$functions');
    str.writeln('}');
    return '$str';
  }
}

/// Represents the API resource of an Apiary API.
class DartApiClass extends DartResourceClass {
  final String rootUrl;
  final String servicePath;
  final List<OAuth2Scope> scopes;

  DartApiClass(
    DartApiImports imports,
    Identifier name,
    Comment comment,
    List<DartResourceMethod> methods,
    List<Identifier> subResourceIdentifiers,
    List<DartResourceClass> subResources,
    this.rootUrl,
    this.servicePath,
    this.scopes,
  ) : super(
          imports,
          name,
          comment,
          methods,
          subResourceIdentifiers,
          subResources,
        );

  @override
  String get preamble {
    final sb = StringBuffer();
    for (var scope in scopes) {
      final doc = scope.comment.asDartDoc(2);
      sb.writeln('$doc  static const ${scope.identifier} = '
          "'${escapeString(scope.url)}';");
      sb.writeln();
    }
    sb.writeln();
    return '$sb';
  }

  @override
  String get constructor {
    final str = StringBuffer();

    final parameters = [
      "${imports.core.ref()}String rootUrl = '${escapeString(rootUrl)}'",
      '${imports.core.ref()}String servicePath = '
          "'${escapeString(servicePath)}'",
    ].join(', ');

    str.writeln('  $className(${imports.http}.Client client, {$parameters}) :');
    str.write('      _requester = ${imports.commons}.ApiRequester'
        '(client, rootUrl, servicePath, userAgent)');
    str.writeln(';');
    return '$str';
  }
}

/// Check if any methods supports media upload or download.
/// Returns true if supported, false if not.
bool parseMediaUse(DartResourceClass resource) {
  assert(resource.methods != null);
  for (var method in resource.methods) {
    if (method.mediaDownload || method.mediaUpload) {
      return true;
    }
  }
  assert(resource.subResources != null);
  for (var subResource in resource.subResources) {
    if (parseMediaUse(subResource)) {
      return true;
    }
  }
  return false;
}

DartResourceMethod _parseMethod(
  DartApiImports imports,
  DartSchemaTypeDB db,
  RestDescription description,
  Scope classScope,
  String jsonName,
  RestMethod method, {
  bool enableDataWrapper,
}) {
  final methodName = classScope.newIdentifier(jsonName);
  final parameterScope = classScope.newChildScope();

  for (var reserved in reservedMethodParameterNames) {
    // We allocate all identifiers in [RESERVED_METHOD_PARAMETER_NAMES]
    // at the beginning of the parameter scope, so they'll get the correct
    // name.
    parameterScope.newIdentifier(reserved);
  }

  // This set will be reduced to all optional parameters.
  final pendingParameterNames = SplayTreeSet.of(
      method.parameters != null ? method.parameters.keys.toSet() : <String>{});

  final positionalParameters = <MethodParameter>[];
  void tryEnqueuePositionalParameter(
      String jsonName, Comment comment, JsonSchema schema) {
    if (!pendingParameterNames.contains(jsonName)) return;

    final parameter = method.parameters[jsonName];
    if (parameter.required == true) {
      final name = parameterScope.newIdentifier(jsonName);
      pendingParameterNames.remove(jsonName);
      final type = parseResolved(imports, db, parameter);
      comment = extendEnumComment(comment, type);
      comment = extendAnyTypeComment(comment, type);
      positionalParameters.add(MethodParameter(
          name, comment, true, type, jsonName, parameter.location != 'query'));
    }
  }

  final optionalParameters = <MethodParameter>[];
  void enqueueOptionalParameter(
    String jsonName,
    Comment comment,
    JsonSchema schema, {
    bool global = false,
  }) {
    final name = parameterScope.newIdentifier(jsonName, global: global);
    final type = parseResolved(imports, db, schema);
    comment = extendEnumComment(comment, type);
    comment = extendAnyTypeComment(comment, type);
    optionalParameters.add(MethodParameter(
      name,
      comment,
      false,
      type,
      jsonName,
      schema.location != 'query',
    ));
  }

  Comment parameterComment(JsonSchema parameter) {
    final sb = StringBuffer();
    sb.write(bracketClean(parameter.description));

    final min = parameter.minimum;
    final max = parameter.maximum;
    if (min != null && max != null) {
      sb.write('\nValue must be between "$min" and "$max".');
    }
    if (parameter.pattern != null) {
      sb.write(
        '\nValue must have pattern `${markdownEscape(parameter.pattern)}`.',
      );
    }
    return Comment(sb.toString());
  }

  DartSchemaType getValidReference(String ref) =>
      DartSchemaForwardRef(imports, ref).resolve(db);

  // Enqueue positional parameters with a given order first.
  if (method.parameterOrder != null) {
    for (var jsonName in method.parameterOrder) {
      if (method.parameters == null ||
          !method.parameters.keys.contains(jsonName)) {
        throw GeneratorError(description.name, description.version,
            'Parameters for method $jsonName does not have a type!');
      }
      final comment = parameterComment(method.parameters[jsonName]);

      tryEnqueuePositionalParameter(
          jsonName, comment, method.parameters[jsonName]);
    }
  }

  // If we have more required parameters than in `method.parameterOrder`
  // we append them at the end.
  if (method.parameters != null) {
    method.parameters.forEach((String jsonName, JsonSchema parameter) {
      final comment = parameterComment(parameter);
      tryEnqueuePositionalParameter(
          jsonName, comment, method.parameters[jsonName]);
    });
  }

  // The remaining parameters are optional.
  for (var jsonName in pendingParameterNames) {
    final comment = parameterComment(method.parameters[jsonName]);
    enqueueOptionalParameter(jsonName, comment, method.parameters[jsonName]);
  }

  // Global request parameters valid for all methods.
  if (description.parameters != null) {
    for (var jsonName in description.parameters.keys) {
      final jsonSchema = description.parameters[jsonName];
      assert(jsonSchema != null);
      final comment = parameterComment(jsonSchema);
      if (whitelistedGlobalParameterNames.contains(jsonName)) {
        enqueueOptionalParameter(jsonName, comment, jsonSchema, global: true);
      }
    }
  }

  // Check if we have a request object, if so parse it's type.
  MethodParameter dartRequestParameter;
  if (method.request != null) {
    final type = getValidReference(method.request.P_ref);
    final requestName = parameterScope.newIdentifier('request');
    final comment = Comment('The metadata request object.');
    dartRequestParameter =
        MethodParameter(requestName, comment, true, type, null, null);
  }

  DartSchemaType dartResponseType;
  if (method.response != null) {
    dartResponseType = getValidReference(method.response.P_ref);
  }

  final comment = Comment.header(method.description, true);

  bool makeBoolean(bool x) => x ?? false;

  Map<String, UriTemplate> mediaUploadPatterns;

  var mediaUploadResumable = false;
  if (method.supportsMediaUpload == true) {
    mediaUploadPatterns = <String, UriTemplate>{
      'simple':
          UriTemplate.parse(imports, method.mediaUpload.protocols.simple.path),
    };
    if (method.mediaUpload.protocols.simple.multipart != true) {
      throw ArgumentError('We always require simple upload '
          'protocol with multipart support.');
    }
    mediaUploadResumable = method?.mediaUpload?.protocols?.resumable != null;
    if (mediaUploadResumable) {
      mediaUploadPatterns['resumable'] = UriTemplate.parse(
        imports,
        method.mediaUpload.protocols.resumable.path,
      );
      if (method.mediaUpload.protocols.resumable.multipart != true) {
        throw ArgumentError('We always require resumable upload '
            'protocol with multipart support.');
      }
    }
  }

  final restPath = method.path;
  if (restPath == null) {
    throw StateError('Neither `Method.path` nor `Method.restPath` was given.');
  }

  return DartResourceMethod(
    imports,
    methodName,
    comment,
    dartRequestParameter,
    positionalParameters,
    optionalParameters,
    dartResponseType,
    jsonName,
    UriTemplate.parse(imports, restPath),
    method.httpMethod,
    makeBoolean(method.supportsMediaUpload),
    mediaUploadResumable,
    makeBoolean(method.supportsMediaDownload),
    mediaUploadPatterns,
    enableDataWrapper ?? false,
  );
}

DartResourceClass _parseResource(
  DartApiImports imports,
  DartSchemaTypeDB db,
  RestDescription description,
  String resourceName,
  String resourceDescription,
  Map<String, RestMethod> methods,
  Map<String, RestResource> subResources,
  String parentName,
) {
  final topLevel = parentName.isEmpty;

  final namer = imports.namer;
  Identifier className;
  if (topLevel) {
    className = namer.apiClass(resourceName);
  } else {
    className = namer.resourceClass(resourceName, parent: parentName);
  }

  final classScope = namer.newClassScope();

  final enableDataWrapper =
      description.features?.contains('dataWrapper') ?? false;
  final dartMethods = <DartResourceMethod>[];
  if (methods != null) {
    orderedForEach(methods, (String jsonName, RestMethod method) {
      final dartMethod = _parseMethod(
        imports,
        db,
        description,
        classScope,
        jsonName,
        method,
        enableDataWrapper: enableDataWrapper,
      );
      dartMethods.add(dartMethod);
    });
  }

  final dartSubResourceIdentifiers = <Identifier>[];
  final dartSubResource = <DartResourceClass>[];
  if (subResources != null) {
    orderedForEach(subResources, (String jsonName, RestResource resource) {
      final instanceName = classScope.newIdentifier(jsonName);
      final dartResource = _parseResource(
        imports,
        db,
        description,
        jsonName,
        '',
        resource.methods,
        resource.resources,
        className.preferredName,
      );
      dartSubResourceIdentifiers.add(instanceName);
      dartSubResource.add(dartResource);
    });
  }

  final comment = Comment.header(resourceDescription, false);
  if (topLevel) {
    final scopes = <OAuth2Scope>[];

    if (description.auth != null && description.auth.oauth2 != null) {
      orderedForEach(description.auth.oauth2.scopes,
          (String scope, RestDescriptionAuthOauth2ScopesValue description) {
        final scopeId = classScope.newIdentifier(Scope.toValidScopeName(scope));

        scopes
            .add(OAuth2Scope(scope, scopeId, Comment(description.description)));
      });
    }

    // The following fields can specify the URL base on which to make API
    // calls:
    //   - rootUrl                (ends with slash)
    //   - servicePath            (does not begin with slash)
    //   - basePath [deprecated] (ends with slash)
    //   - baseUrl [deprecated]   (ends with slash)
    //
    // Relationships:
    //   <rootUrl><servicePath> == <baseUrl>
    //   <rootUrl.path><servicePath> == <basePath>
    //
    // Examples:
    // a)
    //   rootUrl = https://www.googleapis.com/
    //   servicePath = storage/v1/
    //   basePath = /storage/v1/
    //   baseUrl = https://www.googleapis.com/storage/v1/
    //
    // b)
    //   rootUrl = https://www.googleapis.com/
    //   servicePath = sink/v1/
    //
    // c)
    //   rootUrl = https://www.googleapis.com/
    //   servicePath = ''
    //   basePath = /
    //   baseUrl = https://www.googleapis.com/

    // Validate our assumptions in checked mode:
    assert(description.rootUrl != null);
    assert(description.rootUrl.endsWith('/'));
    assert(description.servicePath != null);
    assert(description.servicePath == '' ||
        (!description.servicePath.startsWith('/') &&
            description.servicePath.endsWith('/')));
    if (description.baseUrl != null) {
      final expectedBaseUrl =
          '${description.rootUrl}${description.servicePath}';
      assert(expectedBaseUrl == description.baseUrl);
    }

    final rootUrl = description.rootUrl;
    final restPath = description.servicePath;
    return DartApiClass(
      imports,
      className,
      comment,
      dartMethods,
      dartSubResourceIdentifiers,
      dartSubResource,
      rootUrl,
      restPath,
      scopes,
    );
  } else {
    return DartResourceClass(
      imports,
      className,
      comment,
      dartMethods,
      dartSubResourceIdentifiers,
      dartSubResource,
    );
  }
}

/// Parses all resources in [description] and returns the root [DartApiClass].
DartApiClass parseResources(
  DartApiImports imports,
  DartSchemaTypeDB db,
  RestDescription description,
) {
  var resourceName =
      (description.canonicalName ?? description.name).replaceAllMapped(
    _spaceCapitalRegExp,
    (match) => match.group(1).toUpperCase(),
  );

  if (resourceName.toLowerCase().endsWith('api')) {
    resourceName = resourceName.substring(0, resourceName.length - 3);
  }

  return _parseResource(
    imports,
    db,
    description,
    resourceName,
    description.description,
    description.methods,
    description.resources,
    '',
  ) as DartApiClass;
}

final _spaceCapitalRegExp = RegExp(' ([a-zA-Z])');

/// Generates a string representation of all resource classes, beginning with
/// [apiClass].
String generateResources(DartApiClass apiClass) {
  final sb = StringBuffer();
  void writeResourceClass(DartResourceClass resource) {
    sb.writeln(resource.getClassDefinition());
    sb.writeln();
    resource.subResources.forEach(writeResourceClass);
  }

  writeResourceClass(apiClass);
  return '$sb';
}
