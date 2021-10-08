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

/// API Discovery Service - v1
///
/// Provides information about other Google APIs, such as what APIs are
/// available, the resource, and method details for each API.
///
/// For more information, see <https://developers.google.com/discovery/>
///
/// Create an instance of [DiscoveryApi] to access these resources:
///
/// - [ApisResource]
library discovery.v1;

import 'dart:async' as async;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// Provides information about other Google APIs, such as what APIs are
/// available, the resource, and method details for each API.
class DiscoveryApi {
  final commons.ApiRequester _requester;

  ApisResource get apis => ApisResource(_requester);

  DiscoveryApi(http.Client client,
      {core.String rootUrl = 'https://www.googleapis.com/',
      core.String servicePath = 'discovery/v1/'})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class ApisResource {
  final commons.ApiRequester _requester;

  ApisResource(commons.ApiRequester client) : _requester = client;

  /// Retrieve the description of a particular version of an api.
  ///
  /// Request parameters:
  ///
  /// [api] - The name of the API.
  ///
  /// [version] - The version of the API.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RestDescription].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RestDescription> getRest(
    core.String api,
    core.String version, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'apis/' +
        commons.escapeVariable('$api') +
        '/' +
        commons.escapeVariable('$version') +
        '/rest';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return RestDescription.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Retrieve the list of APIs supported at this endpoint.
  ///
  /// Request parameters:
  ///
  /// [name] - Only include APIs with the given name.
  ///
  /// [preferred] - Return only the preferred version of an API.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DirectoryList].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DirectoryList> list({
    core.String? name,
    core.bool? preferred,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (name != null) 'name': [name],
      if (preferred != null) 'preferred': ['${preferred}'],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'apis';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return DirectoryList.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

/// Links to 16x16 and 32x32 icons representing the API.
class DirectoryListItemsIcons {
  /// The URL of the 16x16 icon.
  core.String? x16;

  /// The URL of the 32x32 icon.
  core.String? x32;

  DirectoryListItemsIcons({
    this.x16,
    this.x32,
  });

  DirectoryListItemsIcons.fromJson(core.Map _json)
      : this(
          x16: _json.containsKey('x16') ? _json['x16'] as core.String : null,
          x32: _json.containsKey('x32') ? _json['x32'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (x16 != null) 'x16': x16!,
        if (x32 != null) 'x32': x32!,
      };
}

class DirectoryListItems {
  /// The description of this API.
  core.String? description;

  /// A link to the discovery document.
  core.String? discoveryLink;

  /// The URL for the discovery REST document.
  core.String? discoveryRestUrl;

  /// A link to human readable documentation for the API.
  core.String? documentationLink;

  /// Links to 16x16 and 32x32 icons representing the API.
  DirectoryListItemsIcons? icons;

  /// The id of this API.
  core.String? id;

  /// The kind for this response.
  core.String? kind;

  /// Labels for the status of this API, such as labs or deprecated.
  core.List<core.String>? labels;

  /// The name of the API.
  core.String? name;

  /// True if this version is the preferred version to use.
  core.bool? preferred;

  /// The title of this API.
  core.String? title;

  /// The version of the API.
  core.String? version;

  DirectoryListItems({
    this.description,
    this.discoveryLink,
    this.discoveryRestUrl,
    this.documentationLink,
    this.icons,
    this.id,
    this.kind,
    this.labels,
    this.name,
    this.preferred,
    this.title,
    this.version,
  });

  DirectoryListItems.fromJson(core.Map _json)
      : this(
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          discoveryLink: _json.containsKey('discoveryLink')
              ? _json['discoveryLink'] as core.String
              : null,
          discoveryRestUrl: _json.containsKey('discoveryRestUrl')
              ? _json['discoveryRestUrl'] as core.String
              : null,
          documentationLink: _json.containsKey('documentationLink')
              ? _json['documentationLink'] as core.String
              : null,
          icons: _json.containsKey('icons')
              ? DirectoryListItemsIcons.fromJson(
                  _json['icons'] as core.Map<core.String, core.dynamic>)
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          labels: _json.containsKey('labels')
              ? (_json['labels'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          preferred: _json.containsKey('preferred')
              ? _json['preferred'] as core.bool
              : null,
          title:
              _json.containsKey('title') ? _json['title'] as core.String : null,
          version: _json.containsKey('version')
              ? _json['version'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (discoveryLink != null) 'discoveryLink': discoveryLink!,
        if (discoveryRestUrl != null) 'discoveryRestUrl': discoveryRestUrl!,
        if (documentationLink != null) 'documentationLink': documentationLink!,
        if (icons != null) 'icons': icons!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (preferred != null) 'preferred': preferred!,
        if (title != null) 'title': title!,
        if (version != null) 'version': version!,
      };
}

class DirectoryList {
  /// Indicate the version of the Discovery API used to generate this doc.
  core.String? discoveryVersion;

  /// The individual directory entries.
  ///
  /// One entry per api/version pair.
  core.List<DirectoryListItems>? items;

  /// The kind for this response.
  core.String? kind;

  DirectoryList({
    this.discoveryVersion,
    this.items,
    this.kind,
  });

  DirectoryList.fromJson(core.Map _json)
      : this(
          discoveryVersion: _json.containsKey('discoveryVersion')
              ? _json['discoveryVersion'] as core.String
              : null,
          items: _json.containsKey('items')
              ? (_json['items'] as core.List)
                  .map((value) => DirectoryListItems.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (discoveryVersion != null) 'discoveryVersion': discoveryVersion!,
        if (items != null) 'items': items!,
        if (kind != null) 'kind': kind!,
      };
}

/// Additional information about this property.
class JsonSchemaAnnotations {
  /// A list of methods for which this property is required on requests.
  core.List<core.String>? required;

  JsonSchemaAnnotations({
    this.required,
  });

  JsonSchemaAnnotations.fromJson(core.Map _json)
      : this(
          required: _json.containsKey('required')
              ? (_json['required'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (required != null) 'required': required!,
      };
}

class JsonSchemaVariantMap {
  core.String? P_ref;
  core.String? typeValue;

  JsonSchemaVariantMap({
    this.P_ref,
    this.typeValue,
  });

  JsonSchemaVariantMap.fromJson(core.Map _json)
      : this(
          P_ref:
              _json.containsKey('\$ref') ? _json['\$ref'] as core.String : null,
          typeValue: _json.containsKey('type_value')
              ? _json['type_value'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (P_ref != null) '\$ref': P_ref!,
        if (typeValue != null) 'type_value': typeValue!,
      };
}

/// In a variant data type, the value of one property is used to determine how
/// to interpret the entire entity.
///
/// Its value must exist in a map of descriminant values to schema names.
class JsonSchemaVariant {
  /// The name of the type discriminant property.
  core.String? discriminant;

  /// The map of discriminant value to schema to use for parsing..
  core.List<JsonSchemaVariantMap>? map;

  JsonSchemaVariant({
    this.discriminant,
    this.map,
  });

  JsonSchemaVariant.fromJson(core.Map _json)
      : this(
          discriminant: _json.containsKey('discriminant')
              ? _json['discriminant'] as core.String
              : null,
          map: _json.containsKey('map')
              ? (_json['map'] as core.List)
                  .map((value) => JsonSchemaVariantMap.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (discriminant != null) 'discriminant': discriminant!,
        if (map != null) 'map': map!,
      };
}

class JsonSchema {
  /// A reference to another schema.
  ///
  /// The value of this property is the "id" of another schema.
  core.String? P_ref;

  /// If this is a schema for an object, this property is the schema for any
  /// additional properties with dynamic keys on this object.
  JsonSchema? additionalProperties;

  /// Additional information about this property.
  JsonSchemaAnnotations? annotations;

  /// The default value of this property (if one exists).
  core.String? default_;

  /// A description of this object.
  core.String? description;

  /// Values this parameter may take (if it is an enum).
  core.List<core.String>? enum_;

  /// The descriptions for the enums.
  ///
  /// Each position maps to the corresponding value in the "enum" array.
  core.List<core.String>? enumDescriptions;

  /// An additional regular expression or key that helps constrain the value.
  ///
  /// For more details see:
  /// http://tools.ietf.org/html/draft-zyp-json-schema-03#section-5.23
  core.String? format;

  /// Unique identifier for this schema.
  core.String? id;

  /// If this is a schema for an array, this property is the schema for each
  /// element in the array.
  JsonSchema? items;

  /// Whether this parameter goes in the query or the path for REST requests.
  core.String? location;

  /// The maximum value of this parameter.
  core.String? maximum;

  /// The minimum value of this parameter.
  core.String? minimum;

  /// The regular expression this parameter must conform to.
  ///
  /// Uses Java 6 regex format:
  /// http://docs.oracle.com/javase/6/docs/api/java/util/regex/Pattern.html
  core.String? pattern;

  /// If this is a schema for an object, list the schema for each property of
  /// this object.
  core.Map<core.String, JsonSchema>? properties;

  /// The value is read-only, generated by the service.
  ///
  /// The value cannot be modified by the client. If the value is included in a
  /// POST, PUT, or PATCH request, it is ignored by the service.
  core.bool? readOnly;

  /// Whether this parameter may appear multiple times.
  core.bool? repeated;

  /// Whether the parameter is required.
  core.bool? required;

  /// The value type for this schema.
  ///
  /// A list of values can be found here:
  /// http://tools.ietf.org/html/draft-zyp-json-schema-03#section-5.1
  core.String? type;

  /// In a variant data type, the value of one property is used to determine how
  /// to interpret the entire entity.
  ///
  /// Its value must exist in a map of descriminant values to schema names.
  JsonSchemaVariant? variant;

  JsonSchema({
    this.P_ref,
    this.additionalProperties,
    this.annotations,
    this.default_,
    this.description,
    this.enum_,
    this.enumDescriptions,
    this.format,
    this.id,
    this.items,
    this.location,
    this.maximum,
    this.minimum,
    this.pattern,
    this.properties,
    this.readOnly,
    this.repeated,
    this.required,
    this.type,
    this.variant,
  });

  JsonSchema.fromJson(core.Map _json)
      : this(
          P_ref:
              _json.containsKey('\$ref') ? _json['\$ref'] as core.String : null,
          additionalProperties: _json.containsKey('additionalProperties')
              ? JsonSchema.fromJson(_json['additionalProperties']
                  as core.Map<core.String, core.dynamic>)
              : null,
          annotations: _json.containsKey('annotations')
              ? JsonSchemaAnnotations.fromJson(
                  _json['annotations'] as core.Map<core.String, core.dynamic>)
              : null,
          default_: _json.containsKey('default')
              ? _json['default'] as core.String
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          enum_: _json.containsKey('enum')
              ? (_json['enum'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          enumDescriptions: _json.containsKey('enumDescriptions')
              ? (_json['enumDescriptions'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          format: _json.containsKey('format')
              ? _json['format'] as core.String
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          items: _json.containsKey('items')
              ? JsonSchema.fromJson(
                  _json['items'] as core.Map<core.String, core.dynamic>)
              : null,
          location: _json.containsKey('location')
              ? _json['location'] as core.String
              : null,
          maximum: _json.containsKey('maximum')
              ? _json['maximum'] as core.String
              : null,
          minimum: _json.containsKey('minimum')
              ? _json['minimum'] as core.String
              : null,
          pattern: _json.containsKey('pattern')
              ? _json['pattern'] as core.String
              : null,
          properties: _json.containsKey('properties')
              ? (_json['properties'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    JsonSchema.fromJson(
                        item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          readOnly: _json.containsKey('readOnly')
              ? _json['readOnly'] as core.bool
              : null,
          repeated: _json.containsKey('repeated')
              ? _json['repeated'] as core.bool
              : null,
          required: _json.containsKey('required')
              ? _json['required'] as core.bool
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
          variant: _json.containsKey('variant')
              ? JsonSchemaVariant.fromJson(
                  _json['variant'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (P_ref != null) '\$ref': P_ref!,
        if (additionalProperties != null)
          'additionalProperties': additionalProperties!,
        if (annotations != null) 'annotations': annotations!,
        if (default_ != null) 'default': default_!,
        if (description != null) 'description': description!,
        if (enum_ != null) 'enum': enum_!,
        if (enumDescriptions != null) 'enumDescriptions': enumDescriptions!,
        if (format != null) 'format': format!,
        if (id != null) 'id': id!,
        if (items != null) 'items': items!,
        if (location != null) 'location': location!,
        if (maximum != null) 'maximum': maximum!,
        if (minimum != null) 'minimum': minimum!,
        if (pattern != null) 'pattern': pattern!,
        if (properties != null) 'properties': properties!,
        if (readOnly != null) 'readOnly': readOnly!,
        if (repeated != null) 'repeated': repeated!,
        if (required != null) 'required': required!,
        if (type != null) 'type': type!,
        if (variant != null) 'variant': variant!,
      };
}

/// The scope value.
class RestDescriptionAuthOauth2ScopesValue {
  /// Description of scope.
  core.String? description;

  RestDescriptionAuthOauth2ScopesValue({
    this.description,
  });

  RestDescriptionAuthOauth2ScopesValue.fromJson(core.Map _json)
      : this(
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
      };
}

/// OAuth 2.0 authentication information.
class RestDescriptionAuthOauth2 {
  /// Available OAuth 2.0 scopes.
  core.Map<core.String, RestDescriptionAuthOauth2ScopesValue>? scopes;

  RestDescriptionAuthOauth2({
    this.scopes,
  });

  RestDescriptionAuthOauth2.fromJson(core.Map _json)
      : this(
          scopes: _json.containsKey('scopes')
              ? (_json['scopes'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    RestDescriptionAuthOauth2ScopesValue.fromJson(
                        item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (scopes != null) 'scopes': scopes!,
      };
}

/// Authentication information.
class RestDescriptionAuth {
  /// OAuth 2.0 authentication information.
  RestDescriptionAuthOauth2? oauth2;

  RestDescriptionAuth({
    this.oauth2,
  });

  RestDescriptionAuth.fromJson(core.Map _json)
      : this(
          oauth2: _json.containsKey('oauth2')
              ? RestDescriptionAuthOauth2.fromJson(
                  _json['oauth2'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (oauth2 != null) 'oauth2': oauth2!,
      };
}

/// Links to 16x16 and 32x32 icons representing the API.
class RestDescriptionIcons {
  /// The URL of the 16x16 icon.
  core.String? x16;

  /// The URL of the 32x32 icon.
  core.String? x32;

  RestDescriptionIcons({
    this.x16,
    this.x32,
  });

  RestDescriptionIcons.fromJson(core.Map _json)
      : this(
          x16: _json.containsKey('x16') ? _json['x16'] as core.String : null,
          x32: _json.containsKey('x32') ? _json['x32'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (x16 != null) 'x16': x16!,
        if (x32 != null) 'x32': x32!,
      };
}

class RestDescription {
  /// Authentication information.
  RestDescriptionAuth? auth;

  /// The base path for REST requests.
  ///
  /// Deprecated.
  core.String? basePath;

  /// The base URL for REST requests.
  ///
  /// Deprecated.
  core.String? baseUrl;

  /// The path for REST batch requests.
  core.String? batchPath;

  /// Indicates how the API name should be capitalized and split into various
  /// parts.
  ///
  /// Useful for generating pretty class names.
  core.String? canonicalName;

  /// The description of this API.
  core.String? description;

  /// Indicate the version of the Discovery API used to generate this doc.
  core.String? discoveryVersion;

  /// A link to human readable documentation for the API.
  core.String? documentationLink;

  /// The ETag for this response.
  core.String? etag;

  /// Enable exponential backoff for suitable methods in the generated clients.
  core.bool? exponentialBackoffDefault;

  /// A list of supported features for this API.
  core.List<core.String>? features;

  /// Links to 16x16 and 32x32 icons representing the API.
  RestDescriptionIcons? icons;

  /// The ID of this API.
  core.String? id;

  /// The kind for this response.
  core.String? kind;

  /// Labels for the status of this API, such as labs or deprecated.
  core.List<core.String>? labels;

  /// API-level methods for this API.
  core.Map<core.String, RestMethod>? methods;

  /// The name of this API.
  core.String? name;

  /// The domain of the owner of this API.
  ///
  /// Together with the ownerName and a packagePath values, this can be used to
  /// generate a library for this API which would have a unique fully qualified
  /// name.
  core.String? ownerDomain;

  /// The name of the owner of this API.
  ///
  /// See ownerDomain.
  core.String? ownerName;

  /// The package of the owner of this API.
  ///
  /// See ownerDomain.
  core.String? packagePath;

  /// Common parameters that apply across all apis.
  core.Map<core.String, JsonSchema>? parameters;

  /// The protocol described by this document.
  core.String? protocol;

  /// The resources in this API.
  core.Map<core.String, RestResource>? resources;

  /// The version of this API.
  core.String? revision;

  /// The root URL under which all API services live.
  core.String? rootUrl;

  /// The schemas for this API.
  core.Map<core.String, JsonSchema>? schemas;

  /// The base path for all REST requests.
  core.String? servicePath;

  /// The title of this API.
  core.String? title;

  /// The version of this API.
  core.String? version;
  core.bool? versionModule;

  RestDescription({
    this.auth,
    this.basePath,
    this.baseUrl,
    this.batchPath,
    this.canonicalName,
    this.description,
    this.discoveryVersion,
    this.documentationLink,
    this.etag,
    this.exponentialBackoffDefault,
    this.features,
    this.icons,
    this.id,
    this.kind,
    this.labels,
    this.methods,
    this.name,
    this.ownerDomain,
    this.ownerName,
    this.packagePath,
    this.parameters,
    this.protocol,
    this.resources,
    this.revision,
    this.rootUrl,
    this.schemas,
    this.servicePath,
    this.title,
    this.version,
    this.versionModule,
  });

  RestDescription.fromJson(core.Map _json)
      : this(
          auth: _json.containsKey('auth')
              ? RestDescriptionAuth.fromJson(
                  _json['auth'] as core.Map<core.String, core.dynamic>)
              : null,
          basePath: _json.containsKey('basePath')
              ? _json['basePath'] as core.String
              : null,
          baseUrl: _json.containsKey('baseUrl')
              ? _json['baseUrl'] as core.String
              : null,
          batchPath: _json.containsKey('batchPath')
              ? _json['batchPath'] as core.String
              : null,
          canonicalName: _json.containsKey('canonicalName')
              ? _json['canonicalName'] as core.String
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          discoveryVersion: _json.containsKey('discoveryVersion')
              ? _json['discoveryVersion'] as core.String
              : null,
          documentationLink: _json.containsKey('documentationLink')
              ? _json['documentationLink'] as core.String
              : null,
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
          exponentialBackoffDefault:
              _json.containsKey('exponentialBackoffDefault')
                  ? _json['exponentialBackoffDefault'] as core.bool
                  : null,
          features: _json.containsKey('features')
              ? (_json['features'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          icons: _json.containsKey('icons')
              ? RestDescriptionIcons.fromJson(
                  _json['icons'] as core.Map<core.String, core.dynamic>)
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          labels: _json.containsKey('labels')
              ? (_json['labels'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          methods: _json.containsKey('methods')
              ? (_json['methods'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    RestMethod.fromJson(
                        item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          ownerDomain: _json.containsKey('ownerDomain')
              ? _json['ownerDomain'] as core.String
              : null,
          ownerName: _json.containsKey('ownerName')
              ? _json['ownerName'] as core.String
              : null,
          packagePath: _json.containsKey('packagePath')
              ? _json['packagePath'] as core.String
              : null,
          parameters: _json.containsKey('parameters')
              ? (_json['parameters'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    JsonSchema.fromJson(
                        item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          protocol: _json.containsKey('protocol')
              ? _json['protocol'] as core.String
              : null,
          resources: _json.containsKey('resources')
              ? (_json['resources'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    RestResource.fromJson(
                        item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          revision: _json.containsKey('revision')
              ? _json['revision'] as core.String
              : null,
          rootUrl: _json.containsKey('rootUrl')
              ? _json['rootUrl'] as core.String
              : null,
          schemas: _json.containsKey('schemas')
              ? (_json['schemas'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    JsonSchema.fromJson(
                        item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          servicePath: _json.containsKey('servicePath')
              ? _json['servicePath'] as core.String
              : null,
          title:
              _json.containsKey('title') ? _json['title'] as core.String : null,
          version: _json.containsKey('version')
              ? _json['version'] as core.String
              : null,
          versionModule: _json.containsKey('version_module')
              ? _json['version_module'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (auth != null) 'auth': auth!,
        if (basePath != null) 'basePath': basePath!,
        if (baseUrl != null) 'baseUrl': baseUrl!,
        if (batchPath != null) 'batchPath': batchPath!,
        if (canonicalName != null) 'canonicalName': canonicalName!,
        if (description != null) 'description': description!,
        if (discoveryVersion != null) 'discoveryVersion': discoveryVersion!,
        if (documentationLink != null) 'documentationLink': documentationLink!,
        if (etag != null) 'etag': etag!,
        if (exponentialBackoffDefault != null)
          'exponentialBackoffDefault': exponentialBackoffDefault!,
        if (features != null) 'features': features!,
        if (icons != null) 'icons': icons!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (labels != null) 'labels': labels!,
        if (methods != null) 'methods': methods!,
        if (name != null) 'name': name!,
        if (ownerDomain != null) 'ownerDomain': ownerDomain!,
        if (ownerName != null) 'ownerName': ownerName!,
        if (packagePath != null) 'packagePath': packagePath!,
        if (parameters != null) 'parameters': parameters!,
        if (protocol != null) 'protocol': protocol!,
        if (resources != null) 'resources': resources!,
        if (revision != null) 'revision': revision!,
        if (rootUrl != null) 'rootUrl': rootUrl!,
        if (schemas != null) 'schemas': schemas!,
        if (servicePath != null) 'servicePath': servicePath!,
        if (title != null) 'title': title!,
        if (version != null) 'version': version!,
        if (versionModule != null) 'version_module': versionModule!,
      };
}

/// Supports the Resumable Media Upload protocol.
class RestMethodMediaUploadProtocolsResumable {
  /// True if this endpoint supports uploading multipart media.
  core.bool? multipart;

  /// The URI path to be used for upload.
  ///
  /// Should be used in conjunction with the basePath property at the api-level.
  core.String? path;

  RestMethodMediaUploadProtocolsResumable({
    this.multipart,
    this.path,
  });

  RestMethodMediaUploadProtocolsResumable.fromJson(core.Map _json)
      : this(
          multipart: _json.containsKey('multipart')
              ? _json['multipart'] as core.bool
              : null,
          path: _json.containsKey('path') ? _json['path'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (multipart != null) 'multipart': multipart!,
        if (path != null) 'path': path!,
      };
}

/// Supports uploading as a single HTTP request.
class RestMethodMediaUploadProtocolsSimple {
  /// True if this endpoint supports upload multipart media.
  core.bool? multipart;

  /// The URI path to be used for upload.
  ///
  /// Should be used in conjunction with the basePath property at the api-level.
  core.String? path;

  RestMethodMediaUploadProtocolsSimple({
    this.multipart,
    this.path,
  });

  RestMethodMediaUploadProtocolsSimple.fromJson(core.Map _json)
      : this(
          multipart: _json.containsKey('multipart')
              ? _json['multipart'] as core.bool
              : null,
          path: _json.containsKey('path') ? _json['path'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (multipart != null) 'multipart': multipart!,
        if (path != null) 'path': path!,
      };
}

/// Supported upload protocols.
class RestMethodMediaUploadProtocols {
  /// Supports the Resumable Media Upload protocol.
  RestMethodMediaUploadProtocolsResumable? resumable;

  /// Supports uploading as a single HTTP request.
  RestMethodMediaUploadProtocolsSimple? simple;

  RestMethodMediaUploadProtocols({
    this.resumable,
    this.simple,
  });

  RestMethodMediaUploadProtocols.fromJson(core.Map _json)
      : this(
          resumable: _json.containsKey('resumable')
              ? RestMethodMediaUploadProtocolsResumable.fromJson(
                  _json['resumable'] as core.Map<core.String, core.dynamic>)
              : null,
          simple: _json.containsKey('simple')
              ? RestMethodMediaUploadProtocolsSimple.fromJson(
                  _json['simple'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (resumable != null) 'resumable': resumable!,
        if (simple != null) 'simple': simple!,
      };
}

/// Media upload parameters.
class RestMethodMediaUpload {
  /// MIME Media Ranges for acceptable media uploads to this method.
  core.List<core.String>? accept;

  /// Maximum size of a media upload, such as "1MB", "2GB" or "3TB".
  core.String? maxSize;

  /// Supported upload protocols.
  RestMethodMediaUploadProtocols? protocols;

  RestMethodMediaUpload({
    this.accept,
    this.maxSize,
    this.protocols,
  });

  RestMethodMediaUpload.fromJson(core.Map _json)
      : this(
          accept: _json.containsKey('accept')
              ? (_json['accept'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          maxSize: _json.containsKey('maxSize')
              ? _json['maxSize'] as core.String
              : null,
          protocols: _json.containsKey('protocols')
              ? RestMethodMediaUploadProtocols.fromJson(
                  _json['protocols'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accept != null) 'accept': accept!,
        if (maxSize != null) 'maxSize': maxSize!,
        if (protocols != null) 'protocols': protocols!,
      };
}

/// The schema for the request.
class RestMethodRequest {
  /// Schema ID for the request schema.
  core.String? P_ref;

  /// parameter name.
  core.String? parameterName;

  RestMethodRequest({
    this.P_ref,
    this.parameterName,
  });

  RestMethodRequest.fromJson(core.Map _json)
      : this(
          P_ref:
              _json.containsKey('\$ref') ? _json['\$ref'] as core.String : null,
          parameterName: _json.containsKey('parameterName')
              ? _json['parameterName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (P_ref != null) '\$ref': P_ref!,
        if (parameterName != null) 'parameterName': parameterName!,
      };
}

/// The schema for the response.
class RestMethodResponse {
  /// Schema ID for the response schema.
  core.String? P_ref;

  RestMethodResponse({
    this.P_ref,
  });

  RestMethodResponse.fromJson(core.Map _json)
      : this(
          P_ref:
              _json.containsKey('\$ref') ? _json['\$ref'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (P_ref != null) '\$ref': P_ref!,
      };
}

class RestMethod {
  /// Description of this method.
  core.String? description;

  /// Whether this method requires an ETag to be specified.
  ///
  /// The ETag is sent as an HTTP If-Match or If-None-Match header.
  core.bool? etagRequired;

  /// The URI path of this REST method in (RFC 6570) format without level 2
  /// features ({+var}).
  ///
  /// Supplementary to the path property.
  core.String? flatPath;

  /// HTTP method used by this method.
  core.String? httpMethod;

  /// A unique ID for this method.
  ///
  /// This property can be used to match methods between different versions of
  /// Discovery.
  core.String? id;

  /// Media upload parameters.
  RestMethodMediaUpload? mediaUpload;

  /// Ordered list of required parameters, serves as a hint to clients on how to
  /// structure their method signatures.
  ///
  /// The array is ordered such that the "most-significant" parameter appears
  /// first.
  core.List<core.String>? parameterOrder;

  /// Details for all parameters in this method.
  core.Map<core.String, JsonSchema>? parameters;

  /// The URI path of this REST method.
  ///
  /// Should be used in conjunction with the basePath property at the api-level.
  core.String? path;

  /// The schema for the request.
  RestMethodRequest? request;

  /// The schema for the response.
  RestMethodResponse? response;

  /// OAuth 2.0 scopes applicable to this method.
  core.List<core.String>? scopes;

  /// Whether this method supports media downloads.
  core.bool? supportsMediaDownload;

  /// Whether this method supports media uploads.
  core.bool? supportsMediaUpload;

  /// Whether this method supports subscriptions.
  core.bool? supportsSubscription;

  /// Indicates that downloads from this method should use the download service
  /// URL (i.e. "/download").
  ///
  /// Only applies if the method supports media download.
  core.bool? useMediaDownloadService;

  RestMethod({
    this.description,
    this.etagRequired,
    this.flatPath,
    this.httpMethod,
    this.id,
    this.mediaUpload,
    this.parameterOrder,
    this.parameters,
    this.path,
    this.request,
    this.response,
    this.scopes,
    this.supportsMediaDownload,
    this.supportsMediaUpload,
    this.supportsSubscription,
    this.useMediaDownloadService,
  });

  RestMethod.fromJson(core.Map _json)
      : this(
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          etagRequired: _json.containsKey('etagRequired')
              ? _json['etagRequired'] as core.bool
              : null,
          flatPath: _json.containsKey('flatPath')
              ? _json['flatPath'] as core.String
              : null,
          httpMethod: _json.containsKey('httpMethod')
              ? _json['httpMethod'] as core.String
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          mediaUpload: _json.containsKey('mediaUpload')
              ? RestMethodMediaUpload.fromJson(
                  _json['mediaUpload'] as core.Map<core.String, core.dynamic>)
              : null,
          parameterOrder: _json.containsKey('parameterOrder')
              ? (_json['parameterOrder'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          parameters: _json.containsKey('parameters')
              ? (_json['parameters'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    JsonSchema.fromJson(
                        item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          path: _json.containsKey('path') ? _json['path'] as core.String : null,
          request: _json.containsKey('request')
              ? RestMethodRequest.fromJson(
                  _json['request'] as core.Map<core.String, core.dynamic>)
              : null,
          response: _json.containsKey('response')
              ? RestMethodResponse.fromJson(
                  _json['response'] as core.Map<core.String, core.dynamic>)
              : null,
          scopes: _json.containsKey('scopes')
              ? (_json['scopes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          supportsMediaDownload: _json.containsKey('supportsMediaDownload')
              ? _json['supportsMediaDownload'] as core.bool
              : null,
          supportsMediaUpload: _json.containsKey('supportsMediaUpload')
              ? _json['supportsMediaUpload'] as core.bool
              : null,
          supportsSubscription: _json.containsKey('supportsSubscription')
              ? _json['supportsSubscription'] as core.bool
              : null,
          useMediaDownloadService: _json.containsKey('useMediaDownloadService')
              ? _json['useMediaDownloadService'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (etagRequired != null) 'etagRequired': etagRequired!,
        if (flatPath != null) 'flatPath': flatPath!,
        if (httpMethod != null) 'httpMethod': httpMethod!,
        if (id != null) 'id': id!,
        if (mediaUpload != null) 'mediaUpload': mediaUpload!,
        if (parameterOrder != null) 'parameterOrder': parameterOrder!,
        if (parameters != null) 'parameters': parameters!,
        if (path != null) 'path': path!,
        if (request != null) 'request': request!,
        if (response != null) 'response': response!,
        if (scopes != null) 'scopes': scopes!,
        if (supportsMediaDownload != null)
          'supportsMediaDownload': supportsMediaDownload!,
        if (supportsMediaUpload != null)
          'supportsMediaUpload': supportsMediaUpload!,
        if (supportsSubscription != null)
          'supportsSubscription': supportsSubscription!,
        if (useMediaDownloadService != null)
          'useMediaDownloadService': useMediaDownloadService!,
      };
}

class RestResource {
  /// Methods on this resource.
  core.Map<core.String, RestMethod>? methods;

  /// Sub-resources on this resource.
  core.Map<core.String, RestResource>? resources;

  RestResource({
    this.methods,
    this.resources,
  });

  RestResource.fromJson(core.Map _json)
      : this(
          methods: _json.containsKey('methods')
              ? (_json['methods'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    RestMethod.fromJson(
                        item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          resources: _json.containsKey('resources')
              ? (_json['resources'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    RestResource.fromJson(
                        item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (methods != null) 'methods': methods!,
        if (resources != null) 'resources': resources!,
      };
}
