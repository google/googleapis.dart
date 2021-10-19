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

/// Service Control API - v2
///
/// Provides admission control and telemetry reporting for services integrated
/// with Service Infrastructure.
///
/// For more information, see <https://cloud.google.com/service-control/>
///
/// Create an instance of [ServiceControlApi] to access these resources:
///
/// - [ServicesResource]
library servicecontrol.v2;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

// ignore: deprecated_member_use_from_same_package
import '../shared.dart';
import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// Provides admission control and telemetry reporting for services integrated
/// with Service Infrastructure.
class ServiceControlApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  /// Manage your Google Service Control data
  static const servicecontrolScope =
      'https://www.googleapis.com/auth/servicecontrol';

  final commons.ApiRequester _requester;

  ServicesResource get services => ServicesResource(_requester);

  ServiceControlApi(http.Client client,
      {core.String rootUrl = 'https://servicecontrol.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class ServicesResource {
  final commons.ApiRequester _requester;

  ServicesResource(commons.ApiRequester client) : _requester = client;

  /// Private Preview.
  ///
  /// This feature is only available for approved services. This method provides
  /// admission control for services that are integrated with \[Service
  /// Infrastructure\](/service-infrastructure). It checks whether an operation
  /// should be allowed based on the service configuration and relevant
  /// policies. It must be called before the operation is executed. For more
  /// information, see \[Admission
  /// Control\](/service-infrastructure/docs/admission-control). NOTE: The
  /// admission control has an expected policy propagation delay of 60s. The
  /// caller **must** not depend on the most recent policy changes. NOTE: The
  /// admission control has a hard limit of 1 referenced resources per call. If
  /// an operation refers to more than 1 resources, the caller must call the
  /// Check method multiple times. This method requires the
  /// `servicemanagement.services.check` permission on the specified service.
  /// For more information, see
  /// [Service Control API Access Control](https://cloud.google.com/service-infrastructure/docs/service-control/access-control).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [serviceName] - The service name as specified in its service
  /// configuration. For example, `"pubsub.googleapis.com"`. See
  /// [google.api.Service](https://cloud.google.com/service-management/reference/rpc/google.api#google.api.Service)
  /// for the definition of a service name.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CheckResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CheckResponse> check(
    CheckRequest request,
    core.String serviceName, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v2/services/' + commons.escapeVariable('$serviceName') + ':check';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return CheckResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Private Preview.
  ///
  /// This feature is only available for approved services. This method provides
  /// telemetry reporting for services that are integrated with \[Service
  /// Infrastructure\](/service-infrastructure). It reports a list of operations
  /// that have occurred on a service. It must be called after the operations
  /// have been executed. For more information, see \[Telemetry
  /// Reporting\](/service-infrastructure/docs/telemetry-reporting). NOTE: The
  /// telemetry reporting has a hard limit of 1000 operations and 1MB per Report
  /// call. It is recommended to have no more than 100 operations per call. This
  /// method requires the `servicemanagement.services.report` permission on the
  /// specified service. For more information, see
  /// [Service Control API Access Control](https://cloud.google.com/service-infrastructure/docs/service-control/access-control).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [serviceName] - The service name as specified in its service
  /// configuration. For example, `"pubsub.googleapis.com"`. See
  /// [google.api.Service](https://cloud.google.com/service-management/reference/rpc/google.api#google.api.Service)
  /// for the definition of a service name.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ReportResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ReportResponse> report(
    ReportRequest request,
    core.String serviceName, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v2/services/' + commons.escapeVariable('$serviceName') + ':report';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return ReportResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

/// This message defines attributes associated with API operations, such as a
/// network API request.
///
/// The terminology is based on the conventions used by Google APIs, Istio, and
/// OpenAPI.
class Api {
  /// The API operation name.
  ///
  /// For gRPC requests, it is the fully qualified API method name, such as
  /// "google.pubsub.v1.Publisher.Publish". For OpenAPI requests, it is the
  /// `operationId`, such as "getPet".
  core.String? operation;

  /// The API protocol used for sending the request, such as "http", "https",
  /// "grpc", or "internal".
  core.String? protocol;

  /// The API service name.
  ///
  /// It is a logical identifier for a networked API, such as
  /// "pubsub.googleapis.com". The naming syntax depends on the API management
  /// system being used for handling the request.
  core.String? service;

  /// The API version associated with the API operation above, such as "v1" or
  /// "v1alpha1".
  core.String? version;

  Api({
    this.operation,
    this.protocol,
    this.service,
    this.version,
  });

  Api.fromJson(core.Map _json)
      : this(
          operation: _json.containsKey('operation')
              ? _json['operation'] as core.String
              : null,
          protocol: _json.containsKey('protocol')
              ? _json['protocol'] as core.String
              : null,
          service: _json.containsKey('service')
              ? _json['service'] as core.String
              : null,
          version: _json.containsKey('version')
              ? _json['version'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (operation != null) 'operation': operation!,
        if (protocol != null) 'protocol': protocol!,
        if (service != null) 'service': service!,
        if (version != null) 'version': version!,
      };
}

/// This message defines the standard attribute vocabulary for Google APIs.
///
/// An attribute is a piece of metadata that describes an activity on a network
/// service. For example, the size of an HTTP request, or the status code of an
/// HTTP response. Each attribute has a type and a name, which is logically
/// defined as a proto message field in `AttributeContext`. The field type
/// becomes the attribute type, and the field path becomes the attribute name.
/// For example, the attribute `source.ip` maps to field
/// `AttributeContext.source.ip`. This message definition is guaranteed not to
/// have any wire breaking change. So you can use it directly for passing
/// attributes across different systems. NOTE: Different system may generate
/// different subset of attributes. Please verify the system specification
/// before relying on an attribute generated a system.
class AttributeContext {
  /// Represents an API operation that is involved to a network activity.
  Api? api;

  /// The destination of a network activity, such as accepting a TCP connection.
  ///
  /// In a multi hop network activity, the destination represents the receiver
  /// of the last hop.
  Peer? destination;

  /// Supports extensions for advanced use cases, such as logs and metrics.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Map<core.String, core.Object?>>? extensions;

  /// The origin of a network activity.
  ///
  /// In a multi hop network activity, the origin represents the sender of the
  /// first hop. For the first hop, the `source` and the `origin` must have the
  /// same content.
  Peer? origin;

  /// Represents a network request, such as an HTTP request.
  Request? request;

  /// Represents a target resource that is involved with a network activity.
  ///
  /// If multiple resources are involved with an activity, this must be the
  /// primary one.
  Resource? resource;

  /// Represents a network response, such as an HTTP response.
  Response? response;

  /// The source of a network activity, such as starting a TCP connection.
  ///
  /// In a multi hop network activity, the source represents the sender of the
  /// last hop.
  Peer? source;

  AttributeContext({
    this.api,
    this.destination,
    this.extensions,
    this.origin,
    this.request,
    this.resource,
    this.response,
    this.source,
  });

  AttributeContext.fromJson(core.Map _json)
      : this(
          api: _json.containsKey('api')
              ? Api.fromJson(
                  _json['api'] as core.Map<core.String, core.dynamic>)
              : null,
          destination: _json.containsKey('destination')
              ? Peer.fromJson(
                  _json['destination'] as core.Map<core.String, core.dynamic>)
              : null,
          extensions: _json.containsKey('extensions')
              ? (_json['extensions'] as core.List)
                  .map((value) => value as core.Map<core.String, core.dynamic>)
                  .toList()
              : null,
          origin: _json.containsKey('origin')
              ? Peer.fromJson(
                  _json['origin'] as core.Map<core.String, core.dynamic>)
              : null,
          request: _json.containsKey('request')
              ? Request.fromJson(
                  _json['request'] as core.Map<core.String, core.dynamic>)
              : null,
          resource: _json.containsKey('resource')
              ? Resource.fromJson(
                  _json['resource'] as core.Map<core.String, core.dynamic>)
              : null,
          response: _json.containsKey('response')
              ? Response.fromJson(
                  _json['response'] as core.Map<core.String, core.dynamic>)
              : null,
          source: _json.containsKey('source')
              ? Peer.fromJson(
                  _json['source'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (api != null) 'api': api!,
        if (destination != null) 'destination': destination!,
        if (extensions != null) 'extensions': extensions!,
        if (origin != null) 'origin': origin!,
        if (request != null) 'request': request!,
        if (resource != null) 'resource': resource!,
        if (response != null) 'response': response!,
        if (source != null) 'source': source!,
      };
}

/// This message defines request authentication attributes.
///
/// Terminology is based on the JSON Web Token (JWT) standard, but the terms
/// also correlate to concepts in other standards.
typedef Auth = $Auth;

/// Request message for the Check method.
class CheckRequest {
  /// Describes attributes about the operation being executed by the service.
  AttributeContext? attributes;

  /// Contains a comma-separated list of flags.
  ///
  /// Optional.
  core.String? flags;

  /// Describes the resources and the policies applied to each resource.
  core.List<ResourceInfo>? resources;

  /// Specifies the version of the service configuration that should be used to
  /// process the request.
  ///
  /// Must not be empty. Set this field to 'latest' to specify using the latest
  /// configuration.
  core.String? serviceConfigId;

  CheckRequest({
    this.attributes,
    this.flags,
    this.resources,
    this.serviceConfigId,
  });

  CheckRequest.fromJson(core.Map _json)
      : this(
          attributes: _json.containsKey('attributes')
              ? AttributeContext.fromJson(
                  _json['attributes'] as core.Map<core.String, core.dynamic>)
              : null,
          flags:
              _json.containsKey('flags') ? _json['flags'] as core.String : null,
          resources: _json.containsKey('resources')
              ? (_json['resources'] as core.List)
                  .map((value) => ResourceInfo.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          serviceConfigId: _json.containsKey('serviceConfigId')
              ? _json['serviceConfigId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (attributes != null) 'attributes': attributes!,
        if (flags != null) 'flags': flags!,
        if (resources != null) 'resources': resources!,
        if (serviceConfigId != null) 'serviceConfigId': serviceConfigId!,
      };
}

/// Response message for the Check method.
class CheckResponse {
  /// Returns a set of request contexts generated from the `CheckRequest`.
  core.Map<core.String, core.String>? headers;

  /// Operation is allowed when this field is not set.
  ///
  /// Any non-'OK' status indicates a denial; \[google.rpc.Status.details\]()
  /// would contain additional details about the denial.
  Status? status;

  CheckResponse({
    this.headers,
    this.status,
  });

  CheckResponse.fromJson(core.Map _json)
      : this(
          headers: _json.containsKey('headers')
              ? (_json['headers'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          status: _json.containsKey('status')
              ? Status.fromJson(
                  _json['status'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (headers != null) 'headers': headers!,
        if (status != null) 'status': status!,
      };
}

/// This message defines attributes for a node that handles a network request.
///
/// The node can be either a service or an application that sends, forwards, or
/// receives the request. Service peers should fill in `principal` and `labels`
/// as appropriate.
typedef Peer = $Peer;

/// Request message for the Report method.
class ReportRequest {
  /// Describes the list of operations to be reported.
  ///
  /// Each operation is represented as an AttributeContext, and contains all
  /// attributes around an API access.
  core.List<AttributeContext>? operations;

  /// Specifies the version of the service configuration that should be used to
  /// process the request.
  ///
  /// Must not be empty. Set this field to 'latest' to specify using the latest
  /// configuration.
  core.String? serviceConfigId;

  ReportRequest({
    this.operations,
    this.serviceConfigId,
  });

  ReportRequest.fromJson(core.Map _json)
      : this(
          operations: _json.containsKey('operations')
              ? (_json['operations'] as core.List)
                  .map((value) => AttributeContext.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          serviceConfigId: _json.containsKey('serviceConfigId')
              ? _json['serviceConfigId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (operations != null) 'operations': operations!,
        if (serviceConfigId != null) 'serviceConfigId': serviceConfigId!,
      };
}

/// Response message for the Report method.
///
/// If the request contains any invalid data, the server returns an RPC error.
typedef ReportResponse = $Empty;

/// This message defines attributes for an HTTP request.
///
/// If the actual request is not an HTTP request, the runtime system should try
/// to map the actual request to an equivalent HTTP request.
class Request {
  /// The request authentication.
  ///
  /// May be absent for unauthenticated requests. Derived from the HTTP request
  /// `Authorization` header or equivalent.
  Auth? auth;

  /// The HTTP request headers.
  ///
  /// If multiple headers share the same key, they must be merged according to
  /// the HTTP spec. All header keys must be lowercased, because HTTP header
  /// keys are case-insensitive.
  core.Map<core.String, core.String>? headers;

  /// The HTTP request `Host` header value.
  core.String? host;

  /// The unique ID for a request, which can be propagated to downstream
  /// systems.
  ///
  /// The ID should have low probability of collision within a single day for a
  /// specific service.
  core.String? id;

  /// The HTTP request method, such as `GET`, `POST`.
  core.String? method;

  /// The HTTP URL path, excluding the query parameters.
  core.String? path;

  /// The network protocol used with the request, such as "http/1.1", "spdy/3",
  /// "h2", "h2c", "webrtc", "tcp", "udp", "quic".
  ///
  /// See
  /// https://www.iana.org/assignments/tls-extensiontype-values/tls-extensiontype-values.xhtml#alpn-protocol-ids
  /// for details.
  core.String? protocol;

  /// The HTTP URL query in the format of `name1=value1&name2=value2`, as it
  /// appears in the first line of the HTTP request.
  ///
  /// No decoding is performed.
  core.String? query;

  /// A special parameter for request reason.
  ///
  /// It is used by security systems to associate auditing information with a
  /// request.
  core.String? reason;

  /// The HTTP URL scheme, such as `http` and `https`.
  core.String? scheme;

  /// The HTTP request size in bytes.
  ///
  /// If unknown, it must be -1.
  core.String? size;

  /// The timestamp when the `destination` service receives the last byte of the
  /// request.
  core.String? time;

  Request({
    this.auth,
    this.headers,
    this.host,
    this.id,
    this.method,
    this.path,
    this.protocol,
    this.query,
    this.reason,
    this.scheme,
    this.size,
    this.time,
  });

  Request.fromJson(core.Map _json)
      : this(
          auth: _json.containsKey('auth')
              ? Auth.fromJson(
                  _json['auth'] as core.Map<core.String, core.dynamic>)
              : null,
          headers: _json.containsKey('headers')
              ? (_json['headers'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          host: _json.containsKey('host') ? _json['host'] as core.String : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          method: _json.containsKey('method')
              ? _json['method'] as core.String
              : null,
          path: _json.containsKey('path') ? _json['path'] as core.String : null,
          protocol: _json.containsKey('protocol')
              ? _json['protocol'] as core.String
              : null,
          query:
              _json.containsKey('query') ? _json['query'] as core.String : null,
          reason: _json.containsKey('reason')
              ? _json['reason'] as core.String
              : null,
          scheme: _json.containsKey('scheme')
              ? _json['scheme'] as core.String
              : null,
          size: _json.containsKey('size') ? _json['size'] as core.String : null,
          time: _json.containsKey('time') ? _json['time'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (auth != null) 'auth': auth!,
        if (headers != null) 'headers': headers!,
        if (host != null) 'host': host!,
        if (id != null) 'id': id!,
        if (method != null) 'method': method!,
        if (path != null) 'path': path!,
        if (protocol != null) 'protocol': protocol!,
        if (query != null) 'query': query!,
        if (reason != null) 'reason': reason!,
        if (scheme != null) 'scheme': scheme!,
        if (size != null) 'size': size!,
        if (time != null) 'time': time!,
      };
}

/// This message defines core attributes for a resource.
///
/// A resource is an addressable (named) entity provided by the destination
/// service. For example, a file stored on a network storage service.
typedef Resource = $Resource01;

/// Describes a resource referenced in the request.
class ResourceInfo {
  /// The identifier of the container of this resource.
  ///
  /// For Google Cloud APIs, the resource container must be one of the following
  /// formats: - `projects/` - `folders/` - `organizations/` For the policy
  /// enforcement on the container level (VPCSC and Location Policy check), this
  /// field takes precedence on the container extracted from name when presents.
  ///
  /// Optional.
  core.String? container;

  /// The location of the resource.
  ///
  /// The value must be a valid zone, region or multiregion. For example:
  /// "europe-west4" or "northamerica-northeast1-a"
  ///
  /// Optional.
  core.String? location;

  /// The name of the resource referenced in the request.
  core.String? name;

  /// The resource permission needed for this request.
  ///
  /// The format must be "{service}/{plural}.{verb}".
  core.String? permission;

  /// The resource type in the format of "{service}/{kind}".
  core.String? type;

  ResourceInfo({
    this.container,
    this.location,
    this.name,
    this.permission,
    this.type,
  });

  ResourceInfo.fromJson(core.Map _json)
      : this(
          container: _json.containsKey('container')
              ? _json['container'] as core.String
              : null,
          location: _json.containsKey('location')
              ? _json['location'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          permission: _json.containsKey('permission')
              ? _json['permission'] as core.String
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (container != null) 'container': container!,
        if (location != null) 'location': location!,
        if (name != null) 'name': name!,
        if (permission != null) 'permission': permission!,
        if (type != null) 'type': type!,
      };
}

/// This message defines attributes for a typical network response.
///
/// It generally models semantics of an HTTP response.
class Response {
  /// The amount of time it takes the backend service to fully respond to a
  /// request.
  ///
  /// Measured from when the destination service starts to send the request to
  /// the backend until when the destination service receives the complete
  /// response from the backend.
  core.String? backendLatency;

  /// The HTTP response status code, such as `200` and `404`.
  core.String? code;

  /// The HTTP response headers.
  ///
  /// If multiple headers share the same key, they must be merged according to
  /// HTTP spec. All header keys must be lowercased, because HTTP header keys
  /// are case-insensitive.
  core.Map<core.String, core.String>? headers;

  /// The HTTP response size in bytes.
  ///
  /// If unknown, it must be -1.
  core.String? size;

  /// The timestamp when the `destination` service sends the last byte of the
  /// response.
  core.String? time;

  Response({
    this.backendLatency,
    this.code,
    this.headers,
    this.size,
    this.time,
  });

  Response.fromJson(core.Map _json)
      : this(
          backendLatency: _json.containsKey('backendLatency')
              ? _json['backendLatency'] as core.String
              : null,
          code: _json.containsKey('code') ? _json['code'] as core.String : null,
          headers: _json.containsKey('headers')
              ? (_json['headers'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          size: _json.containsKey('size') ? _json['size'] as core.String : null,
          time: _json.containsKey('time') ? _json['time'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (backendLatency != null) 'backendLatency': backendLatency!,
        if (code != null) 'code': code!,
        if (headers != null) 'headers': headers!,
        if (size != null) 'size': size!,
        if (time != null) 'time': time!,
      };
}

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
typedef Status = $Status;
