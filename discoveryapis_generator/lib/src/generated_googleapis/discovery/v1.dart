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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'apis/' +
        commons.escapeVariable('$api') +
        '/' +
        commons.escapeVariable('$version') +
        '/rest';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return RestDescription.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (name != null) 'name': [name],
      if (preferred != null) 'preferred': ['${preferred}'],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'apis';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return DirectoryList.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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

  DirectoryListItemsIcons.fromJson(core.Map json_)
      : this(
          x16: json_.containsKey('x16') ? json_['x16'] as core.String : null,
          x32: json_.containsKey('x32') ? json_['x32'] as core.String : null,
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

  DirectoryListItems.fromJson(core.Map json_)
      : this(
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          discoveryLink: json_.containsKey('discoveryLink')
              ? json_['discoveryLink'] as core.String
              : null,
          discoveryRestUrl: json_.containsKey('discoveryRestUrl')
              ? json_['discoveryRestUrl'] as core.String
              : null,
          documentationLink: json_.containsKey('documentationLink')
              ? json_['documentationLink'] as core.String
              : null,
          icons: json_.containsKey('icons')
              ? DirectoryListItemsIcons.fromJson(
                  json_['icons'] as core.Map<core.String, core.dynamic>)
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          preferred: json_.containsKey('preferred')
              ? json_['preferred'] as core.bool
              : null,
          title:
              json_.containsKey('title') ? json_['title'] as core.String : null,
          version: json_.containsKey('version')
              ? json_['version'] as core.String
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

  DirectoryList.fromJson(core.Map json_)
      : this(
          discoveryVersion: json_.containsKey('discoveryVersion')
              ? json_['discoveryVersion'] as core.String
              : null,
          items: json_.containsKey('items')
              ? (json_['items'] as core.List)
                  .map((value) => DirectoryListItems.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
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

  JsonSchemaAnnotations.fromJson(core.Map json_)
      : this(
          required: json_.containsKey('required')
              ? (json_['required'] as core.List)
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

  JsonSchemaVariantMap.fromJson(core.Map json_)
      : this(
          P_ref:
              json_.containsKey('\$ref') ? json_['\$ref'] as core.String : null,
          typeValue: json_.containsKey('type_value')
              ? json_['type_value'] as core.String
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

  JsonSchemaVariant.fromJson(core.Map json_)
      : this(
          discriminant: json_.containsKey('discriminant')
              ? json_['discriminant'] as core.String
              : null,
          map: json_.containsKey('map')
              ? (json_['map'] as core.List)
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

  JsonSchema.fromJson(core.Map json_)
      : this(
          P_ref:
              json_.containsKey('\$ref') ? json_['\$ref'] as core.String : null,
          additionalProperties: json_.containsKey('additionalProperties')
              ? JsonSchema.fromJson(json_['additionalProperties']
                  as core.Map<core.String, core.dynamic>)
              : null,
          annotations: json_.containsKey('annotations')
              ? JsonSchemaAnnotations.fromJson(
                  json_['annotations'] as core.Map<core.String, core.dynamic>)
              : null,
          default_: json_.containsKey('default')
              ? json_['default'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          enum_: json_.containsKey('enum')
              ? (json_['enum'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          enumDescriptions: json_.containsKey('enumDescriptions')
              ? (json_['enumDescriptions'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          format: json_.containsKey('format')
              ? json_['format'] as core.String
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          items: json_.containsKey('items')
              ? JsonSchema.fromJson(
                  json_['items'] as core.Map<core.String, core.dynamic>)
              : null,
          location: json_.containsKey('location')
              ? json_['location'] as core.String
              : null,
          maximum: json_.containsKey('maximum')
              ? json_['maximum'] as core.String
              : null,
          minimum: json_.containsKey('minimum')
              ? json_['minimum'] as core.String
              : null,
          pattern: json_.containsKey('pattern')
              ? json_['pattern'] as core.String
              : null,
          properties: json_.containsKey('properties')
              ? (json_['properties'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    JsonSchema.fromJson(
                        item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          readOnly: json_.containsKey('readOnly')
              ? json_['readOnly'] as core.bool
              : null,
          repeated: json_.containsKey('repeated')
              ? json_['repeated'] as core.bool
              : null,
          required: json_.containsKey('required')
              ? json_['required'] as core.bool
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
          variant: json_.containsKey('variant')
              ? JsonSchemaVariant.fromJson(
                  json_['variant'] as core.Map<core.String, core.dynamic>)
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

  RestDescriptionAuthOauth2ScopesValue.fromJson(core.Map json_)
      : this(
          description: json_.containsKey('description')
              ? json_['description'] as core.String
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

  RestDescriptionAuthOauth2.fromJson(core.Map json_)
      : this(
          scopes: json_.containsKey('scopes')
              ? (json_['scopes'] as core.Map<core.String, core.dynamic>).map(
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

  RestDescriptionAuth.fromJson(core.Map json_)
      : this(
          oauth2: json_.containsKey('oauth2')
              ? RestDescriptionAuthOauth2.fromJson(
                  json_['oauth2'] as core.Map<core.String, core.dynamic>)
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

  RestDescriptionIcons.fromJson(core.Map json_)
      : this(
          x16: json_.containsKey('x16') ? json_['x16'] as core.String : null,
          x32: json_.containsKey('x32') ? json_['x32'] as core.String : null,
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

  RestDescription.fromJson(core.Map json_)
      : this(
          auth: json_.containsKey('auth')
              ? RestDescriptionAuth.fromJson(
                  json_['auth'] as core.Map<core.String, core.dynamic>)
              : null,
          basePath: json_.containsKey('basePath')
              ? json_['basePath'] as core.String
              : null,
          baseUrl: json_.containsKey('baseUrl')
              ? json_['baseUrl'] as core.String
              : null,
          batchPath: json_.containsKey('batchPath')
              ? json_['batchPath'] as core.String
              : null,
          canonicalName: json_.containsKey('canonicalName')
              ? json_['canonicalName'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          discoveryVersion: json_.containsKey('discoveryVersion')
              ? json_['discoveryVersion'] as core.String
              : null,
          documentationLink: json_.containsKey('documentationLink')
              ? json_['documentationLink'] as core.String
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          exponentialBackoffDefault:
              json_.containsKey('exponentialBackoffDefault')
                  ? json_['exponentialBackoffDefault'] as core.bool
                  : null,
          features: json_.containsKey('features')
              ? (json_['features'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          icons: json_.containsKey('icons')
              ? RestDescriptionIcons.fromJson(
                  json_['icons'] as core.Map<core.String, core.dynamic>)
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          methods: json_.containsKey('methods')
              ? (json_['methods'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    RestMethod.fromJson(
                        item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          ownerDomain: json_.containsKey('ownerDomain')
              ? json_['ownerDomain'] as core.String
              : null,
          ownerName: json_.containsKey('ownerName')
              ? json_['ownerName'] as core.String
              : null,
          packagePath: json_.containsKey('packagePath')
              ? json_['packagePath'] as core.String
              : null,
          parameters: json_.containsKey('parameters')
              ? (json_['parameters'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    JsonSchema.fromJson(
                        item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          protocol: json_.containsKey('protocol')
              ? json_['protocol'] as core.String
              : null,
          resources: json_.containsKey('resources')
              ? (json_['resources'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    RestResource.fromJson(
                        item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          revision: json_.containsKey('revision')
              ? json_['revision'] as core.String
              : null,
          rootUrl: json_.containsKey('rootUrl')
              ? json_['rootUrl'] as core.String
              : null,
          schemas: json_.containsKey('schemas')
              ? (json_['schemas'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    JsonSchema.fromJson(
                        item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          servicePath: json_.containsKey('servicePath')
              ? json_['servicePath'] as core.String
              : null,
          title:
              json_.containsKey('title') ? json_['title'] as core.String : null,
          version: json_.containsKey('version')
              ? json_['version'] as core.String
              : null,
          versionModule: json_.containsKey('version_module')
              ? json_['version_module'] as core.bool
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

  RestMethodMediaUploadProtocolsResumable.fromJson(core.Map json_)
      : this(
          multipart: json_.containsKey('multipart')
              ? json_['multipart'] as core.bool
              : null,
          path: json_.containsKey('path') ? json_['path'] as core.String : null,
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

  RestMethodMediaUploadProtocolsSimple.fromJson(core.Map json_)
      : this(
          multipart: json_.containsKey('multipart')
              ? json_['multipart'] as core.bool
              : null,
          path: json_.containsKey('path') ? json_['path'] as core.String : null,
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

  RestMethodMediaUploadProtocols.fromJson(core.Map json_)
      : this(
          resumable: json_.containsKey('resumable')
              ? RestMethodMediaUploadProtocolsResumable.fromJson(
                  json_['resumable'] as core.Map<core.String, core.dynamic>)
              : null,
          simple: json_.containsKey('simple')
              ? RestMethodMediaUploadProtocolsSimple.fromJson(
                  json_['simple'] as core.Map<core.String, core.dynamic>)
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

  RestMethodMediaUpload.fromJson(core.Map json_)
      : this(
          accept: json_.containsKey('accept')
              ? (json_['accept'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          maxSize: json_.containsKey('maxSize')
              ? json_['maxSize'] as core.String
              : null,
          protocols: json_.containsKey('protocols')
              ? RestMethodMediaUploadProtocols.fromJson(
                  json_['protocols'] as core.Map<core.String, core.dynamic>)
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

  RestMethodRequest.fromJson(core.Map json_)
      : this(
          P_ref:
              json_.containsKey('\$ref') ? json_['\$ref'] as core.String : null,
          parameterName: json_.containsKey('parameterName')
              ? json_['parameterName'] as core.String
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

  RestMethodResponse.fromJson(core.Map json_)
      : this(
          P_ref:
              json_.containsKey('\$ref') ? json_['\$ref'] as core.String : null,
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

  RestMethod.fromJson(core.Map json_)
      : this(
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          etagRequired: json_.containsKey('etagRequired')
              ? json_['etagRequired'] as core.bool
              : null,
          flatPath: json_.containsKey('flatPath')
              ? json_['flatPath'] as core.String
              : null,
          httpMethod: json_.containsKey('httpMethod')
              ? json_['httpMethod'] as core.String
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          mediaUpload: json_.containsKey('mediaUpload')
              ? RestMethodMediaUpload.fromJson(
                  json_['mediaUpload'] as core.Map<core.String, core.dynamic>)
              : null,
          parameterOrder: json_.containsKey('parameterOrder')
              ? (json_['parameterOrder'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          parameters: json_.containsKey('parameters')
              ? (json_['parameters'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    JsonSchema.fromJson(
                        item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          path: json_.containsKey('path') ? json_['path'] as core.String : null,
          request: json_.containsKey('request')
              ? RestMethodRequest.fromJson(
                  json_['request'] as core.Map<core.String, core.dynamic>)
              : null,
          response: json_.containsKey('response')
              ? RestMethodResponse.fromJson(
                  json_['response'] as core.Map<core.String, core.dynamic>)
              : null,
          scopes: json_.containsKey('scopes')
              ? (json_['scopes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          supportsMediaDownload: json_.containsKey('supportsMediaDownload')
              ? json_['supportsMediaDownload'] as core.bool
              : null,
          supportsMediaUpload: json_.containsKey('supportsMediaUpload')
              ? json_['supportsMediaUpload'] as core.bool
              : null,
          supportsSubscription: json_.containsKey('supportsSubscription')
              ? json_['supportsSubscription'] as core.bool
              : null,
          useMediaDownloadService: json_.containsKey('useMediaDownloadService')
              ? json_['useMediaDownloadService'] as core.bool
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

  RestResource.fromJson(core.Map json_)
      : this(
          methods: json_.containsKey('methods')
              ? (json_['methods'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    RestMethod.fromJson(
                        item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          resources: json_.containsKey('resources')
              ? (json_['resources'] as core.Map<core.String, core.dynamic>).map(
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
