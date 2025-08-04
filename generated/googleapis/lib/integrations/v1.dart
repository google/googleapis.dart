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

/// Application Integration API - v1
///
/// For more information, see <https://cloud.google.com/application-integration>
///
/// Create an instance of [IntegrationsApi] to access these resources:
///
/// - [CallbackResource]
/// - [ConnectorPlatformRegionsResource]
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsAppsScriptProjectsResource]
///     - [ProjectsLocationsAuthConfigsResource]
///     - [ProjectsLocationsCertificatesResource]
///     - [ProjectsLocationsClientsResource]
///     - [ProjectsLocationsCloudFunctionsResource]
///     - [ProjectsLocationsConnectionsResource]
///       - [ProjectsLocationsConnectionsRuntimeActionSchemasResource]
///       - [ProjectsLocationsConnectionsRuntimeEntitySchemasResource]
///     - [ProjectsLocationsIntegrationsResource]
///       - [ProjectsLocationsIntegrationsExecutionsResource]
///         - [ProjectsLocationsIntegrationsExecutionsSuspensionsResource]
///       - [ProjectsLocationsIntegrationsVersionsResource]
///         - [ProjectsLocationsIntegrationsVersionsTestCasesResource]
///     - [ProjectsLocationsProductsResource]
///       - [ProjectsLocationsProductsAuthConfigsResource]
///       - [ProjectsLocationsProductsCertificatesResource]
///       - [ProjectsLocationsProductsCloudFunctionsResource]
///       - [ProjectsLocationsProductsIntegrationsResource]
///         - [ProjectsLocationsProductsIntegrationsExecutionsResource]
/// - [ProjectsLocationsProductsIntegrationsExecutionsSuspensionsResource]
///         - [ProjectsLocationsProductsIntegrationsVersionsResource]
///       - [ProjectsLocationsProductsSfdcInstancesResource]
///         - [ProjectsLocationsProductsSfdcInstancesSfdcChannelsResource]
///     - [ProjectsLocationsSfdcInstancesResource]
///       - [ProjectsLocationsSfdcInstancesSfdcChannelsResource]
///     - [ProjectsLocationsTemplatesResource]
library;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../shared.dart';
import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

class IntegrationsApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  CallbackResource get callback => CallbackResource(_requester);
  ConnectorPlatformRegionsResource get connectorPlatformRegions =>
      ConnectorPlatformRegionsResource(_requester);
  ProjectsResource get projects => ProjectsResource(_requester);

  IntegrationsApi(
    http.Client client, {
    core.String rootUrl = 'https://integrations.googleapis.com/',
    core.String servicePath = '',
  }) : _requester = commons.ApiRequester(
         client,
         rootUrl,
         servicePath,
         requestHeaders,
       );
}

class CallbackResource {
  final commons.ApiRequester _requester;

  CallbackResource(commons.ApiRequester client) : _requester = client;

  /// Receives the auth code and auth config id to combine that with the client
  /// id and secret to retrieve access tokens from the token endpoint.
  ///
  /// Returns either a success or error message when it's done.
  ///
  /// Request parameters:
  ///
  /// [code] - The auth code for the given request
  ///
  /// [gcpProjectId] - The gcp project id of the request
  ///
  /// [product] - Which product sends the request
  /// Possible string values are:
  /// - "UNSPECIFIED_PRODUCT"
  /// - "IP"
  /// - "APIGEE"
  /// - "SECURITY"
  ///
  /// [redirectUri] - Redirect uri of the auth code request
  ///
  /// [state] - The auth config id for the given request
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIntegrationsV1alphaGenerateTokenResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIntegrationsV1alphaGenerateTokenResponse>
  generateToken({
    core.String? code,
    core.String? gcpProjectId,
    core.String? product,
    core.String? redirectUri,
    core.String? state,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (code != null) 'code': [code],
      if (gcpProjectId != null) 'gcpProjectId': [gcpProjectId],
      if (product != null) 'product': [product],
      if (redirectUri != null) 'redirectUri': [redirectUri],
      if (state != null) 'state': [state],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/callback:generateToken';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudIntegrationsV1alphaGenerateTokenResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ConnectorPlatformRegionsResource {
  final commons.ApiRequester _requester;

  ConnectorPlatformRegionsResource(commons.ApiRequester client)
    : _requester = client;

  /// Enumerates the regions for which Connector Platform is provisioned.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudIntegrationsV1alphaEnumerateConnectorPlatformRegionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<
    GoogleCloudIntegrationsV1alphaEnumerateConnectorPlatformRegionsResponse
  >
  enumerate({core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/connectorPlatformRegions:enumerate';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudIntegrationsV1alphaEnumerateConnectorPlatformRegionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsResource get locations =>
      ProjectsLocationsResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;

  /// Gets the metadata info for the requested client
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Required: The ID of the GCP Project to be
  /// provisioned.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudIntegrationsV1alphaGetClientMetadataResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIntegrationsV1alphaGetClientMetadataResponse>
  getClientmetadata(core.String parent, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/clientmetadata';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudIntegrationsV1alphaGetClientMetadataResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAppsScriptProjectsResource get appsScriptProjects =>
      ProjectsLocationsAppsScriptProjectsResource(_requester);
  ProjectsLocationsAuthConfigsResource get authConfigs =>
      ProjectsLocationsAuthConfigsResource(_requester);
  ProjectsLocationsCertificatesResource get certificates =>
      ProjectsLocationsCertificatesResource(_requester);
  ProjectsLocationsClientsResource get clients =>
      ProjectsLocationsClientsResource(_requester);
  ProjectsLocationsCloudFunctionsResource get cloudFunctions =>
      ProjectsLocationsCloudFunctionsResource(_requester);
  ProjectsLocationsConnectionsResource get connections =>
      ProjectsLocationsConnectionsResource(_requester);
  ProjectsLocationsIntegrationsResource get integrations =>
      ProjectsLocationsIntegrationsResource(_requester);
  ProjectsLocationsProductsResource get products =>
      ProjectsLocationsProductsResource(_requester);
  ProjectsLocationsSfdcInstancesResource get sfdcInstances =>
      ProjectsLocationsSfdcInstancesResource(_requester);
  ProjectsLocationsTemplatesResource get templates =>
      ProjectsLocationsTemplatesResource(_requester);

  ProjectsLocationsResource(commons.ApiRequester client) : _requester = client;

  /// Generate OpenAPI spec for the requested integrations and api triggers
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Project and location from which the integrations should
  /// be fetched. Format: projects/{project}/location/{location}
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudIntegrationsV1alphaGenerateOpenApiSpecResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIntegrationsV1alphaGenerateOpenApiSpecResponse>
  generateOpenApiSpec(
    GoogleCloudIntegrationsV1alphaGenerateOpenApiSpecRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':generateOpenApiSpec';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIntegrationsV1alphaGenerateOpenApiSpecResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets the client configuration for the given project and location resource
  /// name
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Required: The ID of the GCP Project to be
  /// provisioned.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIntegrationsV1alphaGetClientResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIntegrationsV1alphaGetClientResponse> getClients(
    core.String parent, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/clients';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudIntegrationsV1alphaGetClientResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsAppsScriptProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAppsScriptProjectsResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates an Apps Script project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project that the executed integration belongs to.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudIntegrationsV1alphaCreateAppsScriptProjectResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIntegrationsV1alphaCreateAppsScriptProjectResponse>
  create(
    GoogleCloudIntegrationsV1alphaCreateAppsScriptProjectRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/appsScriptProjects';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIntegrationsV1alphaCreateAppsScriptProjectResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Links a existing Apps Script project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project that the executed integration belongs to.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudIntegrationsV1alphaLinkAppsScriptProjectResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIntegrationsV1alphaLinkAppsScriptProjectResponse>
  link(
    GoogleCloudIntegrationsV1alphaLinkAppsScriptProjectRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/appsScriptProjects:link';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIntegrationsV1alphaLinkAppsScriptProjectResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsAuthConfigsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAuthConfigsResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates an auth config record.
  ///
  /// Fetch corresponding credentials for specific auth types, e.g. access token
  /// for OAuth 2.0, JWT token for JWT. Encrypt the auth config with Cloud KMS
  /// and store the encrypted credentials in Spanner. Returns the encrypted auth
  /// config.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. "projects/{project}/locations/{location}" format.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [clientCertificate_encryptedPrivateKey] - The ssl certificate encoded in
  /// PEM format. This string must include the begin header and end footer
  /// lines. For example, -----BEGIN CERTIFICATE-----
  /// MIICTTCCAbagAwIBAgIJAPT0tSKNxan/MA0GCSqGSIb3DQEBCwUAMCoxFzAVBgNV
  /// BAoTDkdvb2dsZSBURVNUSU5HMQ8wDQYDVQQDEwZ0ZXN0Q0EwHhcNMTUwMTAxMDAw
  /// MDAwWhcNMjUwMTAxMDAwMDAwWjAuMRcwFQYDVQQKEw5Hb29nbGUgVEVTVElORzET
  /// MBEGA1UEAwwKam9lQGJhbmFuYTCBnzANBgkqhkiG9w0BAQEFAAOBjQAwgYkCgYEA
  /// vDYFgMgxi5W488d9J7UpCInl0NXmZQpJDEHE4hvkaRlH7pnC71H0DLt0/3zATRP1
  /// JzY2+eqBmbGl4/sgZKYv8UrLnNyQNUTsNx1iZAfPUflf5FwgVsai8BM0pUciq1NB
  /// xD429VFcrGZNucvFLh72RuRFIKH8WUpiK/iZNFkWhZ0CAwEAAaN3MHUwDgYDVR0P
  /// AQH/BAQDAgWgMB0GA1UdJQQWMBQGCCsGAQUFBwMBBggrBgEFBQcDAjAMBgNVHRMB
  /// Af8EAjAAMBkGA1UdDgQSBBCVgnFBCWgL/iwCqnGrhTPQMBsGA1UdIwQUMBKAEKey
  /// Um2o4k2WiEVA0ldQvNYwDQYJKoZIhvcNAQELBQADgYEAYK986R4E3L1v+Q6esBtW
  /// JrUwA9UmJRSQr0N5w3o9XzarU37/bkjOP0Fw0k/A6Vv1n3vlciYfBFaBIam1qRHr
  /// 5dMsYf4CZS6w50r7hyzqyrwDoyNxkLnd2PdcHT/sym1QmflsjEs7pejtnohO6N2H
  /// wQW6M0H7Zt8claGRla4fKkg= -----END CERTIFICATE-----
  ///
  /// [clientCertificate_passphrase] - 'passphrase' should be left unset if
  /// private key is not encrypted. Note that 'passphrase' is not the password
  /// for web server, but an extra layer of security to protected private key.
  ///
  /// [clientCertificate_sslCertificate] - The ssl certificate encoded in PEM
  /// format. This string must include the begin header and end footer lines.
  /// For example, -----BEGIN CERTIFICATE-----
  /// MIICTTCCAbagAwIBAgIJAPT0tSKNxan/MA0GCSqGSIb3DQEBCwUAMCoxFzAVBgNV
  /// BAoTDkdvb2dsZSBURVNUSU5HMQ8wDQYDVQQDEwZ0ZXN0Q0EwHhcNMTUwMTAxMDAw
  /// MDAwWhcNMjUwMTAxMDAwMDAwWjAuMRcwFQYDVQQKEw5Hb29nbGUgVEVTVElORzET
  /// MBEGA1UEAwwKam9lQGJhbmFuYTCBnzANBgkqhkiG9w0BAQEFAAOBjQAwgYkCgYEA
  /// vDYFgMgxi5W488d9J7UpCInl0NXmZQpJDEHE4hvkaRlH7pnC71H0DLt0/3zATRP1
  /// JzY2+eqBmbGl4/sgZKYv8UrLnNyQNUTsNx1iZAfPUflf5FwgVsai8BM0pUciq1NB
  /// xD429VFcrGZNucvFLh72RuRFIKH8WUpiK/iZNFkWhZ0CAwEAAaN3MHUwDgYDVR0P
  /// AQH/BAQDAgWgMB0GA1UdJQQWMBQGCCsGAQUFBwMBBggrBgEFBQcDAjAMBgNVHRMB
  /// Af8EAjAAMBkGA1UdDgQSBBCVgnFBCWgL/iwCqnGrhTPQMBsGA1UdIwQUMBKAEKey
  /// Um2o4k2WiEVA0ldQvNYwDQYJKoZIhvcNAQELBQADgYEAYK986R4E3L1v+Q6esBtW
  /// JrUwA9UmJRSQr0N5w3o9XzarU37/bkjOP0Fw0k/A6Vv1n3vlciYfBFaBIam1qRHr
  /// 5dMsYf4CZS6w50r7hyzqyrwDoyNxkLnd2PdcHT/sym1QmflsjEs7pejtnohO6N2H
  /// wQW6M0H7Zt8claGRla4fKkg= -----END CERTIFICATE-----
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIntegrationsV1alphaAuthConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIntegrationsV1alphaAuthConfig> create(
    GoogleCloudIntegrationsV1alphaAuthConfig request,
    core.String parent, {
    core.String? clientCertificate_encryptedPrivateKey,
    core.String? clientCertificate_passphrase,
    core.String? clientCertificate_sslCertificate,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (clientCertificate_encryptedPrivateKey != null)
        'clientCertificate.encryptedPrivateKey': [
          clientCertificate_encryptedPrivateKey,
        ],
      if (clientCertificate_passphrase != null)
        'clientCertificate.passphrase': [clientCertificate_passphrase],
      if (clientCertificate_sslCertificate != null)
        'clientCertificate.sslCertificate': [clientCertificate_sslCertificate],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/authConfigs';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIntegrationsV1alphaAuthConfig.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes an auth config.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name that is associated with the AuthConfig.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/authConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets a complete auth config.
  ///
  /// If the auth config doesn't exist, Code.NOT_FOUND exception will be thrown.
  /// Returns the decrypted auth config.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name that is associated with the AuthConfig.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/authConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIntegrationsV1alphaAuthConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIntegrationsV1alphaAuthConfig> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudIntegrationsV1alphaAuthConfig.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists all auth configs that match the filter.
  ///
  /// Restrict to auth configs belong to the current client only.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The client, which owns this collection of
  /// AuthConfigs.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Filtering as supported in
  /// https://developers.google.com/authorized-buyers/apis/guides/list-filters.
  ///
  /// [pageSize] - The size of entries in the response. If unspecified, defaults
  /// to 100.
  ///
  /// [pageToken] - The token returned in the previous response.
  ///
  /// [readMask] - The mask which specifies fields that need to be returned in
  /// the AuthConfig's response.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIntegrationsV1alphaListAuthConfigsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIntegrationsV1alphaListAuthConfigsResponse> list(
    core.String parent, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? readMask,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (readMask != null) 'readMask': [readMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/authConfigs';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudIntegrationsV1alphaListAuthConfigsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates an auth config.
  ///
  /// If credential is updated, fetch the encrypted auth config from Spanner,
  /// decrypt with Cloud KMS key, update the credential fields, re-encrypt with
  /// Cloud KMS key and update the Spanner record. For other fields, directly
  /// update the Spanner record. Returns the encrypted auth config.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Resource name of the auth config. For more information, see
  /// Manage authentication profiles.
  /// projects/{project}/locations/{location}/authConfigs/{authConfig}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/authConfigs/\[^/\]+$`.
  ///
  /// [clientCertificate_encryptedPrivateKey] - The ssl certificate encoded in
  /// PEM format. This string must include the begin header and end footer
  /// lines. For example, -----BEGIN CERTIFICATE-----
  /// MIICTTCCAbagAwIBAgIJAPT0tSKNxan/MA0GCSqGSIb3DQEBCwUAMCoxFzAVBgNV
  /// BAoTDkdvb2dsZSBURVNUSU5HMQ8wDQYDVQQDEwZ0ZXN0Q0EwHhcNMTUwMTAxMDAw
  /// MDAwWhcNMjUwMTAxMDAwMDAwWjAuMRcwFQYDVQQKEw5Hb29nbGUgVEVTVElORzET
  /// MBEGA1UEAwwKam9lQGJhbmFuYTCBnzANBgkqhkiG9w0BAQEFAAOBjQAwgYkCgYEA
  /// vDYFgMgxi5W488d9J7UpCInl0NXmZQpJDEHE4hvkaRlH7pnC71H0DLt0/3zATRP1
  /// JzY2+eqBmbGl4/sgZKYv8UrLnNyQNUTsNx1iZAfPUflf5FwgVsai8BM0pUciq1NB
  /// xD429VFcrGZNucvFLh72RuRFIKH8WUpiK/iZNFkWhZ0CAwEAAaN3MHUwDgYDVR0P
  /// AQH/BAQDAgWgMB0GA1UdJQQWMBQGCCsGAQUFBwMBBggrBgEFBQcDAjAMBgNVHRMB
  /// Af8EAjAAMBkGA1UdDgQSBBCVgnFBCWgL/iwCqnGrhTPQMBsGA1UdIwQUMBKAEKey
  /// Um2o4k2WiEVA0ldQvNYwDQYJKoZIhvcNAQELBQADgYEAYK986R4E3L1v+Q6esBtW
  /// JrUwA9UmJRSQr0N5w3o9XzarU37/bkjOP0Fw0k/A6Vv1n3vlciYfBFaBIam1qRHr
  /// 5dMsYf4CZS6w50r7hyzqyrwDoyNxkLnd2PdcHT/sym1QmflsjEs7pejtnohO6N2H
  /// wQW6M0H7Zt8claGRla4fKkg= -----END CERTIFICATE-----
  ///
  /// [clientCertificate_passphrase] - 'passphrase' should be left unset if
  /// private key is not encrypted. Note that 'passphrase' is not the password
  /// for web server, but an extra layer of security to protected private key.
  ///
  /// [clientCertificate_sslCertificate] - The ssl certificate encoded in PEM
  /// format. This string must include the begin header and end footer lines.
  /// For example, -----BEGIN CERTIFICATE-----
  /// MIICTTCCAbagAwIBAgIJAPT0tSKNxan/MA0GCSqGSIb3DQEBCwUAMCoxFzAVBgNV
  /// BAoTDkdvb2dsZSBURVNUSU5HMQ8wDQYDVQQDEwZ0ZXN0Q0EwHhcNMTUwMTAxMDAw
  /// MDAwWhcNMjUwMTAxMDAwMDAwWjAuMRcwFQYDVQQKEw5Hb29nbGUgVEVTVElORzET
  /// MBEGA1UEAwwKam9lQGJhbmFuYTCBnzANBgkqhkiG9w0BAQEFAAOBjQAwgYkCgYEA
  /// vDYFgMgxi5W488d9J7UpCInl0NXmZQpJDEHE4hvkaRlH7pnC71H0DLt0/3zATRP1
  /// JzY2+eqBmbGl4/sgZKYv8UrLnNyQNUTsNx1iZAfPUflf5FwgVsai8BM0pUciq1NB
  /// xD429VFcrGZNucvFLh72RuRFIKH8WUpiK/iZNFkWhZ0CAwEAAaN3MHUwDgYDVR0P
  /// AQH/BAQDAgWgMB0GA1UdJQQWMBQGCCsGAQUFBwMBBggrBgEFBQcDAjAMBgNVHRMB
  /// Af8EAjAAMBkGA1UdDgQSBBCVgnFBCWgL/iwCqnGrhTPQMBsGA1UdIwQUMBKAEKey
  /// Um2o4k2WiEVA0ldQvNYwDQYJKoZIhvcNAQELBQADgYEAYK986R4E3L1v+Q6esBtW
  /// JrUwA9UmJRSQr0N5w3o9XzarU37/bkjOP0Fw0k/A6Vv1n3vlciYfBFaBIam1qRHr
  /// 5dMsYf4CZS6w50r7hyzqyrwDoyNxkLnd2PdcHT/sym1QmflsjEs7pejtnohO6N2H
  /// wQW6M0H7Zt8claGRla4fKkg= -----END CERTIFICATE-----
  ///
  /// [updateMask] - Field mask specifying the fields in the above AuthConfig
  /// that have been modified and need to be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIntegrationsV1alphaAuthConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIntegrationsV1alphaAuthConfig> patch(
    GoogleCloudIntegrationsV1alphaAuthConfig request,
    core.String name, {
    core.String? clientCertificate_encryptedPrivateKey,
    core.String? clientCertificate_passphrase,
    core.String? clientCertificate_sslCertificate,
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (clientCertificate_encryptedPrivateKey != null)
        'clientCertificate.encryptedPrivateKey': [
          clientCertificate_encryptedPrivateKey,
        ],
      if (clientCertificate_passphrase != null)
        'clientCertificate.passphrase': [clientCertificate_passphrase],
      if (clientCertificate_sslCertificate != null)
        'clientCertificate.sslCertificate': [clientCertificate_sslCertificate],
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIntegrationsV1alphaAuthConfig.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsCertificatesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsCertificatesResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a new certificate.
  ///
  /// The certificate will be registered to the trawler service and will be
  /// encrypted using cloud KMS and stored in Spanner Returns the certificate.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. "projects/{project}/locations/{location}" format.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIntegrationsV1alphaCertificate].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIntegrationsV1alphaCertificate> create(
    GoogleCloudIntegrationsV1alphaCertificate request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/certificates';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIntegrationsV1alphaCertificate.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Delete a certificate
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name that is associated with the Certificate.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/certificates/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Get a certificates in the specified project.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The certificate to retrieve. Format:
  /// projects/{project}/locations/{location}/certificates/{certificate}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/certificates/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIntegrationsV1alphaCertificate].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIntegrationsV1alphaCertificate> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudIntegrationsV1alphaCertificate.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// List all the certificates that match the filter.
  ///
  /// Restrict to certificate of current client only.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The client, which owns this collection of
  /// Certificates.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Filtering as supported in
  /// https://developers.google.com/authorized-buyers/apis/guides/list-filters.
  ///
  /// [pageSize] - The size of entries in the response. If unspecified, defaults
  /// to 100.
  ///
  /// [pageToken] - The token returned in the previous response.
  ///
  /// [readMask] - The mask which specifies fields that need to be returned in
  /// the Certificate's response.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIntegrationsV1alphaListCertificatesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIntegrationsV1alphaListCertificatesResponse> list(
    core.String parent, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? readMask,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (readMask != null) 'readMask': [readMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/certificates';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudIntegrationsV1alphaListCertificatesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the certificate by id.
  ///
  /// If new certificate file is updated, it will register with the trawler
  /// service, re-encrypt with cloud KMS and update the Spanner record. Other
  /// fields will directly update the Spanner record. Returns the Certificate.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. Auto generated primary key
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/certificates/\[^/\]+$`.
  ///
  /// [updateMask] - Field mask specifying the fields in the above Certificate
  /// that have been modified and need to be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIntegrationsV1alphaCertificate].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIntegrationsV1alphaCertificate> patch(
    GoogleCloudIntegrationsV1alphaCertificate request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIntegrationsV1alphaCertificate.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsClientsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsClientsResource(commons.ApiRequester client)
    : _requester = client;

  /// Updates the client customer configuration for the given project and
  /// location resource name
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Required: Format -
  /// projects/{project}/locations/{location}
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudIntegrationsV1alphaChangeCustomerConfigResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIntegrationsV1alphaChangeCustomerConfigResponse>
  changeConfig(
    GoogleCloudIntegrationsV1alphaChangeCustomerConfigRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/clients:changeConfig';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIntegrationsV1alphaChangeCustomerConfigResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Perform the deprovisioning steps to disable a user GCP project to use IP
  /// and purge all related data in a wipeout-compliant way.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Required: The ID of the GCP Project to be
  /// deprovisioned.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> deprovision(
    GoogleCloudIntegrationsV1alphaDeprovisionClientRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/clients:deprovision';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Perform the provisioning steps to enable a user GCP project to use IP.
  ///
  /// If GCP project already registered on IP end via Apigee Integration,
  /// provisioning will fail.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Required: The ID of the GCP Project to be
  /// provisioned.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> provision(
    GoogleCloudIntegrationsV1alphaProvisionClientRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/clients:provision';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Perform post provisioning steps after client is provisioned.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Required: The ID of the GCP Project to be
  /// provisioned.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudIntegrationsV1alphaProvisionClientPostProcessorResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<
    GoogleCloudIntegrationsV1alphaProvisionClientPostProcessorResponse
  >
  provisionClientPostProcessor(
    GoogleCloudIntegrationsV1alphaProvisionClientPostProcessorRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' +
        core.Uri.encodeFull('$parent') +
        '/clients:provisionClientPostProcessor';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIntegrationsV1alphaProvisionClientPostProcessorResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Update run-as service account for provisioned client
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Required: The ID of the GCP Project to be
  /// provisioned.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> replace(
    GoogleCloudIntegrationsV1alphaReplaceServiceAccountRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/clients:replace';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Update client from GMEK to CMEK
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Required: The ID of the GCP Project to be
  /// provisioned.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> switch_(
    GoogleCloudIntegrationsV1alphaSwitchEncryptionRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/clients:switch';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Update variable masking for provisioned client
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Required: The ID of the GCP Project to be
  /// provisioned.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> switchVariableMasking(
    GoogleCloudIntegrationsV1alphaSwitchVariableMaskingRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' +
        core.Uri.encodeFull('$parent') +
        '/clients:switchVariableMasking';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Enable/Disable http call for provisioned client
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Required: The ID of the GCP Project to be
  /// provisioned.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> toggleHttp(
    GoogleCloudIntegrationsV1alphaToggleHttpRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/clients:toggleHttp';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsCloudFunctionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsCloudFunctionsResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a cloud function project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project that the executed integration belongs to.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudIntegrationsV1alphaCreateCloudFunctionResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIntegrationsV1alphaCreateCloudFunctionResponse>
  create(
    GoogleCloudIntegrationsV1alphaCreateCloudFunctionRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/cloudFunctions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIntegrationsV1alphaCreateCloudFunctionResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsConnectionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsConnectionsRuntimeActionSchemasResource
  get runtimeActionSchemas =>
      ProjectsLocationsConnectionsRuntimeActionSchemasResource(_requester);
  ProjectsLocationsConnectionsRuntimeEntitySchemasResource
  get runtimeEntitySchemas =>
      ProjectsLocationsConnectionsRuntimeEntitySchemasResource(_requester);

  ProjectsLocationsConnectionsResource(commons.ApiRequester client)
    : _requester = client;

  /// Lists the available entities and actions associated with a Connection.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. ConnectionSchemaMetadata name. Format:
  /// projects/{project}/locations/{location}/connections/{connection}/connectionSchemaMetadata
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connections/\[^/\]+/connectionSchemaMetadata$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIntegrationsV1alphaConnectionSchemaMetadata].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIntegrationsV1alphaConnectionSchemaMetadata>
  getConnectionSchemaMetadata(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudIntegrationsV1alphaConnectionSchemaMetadata.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists Connections in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource of the Connection, of the form:
  /// `projects / * /locations / * `
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Filter.
  ///
  /// [orderBy] - Order by parameters.
  ///
  /// [pageSize] - Page size.
  ///
  /// [pageToken] - Page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIntegrationsV1alphaListConnectionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIntegrationsV1alphaListConnectionsResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/connections';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudIntegrationsV1alphaListConnectionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsConnectionsRuntimeActionSchemasResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsConnectionsRuntimeActionSchemasResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Lists the JSON schemas for the inputs and outputs of actions, filtered by
  /// action name.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource of RuntimeActionSchema. Format:
  /// projects/{project}/locations/{location}/connections/{connection}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connections/\[^/\]+$`.
  ///
  /// [filter] - Filter. Only the action field with literal equality operator is
  /// supported.
  ///
  /// [pageSize] - Page size.
  ///
  /// [pageToken] - Page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudIntegrationsV1alphaListRuntimeActionSchemasResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIntegrationsV1alphaListRuntimeActionSchemasResponse>
  list(
    core.String parent, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/runtimeActionSchemas';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudIntegrationsV1alphaListRuntimeActionSchemasResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsConnectionsRuntimeEntitySchemasResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsConnectionsRuntimeEntitySchemasResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Lists the JSON schemas for the properties of runtime entities, filtered by
  /// entity name.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource of RuntimeEntitySchema. Format:
  /// projects/{project}/locations/{location}/connections/{connection}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connections/\[^/\]+$`.
  ///
  /// [filter] - Filter. Only the entity field with literal equality operator is
  /// supported.
  ///
  /// [pageSize] - Page size.
  ///
  /// [pageToken] - Page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudIntegrationsV1alphaListRuntimeEntitySchemasResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIntegrationsV1alphaListRuntimeEntitySchemasResponse>
  list(
    core.String parent, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/runtimeEntitySchemas';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudIntegrationsV1alphaListRuntimeEntitySchemasResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsIntegrationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsIntegrationsExecutionsResource get executions =>
      ProjectsLocationsIntegrationsExecutionsResource(_requester);
  ProjectsLocationsIntegrationsVersionsResource get versions =>
      ProjectsLocationsIntegrationsVersionsResource(_requester);

  ProjectsLocationsIntegrationsResource(commons.ApiRequester client)
    : _requester = client;

  /// Delete the selected integration and all versions inside
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The location resource of the request.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/integrations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Executes integrations synchronously by passing the trigger id in the
  /// request body.
  ///
  /// The request is not returned until the requested executions are either
  /// fulfilled or experienced an error. If the integration name is not
  /// specified (passing `-`), all of the associated integration under the given
  /// trigger_id will be executed. Otherwise only the specified integration for
  /// the given `trigger_id` is executed. This is helpful for execution the
  /// integration from UI.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The integration resource name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/integrations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudIntegrationsV1alphaExecuteIntegrationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIntegrationsV1alphaExecuteIntegrationsResponse>
  execute(
    GoogleCloudIntegrationsV1alphaExecuteIntegrationsRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':execute';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIntegrationsV1alphaExecuteIntegrationsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Executes an integration on receiving events from Integration Connector
  /// triggers, Eventarc or CPS Trigger.
  ///
  /// Input data to integration is received in body in json format
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The integration resource name. Format:
  /// projects/{gcp_project_id}/locations/{location}/integrations/{integration_id}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/integrations/\[^/\]+$`.
  ///
  /// [triggerId] - Required. Id of the integration trigger config. The
  /// trigger_id is in the format:
  /// `integration_connector_trigger/projects/{gcp_project_id}/location/{location}/connections/{connection_name}/subscriptions/{subscription_name}`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIntegrationsV1alphaExecuteEventResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIntegrationsV1alphaExecuteEventResponse> executeEvent(
    core.String name, {
    core.String? triggerId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (triggerId != null) 'triggerId': [triggerId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':executeEvent';

    final response_ = await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
    );
    return GoogleCloudIntegrationsV1alphaExecuteEventResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Returns the list of all integrations in the specified project.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Project and location from which the integrations
  /// should be listed. Format: projects/{project}
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Filter on fields of IntegrationVersion. Fields can be compared
  /// with literal values by use of ":" (containment), "=" (equality), "\>"
  /// (greater), "\<" (less than), \>=" (greater than or equal to), "\<=" (less
  /// than or equal to), and "!=" (inequality) operators. Negation, conjunction,
  /// and disjunction are written using NOT, AND, and OR keywords. For example,
  /// organization_id=\"1\" AND state=ACTIVE AND description:"test". Filtering
  /// cannot be performed on repeated fields like `task_config`.
  ///
  /// [orderBy] - The results would be returned in order you specified here.
  /// Supported sort keys are: Descending sort order by "last_modified_time",
  /// "created_time", "snapshot_number". Ascending sort order by the integration
  /// name.
  ///
  /// [pageSize] - The page size for the resquest.
  ///
  /// [pageToken] - The page token for the resquest.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIntegrationsV1alphaListIntegrationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIntegrationsV1alphaListIntegrationsResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/integrations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudIntegrationsV1alphaListIntegrationsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Schedules an integration for execution by passing the trigger id and the
  /// scheduled time in the request body.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The integration resource name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/integrations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudIntegrationsV1alphaScheduleIntegrationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIntegrationsV1alphaScheduleIntegrationsResponse>
  schedule(
    GoogleCloudIntegrationsV1alphaScheduleIntegrationsRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':schedule';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIntegrationsV1alphaScheduleIntegrationsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Searches and returns the list of integrations in the specified project.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Project and location from which the integrations
  /// should be listed. Format: projects / * /locations / *
  /// /resources/integrations
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [enableNaturalLanguageQueryUnderstanding] - Optional. Whether to enable
  /// natural language query understanding.
  ///
  /// [filter] - Optional. The pre-filter to be applied to the search. This
  /// should follow the expressions defined in
  /// https://cloud.google.com/generative-ai-app-builder/docs/filter-search-metadata.
  /// For example, "status:ANY("ACTIVE")" will return all the resources whose
  /// status contains the "ACTIVE".
  ///
  /// [pageSize] - Optional. The maximum number of results to return. The
  /// service may return fewer than this value. If unspecified, at most 10
  /// results will be returned. The maximum value is 100; values above 100 will
  /// be coerced to 100.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `SearchIntegrations` call. Provide this to retrieve the subsequent page.
  /// When paginating, all other parameters provided to `SearchIntegrations`
  /// must match the call that provided the page token.
  ///
  /// [query] - Required. The user query
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudIntegrationsV1alphaSearchIntegrationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIntegrationsV1alphaSearchIntegrationsResponse> search(
    core.String parent, {
    core.bool? enableNaturalLanguageQueryUnderstanding,
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? query,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (enableNaturalLanguageQueryUnderstanding != null)
        'enableNaturalLanguageQueryUnderstanding': [
          '${enableNaturalLanguageQueryUnderstanding}',
        ],
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (query != null) 'query': [query],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/integrations:search';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudIntegrationsV1alphaSearchIntegrationsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Execute the integration in draft state
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. Auto-generated primary key.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/integrations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIntegrationsV1alphaTestIntegrationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIntegrationsV1alphaTestIntegrationsResponse> test(
    GoogleCloudIntegrationsV1alphaTestIntegrationsRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':test';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIntegrationsV1alphaTestIntegrationsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsIntegrationsExecutionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsIntegrationsExecutionsSuspensionsResource get suspensions =>
      ProjectsLocationsIntegrationsExecutionsSuspensionsResource(_requester);

  ProjectsLocationsIntegrationsExecutionsResource(commons.ApiRequester client)
    : _requester = client;

  /// Cancellation of an execution and associated sub-executions.
  ///
  /// This will not cancel an IN_PROCESS or completed(SUCCESSFUL, FAILED or
  /// CANCELLED) executions.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The execution resource name. Format:
  /// projects/{gcp_project_id}/locations/{location}/products/{product}/integrations/{integration_id}/executions/{execution_id}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/integrations/\[^/\]+/executions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIntegrationsV1alphaCancelExecutionResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIntegrationsV1alphaCancelExecutionResponse> cancel(
    GoogleCloudIntegrationsV1alphaCancelExecutionRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':cancel';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIntegrationsV1alphaCancelExecutionResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Download the execution.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The execution resource name. Format:
  /// projects/{gcp_project_id}/locations/{location}/products/{product}/integrations/{integration_id}/executions/{execution_id}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/integrations/\[^/\]+/executions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudIntegrationsV1alphaDownloadExecutionResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIntegrationsV1alphaDownloadExecutionResponse>
  download(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':download';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudIntegrationsV1alphaDownloadExecutionResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Get an execution in the specified project.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The execution resource name. Format:
  /// projects/{gcp_project_id}/locations/{location}/products/{product}/integrations/{integration_id}/executions/{execution_id}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/integrations/\[^/\]+/executions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIntegrationsV1alphaExecution].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIntegrationsV1alphaExecution> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudIntegrationsV1alphaExecution.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists the results of all the integration executions.
  ///
  /// The response includes the same information as the
  /// [execution log](https://cloud.google.com/application-integration/docs/viewing-logs)
  /// in the Integration UI.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource name of the integration
  /// execution.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/integrations/\[^/\]+$`.
  ///
  /// [filter] - Optional. Standard filter field, we support filtering on
  /// following fields: workflow_name: the name of the integration.
  /// CreateTimestamp: the execution created time. event_execution_state: the
  /// state of the executions. execution_id: the id of the execution.
  /// trigger_id: the id of the trigger. parameter_type: the type of the
  /// parameters involved in the execution. All fields support for EQUALS, in
  /// additional: CreateTimestamp support for LESS_THAN, GREATER_THAN
  /// ParameterType support for HAS For example: "parameter_type" HAS \"string\"
  /// Also supports operators like AND, OR, NOT For example, trigger_id=\"id1\"
  /// AND workflow_name=\"testWorkflow\"
  ///
  /// [filterParams_customFilter] - Optional user-provided custom filter.
  ///
  /// [filterParams_endTime] - End timestamp.
  ///
  /// [filterParams_eventStatuses] - List of possible event statuses.
  ///
  /// [filterParams_executionId] - Execution id.
  ///
  /// [filterParams_parameterKey] - Param key. DEPRECATED. User
  /// parameter_pair_key instead.
  ///
  /// [filterParams_parameterPairKey] - Param key in the key value pair filter.
  ///
  /// [filterParams_parameterPairValue] - Param value in the key value pair
  /// filter.
  ///
  /// [filterParams_parameterType] - Param type.
  ///
  /// [filterParams_parameterValue] - Param value. DEPRECATED. User
  /// parameter_pair_value instead.
  ///
  /// [filterParams_startTime] - Start timestamp.
  ///
  /// [filterParams_taskStatuses] - List of possible task statuses.
  ///
  /// [filterParams_workflowName] - Workflow name.
  ///
  /// [orderBy] - Optional. The results would be returned in order you specified
  /// here. Currently supporting "create_time".
  ///
  /// [pageSize] - Optional. The size of entries in the response.
  ///
  /// [pageToken] - Optional. The token returned in the previous response.
  ///
  /// [readMask] - Optional. View mask for the response data. If set, only the
  /// field specified will be returned as part of the result. If not set, all
  /// fields in Execution will be filled and returned. Supported fields:
  /// trigger_id execution_method create_time update_time execution_details
  /// execution_details.state execution_details.execution_snapshots
  /// execution_details.attempt_stats
  /// execution_details.event_execution_snapshots_size request_parameters
  /// cloud_logging_details snapshot_number replay_info
  ///
  /// [refreshAcl] - Optional. If true, the service will use the most recent acl
  /// information to list event execution infos and renew the acl cache. Note
  /// that fetching the most recent acl is synchronous, so it will increase RPC
  /// call latency.
  ///
  /// [snapshotMetadataWithoutParams] - Optional. If true, the service will
  /// provide execution info with snapshot metadata only i.e. without event
  /// parameters.
  ///
  /// [truncateParams] - Optional. If true, the service will truncate the params
  /// to only keep the first 1000 characters of string params and empty the
  /// executions in order to make response smaller. Only works for UI and when
  /// the params fields are not filtered out.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIntegrationsV1alphaListExecutionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIntegrationsV1alphaListExecutionsResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? filterParams_customFilter,
    core.String? filterParams_endTime,
    core.List<core.String>? filterParams_eventStatuses,
    core.String? filterParams_executionId,
    core.String? filterParams_parameterKey,
    core.String? filterParams_parameterPairKey,
    core.String? filterParams_parameterPairValue,
    core.String? filterParams_parameterType,
    core.String? filterParams_parameterValue,
    core.String? filterParams_startTime,
    core.List<core.String>? filterParams_taskStatuses,
    core.String? filterParams_workflowName,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? readMask,
    core.bool? refreshAcl,
    core.bool? snapshotMetadataWithoutParams,
    core.bool? truncateParams,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (filterParams_customFilter != null)
        'filterParams.customFilter': [filterParams_customFilter],
      if (filterParams_endTime != null)
        'filterParams.endTime': [filterParams_endTime],
      if (filterParams_eventStatuses != null)
        'filterParams.eventStatuses': filterParams_eventStatuses,
      if (filterParams_executionId != null)
        'filterParams.executionId': [filterParams_executionId],
      if (filterParams_parameterKey != null)
        'filterParams.parameterKey': [filterParams_parameterKey],
      if (filterParams_parameterPairKey != null)
        'filterParams.parameterPairKey': [filterParams_parameterPairKey],
      if (filterParams_parameterPairValue != null)
        'filterParams.parameterPairValue': [filterParams_parameterPairValue],
      if (filterParams_parameterType != null)
        'filterParams.parameterType': [filterParams_parameterType],
      if (filterParams_parameterValue != null)
        'filterParams.parameterValue': [filterParams_parameterValue],
      if (filterParams_startTime != null)
        'filterParams.startTime': [filterParams_startTime],
      if (filterParams_taskStatuses != null)
        'filterParams.taskStatuses': filterParams_taskStatuses,
      if (filterParams_workflowName != null)
        'filterParams.workflowName': [filterParams_workflowName],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (readMask != null) 'readMask': [readMask],
      if (refreshAcl != null) 'refreshAcl': ['${refreshAcl}'],
      if (snapshotMetadataWithoutParams != null)
        'snapshotMetadataWithoutParams': ['${snapshotMetadataWithoutParams}'],
      if (truncateParams != null) 'truncateParams': ['${truncateParams}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/executions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudIntegrationsV1alphaListExecutionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Re-execute an existing execution, with same request parameters and
  /// execution strategy.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Next ID: 6 The execution resource name. Format:
  /// projects/{gcp_project_id}/locations/{location}/integrations/{integration}/executions/{execution_id}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/integrations/\[^/\]+/executions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIntegrationsV1alphaReplayExecutionResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIntegrationsV1alphaReplayExecutionResponse> replay(
    GoogleCloudIntegrationsV1alphaReplayExecutionRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':replay';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIntegrationsV1alphaReplayExecutionResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsIntegrationsExecutionsSuspensionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsIntegrationsExecutionsSuspensionsResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// * Lifts suspension for the Suspension task.
  ///
  /// Fetch corresponding suspension with provided suspension Id, resolve
  /// suspension, and set up suspension result for the Suspension Task.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource that the suspension belongs to.
  /// "projects/{project}/locations/{location}/products/{product}/integrations/{integration}/executions/{execution}/suspensions/{suspenion}"
  /// format.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/integrations/\[^/\]+/executions/\[^/\]+/suspensions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIntegrationsV1alphaLiftSuspensionResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIntegrationsV1alphaLiftSuspensionResponse> lift(
    GoogleCloudIntegrationsV1alphaLiftSuspensionRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':lift';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIntegrationsV1alphaLiftSuspensionResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// * Lists suspensions associated with a specific execution.
  ///
  /// Only those with permissions to resolve the relevant suspensions will be
  /// able to view them.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required.
  /// projects/{gcp_project_id}/locations/{location}/products/{product}/integrations/{integration_name}/executions/{execution_name}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/integrations/\[^/\]+/executions/\[^/\]+$`.
  ///
  /// [filter] - Standard filter field.
  ///
  /// [orderBy] - Field name to order by.
  ///
  /// [pageSize] - Maximum number of entries in the response.
  ///
  /// [pageToken] - Token to retrieve a specific page.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIntegrationsV1alphaListSuspensionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIntegrationsV1alphaListSuspensionsResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/suspensions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudIntegrationsV1alphaListSuspensionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// * Resolves (lifts/rejects) any number of suspensions.
  ///
  /// If the integration is already running, only the status of the suspension
  /// is updated. Otherwise, the suspended integration will begin execution
  /// again.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required.
  /// projects/{gcp_project_id}/locations/{location}/products/{product}/integrations/{integration_name}/executions/{execution_name}/suspensions/{suspension_id}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/integrations/\[^/\]+/executions/\[^/\]+/suspensions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudIntegrationsV1alphaResolveSuspensionResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIntegrationsV1alphaResolveSuspensionResponse> resolve(
    GoogleCloudIntegrationsV1alphaResolveSuspensionRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':resolve';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIntegrationsV1alphaResolveSuspensionResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsIntegrationsVersionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsIntegrationsVersionsTestCasesResource get testCases =>
      ProjectsLocationsIntegrationsVersionsTestCasesResource(_requester);

  ProjectsLocationsIntegrationsVersionsResource(commons.ApiRequester client)
    : _requester = client;

  /// Create a integration with a draft version in the specified project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource where this version will be
  /// created. Format:
  /// projects/{project}/locations/{location}/integrations/{integration}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/integrations/\[^/\]+$`.
  ///
  /// [createSampleIntegrations] - Optional. Optional. Indicates if sample
  /// workflow should be created.
  ///
  /// [newIntegration] - Set this flag to true, if draft version is to be
  /// created for a brand new integration. False, if the request is for an
  /// existing integration. For backward compatibility reasons, even if this
  /// flag is set to `false` and no existing integration is found, a new draft
  /// integration will still be created.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIntegrationsV1alphaIntegrationVersion].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIntegrationsV1alphaIntegrationVersion> create(
    GoogleCloudIntegrationsV1alphaIntegrationVersion request,
    core.String parent, {
    core.bool? createSampleIntegrations,
    core.bool? newIntegration,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (createSampleIntegrations != null)
        'createSampleIntegrations': ['${createSampleIntegrations}'],
      if (newIntegration != null) 'newIntegration': ['${newIntegration}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/versions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIntegrationsV1alphaIntegrationVersion.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Soft-deletes the integration.
  ///
  /// Changes the status of the integration to ARCHIVED. If the integration
  /// being ARCHIVED is tagged as "HEAD", the tag is removed from this snapshot
  /// and set to the previous non-ARCHIVED snapshot. The PUBLISH_REQUESTED,
  /// DUE_FOR_DELETION tags are removed too. This RPC throws an exception if the
  /// version being deleted is DRAFT, and if the `locked_by` user is not the
  /// same as the user performing the Delete. Audit fields updated include
  /// last_modified_timestamp, last_modified_by. Any existing lock is released
  /// when Deleting a integration. Currently, there is no undelete mechanism.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The version to delete. Format:
  /// projects/{project}/locations/{location}/integrations/{integration}/versions/{version}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/integrations/\[^/\]+/versions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Downloads an integration.
  ///
  /// Retrieves the `IntegrationVersion` for a given `integration_id` and
  /// returns the response as a string.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The version to download. Format:
  /// projects/{project}/locations/{location}/integrations/{integration}/versions/{version}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/integrations/\[^/\]+/versions/\[^/\]+$`.
  ///
  /// [fileFormat] - File format for download request.
  /// Possible string values are:
  /// - "FILE_FORMAT_UNSPECIFIED" : Unspecified file format
  /// - "JSON" : JSON File Format
  /// - "YAML" : YAML File Format
  ///
  /// [files] - Optional. Integration related file to download like Integration
  /// Json, Config variable, testcase etc.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudIntegrationsV1alphaDownloadIntegrationVersionResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIntegrationsV1alphaDownloadIntegrationVersionResponse>
  download(
    core.String name, {
    core.String? fileFormat,
    core.List<core.String>? files,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (fileFormat != null) 'fileFormat': [fileFormat],
      if (files != null) 'files': files,
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':download';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudIntegrationsV1alphaDownloadIntegrationVersionResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Downloads an Integration version package like
  /// IntegrationVersion,Integration Config etc.
  ///
  /// Retrieves the IntegrationVersion package for a given `integration_id` and
  /// returns the response as a JSON.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Integration version name Format:
  /// projects/{project}/locations/{location}/integrations/{integration}/versions/{version}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/integrations/\[^/\]+/versions/\[^/\]+$`.
  ///
  /// [files] - Optional. Integration related file to download like Integration
  /// Version, Config variable, testcase etc.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudIntegrationsV1alphaDownloadJsonPackageResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIntegrationsV1alphaDownloadJsonPackageResponse>
  downloadJsonPackage(
    core.String name, {
    core.List<core.String>? files,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (files != null) 'files': files,
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':downloadJsonPackage';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudIntegrationsV1alphaDownloadJsonPackageResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Get a integration in the specified project.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The version to retrieve. Format:
  /// projects/{project}/locations/{location}/integrations/{integration}/versions/{version}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/integrations/\[^/\]+/versions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIntegrationsV1alphaIntegrationVersion].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIntegrationsV1alphaIntegrationVersion> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudIntegrationsV1alphaIntegrationVersion.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Returns the list of all integration versions in the specified project.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource where this version will be
  /// created. Format:
  /// projects/{project}/locations/{location}/integrations/{integration}
  /// Specifically, when parent equals: 1. projects//locations//integrations/,
  /// Meaning: "List versions (with filter) for a particular integration". 2.
  /// projects//locations//integrations/- Meaning: "List versions (with filter)
  /// for a client within a particular region".
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/integrations/\[^/\]+$`.
  ///
  /// [fieldMask] - The field mask which specifies the particular data to be
  /// returned.
  ///
  /// [filter] - Filter on fields of IntegrationVersion. Fields can be compared
  /// with literal values by use of ":" (containment), "=" (equality), "\>"
  /// (greater), "\<" (less than), \>=" (greater than or equal to), "\<=" (less
  /// than or equal to), and "!=" (inequality) operators. Negation, conjunction,
  /// and disjunction are written using NOT, AND, and OR keywords. For example,
  /// organization_id=\"1\" AND state=ACTIVE AND description:"test". Filtering
  /// cannot be performed on repeated fields like `task_config`.
  ///
  /// [orderBy] - The results would be returned in order you specified here.
  /// Currently supported sort keys are: Descending sort order for
  /// "last\_modified\_time", "created\_time", and "snapshot\_number". Ascending
  /// sort order for `name`.
  ///
  /// [pageSize] - The maximum number of versions to return. The service may
  /// return fewer than this value. If unspecified, at most 50 versions will be
  /// returned. The maximum value is 1000; values above 1000 will be coerced to
  /// 1000.
  ///
  /// [pageToken] - A page token, received from a previous
  /// `ListIntegrationVersions` call. Provide this to retrieve the subsequent
  /// page. When paginating, all other parameters provided to
  /// `ListIntegrationVersions` must match the call that provided the page
  /// token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudIntegrationsV1alphaListIntegrationVersionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIntegrationsV1alphaListIntegrationVersionsResponse>
  list(
    core.String parent, {
    core.String? fieldMask,
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (fieldMask != null) 'fieldMask': [fieldMask],
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/versions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudIntegrationsV1alphaListIntegrationVersionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Update a integration with a draft version in the specified project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. Auto-generated primary key.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/integrations/\[^/\]+/versions/\[^/\]+$`.
  ///
  /// [updateMask] - Field mask specifying the fields in the above integration
  /// that have been modified and need to be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIntegrationsV1alphaIntegrationVersion].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIntegrationsV1alphaIntegrationVersion> patch(
    GoogleCloudIntegrationsV1alphaIntegrationVersion request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIntegrationsV1alphaIntegrationVersion.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// This RPC throws an exception if the integration is in ARCHIVED or ACTIVE
  /// state.
  ///
  /// This RPC throws an exception if the version being published is DRAFT, and
  /// if the `locked_by` user is not the same as the user performing the
  /// Publish. Audit fields updated include last_published_timestamp,
  /// last_published_by, last_modified_timestamp, last_modified_by. Any existing
  /// lock is on this integration is released.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The version to publish. Format:
  /// projects/{project}/locations/{location}/integrations/{integration}/versions/{version}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/integrations/\[^/\]+/versions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudIntegrationsV1alphaPublishIntegrationVersionResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIntegrationsV1alphaPublishIntegrationVersionResponse>
  publish(
    GoogleCloudIntegrationsV1alphaPublishIntegrationVersionRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':publish';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIntegrationsV1alphaPublishIntegrationVersionResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Sets the status of the ACTIVE integration to SNAPSHOT with a new tag
  /// "PREVIOUSLY_PUBLISHED" after validating it.
  ///
  /// The "HEAD" and "PUBLISH_REQUESTED" tags do not change. This RPC throws an
  /// exception if the version being snapshot is not ACTIVE. Audit fields added
  /// include action, action_by, action_timestamp.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The version to deactivate. Format:
  /// projects/{project}/locations/{location}/integrations/{integration}/versions/{version}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/integrations/\[^/\]+/versions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> unpublish(
    GoogleCloudIntegrationsV1alphaUnpublishIntegrationVersionRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':unpublish';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Uploads an integration.
  ///
  /// The content can be a previously downloaded integration. Performs the same
  /// function as CreateDraftIntegrationVersion, but accepts input in a string
  /// format, which holds the complete representation of the IntegrationVersion
  /// content.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The version to upload. Format:
  /// projects/{project}/locations/{location}/integrations/{integration}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/integrations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudIntegrationsV1alphaUploadIntegrationVersionResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIntegrationsV1alphaUploadIntegrationVersionResponse>
  upload(
    GoogleCloudIntegrationsV1alphaUploadIntegrationVersionRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/versions:upload';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIntegrationsV1alphaUploadIntegrationVersionResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsIntegrationsVersionsTestCasesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsIntegrationsVersionsTestCasesResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Creates a new test case
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource where this test case will be
  /// created. Format:
  /// projects/{project}/locations/{location}/integrations/{integration}/versions/{integration_version}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/integrations/\[^/\]+/versions/\[^/\]+$`.
  ///
  /// [testCaseId] - Required. Required
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIntegrationsV1alphaTestCase].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIntegrationsV1alphaTestCase> create(
    GoogleCloudIntegrationsV1alphaTestCase request,
    core.String parent, {
    core.String? testCaseId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (testCaseId != null) 'testCaseId': [testCaseId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/testCases';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIntegrationsV1alphaTestCase.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes a test case
  ///
  /// Request parameters:
  ///
  /// [name] - Required. ID for the test case to be deleted
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/integrations/\[^/\]+/versions/\[^/\]+/testCases/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Downloads a test case.
  ///
  /// Retrieves the `TestCase` for a given `test_case_id` and returns the
  /// response as a string.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The test case to download. Format:
  /// projects/{project}/locations/{location}/integrations/{integration}/versions/{integration_version}/testCases/{test_case_id}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/integrations/\[^/\]+/versions/\[^/\]+/testCases/\[^/\]+$`.
  ///
  /// [fileFormat] - File format for download request.
  /// Possible string values are:
  /// - "FILE_FORMAT_UNSPECIFIED" : Unspecified file format
  /// - "JSON" : JSON File Format
  /// - "YAML" : YAML File Format
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIntegrationsV1alphaDownloadTestCaseResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIntegrationsV1alphaDownloadTestCaseResponse> download(
    core.String name, {
    core.String? fileFormat,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (fileFormat != null) 'fileFormat': [fileFormat],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':download';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudIntegrationsV1alphaDownloadTestCaseResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Executes all test cases in an integration version.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource whose test cases are executed.
  /// Format:
  /// projects/{project}/locations/{location}/integrations/{integration}/versions/{integration_version}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/integrations/\[^/\]+/versions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIntegrationsV1alphaExecuteTestCasesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIntegrationsV1alphaExecuteTestCasesResponse> execute(
    GoogleCloudIntegrationsV1alphaExecuteTestCasesRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/testCases:execute';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIntegrationsV1alphaExecuteTestCasesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Executes functional test
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [testCaseName] - Required. Test case resource name
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/integrations/\[^/\]+/versions/\[^/\]+/testCases/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIntegrationsV1alphaExecuteTestCaseResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIntegrationsV1alphaExecuteTestCaseResponse>
  executeTest(
    GoogleCloudIntegrationsV1alphaExecuteTestCaseRequest request,
    core.String testCaseName, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$testCaseName') + ':executeTest';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIntegrationsV1alphaExecuteTestCaseResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Get a test case
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The ID of the test case to retrieve
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/integrations/\[^/\]+/versions/\[^/\]+/testCases/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIntegrationsV1alphaTestCase].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIntegrationsV1alphaTestCase> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudIntegrationsV1alphaTestCase.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists all the test cases that satisfy the filters.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource where this TestCase was created.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/integrations/\[^/\]+/versions/\[^/\]+$`.
  ///
  /// [filter] - Optional. Standard filter field. Filtering as supported in
  /// https://developers.google.com/authorized-buyers/apis/guides/list-filters.
  ///
  /// [orderBy] - Optional. The results would be returned in order specified
  /// here. Currently supported sort keys are: Descending sort order for
  /// "last_modified_time", "created_time". Ascending sort order for "name".
  ///
  /// [pageSize] - Optional. The maximum number of test cases to return. The
  /// service may return fewer than this value. If unspecified, at most 100 test
  /// cases will be returned.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListTestCases` call. Provide this to retrieve the subsequent page. When
  /// paginating, all other parameters provided to `ListTestCases` must match
  /// the call that provided the page token.
  ///
  /// [readMask] - Optional. The mask which specifies fields that need to be
  /// returned in the TestCases's response.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIntegrationsV1alphaListTestCasesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIntegrationsV1alphaListTestCasesResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? readMask,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (readMask != null) 'readMask': [readMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/testCases';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudIntegrationsV1alphaListTestCasesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates a test case
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. Auto-generated primary key.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/integrations/\[^/\]+/versions/\[^/\]+/testCases/\[^/\]+$`.
  ///
  /// [updateMask] - Optional. Field mask specifying the fields in the above
  /// integration that have been modified and need to be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIntegrationsV1alphaTestCase].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIntegrationsV1alphaTestCase> patch(
    GoogleCloudIntegrationsV1alphaTestCase request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIntegrationsV1alphaTestCase.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Clear the lock fields and assign them to current user
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The ID of test case to takeover edit lock. Format:
  /// projects/{project}/locations/{location}/integrations/{integration}/versions/{integration_version}/testCases/{test_case_id}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/integrations/\[^/\]+/versions/\[^/\]+/testCases/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIntegrationsV1alphaTestCase].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIntegrationsV1alphaTestCase> takeoverEditLock(
    GoogleCloudIntegrationsV1alphaTakeoverTestCaseEditLockRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':takeoverEditLock';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIntegrationsV1alphaTestCase.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Uploads a test case.
  ///
  /// The content can be a previously downloaded test case. Performs the same
  /// function as CreateTestCase, but accepts input in a string format, which
  /// holds the complete representation of the TestCase content.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The test case to upload. Format:
  /// projects/{project}/locations/{location}/integrations/{integration}/versions/{integration_version}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/integrations/\[^/\]+/versions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIntegrationsV1alphaUploadTestCaseResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIntegrationsV1alphaUploadTestCaseResponse> upload(
    GoogleCloudIntegrationsV1alphaUploadTestCaseRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/testCases:upload';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIntegrationsV1alphaUploadTestCaseResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsProductsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsProductsAuthConfigsResource get authConfigs =>
      ProjectsLocationsProductsAuthConfigsResource(_requester);
  ProjectsLocationsProductsCertificatesResource get certificates =>
      ProjectsLocationsProductsCertificatesResource(_requester);
  ProjectsLocationsProductsCloudFunctionsResource get cloudFunctions =>
      ProjectsLocationsProductsCloudFunctionsResource(_requester);
  ProjectsLocationsProductsIntegrationsResource get integrations =>
      ProjectsLocationsProductsIntegrationsResource(_requester);
  ProjectsLocationsProductsSfdcInstancesResource get sfdcInstances =>
      ProjectsLocationsProductsSfdcInstancesResource(_requester);

  ProjectsLocationsProductsResource(commons.ApiRequester client)
    : _requester = client;
}

class ProjectsLocationsProductsAuthConfigsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsProductsAuthConfigsResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates an auth config record.
  ///
  /// Fetch corresponding credentials for specific auth types, e.g. access token
  /// for OAuth 2.0, JWT token for JWT. Encrypt the auth config with Cloud KMS
  /// and store the encrypted credentials in Spanner. Returns the encrypted auth
  /// config.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. "projects/{project}/locations/{location}" format.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/products/\[^/\]+$`.
  ///
  /// [clientCertificate_encryptedPrivateKey] - The ssl certificate encoded in
  /// PEM format. This string must include the begin header and end footer
  /// lines. For example, -----BEGIN CERTIFICATE-----
  /// MIICTTCCAbagAwIBAgIJAPT0tSKNxan/MA0GCSqGSIb3DQEBCwUAMCoxFzAVBgNV
  /// BAoTDkdvb2dsZSBURVNUSU5HMQ8wDQYDVQQDEwZ0ZXN0Q0EwHhcNMTUwMTAxMDAw
  /// MDAwWhcNMjUwMTAxMDAwMDAwWjAuMRcwFQYDVQQKEw5Hb29nbGUgVEVTVElORzET
  /// MBEGA1UEAwwKam9lQGJhbmFuYTCBnzANBgkqhkiG9w0BAQEFAAOBjQAwgYkCgYEA
  /// vDYFgMgxi5W488d9J7UpCInl0NXmZQpJDEHE4hvkaRlH7pnC71H0DLt0/3zATRP1
  /// JzY2+eqBmbGl4/sgZKYv8UrLnNyQNUTsNx1iZAfPUflf5FwgVsai8BM0pUciq1NB
  /// xD429VFcrGZNucvFLh72RuRFIKH8WUpiK/iZNFkWhZ0CAwEAAaN3MHUwDgYDVR0P
  /// AQH/BAQDAgWgMB0GA1UdJQQWMBQGCCsGAQUFBwMBBggrBgEFBQcDAjAMBgNVHRMB
  /// Af8EAjAAMBkGA1UdDgQSBBCVgnFBCWgL/iwCqnGrhTPQMBsGA1UdIwQUMBKAEKey
  /// Um2o4k2WiEVA0ldQvNYwDQYJKoZIhvcNAQELBQADgYEAYK986R4E3L1v+Q6esBtW
  /// JrUwA9UmJRSQr0N5w3o9XzarU37/bkjOP0Fw0k/A6Vv1n3vlciYfBFaBIam1qRHr
  /// 5dMsYf4CZS6w50r7hyzqyrwDoyNxkLnd2PdcHT/sym1QmflsjEs7pejtnohO6N2H
  /// wQW6M0H7Zt8claGRla4fKkg= -----END CERTIFICATE-----
  ///
  /// [clientCertificate_passphrase] - 'passphrase' should be left unset if
  /// private key is not encrypted. Note that 'passphrase' is not the password
  /// for web server, but an extra layer of security to protected private key.
  ///
  /// [clientCertificate_sslCertificate] - The ssl certificate encoded in PEM
  /// format. This string must include the begin header and end footer lines.
  /// For example, -----BEGIN CERTIFICATE-----
  /// MIICTTCCAbagAwIBAgIJAPT0tSKNxan/MA0GCSqGSIb3DQEBCwUAMCoxFzAVBgNV
  /// BAoTDkdvb2dsZSBURVNUSU5HMQ8wDQYDVQQDEwZ0ZXN0Q0EwHhcNMTUwMTAxMDAw
  /// MDAwWhcNMjUwMTAxMDAwMDAwWjAuMRcwFQYDVQQKEw5Hb29nbGUgVEVTVElORzET
  /// MBEGA1UEAwwKam9lQGJhbmFuYTCBnzANBgkqhkiG9w0BAQEFAAOBjQAwgYkCgYEA
  /// vDYFgMgxi5W488d9J7UpCInl0NXmZQpJDEHE4hvkaRlH7pnC71H0DLt0/3zATRP1
  /// JzY2+eqBmbGl4/sgZKYv8UrLnNyQNUTsNx1iZAfPUflf5FwgVsai8BM0pUciq1NB
  /// xD429VFcrGZNucvFLh72RuRFIKH8WUpiK/iZNFkWhZ0CAwEAAaN3MHUwDgYDVR0P
  /// AQH/BAQDAgWgMB0GA1UdJQQWMBQGCCsGAQUFBwMBBggrBgEFBQcDAjAMBgNVHRMB
  /// Af8EAjAAMBkGA1UdDgQSBBCVgnFBCWgL/iwCqnGrhTPQMBsGA1UdIwQUMBKAEKey
  /// Um2o4k2WiEVA0ldQvNYwDQYJKoZIhvcNAQELBQADgYEAYK986R4E3L1v+Q6esBtW
  /// JrUwA9UmJRSQr0N5w3o9XzarU37/bkjOP0Fw0k/A6Vv1n3vlciYfBFaBIam1qRHr
  /// 5dMsYf4CZS6w50r7hyzqyrwDoyNxkLnd2PdcHT/sym1QmflsjEs7pejtnohO6N2H
  /// wQW6M0H7Zt8claGRla4fKkg= -----END CERTIFICATE-----
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIntegrationsV1alphaAuthConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIntegrationsV1alphaAuthConfig> create(
    GoogleCloudIntegrationsV1alphaAuthConfig request,
    core.String parent, {
    core.String? clientCertificate_encryptedPrivateKey,
    core.String? clientCertificate_passphrase,
    core.String? clientCertificate_sslCertificate,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (clientCertificate_encryptedPrivateKey != null)
        'clientCertificate.encryptedPrivateKey': [
          clientCertificate_encryptedPrivateKey,
        ],
      if (clientCertificate_passphrase != null)
        'clientCertificate.passphrase': [clientCertificate_passphrase],
      if (clientCertificate_sslCertificate != null)
        'clientCertificate.sslCertificate': [clientCertificate_sslCertificate],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/authConfigs';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIntegrationsV1alphaAuthConfig.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes an auth config.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name that is associated with the AuthConfig.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/products/\[^/\]+/authConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets a complete auth config.
  ///
  /// If the auth config doesn't exist, Code.NOT_FOUND exception will be thrown.
  /// Returns the decrypted auth config.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name that is associated with the AuthConfig.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/products/\[^/\]+/authConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIntegrationsV1alphaAuthConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIntegrationsV1alphaAuthConfig> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudIntegrationsV1alphaAuthConfig.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists all auth configs that match the filter.
  ///
  /// Restrict to auth configs belong to the current client only.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The client, which owns this collection of
  /// AuthConfigs.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/products/\[^/\]+$`.
  ///
  /// [filter] - Filtering as supported in
  /// https://developers.google.com/authorized-buyers/apis/guides/list-filters.
  ///
  /// [pageSize] - The size of entries in the response. If unspecified, defaults
  /// to 100.
  ///
  /// [pageToken] - The token returned in the previous response.
  ///
  /// [readMask] - The mask which specifies fields that need to be returned in
  /// the AuthConfig's response.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIntegrationsV1alphaListAuthConfigsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIntegrationsV1alphaListAuthConfigsResponse> list(
    core.String parent, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? readMask,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (readMask != null) 'readMask': [readMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/authConfigs';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudIntegrationsV1alphaListAuthConfigsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates an auth config.
  ///
  /// If credential is updated, fetch the encrypted auth config from Spanner,
  /// decrypt with Cloud KMS key, update the credential fields, re-encrypt with
  /// Cloud KMS key and update the Spanner record. For other fields, directly
  /// update the Spanner record. Returns the encrypted auth config.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Resource name of the auth config. For more information, see
  /// Manage authentication profiles.
  /// projects/{project}/locations/{location}/authConfigs/{authConfig}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/products/\[^/\]+/authConfigs/\[^/\]+$`.
  ///
  /// [clientCertificate_encryptedPrivateKey] - The ssl certificate encoded in
  /// PEM format. This string must include the begin header and end footer
  /// lines. For example, -----BEGIN CERTIFICATE-----
  /// MIICTTCCAbagAwIBAgIJAPT0tSKNxan/MA0GCSqGSIb3DQEBCwUAMCoxFzAVBgNV
  /// BAoTDkdvb2dsZSBURVNUSU5HMQ8wDQYDVQQDEwZ0ZXN0Q0EwHhcNMTUwMTAxMDAw
  /// MDAwWhcNMjUwMTAxMDAwMDAwWjAuMRcwFQYDVQQKEw5Hb29nbGUgVEVTVElORzET
  /// MBEGA1UEAwwKam9lQGJhbmFuYTCBnzANBgkqhkiG9w0BAQEFAAOBjQAwgYkCgYEA
  /// vDYFgMgxi5W488d9J7UpCInl0NXmZQpJDEHE4hvkaRlH7pnC71H0DLt0/3zATRP1
  /// JzY2+eqBmbGl4/sgZKYv8UrLnNyQNUTsNx1iZAfPUflf5FwgVsai8BM0pUciq1NB
  /// xD429VFcrGZNucvFLh72RuRFIKH8WUpiK/iZNFkWhZ0CAwEAAaN3MHUwDgYDVR0P
  /// AQH/BAQDAgWgMB0GA1UdJQQWMBQGCCsGAQUFBwMBBggrBgEFBQcDAjAMBgNVHRMB
  /// Af8EAjAAMBkGA1UdDgQSBBCVgnFBCWgL/iwCqnGrhTPQMBsGA1UdIwQUMBKAEKey
  /// Um2o4k2WiEVA0ldQvNYwDQYJKoZIhvcNAQELBQADgYEAYK986R4E3L1v+Q6esBtW
  /// JrUwA9UmJRSQr0N5w3o9XzarU37/bkjOP0Fw0k/A6Vv1n3vlciYfBFaBIam1qRHr
  /// 5dMsYf4CZS6w50r7hyzqyrwDoyNxkLnd2PdcHT/sym1QmflsjEs7pejtnohO6N2H
  /// wQW6M0H7Zt8claGRla4fKkg= -----END CERTIFICATE-----
  ///
  /// [clientCertificate_passphrase] - 'passphrase' should be left unset if
  /// private key is not encrypted. Note that 'passphrase' is not the password
  /// for web server, but an extra layer of security to protected private key.
  ///
  /// [clientCertificate_sslCertificate] - The ssl certificate encoded in PEM
  /// format. This string must include the begin header and end footer lines.
  /// For example, -----BEGIN CERTIFICATE-----
  /// MIICTTCCAbagAwIBAgIJAPT0tSKNxan/MA0GCSqGSIb3DQEBCwUAMCoxFzAVBgNV
  /// BAoTDkdvb2dsZSBURVNUSU5HMQ8wDQYDVQQDEwZ0ZXN0Q0EwHhcNMTUwMTAxMDAw
  /// MDAwWhcNMjUwMTAxMDAwMDAwWjAuMRcwFQYDVQQKEw5Hb29nbGUgVEVTVElORzET
  /// MBEGA1UEAwwKam9lQGJhbmFuYTCBnzANBgkqhkiG9w0BAQEFAAOBjQAwgYkCgYEA
  /// vDYFgMgxi5W488d9J7UpCInl0NXmZQpJDEHE4hvkaRlH7pnC71H0DLt0/3zATRP1
  /// JzY2+eqBmbGl4/sgZKYv8UrLnNyQNUTsNx1iZAfPUflf5FwgVsai8BM0pUciq1NB
  /// xD429VFcrGZNucvFLh72RuRFIKH8WUpiK/iZNFkWhZ0CAwEAAaN3MHUwDgYDVR0P
  /// AQH/BAQDAgWgMB0GA1UdJQQWMBQGCCsGAQUFBwMBBggrBgEFBQcDAjAMBgNVHRMB
  /// Af8EAjAAMBkGA1UdDgQSBBCVgnFBCWgL/iwCqnGrhTPQMBsGA1UdIwQUMBKAEKey
  /// Um2o4k2WiEVA0ldQvNYwDQYJKoZIhvcNAQELBQADgYEAYK986R4E3L1v+Q6esBtW
  /// JrUwA9UmJRSQr0N5w3o9XzarU37/bkjOP0Fw0k/A6Vv1n3vlciYfBFaBIam1qRHr
  /// 5dMsYf4CZS6w50r7hyzqyrwDoyNxkLnd2PdcHT/sym1QmflsjEs7pejtnohO6N2H
  /// wQW6M0H7Zt8claGRla4fKkg= -----END CERTIFICATE-----
  ///
  /// [updateMask] - Field mask specifying the fields in the above AuthConfig
  /// that have been modified and need to be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIntegrationsV1alphaAuthConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIntegrationsV1alphaAuthConfig> patch(
    GoogleCloudIntegrationsV1alphaAuthConfig request,
    core.String name, {
    core.String? clientCertificate_encryptedPrivateKey,
    core.String? clientCertificate_passphrase,
    core.String? clientCertificate_sslCertificate,
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (clientCertificate_encryptedPrivateKey != null)
        'clientCertificate.encryptedPrivateKey': [
          clientCertificate_encryptedPrivateKey,
        ],
      if (clientCertificate_passphrase != null)
        'clientCertificate.passphrase': [clientCertificate_passphrase],
      if (clientCertificate_sslCertificate != null)
        'clientCertificate.sslCertificate': [clientCertificate_sslCertificate],
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIntegrationsV1alphaAuthConfig.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsProductsCertificatesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsProductsCertificatesResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a new certificate.
  ///
  /// The certificate will be registered to the trawler service and will be
  /// encrypted using cloud KMS and stored in Spanner Returns the certificate.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. "projects/{project}/locations/{location}" format.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/products/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIntegrationsV1alphaCertificate].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIntegrationsV1alphaCertificate> create(
    GoogleCloudIntegrationsV1alphaCertificate request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/certificates';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIntegrationsV1alphaCertificate.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Delete a certificate
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name that is associated with the Certificate.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/products/\[^/\]+/certificates/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Get a certificates in the specified project.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The certificate to retrieve. Format:
  /// projects/{project}/locations/{location}/certificates/{certificate}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/products/\[^/\]+/certificates/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIntegrationsV1alphaCertificate].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIntegrationsV1alphaCertificate> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudIntegrationsV1alphaCertificate.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// List all the certificates that match the filter.
  ///
  /// Restrict to certificate of current client only.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The client, which owns this collection of
  /// Certificates.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/products/\[^/\]+$`.
  ///
  /// [filter] - Filtering as supported in
  /// https://developers.google.com/authorized-buyers/apis/guides/list-filters.
  ///
  /// [pageSize] - The size of entries in the response. If unspecified, defaults
  /// to 100.
  ///
  /// [pageToken] - The token returned in the previous response.
  ///
  /// [readMask] - The mask which specifies fields that need to be returned in
  /// the Certificate's response.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIntegrationsV1alphaListCertificatesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIntegrationsV1alphaListCertificatesResponse> list(
    core.String parent, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? readMask,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (readMask != null) 'readMask': [readMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/certificates';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudIntegrationsV1alphaListCertificatesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the certificate by id.
  ///
  /// If new certificate file is updated, it will register with the trawler
  /// service, re-encrypt with cloud KMS and update the Spanner record. Other
  /// fields will directly update the Spanner record. Returns the Certificate.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. Auto generated primary key
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/products/\[^/\]+/certificates/\[^/\]+$`.
  ///
  /// [updateMask] - Field mask specifying the fields in the above Certificate
  /// that have been modified and need to be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIntegrationsV1alphaCertificate].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIntegrationsV1alphaCertificate> patch(
    GoogleCloudIntegrationsV1alphaCertificate request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIntegrationsV1alphaCertificate.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsProductsCloudFunctionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsProductsCloudFunctionsResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a cloud function project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project that the executed integration belongs to.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/products/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudIntegrationsV1alphaCreateCloudFunctionResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIntegrationsV1alphaCreateCloudFunctionResponse>
  create(
    GoogleCloudIntegrationsV1alphaCreateCloudFunctionRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/cloudFunctions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIntegrationsV1alphaCreateCloudFunctionResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsProductsIntegrationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsProductsIntegrationsExecutionsResource get executions =>
      ProjectsLocationsProductsIntegrationsExecutionsResource(_requester);
  ProjectsLocationsProductsIntegrationsVersionsResource get versions =>
      ProjectsLocationsProductsIntegrationsVersionsResource(_requester);

  ProjectsLocationsProductsIntegrationsResource(commons.ApiRequester client)
    : _requester = client;

  /// Executes integrations synchronously by passing the trigger id in the
  /// request body.
  ///
  /// The request is not returned until the requested executions are either
  /// fulfilled or experienced an error. If the integration name is not
  /// specified (passing `-`), all of the associated integration under the given
  /// trigger_id will be executed. Otherwise only the specified integration for
  /// the given `trigger_id` is executed. This is helpful for execution the
  /// integration from UI.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The integration resource name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/products/\[^/\]+/integrations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudIntegrationsV1alphaExecuteIntegrationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIntegrationsV1alphaExecuteIntegrationsResponse>
  execute(
    GoogleCloudIntegrationsV1alphaExecuteIntegrationsRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':execute';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIntegrationsV1alphaExecuteIntegrationsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Returns the list of all integrations in the specified project.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Project and location from which the integrations
  /// should be listed. Format: projects/{project}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/products/\[^/\]+$`.
  ///
  /// [filter] - Filter on fields of IntegrationVersion. Fields can be compared
  /// with literal values by use of ":" (containment), "=" (equality), "\>"
  /// (greater), "\<" (less than), \>=" (greater than or equal to), "\<=" (less
  /// than or equal to), and "!=" (inequality) operators. Negation, conjunction,
  /// and disjunction are written using NOT, AND, and OR keywords. For example,
  /// organization_id=\"1\" AND state=ACTIVE AND description:"test". Filtering
  /// cannot be performed on repeated fields like `task_config`.
  ///
  /// [orderBy] - The results would be returned in order you specified here.
  /// Supported sort keys are: Descending sort order by "last_modified_time",
  /// "created_time", "snapshot_number". Ascending sort order by the integration
  /// name.
  ///
  /// [pageSize] - The page size for the resquest.
  ///
  /// [pageToken] - The page token for the resquest.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIntegrationsV1alphaListIntegrationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIntegrationsV1alphaListIntegrationsResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/integrations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudIntegrationsV1alphaListIntegrationsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Schedules an integration for execution by passing the trigger id and the
  /// scheduled time in the request body.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The integration resource name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/products/\[^/\]+/integrations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudIntegrationsV1alphaScheduleIntegrationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIntegrationsV1alphaScheduleIntegrationsResponse>
  schedule(
    GoogleCloudIntegrationsV1alphaScheduleIntegrationsRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':schedule';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIntegrationsV1alphaScheduleIntegrationsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Execute the integration in draft state
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. Auto-generated primary key.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/products/\[^/\]+/integrations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIntegrationsV1alphaTestIntegrationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIntegrationsV1alphaTestIntegrationsResponse> test(
    GoogleCloudIntegrationsV1alphaTestIntegrationsRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':test';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIntegrationsV1alphaTestIntegrationsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsProductsIntegrationsExecutionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsProductsIntegrationsExecutionsSuspensionsResource
  get suspensions =>
      ProjectsLocationsProductsIntegrationsExecutionsSuspensionsResource(
        _requester,
      );

  ProjectsLocationsProductsIntegrationsExecutionsResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Download the execution.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The execution resource name. Format:
  /// projects/{gcp_project_id}/locations/{location}/products/{product}/integrations/{integration_id}/executions/{execution_id}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/products/\[^/\]+/integrations/\[^/\]+/executions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudIntegrationsV1alphaDownloadExecutionResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIntegrationsV1alphaDownloadExecutionResponse>
  download(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':download';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudIntegrationsV1alphaDownloadExecutionResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Get an execution in the specified project.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The execution resource name. Format:
  /// projects/{gcp_project_id}/locations/{location}/products/{product}/integrations/{integration_id}/executions/{execution_id}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/products/\[^/\]+/integrations/\[^/\]+/executions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIntegrationsV1alphaExecution].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIntegrationsV1alphaExecution> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudIntegrationsV1alphaExecution.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists the results of all the integration executions.
  ///
  /// The response includes the same information as the
  /// [execution log](https://cloud.google.com/application-integration/docs/viewing-logs)
  /// in the Integration UI.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource name of the integration
  /// execution.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/products/\[^/\]+/integrations/\[^/\]+$`.
  ///
  /// [filter] - Optional. Standard filter field, we support filtering on
  /// following fields: workflow_name: the name of the integration.
  /// CreateTimestamp: the execution created time. event_execution_state: the
  /// state of the executions. execution_id: the id of the execution.
  /// trigger_id: the id of the trigger. parameter_type: the type of the
  /// parameters involved in the execution. All fields support for EQUALS, in
  /// additional: CreateTimestamp support for LESS_THAN, GREATER_THAN
  /// ParameterType support for HAS For example: "parameter_type" HAS \"string\"
  /// Also supports operators like AND, OR, NOT For example, trigger_id=\"id1\"
  /// AND workflow_name=\"testWorkflow\"
  ///
  /// [filterParams_customFilter] - Optional user-provided custom filter.
  ///
  /// [filterParams_endTime] - End timestamp.
  ///
  /// [filterParams_eventStatuses] - List of possible event statuses.
  ///
  /// [filterParams_executionId] - Execution id.
  ///
  /// [filterParams_parameterKey] - Param key. DEPRECATED. User
  /// parameter_pair_key instead.
  ///
  /// [filterParams_parameterPairKey] - Param key in the key value pair filter.
  ///
  /// [filterParams_parameterPairValue] - Param value in the key value pair
  /// filter.
  ///
  /// [filterParams_parameterType] - Param type.
  ///
  /// [filterParams_parameterValue] - Param value. DEPRECATED. User
  /// parameter_pair_value instead.
  ///
  /// [filterParams_startTime] - Start timestamp.
  ///
  /// [filterParams_taskStatuses] - List of possible task statuses.
  ///
  /// [filterParams_workflowName] - Workflow name.
  ///
  /// [orderBy] - Optional. The results would be returned in order you specified
  /// here. Currently supporting "create_time".
  ///
  /// [pageSize] - Optional. The size of entries in the response.
  ///
  /// [pageToken] - Optional. The token returned in the previous response.
  ///
  /// [readMask] - Optional. View mask for the response data. If set, only the
  /// field specified will be returned as part of the result. If not set, all
  /// fields in Execution will be filled and returned. Supported fields:
  /// trigger_id execution_method create_time update_time execution_details
  /// execution_details.state execution_details.execution_snapshots
  /// execution_details.attempt_stats
  /// execution_details.event_execution_snapshots_size request_parameters
  /// cloud_logging_details snapshot_number replay_info
  ///
  /// [refreshAcl] - Optional. If true, the service will use the most recent acl
  /// information to list event execution infos and renew the acl cache. Note
  /// that fetching the most recent acl is synchronous, so it will increase RPC
  /// call latency.
  ///
  /// [snapshotMetadataWithoutParams] - Optional. If true, the service will
  /// provide execution info with snapshot metadata only i.e. without event
  /// parameters.
  ///
  /// [truncateParams] - Optional. If true, the service will truncate the params
  /// to only keep the first 1000 characters of string params and empty the
  /// executions in order to make response smaller. Only works for UI and when
  /// the params fields are not filtered out.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIntegrationsV1alphaListExecutionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIntegrationsV1alphaListExecutionsResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? filterParams_customFilter,
    core.String? filterParams_endTime,
    core.List<core.String>? filterParams_eventStatuses,
    core.String? filterParams_executionId,
    core.String? filterParams_parameterKey,
    core.String? filterParams_parameterPairKey,
    core.String? filterParams_parameterPairValue,
    core.String? filterParams_parameterType,
    core.String? filterParams_parameterValue,
    core.String? filterParams_startTime,
    core.List<core.String>? filterParams_taskStatuses,
    core.String? filterParams_workflowName,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? readMask,
    core.bool? refreshAcl,
    core.bool? snapshotMetadataWithoutParams,
    core.bool? truncateParams,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (filterParams_customFilter != null)
        'filterParams.customFilter': [filterParams_customFilter],
      if (filterParams_endTime != null)
        'filterParams.endTime': [filterParams_endTime],
      if (filterParams_eventStatuses != null)
        'filterParams.eventStatuses': filterParams_eventStatuses,
      if (filterParams_executionId != null)
        'filterParams.executionId': [filterParams_executionId],
      if (filterParams_parameterKey != null)
        'filterParams.parameterKey': [filterParams_parameterKey],
      if (filterParams_parameterPairKey != null)
        'filterParams.parameterPairKey': [filterParams_parameterPairKey],
      if (filterParams_parameterPairValue != null)
        'filterParams.parameterPairValue': [filterParams_parameterPairValue],
      if (filterParams_parameterType != null)
        'filterParams.parameterType': [filterParams_parameterType],
      if (filterParams_parameterValue != null)
        'filterParams.parameterValue': [filterParams_parameterValue],
      if (filterParams_startTime != null)
        'filterParams.startTime': [filterParams_startTime],
      if (filterParams_taskStatuses != null)
        'filterParams.taskStatuses': filterParams_taskStatuses,
      if (filterParams_workflowName != null)
        'filterParams.workflowName': [filterParams_workflowName],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (readMask != null) 'readMask': [readMask],
      if (refreshAcl != null) 'refreshAcl': ['${refreshAcl}'],
      if (snapshotMetadataWithoutParams != null)
        'snapshotMetadataWithoutParams': ['${snapshotMetadataWithoutParams}'],
      if (truncateParams != null) 'truncateParams': ['${truncateParams}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/executions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudIntegrationsV1alphaListExecutionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsProductsIntegrationsExecutionsSuspensionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsProductsIntegrationsExecutionsSuspensionsResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// * Lifts suspension for the Suspension task.
  ///
  /// Fetch corresponding suspension with provided suspension Id, resolve
  /// suspension, and set up suspension result for the Suspension Task.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource that the suspension belongs to.
  /// "projects/{project}/locations/{location}/products/{product}/integrations/{integration}/executions/{execution}/suspensions/{suspenion}"
  /// format.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/products/\[^/\]+/integrations/\[^/\]+/executions/\[^/\]+/suspensions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIntegrationsV1alphaLiftSuspensionResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIntegrationsV1alphaLiftSuspensionResponse> lift(
    GoogleCloudIntegrationsV1alphaLiftSuspensionRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':lift';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIntegrationsV1alphaLiftSuspensionResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// * Lists suspensions associated with a specific execution.
  ///
  /// Only those with permissions to resolve the relevant suspensions will be
  /// able to view them.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required.
  /// projects/{gcp_project_id}/locations/{location}/products/{product}/integrations/{integration_name}/executions/{execution_name}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/products/\[^/\]+/integrations/\[^/\]+/executions/\[^/\]+$`.
  ///
  /// [filter] - Standard filter field.
  ///
  /// [orderBy] - Field name to order by.
  ///
  /// [pageSize] - Maximum number of entries in the response.
  ///
  /// [pageToken] - Token to retrieve a specific page.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIntegrationsV1alphaListSuspensionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIntegrationsV1alphaListSuspensionsResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/suspensions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudIntegrationsV1alphaListSuspensionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// * Resolves (lifts/rejects) any number of suspensions.
  ///
  /// If the integration is already running, only the status of the suspension
  /// is updated. Otherwise, the suspended integration will begin execution
  /// again.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required.
  /// projects/{gcp_project_id}/locations/{location}/products/{product}/integrations/{integration_name}/executions/{execution_name}/suspensions/{suspension_id}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/products/\[^/\]+/integrations/\[^/\]+/executions/\[^/\]+/suspensions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudIntegrationsV1alphaResolveSuspensionResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIntegrationsV1alphaResolveSuspensionResponse> resolve(
    GoogleCloudIntegrationsV1alphaResolveSuspensionRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':resolve';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIntegrationsV1alphaResolveSuspensionResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsProductsIntegrationsVersionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsProductsIntegrationsVersionsResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Create a integration with a draft version in the specified project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource where this version will be
  /// created. Format:
  /// projects/{project}/locations/{location}/integrations/{integration}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/products/\[^/\]+/integrations/\[^/\]+$`.
  ///
  /// [createSampleIntegrations] - Optional. Optional. Indicates if sample
  /// workflow should be created.
  ///
  /// [newIntegration] - Set this flag to true, if draft version is to be
  /// created for a brand new integration. False, if the request is for an
  /// existing integration. For backward compatibility reasons, even if this
  /// flag is set to `false` and no existing integration is found, a new draft
  /// integration will still be created.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIntegrationsV1alphaIntegrationVersion].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIntegrationsV1alphaIntegrationVersion> create(
    GoogleCloudIntegrationsV1alphaIntegrationVersion request,
    core.String parent, {
    core.bool? createSampleIntegrations,
    core.bool? newIntegration,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (createSampleIntegrations != null)
        'createSampleIntegrations': ['${createSampleIntegrations}'],
      if (newIntegration != null) 'newIntegration': ['${newIntegration}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/versions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIntegrationsV1alphaIntegrationVersion.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Soft-deletes the integration.
  ///
  /// Changes the status of the integration to ARCHIVED. If the integration
  /// being ARCHIVED is tagged as "HEAD", the tag is removed from this snapshot
  /// and set to the previous non-ARCHIVED snapshot. The PUBLISH_REQUESTED,
  /// DUE_FOR_DELETION tags are removed too. This RPC throws an exception if the
  /// version being deleted is DRAFT, and if the `locked_by` user is not the
  /// same as the user performing the Delete. Audit fields updated include
  /// last_modified_timestamp, last_modified_by. Any existing lock is released
  /// when Deleting a integration. Currently, there is no undelete mechanism.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The version to delete. Format:
  /// projects/{project}/locations/{location}/integrations/{integration}/versions/{version}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/products/\[^/\]+/integrations/\[^/\]+/versions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Downloads an integration.
  ///
  /// Retrieves the `IntegrationVersion` for a given `integration_id` and
  /// returns the response as a string.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The version to download. Format:
  /// projects/{project}/locations/{location}/integrations/{integration}/versions/{version}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/products/\[^/\]+/integrations/\[^/\]+/versions/\[^/\]+$`.
  ///
  /// [fileFormat] - File format for download request.
  /// Possible string values are:
  /// - "FILE_FORMAT_UNSPECIFIED" : Unspecified file format
  /// - "JSON" : JSON File Format
  /// - "YAML" : YAML File Format
  ///
  /// [files] - Optional. Integration related file to download like Integration
  /// Json, Config variable, testcase etc.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudIntegrationsV1alphaDownloadIntegrationVersionResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIntegrationsV1alphaDownloadIntegrationVersionResponse>
  download(
    core.String name, {
    core.String? fileFormat,
    core.List<core.String>? files,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (fileFormat != null) 'fileFormat': [fileFormat],
      if (files != null) 'files': files,
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':download';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudIntegrationsV1alphaDownloadIntegrationVersionResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Get a integration in the specified project.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The version to retrieve. Format:
  /// projects/{project}/locations/{location}/integrations/{integration}/versions/{version}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/products/\[^/\]+/integrations/\[^/\]+/versions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIntegrationsV1alphaIntegrationVersion].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIntegrationsV1alphaIntegrationVersion> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudIntegrationsV1alphaIntegrationVersion.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Returns the list of all integration versions in the specified project.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource where this version will be
  /// created. Format:
  /// projects/{project}/locations/{location}/integrations/{integration}
  /// Specifically, when parent equals: 1. projects//locations//integrations/,
  /// Meaning: "List versions (with filter) for a particular integration". 2.
  /// projects//locations//integrations/- Meaning: "List versions (with filter)
  /// for a client within a particular region".
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/products/\[^/\]+/integrations/\[^/\]+$`.
  ///
  /// [fieldMask] - The field mask which specifies the particular data to be
  /// returned.
  ///
  /// [filter] - Filter on fields of IntegrationVersion. Fields can be compared
  /// with literal values by use of ":" (containment), "=" (equality), "\>"
  /// (greater), "\<" (less than), \>=" (greater than or equal to), "\<=" (less
  /// than or equal to), and "!=" (inequality) operators. Negation, conjunction,
  /// and disjunction are written using NOT, AND, and OR keywords. For example,
  /// organization_id=\"1\" AND state=ACTIVE AND description:"test". Filtering
  /// cannot be performed on repeated fields like `task_config`.
  ///
  /// [orderBy] - The results would be returned in order you specified here.
  /// Currently supported sort keys are: Descending sort order for
  /// "last\_modified\_time", "created\_time", and "snapshot\_number". Ascending
  /// sort order for `name`.
  ///
  /// [pageSize] - The maximum number of versions to return. The service may
  /// return fewer than this value. If unspecified, at most 50 versions will be
  /// returned. The maximum value is 1000; values above 1000 will be coerced to
  /// 1000.
  ///
  /// [pageToken] - A page token, received from a previous
  /// `ListIntegrationVersions` call. Provide this to retrieve the subsequent
  /// page. When paginating, all other parameters provided to
  /// `ListIntegrationVersions` must match the call that provided the page
  /// token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudIntegrationsV1alphaListIntegrationVersionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIntegrationsV1alphaListIntegrationVersionsResponse>
  list(
    core.String parent, {
    core.String? fieldMask,
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (fieldMask != null) 'fieldMask': [fieldMask],
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/versions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudIntegrationsV1alphaListIntegrationVersionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Update a integration with a draft version in the specified project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. Auto-generated primary key.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/products/\[^/\]+/integrations/\[^/\]+/versions/\[^/\]+$`.
  ///
  /// [updateMask] - Field mask specifying the fields in the above integration
  /// that have been modified and need to be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIntegrationsV1alphaIntegrationVersion].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIntegrationsV1alphaIntegrationVersion> patch(
    GoogleCloudIntegrationsV1alphaIntegrationVersion request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIntegrationsV1alphaIntegrationVersion.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// This RPC throws an exception if the integration is in ARCHIVED or ACTIVE
  /// state.
  ///
  /// This RPC throws an exception if the version being published is DRAFT, and
  /// if the `locked_by` user is not the same as the user performing the
  /// Publish. Audit fields updated include last_published_timestamp,
  /// last_published_by, last_modified_timestamp, last_modified_by. Any existing
  /// lock is on this integration is released.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The version to publish. Format:
  /// projects/{project}/locations/{location}/integrations/{integration}/versions/{version}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/products/\[^/\]+/integrations/\[^/\]+/versions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudIntegrationsV1alphaPublishIntegrationVersionResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIntegrationsV1alphaPublishIntegrationVersionResponse>
  publish(
    GoogleCloudIntegrationsV1alphaPublishIntegrationVersionRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':publish';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIntegrationsV1alphaPublishIntegrationVersionResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Clears the `locked_by` and `locked_at_timestamp`in the DRAFT version of
  /// this integration.
  ///
  /// It then performs the same action as the CreateDraftIntegrationVersion
  /// (i.e., copies the DRAFT version of the integration as a SNAPSHOT and then
  /// creates a new DRAFT version with the `locked_by` set to the
  /// `user_taking_over` and the `locked_at_timestamp` set to the current
  /// timestamp). Both the `locked_by` and `user_taking_over` are notified via
  /// email about the takeover. This RPC throws an exception if the integration
  /// is not in DRAFT status or if the `locked_by` and `locked_at_timestamp`
  /// fields are not set.The TakeoverEdit lock is treated the same as an edit of
  /// the integration, and hence shares ACLs with edit. Audit fields updated
  /// include last_modified_timestamp, last_modified_by.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [integrationVersion] - Required. The version to take over edit lock.
  /// Format:
  /// projects/{project}/locations/{location}/integrations/{integration}/versions/{version}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/products/\[^/\]+/integrations/\[^/\]+/versions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIntegrationsV1alphaTakeoverEditLockResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIntegrationsV1alphaTakeoverEditLockResponse>
  takeoverEditLock(
    GoogleCloudIntegrationsV1alphaTakeoverEditLockRequest request,
    core.String integrationVersion, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' +
        core.Uri.encodeFull('$integrationVersion') +
        ':takeoverEditLock';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIntegrationsV1alphaTakeoverEditLockResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Sets the status of the ACTIVE integration to SNAPSHOT with a new tag
  /// "PREVIOUSLY_PUBLISHED" after validating it.
  ///
  /// The "HEAD" and "PUBLISH_REQUESTED" tags do not change. This RPC throws an
  /// exception if the version being snapshot is not ACTIVE. Audit fields added
  /// include action, action_by, action_timestamp.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The version to deactivate. Format:
  /// projects/{project}/locations/{location}/integrations/{integration}/versions/{version}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/products/\[^/\]+/integrations/\[^/\]+/versions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> unpublish(
    GoogleCloudIntegrationsV1alphaUnpublishIntegrationVersionRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':unpublish';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Uploads an integration.
  ///
  /// The content can be a previously downloaded integration. Performs the same
  /// function as CreateDraftIntegrationVersion, but accepts input in a string
  /// format, which holds the complete representation of the IntegrationVersion
  /// content.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The version to upload. Format:
  /// projects/{project}/locations/{location}/integrations/{integration}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/products/\[^/\]+/integrations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudIntegrationsV1alphaUploadIntegrationVersionResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIntegrationsV1alphaUploadIntegrationVersionResponse>
  upload(
    GoogleCloudIntegrationsV1alphaUploadIntegrationVersionRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/versions:upload';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIntegrationsV1alphaUploadIntegrationVersionResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsProductsSfdcInstancesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsProductsSfdcInstancesSfdcChannelsResource get sfdcChannels =>
      ProjectsLocationsProductsSfdcInstancesSfdcChannelsResource(_requester);

  ProjectsLocationsProductsSfdcInstancesResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates an sfdc instance record.
  ///
  /// Store the sfdc instance in Spanner. Returns the sfdc instance.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. "projects/{project}/locations/{location}" format.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/products/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIntegrationsV1alphaSfdcInstance].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIntegrationsV1alphaSfdcInstance> create(
    GoogleCloudIntegrationsV1alphaSfdcInstance request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/sfdcInstances';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIntegrationsV1alphaSfdcInstance.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes an sfdc instance.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name that is associated with the SfdcInstance.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/products/\[^/\]+/sfdcInstances/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets an sfdc instance.
  ///
  /// If the instance doesn't exist, Code.NOT_FOUND exception will be thrown.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name that is associated with the SfdcInstance.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/products/\[^/\]+/sfdcInstances/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIntegrationsV1alphaSfdcInstance].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIntegrationsV1alphaSfdcInstance> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudIntegrationsV1alphaSfdcInstance.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists all sfdc instances that match the filter.
  ///
  /// Restrict to sfdc instances belonging to the current client only.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The client, which owns this collection of
  /// SfdcInstances.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/products/\[^/\]+$`.
  ///
  /// [filter] - Filtering as supported in
  /// https://developers.google.com/authorized-buyers/apis/guides/list-filters.
  ///
  /// [pageSize] - The size of entries in the response. If unspecified, defaults
  /// to 100.
  ///
  /// [pageToken] - The token returned in the previous response.
  ///
  /// [readMask] - The mask which specifies fields that need to be returned in
  /// the SfdcInstance's response.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudIntegrationsV1alphaListSfdcInstancesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIntegrationsV1alphaListSfdcInstancesResponse> list(
    core.String parent, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? readMask,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (readMask != null) 'readMask': [readMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/sfdcInstances';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudIntegrationsV1alphaListSfdcInstancesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates an sfdc instance.
  ///
  /// Updates the sfdc instance in spanner. Returns the sfdc instance.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Resource name of the SFDC instance
  /// projects/{project}/locations/{location}/sfdcInstances/{sfdcInstance}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/products/\[^/\]+/sfdcInstances/\[^/\]+$`.
  ///
  /// [updateMask] - Field mask specifying the fields in the above SfdcInstance
  /// that have been modified and need to be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIntegrationsV1alphaSfdcInstance].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIntegrationsV1alphaSfdcInstance> patch(
    GoogleCloudIntegrationsV1alphaSfdcInstance request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIntegrationsV1alphaSfdcInstance.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsProductsSfdcInstancesSfdcChannelsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsProductsSfdcInstancesSfdcChannelsResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Creates an sfdc channel record.
  ///
  /// Store the sfdc channel in Spanner. Returns the sfdc channel.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. "projects/{project}/locations/{location}" format.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/products/\[^/\]+/sfdcInstances/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIntegrationsV1alphaSfdcChannel].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIntegrationsV1alphaSfdcChannel> create(
    GoogleCloudIntegrationsV1alphaSfdcChannel request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/sfdcChannels';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIntegrationsV1alphaSfdcChannel.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes an sfdc channel.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name that is associated with the SfdcChannel.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/products/\[^/\]+/sfdcInstances/\[^/\]+/sfdcChannels/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets an sfdc channel.
  ///
  /// If the channel doesn't exist, Code.NOT_FOUND exception will be thrown.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name that is associated with the SfdcChannel.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/products/\[^/\]+/sfdcInstances/\[^/\]+/sfdcChannels/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIntegrationsV1alphaSfdcChannel].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIntegrationsV1alphaSfdcChannel> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudIntegrationsV1alphaSfdcChannel.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists all sfdc channels that match the filter.
  ///
  /// Restrict to sfdc channels belonging to the current client only.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The client, which owns this collection of
  /// SfdcChannels.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/products/\[^/\]+/sfdcInstances/\[^/\]+$`.
  ///
  /// [filter] - Filtering as supported in
  /// https://developers.google.com/authorized-buyers/apis/guides/list-filters.
  ///
  /// [pageSize] - The size of entries in the response. If unspecified, defaults
  /// to 100.
  ///
  /// [pageToken] - The token returned in the previous response.
  ///
  /// [readMask] - The mask which specifies fields that need to be returned in
  /// the SfdcChannel's response.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIntegrationsV1alphaListSfdcChannelsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIntegrationsV1alphaListSfdcChannelsResponse> list(
    core.String parent, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? readMask,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (readMask != null) 'readMask': [readMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/sfdcChannels';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudIntegrationsV1alphaListSfdcChannelsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates an sfdc channel.
  ///
  /// Updates the sfdc channel in spanner. Returns the sfdc channel.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Resource name of the SFDC channel
  /// projects/{project}/locations/{location}/sfdcInstances/{sfdc_instance}/sfdcChannels/{sfdc_channel}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/products/\[^/\]+/sfdcInstances/\[^/\]+/sfdcChannels/\[^/\]+$`.
  ///
  /// [updateMask] - Field mask specifying the fields in the above SfdcChannel
  /// that have been modified and need to be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIntegrationsV1alphaSfdcChannel].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIntegrationsV1alphaSfdcChannel> patch(
    GoogleCloudIntegrationsV1alphaSfdcChannel request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIntegrationsV1alphaSfdcChannel.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsSfdcInstancesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsSfdcInstancesSfdcChannelsResource get sfdcChannels =>
      ProjectsLocationsSfdcInstancesSfdcChannelsResource(_requester);

  ProjectsLocationsSfdcInstancesResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates an sfdc instance record.
  ///
  /// Store the sfdc instance in Spanner. Returns the sfdc instance.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. "projects/{project}/locations/{location}" format.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIntegrationsV1alphaSfdcInstance].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIntegrationsV1alphaSfdcInstance> create(
    GoogleCloudIntegrationsV1alphaSfdcInstance request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/sfdcInstances';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIntegrationsV1alphaSfdcInstance.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes an sfdc instance.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name that is associated with the SfdcInstance.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/sfdcInstances/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets an sfdc instance.
  ///
  /// If the instance doesn't exist, Code.NOT_FOUND exception will be thrown.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name that is associated with the SfdcInstance.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/sfdcInstances/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIntegrationsV1alphaSfdcInstance].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIntegrationsV1alphaSfdcInstance> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudIntegrationsV1alphaSfdcInstance.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists all sfdc instances that match the filter.
  ///
  /// Restrict to sfdc instances belonging to the current client only.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The client, which owns this collection of
  /// SfdcInstances.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Filtering as supported in
  /// https://developers.google.com/authorized-buyers/apis/guides/list-filters.
  ///
  /// [pageSize] - The size of entries in the response. If unspecified, defaults
  /// to 100.
  ///
  /// [pageToken] - The token returned in the previous response.
  ///
  /// [readMask] - The mask which specifies fields that need to be returned in
  /// the SfdcInstance's response.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudIntegrationsV1alphaListSfdcInstancesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIntegrationsV1alphaListSfdcInstancesResponse> list(
    core.String parent, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? readMask,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (readMask != null) 'readMask': [readMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/sfdcInstances';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudIntegrationsV1alphaListSfdcInstancesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates an sfdc instance.
  ///
  /// Updates the sfdc instance in spanner. Returns the sfdc instance.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Resource name of the SFDC instance
  /// projects/{project}/locations/{location}/sfdcInstances/{sfdcInstance}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/sfdcInstances/\[^/\]+$`.
  ///
  /// [updateMask] - Field mask specifying the fields in the above SfdcInstance
  /// that have been modified and need to be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIntegrationsV1alphaSfdcInstance].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIntegrationsV1alphaSfdcInstance> patch(
    GoogleCloudIntegrationsV1alphaSfdcInstance request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIntegrationsV1alphaSfdcInstance.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsSfdcInstancesSfdcChannelsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsSfdcInstancesSfdcChannelsResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Creates an sfdc channel record.
  ///
  /// Store the sfdc channel in Spanner. Returns the sfdc channel.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. "projects/{project}/locations/{location}" format.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/sfdcInstances/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIntegrationsV1alphaSfdcChannel].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIntegrationsV1alphaSfdcChannel> create(
    GoogleCloudIntegrationsV1alphaSfdcChannel request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/sfdcChannels';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIntegrationsV1alphaSfdcChannel.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes an sfdc channel.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name that is associated with the SfdcChannel.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/sfdcInstances/\[^/\]+/sfdcChannels/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets an sfdc channel.
  ///
  /// If the channel doesn't exist, Code.NOT_FOUND exception will be thrown.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name that is associated with the SfdcChannel.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/sfdcInstances/\[^/\]+/sfdcChannels/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIntegrationsV1alphaSfdcChannel].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIntegrationsV1alphaSfdcChannel> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudIntegrationsV1alphaSfdcChannel.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists all sfdc channels that match the filter.
  ///
  /// Restrict to sfdc channels belonging to the current client only.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The client, which owns this collection of
  /// SfdcChannels.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/sfdcInstances/\[^/\]+$`.
  ///
  /// [filter] - Filtering as supported in
  /// https://developers.google.com/authorized-buyers/apis/guides/list-filters.
  ///
  /// [pageSize] - The size of entries in the response. If unspecified, defaults
  /// to 100.
  ///
  /// [pageToken] - The token returned in the previous response.
  ///
  /// [readMask] - The mask which specifies fields that need to be returned in
  /// the SfdcChannel's response.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIntegrationsV1alphaListSfdcChannelsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIntegrationsV1alphaListSfdcChannelsResponse> list(
    core.String parent, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? readMask,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (readMask != null) 'readMask': [readMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/sfdcChannels';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudIntegrationsV1alphaListSfdcChannelsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates an sfdc channel.
  ///
  /// Updates the sfdc channel in spanner. Returns the sfdc channel.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Resource name of the SFDC channel
  /// projects/{project}/locations/{location}/sfdcInstances/{sfdc_instance}/sfdcChannels/{sfdc_channel}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/sfdcInstances/\[^/\]+/sfdcChannels/\[^/\]+$`.
  ///
  /// [updateMask] - Field mask specifying the fields in the above SfdcChannel
  /// that have been modified and need to be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIntegrationsV1alphaSfdcChannel].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIntegrationsV1alphaSfdcChannel> patch(
    GoogleCloudIntegrationsV1alphaSfdcChannel request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIntegrationsV1alphaSfdcChannel.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsTemplatesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsTemplatesResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a new template
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. "projects/{project}/locations/{location}" format.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIntegrationsV1alphaTemplate].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIntegrationsV1alphaTemplate> create(
    GoogleCloudIntegrationsV1alphaTemplate request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/templates';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIntegrationsV1alphaTemplate.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes a template
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name that is associated with the Template.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/templates/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Downloads a template.
  ///
  /// Retrieves the `Template` and returns the response as a string.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The template to download. Format:
  /// projects/{project}/locations/{location}/template/{template_id}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/templates/\[^/\]+$`.
  ///
  /// [fileFormat] - Required. File format for download request.
  /// Possible string values are:
  /// - "FILE_FORMAT_UNSPECIFIED" : Unspecified file format
  /// - "JSON" : JSON File Format
  /// - "YAML" : YAML File Format
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIntegrationsV1alphaDownloadTemplateResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIntegrationsV1alphaDownloadTemplateResponse> download(
    core.String name, {
    core.String? fileFormat,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (fileFormat != null) 'fileFormat': [fileFormat],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':download';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudIntegrationsV1alphaDownloadTemplateResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Get a template in the specified project.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The template to retrieve. Format:
  /// projects/{project}/locations/{location}/templates/{template}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/templates/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIntegrationsV1alphaTemplate].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIntegrationsV1alphaTemplate> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudIntegrationsV1alphaTemplate.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Import the template to an existing integration.
  ///
  /// This api would keep track of usage_count and last_used_time.
  /// PERMISSION_DENIED would be thrown if template is not accessible by client.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name that is associated with the Template.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/templates/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIntegrationsV1alphaImportTemplateResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIntegrationsV1alphaImportTemplateResponse> import(
    GoogleCloudIntegrationsV1alphaImportTemplateRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':import';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIntegrationsV1alphaImportTemplateResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists all templates matching the filter.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The client, which owns this collection of Templates.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. Standard filter field to filter templates. client_id
  /// filter won't be supported and will restrict to templates belonging to the
  /// current client only. Return all templates of the current client if the
  /// filter is empty. Also supports operators like AND, OR, NOT For example,
  /// "status=\"ACTIVE\"
  ///
  /// [orderBy] - Optional. The results would be returned in the order you
  /// specified here.
  ///
  /// [pageSize] - Optional. The size of the response entries. If unspecified,
  /// defaults to 100. The maximum value is 1000; values above 1000 will be
  /// coerced to 1000.
  ///
  /// [pageToken] - Optional. The token returned in the previous response.
  ///
  /// [readMask] - Optional. The mask which specifies fields that need to be
  /// returned in the template's response.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIntegrationsV1alphaListTemplatesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIntegrationsV1alphaListTemplatesResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? readMask,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (readMask != null) 'readMask': [readMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/templates';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudIntegrationsV1alphaListTemplatesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the template by given id.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. Resource name of the template.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/templates/\[^/\]+$`.
  ///
  /// [updateMask] - Required. Field mask specifying the fields in the above
  /// template that have been modified and must be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIntegrationsV1alphaTemplate].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIntegrationsV1alphaTemplate> patch(
    GoogleCloudIntegrationsV1alphaTemplate request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIntegrationsV1alphaTemplate.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Search templates based on user query and filters.
  ///
  /// This api would query the templates and return a list of templates based on
  /// the user filter.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The client, which owns this collection of Templates.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [enableNaturalLanguageQueryUnderstanding] - Optional. Whether to enable
  /// natural language query understanding.
  ///
  /// [filter] - Optional. Standard filter field to filter templates. client_id
  /// filter won't be supported and will restrict to templates belonging to the
  /// current client only. Return all templates of the current client if the
  /// filter is empty. Also supports operators like AND, OR, NOT For example,
  /// "status=\"ACTIVE\"
  ///
  /// [orderBy] - Optional. The results would be returned in the order you
  /// specified here.
  ///
  /// [pageSize] - Optional. The size of the response entries. If unspecified,
  /// defaults to 100. The maximum value is 1000; values above 1000 will be
  /// coerced to 1000.
  ///
  /// [pageToken] - Optional. The token returned in the previous response.
  ///
  /// [query] - Optional. The search query that will be passed to Vertex search
  /// service.
  ///
  /// [readMask] - Optional. The mask which specifies fields that need to be
  /// returned in the template's response.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIntegrationsV1alphaSearchTemplatesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIntegrationsV1alphaSearchTemplatesResponse> search(
    core.String parent, {
    core.bool? enableNaturalLanguageQueryUnderstanding,
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? query,
    core.String? readMask,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (enableNaturalLanguageQueryUnderstanding != null)
        'enableNaturalLanguageQueryUnderstanding': [
          '${enableNaturalLanguageQueryUnderstanding}',
        ],
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (query != null) 'query': [query],
      if (readMask != null) 'readMask': [readMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/templates:search';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudIntegrationsV1alphaSearchTemplatesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Share a template with other clients.
  ///
  /// Only the template owner can share the templates with other projects.
  /// PERMISSION_DENIED would be thrown if the request is not from the owner.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name that is associated with the Template.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/templates/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> share(
    GoogleCloudIntegrationsV1alphaShareTemplateRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':share';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Unshare a template from given clients.
  ///
  /// Owner of the template can unshare template with clients. Shared client can
  /// only unshare the template from itself. PERMISSION_DENIED would be thrown
  /// if request is not from owner or for unsharing itself.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name that is associated with the Template.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/templates/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> unshare(
    GoogleCloudIntegrationsV1alphaUnshareTemplateRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':unshare';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Uploads a template.
  ///
  /// The content can be a previously downloaded template. Performs the same
  /// function as CreateTemplate, but accepts input in a string format, which
  /// holds the complete representation of the Template content.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The template to upload. Format:
  /// projects/{project}/locations/{location}
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIntegrationsV1alphaUploadTemplateResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIntegrationsV1alphaUploadTemplateResponse> upload(
    GoogleCloudIntegrationsV1alphaUploadTemplateRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/templates:upload';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIntegrationsV1alphaUploadTemplateResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Use the template to create integration.
  ///
  /// This api would keep track of usage_count and last_used_time.
  /// PERMISSION_DENIED would be thrown if template is not accessible by client.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name that is associated with the Template.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/templates/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudIntegrationsV1alphaUseTemplateResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudIntegrationsV1alphaUseTemplateResponse> use(
    GoogleCloudIntegrationsV1alphaUseTemplateRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':use';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudIntegrationsV1alphaUseTemplateResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

/// Registered ids for errors, as "oneof" enums.
///
/// Each task or logical grouping of tasks may share the same enum.
class CrmlogErrorCode {
  ///
  /// Possible string values are:
  /// - "COMMON_ERROR_CODE_UNSPECIFIED"
  /// - "INVALID_CREDENTIALS"
  /// - "REQUIRED_FIELDS_MISSING"
  /// - "INVALID_FIELDS"
  /// - "BACKEND"
  /// - "GENERAL"
  /// - "INTERNAL"
  /// - "IO_ERROR"
  /// - "NOT_FOUND"
  /// - "EVENT_BUS"
  /// - "ALREADY_EXISTS"
  /// - "CONCORD"
  /// - "CONVERSION"
  /// - "FLUME"
  /// - "PERMISSION"
  /// - "SALES_FORCE"
  /// - "SPANNER"
  /// - "UNIMPLEMENTED"
  /// - "RELTIO"
  /// - "WORKFLOW_NOT_FOUND"
  /// - "QUOTA_THROTTLED"
  /// - "QUOTA_ENQUEUED"
  /// - "INVALID_QUOTA_CONFIGURATION"
  /// - "TASK_NOT_FOUND"
  /// - "EXECUTION_TIMEOUT"
  /// - "INVALID_EVENT_EXECUTION_STATE"
  /// - "INVALID_ATTRIBUTE"
  /// - "MISSING_ATTRIBUTE"
  /// - "CLIENT_UNAUTHORIZED_FOR_WORKFLOW"
  /// - "INVALID_PARAMETER"
  /// - "MISSING_PARAMETER"
  /// - "UNAUTHROIZED_WORKFLOW_EDITOR_ACTION"
  /// - "FAILED_PRECONDITION"
  /// - "INVALID_CLIENT"
  /// - "MISSING_CLIENT"
  /// - "INVALID_WORKFLOW"
  /// - "MISSING_QUOTA_CONFIGURATION"
  /// - "UNHANDLED_TASK_ERROR"
  /// - "SCRIPT_TASK_RUNTIME_ERROR"
  /// - "RPC"
  /// - "INVALID_PROTO"
  /// - "UNHANDLED_EVENTBUS_ERROR"
  /// - "INVALID_TASK_STATE"
  /// - "TYPED_TASK_INVALID_INPUT_OPERATION"
  /// - "TYPED_TASK_INVALID_OUTPUT_OPERATION"
  /// - "VALIDATION_ERROR"
  /// - "RESUME_ERROR"
  /// - "APPS_SCRIPT_EXECUTION_ERROR"
  /// - "INVALID_VECTOR_USER"
  /// - "INFORMATICA"
  /// - "RETRYABLE_TASK_ERROR"
  /// - "INVALID_TENANT"
  /// - "WRONG_TENANT"
  /// - "INFORMATICA_BACKEND_UNAVAILABLE"
  /// - "RPC_PERMISSION_DENIED"
  /// - "SYNC_EVENTBUS_EXECUTION_TIMEOUT" : SYNC_EVENTBUS_EXECUTION_TIMEOUT is
  /// for eventbus internal use only.
  /// - "ASYNC_EVENTBUS_EXECUTION_TIMEOUT" : ASYNC_EVENTBUS_EXECUTION_TIMEOUT is
  /// for eventbus internal use only. This error will be counted as server
  /// availability error.
  /// - "NOT_SUPPORTED_DATA_TYPE"
  /// - "UNSANITIZED_USER_INPUT"
  /// - "TRANSFORM_EXPRESSION_EVALUATION_ERROR"
  /// - "HTTP_EXCEPTION"
  /// - "EXECUTION_CANCELLED"
  core.String? commonErrorCode;

  CrmlogErrorCode({this.commonErrorCode});

  CrmlogErrorCode.fromJson(core.Map json_)
    : this(commonErrorCode: json_['commonErrorCode'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (commonErrorCode != null) 'commonErrorCode': commonErrorCode!,
  };
}

/// Email address along with optional name and tokens.
///
/// These tokens will be substituted for the variables in the form of
/// \[{var_name}\], where var_name could be any string of no more than 32 bytes.
class EnterpriseCrmEventbusProtoAddress {
  /// Required.
  core.String? email;
  core.String? name;
  core.List<EnterpriseCrmEventbusProtoToken>? tokens;

  EnterpriseCrmEventbusProtoAddress({this.email, this.name, this.tokens});

  EnterpriseCrmEventbusProtoAddress.fromJson(core.Map json_)
    : this(
        email: json_['email'] as core.String?,
        name: json_['name'] as core.String?,
        tokens:
            (json_['tokens'] as core.List?)
                ?.map(
                  (value) => EnterpriseCrmEventbusProtoToken.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (email != null) 'email': email!,
    if (name != null) 'name': name!,
    if (tokens != null) 'tokens': tokens!,
  };
}

/// Attributes are additional options that can be associated with each event
/// property.
///
/// For more information, see
class EnterpriseCrmEventbusProtoAttributes {
  /// Things like URL, Email, Currency, Timestamp (rather than string, int64...)
  /// Possible string values are:
  /// - "DATA_TYPE_UNSPECIFIED"
  /// - "EMAIL"
  /// - "URL"
  /// - "CURRENCY"
  /// - "TIMESTAMP"
  /// - "DOMAIN_NAME" : Domain is a web url string with one top-level private
  /// domain and a suffix (for example: google.com, walmart.com)
  core.String? dataType;

  /// Used to define defaults.
  EnterpriseCrmEventbusProtoValueType? defaultValue;

  /// Required for event execution.
  ///
  /// The validation will be done by the event bus when the event is triggered.
  core.bool? isRequired;

  /// Used to indicate if a ParameterEntry should be converted to ParamIndexes
  /// for ST-Spanner full-text search.
  ///
  /// DEPRECATED: use searchable.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.bool? isSearchable;

  /// See
  EnterpriseCrmEventbusProtoLogSettings? logSettings;

  /// True if this workflow parameter should be masked in the logs
  core.bool? masked;

  /// Used to indicate if the ParameterEntry is a read only field or not.
  core.bool? readOnly;

  ///
  /// Possible string values are:
  /// - "UNSPECIFIED"
  /// - "YES" : If yes, the parameter key and value will be full-text indexed.
  /// In a proto, this value will propagate to all children whose searchable is
  /// unspecified.
  /// - "NO" : If no, the parameter key and value will not be full-text indexed.
  /// In a proto, this value will propagate to all children whose searchable is
  /// unspecified.
  core.String? searchable;

  /// List of tasks that can view this property, if empty then all.
  core.List<core.String>? taskVisibility;

  EnterpriseCrmEventbusProtoAttributes({
    this.dataType,
    this.defaultValue,
    this.isRequired,
    this.isSearchable,
    this.logSettings,
    this.masked,
    this.readOnly,
    this.searchable,
    this.taskVisibility,
  });

  EnterpriseCrmEventbusProtoAttributes.fromJson(core.Map json_)
    : this(
        dataType: json_['dataType'] as core.String?,
        defaultValue:
            json_.containsKey('defaultValue')
                ? EnterpriseCrmEventbusProtoValueType.fromJson(
                  json_['defaultValue'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        isRequired: json_['isRequired'] as core.bool?,
        isSearchable: json_['isSearchable'] as core.bool?,
        logSettings:
            json_.containsKey('logSettings')
                ? EnterpriseCrmEventbusProtoLogSettings.fromJson(
                  json_['logSettings'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        masked: json_['masked'] as core.bool?,
        readOnly: json_['readOnly'] as core.bool?,
        searchable: json_['searchable'] as core.String?,
        taskVisibility:
            (json_['taskVisibility'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (dataType != null) 'dataType': dataType!,
    if (defaultValue != null) 'defaultValue': defaultValue!,
    if (isRequired != null) 'isRequired': isRequired!,
    if (isSearchable != null) 'isSearchable': isSearchable!,
    if (logSettings != null) 'logSettings': logSettings!,
    if (masked != null) 'masked': masked!,
    if (readOnly != null) 'readOnly': readOnly!,
    if (searchable != null) 'searchable': searchable!,
    if (taskVisibility != null) 'taskVisibility': taskVisibility!,
  };
}

/// List of error enums for alerts.
class EnterpriseCrmEventbusProtoBaseAlertConfigErrorEnumList {
  core.List<core.String>? enumStrings;

  ///
  /// Possible string values are:
  /// - "DEFAULT_INCLUSIVE"
  /// - "EXCLUSIVE"
  core.String? filterType;

  EnterpriseCrmEventbusProtoBaseAlertConfigErrorEnumList({
    this.enumStrings,
    this.filterType,
  });

  EnterpriseCrmEventbusProtoBaseAlertConfigErrorEnumList.fromJson(
    core.Map json_,
  ) : this(
        enumStrings:
            (json_['enumStrings'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        filterType: json_['filterType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (enumStrings != null) 'enumStrings': enumStrings!,
    if (filterType != null) 'filterType': filterType!,
  };
}

/// The threshold value of the metric, above or below which the alert should be
/// triggered.
///
/// See EventAlertConfig or TaskAlertConfig for the different alert metric types
/// in each case. For the *RATE metrics, one or both of these fields may be set.
/// Zero is the default value and can be left at that. For *PERCENTILE_DURATION
/// metrics, one or both of these fields may be set, and also, the duration
/// threshold value should be specified in the threshold_duration_ms member
/// below. For *AVERAGE_DURATION metrics, these fields should not be set at all.
/// A different member, threshold_duration_ms, must be set in the
/// EventAlertConfig or the TaskAlertConfig.
class EnterpriseCrmEventbusProtoBaseAlertConfigThresholdValue {
  core.String? absolute;
  core.int? percentage;

  EnterpriseCrmEventbusProtoBaseAlertConfigThresholdValue({
    this.absolute,
    this.percentage,
  });

  EnterpriseCrmEventbusProtoBaseAlertConfigThresholdValue.fromJson(
    core.Map json_,
  ) : this(
        absolute: json_['absolute'] as core.String?,
        percentage: json_['percentage'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (absolute != null) 'absolute': absolute!,
    if (percentage != null) 'percentage': percentage!,
  };
}

typedef EnterpriseCrmEventbusProtoBooleanParameterArray =
    $EventbusProtoBooleanParameterArray;

class EnterpriseCrmEventbusProtoBuganizerNotification {
  /// Whom to assign the new bug.
  ///
  /// Optional.
  core.String? assigneeEmailAddress;

  /// ID of the buganizer component within which to create a new issue.
  ///
  /// Required.
  core.String? componentId;

  /// ID of the buganizer template to use.
  ///
  /// Optional.
  core.String? templateId;

  /// Title of the issue to be created.
  ///
  /// Required.
  core.String? title;

  EnterpriseCrmEventbusProtoBuganizerNotification({
    this.assigneeEmailAddress,
    this.componentId,
    this.templateId,
    this.title,
  });

  EnterpriseCrmEventbusProtoBuganizerNotification.fromJson(core.Map json_)
    : this(
        assigneeEmailAddress: json_['assigneeEmailAddress'] as core.String?,
        componentId: json_['componentId'] as core.String?,
        templateId: json_['templateId'] as core.String?,
        title: json_['title'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (assigneeEmailAddress != null)
      'assigneeEmailAddress': assigneeEmailAddress!,
    if (componentId != null) 'componentId': componentId!,
    if (templateId != null) 'templateId': templateId!,
    if (title != null) 'title': title!,
  };
}

/// Cloud Logging details, selected by the user for the integration version
/// (workflow).
///
/// This message field will be also used in ExecutionInfo, to indicate the
/// CloudLoggingDetails config at the time of workflow (integration version)
/// execution, since this field value can be changed for an unpublished
/// workflow.
class EnterpriseCrmEventbusProtoCloudLoggingDetails {
  /// Severity selected by the customer for the logs to be sent to Cloud
  /// Logging, for the integration version getting executed.
  /// Possible string values are:
  /// - "CLOUD_LOGGING_SEVERITY_UNSPECIFIED" : Unspecified
  /// - "INFO" : If Severity selected is `INFO`, then all the Integration
  /// Execution States (`IN_PROCESS`, `ON_HOLD`, `SUCCEEDED`, `SUSPENDED`,
  /// `ERROR`, `CANCELLED`) will be sent to Cloud Logging.
  /// - "ERROR" : If Severity selected is `ERROR`, then only the following
  /// Integration Execution States (`ERROR`, `CANCELLED`) will be sent to Cloud
  /// Logging.
  /// - "WARNING" : If Severity selected is `WARNING`, then only the following
  /// Integration Execution States (`ERROR`, `CANCELLED`) will be sent to Cloud
  /// Logging.
  core.String? cloudLoggingSeverity;

  /// Status of whether Cloud Logging is enabled or not for the integration
  /// version getting executed.
  core.bool? enableCloudLogging;

  EnterpriseCrmEventbusProtoCloudLoggingDetails({
    this.cloudLoggingSeverity,
    this.enableCloudLogging,
  });

  EnterpriseCrmEventbusProtoCloudLoggingDetails.fromJson(core.Map json_)
    : this(
        cloudLoggingSeverity: json_['cloudLoggingSeverity'] as core.String?,
        enableCloudLogging: json_['enableCloudLogging'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (cloudLoggingSeverity != null)
      'cloudLoggingSeverity': cloudLoggingSeverity!,
    if (enableCloudLogging != null) 'enableCloudLogging': enableCloudLogging!,
  };
}

/// Cloud Scheduler Trigger configuration
typedef EnterpriseCrmEventbusProtoCloudSchedulerConfig = $CloudSchedulerConfig;

/// This message recursively combines constituent conditions using logical AND.
class EnterpriseCrmEventbusProtoCombinedCondition {
  /// A set of individual constituent conditions.
  core.List<EnterpriseCrmEventbusProtoCondition>? conditions;

  EnterpriseCrmEventbusProtoCombinedCondition({this.conditions});

  EnterpriseCrmEventbusProtoCombinedCondition.fromJson(core.Map json_)
    : this(
        conditions:
            (json_['conditions'] as core.List?)
                ?.map(
                  (value) => EnterpriseCrmEventbusProtoCondition.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (conditions != null) 'conditions': conditions!,
  };
}

/// Condition that uses `operator` to evaluate the key against the value.
class EnterpriseCrmEventbusProtoCondition {
  /// Key that's evaluated against the `value`.
  ///
  /// Please note the data type of the runtime value associated with the key
  /// should match the data type of `value`, else an IllegalArgumentException is
  /// thrown.
  core.String? eventPropertyKey;

  /// Operator used to evaluate the condition.
  ///
  /// Please note that an operator with an inappropriate key/value operand will
  /// result in IllegalArgumentException, e.g. CONTAINS with boolean key/value
  /// pair.
  /// Possible string values are:
  /// - "UNSET"
  /// - "EQUALS"
  /// - "CONTAINS"
  /// - "LESS_THAN"
  /// - "GREATER_THAN"
  /// - "EXISTS"
  /// - "DOES_NOT_EXIST"
  /// - "IS_EMPTY"
  /// - "IS_NOT_EMPTY"
  core.String? operator;

  /// Value that's checked for the key.
  EnterpriseCrmEventbusProtoValueType? value;

  EnterpriseCrmEventbusProtoCondition({
    this.eventPropertyKey,
    this.operator,
    this.value,
  });

  EnterpriseCrmEventbusProtoCondition.fromJson(core.Map json_)
    : this(
        eventPropertyKey: json_['eventPropertyKey'] as core.String?,
        operator: json_['operator'] as core.String?,
        value:
            json_.containsKey('value')
                ? EnterpriseCrmEventbusProtoValueType.fromJson(
                  json_['value'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (eventPropertyKey != null) 'eventPropertyKey': eventPropertyKey!,
    if (operator != null) 'operator': operator!,
    if (value != null) 'value': value!,
  };
}

/// Contains the combined condition calculation results.
class EnterpriseCrmEventbusProtoConditionResult {
  /// the current task number.
  core.String? currentTaskNumber;

  /// the next task number.
  core.String? nextTaskNumber;

  /// the result comes out after evaluate the combined condition.
  ///
  /// True if there's no combined condition specified.
  core.bool? result;

  EnterpriseCrmEventbusProtoConditionResult({
    this.currentTaskNumber,
    this.nextTaskNumber,
    this.result,
  });

  EnterpriseCrmEventbusProtoConditionResult.fromJson(core.Map json_)
    : this(
        currentTaskNumber: json_['currentTaskNumber'] as core.String?,
        nextTaskNumber: json_['nextTaskNumber'] as core.String?,
        result: json_['result'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (currentTaskNumber != null) 'currentTaskNumber': currentTaskNumber!,
    if (nextTaskNumber != null) 'nextTaskNumber': nextTaskNumber!,
    if (result != null) 'result': result!,
  };
}

class EnterpriseCrmEventbusProtoConditionalFailurePolicies {
  /// The default failure policy to be applied if no conditional failure policy
  /// matches
  EnterpriseCrmEventbusProtoFailurePolicy? defaultFailurePolicy;

  /// The list of failure policies that will be applied to the task in order.
  core.List<EnterpriseCrmEventbusProtoFailurePolicy>? failurePolicies;

  EnterpriseCrmEventbusProtoConditionalFailurePolicies({
    this.defaultFailurePolicy,
    this.failurePolicies,
  });

  EnterpriseCrmEventbusProtoConditionalFailurePolicies.fromJson(core.Map json_)
    : this(
        defaultFailurePolicy:
            json_.containsKey('defaultFailurePolicy')
                ? EnterpriseCrmEventbusProtoFailurePolicy.fromJson(
                  json_['defaultFailurePolicy']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        failurePolicies:
            (json_['failurePolicies'] as core.List?)
                ?.map(
                  (value) => EnterpriseCrmEventbusProtoFailurePolicy.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (defaultFailurePolicy != null)
      'defaultFailurePolicy': defaultFailurePolicy!,
    if (failurePolicies != null) 'failurePolicies': failurePolicies!,
  };
}

/// Represents two-dimensional positions.
class EnterpriseCrmEventbusProtoCoordinate {
  core.int? x;
  core.int? y;

  EnterpriseCrmEventbusProtoCoordinate({this.x, this.y});

  EnterpriseCrmEventbusProtoCoordinate.fromJson(core.Map json_)
    : this(x: json_['x'] as core.int?, y: json_['y'] as core.int?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (x != null) 'x': x!,
    if (y != null) 'y': y!,
  };
}

class EnterpriseCrmEventbusProtoCustomSuspensionRequest {
  /// Request to fire an event containing the SuspensionInfo message.
  GoogleInternalCloudCrmEventbusV3PostToQueueWithTriggerIdRequest?
  postToQueueWithTriggerIdRequest;

  /// In the fired event, set the SuspensionInfo message as the value for this
  /// key.
  core.String? suspensionInfoEventParameterKey;

  EnterpriseCrmEventbusProtoCustomSuspensionRequest({
    this.postToQueueWithTriggerIdRequest,
    this.suspensionInfoEventParameterKey,
  });

  EnterpriseCrmEventbusProtoCustomSuspensionRequest.fromJson(core.Map json_)
    : this(
        postToQueueWithTriggerIdRequest:
            json_.containsKey('postToQueueWithTriggerIdRequest')
                ? GoogleInternalCloudCrmEventbusV3PostToQueueWithTriggerIdRequest.fromJson(
                  json_['postToQueueWithTriggerIdRequest']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        suspensionInfoEventParameterKey:
            json_['suspensionInfoEventParameterKey'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (postToQueueWithTriggerIdRequest != null)
      'postToQueueWithTriggerIdRequest': postToQueueWithTriggerIdRequest!,
    if (suspensionInfoEventParameterKey != null)
      'suspensionInfoEventParameterKey': suspensionInfoEventParameterKey!,
  };
}

typedef EnterpriseCrmEventbusProtoDoubleArray = $Shared07;
typedef EnterpriseCrmEventbusProtoDoubleParameterArray =
    $EventbusProtoDoubleParameterArray;

/// An error, warning, or information message associated with a workflow.
class EnterpriseCrmEventbusProtoErrorDetail {
  /// The associated error-code, which can be a common or internal code.
  CrmlogErrorCode? errorCode;

  /// The full text of the error message, including any parameters that were
  /// thrown along with the exception.
  core.String? errorMessage;

  /// The severity of the error: ERROR|WARN|INFO.
  /// Possible string values are:
  /// - "SEVERITY_UNSPECIFIED"
  /// - "ERROR"
  /// - "WARN"
  /// - "INFO"
  core.String? severity;

  /// The task try-number, in which, the error occurred.
  ///
  /// If zero, the error happened at the event level.
  core.int? taskNumber;

  EnterpriseCrmEventbusProtoErrorDetail({
    this.errorCode,
    this.errorMessage,
    this.severity,
    this.taskNumber,
  });

  EnterpriseCrmEventbusProtoErrorDetail.fromJson(core.Map json_)
    : this(
        errorCode:
            json_.containsKey('errorCode')
                ? CrmlogErrorCode.fromJson(
                  json_['errorCode'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        errorMessage: json_['errorMessage'] as core.String?,
        severity: json_['severity'] as core.String?,
        taskNumber: json_['taskNumber'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (errorCode != null) 'errorCode': errorCode!,
    if (errorMessage != null) 'errorMessage': errorMessage!,
    if (severity != null) 'severity': severity!,
    if (taskNumber != null) 'taskNumber': taskNumber!,
  };
}

/// LINT.IfChange This message is used for storing key value pair properties for
/// each Event / Task in the EventBus.
class EnterpriseCrmEventbusProtoEventBusProperties {
  /// An unordered list of property entries.
  core.List<EnterpriseCrmEventbusProtoPropertyEntry>? properties;

  EnterpriseCrmEventbusProtoEventBusProperties({this.properties});

  EnterpriseCrmEventbusProtoEventBusProperties.fromJson(core.Map json_)
    : this(
        properties:
            (json_['properties'] as core.List?)
                ?.map(
                  (value) => EnterpriseCrmEventbusProtoPropertyEntry.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (properties != null) 'properties': properties!,
  };
}

/// Contains the details of the execution info of this event: this includes the
/// tasks execution details plus the event execution statistics.
///
/// Next available id: 12
class EnterpriseCrmEventbusProtoEventExecutionDetails {
  /// If the execution is manually canceled, this field will contain the reason
  /// for cancellation.
  core.String? cancelReason;
  core.List<EnterpriseCrmEventbusProtoEventExecutionDetailsEventAttemptStats>?
  eventAttemptStats;
  core.List<EnterpriseCrmEventbusProtoEventExecutionSnapshot>?
  eventExecutionSnapshot;

  /// Total size of all event_execution_snapshots for an execution
  core.String? eventExecutionSnapshotsSize;

  ///
  /// Possible string values are:
  /// - "UNSPECIFIED"
  /// - "ON_HOLD" : Event is received and waiting for the execution. This
  /// happens when firing the event via "postToQueue" or "schedule".
  /// - "IN_PROCESS" : Event is under processing.
  /// - "SUCCEEDED" : Event execution successfully finished. There's no more
  /// change after this state.
  /// - "FAILED" : Event execution failed. There's no more change after this
  /// state.
  /// - "CANCELED" : Event execution canceled by user. There's no more change
  /// after this state.
  /// - "RETRY_ON_HOLD" : Event execution failed and waiting for retry.
  /// - "SUSPENDED" : Event execution suspended and waiting for manual
  /// intervention.
  core.String? eventExecutionState;

  /// Indicates the number of times the execution has restarted from the
  /// beginning.
  core.int? eventRetriesFromBeginningCount;

  /// The log file path (aka.
  ///
  /// cns address) for this event.
  core.String? logFilePath;

  /// The network address (aka.
  ///
  /// bns address) that indicates where the event executor is running.
  core.String? networkAddress;

  /// Next scheduled execution time in case the execution status was
  /// RETRY_ON_HOLD.
  core.String? nextExecutionTime;

  /// Used internally and shouldn't be exposed to users.
  ///
  /// A counter for the cron job to record how many times this event is in
  /// in_process state but don't have a lock consecutively/
  core.int? ryeLockUnheldCount;

  EnterpriseCrmEventbusProtoEventExecutionDetails({
    this.cancelReason,
    this.eventAttemptStats,
    this.eventExecutionSnapshot,
    this.eventExecutionSnapshotsSize,
    this.eventExecutionState,
    this.eventRetriesFromBeginningCount,
    this.logFilePath,
    this.networkAddress,
    this.nextExecutionTime,
    this.ryeLockUnheldCount,
  });

  EnterpriseCrmEventbusProtoEventExecutionDetails.fromJson(core.Map json_)
    : this(
        cancelReason: json_['cancelReason'] as core.String?,
        eventAttemptStats:
            (json_['eventAttemptStats'] as core.List?)
                ?.map(
                  (value) =>
                      EnterpriseCrmEventbusProtoEventExecutionDetailsEventAttemptStats.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        eventExecutionSnapshot:
            (json_['eventExecutionSnapshot'] as core.List?)
                ?.map(
                  (value) =>
                      EnterpriseCrmEventbusProtoEventExecutionSnapshot.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        eventExecutionSnapshotsSize:
            json_['eventExecutionSnapshotsSize'] as core.String?,
        eventExecutionState: json_['eventExecutionState'] as core.String?,
        eventRetriesFromBeginningCount:
            json_['eventRetriesFromBeginningCount'] as core.int?,
        logFilePath: json_['logFilePath'] as core.String?,
        networkAddress: json_['networkAddress'] as core.String?,
        nextExecutionTime: json_['nextExecutionTime'] as core.String?,
        ryeLockUnheldCount: json_['ryeLockUnheldCount'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (cancelReason != null) 'cancelReason': cancelReason!,
    if (eventAttemptStats != null) 'eventAttemptStats': eventAttemptStats!,
    if (eventExecutionSnapshot != null)
      'eventExecutionSnapshot': eventExecutionSnapshot!,
    if (eventExecutionSnapshotsSize != null)
      'eventExecutionSnapshotsSize': eventExecutionSnapshotsSize!,
    if (eventExecutionState != null)
      'eventExecutionState': eventExecutionState!,
    if (eventRetriesFromBeginningCount != null)
      'eventRetriesFromBeginningCount': eventRetriesFromBeginningCount!,
    if (logFilePath != null) 'logFilePath': logFilePath!,
    if (networkAddress != null) 'networkAddress': networkAddress!,
    if (nextExecutionTime != null) 'nextExecutionTime': nextExecutionTime!,
    if (ryeLockUnheldCount != null) 'ryeLockUnheldCount': ryeLockUnheldCount!,
  };
}

class EnterpriseCrmEventbusProtoEventExecutionDetailsEventAttemptStats {
  /// The end time of the event execution for current attempt.
  core.String? endTime;

  /// The start time of the event execution for current attempt.
  ///
  /// This could be in the future if it's been scheduled.
  core.String? startTime;

  EnterpriseCrmEventbusProtoEventExecutionDetailsEventAttemptStats({
    this.endTime,
    this.startTime,
  });

  EnterpriseCrmEventbusProtoEventExecutionDetailsEventAttemptStats.fromJson(
    core.Map json_,
  ) : this(
        endTime: json_['endTime'] as core.String?,
        startTime: json_['startTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (endTime != null) 'endTime': endTime!,
    if (startTime != null) 'startTime': startTime!,
  };
}

/// Contains the snapshot of the event execution for a given checkpoint.
///
/// Next available id: 15
class EnterpriseCrmEventbusProtoEventExecutionSnapshot {
  /// Indicates "right after which checkpoint task's execution" this snapshot is
  /// taken.
  core.String? checkpointTaskNumber;

  /// Client that the execution snapshot is associated to.
  core.String? clientId;

  /// All of the computed conditions that been calculated.
  core.List<EnterpriseCrmEventbusProtoConditionResult>? conditionResults;

  /// The parameters in Event object that differs from last snapshot.
  EnterpriseCrmEventbusProtoEventParameters? diffParams;

  /// Points to the event execution info this snapshot belongs to.
  core.String? eventExecutionInfoId;

  /// Auto-generated.
  ///
  /// Used as primary key for EventExecutionSnapshots table.
  core.String? eventExecutionSnapshotId;
  EnterpriseCrmEventbusProtoEventExecutionSnapshotEventExecutionSnapshotMetadata?
  eventExecutionSnapshotMetadata;

  /// The parameters in Event object.
  EnterpriseCrmEventbusProtoEventParameters? eventParams;

  /// indicate whether snapshot exceeded maximum size before clean up
  core.bool? exceedMaxSize;

  /// Indicates when this snapshot is taken.
  core.String? snapshotTime;

  /// All of the task execution details at the given point of time.
  core.List<EnterpriseCrmEventbusProtoTaskExecutionDetails>?
  taskExecutionDetails;

  /// The task name associated with this snapshot.
  ///
  /// Could be empty.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? taskName;

  /// Name of the workflow this event execution snapshot belongs to.
  core.String? workflowName;

  EnterpriseCrmEventbusProtoEventExecutionSnapshot({
    this.checkpointTaskNumber,
    this.clientId,
    this.conditionResults,
    this.diffParams,
    this.eventExecutionInfoId,
    this.eventExecutionSnapshotId,
    this.eventExecutionSnapshotMetadata,
    this.eventParams,
    this.exceedMaxSize,
    this.snapshotTime,
    this.taskExecutionDetails,
    this.taskName,
    this.workflowName,
  });

  EnterpriseCrmEventbusProtoEventExecutionSnapshot.fromJson(core.Map json_)
    : this(
        checkpointTaskNumber: json_['checkpointTaskNumber'] as core.String?,
        clientId: json_['clientId'] as core.String?,
        conditionResults:
            (json_['conditionResults'] as core.List?)
                ?.map(
                  (value) => EnterpriseCrmEventbusProtoConditionResult.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        diffParams:
            json_.containsKey('diffParams')
                ? EnterpriseCrmEventbusProtoEventParameters.fromJson(
                  json_['diffParams'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        eventExecutionInfoId: json_['eventExecutionInfoId'] as core.String?,
        eventExecutionSnapshotId:
            json_['eventExecutionSnapshotId'] as core.String?,
        eventExecutionSnapshotMetadata:
            json_.containsKey('eventExecutionSnapshotMetadata')
                ? EnterpriseCrmEventbusProtoEventExecutionSnapshotEventExecutionSnapshotMetadata.fromJson(
                  json_['eventExecutionSnapshotMetadata']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        eventParams:
            json_.containsKey('eventParams')
                ? EnterpriseCrmEventbusProtoEventParameters.fromJson(
                  json_['eventParams'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        exceedMaxSize: json_['exceedMaxSize'] as core.bool?,
        snapshotTime: json_['snapshotTime'] as core.String?,
        taskExecutionDetails:
            (json_['taskExecutionDetails'] as core.List?)
                ?.map(
                  (value) =>
                      EnterpriseCrmEventbusProtoTaskExecutionDetails.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        taskName: json_['taskName'] as core.String?,
        workflowName: json_['workflowName'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (checkpointTaskNumber != null)
      'checkpointTaskNumber': checkpointTaskNumber!,
    if (clientId != null) 'clientId': clientId!,
    if (conditionResults != null) 'conditionResults': conditionResults!,
    if (diffParams != null) 'diffParams': diffParams!,
    if (eventExecutionInfoId != null)
      'eventExecutionInfoId': eventExecutionInfoId!,
    if (eventExecutionSnapshotId != null)
      'eventExecutionSnapshotId': eventExecutionSnapshotId!,
    if (eventExecutionSnapshotMetadata != null)
      'eventExecutionSnapshotMetadata': eventExecutionSnapshotMetadata!,
    if (eventParams != null) 'eventParams': eventParams!,
    if (exceedMaxSize != null) 'exceedMaxSize': exceedMaxSize!,
    if (snapshotTime != null) 'snapshotTime': snapshotTime!,
    if (taskExecutionDetails != null)
      'taskExecutionDetails': taskExecutionDetails!,
    if (taskName != null) 'taskName': taskName!,
    if (workflowName != null) 'workflowName': workflowName!,
  };
}

class EnterpriseCrmEventbusProtoEventExecutionSnapshotEventExecutionSnapshotMetadata {
  /// Ancestor iteration number for the task(it will only be non-empty if the
  /// task is under 'private workflow')
  core.List<core.String>? ancestorIterationNumbers;

  /// Ancestor task number for the task(it will only be non-empty if the task is
  /// under 'private workflow')
  core.List<core.String>? ancestorTaskNumbers;

  /// the event attempt number this snapshot belongs to.
  core.int? eventAttemptNum;

  /// The direct integration which the event execution snapshots belongs to
  core.String? integrationName;

  /// the task attempt number this snapshot belongs to.
  ///
  /// Could be empty.
  core.int? taskAttemptNum;

  /// the task label associated with this snapshot.
  ///
  /// Could be empty.
  core.String? taskLabel;

  /// the task name associated with this snapshot.
  ///
  /// Could be empty.
  core.String? taskName;

  /// The task number associated with this snapshot.
  ///
  /// Could be empty.
  core.String? taskNumber;

  EnterpriseCrmEventbusProtoEventExecutionSnapshotEventExecutionSnapshotMetadata({
    this.ancestorIterationNumbers,
    this.ancestorTaskNumbers,
    this.eventAttemptNum,
    this.integrationName,
    this.taskAttemptNum,
    this.taskLabel,
    this.taskName,
    this.taskNumber,
  });

  EnterpriseCrmEventbusProtoEventExecutionSnapshotEventExecutionSnapshotMetadata.fromJson(
    core.Map json_,
  ) : this(
        ancestorIterationNumbers:
            (json_['ancestorIterationNumbers'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        ancestorTaskNumbers:
            (json_['ancestorTaskNumbers'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        eventAttemptNum: json_['eventAttemptNum'] as core.int?,
        integrationName: json_['integrationName'] as core.String?,
        taskAttemptNum: json_['taskAttemptNum'] as core.int?,
        taskLabel: json_['taskLabel'] as core.String?,
        taskName: json_['taskName'] as core.String?,
        taskNumber: json_['taskNumber'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (ancestorIterationNumbers != null)
      'ancestorIterationNumbers': ancestorIterationNumbers!,
    if (ancestorTaskNumbers != null)
      'ancestorTaskNumbers': ancestorTaskNumbers!,
    if (eventAttemptNum != null) 'eventAttemptNum': eventAttemptNum!,
    if (integrationName != null) 'integrationName': integrationName!,
    if (taskAttemptNum != null) 'taskAttemptNum': taskAttemptNum!,
    if (taskLabel != null) 'taskLabel': taskLabel!,
    if (taskName != null) 'taskName': taskName!,
    if (taskNumber != null) 'taskNumber': taskNumber!,
  };
}

/// LINT.IfChange This message is used for processing and persisting (when
/// applicable) key value pair parameters for each event in the event bus.
///
/// Please see
class EnterpriseCrmEventbusProtoEventParameters {
  /// Parameters are a part of Event and can be used to communicate between
  /// different tasks that are part of the same integration execution.
  core.List<EnterpriseCrmEventbusProtoParameterEntry>? parameters;

  EnterpriseCrmEventbusProtoEventParameters({this.parameters});

  EnterpriseCrmEventbusProtoEventParameters.fromJson(core.Map json_)
    : this(
        parameters:
            (json_['parameters'] as core.List?)
                ?.map(
                  (value) => EnterpriseCrmEventbusProtoParameterEntry.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (parameters != null) 'parameters': parameters!,
  };
}

/// Message that helps aggregate all sub-executions triggered by one execution
/// and keeps track of child-parent relationships.
class EnterpriseCrmEventbusProtoExecutionTraceInfo {
  /// Parent event execution info id that triggers the current execution through
  /// SubWorkflowExecutorTask.
  core.String? parentEventExecutionInfoId;

  /// Used to aggregate ExecutionTraceInfo.
  core.String? traceId;

  EnterpriseCrmEventbusProtoExecutionTraceInfo({
    this.parentEventExecutionInfoId,
    this.traceId,
  });

  EnterpriseCrmEventbusProtoExecutionTraceInfo.fromJson(core.Map json_)
    : this(
        parentEventExecutionInfoId:
            json_['parentEventExecutionInfoId'] as core.String?,
        traceId: json_['traceId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (parentEventExecutionInfoId != null)
      'parentEventExecutionInfoId': parentEventExecutionInfoId!,
    if (traceId != null) 'traceId': traceId!,
  };
}

/// Policy that defines the task retry logic and failure type.
///
/// If no FailurePolicy is defined for a task, all its dependent tasks will not
/// be executed (i.e, a `retry_strategy` of NONE will be applied).
class EnterpriseCrmEventbusProtoFailurePolicy {
  /// Required if retry_strategy is FIXED_INTERVAL or
  /// LINEAR/EXPONENTIAL_BACKOFF/RESTART_WORKFLOW_WITH_BACKOFF.
  ///
  /// Defines the initial interval for backoff.
  core.String? intervalInSeconds;

  /// Required if retry_strategy is FIXED_INTERVAL or
  /// LINEAR/EXPONENTIAL_BACKOFF/RESTART_WORKFLOW_WITH_BACKOFF.
  ///
  /// Defines the number of times the task will be retried if failed.
  core.int? maxNumRetries;

  /// The retry condition that will be evaluated for this failure policy with
  /// the corresponding retry strategy.
  ///
  /// Optional.
  core.String? retryCondition;

  /// Defines what happens to the task upon failure.
  /// Possible string values are:
  /// - "UNSPECIFIED"
  /// - "IGNORE" : Ignores the failure of this task. The rest of the workflow
  /// will be executed Assuming this task succeeded.
  /// - "NONE" : Causes a permanent failure of the task. However, if the last
  /// task(s) of event was successfully completed despite the failure of this
  /// task, it has no impact on the workflow.
  /// - "FATAL" : Causes a permanent failure of the event. It is different from
  /// NONE because this will mark the event as FAILED by shutting down the event
  /// execution.
  /// - "FIXED_INTERVAL" : The task will be retried from the failed task onwards
  /// after a fixed delay. A max-retry count is required to be specified with
  /// this strategy. A jitter is added to each exponential interval so that
  /// concurrently failing tasks of the same type do not end up retrying after
  /// the exact same exponential interval. Max_num_retries and
  /// interval_in_seconds must be specified.
  /// - "LINEAR_BACKOFF" : The task will be retried from the failed task onwards
  /// after a fixed delay that linearly increases with each retry attempt. A
  /// jitter is added to each exponential interval so that concurrently failing
  /// tasks of the same type do not end up retrying after the exact same
  /// exponential interval. A max-retry count is required to be specified with
  /// this strategy. Max_num_retries and interval_in_seconds must be specified.
  /// - "EXPONENTIAL_BACKOFF" : The task will be retried after an exponentially
  /// increasing period of time with each failure. A jitter is added to each
  /// exponential interval so that concurrently failing tasks of the same type
  /// do not end up retrying after the exact same exponential interval. A
  /// max-retry count is required to be specified with this strategy.
  /// `max_num_retries` and `interval_in_seconds` must be specified.
  /// - "RESTART_WORKFLOW_WITH_BACKOFF" : The entire workflow will be restarted
  /// with the initial parameters that were set when the event was fired. A
  /// max-retry count is required to be specified with this strategy.
  /// `max_num_retries` and `interval_in_seconds` must be specified.
  core.String? retryStrategy;

  EnterpriseCrmEventbusProtoFailurePolicy({
    this.intervalInSeconds,
    this.maxNumRetries,
    this.retryCondition,
    this.retryStrategy,
  });

  EnterpriseCrmEventbusProtoFailurePolicy.fromJson(core.Map json_)
    : this(
        intervalInSeconds: json_['intervalInSeconds'] as core.String?,
        maxNumRetries: json_['maxNumRetries'] as core.int?,
        retryCondition: json_['retryCondition'] as core.String?,
        retryStrategy: json_['retryStrategy'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (intervalInSeconds != null) 'intervalInSeconds': intervalInSeconds!,
    if (maxNumRetries != null) 'maxNumRetries': maxNumRetries!,
    if (retryCondition != null) 'retryCondition': retryCondition!,
    if (retryStrategy != null) 'retryStrategy': retryStrategy!,
  };
}

typedef EnterpriseCrmEventbusProtoIntArray = $Shared08;
typedef EnterpriseCrmEventbusProtoIntParameterArray =
    $EventbusProtoIntParameterArray;

/// The LogSettings define the logging attributes for an event property.
///
/// These attributes are used to map the property to the parameter in the log
/// proto. Also used to define scrubbing/truncation behavior and PII
/// information.
class EnterpriseCrmEventbusProtoLogSettings {
  /// The name of corresponding logging field of the event property.
  ///
  /// If omitted, assumes the same name as the event property key.
  core.String? logFieldName;

  ///
  /// Possible string values are:
  /// - "SEED_PERIOD_UNSPECIFIED"
  /// - "DAY" : Sanitized values remain constant for the day of the event.
  /// - "WEEK" : Sanitized values remain constant for the week of the event; may
  /// cross month boundaries.
  /// - "MONTH" : Sanitized values remain constant for the month of the event.
  core.String? seedPeriod;

  ///
  /// Possible string values are:
  /// - "SEED_SCOPE_UNSPECIFIED"
  /// - "EVENT_NAME" : Hash computations include the event name.
  /// - "TIME_PERIOD" : Hash computations include a time period.
  /// - "PARAM_NAME" : Hash computations include the param name.
  core.String? seedScope;

  EnterpriseCrmEventbusProtoLogSettings({
    this.logFieldName,
    this.seedPeriod,
    this.seedScope,
  });

  EnterpriseCrmEventbusProtoLogSettings.fromJson(core.Map json_)
    : this(
        logFieldName: json_['logFieldName'] as core.String?,
        seedPeriod: json_['seedPeriod'] as core.String?,
        seedScope: json_['seedScope'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (logFieldName != null) 'logFieldName': logFieldName!,
    if (seedPeriod != null) 'seedPeriod': seedPeriod!,
    if (seedScope != null) 'seedScope': seedScope!,
  };
}

/// The task that is next in line to be executed, if the condition specified
/// evaluated to true.
class EnterpriseCrmEventbusProtoNextTask {
  /// Combined condition for this task to become an eligible next task.
  ///
  /// Each of these combined_conditions are joined with logical OR. DEPRECATED:
  /// use `condition`
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.List<EnterpriseCrmEventbusProtoCombinedCondition>? combinedConditions;

  /// Standard filter expression for this task to become an eligible next task.
  core.String? condition;

  /// User-provided description intended to give more business context about the
  /// next task edge or condition.
  core.String? description;

  /// User-provided label that is attached to this edge in the UI.
  core.String? label;

  /// ID of the next task.
  core.String? taskConfigId;

  /// Task number of the next task.
  core.String? taskNumber;

  EnterpriseCrmEventbusProtoNextTask({
    this.combinedConditions,
    this.condition,
    this.description,
    this.label,
    this.taskConfigId,
    this.taskNumber,
  });

  EnterpriseCrmEventbusProtoNextTask.fromJson(core.Map json_)
    : this(
        combinedConditions:
            (json_['combinedConditions'] as core.List?)
                ?.map(
                  (value) =>
                      EnterpriseCrmEventbusProtoCombinedCondition.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        condition: json_['condition'] as core.String?,
        description: json_['description'] as core.String?,
        label: json_['label'] as core.String?,
        taskConfigId: json_['taskConfigId'] as core.String?,
        taskNumber: json_['taskNumber'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (combinedConditions != null) 'combinedConditions': combinedConditions!,
    if (condition != null) 'condition': condition!,
    if (description != null) 'description': description!,
    if (label != null) 'label': label!,
    if (taskConfigId != null) 'taskConfigId': taskConfigId!,
    if (taskNumber != null) 'taskNumber': taskNumber!,
  };
}

/// The teardown task that is next in line to be executed.
///
/// We support only sequential execution of teardown tasks (i.e. no branching).
class EnterpriseCrmEventbusProtoNextTeardownTask {
  /// Name of the next teardown task.
  ///
  /// Required.
  core.String? name;

  EnterpriseCrmEventbusProtoNextTeardownTask({this.name});

  EnterpriseCrmEventbusProtoNextTeardownTask.fromJson(core.Map json_)
    : this(name: json_['name'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (name != null) 'name': name!,
  };
}

/// Represents a node identifier (type + id).
///
/// Next highest id: 3
class EnterpriseCrmEventbusProtoNodeIdentifier {
  /// Configuration of the edge.
  core.String? elementIdentifier;

  /// Destination node where the edge ends.
  ///
  /// It can only be a task config.
  /// Possible string values are:
  /// - "UNKNOWN_TYPE"
  /// - "TASK_CONFIG"
  /// - "TRIGGER_CONFIG"
  core.String? elementType;

  EnterpriseCrmEventbusProtoNodeIdentifier({
    this.elementIdentifier,
    this.elementType,
  });

  EnterpriseCrmEventbusProtoNodeIdentifier.fromJson(core.Map json_)
    : this(
        elementIdentifier: json_['elementIdentifier'] as core.String?,
        elementType: json_['elementType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (elementIdentifier != null) 'elementIdentifier': elementIdentifier!,
    if (elementType != null) 'elementType': elementType!,
  };
}

class EnterpriseCrmEventbusProtoNotification {
  EnterpriseCrmEventbusProtoBuganizerNotification? buganizerNotification;
  EnterpriseCrmEventbusProtoAddress? emailAddress;
  core.String? escalatorQueue;
  core.String? pubsubTopic;

  /// If the out-of-the-box email/pubsub notifications are not suitable and
  /// custom logic is required, fire a workflow containing all info needed to
  /// notify users to resume execution.
  EnterpriseCrmEventbusProtoCustomSuspensionRequest? request;

  EnterpriseCrmEventbusProtoNotification({
    this.buganizerNotification,
    this.emailAddress,
    this.escalatorQueue,
    this.pubsubTopic,
    this.request,
  });

  EnterpriseCrmEventbusProtoNotification.fromJson(core.Map json_)
    : this(
        buganizerNotification:
            json_.containsKey('buganizerNotification')
                ? EnterpriseCrmEventbusProtoBuganizerNotification.fromJson(
                  json_['buganizerNotification']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        emailAddress:
            json_.containsKey('emailAddress')
                ? EnterpriseCrmEventbusProtoAddress.fromJson(
                  json_['emailAddress'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        escalatorQueue: json_['escalatorQueue'] as core.String?,
        pubsubTopic: json_['pubsubTopic'] as core.String?,
        request:
            json_.containsKey('request')
                ? EnterpriseCrmEventbusProtoCustomSuspensionRequest.fromJson(
                  json_['request'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (buganizerNotification != null)
      'buganizerNotification': buganizerNotification!,
    if (emailAddress != null) 'emailAddress': emailAddress!,
    if (escalatorQueue != null) 'escalatorQueue': escalatorQueue!,
    if (pubsubTopic != null) 'pubsubTopic': pubsubTopic!,
    if (request != null) 'request': request!,
  };
}

class EnterpriseCrmEventbusProtoParamSpecEntryConfig {
  /// A short phrase to describe what this parameter contains.
  core.String? descriptivePhrase;

  /// Detailed help text for this parameter containing information not provided
  /// elsewhere.
  ///
  /// For example, instructions on how to migrate from a deprecated parameter.
  core.String? helpText;

  /// Whether the default value is hidden in the UI.
  core.bool? hideDefaultValue;

  ///
  /// Possible string values are:
  /// - "DEFAULT" : A single-line input for strings, a numeric input box for
  /// numbers, or a checkbox for booleans.
  /// - "STRING_MULTI_LINE" : A multi-line input box for longer strings/string
  /// templates.
  /// - "NUMBER_SLIDER" : A slider to select a numerical value. The default
  /// range is \[0, 100\].
  /// - "BOOLEAN_TOGGLE" : A toggle button for boolean parameters.
  core.String? inputDisplayOption;

  /// Whether this field is hidden in the UI.
  core.bool? isHidden;

  /// A user-friendly label for the parameter.
  core.String? label;

  ///
  /// Possible string values are:
  /// - "DEFAULT_NOT_PARAMETER_NAME" : This field is not a parameter name.
  /// - "IS_PARAMETER_NAME" : If this field is a string and this option is
  /// selected, the field will be interpreted as a parameter name. Users will be
  /// able to choose a variable using the autocomplete, but the name will be
  /// stored as a literal string.
  /// - "KEY_IS_PARAMETER_NAME" : If this field is a ParameterMap and this
  /// option is selected, the map's keys will be interpreted as parameter names.
  /// Ignored if this field is not a ParameterMap.
  /// - "VALUE_IS_PARAMETER_NAME" : If this field is a ParameterMap and this
  /// option is selected, the map's values will be interpreted as parameter
  /// names. Ignored if this field is not a ParameterMap.
  core.String? parameterNameOption;

  /// A user-friendly label for subSection under which the parameter will be
  /// displayed.
  core.String? subSectionLabel;

  /// Placeholder text which will appear in the UI input form for this
  /// parameter.
  core.String? uiPlaceholderText;

  EnterpriseCrmEventbusProtoParamSpecEntryConfig({
    this.descriptivePhrase,
    this.helpText,
    this.hideDefaultValue,
    this.inputDisplayOption,
    this.isHidden,
    this.label,
    this.parameterNameOption,
    this.subSectionLabel,
    this.uiPlaceholderText,
  });

  EnterpriseCrmEventbusProtoParamSpecEntryConfig.fromJson(core.Map json_)
    : this(
        descriptivePhrase: json_['descriptivePhrase'] as core.String?,
        helpText: json_['helpText'] as core.String?,
        hideDefaultValue: json_['hideDefaultValue'] as core.bool?,
        inputDisplayOption: json_['inputDisplayOption'] as core.String?,
        isHidden: json_['isHidden'] as core.bool?,
        label: json_['label'] as core.String?,
        parameterNameOption: json_['parameterNameOption'] as core.String?,
        subSectionLabel: json_['subSectionLabel'] as core.String?,
        uiPlaceholderText: json_['uiPlaceholderText'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (descriptivePhrase != null) 'descriptivePhrase': descriptivePhrase!,
    if (helpText != null) 'helpText': helpText!,
    if (hideDefaultValue != null) 'hideDefaultValue': hideDefaultValue!,
    if (inputDisplayOption != null) 'inputDisplayOption': inputDisplayOption!,
    if (isHidden != null) 'isHidden': isHidden!,
    if (label != null) 'label': label!,
    if (parameterNameOption != null)
      'parameterNameOption': parameterNameOption!,
    if (subSectionLabel != null) 'subSectionLabel': subSectionLabel!,
    if (uiPlaceholderText != null) 'uiPlaceholderText': uiPlaceholderText!,
  };
}

class EnterpriseCrmEventbusProtoParamSpecEntryProtoDefinition {
  /// The fully-qualified proto name.
  ///
  /// This message, for example, would be
  /// "enterprise.crm.eventbus.proto.ParamSpecEntry.ProtoDefinition".
  core.String? fullName;

  /// Path to the proto file that contains the message type's definition.
  core.String? path;

  EnterpriseCrmEventbusProtoParamSpecEntryProtoDefinition({
    this.fullName,
    this.path,
  });

  EnterpriseCrmEventbusProtoParamSpecEntryProtoDefinition.fromJson(
    core.Map json_,
  ) : this(
        fullName: json_['fullName'] as core.String?,
        path: json_['path'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (fullName != null) 'fullName': fullName!,
    if (path != null) 'path': path!,
  };
}

class EnterpriseCrmEventbusProtoParamSpecEntryValidationRule {
  EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleDoubleRange?
  doubleRange;
  EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleIntRange? intRange;
  EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleStringRegex?
  stringRegex;

  EnterpriseCrmEventbusProtoParamSpecEntryValidationRule({
    this.doubleRange,
    this.intRange,
    this.stringRegex,
  });

  EnterpriseCrmEventbusProtoParamSpecEntryValidationRule.fromJson(
    core.Map json_,
  ) : this(
        doubleRange:
            json_.containsKey('doubleRange')
                ? EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleDoubleRange.fromJson(
                  json_['doubleRange'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        intRange:
            json_.containsKey('intRange')
                ? EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleIntRange.fromJson(
                  json_['intRange'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        stringRegex:
            json_.containsKey('stringRegex')
                ? EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleStringRegex.fromJson(
                  json_['stringRegex'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (doubleRange != null) 'doubleRange': doubleRange!,
    if (intRange != null) 'intRange': intRange!,
    if (stringRegex != null) 'stringRegex': stringRegex!,
  };
}

/// Range used to validate doubles and floats.
class EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleDoubleRange {
  /// The inclusive maximum of the acceptable range.
  core.double? max;

  /// The inclusive minimum of the acceptable range.
  core.double? min;

  EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleDoubleRange({
    this.max,
    this.min,
  });

  EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleDoubleRange.fromJson(
    core.Map json_,
  ) : this(
        max: (json_['max'] as core.num?)?.toDouble(),
        min: (json_['min'] as core.num?)?.toDouble(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (max != null) 'max': max!,
    if (min != null) 'min': min!,
  };
}

/// Range used to validate longs and ints.
class EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleIntRange {
  /// The inclusive maximum of the acceptable range.
  core.String? max;

  /// The inclusive minimum of the acceptable range.
  core.String? min;

  EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleIntRange({
    this.max,
    this.min,
  });

  EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleIntRange.fromJson(
    core.Map json_,
  ) : this(
        max: json_['max'] as core.String?,
        min: json_['min'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (max != null) 'max': max!,
    if (min != null) 'min': min!,
  };
}

/// Rule used to validate strings.
class EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleStringRegex {
  /// Whether the regex matcher is applied exclusively (if true, matching values
  /// will be rejected).
  core.bool? exclusive;

  /// The regex applied to the input value(s).
  core.String? regex;

  EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleStringRegex({
    this.exclusive,
    this.regex,
  });

  EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleStringRegex.fromJson(
    core.Map json_,
  ) : this(
        exclusive: json_['exclusive'] as core.bool?,
        regex: json_['regex'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (exclusive != null) 'exclusive': exclusive!,
    if (regex != null) 'regex': regex!,
  };
}

/// Key-value pair of EventBus parameters.
class EnterpriseCrmEventbusProtoParameterEntry {
  /// Key is used to retrieve the corresponding parameter value.
  ///
  /// This should be unique for a given fired event. These parameters must be
  /// predefined in the integration definition.
  core.String? key;

  /// True if this parameter should be masked in the logs
  core.bool? masked;

  /// Values for the defined keys.
  ///
  /// Each value can either be string, int, double or any proto message.
  EnterpriseCrmEventbusProtoParameterValueType? value;

  EnterpriseCrmEventbusProtoParameterEntry({this.key, this.masked, this.value});

  EnterpriseCrmEventbusProtoParameterEntry.fromJson(core.Map json_)
    : this(
        key: json_['key'] as core.String?,
        masked: json_['masked'] as core.bool?,
        value:
            json_.containsKey('value')
                ? EnterpriseCrmEventbusProtoParameterValueType.fromJson(
                  json_['value'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (key != null) 'key': key!,
    if (masked != null) 'masked': masked!,
    if (value != null) 'value': value!,
  };
}

/// LINT.IfChange To support various types of parameter values.
///
/// Next available id: 14
class EnterpriseCrmEventbusProtoParameterValueType {
  EnterpriseCrmEventbusProtoBooleanParameterArray? booleanArray;
  core.bool? booleanValue;
  EnterpriseCrmEventbusProtoDoubleParameterArray? doubleArray;
  core.double? doubleValue;
  EnterpriseCrmEventbusProtoIntParameterArray? intArray;
  core.String? intValue;
  EnterpriseCrmEventbusProtoProtoParameterArray? protoArray;

  ///
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? protoValue;
  EnterpriseCrmEventbusProtoSerializedObjectParameter? serializedObjectValue;
  EnterpriseCrmEventbusProtoStringParameterArray? stringArray;
  core.String? stringValue;

  EnterpriseCrmEventbusProtoParameterValueType({
    this.booleanArray,
    this.booleanValue,
    this.doubleArray,
    this.doubleValue,
    this.intArray,
    this.intValue,
    this.protoArray,
    this.protoValue,
    this.serializedObjectValue,
    this.stringArray,
    this.stringValue,
  });

  EnterpriseCrmEventbusProtoParameterValueType.fromJson(core.Map json_)
    : this(
        booleanArray:
            json_.containsKey('booleanArray')
                ? EnterpriseCrmEventbusProtoBooleanParameterArray.fromJson(
                  json_['booleanArray'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        booleanValue: json_['booleanValue'] as core.bool?,
        doubleArray:
            json_.containsKey('doubleArray')
                ? EnterpriseCrmEventbusProtoDoubleParameterArray.fromJson(
                  json_['doubleArray'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        doubleValue: (json_['doubleValue'] as core.num?)?.toDouble(),
        intArray:
            json_.containsKey('intArray')
                ? EnterpriseCrmEventbusProtoIntParameterArray.fromJson(
                  json_['intArray'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        intValue: json_['intValue'] as core.String?,
        protoArray:
            json_.containsKey('protoArray')
                ? EnterpriseCrmEventbusProtoProtoParameterArray.fromJson(
                  json_['protoArray'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        protoValue:
            json_.containsKey('protoValue')
                ? json_['protoValue'] as core.Map<core.String, core.dynamic>
                : null,
        serializedObjectValue:
            json_.containsKey('serializedObjectValue')
                ? EnterpriseCrmEventbusProtoSerializedObjectParameter.fromJson(
                  json_['serializedObjectValue']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        stringArray:
            json_.containsKey('stringArray')
                ? EnterpriseCrmEventbusProtoStringParameterArray.fromJson(
                  json_['stringArray'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        stringValue: json_['stringValue'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (booleanArray != null) 'booleanArray': booleanArray!,
    if (booleanValue != null) 'booleanValue': booleanValue!,
    if (doubleArray != null) 'doubleArray': doubleArray!,
    if (doubleValue != null) 'doubleValue': doubleValue!,
    if (intArray != null) 'intArray': intArray!,
    if (intValue != null) 'intValue': intValue!,
    if (protoArray != null) 'protoArray': protoArray!,
    if (protoValue != null) 'protoValue': protoValue!,
    if (serializedObjectValue != null)
      'serializedObjectValue': serializedObjectValue!,
    if (stringArray != null) 'stringArray': stringArray!,
    if (stringValue != null) 'stringValue': stringValue!,
  };
}

/// Key-value pair of EventBus property.
class EnterpriseCrmEventbusProtoPropertyEntry {
  /// Key is used to retrieve the corresponding property value.
  ///
  /// This should be unique for a given fired event. The Tasks should be aware
  /// of the keys used while firing the events for them to be able to retrieve
  /// the values.
  core.String? key;

  /// Values for the defined keys.
  ///
  /// Each value can either be string, int, double or any proto message.
  EnterpriseCrmEventbusProtoValueType? value;

  EnterpriseCrmEventbusProtoPropertyEntry({this.key, this.value});

  EnterpriseCrmEventbusProtoPropertyEntry.fromJson(core.Map json_)
    : this(
        key: json_['key'] as core.String?,
        value:
            json_.containsKey('value')
                ? EnterpriseCrmEventbusProtoValueType.fromJson(
                  json_['value'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (key != null) 'key': key!,
    if (value != null) 'value': value!,
  };
}

typedef EnterpriseCrmEventbusProtoProtoParameterArray =
    $EventbusProtoProtoParameterArray;
typedef EnterpriseCrmEventbusProtoSerializedObjectParameter =
    $EventbusProtoSerializedObjectParameter;

class EnterpriseCrmEventbusProtoStringArray {
  core.List<core.String>? values;

  EnterpriseCrmEventbusProtoStringArray({this.values});

  EnterpriseCrmEventbusProtoStringArray.fromJson(core.Map json_)
    : this(
        values:
            (json_['values'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (values != null) 'values': values!,
  };
}

typedef EnterpriseCrmEventbusProtoStringParameterArray =
    $EventbusProtoStringParameterArray;

/// Policy that dictates the behavior for the task after it completes
/// successfully.
class EnterpriseCrmEventbusProtoSuccessPolicy {
  /// State to which the execution snapshot status will be set if the task
  /// succeeds.
  /// Possible string values are:
  /// - "UNSPECIFIED"
  /// - "SUCCEEDED" : The default behavior, where successful tasks will be
  /// marked as SUCCEEDED.
  /// - "SUSPENDED" : Sets the state to SUSPENDED after executing. This is
  /// required for SuspensionTask; event execution will continue once the user
  /// calls ResolveSuspensions with the event_execution_info_id and the task
  /// number.
  core.String? finalState;

  EnterpriseCrmEventbusProtoSuccessPolicy({this.finalState});

  EnterpriseCrmEventbusProtoSuccessPolicy.fromJson(core.Map json_)
    : this(finalState: json_['finalState'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (finalState != null) 'finalState': finalState!,
  };
}

/// LINT.IfChange
class EnterpriseCrmEventbusProtoSuspensionAuthPermissions {
  /// Represents a Gaia identity for a person or service account.
  EnterpriseCrmEventbusProtoSuspensionAuthPermissionsGaiaIdentity? gaiaIdentity;
  EnterpriseCrmEventbusProtoSuspensionAuthPermissionsGaiaIdentity? googleGroup;
  core.String? loasRole;
  core.String? mdbGroup;

  EnterpriseCrmEventbusProtoSuspensionAuthPermissions({
    this.gaiaIdentity,
    this.googleGroup,
    this.loasRole,
    this.mdbGroup,
  });

  EnterpriseCrmEventbusProtoSuspensionAuthPermissions.fromJson(core.Map json_)
    : this(
        gaiaIdentity:
            json_.containsKey('gaiaIdentity')
                ? EnterpriseCrmEventbusProtoSuspensionAuthPermissionsGaiaIdentity.fromJson(
                  json_['gaiaIdentity'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        googleGroup:
            json_.containsKey('googleGroup')
                ? EnterpriseCrmEventbusProtoSuspensionAuthPermissionsGaiaIdentity.fromJson(
                  json_['googleGroup'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        loasRole: json_['loasRole'] as core.String?,
        mdbGroup: json_['mdbGroup'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (gaiaIdentity != null) 'gaiaIdentity': gaiaIdentity!,
    if (googleGroup != null) 'googleGroup': googleGroup!,
    if (loasRole != null) 'loasRole': loasRole!,
    if (mdbGroup != null) 'mdbGroup': mdbGroup!,
  };
}

class EnterpriseCrmEventbusProtoSuspensionAuthPermissionsGaiaIdentity {
  core.String? emailAddress;
  core.String? gaiaId;

  EnterpriseCrmEventbusProtoSuspensionAuthPermissionsGaiaIdentity({
    this.emailAddress,
    this.gaiaId,
  });

  EnterpriseCrmEventbusProtoSuspensionAuthPermissionsGaiaIdentity.fromJson(
    core.Map json_,
  ) : this(
        emailAddress: json_['emailAddress'] as core.String?,
        gaiaId: json_['gaiaId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (emailAddress != null) 'emailAddress': emailAddress!,
    if (gaiaId != null) 'gaiaId': gaiaId!,
  };
}

class EnterpriseCrmEventbusProtoSuspensionConfig {
  /// Optional information to provide recipients of the suspension in addition
  /// to the resolution URL, typically containing relevant parameter values from
  /// the originating workflow.
  core.String? customMessage;
  core.List<EnterpriseCrmEventbusProtoNotification>? notifications;

  /// Indicates the next steps when no external actions happen on the
  /// suspension.
  EnterpriseCrmEventbusProtoSuspensionExpiration? suspensionExpiration;

  /// Identities able to resolve this suspension.
  core.List<EnterpriseCrmEventbusProtoSuspensionAuthPermissions>? whoMayResolve;

  EnterpriseCrmEventbusProtoSuspensionConfig({
    this.customMessage,
    this.notifications,
    this.suspensionExpiration,
    this.whoMayResolve,
  });

  EnterpriseCrmEventbusProtoSuspensionConfig.fromJson(core.Map json_)
    : this(
        customMessage: json_['customMessage'] as core.String?,
        notifications:
            (json_['notifications'] as core.List?)
                ?.map(
                  (value) => EnterpriseCrmEventbusProtoNotification.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        suspensionExpiration:
            json_.containsKey('suspensionExpiration')
                ? EnterpriseCrmEventbusProtoSuspensionExpiration.fromJson(
                  json_['suspensionExpiration']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        whoMayResolve:
            (json_['whoMayResolve'] as core.List?)
                ?.map(
                  (value) =>
                      EnterpriseCrmEventbusProtoSuspensionAuthPermissions.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (customMessage != null) 'customMessage': customMessage!,
    if (notifications != null) 'notifications': notifications!,
    if (suspensionExpiration != null)
      'suspensionExpiration': suspensionExpiration!,
    if (whoMayResolve != null) 'whoMayResolve': whoMayResolve!,
  };
}

class EnterpriseCrmEventbusProtoSuspensionExpiration {
  /// Milliseconds after which the suspension expires, if no action taken.
  core.int? expireAfterMs;

  /// Whether the suspension will be REJECTED or LIFTED upon expiration.
  ///
  /// REJECTED is the default behavior.
  core.bool? liftWhenExpired;

  /// Milliseconds after which the previous suspension action reminder, if any,
  /// is sent using the selected notification option, for a suspension which is
  /// still PENDING_UNSPECIFIED.
  core.int? remindAfterMs;

  EnterpriseCrmEventbusProtoSuspensionExpiration({
    this.expireAfterMs,
    this.liftWhenExpired,
    this.remindAfterMs,
  });

  EnterpriseCrmEventbusProtoSuspensionExpiration.fromJson(core.Map json_)
    : this(
        expireAfterMs: json_['expireAfterMs'] as core.int?,
        liftWhenExpired: json_['liftWhenExpired'] as core.bool?,
        remindAfterMs: json_['remindAfterMs'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (expireAfterMs != null) 'expireAfterMs': expireAfterMs!,
    if (liftWhenExpired != null) 'liftWhenExpired': liftWhenExpired!,
    if (remindAfterMs != null) 'remindAfterMs': remindAfterMs!,
  };
}

/// Message to be used to configure alerting in the {@code TaskConfig} protos
/// for tasks in an event.
class EnterpriseCrmEventbusProtoTaskAlertConfig {
  /// The period over which the metric value should be aggregated and evaluated.
  ///
  /// Format is , where integer should be a positive integer and unit should be
  /// one of (s,m,h,d,w) meaning (second, minute, hour, day, week).
  core.String? aggregationPeriod;

  /// Set to false by default.
  ///
  /// When set to true, the metrics are not aggregated or pushed to Monarch for
  /// this workflow alert.
  core.bool? alertDisabled;

  /// A name to identify this alert.
  ///
  /// This will be displayed in the alert subject. If set, this name should be
  /// unique in within the scope of the containing workflow.
  core.String? alertName;

  /// Client associated with this alert configuration.
  ///
  /// Must be a client enabled in one of the containing workflow's triggers.
  core.String? clientId;

  /// Should be specified only for TASK_AVERAGE_DURATION and
  /// TASK_PERCENTILE_DURATION metrics.
  ///
  /// This member should be used to specify what duration value the metrics
  /// should exceed for the alert to trigger.
  core.String? durationThresholdMs;
  EnterpriseCrmEventbusProtoBaseAlertConfigErrorEnumList? errorEnumList;

  ///
  /// Possible string values are:
  /// - "METRIC_TYPE_UNSPECIFIED" : The default value. Metric type should always
  /// be set to one of the other non-default values, otherwise it will result in
  /// an INVALID_ARGUMENT error.
  /// - "TASK_ERROR_RATE" : Specifies alerting on the rate of errors
  /// (potentially for a specific set of enum values) for the enclosing
  /// TaskConfig.
  /// - "TASK_WARNING_RATE" : Specifies alerting on the rate of warnings
  /// (potentially for a specific set of enum values) for the enclosing
  /// TaskConfig. Warnings use the same enum values as errors.
  /// - "TASK_RATE" : Specifies alerting on the number of instances for the
  /// enclosing TaskConfig executed in the given aggregation_period.
  /// - "TASK_AVERAGE_DURATION" : Specifies alerting on the average duration of
  /// execution for the enclosing task.
  /// - "TASK_PERCENTILE_DURATION" : Specifies alerting on the duration of a
  /// particular percentile of task executions. E.g. If 10% or more of the task
  /// executions have durations above 5 seconds, alert.
  core.String? metricType;

  /// For how many contiguous aggregation periods should the expected min or max
  /// be violated for the alert to be fired.
  core.int? numAggregationPeriods;

  /// Only count final task attempts, not retries.
  core.bool? onlyFinalAttempt;

  /// Link to a playbook for resolving the issue that triggered this alert.
  core.String? playbookUrl;

  /// The threshold type for which this alert is being configured.
  ///
  /// If value falls below expected_min or exceeds expected_max, an alert will
  /// be fired.
  /// Possible string values are:
  /// - "UNSPECIFIED_THRESHOLD_TYPE"
  /// - "EXPECTED_MIN" : Note that this field will only trigger alerts if the
  /// workflow specifying it runs at least once in 24 hours (which is our
  /// in-memory retention period for monarch streams). Also note that
  /// `aggregation_period` for this alert configuration must be less than 24
  /// hours.
  /// - "EXPECTED_MAX"
  core.String? thresholdType;

  /// The metric value, above or below which the alert should be triggered.
  EnterpriseCrmEventbusProtoBaseAlertConfigThresholdValue? thresholdValue;
  EnterpriseCrmEventbusProtoBaseAlertConfigErrorEnumList? warningEnumList;

  EnterpriseCrmEventbusProtoTaskAlertConfig({
    this.aggregationPeriod,
    this.alertDisabled,
    this.alertName,
    this.clientId,
    this.durationThresholdMs,
    this.errorEnumList,
    this.metricType,
    this.numAggregationPeriods,
    this.onlyFinalAttempt,
    this.playbookUrl,
    this.thresholdType,
    this.thresholdValue,
    this.warningEnumList,
  });

  EnterpriseCrmEventbusProtoTaskAlertConfig.fromJson(core.Map json_)
    : this(
        aggregationPeriod: json_['aggregationPeriod'] as core.String?,
        alertDisabled: json_['alertDisabled'] as core.bool?,
        alertName: json_['alertName'] as core.String?,
        clientId: json_['clientId'] as core.String?,
        durationThresholdMs: json_['durationThresholdMs'] as core.String?,
        errorEnumList:
            json_.containsKey('errorEnumList')
                ? EnterpriseCrmEventbusProtoBaseAlertConfigErrorEnumList.fromJson(
                  json_['errorEnumList'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        metricType: json_['metricType'] as core.String?,
        numAggregationPeriods: json_['numAggregationPeriods'] as core.int?,
        onlyFinalAttempt: json_['onlyFinalAttempt'] as core.bool?,
        playbookUrl: json_['playbookUrl'] as core.String?,
        thresholdType: json_['thresholdType'] as core.String?,
        thresholdValue:
            json_.containsKey('thresholdValue')
                ? EnterpriseCrmEventbusProtoBaseAlertConfigThresholdValue.fromJson(
                  json_['thresholdValue']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        warningEnumList:
            json_.containsKey('warningEnumList')
                ? EnterpriseCrmEventbusProtoBaseAlertConfigErrorEnumList.fromJson(
                  json_['warningEnumList']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (aggregationPeriod != null) 'aggregationPeriod': aggregationPeriod!,
    if (alertDisabled != null) 'alertDisabled': alertDisabled!,
    if (alertName != null) 'alertName': alertName!,
    if (clientId != null) 'clientId': clientId!,
    if (durationThresholdMs != null)
      'durationThresholdMs': durationThresholdMs!,
    if (errorEnumList != null) 'errorEnumList': errorEnumList!,
    if (metricType != null) 'metricType': metricType!,
    if (numAggregationPeriods != null)
      'numAggregationPeriods': numAggregationPeriods!,
    if (onlyFinalAttempt != null) 'onlyFinalAttempt': onlyFinalAttempt!,
    if (playbookUrl != null) 'playbookUrl': playbookUrl!,
    if (thresholdType != null) 'thresholdType': thresholdType!,
    if (thresholdValue != null) 'thresholdValue': thresholdValue!,
    if (warningEnumList != null) 'warningEnumList': warningEnumList!,
  };
}

/// Contains the details of the execution of this task.
///
/// Next available id: 11
class EnterpriseCrmEventbusProtoTaskExecutionDetails {
  /// Indicates whether the task was skipped on failure.
  ///
  /// Only relevant if the task is in SKIPPED state.
  core.bool? skippedOnFailure;
  core.List<EnterpriseCrmEventbusProtoTaskExecutionDetailsTaskAttemptStats>?
  taskAttemptStats;

  ///
  /// Possible string values are:
  /// - "UNSPECIFIED"
  /// - "PENDING_EXECUTION" : Task is waiting for its precondition tasks to
  /// finish to start the execution.
  /// - "IN_PROCESS" : Task is under processing.
  /// - "SUCCEED" : Task execution successfully finished. There's no more change
  /// after this state.
  /// - "FAILED" : Task execution failed. There's no more change after this
  /// state.
  /// - "FATAL" : Task execution failed and cause the whole event execution to
  /// fail immediately. There's no more change after this state.
  /// - "RETRY_ON_HOLD" : Task execution failed and waiting for retry.
  /// - "SKIPPED" : Task execution skipped. This happens when its precondition
  /// wasn't met, or the event execution been canceled before reach to the task.
  /// There's no more changes after this state.
  /// - "CANCELED" : Task execution canceled when in progress. This happens when
  /// event execution been canceled or any other task fall in fatal state.
  /// - "PENDING_ROLLBACK" : Task is waiting for its dependency tasks' rollback
  /// to finish to start its rollback.
  /// - "ROLLBACK_IN_PROCESS" : Task is rolling back.
  /// - "ROLLEDBACK" : Task is rolled back. This is the state we will set
  /// regardless of rollback succeeding or failing.
  /// - "SUSPENDED" : Task is a SuspensionTask which has executed once, creating
  /// a pending suspension.
  core.String? taskExecutionState;

  /// Pointer to the task config it used for execution.
  core.String? taskNumber;

  EnterpriseCrmEventbusProtoTaskExecutionDetails({
    this.skippedOnFailure,
    this.taskAttemptStats,
    this.taskExecutionState,
    this.taskNumber,
  });

  EnterpriseCrmEventbusProtoTaskExecutionDetails.fromJson(core.Map json_)
    : this(
        skippedOnFailure: json_['skippedOnFailure'] as core.bool?,
        taskAttemptStats:
            (json_['taskAttemptStats'] as core.List?)
                ?.map(
                  (value) =>
                      EnterpriseCrmEventbusProtoTaskExecutionDetailsTaskAttemptStats.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        taskExecutionState: json_['taskExecutionState'] as core.String?,
        taskNumber: json_['taskNumber'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (skippedOnFailure != null) 'skippedOnFailure': skippedOnFailure!,
    if (taskAttemptStats != null) 'taskAttemptStats': taskAttemptStats!,
    if (taskExecutionState != null) 'taskExecutionState': taskExecutionState!,
    if (taskNumber != null) 'taskNumber': taskNumber!,
  };
}

class EnterpriseCrmEventbusProtoTaskExecutionDetailsTaskAttemptStats {
  /// The end time of the task execution for current attempt.
  core.String? endTime;

  /// The start time of the task execution for current attempt.
  ///
  /// This could be in the future if it's been scheduled.
  core.String? startTime;

  EnterpriseCrmEventbusProtoTaskExecutionDetailsTaskAttemptStats({
    this.endTime,
    this.startTime,
  });

  EnterpriseCrmEventbusProtoTaskExecutionDetailsTaskAttemptStats.fromJson(
    core.Map json_,
  ) : this(
        endTime: json_['endTime'] as core.String?,
        startTime: json_['startTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (endTime != null) 'endTime': endTime!,
    if (startTime != null) 'startTime': startTime!,
  };
}

/// TaskMetadata are attributes that are associated to every common Task we
/// have.
class EnterpriseCrmEventbusProtoTaskMetadata {
  /// The new task name to replace the current task if it is deprecated.
  ///
  /// Otherwise, it is the same as the current task name.
  core.String? activeTaskName;
  core.List<EnterpriseCrmEventbusProtoTaskMetadataAdmin>? admins;

  ///
  /// Possible string values are:
  /// - "UNSPECIFIED_CATEGORY"
  /// - "CUSTOM"
  /// - "FLOW_CONTROL"
  /// - "DATA_MANIPULATION"
  /// - "SCRIPTING"
  /// - "CONNECTOR"
  /// - "HIDDEN" : Internal IP tasks that should not be available in the UI.
  /// - "CLOUD_SYSTEMS" : Tasks that are relevant to cloud systems teams and
  /// typically
  /// - "CUSTOM_TASK_TEMPLATE" : Task entities that derive from a custom task
  /// template.
  /// - "TASK_RECOMMENDATIONS" : Category to show task recommendations
  core.String? category;

  /// The Code Search link to the Task Java file.
  core.String? codeSearchLink;

  /// Controls whether JSON workflow parameters are validated against provided
  /// schemas before and/or after this task's execution.
  /// Possible string values are:
  /// - "UNSPECIFIED_JSON_VALIDATION_OPTION" : As per the default behavior, no
  /// validation will be run. Will not override any option set in a Task.
  /// - "SKIP" : Do not run any validation against JSON schemas.
  /// - "PRE_EXECUTION" : Validate all potential input JSON parameters against
  /// schemas specified in WorkflowParameters.
  /// - "POST_EXECUTION" : Validate all potential output JSON parameters against
  /// schemas specified in WorkflowParameters.
  /// - "PRE_POST_EXECUTION" : Perform both PRE_EXECUTION and POST_EXECUTION
  /// validations.
  core.String? defaultJsonValidationOption;

  /// Contains the initial configuration of the task with default values set.
  ///
  /// For now, The string should be compatible to an ASCII-proto format.
  core.String? defaultSpec;

  /// In a few sentences, describe the purpose and usage of the task.
  core.String? description;

  /// The string name to show on the task list on the Workflow editor screen.
  ///
  /// This should be a very short, one to two words name for the task. (e.g.
  /// "Send Mail")
  core.String? descriptiveName;

  /// Snippet of markdown documentation to embed in the RHP for this task.
  core.String? docMarkdown;

  ///
  /// Possible string values are:
  /// - "UNSPECIFIED_EXTERNAL_CATEGORY"
  /// - "CORE"
  /// - "CONNECTORS"
  /// - "EXTERNAL_HTTP" : HTTP tasks, e.g. rest api call task
  /// - "EXTERNAL_INTEGRATION_SERVICES" : Integration services, e.g. connector
  /// task
  /// - "EXTERNAL_CUSTOMER_ACTIONS" : Customer ations, e.g. email task
  /// - "EXTERNAL_FLOW_CONTROL" : Flow control, e.g. while loop task
  /// - "EXTERNAL_WORKSPACE" : Workspace tasks, e.g. list drive task
  /// - "EXTERNAL_SECURITY" : Security, e.g. kms related tasks
  /// - "EXTERNAL_DATABASES" : Database operation tasks, e.g. read firestore
  /// info tasks
  /// - "EXTERNAL_ANALYTICS" : Analytics tasks, e.g. dataflow creattion tasks
  /// - "EXTERNAL_BYOC" : BYOC tasks
  /// - "EXTERNAL_BYOT" : BYOT tasks
  /// - "EXTERNAL_ARTIFICIAL_INTELIGENCE" : AI related tasks.
  /// - "EXTERNAL_DATA_MANIPULATION" : Data manipulation related tasks, e.g.
  /// data mapping task
  core.String? externalCategory;

  /// Sequence with which the task in specific category to be displayed in task
  /// discovery panel for external users.
  core.int? externalCategorySequence;

  /// External-facing documention embedded in the RHP for this task.
  core.String? externalDocHtml;

  /// Doc link for external-facing documentation (separate from g3doc).
  core.String? externalDocLink;

  /// DEPRECATED: Use external_doc_html.
  core.String? externalDocMarkdown;

  /// URL to the associated G3 Doc for the task if available
  core.String? g3DocLink;

  /// URL to gstatic image icon for this task.
  ///
  /// This icon shows up on the task list panel along with the task name in the
  /// Workflow Editor screen. Use the 24p, 2x, gray color icon image format.
  core.String? iconLink;

  /// The deprecation status of the current task.
  ///
  /// Default value is false;
  core.bool? isDeprecated;

  /// The actual class name or the annotated name of the task.
  ///
  /// Task Author should initialize this field with value from the getName()
  /// method of the Task class.
  core.String? name;

  /// External-facing documention for standalone IP in pantheon embedded in the
  /// RHP for this task.
  ///
  /// Non null only if different from external_doc_html
  core.String? standaloneExternalDocHtml;

  /// Allows author to indicate if the task is ready to use or not.
  ///
  /// If not set, then it will default to INACTIVE.
  /// Possible string values are:
  /// - "UNSPECIFIED_STATUS" : Default value. Actual Task Status should always
  /// be set to either INACTIVE or ACTIVE. If none is specified at runtime, it
  /// will be set to INACTIVE.
  /// - "DEFAULT_INACTIVE" : Still in-progress or incomplete, and not intended
  /// for use.
  /// - "ACTIVE" : Available for use.
  core.String? status;

  ///
  /// Possible string values are:
  /// - "UNSPECIFIED_SYSTEM"
  /// - "GENERIC"
  /// - "BUGANIZER"
  /// - "SALESFORCE"
  /// - "CLOUD_SQL"
  /// - "PLX"
  /// - "SHEETS"
  /// - "GOOGLE_GROUPS"
  /// - "EMAIL"
  /// - "SPANNER"
  /// - "DATA_BRIDGE"
  core.String? system;

  /// A set of tags that pertain to a particular task.
  ///
  /// This can be used to improve the searchability of tasks with several names
  /// ("REST Caller" vs. "Call REST Endpoint") or to help users find tasks based
  /// on related words.
  core.List<core.String>? tags;

  EnterpriseCrmEventbusProtoTaskMetadata({
    this.activeTaskName,
    this.admins,
    this.category,
    this.codeSearchLink,
    this.defaultJsonValidationOption,
    this.defaultSpec,
    this.description,
    this.descriptiveName,
    this.docMarkdown,
    this.externalCategory,
    this.externalCategorySequence,
    this.externalDocHtml,
    this.externalDocLink,
    this.externalDocMarkdown,
    this.g3DocLink,
    this.iconLink,
    this.isDeprecated,
    this.name,
    this.standaloneExternalDocHtml,
    this.status,
    this.system,
    this.tags,
  });

  EnterpriseCrmEventbusProtoTaskMetadata.fromJson(core.Map json_)
    : this(
        activeTaskName: json_['activeTaskName'] as core.String?,
        admins:
            (json_['admins'] as core.List?)
                ?.map(
                  (value) =>
                      EnterpriseCrmEventbusProtoTaskMetadataAdmin.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        category: json_['category'] as core.String?,
        codeSearchLink: json_['codeSearchLink'] as core.String?,
        defaultJsonValidationOption:
            json_['defaultJsonValidationOption'] as core.String?,
        defaultSpec: json_['defaultSpec'] as core.String?,
        description: json_['description'] as core.String?,
        descriptiveName: json_['descriptiveName'] as core.String?,
        docMarkdown: json_['docMarkdown'] as core.String?,
        externalCategory: json_['externalCategory'] as core.String?,
        externalCategorySequence:
            json_['externalCategorySequence'] as core.int?,
        externalDocHtml: json_['externalDocHtml'] as core.String?,
        externalDocLink: json_['externalDocLink'] as core.String?,
        externalDocMarkdown: json_['externalDocMarkdown'] as core.String?,
        g3DocLink: json_['g3DocLink'] as core.String?,
        iconLink: json_['iconLink'] as core.String?,
        isDeprecated: json_['isDeprecated'] as core.bool?,
        name: json_['name'] as core.String?,
        standaloneExternalDocHtml:
            json_['standaloneExternalDocHtml'] as core.String?,
        status: json_['status'] as core.String?,
        system: json_['system'] as core.String?,
        tags:
            (json_['tags'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (activeTaskName != null) 'activeTaskName': activeTaskName!,
    if (admins != null) 'admins': admins!,
    if (category != null) 'category': category!,
    if (codeSearchLink != null) 'codeSearchLink': codeSearchLink!,
    if (defaultJsonValidationOption != null)
      'defaultJsonValidationOption': defaultJsonValidationOption!,
    if (defaultSpec != null) 'defaultSpec': defaultSpec!,
    if (description != null) 'description': description!,
    if (descriptiveName != null) 'descriptiveName': descriptiveName!,
    if (docMarkdown != null) 'docMarkdown': docMarkdown!,
    if (externalCategory != null) 'externalCategory': externalCategory!,
    if (externalCategorySequence != null)
      'externalCategorySequence': externalCategorySequence!,
    if (externalDocHtml != null) 'externalDocHtml': externalDocHtml!,
    if (externalDocLink != null) 'externalDocLink': externalDocLink!,
    if (externalDocMarkdown != null)
      'externalDocMarkdown': externalDocMarkdown!,
    if (g3DocLink != null) 'g3DocLink': g3DocLink!,
    if (iconLink != null) 'iconLink': iconLink!,
    if (isDeprecated != null) 'isDeprecated': isDeprecated!,
    if (name != null) 'name': name!,
    if (standaloneExternalDocHtml != null)
      'standaloneExternalDocHtml': standaloneExternalDocHtml!,
    if (status != null) 'status': status!,
    if (system != null) 'system': system!,
    if (tags != null) 'tags': tags!,
  };
}

/// Admins are owners of a Task, and have all permissions on a particular task
/// identified by the task name.
///
/// By default, Eventbus periodically scans all task metadata and syncs (adds)
/// any new admins defined here to Zanzibar.
class EnterpriseCrmEventbusProtoTaskMetadataAdmin {
  core.String? googleGroupEmail;
  core.String? userEmail;

  EnterpriseCrmEventbusProtoTaskMetadataAdmin({
    this.googleGroupEmail,
    this.userEmail,
  });

  EnterpriseCrmEventbusProtoTaskMetadataAdmin.fromJson(core.Map json_)
    : this(
        googleGroupEmail: json_['googleGroupEmail'] as core.String?,
        userEmail: json_['userEmail'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (googleGroupEmail != null) 'googleGroupEmail': googleGroupEmail!,
    if (userEmail != null) 'userEmail': userEmail!,
  };
}

/// Task authors would use this type to configure the UI for a particular task
/// by specifying what UI config modules should be included to compose the UI.
///
/// Learn more about config module framework:
class EnterpriseCrmEventbusProtoTaskUiConfig {
  /// Configurations of included config modules.
  core.List<EnterpriseCrmEventbusProtoTaskUiModuleConfig>? taskUiModuleConfigs;

  EnterpriseCrmEventbusProtoTaskUiConfig({this.taskUiModuleConfigs});

  EnterpriseCrmEventbusProtoTaskUiConfig.fromJson(core.Map json_)
    : this(
        taskUiModuleConfigs:
            (json_['taskUiModuleConfigs'] as core.List?)
                ?.map(
                  (value) =>
                      EnterpriseCrmEventbusProtoTaskUiModuleConfig.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (taskUiModuleConfigs != null)
      'taskUiModuleConfigs': taskUiModuleConfigs!,
  };
}

/// Task author would use this type to configure a config module.
class EnterpriseCrmEventbusProtoTaskUiModuleConfig {
  /// ID of the config module.
  /// Possible string values are:
  /// - "UNSPECIFIED_TASK_MODULE" : Default
  /// - "LABEL" : Supports editing label of a task config.
  /// - "ERROR_HANDLING" : Supports editing error handling settings such as
  /// retry strategy.
  /// - "TASK_PARAM_TABLE" : Supports adding, removing and editing task
  /// parameter values in a table with little assistance or restriction.
  /// - "TASK_PARAM_FORM" : Supports editing values of declared input parameters
  /// of a task. Think of it as a "strongly typed" upgrade to the
  /// TASK_PARAM_TABLE.
  /// - "PRECONDITION" : Supports editing preconditions of a task config.
  /// - "SCRIPT_EDITOR" : Supports adding, editing, and deleting the scripts
  /// associated with a script task, as well as modifying the input/output
  /// parameters.
  /// - "RPC" : Supports editing task parameters associated with an RPC/stubby
  /// task.
  /// - "TASK_SUMMARY" : Contains readonly task information, including
  /// input/output type info.
  /// - "SUSPENSION" : Configures a SuspensionTask.
  /// - "RPC_TYPED" : Configures a GenericStubbyTypedTask.
  /// - "SUB_WORKFLOW" : Configures a SubWorkflowExecutorTask.
  /// - "APPS_SCRIPT_NAVIGATOR" : Supports navigating to Apps Script editor
  /// - "SUB_WORKFLOW_FOR_EACH_LOOP" : Configures a SubWorkflowForEachLoopTask.
  /// - "FIELD_MAPPING" : Configures a FieldMappingTask.
  /// - "README" : Contains embedded in-product documentation for a task.
  /// - "REST_CALLER" : UI widget for the rest caller task.
  /// - "SUB_WORKFLOW_SCATTER_GATHER" : Configures a
  /// SubWorkflowScatterGatherTask.
  /// - "CLOUD_SQL" : Configures a CloudSql Task.
  /// - "GENERIC_CONNECTOR_TASK" : Configure a GenericConnectorTask.
  core.String? moduleId;

  EnterpriseCrmEventbusProtoTaskUiModuleConfig({this.moduleId});

  EnterpriseCrmEventbusProtoTaskUiModuleConfig.fromJson(core.Map json_)
    : this(moduleId: json_['moduleId'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (moduleId != null) 'moduleId': moduleId!,
  };
}

class EnterpriseCrmEventbusProtoTeardown {
  /// Required.
  core.List<EnterpriseCrmEventbusProtoTeardownTaskConfig>? teardownTaskConfigs;

  EnterpriseCrmEventbusProtoTeardown({this.teardownTaskConfigs});

  EnterpriseCrmEventbusProtoTeardown.fromJson(core.Map json_)
    : this(
        teardownTaskConfigs:
            (json_['teardownTaskConfigs'] as core.List?)
                ?.map(
                  (value) =>
                      EnterpriseCrmEventbusProtoTeardownTaskConfig.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (teardownTaskConfigs != null)
      'teardownTaskConfigs': teardownTaskConfigs!,
  };
}

class EnterpriseCrmEventbusProtoTeardownTaskConfig {
  /// The creator's email address.
  core.String? creatorEmail;

  /// Unique identifier of the teardown task within this Config.
  ///
  /// We use this field as the identifier to find next teardown tasks.
  ///
  /// Required.
  core.String? name;
  EnterpriseCrmEventbusProtoNextTeardownTask? nextTeardownTask;

  /// The parameters the user can pass to this task.
  EnterpriseCrmEventbusProtoEventParameters? parameters;
  EnterpriseCrmEventbusProtoEventBusProperties? properties;

  /// Implementation class name.
  ///
  /// Required.
  core.String? teardownTaskImplementationClassName;

  EnterpriseCrmEventbusProtoTeardownTaskConfig({
    this.creatorEmail,
    this.name,
    this.nextTeardownTask,
    this.parameters,
    this.properties,
    this.teardownTaskImplementationClassName,
  });

  EnterpriseCrmEventbusProtoTeardownTaskConfig.fromJson(core.Map json_)
    : this(
        creatorEmail: json_['creatorEmail'] as core.String?,
        name: json_['name'] as core.String?,
        nextTeardownTask:
            json_.containsKey('nextTeardownTask')
                ? EnterpriseCrmEventbusProtoNextTeardownTask.fromJson(
                  json_['nextTeardownTask']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        parameters:
            json_.containsKey('parameters')
                ? EnterpriseCrmEventbusProtoEventParameters.fromJson(
                  json_['parameters'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        properties:
            json_.containsKey('properties')
                ? EnterpriseCrmEventbusProtoEventBusProperties.fromJson(
                  json_['properties'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        teardownTaskImplementationClassName:
            json_['teardownTaskImplementationClassName'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (creatorEmail != null) 'creatorEmail': creatorEmail!,
    if (name != null) 'name': name!,
    if (nextTeardownTask != null) 'nextTeardownTask': nextTeardownTask!,
    if (parameters != null) 'parameters': parameters!,
    if (properties != null) 'properties': properties!,
    if (teardownTaskImplementationClassName != null)
      'teardownTaskImplementationClassName':
          teardownTaskImplementationClassName!,
  };
}

typedef EnterpriseCrmEventbusProtoToken = $Shared06;

class EnterpriseCrmEventbusProtoTriggerCriteria {
  /// Standard filter expression, when true the workflow will be executed.
  ///
  /// If there's no trigger_criteria_task_implementation_class_name specified,
  /// the condition will be validated directly.
  ///
  /// Required.
  core.String? condition;

  /// To be used in TaskConfig for the implementation class.
  ///
  /// Optional.
  EnterpriseCrmEventbusProtoEventParameters? parameters;

  /// Implementation class name.
  ///
  /// The class should implement the “TypedTask” interface.
  ///
  /// Optional.
  core.String? triggerCriteriaTaskImplementationClassName;

  EnterpriseCrmEventbusProtoTriggerCriteria({
    this.condition,
    this.parameters,
    this.triggerCriteriaTaskImplementationClassName,
  });

  EnterpriseCrmEventbusProtoTriggerCriteria.fromJson(core.Map json_)
    : this(
        condition: json_['condition'] as core.String?,
        parameters:
            json_.containsKey('parameters')
                ? EnterpriseCrmEventbusProtoEventParameters.fromJson(
                  json_['parameters'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        triggerCriteriaTaskImplementationClassName:
            json_['triggerCriteriaTaskImplementationClassName'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (condition != null) 'condition': condition!,
    if (parameters != null) 'parameters': parameters!,
    if (triggerCriteriaTaskImplementationClassName != null)
      'triggerCriteriaTaskImplementationClassName':
          triggerCriteriaTaskImplementationClassName!,
  };
}

/// Used for define type for values.
///
/// Currently supported value types include int, string, double, array, and any
/// proto message.
class EnterpriseCrmEventbusProtoValueType {
  core.bool? booleanValue;
  EnterpriseCrmEventbusProtoDoubleArray? doubleArray;
  core.double? doubleValue;
  EnterpriseCrmEventbusProtoIntArray? intArray;
  core.String? intValue;

  ///
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? protoValue;
  EnterpriseCrmEventbusProtoStringArray? stringArray;
  core.String? stringValue;

  EnterpriseCrmEventbusProtoValueType({
    this.booleanValue,
    this.doubleArray,
    this.doubleValue,
    this.intArray,
    this.intValue,
    this.protoValue,
    this.stringArray,
    this.stringValue,
  });

  EnterpriseCrmEventbusProtoValueType.fromJson(core.Map json_)
    : this(
        booleanValue: json_['booleanValue'] as core.bool?,
        doubleArray:
            json_.containsKey('doubleArray')
                ? EnterpriseCrmEventbusProtoDoubleArray.fromJson(
                  json_['doubleArray'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        doubleValue: (json_['doubleValue'] as core.num?)?.toDouble(),
        intArray:
            json_.containsKey('intArray')
                ? EnterpriseCrmEventbusProtoIntArray.fromJson(
                  json_['intArray'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        intValue: json_['intValue'] as core.String?,
        protoValue:
            json_.containsKey('protoValue')
                ? json_['protoValue'] as core.Map<core.String, core.dynamic>
                : null,
        stringArray:
            json_.containsKey('stringArray')
                ? EnterpriseCrmEventbusProtoStringArray.fromJson(
                  json_['stringArray'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        stringValue: json_['stringValue'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (booleanValue != null) 'booleanValue': booleanValue!,
    if (doubleArray != null) 'doubleArray': doubleArray!,
    if (doubleValue != null) 'doubleValue': doubleValue!,
    if (intArray != null) 'intArray': intArray!,
    if (intValue != null) 'intValue': intValue!,
    if (protoValue != null) 'protoValue': protoValue!,
    if (stringArray != null) 'stringArray': stringArray!,
    if (stringValue != null) 'stringValue': stringValue!,
  };
}

/// Message to be used to configure custom alerting in the {@code EventConfig}
/// protos for an event.
class EnterpriseCrmEventbusProtoWorkflowAlertConfig {
  /// For an EXPECTED_MIN threshold, this aggregation_period must be lesser than
  /// 24 hours.
  core.String? aggregationPeriod;

  /// Set to false by default.
  ///
  /// When set to true, the metrics are not aggregated or pushed to Monarch for
  /// this workflow alert.
  core.bool? alertDisabled;

  /// A name to identify this alert.
  ///
  /// This will be displayed in the alert subject. If set, this name should be
  /// unique within the scope of the workflow.
  core.String? alertName;

  /// Client associated with this alert configuration.
  core.String? clientId;

  /// Should be specified only for *AVERAGE_DURATION and *PERCENTILE_DURATION
  /// metrics.
  ///
  /// This member should be used to specify what duration value the metrics
  /// should exceed for the alert to trigger.
  core.String? durationThresholdMs;
  EnterpriseCrmEventbusProtoBaseAlertConfigErrorEnumList? errorEnumList;

  ///
  /// Possible string values are:
  /// - "METRIC_TYPE_UNSPECIFIED" : The default value. Metric type should always
  /// be set to one of the other non-default values, otherwise it will result in
  /// an INVALID_ARGUMENT error.
  /// - "EVENT_ERROR_RATE" : Specifies alerting on the rate of errors for the
  /// enclosing workflow.
  /// - "EVENT_WARNING_RATE" : Specifies alerting on the rate of warnings for
  /// the enclosing workflow. Warnings use the same enum values as errors.
  /// - "TASK_ERROR_RATE" : Specifies alerting on the rate of errors for any
  /// task in the enclosing workflow.
  /// - "TASK_WARNING_RATE" : Specifies alerting on the rate of warnings for any
  /// task in the enclosing workflow.
  /// - "TASK_RATE" : Specifies alerting on the rate of executions over all
  /// tasks in the enclosing workflow.
  /// - "EVENT_RATE" : Specifies alerting on the number of events executed in
  /// the given aggregation_period.
  /// - "EVENT_AVERAGE_DURATION" : Specifies alerting on the average duration of
  /// executions for this workflow.
  /// - "EVENT_PERCENTILE_DURATION" : Specifies alerting on the duration value
  /// of a particular percentile of workflow executions. E.g. If 10% or more of
  /// the workflow executions have durations above 5 seconds, alert.
  /// - "TASK_AVERAGE_DURATION" : Specifies alerting on the average duration of
  /// any task in the enclosing workflow,
  /// - "TASK_PERCENTILE_DURATION" : Specifies alerting on the duration value of
  /// a particular percentile of any task executions within the enclosing
  /// workflow. E.g. If 10% or more of the task executions in the workflow have
  /// durations above 5 seconds, alert.
  core.String? metricType;

  /// For how many contiguous aggregation periods should the expected min or max
  /// be violated for the alert to be fired.
  core.int? numAggregationPeriods;

  /// For either events or tasks, depending on the type of alert, count only
  /// final attempts, not retries.
  core.bool? onlyFinalAttempt;

  /// Link to a playbook for resolving the issue that triggered this alert.
  core.String? playbookUrl;

  /// The threshold type, whether lower(expected_min) or upper(expected_max),
  /// for which this alert is being configured.
  ///
  /// If value falls below expected_min or exceeds expected_max, an alert will
  /// be fired.
  /// Possible string values are:
  /// - "UNSPECIFIED_THRESHOLD_TYPE"
  /// - "EXPECTED_MIN" : Note that this field will only trigger alerts if the
  /// workflow specifying it runs at least once in 24 hours (which is our
  /// in-memory retention period for monarch streams). Also note that
  /// `aggregation_period` for this alert configuration must be less than 24
  /// hours.
  /// - "EXPECTED_MAX"
  core.String? thresholdType;

  /// The metric value, above or below which the alert should be triggered.
  EnterpriseCrmEventbusProtoBaseAlertConfigThresholdValue? thresholdValue;
  EnterpriseCrmEventbusProtoBaseAlertConfigErrorEnumList? warningEnumList;

  EnterpriseCrmEventbusProtoWorkflowAlertConfig({
    this.aggregationPeriod,
    this.alertDisabled,
    this.alertName,
    this.clientId,
    this.durationThresholdMs,
    this.errorEnumList,
    this.metricType,
    this.numAggregationPeriods,
    this.onlyFinalAttempt,
    this.playbookUrl,
    this.thresholdType,
    this.thresholdValue,
    this.warningEnumList,
  });

  EnterpriseCrmEventbusProtoWorkflowAlertConfig.fromJson(core.Map json_)
    : this(
        aggregationPeriod: json_['aggregationPeriod'] as core.String?,
        alertDisabled: json_['alertDisabled'] as core.bool?,
        alertName: json_['alertName'] as core.String?,
        clientId: json_['clientId'] as core.String?,
        durationThresholdMs: json_['durationThresholdMs'] as core.String?,
        errorEnumList:
            json_.containsKey('errorEnumList')
                ? EnterpriseCrmEventbusProtoBaseAlertConfigErrorEnumList.fromJson(
                  json_['errorEnumList'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        metricType: json_['metricType'] as core.String?,
        numAggregationPeriods: json_['numAggregationPeriods'] as core.int?,
        onlyFinalAttempt: json_['onlyFinalAttempt'] as core.bool?,
        playbookUrl: json_['playbookUrl'] as core.String?,
        thresholdType: json_['thresholdType'] as core.String?,
        thresholdValue:
            json_.containsKey('thresholdValue')
                ? EnterpriseCrmEventbusProtoBaseAlertConfigThresholdValue.fromJson(
                  json_['thresholdValue']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        warningEnumList:
            json_.containsKey('warningEnumList')
                ? EnterpriseCrmEventbusProtoBaseAlertConfigErrorEnumList.fromJson(
                  json_['warningEnumList']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (aggregationPeriod != null) 'aggregationPeriod': aggregationPeriod!,
    if (alertDisabled != null) 'alertDisabled': alertDisabled!,
    if (alertName != null) 'alertName': alertName!,
    if (clientId != null) 'clientId': clientId!,
    if (durationThresholdMs != null)
      'durationThresholdMs': durationThresholdMs!,
    if (errorEnumList != null) 'errorEnumList': errorEnumList!,
    if (metricType != null) 'metricType': metricType!,
    if (numAggregationPeriods != null)
      'numAggregationPeriods': numAggregationPeriods!,
    if (onlyFinalAttempt != null) 'onlyFinalAttempt': onlyFinalAttempt!,
    if (playbookUrl != null) 'playbookUrl': playbookUrl!,
    if (thresholdType != null) 'thresholdType': thresholdType!,
    if (thresholdValue != null) 'thresholdValue': thresholdValue!,
    if (warningEnumList != null) 'warningEnumList': warningEnumList!,
  };
}

/// Stats for the requested dimensions: QPS, duration, and error/warning rate
class EnterpriseCrmEventbusStats {
  /// Dimensions that these stats have been aggregated on.
  EnterpriseCrmEventbusStatsDimensions? dimensions;

  /// Average duration in seconds.
  core.double? durationInSeconds;

  /// Average error rate.
  core.double? errorRate;

  /// Queries per second.
  core.double? qps;

  /// Average warning rate.
  core.double? warningRate;

  EnterpriseCrmEventbusStats({
    this.dimensions,
    this.durationInSeconds,
    this.errorRate,
    this.qps,
    this.warningRate,
  });

  EnterpriseCrmEventbusStats.fromJson(core.Map json_)
    : this(
        dimensions:
            json_.containsKey('dimensions')
                ? EnterpriseCrmEventbusStatsDimensions.fromJson(
                  json_['dimensions'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        durationInSeconds:
            (json_['durationInSeconds'] as core.num?)?.toDouble(),
        errorRate: (json_['errorRate'] as core.num?)?.toDouble(),
        qps: (json_['qps'] as core.num?)?.toDouble(),
        warningRate: (json_['warningRate'] as core.num?)?.toDouble(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (dimensions != null) 'dimensions': dimensions!,
    if (durationInSeconds != null) 'durationInSeconds': durationInSeconds!,
    if (errorRate != null) 'errorRate': errorRate!,
    if (qps != null) 'qps': qps!,
    if (warningRate != null) 'warningRate': warningRate!,
  };
}

class EnterpriseCrmEventbusStatsDimensions {
  core.String? clientId;

  /// Whether to include or exclude the enums matching the regex.
  /// Possible string values are:
  /// - "DEFAULT_INCLUSIVE"
  /// - "EXCLUSIVE"
  core.String? enumFilterType;
  core.String? errorEnumString;

  ///
  /// Possible string values are:
  /// - "UNSPECIFIED"
  /// - "FINAL" : Task has completed successfully or has depleted all retry
  /// attempts.
  /// - "RETRYABLE" : Task has failed but may be retried.
  /// - "CANCELED" : Task has been deliberately canceled.
  core.String? retryAttempt;
  core.String? taskName;
  core.String? taskNumber;

  /// Stats have been or will be aggregated on set fields for any
  /// semantically-meaningful combination.
  core.String? triggerId;
  core.String? warningEnumString;
  core.String? workflowId;
  core.String? workflowName;

  EnterpriseCrmEventbusStatsDimensions({
    this.clientId,
    this.enumFilterType,
    this.errorEnumString,
    this.retryAttempt,
    this.taskName,
    this.taskNumber,
    this.triggerId,
    this.warningEnumString,
    this.workflowId,
    this.workflowName,
  });

  EnterpriseCrmEventbusStatsDimensions.fromJson(core.Map json_)
    : this(
        clientId: json_['clientId'] as core.String?,
        enumFilterType: json_['enumFilterType'] as core.String?,
        errorEnumString: json_['errorEnumString'] as core.String?,
        retryAttempt: json_['retryAttempt'] as core.String?,
        taskName: json_['taskName'] as core.String?,
        taskNumber: json_['taskNumber'] as core.String?,
        triggerId: json_['triggerId'] as core.String?,
        warningEnumString: json_['warningEnumString'] as core.String?,
        workflowId: json_['workflowId'] as core.String?,
        workflowName: json_['workflowName'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (clientId != null) 'clientId': clientId!,
    if (enumFilterType != null) 'enumFilterType': enumFilterType!,
    if (errorEnumString != null) 'errorEnumString': errorEnumString!,
    if (retryAttempt != null) 'retryAttempt': retryAttempt!,
    if (taskName != null) 'taskName': taskName!,
    if (taskNumber != null) 'taskNumber': taskNumber!,
    if (triggerId != null) 'triggerId': triggerId!,
    if (warningEnumString != null) 'warningEnumString': warningEnumString!,
    if (workflowId != null) 'workflowId': workflowId!,
    if (workflowName != null) 'workflowName': workflowName!,
  };
}

typedef EnterpriseCrmFrontendsEventbusProtoBooleanParameterArray =
    $EventbusProtoBooleanParameterArray;
typedef EnterpriseCrmFrontendsEventbusProtoDoubleParameterArray =
    $EventbusProtoDoubleParameterArray;

/// Contains the details of the execution info of this event: this includes the
/// tasks execution details plus the event execution statistics.
///
/// Next available id: 12
class EnterpriseCrmFrontendsEventbusProtoEventExecutionDetails {
  /// If the execution is manually canceled, this field will contain the reason
  /// for cancellation.
  core.String? cancelReason;
  core.List<EnterpriseCrmEventbusProtoEventExecutionDetailsEventAttemptStats>?
  eventAttemptStats;

  /// After snapshot migration, this field will no longer be populated, but old
  /// execution snapshots will still be accessible.
  core.List<EnterpriseCrmFrontendsEventbusProtoEventExecutionSnapshot>?
  eventExecutionSnapshot;

  /// Total size of all event_execution_snapshots for an execution
  core.String? eventExecutionSnapshotsSize;

  /// The execution state of this event.
  /// Possible string values are:
  /// - "UNSPECIFIED"
  /// - "ON_HOLD" : Event is received and waiting for the execution. This
  /// happens when firing the event via "postToQueue" or "schedule".
  /// - "IN_PROCESS" : Event is under processing.
  /// - "SUCCEEDED" : Event execution successfully finished. There's no more
  /// change after this state.
  /// - "FAILED" : Event execution failed. There's no more change after this
  /// state.
  /// - "CANCELED" : Event execution canceled by user. There's no more change
  /// after this state.
  /// - "RETRY_ON_HOLD" : Event execution failed and waiting for retry.
  /// - "SUSPENDED" : Event execution suspended and waiting for manual
  /// intervention.
  core.String? eventExecutionState;

  /// Indicates the number of times the execution has restarted from the
  /// beginning.
  core.int? eventRetriesFromBeginningCount;

  /// The log file path (aka.
  ///
  /// cns address) for this event.
  core.String? logFilePath;

  /// The network address (aka.
  ///
  /// bns address) that indicates where the event executor is running.
  core.String? networkAddress;

  /// Next scheduled execution time in case the execution status was
  /// RETRY_ON_HOLD.
  core.String? nextExecutionTime;

  /// Used internally and shouldn't be exposed to users.
  ///
  /// A counter for the cron job to record how many times this event is in
  /// in_process state but don't have a lock consecutively/
  core.int? ryeLockUnheldCount;

  EnterpriseCrmFrontendsEventbusProtoEventExecutionDetails({
    this.cancelReason,
    this.eventAttemptStats,
    this.eventExecutionSnapshot,
    this.eventExecutionSnapshotsSize,
    this.eventExecutionState,
    this.eventRetriesFromBeginningCount,
    this.logFilePath,
    this.networkAddress,
    this.nextExecutionTime,
    this.ryeLockUnheldCount,
  });

  EnterpriseCrmFrontendsEventbusProtoEventExecutionDetails.fromJson(
    core.Map json_,
  ) : this(
        cancelReason: json_['cancelReason'] as core.String?,
        eventAttemptStats:
            (json_['eventAttemptStats'] as core.List?)
                ?.map(
                  (value) =>
                      EnterpriseCrmEventbusProtoEventExecutionDetailsEventAttemptStats.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        eventExecutionSnapshot:
            (json_['eventExecutionSnapshot'] as core.List?)
                ?.map(
                  (value) =>
                      EnterpriseCrmFrontendsEventbusProtoEventExecutionSnapshot.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        eventExecutionSnapshotsSize:
            json_['eventExecutionSnapshotsSize'] as core.String?,
        eventExecutionState: json_['eventExecutionState'] as core.String?,
        eventRetriesFromBeginningCount:
            json_['eventRetriesFromBeginningCount'] as core.int?,
        logFilePath: json_['logFilePath'] as core.String?,
        networkAddress: json_['networkAddress'] as core.String?,
        nextExecutionTime: json_['nextExecutionTime'] as core.String?,
        ryeLockUnheldCount: json_['ryeLockUnheldCount'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (cancelReason != null) 'cancelReason': cancelReason!,
    if (eventAttemptStats != null) 'eventAttemptStats': eventAttemptStats!,
    if (eventExecutionSnapshot != null)
      'eventExecutionSnapshot': eventExecutionSnapshot!,
    if (eventExecutionSnapshotsSize != null)
      'eventExecutionSnapshotsSize': eventExecutionSnapshotsSize!,
    if (eventExecutionState != null)
      'eventExecutionState': eventExecutionState!,
    if (eventRetriesFromBeginningCount != null)
      'eventRetriesFromBeginningCount': eventRetriesFromBeginningCount!,
    if (logFilePath != null) 'logFilePath': logFilePath!,
    if (networkAddress != null) 'networkAddress': networkAddress!,
    if (nextExecutionTime != null) 'nextExecutionTime': nextExecutionTime!,
    if (ryeLockUnheldCount != null) 'ryeLockUnheldCount': ryeLockUnheldCount!,
  };
}

/// Contains all the execution details for a workflow instance.
///
/// Next available id: 27
class EnterpriseCrmFrontendsEventbusProtoEventExecutionInfo {
  /// The event data user sends as request.
  core.String? clientId;

  /// Cloud Logging details for execution info
  EnterpriseCrmEventbusProtoCloudLoggingDetails? cloudLoggingDetails;

  /// Auto-generated.
  core.String? createTime;

  /// Final error-code if event failed.
  CrmlogErrorCode? errorCode;

  /// Errors, warnings, and informationals associated with the workflow/task.
  ///
  /// The order in which the errors were added by the workflow/task is
  /// maintained.
  core.List<EnterpriseCrmEventbusProtoErrorDetail>? errors;

  /// The execution info about this event.
  EnterpriseCrmFrontendsEventbusProtoEventExecutionDetails?
  eventExecutionDetails;

  /// Auto-generated primary key.
  core.String? eventExecutionInfoId;

  /// Execution trace info to aggregate parent-child executions.
  EnterpriseCrmEventbusProtoExecutionTraceInfo? executionTraceInfo;

  /// User-defined label that annotates the executed integration version.
  core.String? integrationVersionUserLabel;

  /// Auto-generated.
  core.String? lastModifiedTime;

  /// The ways user posts this event.
  /// Possible string values are:
  /// - "UNSPECIFIED"
  /// - "POST"
  /// - "POST_TO_QUEUE"
  /// - "SCHEDULE"
  /// - "POST_BY_EVENT_CONFIG_ID"
  /// - "POST_WITH_EVENT_DETAILS"
  core.String? postMethod;

  /// Which Google product the execution_info belongs to.
  ///
  /// If not set, the execution_info belongs to Integration Platform by default.
  /// Possible string values are:
  /// - "UNSPECIFIED_PRODUCT"
  /// - "IP"
  /// - "APIGEE"
  /// - "SECURITY"
  core.String? product;

  /// Replay info for the execution
  EnterpriseCrmFrontendsEventbusProtoEventExecutionInfoReplayInfo? replayInfo;

  /// This is used to de-dup incoming request.
  ///
  /// Optional.
  core.String? requestId;

  /// Event parameters come in as part of the request.
  EnterpriseCrmFrontendsEventbusProtoEventParameters? requestParams;

  /// Event parameters come out as part of the response.
  EnterpriseCrmFrontendsEventbusProtoEventParameters? responseParams;

  /// Workflow snapshot number.
  core.String? snapshotNumber;

  /// Tenant this event is created.
  ///
  /// Used to reschedule the event to correct tenant.
  core.String? tenant;

  /// The trigger id of the workflow trigger config.
  ///
  /// If both trigger_id and client_id is present, the workflow is executed from
  /// the start tasks provided by the matching trigger config otherwise it is
  /// executed from the default start tasks.
  core.String? triggerId;

  /// Pointer to the workflow it is executing.
  ///
  /// Required.
  core.String? workflowId;

  /// Name of the workflow.
  core.String? workflowName;

  /// Time interval in seconds to schedule retry of workflow in manifold when
  /// workflow is already running
  core.String? workflowRetryBackoffIntervalSeconds;

  EnterpriseCrmFrontendsEventbusProtoEventExecutionInfo({
    this.clientId,
    this.cloudLoggingDetails,
    this.createTime,
    this.errorCode,
    this.errors,
    this.eventExecutionDetails,
    this.eventExecutionInfoId,
    this.executionTraceInfo,
    this.integrationVersionUserLabel,
    this.lastModifiedTime,
    this.postMethod,
    this.product,
    this.replayInfo,
    this.requestId,
    this.requestParams,
    this.responseParams,
    this.snapshotNumber,
    this.tenant,
    this.triggerId,
    this.workflowId,
    this.workflowName,
    this.workflowRetryBackoffIntervalSeconds,
  });

  EnterpriseCrmFrontendsEventbusProtoEventExecutionInfo.fromJson(core.Map json_)
    : this(
        clientId: json_['clientId'] as core.String?,
        cloudLoggingDetails:
            json_.containsKey('cloudLoggingDetails')
                ? EnterpriseCrmEventbusProtoCloudLoggingDetails.fromJson(
                  json_['cloudLoggingDetails']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        createTime: json_['createTime'] as core.String?,
        errorCode:
            json_.containsKey('errorCode')
                ? CrmlogErrorCode.fromJson(
                  json_['errorCode'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        errors:
            (json_['errors'] as core.List?)
                ?.map(
                  (value) => EnterpriseCrmEventbusProtoErrorDetail.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        eventExecutionDetails:
            json_.containsKey('eventExecutionDetails')
                ? EnterpriseCrmFrontendsEventbusProtoEventExecutionDetails.fromJson(
                  json_['eventExecutionDetails']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        eventExecutionInfoId: json_['eventExecutionInfoId'] as core.String?,
        executionTraceInfo:
            json_.containsKey('executionTraceInfo')
                ? EnterpriseCrmEventbusProtoExecutionTraceInfo.fromJson(
                  json_['executionTraceInfo']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        integrationVersionUserLabel:
            json_['integrationVersionUserLabel'] as core.String?,
        lastModifiedTime: json_['lastModifiedTime'] as core.String?,
        postMethod: json_['postMethod'] as core.String?,
        product: json_['product'] as core.String?,
        replayInfo:
            json_.containsKey('replayInfo')
                ? EnterpriseCrmFrontendsEventbusProtoEventExecutionInfoReplayInfo.fromJson(
                  json_['replayInfo'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        requestId: json_['requestId'] as core.String?,
        requestParams:
            json_.containsKey('requestParams')
                ? EnterpriseCrmFrontendsEventbusProtoEventParameters.fromJson(
                  json_['requestParams'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        responseParams:
            json_.containsKey('responseParams')
                ? EnterpriseCrmFrontendsEventbusProtoEventParameters.fromJson(
                  json_['responseParams']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        snapshotNumber: json_['snapshotNumber'] as core.String?,
        tenant: json_['tenant'] as core.String?,
        triggerId: json_['triggerId'] as core.String?,
        workflowId: json_['workflowId'] as core.String?,
        workflowName: json_['workflowName'] as core.String?,
        workflowRetryBackoffIntervalSeconds:
            json_['workflowRetryBackoffIntervalSeconds'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (clientId != null) 'clientId': clientId!,
    if (cloudLoggingDetails != null)
      'cloudLoggingDetails': cloudLoggingDetails!,
    if (createTime != null) 'createTime': createTime!,
    if (errorCode != null) 'errorCode': errorCode!,
    if (errors != null) 'errors': errors!,
    if (eventExecutionDetails != null)
      'eventExecutionDetails': eventExecutionDetails!,
    if (eventExecutionInfoId != null)
      'eventExecutionInfoId': eventExecutionInfoId!,
    if (executionTraceInfo != null) 'executionTraceInfo': executionTraceInfo!,
    if (integrationVersionUserLabel != null)
      'integrationVersionUserLabel': integrationVersionUserLabel!,
    if (lastModifiedTime != null) 'lastModifiedTime': lastModifiedTime!,
    if (postMethod != null) 'postMethod': postMethod!,
    if (product != null) 'product': product!,
    if (replayInfo != null) 'replayInfo': replayInfo!,
    if (requestId != null) 'requestId': requestId!,
    if (requestParams != null) 'requestParams': requestParams!,
    if (responseParams != null) 'responseParams': responseParams!,
    if (snapshotNumber != null) 'snapshotNumber': snapshotNumber!,
    if (tenant != null) 'tenant': tenant!,
    if (triggerId != null) 'triggerId': triggerId!,
    if (workflowId != null) 'workflowId': workflowId!,
    if (workflowName != null) 'workflowName': workflowName!,
    if (workflowRetryBackoffIntervalSeconds != null)
      'workflowRetryBackoffIntervalSeconds':
          workflowRetryBackoffIntervalSeconds!,
  };
}

/// Contains the details of the execution info: this includes the replay reason
/// and replay tree connecting executions in a parent-child relationship
class EnterpriseCrmFrontendsEventbusProtoEventExecutionInfoReplayInfo {
  /// If this execution is a replay of another execution, then this field
  /// contains the original execution id.
  core.String? originalExecutionInfoId;

  /// Replay mode for the execution
  /// Possible string values are:
  /// - "REPLAY_MODE_UNSPECIFIED"
  /// - "REPLAY_MODE_FROM_BEGINNING" : Replay the original execution from the
  /// beginning.
  /// - "REPLAY_MODE_POINT_OF_FAILURE" : Replay the execution from the first
  /// failed task.
  core.String? replayMode;

  /// reason for replay
  core.String? replayReason;

  /// If this execution has been replayed, then this field contains the
  /// execution ids of the replayed executions.
  core.List<core.String>? replayedExecutionInfoIds;

  EnterpriseCrmFrontendsEventbusProtoEventExecutionInfoReplayInfo({
    this.originalExecutionInfoId,
    this.replayMode,
    this.replayReason,
    this.replayedExecutionInfoIds,
  });

  EnterpriseCrmFrontendsEventbusProtoEventExecutionInfoReplayInfo.fromJson(
    core.Map json_,
  ) : this(
        originalExecutionInfoId:
            json_['originalExecutionInfoId'] as core.String?,
        replayMode: json_['replayMode'] as core.String?,
        replayReason: json_['replayReason'] as core.String?,
        replayedExecutionInfoIds:
            (json_['replayedExecutionInfoIds'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (originalExecutionInfoId != null)
      'originalExecutionInfoId': originalExecutionInfoId!,
    if (replayMode != null) 'replayMode': replayMode!,
    if (replayReason != null) 'replayReason': replayReason!,
    if (replayedExecutionInfoIds != null)
      'replayedExecutionInfoIds': replayedExecutionInfoIds!,
  };
}

class EnterpriseCrmFrontendsEventbusProtoEventExecutionSnapshot {
  /// Indicates "right after which checkpoint task's execution" this snapshot is
  /// taken.
  core.String? checkpointTaskNumber;

  /// All of the computed conditions that been calculated.
  core.List<EnterpriseCrmEventbusProtoConditionResult>? conditionResults;

  /// The parameters in Event object that differs from last snapshot.
  EnterpriseCrmFrontendsEventbusProtoEventParameters? diffParams;

  /// Points to the event execution info this snapshot belongs to.
  core.String? eventExecutionInfoId;

  /// Auto-generated.
  ///
  /// Used as primary key for EventExecutionSnapshots table.
  core.String? eventExecutionSnapshotId;
  EnterpriseCrmEventbusProtoEventExecutionSnapshotEventExecutionSnapshotMetadata?
  eventExecutionSnapshotMetadata;

  /// The parameters in Event object.
  EnterpriseCrmFrontendsEventbusProtoEventParameters? eventParams;

  /// Indicates when this snapshot is taken.
  core.String? snapshotTime;

  /// All of the task execution details at the given point of time.
  core.List<EnterpriseCrmEventbusProtoTaskExecutionDetails>?
  taskExecutionDetails;

  /// The task name associated with this snapshot.
  ///
  /// Could be empty.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? taskName;

  EnterpriseCrmFrontendsEventbusProtoEventExecutionSnapshot({
    this.checkpointTaskNumber,
    this.conditionResults,
    this.diffParams,
    this.eventExecutionInfoId,
    this.eventExecutionSnapshotId,
    this.eventExecutionSnapshotMetadata,
    this.eventParams,
    this.snapshotTime,
    this.taskExecutionDetails,
    this.taskName,
  });

  EnterpriseCrmFrontendsEventbusProtoEventExecutionSnapshot.fromJson(
    core.Map json_,
  ) : this(
        checkpointTaskNumber: json_['checkpointTaskNumber'] as core.String?,
        conditionResults:
            (json_['conditionResults'] as core.List?)
                ?.map(
                  (value) => EnterpriseCrmEventbusProtoConditionResult.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        diffParams:
            json_.containsKey('diffParams')
                ? EnterpriseCrmFrontendsEventbusProtoEventParameters.fromJson(
                  json_['diffParams'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        eventExecutionInfoId: json_['eventExecutionInfoId'] as core.String?,
        eventExecutionSnapshotId:
            json_['eventExecutionSnapshotId'] as core.String?,
        eventExecutionSnapshotMetadata:
            json_.containsKey('eventExecutionSnapshotMetadata')
                ? EnterpriseCrmEventbusProtoEventExecutionSnapshotEventExecutionSnapshotMetadata.fromJson(
                  json_['eventExecutionSnapshotMetadata']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        eventParams:
            json_.containsKey('eventParams')
                ? EnterpriseCrmFrontendsEventbusProtoEventParameters.fromJson(
                  json_['eventParams'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        snapshotTime: json_['snapshotTime'] as core.String?,
        taskExecutionDetails:
            (json_['taskExecutionDetails'] as core.List?)
                ?.map(
                  (value) =>
                      EnterpriseCrmEventbusProtoTaskExecutionDetails.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        taskName: json_['taskName'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (checkpointTaskNumber != null)
      'checkpointTaskNumber': checkpointTaskNumber!,
    if (conditionResults != null) 'conditionResults': conditionResults!,
    if (diffParams != null) 'diffParams': diffParams!,
    if (eventExecutionInfoId != null)
      'eventExecutionInfoId': eventExecutionInfoId!,
    if (eventExecutionSnapshotId != null)
      'eventExecutionSnapshotId': eventExecutionSnapshotId!,
    if (eventExecutionSnapshotMetadata != null)
      'eventExecutionSnapshotMetadata': eventExecutionSnapshotMetadata!,
    if (eventParams != null) 'eventParams': eventParams!,
    if (snapshotTime != null) 'snapshotTime': snapshotTime!,
    if (taskExecutionDetails != null)
      'taskExecutionDetails': taskExecutionDetails!,
    if (taskName != null) 'taskName': taskName!,
  };
}

/// LINT.IfChange This message is used for processing and persisting (when
/// applicable) key value pair parameters for each event in the event bus.
///
/// Please see
class EnterpriseCrmFrontendsEventbusProtoEventParameters {
  /// Parameters are a part of Event and can be used to communicate between
  /// different tasks that are part of the same workflow execution.
  core.List<EnterpriseCrmFrontendsEventbusProtoParameterEntry>? parameters;

  EnterpriseCrmFrontendsEventbusProtoEventParameters({this.parameters});

  EnterpriseCrmFrontendsEventbusProtoEventParameters.fromJson(core.Map json_)
    : this(
        parameters:
            (json_['parameters'] as core.List?)
                ?.map(
                  (value) =>
                      EnterpriseCrmFrontendsEventbusProtoParameterEntry.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (parameters != null) 'parameters': parameters!,
  };
}

typedef EnterpriseCrmFrontendsEventbusProtoIntParameterArray =
    $EventbusProtoIntParameterArray;

/// Key-value pair of EventBus task parameters.
///
/// Next id: 13
class EnterpriseCrmFrontendsEventbusProtoParamSpecEntry {
  /// The FQCN of the Java object this represents.
  ///
  /// A string, for example, would be "java.lang.String". If this is
  /// "java.lang.Object", the parameter can be of any type.
  core.String? className;

  /// If it is a collection of objects, this would be the FCQN of every
  /// individual element in the collection.
  ///
  /// If this is "java.lang.Object", the parameter is a collection of any type.
  core.String? collectionElementClassName;

  /// Optional fields, such as help text and other useful info.
  EnterpriseCrmEventbusProtoParamSpecEntryConfig? config;

  /// The data type of the parameter.
  /// Possible string values are:
  /// - "DATA_TYPE_UNSPECIFIED"
  /// - "STRING_VALUE"
  /// - "INT_VALUE"
  /// - "DOUBLE_VALUE"
  /// - "BOOLEAN_VALUE"
  /// - "PROTO_VALUE"
  /// - "SERIALIZED_OBJECT_VALUE"
  /// - "STRING_ARRAY"
  /// - "INT_ARRAY"
  /// - "DOUBLE_ARRAY"
  /// - "PROTO_ARRAY"
  /// - "PROTO_ENUM"
  /// - "BOOLEAN_ARRAY"
  /// - "PROTO_ENUM_ARRAY"
  /// - "BYTES" : BYTES and BYTES_ARRAY data types are not allowed for top-level
  /// params. They're only meant to support protobufs with BYTES (sub)fields.
  /// - "BYTES_ARRAY"
  /// - "NON_SERIALIZABLE_OBJECT"
  /// - "JSON_VALUE"
  core.String? dataType;

  /// Default values for the defined keys.
  ///
  /// Each value can either be string, int, double or any proto message or a
  /// serialized object.
  EnterpriseCrmFrontendsEventbusProtoParameterValueType? defaultValue;

  /// If set, this entry is deprecated, so further use of this parameter should
  /// be prohibited.
  core.bool? isDeprecated;
  core.bool? isOutput;

  /// If the data_type is JSON_VALUE, then this will define its schema.
  core.String? jsonSchema;

  /// Key is used to retrieve the corresponding parameter value.
  ///
  /// This should be unique for a given task. These parameters must be
  /// predefined in the workflow definition.
  core.String? key;

  /// Populated if this represents a proto or proto array.
  EnterpriseCrmEventbusProtoParamSpecEntryProtoDefinition? protoDef;

  /// If set, the user must provide an input value for this parameter.
  core.bool? required;

  /// Rule used to validate inputs (individual values and collection elements)
  /// for this parameter.
  EnterpriseCrmEventbusProtoParamSpecEntryValidationRule? validationRule;

  EnterpriseCrmFrontendsEventbusProtoParamSpecEntry({
    this.className,
    this.collectionElementClassName,
    this.config,
    this.dataType,
    this.defaultValue,
    this.isDeprecated,
    this.isOutput,
    this.jsonSchema,
    this.key,
    this.protoDef,
    this.required,
    this.validationRule,
  });

  EnterpriseCrmFrontendsEventbusProtoParamSpecEntry.fromJson(core.Map json_)
    : this(
        className: json_['className'] as core.String?,
        collectionElementClassName:
            json_['collectionElementClassName'] as core.String?,
        config:
            json_.containsKey('config')
                ? EnterpriseCrmEventbusProtoParamSpecEntryConfig.fromJson(
                  json_['config'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        dataType: json_['dataType'] as core.String?,
        defaultValue:
            json_.containsKey('defaultValue')
                ? EnterpriseCrmFrontendsEventbusProtoParameterValueType.fromJson(
                  json_['defaultValue'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        isDeprecated: json_['isDeprecated'] as core.bool?,
        isOutput: json_['isOutput'] as core.bool?,
        jsonSchema: json_['jsonSchema'] as core.String?,
        key: json_['key'] as core.String?,
        protoDef:
            json_.containsKey('protoDef')
                ? EnterpriseCrmEventbusProtoParamSpecEntryProtoDefinition.fromJson(
                  json_['protoDef'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        required: json_['required'] as core.bool?,
        validationRule:
            json_.containsKey('validationRule')
                ? EnterpriseCrmEventbusProtoParamSpecEntryValidationRule.fromJson(
                  json_['validationRule']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (className != null) 'className': className!,
    if (collectionElementClassName != null)
      'collectionElementClassName': collectionElementClassName!,
    if (config != null) 'config': config!,
    if (dataType != null) 'dataType': dataType!,
    if (defaultValue != null) 'defaultValue': defaultValue!,
    if (isDeprecated != null) 'isDeprecated': isDeprecated!,
    if (isOutput != null) 'isOutput': isOutput!,
    if (jsonSchema != null) 'jsonSchema': jsonSchema!,
    if (key != null) 'key': key!,
    if (protoDef != null) 'protoDef': protoDef!,
    if (required != null) 'required': required!,
    if (validationRule != null) 'validationRule': validationRule!,
  };
}

class EnterpriseCrmFrontendsEventbusProtoParamSpecsMessage {
  core.List<EnterpriseCrmFrontendsEventbusProtoParamSpecEntry>? parameters;

  EnterpriseCrmFrontendsEventbusProtoParamSpecsMessage({this.parameters});

  EnterpriseCrmFrontendsEventbusProtoParamSpecsMessage.fromJson(core.Map json_)
    : this(
        parameters:
            (json_['parameters'] as core.List?)
                ?.map(
                  (value) =>
                      EnterpriseCrmFrontendsEventbusProtoParamSpecEntry.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (parameters != null) 'parameters': parameters!,
  };
}

/// Key-value pair of EventBus parameters.
class EnterpriseCrmFrontendsEventbusProtoParameterEntry {
  /// Explicitly getting the type of the parameter.
  /// Possible string values are:
  /// - "DATA_TYPE_UNSPECIFIED"
  /// - "STRING_VALUE"
  /// - "INT_VALUE"
  /// - "DOUBLE_VALUE"
  /// - "BOOLEAN_VALUE"
  /// - "PROTO_VALUE"
  /// - "SERIALIZED_OBJECT_VALUE"
  /// - "STRING_ARRAY"
  /// - "INT_ARRAY"
  /// - "DOUBLE_ARRAY"
  /// - "PROTO_ARRAY"
  /// - "PROTO_ENUM"
  /// - "BOOLEAN_ARRAY"
  /// - "PROTO_ENUM_ARRAY"
  /// - "BYTES" : BYTES and BYTES_ARRAY data types are not allowed for top-level
  /// params. They're only meant to support protobufs with BYTES (sub)fields.
  /// - "BYTES_ARRAY"
  /// - "NON_SERIALIZABLE_OBJECT"
  /// - "JSON_VALUE"
  core.String? dataType;

  /// Key is used to retrieve the corresponding parameter value.
  ///
  /// This should be unique for a given fired event. These parameters must be
  /// predefined in the workflow definition.
  core.String? key;

  /// True if this parameter should be masked in the logs
  core.bool? masked;

  /// Values for the defined keys.
  ///
  /// Each value can either be string, int, double or any proto message.
  EnterpriseCrmFrontendsEventbusProtoParameterValueType? value;

  EnterpriseCrmFrontendsEventbusProtoParameterEntry({
    this.dataType,
    this.key,
    this.masked,
    this.value,
  });

  EnterpriseCrmFrontendsEventbusProtoParameterEntry.fromJson(core.Map json_)
    : this(
        dataType: json_['dataType'] as core.String?,
        key: json_['key'] as core.String?,
        masked: json_['masked'] as core.bool?,
        value:
            json_.containsKey('value')
                ? EnterpriseCrmFrontendsEventbusProtoParameterValueType.fromJson(
                  json_['value'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (dataType != null) 'dataType': dataType!,
    if (key != null) 'key': key!,
    if (masked != null) 'masked': masked!,
    if (value != null) 'value': value!,
  };
}

/// To support various types of parameter values.
///
/// Next available id: 14
class EnterpriseCrmFrontendsEventbusProtoParameterValueType {
  EnterpriseCrmFrontendsEventbusProtoBooleanParameterArray? booleanArray;
  core.bool? booleanValue;
  EnterpriseCrmFrontendsEventbusProtoDoubleParameterArray? doubleArray;
  core.double? doubleValue;
  EnterpriseCrmFrontendsEventbusProtoIntParameterArray? intArray;
  core.String? intValue;
  core.String? jsonValue;
  EnterpriseCrmFrontendsEventbusProtoProtoParameterArray? protoArray;

  ///
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? protoValue;
  EnterpriseCrmFrontendsEventbusProtoSerializedObjectParameter?
  serializedObjectValue;
  EnterpriseCrmFrontendsEventbusProtoStringParameterArray? stringArray;
  core.String? stringValue;

  EnterpriseCrmFrontendsEventbusProtoParameterValueType({
    this.booleanArray,
    this.booleanValue,
    this.doubleArray,
    this.doubleValue,
    this.intArray,
    this.intValue,
    this.jsonValue,
    this.protoArray,
    this.protoValue,
    this.serializedObjectValue,
    this.stringArray,
    this.stringValue,
  });

  EnterpriseCrmFrontendsEventbusProtoParameterValueType.fromJson(core.Map json_)
    : this(
        booleanArray:
            json_.containsKey('booleanArray')
                ? EnterpriseCrmFrontendsEventbusProtoBooleanParameterArray.fromJson(
                  json_['booleanArray'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        booleanValue: json_['booleanValue'] as core.bool?,
        doubleArray:
            json_.containsKey('doubleArray')
                ? EnterpriseCrmFrontendsEventbusProtoDoubleParameterArray.fromJson(
                  json_['doubleArray'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        doubleValue: (json_['doubleValue'] as core.num?)?.toDouble(),
        intArray:
            json_.containsKey('intArray')
                ? EnterpriseCrmFrontendsEventbusProtoIntParameterArray.fromJson(
                  json_['intArray'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        intValue: json_['intValue'] as core.String?,
        jsonValue: json_['jsonValue'] as core.String?,
        protoArray:
            json_.containsKey('protoArray')
                ? EnterpriseCrmFrontendsEventbusProtoProtoParameterArray.fromJson(
                  json_['protoArray'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        protoValue:
            json_.containsKey('protoValue')
                ? json_['protoValue'] as core.Map<core.String, core.dynamic>
                : null,
        serializedObjectValue:
            json_.containsKey('serializedObjectValue')
                ? EnterpriseCrmFrontendsEventbusProtoSerializedObjectParameter.fromJson(
                  json_['serializedObjectValue']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        stringArray:
            json_.containsKey('stringArray')
                ? EnterpriseCrmFrontendsEventbusProtoStringParameterArray.fromJson(
                  json_['stringArray'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        stringValue: json_['stringValue'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (booleanArray != null) 'booleanArray': booleanArray!,
    if (booleanValue != null) 'booleanValue': booleanValue!,
    if (doubleArray != null) 'doubleArray': doubleArray!,
    if (doubleValue != null) 'doubleValue': doubleValue!,
    if (intArray != null) 'intArray': intArray!,
    if (intValue != null) 'intValue': intValue!,
    if (jsonValue != null) 'jsonValue': jsonValue!,
    if (protoArray != null) 'protoArray': protoArray!,
    if (protoValue != null) 'protoValue': protoValue!,
    if (serializedObjectValue != null)
      'serializedObjectValue': serializedObjectValue!,
    if (stringArray != null) 'stringArray': stringArray!,
    if (stringValue != null) 'stringValue': stringValue!,
  };
}

typedef EnterpriseCrmFrontendsEventbusProtoProtoParameterArray =
    $EventbusProtoProtoParameterArray;

/// Next available id: 4
class EnterpriseCrmFrontendsEventbusProtoRollbackStrategy {
  /// The customized parameters the user can pass to this task.
  ///
  /// Optional.
  EnterpriseCrmFrontendsEventbusProtoEventParameters? parameters;

  /// This is the name of the task that needs to be executed upon rollback of
  /// this task.
  ///
  /// Required.
  core.String? rollbackTaskImplementationClassName;

  /// These are the tasks numbers of the tasks whose
  /// `rollback_strategy.rollback_task_implementation_class_name` needs to be
  /// executed upon failure of this task.
  ///
  /// Required.
  core.List<core.String>? taskNumbersToRollback;

  EnterpriseCrmFrontendsEventbusProtoRollbackStrategy({
    this.parameters,
    this.rollbackTaskImplementationClassName,
    this.taskNumbersToRollback,
  });

  EnterpriseCrmFrontendsEventbusProtoRollbackStrategy.fromJson(core.Map json_)
    : this(
        parameters:
            json_.containsKey('parameters')
                ? EnterpriseCrmFrontendsEventbusProtoEventParameters.fromJson(
                  json_['parameters'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        rollbackTaskImplementationClassName:
            json_['rollbackTaskImplementationClassName'] as core.String?,
        taskNumbersToRollback:
            (json_['taskNumbersToRollback'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (parameters != null) 'parameters': parameters!,
    if (rollbackTaskImplementationClassName != null)
      'rollbackTaskImplementationClassName':
          rollbackTaskImplementationClassName!,
    if (taskNumbersToRollback != null)
      'taskNumbersToRollback': taskNumbersToRollback!,
  };
}

typedef EnterpriseCrmFrontendsEventbusProtoSerializedObjectParameter =
    $EventbusProtoSerializedObjectParameter;
typedef EnterpriseCrmFrontendsEventbusProtoStringParameterArray =
    $EventbusProtoStringParameterArray;

/// The task configuration details.
///
/// This is not the implementation of Task. There might be multiple TaskConfigs
/// for the same Task.
class EnterpriseCrmFrontendsEventbusProtoTaskConfig {
  /// Alert configurations on error rate, warning rate, number of runs,
  /// durations, etc.
  core.List<EnterpriseCrmEventbusProtoTaskAlertConfig>? alertConfigs;

  /// Determines the number of times the task will be retried on failure and
  /// with what retry strategy.
  ///
  /// This is applicable for synchronous calls to Eventbus alone (Post).
  ///
  /// Optional.
  EnterpriseCrmEventbusProtoConditionalFailurePolicies?
  conditionalFailurePolicies;

  /// Auto-generated.
  core.String? createTime;

  /// The creator's email address.
  ///
  /// Auto-generated from the user's email.
  core.String? creatorEmail;

  /// User-provided description intended to give more business context about the
  /// task.
  core.String? description;

  /// If this config contains a TypedTask, allow validation to succeed if an
  /// input is read from the output of another TypedTask whose output type is
  /// declared as a superclass of the requested input type.
  ///
  /// For instance, if the previous task declares an output of type Message, any
  /// task with this flag enabled will pass validation when attempting to read
  /// any proto Message type from the resultant Event parameter.
  core.bool? disableStrictTypeValidation;

  /// Optional Error catcher id of the error catch flow which will be executed
  /// when execution error happens in the task
  core.String? errorCatcherId;

  ///
  /// Possible string values are:
  /// - "EXTERNAL_TASK_TYPE_UNSPECIFIED" : Default value. External task type is
  /// not specified
  /// - "NORMAL_TASK" : Tasks belongs to the normal task flows
  /// - "ERROR_TASK" : Task belongs to the error catch task flows
  core.String? externalTaskType;

  /// Determines the number of times the task will be retried on failure and
  /// with what retry strategy.
  ///
  /// This is applicable for asynchronous calls to Eventbus alone (Post To
  /// Queue, Schedule etc.).
  ///
  /// Optional.
  EnterpriseCrmEventbusProtoFailurePolicy? failurePolicy;

  /// The number of edges leading into this TaskConfig.
  core.int? incomingEdgeCount;

  /// If set, overrides the option configured in the Task implementation class.
  /// Possible string values are:
  /// - "UNSPECIFIED_JSON_VALIDATION_OPTION" : As per the default behavior, no
  /// validation will be run. Will not override any option set in a Task.
  /// - "SKIP" : Do not run any validation against JSON schemas.
  /// - "PRE_EXECUTION" : Validate all potential input JSON parameters against
  /// schemas specified in WorkflowParameters.
  /// - "POST_EXECUTION" : Validate all potential output JSON parameters against
  /// schemas specified in WorkflowParameters.
  /// - "PRE_POST_EXECUTION" : Perform both PRE_EXECUTION and POST_EXECUTION
  /// validations.
  core.String? jsonValidationOption;

  /// User-provided label that is attached to this TaskConfig in the UI.
  core.String? label;

  /// Auto-generated.
  core.String? lastModifiedTime;

  /// The set of tasks that are next in line to be executed as per the execution
  /// graph defined for the parent event, specified by `event_config_id`.
  ///
  /// Each of these next tasks are executed only if the condition associated
  /// with them evaluates to true.
  core.List<EnterpriseCrmEventbusProtoNextTask>? nextTasks;

  /// The policy dictating the execution of the next set of tasks for the
  /// current task.
  /// Possible string values are:
  /// - "UNSPECIFIED" : Default
  /// - "RUN_ALL_MATCH" : Execute all the tasks that satisfy their associated
  /// condition.
  /// - "RUN_FIRST_MATCH" : Execute the first task that satisfies the associated
  /// condition.
  core.String? nextTasksExecutionPolicy;

  /// The customized parameters the user can pass to this task.
  core.Map<core.String, EnterpriseCrmFrontendsEventbusProtoParameterEntry>?
  parameters;

  /// Informs the front-end application where to draw this task config on the
  /// UI.
  ///
  /// Optional.
  EnterpriseCrmEventbusProtoCoordinate? position;

  /// Standard filter expression evaluated before execution.
  ///
  /// Independent of other conditions and tasks. Can be used to enable rollout.
  /// e.g. "rollout(5)" will only allow 5% of incoming traffic to task.
  ///
  /// Optional.
  core.String? precondition;

  /// User-provided label that is attached to precondition in the UI.
  ///
  /// Optional.
  core.String? preconditionLabel;

  /// Contains information about what needs to be done upon failure (either a
  /// permanent error or after it has been retried too many times).
  ///
  /// Optional.
  EnterpriseCrmFrontendsEventbusProtoRollbackStrategy? rollbackStrategy;

  /// Determines what action to take upon successful task completion.
  EnterpriseCrmEventbusProtoSuccessPolicy? successPolicy;

  /// Determines the number of times the task will be retried on failure and
  /// with what retry strategy.
  ///
  /// This is applicable for synchronous calls to Eventbus alone (Post).
  ///
  /// Optional.
  EnterpriseCrmEventbusProtoFailurePolicy? synchronousCallFailurePolicy;

  /// Copy of the task entity that this task config is an instance of.
  EnterpriseCrmFrontendsEventbusProtoTaskEntity? taskEntity;

  /// The policy dictating the execution strategy of this task.
  /// Possible string values are:
  /// - "WHEN_ALL_SUCCEED" : Wait until all of its previous tasks finished
  /// execution, then verify at least one of the edge conditions is met, and
  /// execute if possible. This should be considered as WHEN_ALL_TASKS_SUCCEED.
  /// - "WHEN_ANY_SUCCEED" : Start execution as long as any of its previous
  /// tasks finished execution and the corresponding edge condition is met
  /// (since we will execute if only that succeeding edge condition is met).
  /// - "WHEN_ALL_TASKS_AND_CONDITIONS_SUCCEED" : Wait until all of its previous
  /// tasks finished execution, then verify the all edge conditions are met and
  /// execute if possible.
  core.String? taskExecutionStrategy;

  /// The name for the task.
  core.String? taskName;

  /// REQUIRED: the identifier of this task within its parent event config,
  /// specified by the client.
  ///
  /// This should be unique among all the tasks belong to the same event config.
  /// We use this field as the identifier to find next tasks (via field
  /// `next_tasks.task_number`).
  core.String? taskNumber;

  /// A string template that allows user to configure task parameters (with
  /// either literal default values or tokens which will be resolved at
  /// execution time) for the task.
  ///
  /// It will eventually replace the old "parameters" field.
  core.String? taskSpec;

  /// Used to define task-template name if task is of type task-template
  core.String? taskTemplateName;

  /// Defines the type of the task
  /// Possible string values are:
  /// - "TASK" : Normal IP task
  /// - "ASIS_TEMPLATE" : Task is of As-Is Template type
  /// - "IO_TEMPLATE" : Task is of I/O template type with a different underlying
  /// task
  core.String? taskType;

  EnterpriseCrmFrontendsEventbusProtoTaskConfig({
    this.alertConfigs,
    this.conditionalFailurePolicies,
    this.createTime,
    this.creatorEmail,
    this.description,
    this.disableStrictTypeValidation,
    this.errorCatcherId,
    this.externalTaskType,
    this.failurePolicy,
    this.incomingEdgeCount,
    this.jsonValidationOption,
    this.label,
    this.lastModifiedTime,
    this.nextTasks,
    this.nextTasksExecutionPolicy,
    this.parameters,
    this.position,
    this.precondition,
    this.preconditionLabel,
    this.rollbackStrategy,
    this.successPolicy,
    this.synchronousCallFailurePolicy,
    this.taskEntity,
    this.taskExecutionStrategy,
    this.taskName,
    this.taskNumber,
    this.taskSpec,
    this.taskTemplateName,
    this.taskType,
  });

  EnterpriseCrmFrontendsEventbusProtoTaskConfig.fromJson(core.Map json_)
    : this(
        alertConfigs:
            (json_['alertConfigs'] as core.List?)
                ?.map(
                  (value) => EnterpriseCrmEventbusProtoTaskAlertConfig.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        conditionalFailurePolicies:
            json_.containsKey('conditionalFailurePolicies')
                ? EnterpriseCrmEventbusProtoConditionalFailurePolicies.fromJson(
                  json_['conditionalFailurePolicies']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        createTime: json_['createTime'] as core.String?,
        creatorEmail: json_['creatorEmail'] as core.String?,
        description: json_['description'] as core.String?,
        disableStrictTypeValidation:
            json_['disableStrictTypeValidation'] as core.bool?,
        errorCatcherId: json_['errorCatcherId'] as core.String?,
        externalTaskType: json_['externalTaskType'] as core.String?,
        failurePolicy:
            json_.containsKey('failurePolicy')
                ? EnterpriseCrmEventbusProtoFailurePolicy.fromJson(
                  json_['failurePolicy'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        incomingEdgeCount: json_['incomingEdgeCount'] as core.int?,
        jsonValidationOption: json_['jsonValidationOption'] as core.String?,
        label: json_['label'] as core.String?,
        lastModifiedTime: json_['lastModifiedTime'] as core.String?,
        nextTasks:
            (json_['nextTasks'] as core.List?)
                ?.map(
                  (value) => EnterpriseCrmEventbusProtoNextTask.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextTasksExecutionPolicy:
            json_['nextTasksExecutionPolicy'] as core.String?,
        parameters:
            (json_['parameters'] as core.Map<core.String, core.dynamic>?)?.map(
              (key, value) => core.MapEntry(
                key,
                EnterpriseCrmFrontendsEventbusProtoParameterEntry.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              ),
            ),
        position:
            json_.containsKey('position')
                ? EnterpriseCrmEventbusProtoCoordinate.fromJson(
                  json_['position'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        precondition: json_['precondition'] as core.String?,
        preconditionLabel: json_['preconditionLabel'] as core.String?,
        rollbackStrategy:
            json_.containsKey('rollbackStrategy')
                ? EnterpriseCrmFrontendsEventbusProtoRollbackStrategy.fromJson(
                  json_['rollbackStrategy']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        successPolicy:
            json_.containsKey('successPolicy')
                ? EnterpriseCrmEventbusProtoSuccessPolicy.fromJson(
                  json_['successPolicy'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        synchronousCallFailurePolicy:
            json_.containsKey('synchronousCallFailurePolicy')
                ? EnterpriseCrmEventbusProtoFailurePolicy.fromJson(
                  json_['synchronousCallFailurePolicy']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        taskEntity:
            json_.containsKey('taskEntity')
                ? EnterpriseCrmFrontendsEventbusProtoTaskEntity.fromJson(
                  json_['taskEntity'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        taskExecutionStrategy: json_['taskExecutionStrategy'] as core.String?,
        taskName: json_['taskName'] as core.String?,
        taskNumber: json_['taskNumber'] as core.String?,
        taskSpec: json_['taskSpec'] as core.String?,
        taskTemplateName: json_['taskTemplateName'] as core.String?,
        taskType: json_['taskType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (alertConfigs != null) 'alertConfigs': alertConfigs!,
    if (conditionalFailurePolicies != null)
      'conditionalFailurePolicies': conditionalFailurePolicies!,
    if (createTime != null) 'createTime': createTime!,
    if (creatorEmail != null) 'creatorEmail': creatorEmail!,
    if (description != null) 'description': description!,
    if (disableStrictTypeValidation != null)
      'disableStrictTypeValidation': disableStrictTypeValidation!,
    if (errorCatcherId != null) 'errorCatcherId': errorCatcherId!,
    if (externalTaskType != null) 'externalTaskType': externalTaskType!,
    if (failurePolicy != null) 'failurePolicy': failurePolicy!,
    if (incomingEdgeCount != null) 'incomingEdgeCount': incomingEdgeCount!,
    if (jsonValidationOption != null)
      'jsonValidationOption': jsonValidationOption!,
    if (label != null) 'label': label!,
    if (lastModifiedTime != null) 'lastModifiedTime': lastModifiedTime!,
    if (nextTasks != null) 'nextTasks': nextTasks!,
    if (nextTasksExecutionPolicy != null)
      'nextTasksExecutionPolicy': nextTasksExecutionPolicy!,
    if (parameters != null) 'parameters': parameters!,
    if (position != null) 'position': position!,
    if (precondition != null) 'precondition': precondition!,
    if (preconditionLabel != null) 'preconditionLabel': preconditionLabel!,
    if (rollbackStrategy != null) 'rollbackStrategy': rollbackStrategy!,
    if (successPolicy != null) 'successPolicy': successPolicy!,
    if (synchronousCallFailurePolicy != null)
      'synchronousCallFailurePolicy': synchronousCallFailurePolicy!,
    if (taskEntity != null) 'taskEntity': taskEntity!,
    if (taskExecutionStrategy != null)
      'taskExecutionStrategy': taskExecutionStrategy!,
    if (taskName != null) 'taskName': taskName!,
    if (taskNumber != null) 'taskNumber': taskNumber!,
    if (taskSpec != null) 'taskSpec': taskSpec!,
    if (taskTemplateName != null) 'taskTemplateName': taskTemplateName!,
    if (taskType != null) 'taskType': taskType!,
  };
}

/// Contains a task's metadata and associated information.
///
/// Next available id: 7
class EnterpriseCrmFrontendsEventbusProtoTaskEntity {
  /// True if the task has conflict with vpcsc
  core.bool? disabledForVpcSc;

  /// Metadata inclueds the task name, author and so on.
  EnterpriseCrmEventbusProtoTaskMetadata? metadata;

  /// Declarations for inputs/outputs for a TypedTask.
  ///
  /// This is also associated with the METADATA mask.
  EnterpriseCrmFrontendsEventbusProtoParamSpecsMessage? paramSpecs;

  /// Deprecated - statistics from the Monarch query.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  EnterpriseCrmEventbusStats? stats;

  /// Defines the type of the task
  /// Possible string values are:
  /// - "TASK" : Normal IP task
  /// - "ASIS_TEMPLATE" : Task is of As-Is Template type
  /// - "IO_TEMPLATE" : Task is of I/O template type with a different underlying
  /// task
  core.String? taskType;

  /// UI configuration for this task Also associated with the METADATA mask.
  EnterpriseCrmEventbusProtoTaskUiConfig? uiConfig;

  EnterpriseCrmFrontendsEventbusProtoTaskEntity({
    this.disabledForVpcSc,
    this.metadata,
    this.paramSpecs,
    this.stats,
    this.taskType,
    this.uiConfig,
  });

  EnterpriseCrmFrontendsEventbusProtoTaskEntity.fromJson(core.Map json_)
    : this(
        disabledForVpcSc: json_['disabledForVpcSc'] as core.bool?,
        metadata:
            json_.containsKey('metadata')
                ? EnterpriseCrmEventbusProtoTaskMetadata.fromJson(
                  json_['metadata'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        paramSpecs:
            json_.containsKey('paramSpecs')
                ? EnterpriseCrmFrontendsEventbusProtoParamSpecsMessage.fromJson(
                  json_['paramSpecs'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        stats:
            json_.containsKey('stats')
                ? EnterpriseCrmEventbusStats.fromJson(
                  json_['stats'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        taskType: json_['taskType'] as core.String?,
        uiConfig:
            json_.containsKey('uiConfig')
                ? EnterpriseCrmEventbusProtoTaskUiConfig.fromJson(
                  json_['uiConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (disabledForVpcSc != null) 'disabledForVpcSc': disabledForVpcSc!,
    if (metadata != null) 'metadata': metadata!,
    if (paramSpecs != null) 'paramSpecs': paramSpecs!,
    if (stats != null) 'stats': stats!,
    if (taskType != null) 'taskType': taskType!,
    if (uiConfig != null) 'uiConfig': uiConfig!,
  };
}

/// Configuration detail of a trigger.
///
/// Next available id: 22
class EnterpriseCrmFrontendsEventbusProtoTriggerConfig {
  /// An alert threshold configuration for the \[trigger + client + workflow\]
  /// tuple.
  ///
  /// If these values are not specified in the trigger config, default values
  /// will be populated by the system. Note that there must be exactly one alert
  /// threshold configured per \[client + trigger + workflow\] when published.
  core.List<EnterpriseCrmEventbusProtoWorkflowAlertConfig>? alertConfig;
  EnterpriseCrmEventbusProtoCloudSchedulerConfig? cloudSchedulerConfig;

  /// User-provided description intended to give more business context about the
  /// task.
  core.String? description;

  /// The list of client ids which are enabled to execute the workflow using
  /// this trigger.
  ///
  /// In other words, these clients have the workflow execution privledges for
  /// this trigger. For API trigger, the client id in the incoming request is
  /// validated against the list of enabled clients. For non-API triggers, one
  /// workflow execution is triggered on behalf of each enabled client.
  ///
  /// Required.
  core.List<core.String>? enabledClients;

  /// Optional Error catcher id of the error catch flow which will be executed
  /// when execution error happens in the task
  core.String? errorCatcherId;

  /// List of input variables for the api trigger.
  ///
  /// Optional.
  EnterpriseCrmFrontendsEventbusProtoTriggerConfigVariables? inputVariables;

  /// The user created label for a particular trigger.
  core.String? label;

  /// Dictates how next tasks will be executed.
  /// Possible string values are:
  /// - "UNSPECIFIED" : Default
  /// - "RUN_ALL_MATCH" : Execute all the tasks that satisfy their associated
  /// condition.
  /// - "RUN_FIRST_MATCH" : Execute the first task that satisfies the associated
  /// condition.
  core.String? nextTasksExecutionPolicy;

  /// List of output variables for the api trigger.
  ///
  /// Optional.
  EnterpriseCrmFrontendsEventbusProtoTriggerConfigVariables? outputVariables;

  /// If set to true, any upcoming requests for this trigger config will be
  /// paused and the executions will be resumed later when the flag is reset.
  ///
  /// The workflow to which this trigger config belongs has to be in ACTIVE
  /// status for the executions to be paused or resumed.
  ///
  /// Optional.
  core.bool? pauseWorkflowExecutions;

  /// Informs the front-end application where to draw this trigger config on the
  /// UI.
  ///
  /// Optional.
  EnterpriseCrmEventbusProtoCoordinate? position;

  /// Configurable properties of the trigger, not to be confused with workflow
  /// parameters.
  ///
  /// E.g. "name" is a property for API triggers and "subscription" is a
  /// property for Cloud Pubsub triggers.
  core.Map<core.String, core.String>? properties;

  /// Set of tasks numbers from where the workflow execution is started by this
  /// trigger.
  ///
  /// If this is empty, then workflow is executed with default start tasks. In
  /// the list of start tasks, none of two tasks can have direct
  /// ancestor-descendant relationships (i.e. in a same workflow execution
  /// graph).
  core.List<EnterpriseCrmEventbusProtoNextTask>? startTasks;

  /// When set, Eventbus will run the task specified in the trigger_criteria and
  /// validate the result using the trigger_criteria.condition, and only execute
  /// the workflow when result is true.
  ///
  /// Optional.
  EnterpriseCrmEventbusProtoTriggerCriteria? triggerCriteria;

  /// The backend trigger ID.
  core.String? triggerId;

  /// Name of the trigger This is added to identify the type of trigger.
  ///
  /// This is avoid the logic on triggerId to identify the trigger_type and push
  /// the same to monitoring.
  ///
  /// Optional.
  core.String? triggerName;

  /// A number to uniquely identify each trigger config within the workflow on
  /// UI.
  ///
  /// Required.
  core.String? triggerNumber;

  ///
  /// Possible string values are:
  /// - "UNKNOWN"
  /// - "CLOUD_PUBSUB"
  /// - "GOOPS"
  /// - "SFDC_SYNC"
  /// - "CRON"
  /// - "API"
  /// - "MANIFOLD_TRIGGER"
  /// - "DATALAYER_DATA_CHANGE"
  /// - "SFDC_CHANNEL"
  /// - "CLOUD_PUBSUB_EXTERNAL"
  /// - "SFDC_CDC_CHANNEL"
  /// - "SFDC_PLATFORM_EVENTS_CHANNEL"
  /// - "CLOUD_SCHEDULER"
  /// - "INTEGRATION_CONNECTOR_TRIGGER"
  /// - "PRIVATE_TRIGGER"
  /// - "EVENTARC_TRIGGER"
  core.String? triggerType;

  EnterpriseCrmFrontendsEventbusProtoTriggerConfig({
    this.alertConfig,
    this.cloudSchedulerConfig,
    this.description,
    this.enabledClients,
    this.errorCatcherId,
    this.inputVariables,
    this.label,
    this.nextTasksExecutionPolicy,
    this.outputVariables,
    this.pauseWorkflowExecutions,
    this.position,
    this.properties,
    this.startTasks,
    this.triggerCriteria,
    this.triggerId,
    this.triggerName,
    this.triggerNumber,
    this.triggerType,
  });

  EnterpriseCrmFrontendsEventbusProtoTriggerConfig.fromJson(core.Map json_)
    : this(
        alertConfig:
            (json_['alertConfig'] as core.List?)
                ?.map(
                  (value) =>
                      EnterpriseCrmEventbusProtoWorkflowAlertConfig.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        cloudSchedulerConfig:
            json_.containsKey('cloudSchedulerConfig')
                ? EnterpriseCrmEventbusProtoCloudSchedulerConfig.fromJson(
                  json_['cloudSchedulerConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        description: json_['description'] as core.String?,
        enabledClients:
            (json_['enabledClients'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        errorCatcherId: json_['errorCatcherId'] as core.String?,
        inputVariables:
            json_.containsKey('inputVariables')
                ? EnterpriseCrmFrontendsEventbusProtoTriggerConfigVariables.fromJson(
                  json_['inputVariables']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        label: json_['label'] as core.String?,
        nextTasksExecutionPolicy:
            json_['nextTasksExecutionPolicy'] as core.String?,
        outputVariables:
            json_.containsKey('outputVariables')
                ? EnterpriseCrmFrontendsEventbusProtoTriggerConfigVariables.fromJson(
                  json_['outputVariables']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        pauseWorkflowExecutions: json_['pauseWorkflowExecutions'] as core.bool?,
        position:
            json_.containsKey('position')
                ? EnterpriseCrmEventbusProtoCoordinate.fromJson(
                  json_['position'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        properties: (json_['properties']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        startTasks:
            (json_['startTasks'] as core.List?)
                ?.map(
                  (value) => EnterpriseCrmEventbusProtoNextTask.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        triggerCriteria:
            json_.containsKey('triggerCriteria')
                ? EnterpriseCrmEventbusProtoTriggerCriteria.fromJson(
                  json_['triggerCriteria']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        triggerId: json_['triggerId'] as core.String?,
        triggerName: json_['triggerName'] as core.String?,
        triggerNumber: json_['triggerNumber'] as core.String?,
        triggerType: json_['triggerType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (alertConfig != null) 'alertConfig': alertConfig!,
    if (cloudSchedulerConfig != null)
      'cloudSchedulerConfig': cloudSchedulerConfig!,
    if (description != null) 'description': description!,
    if (enabledClients != null) 'enabledClients': enabledClients!,
    if (errorCatcherId != null) 'errorCatcherId': errorCatcherId!,
    if (inputVariables != null) 'inputVariables': inputVariables!,
    if (label != null) 'label': label!,
    if (nextTasksExecutionPolicy != null)
      'nextTasksExecutionPolicy': nextTasksExecutionPolicy!,
    if (outputVariables != null) 'outputVariables': outputVariables!,
    if (pauseWorkflowExecutions != null)
      'pauseWorkflowExecutions': pauseWorkflowExecutions!,
    if (position != null) 'position': position!,
    if (properties != null) 'properties': properties!,
    if (startTasks != null) 'startTasks': startTasks!,
    if (triggerCriteria != null) 'triggerCriteria': triggerCriteria!,
    if (triggerId != null) 'triggerId': triggerId!,
    if (triggerName != null) 'triggerName': triggerName!,
    if (triggerNumber != null) 'triggerNumber': triggerNumber!,
    if (triggerType != null) 'triggerType': triggerType!,
  };
}

/// Variables names mapped to api trigger.
typedef EnterpriseCrmFrontendsEventbusProtoTriggerConfigVariables =
    $TriggerConfigVariables;

class EnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntry {
  /// Metadata information about the parameters.
  EnterpriseCrmEventbusProtoAttributes? attributes;

  /// Child parameters nested within this parameter.
  ///
  /// This field only applies to protobuf parameters
  core.List<EnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntry>?
  children;

  /// Indicates whether this variable contains large data and need to be
  /// uploaded to Cloud Storage.
  core.bool? containsLargeData;

  /// The data type of the parameter.
  /// Possible string values are:
  /// - "DATA_TYPE_UNSPECIFIED"
  /// - "STRING_VALUE"
  /// - "INT_VALUE"
  /// - "DOUBLE_VALUE"
  /// - "BOOLEAN_VALUE"
  /// - "PROTO_VALUE"
  /// - "SERIALIZED_OBJECT_VALUE"
  /// - "STRING_ARRAY"
  /// - "INT_ARRAY"
  /// - "DOUBLE_ARRAY"
  /// - "PROTO_ARRAY"
  /// - "PROTO_ENUM"
  /// - "BOOLEAN_ARRAY"
  /// - "PROTO_ENUM_ARRAY"
  /// - "BYTES" : BYTES and BYTES_ARRAY data types are not allowed for top-level
  /// params. They're only meant to support protobufs with BYTES (sub)fields.
  /// - "BYTES_ARRAY"
  /// - "NON_SERIALIZABLE_OBJECT"
  /// - "JSON_VALUE"
  core.String? dataType;

  /// Default values for the defined keys.
  ///
  /// Each value can either be string, int, double or any proto message or a
  /// serialized object.
  EnterpriseCrmFrontendsEventbusProtoParameterValueType? defaultValue;

  /// The description about the parameter
  ///
  /// Optional.
  core.String? description;

  /// Specifies the input/output type for the parameter.
  /// Possible string values are:
  /// - "IN_OUT_TYPE_UNSPECIFIED"
  /// - "IN" : Input parameters for the workflow. EventBus validates that these
  /// parameters exist in the workflows before execution.
  /// - "OUT" : Output Parameters for the workflow. EventBus will only return
  /// the workflow parameters tagged with OUT in the response back.
  /// - "IN_OUT" : Input or Output Parameters. These can be used as both input
  /// and output. EventBus will validate for the existence of these parameters
  /// before execution and will also return this parameter back in the response.
  core.String? inOutType;

  /// Whether this parameter is a transient parameter.
  core.bool? isTransient;

  /// This schema will be used to validate runtime JSON-typed values of this
  /// parameter.
  core.String? jsonSchema;

  /// Key is used to retrieve the corresponding parameter value.
  ///
  /// This should be unique for a given fired event. These parameters must be
  /// predefined in the workflow definition.
  core.String? key;

  /// The name (without prefix) to be displayed in the UI for this parameter.
  ///
  /// E.g. if the key is "foo.bar.myName", then the name would be "myName".
  core.String? name;

  /// The identifier of the node (TaskConfig/TriggerConfig) this parameter was
  /// produced by, if it is a transient param or a copy of an input param.
  EnterpriseCrmEventbusProtoNodeIdentifier? producedBy;
  core.String? producer;

  /// The name of the protobuf type if the parameter has a protobuf data type.
  core.String? protoDefName;

  /// If the data type is of type proto or proto array, this field needs to be
  /// populated with the fully qualified proto name.
  ///
  /// This message, for example, would be
  /// "enterprise.crm.frontends.eventbus.proto.WorkflowParameterEntry".
  core.String? protoDefPath;
  core.bool? required;

  EnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntry({
    this.attributes,
    this.children,
    this.containsLargeData,
    this.dataType,
    this.defaultValue,
    this.description,
    this.inOutType,
    this.isTransient,
    this.jsonSchema,
    this.key,
    this.name,
    this.producedBy,
    this.producer,
    this.protoDefName,
    this.protoDefPath,
    this.required,
  });

  EnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntry.fromJson(
    core.Map json_,
  ) : this(
        attributes:
            json_.containsKey('attributes')
                ? EnterpriseCrmEventbusProtoAttributes.fromJson(
                  json_['attributes'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        children:
            (json_['children'] as core.List?)
                ?.map(
                  (value) =>
                      EnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntry.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        containsLargeData: json_['containsLargeData'] as core.bool?,
        dataType: json_['dataType'] as core.String?,
        defaultValue:
            json_.containsKey('defaultValue')
                ? EnterpriseCrmFrontendsEventbusProtoParameterValueType.fromJson(
                  json_['defaultValue'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        description: json_['description'] as core.String?,
        inOutType: json_['inOutType'] as core.String?,
        isTransient: json_['isTransient'] as core.bool?,
        jsonSchema: json_['jsonSchema'] as core.String?,
        key: json_['key'] as core.String?,
        name: json_['name'] as core.String?,
        producedBy:
            json_.containsKey('producedBy')
                ? EnterpriseCrmEventbusProtoNodeIdentifier.fromJson(
                  json_['producedBy'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        producer: json_['producer'] as core.String?,
        protoDefName: json_['protoDefName'] as core.String?,
        protoDefPath: json_['protoDefPath'] as core.String?,
        required: json_['required'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (attributes != null) 'attributes': attributes!,
    if (children != null) 'children': children!,
    if (containsLargeData != null) 'containsLargeData': containsLargeData!,
    if (dataType != null) 'dataType': dataType!,
    if (defaultValue != null) 'defaultValue': defaultValue!,
    if (description != null) 'description': description!,
    if (inOutType != null) 'inOutType': inOutType!,
    if (isTransient != null) 'isTransient': isTransient!,
    if (jsonSchema != null) 'jsonSchema': jsonSchema!,
    if (key != null) 'key': key!,
    if (name != null) 'name': name!,
    if (producedBy != null) 'producedBy': producedBy!,
    if (producer != null) 'producer': producer!,
    if (protoDefName != null) 'protoDefName': protoDefName!,
    if (protoDefPath != null) 'protoDefPath': protoDefPath!,
    if (required != null) 'required': required!,
  };
}

/// LINT.IfChange This is the frontend version of WorkflowParameters.
///
/// It's exactly like the backend version except that instead of flattening
/// protobuf parameters and treating every field and subfield of a protobuf
/// parameter as a separate parameter, the fields/subfields of a protobuf
/// parameter will be nested as "children" (see 'children' field below)
/// parameters of the parent parameter. Please refer to
/// enterprise/crm/eventbus/proto/workflow_parameters.proto for more information
/// about WorkflowParameters.
class EnterpriseCrmFrontendsEventbusProtoWorkflowParameters {
  /// Parameters are a part of Event and can be used to communiticate between
  /// different tasks that are part of the same workflow execution.
  core.List<EnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntry>?
  parameters;

  EnterpriseCrmFrontendsEventbusProtoWorkflowParameters({this.parameters});

  EnterpriseCrmFrontendsEventbusProtoWorkflowParameters.fromJson(core.Map json_)
    : this(
        parameters:
            (json_['parameters'] as core.List?)
                ?.map(
                  (value) =>
                      EnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntry.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (parameters != null) 'parameters': parameters!,
  };
}

/// AuthConfig defines details of a authentication type.
class GoogleCloudConnectorsV1AuthConfig {
  /// List containing additional auth configs.
  ///
  /// Optional.
  core.List<GoogleCloudConnectorsV1ConfigVariable>? additionalVariables;

  /// Identifier key for auth config
  ///
  /// Optional.
  core.String? authKey;

  /// The type of authentication configured.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "AUTH_TYPE_UNSPECIFIED" : Authentication type not specified.
  /// - "USER_PASSWORD" : Username and Password Authentication.
  /// - "OAUTH2_JWT_BEARER" : JSON Web Token (JWT) Profile for Oauth 2.0
  /// Authorization Grant based authentication
  /// - "OAUTH2_CLIENT_CREDENTIALS" : Oauth 2.0 Client Credentials Grant
  /// Authentication
  /// - "SSH_PUBLIC_KEY" : SSH Public Key Authentication
  /// - "OAUTH2_AUTH_CODE_FLOW" : Oauth 2.0 Authorization Code Flow
  /// - "GOOGLE_AUTHENTICATION" : Google authentication
  /// - "OAUTH2_AUTH_CODE_FLOW_GOOGLE_MANAGED" : Oauth 2.0 Authorization Code
  /// Flow with Google Provided OAuth Client
  core.String? authType;

  /// Oauth2AuthCodeFlow.
  GoogleCloudConnectorsV1AuthConfigOauth2AuthCodeFlow? oauth2AuthCodeFlow;

  /// Oauth2AuthCodeFlowGoogleManaged.
  GoogleCloudConnectorsV1AuthConfigOauth2AuthCodeFlowGoogleManaged?
  oauth2AuthCodeFlowGoogleManaged;

  /// Oauth2ClientCredentials.
  GoogleCloudConnectorsV1AuthConfigOauth2ClientCredentials?
  oauth2ClientCredentials;

  /// Oauth2JwtBearer.
  GoogleCloudConnectorsV1AuthConfigOauth2JwtBearer? oauth2JwtBearer;

  /// SSH Public Key.
  GoogleCloudConnectorsV1AuthConfigSshPublicKey? sshPublicKey;

  /// UserPassword.
  GoogleCloudConnectorsV1AuthConfigUserPassword? userPassword;

  GoogleCloudConnectorsV1AuthConfig({
    this.additionalVariables,
    this.authKey,
    this.authType,
    this.oauth2AuthCodeFlow,
    this.oauth2AuthCodeFlowGoogleManaged,
    this.oauth2ClientCredentials,
    this.oauth2JwtBearer,
    this.sshPublicKey,
    this.userPassword,
  });

  GoogleCloudConnectorsV1AuthConfig.fromJson(core.Map json_)
    : this(
        additionalVariables:
            (json_['additionalVariables'] as core.List?)
                ?.map(
                  (value) => GoogleCloudConnectorsV1ConfigVariable.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        authKey: json_['authKey'] as core.String?,
        authType: json_['authType'] as core.String?,
        oauth2AuthCodeFlow:
            json_.containsKey('oauth2AuthCodeFlow')
                ? GoogleCloudConnectorsV1AuthConfigOauth2AuthCodeFlow.fromJson(
                  json_['oauth2AuthCodeFlow']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        oauth2AuthCodeFlowGoogleManaged:
            json_.containsKey('oauth2AuthCodeFlowGoogleManaged')
                ? GoogleCloudConnectorsV1AuthConfigOauth2AuthCodeFlowGoogleManaged.fromJson(
                  json_['oauth2AuthCodeFlowGoogleManaged']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        oauth2ClientCredentials:
            json_.containsKey('oauth2ClientCredentials')
                ? GoogleCloudConnectorsV1AuthConfigOauth2ClientCredentials.fromJson(
                  json_['oauth2ClientCredentials']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        oauth2JwtBearer:
            json_.containsKey('oauth2JwtBearer')
                ? GoogleCloudConnectorsV1AuthConfigOauth2JwtBearer.fromJson(
                  json_['oauth2JwtBearer']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        sshPublicKey:
            json_.containsKey('sshPublicKey')
                ? GoogleCloudConnectorsV1AuthConfigSshPublicKey.fromJson(
                  json_['sshPublicKey'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        userPassword:
            json_.containsKey('userPassword')
                ? GoogleCloudConnectorsV1AuthConfigUserPassword.fromJson(
                  json_['userPassword'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (additionalVariables != null)
      'additionalVariables': additionalVariables!,
    if (authKey != null) 'authKey': authKey!,
    if (authType != null) 'authType': authType!,
    if (oauth2AuthCodeFlow != null) 'oauth2AuthCodeFlow': oauth2AuthCodeFlow!,
    if (oauth2AuthCodeFlowGoogleManaged != null)
      'oauth2AuthCodeFlowGoogleManaged': oauth2AuthCodeFlowGoogleManaged!,
    if (oauth2ClientCredentials != null)
      'oauth2ClientCredentials': oauth2ClientCredentials!,
    if (oauth2JwtBearer != null) 'oauth2JwtBearer': oauth2JwtBearer!,
    if (sshPublicKey != null) 'sshPublicKey': sshPublicKey!,
    if (userPassword != null) 'userPassword': userPassword!,
  };
}

/// Parameters to support Oauth 2.0 Auth Code Grant Authentication.
///
/// See https://www.rfc-editor.org/rfc/rfc6749#section-1.3.1 for more details.
class GoogleCloudConnectorsV1AuthConfigOauth2AuthCodeFlow {
  /// Authorization code to be exchanged for access and refresh tokens.
  ///
  /// Optional.
  core.String? authCode;

  /// Auth URL for Authorization Code Flow
  ///
  /// Optional.
  core.String? authUri;

  /// Client ID for user-provided OAuth app.
  ///
  /// Optional.
  core.String? clientId;

  /// Client secret for user-provided OAuth app.
  ///
  /// Optional.
  GoogleCloudConnectorsV1Secret? clientSecret;

  /// Whether to enable PKCE when the user performs the auth code flow.
  ///
  /// Optional.
  core.bool? enablePkce;

  /// PKCE verifier to be used during the auth code exchange.
  ///
  /// Optional.
  core.String? pkceVerifier;

  /// Redirect URI to be provided during the auth code exchange.
  ///
  /// Optional.
  core.String? redirectUri;

  /// Scopes the connection will request when the user performs the auth code
  /// flow.
  ///
  /// Optional.
  core.List<core.String>? scopes;

  GoogleCloudConnectorsV1AuthConfigOauth2AuthCodeFlow({
    this.authCode,
    this.authUri,
    this.clientId,
    this.clientSecret,
    this.enablePkce,
    this.pkceVerifier,
    this.redirectUri,
    this.scopes,
  });

  GoogleCloudConnectorsV1AuthConfigOauth2AuthCodeFlow.fromJson(core.Map json_)
    : this(
        authCode: json_['authCode'] as core.String?,
        authUri: json_['authUri'] as core.String?,
        clientId: json_['clientId'] as core.String?,
        clientSecret:
            json_.containsKey('clientSecret')
                ? GoogleCloudConnectorsV1Secret.fromJson(
                  json_['clientSecret'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        enablePkce: json_['enablePkce'] as core.bool?,
        pkceVerifier: json_['pkceVerifier'] as core.String?,
        redirectUri: json_['redirectUri'] as core.String?,
        scopes:
            (json_['scopes'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (authCode != null) 'authCode': authCode!,
    if (authUri != null) 'authUri': authUri!,
    if (clientId != null) 'clientId': clientId!,
    if (clientSecret != null) 'clientSecret': clientSecret!,
    if (enablePkce != null) 'enablePkce': enablePkce!,
    if (pkceVerifier != null) 'pkceVerifier': pkceVerifier!,
    if (redirectUri != null) 'redirectUri': redirectUri!,
    if (scopes != null) 'scopes': scopes!,
  };
}

/// Parameters to support Oauth 2.0 Auth Code Grant Authentication using Google
/// Provided OAuth Client.
///
/// See https://tools.ietf.org/html/rfc6749#section-1.3.1 for more details.
typedef GoogleCloudConnectorsV1AuthConfigOauth2AuthCodeFlowGoogleManaged =
    $Oauth2AuthCodeFlowGoogleManaged;

/// Parameters to support Oauth 2.0 Client Credentials Grant Authentication.
///
/// See https://tools.ietf.org/html/rfc6749#section-1.3.4 for more details.
class GoogleCloudConnectorsV1AuthConfigOauth2ClientCredentials {
  /// The client identifier.
  ///
  /// Optional.
  core.String? clientId;

  /// Secret version reference containing the client secret.
  ///
  /// Optional.
  GoogleCloudConnectorsV1Secret? clientSecret;

  GoogleCloudConnectorsV1AuthConfigOauth2ClientCredentials({
    this.clientId,
    this.clientSecret,
  });

  GoogleCloudConnectorsV1AuthConfigOauth2ClientCredentials.fromJson(
    core.Map json_,
  ) : this(
        clientId: json_['clientId'] as core.String?,
        clientSecret:
            json_.containsKey('clientSecret')
                ? GoogleCloudConnectorsV1Secret.fromJson(
                  json_['clientSecret'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (clientId != null) 'clientId': clientId!,
    if (clientSecret != null) 'clientSecret': clientSecret!,
  };
}

/// Parameters to support JSON Web Token (JWT) Profile for Oauth 2.0
/// Authorization Grant based authentication.
///
/// See https://tools.ietf.org/html/rfc7523 for more details.
class GoogleCloudConnectorsV1AuthConfigOauth2JwtBearer {
  /// Secret version reference containing a PKCS#8 PEM-encoded private key
  /// associated with the Client Certificate.
  ///
  /// This private key will be used to sign JWTs used for the jwt-bearer
  /// authorization grant. Specified in the form as: `projects / * /secrets / *
  /// /versions / * `.
  ///
  /// Optional.
  GoogleCloudConnectorsV1Secret? clientKey;

  /// JwtClaims providers fields to generate the token.
  ///
  /// Optional.
  GoogleCloudConnectorsV1AuthConfigOauth2JwtBearerJwtClaims? jwtClaims;

  GoogleCloudConnectorsV1AuthConfigOauth2JwtBearer({
    this.clientKey,
    this.jwtClaims,
  });

  GoogleCloudConnectorsV1AuthConfigOauth2JwtBearer.fromJson(core.Map json_)
    : this(
        clientKey:
            json_.containsKey('clientKey')
                ? GoogleCloudConnectorsV1Secret.fromJson(
                  json_['clientKey'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        jwtClaims:
            json_.containsKey('jwtClaims')
                ? GoogleCloudConnectorsV1AuthConfigOauth2JwtBearerJwtClaims.fromJson(
                  json_['jwtClaims'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (clientKey != null) 'clientKey': clientKey!,
    if (jwtClaims != null) 'jwtClaims': jwtClaims!,
  };
}

/// JWT claims used for the jwt-bearer authorization grant.
typedef GoogleCloudConnectorsV1AuthConfigOauth2JwtBearerJwtClaims = $JwtClaims;

/// Parameters to support Ssh public key Authentication.
class GoogleCloudConnectorsV1AuthConfigSshPublicKey {
  /// Format of SSH Client cert.
  ///
  /// Optional.
  core.String? certType;

  /// SSH Client Cert.
  ///
  /// It should contain both public and private key.
  ///
  /// Optional.
  GoogleCloudConnectorsV1Secret? sshClientCert;

  /// Password (passphrase) for ssh client certificate if it has one.
  ///
  /// Optional.
  GoogleCloudConnectorsV1Secret? sshClientCertPass;

  /// The user account used to authenticate.
  ///
  /// Optional.
  core.String? username;

  GoogleCloudConnectorsV1AuthConfigSshPublicKey({
    this.certType,
    this.sshClientCert,
    this.sshClientCertPass,
    this.username,
  });

  GoogleCloudConnectorsV1AuthConfigSshPublicKey.fromJson(core.Map json_)
    : this(
        certType: json_['certType'] as core.String?,
        sshClientCert:
            json_.containsKey('sshClientCert')
                ? GoogleCloudConnectorsV1Secret.fromJson(
                  json_['sshClientCert'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        sshClientCertPass:
            json_.containsKey('sshClientCertPass')
                ? GoogleCloudConnectorsV1Secret.fromJson(
                  json_['sshClientCertPass']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        username: json_['username'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (certType != null) 'certType': certType!,
    if (sshClientCert != null) 'sshClientCert': sshClientCert!,
    if (sshClientCertPass != null) 'sshClientCertPass': sshClientCertPass!,
    if (username != null) 'username': username!,
  };
}

/// Parameters to support Username and Password Authentication.
class GoogleCloudConnectorsV1AuthConfigUserPassword {
  /// Secret version reference containing the password.
  ///
  /// Optional.
  GoogleCloudConnectorsV1Secret? password;

  /// Username.
  ///
  /// Optional.
  core.String? username;

  GoogleCloudConnectorsV1AuthConfigUserPassword({this.password, this.username});

  GoogleCloudConnectorsV1AuthConfigUserPassword.fromJson(core.Map json_)
    : this(
        password:
            json_.containsKey('password')
                ? GoogleCloudConnectorsV1Secret.fromJson(
                  json_['password'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        username: json_['username'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (password != null) 'password': password!,
    if (username != null) 'username': username!,
  };
}

/// Billing config for the connection.
typedef GoogleCloudConnectorsV1BillingConfig = $BillingConfig;

/// ConfigVariable represents a configuration variable present in a Connection.
///
/// or AuthConfig.
class GoogleCloudConnectorsV1ConfigVariable {
  /// Value is a bool.
  core.bool? boolValue;

  /// Value is a Encryption Key.
  GoogleCloudConnectorsV1EncryptionKey? encryptionKeyValue;

  /// Value is an integer
  core.String? intValue;

  /// Key of the config variable.
  ///
  /// Optional.
  core.String? key;

  /// Value is a secret.
  GoogleCloudConnectorsV1Secret? secretValue;

  /// Value is a string.
  core.String? stringValue;

  GoogleCloudConnectorsV1ConfigVariable({
    this.boolValue,
    this.encryptionKeyValue,
    this.intValue,
    this.key,
    this.secretValue,
    this.stringValue,
  });

  GoogleCloudConnectorsV1ConfigVariable.fromJson(core.Map json_)
    : this(
        boolValue: json_['boolValue'] as core.bool?,
        encryptionKeyValue:
            json_.containsKey('encryptionKeyValue')
                ? GoogleCloudConnectorsV1EncryptionKey.fromJson(
                  json_['encryptionKeyValue']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        intValue: json_['intValue'] as core.String?,
        key: json_['key'] as core.String?,
        secretValue:
            json_.containsKey('secretValue')
                ? GoogleCloudConnectorsV1Secret.fromJson(
                  json_['secretValue'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        stringValue: json_['stringValue'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (boolValue != null) 'boolValue': boolValue!,
    if (encryptionKeyValue != null) 'encryptionKeyValue': encryptionKeyValue!,
    if (intValue != null) 'intValue': intValue!,
    if (key != null) 'key': key!,
    if (secretValue != null) 'secretValue': secretValue!,
    if (stringValue != null) 'stringValue': stringValue!,
  };
}

/// Connection represents an instance of connector.
class GoogleCloudConnectorsV1Connection {
  /// Async operations enabled for the connection.
  ///
  /// If Async Operations is enabled, Connection allows the customers to
  /// initiate async long running operations using the actions API.
  ///
  /// Optional.
  core.bool? asyncOperationsEnabled;

  /// Configuration for establishing the connection's authentication with an
  /// external system.
  ///
  /// Optional.
  GoogleCloudConnectorsV1AuthConfig? authConfig;

  /// Auth override enabled for the connection.
  ///
  /// If Auth Override is enabled, Connection allows the backend service auth to
  /// be overridden in the entities/actions API.
  ///
  /// Optional.
  core.bool? authOverrideEnabled;

  /// Billing config for the connection.
  ///
  /// Output only.
  GoogleCloudConnectorsV1BillingConfig? billingConfig;

  /// Configuration for configuring the connection with an external system.
  ///
  /// Optional.
  core.List<GoogleCloudConnectorsV1ConfigVariable>? configVariables;

  /// Connection revision.
  ///
  /// This field is only updated when the connection is created or updated by
  /// User.
  ///
  /// Output only.
  core.String? connectionRevision;

  /// Connector version on which the connection is created.
  ///
  /// The format is: projects / * /locations / * /providers / * /connectors / *
  /// /versions / * Only global location is supported for ConnectorVersion
  /// resource.
  ///
  /// Required.
  core.String? connectorVersion;

  /// Infra configs supported by Connector Version.
  ///
  /// Output only.
  GoogleCloudConnectorsV1ConnectorVersionInfraConfig?
  connectorVersionInfraConfig;

  /// Flag to mark the version indicating the launch stage.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "LAUNCH_STAGE_UNSPECIFIED" : LAUNCH_STAGE_UNSPECIFIED.
  /// - "PREVIEW" : PREVIEW.
  /// - "GA" : GA.
  /// - "DEPRECATED" : DEPRECATED.
  /// - "TEST" : TEST.
  /// - "PRIVATE_PREVIEW" : PRIVATE_PREVIEW.
  core.String? connectorVersionLaunchStage;

  /// Created time.
  ///
  /// Output only.
  core.String? createTime;

  /// Description of the resource.
  ///
  /// Optional.
  core.String? description;

  /// Configuration of the Connector's destination.
  ///
  /// Only accepted for Connectors that accepts user defined destination(s).
  ///
  /// Optional.
  core.List<GoogleCloudConnectorsV1DestinationConfig>? destinationConfigs;

  /// GCR location where the envoy image is stored.
  ///
  /// formatted like: gcr.io/{bucketName}/{imageName}
  ///
  /// Output only.
  core.String? envoyImageLocation;

  /// Additional Oauth2.0 Auth config for EUA.
  ///
  /// If the connection is configured using non-OAuth authentication but OAuth
  /// needs to be used for EUA, this field can be populated with the OAuth
  /// config. This should be a OAuth2AuthCodeFlow Auth type only.
  ///
  /// Optional.
  GoogleCloudConnectorsV1AuthConfig? euaOauthAuthConfig;

  /// Eventing config of a connection
  ///
  /// Optional.
  GoogleCloudConnectorsV1EventingConfig? eventingConfig;

  /// Eventing enablement type.
  ///
  /// Will be nil if eventing is not enabled.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "EVENTING_ENABLEMENT_TYPE_UNSPECIFIED" : Eventing Enablement Type
  /// Unspecifeied.
  /// - "EVENTING_AND_CONNECTION" : Both connection and eventing.
  /// - "ONLY_EVENTING" : Only Eventing.
  core.String? eventingEnablementType;

  /// Eventing Runtime Data.
  ///
  /// Output only.
  GoogleCloudConnectorsV1EventingRuntimeData? eventingRuntimeData;

  /// Fallback on admin credentials for the connection.
  ///
  /// If this both auth_override_enabled and fallback_on_admin_credentials are
  /// set to true, the connection will use the admin credentials if the dynamic
  /// auth header is not present during auth override.
  ///
  /// Optional.
  core.bool? fallbackOnAdminCredentials;

  /// The name of the Hostname of the Service Directory service with TLS.
  ///
  /// Output only.
  core.String? host;

  /// GCR location where the runtime image is stored.
  ///
  /// formatted like: gcr.io/{bucketName}/{imageName}
  ///
  /// Output only.
  core.String? imageLocation;

  /// Is trusted tester program enabled for the project.
  ///
  /// Output only.
  core.bool? isTrustedTester;

  /// Resource labels to represent user-provided metadata.
  ///
  /// Refer to cloud documentation on labels for more details.
  /// https://cloud.google.com/compute/docs/labeling-resources
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// Configuration that indicates whether or not the Connection can be edited.
  ///
  /// Optional.
  GoogleCloudConnectorsV1LockConfig? lockConfig;

  /// Log configuration for the connection.
  ///
  /// Optional.
  GoogleCloudConnectorsV1LogConfig? logConfig;

  /// Resource name of the Connection.
  ///
  /// Format: projects/{project}/locations/{location}/connections/{connection}
  ///
  /// Output only.
  core.String? name;

  /// Node configuration for the connection.
  ///
  /// Optional.
  GoogleCloudConnectorsV1NodeConfig? nodeConfig;

  /// Service account needed for runtime plane to access Google Cloud resources.
  ///
  /// Optional.
  core.String? serviceAccount;

  /// The name of the Service Directory service name.
  ///
  /// Used for Private Harpoon to resolve the ILB address. e.g.
  /// "projects/cloud-connectors-e2e-testing/locations/us-central1/namespaces/istio-system/services/istio-ingressgateway-connectors"
  ///
  /// Output only.
  core.String? serviceDirectory;

  /// Ssl config of a connection
  ///
  /// Optional.
  GoogleCloudConnectorsV1SslConfig? sslConfig;

  /// Current status of the connection.
  ///
  /// Output only.
  GoogleCloudConnectorsV1ConnectionStatus? status;

  /// This subscription type enum states the subscription type of the project.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "SUBSCRIPTION_TYPE_UNSPECIFIED" : Unspecified subscription type.
  /// - "PAY_G" : PayG subscription.
  /// - "PAID" : Paid Subscription.
  core.String? subscriptionType;

  /// Suspended indicates if a user has suspended a connection or not.
  ///
  /// Optional.
  core.bool? suspended;

  /// The name of the Service Directory service with TLS.
  ///
  /// Output only.
  core.String? tlsServiceDirectory;

  /// Traffic shaping configuration for the connection.
  ///
  /// Optional.
  core.List<GoogleCloudConnectorsV1TrafficShapingConfig>? trafficShapingConfigs;

  /// Updated time.
  ///
  /// Output only.
  core.String? updateTime;

  GoogleCloudConnectorsV1Connection({
    this.asyncOperationsEnabled,
    this.authConfig,
    this.authOverrideEnabled,
    this.billingConfig,
    this.configVariables,
    this.connectionRevision,
    this.connectorVersion,
    this.connectorVersionInfraConfig,
    this.connectorVersionLaunchStage,
    this.createTime,
    this.description,
    this.destinationConfigs,
    this.envoyImageLocation,
    this.euaOauthAuthConfig,
    this.eventingConfig,
    this.eventingEnablementType,
    this.eventingRuntimeData,
    this.fallbackOnAdminCredentials,
    this.host,
    this.imageLocation,
    this.isTrustedTester,
    this.labels,
    this.lockConfig,
    this.logConfig,
    this.name,
    this.nodeConfig,
    this.serviceAccount,
    this.serviceDirectory,
    this.sslConfig,
    this.status,
    this.subscriptionType,
    this.suspended,
    this.tlsServiceDirectory,
    this.trafficShapingConfigs,
    this.updateTime,
  });

  GoogleCloudConnectorsV1Connection.fromJson(core.Map json_)
    : this(
        asyncOperationsEnabled: json_['asyncOperationsEnabled'] as core.bool?,
        authConfig:
            json_.containsKey('authConfig')
                ? GoogleCloudConnectorsV1AuthConfig.fromJson(
                  json_['authConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        authOverrideEnabled: json_['authOverrideEnabled'] as core.bool?,
        billingConfig:
            json_.containsKey('billingConfig')
                ? GoogleCloudConnectorsV1BillingConfig.fromJson(
                  json_['billingConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        configVariables:
            (json_['configVariables'] as core.List?)
                ?.map(
                  (value) => GoogleCloudConnectorsV1ConfigVariable.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        connectionRevision: json_['connectionRevision'] as core.String?,
        connectorVersion: json_['connectorVersion'] as core.String?,
        connectorVersionInfraConfig:
            json_.containsKey('connectorVersionInfraConfig')
                ? GoogleCloudConnectorsV1ConnectorVersionInfraConfig.fromJson(
                  json_['connectorVersionInfraConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        connectorVersionLaunchStage:
            json_['connectorVersionLaunchStage'] as core.String?,
        createTime: json_['createTime'] as core.String?,
        description: json_['description'] as core.String?,
        destinationConfigs:
            (json_['destinationConfigs'] as core.List?)
                ?.map(
                  (value) => GoogleCloudConnectorsV1DestinationConfig.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        envoyImageLocation: json_['envoyImageLocation'] as core.String?,
        euaOauthAuthConfig:
            json_.containsKey('euaOauthAuthConfig')
                ? GoogleCloudConnectorsV1AuthConfig.fromJson(
                  json_['euaOauthAuthConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        eventingConfig:
            json_.containsKey('eventingConfig')
                ? GoogleCloudConnectorsV1EventingConfig.fromJson(
                  json_['eventingConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        eventingEnablementType: json_['eventingEnablementType'] as core.String?,
        eventingRuntimeData:
            json_.containsKey('eventingRuntimeData')
                ? GoogleCloudConnectorsV1EventingRuntimeData.fromJson(
                  json_['eventingRuntimeData']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        fallbackOnAdminCredentials:
            json_['fallbackOnAdminCredentials'] as core.bool?,
        host: json_['host'] as core.String?,
        imageLocation: json_['imageLocation'] as core.String?,
        isTrustedTester: json_['isTrustedTester'] as core.bool?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        lockConfig:
            json_.containsKey('lockConfig')
                ? GoogleCloudConnectorsV1LockConfig.fromJson(
                  json_['lockConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        logConfig:
            json_.containsKey('logConfig')
                ? GoogleCloudConnectorsV1LogConfig.fromJson(
                  json_['logConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        name: json_['name'] as core.String?,
        nodeConfig:
            json_.containsKey('nodeConfig')
                ? GoogleCloudConnectorsV1NodeConfig.fromJson(
                  json_['nodeConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        serviceAccount: json_['serviceAccount'] as core.String?,
        serviceDirectory: json_['serviceDirectory'] as core.String?,
        sslConfig:
            json_.containsKey('sslConfig')
                ? GoogleCloudConnectorsV1SslConfig.fromJson(
                  json_['sslConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        status:
            json_.containsKey('status')
                ? GoogleCloudConnectorsV1ConnectionStatus.fromJson(
                  json_['status'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        subscriptionType: json_['subscriptionType'] as core.String?,
        suspended: json_['suspended'] as core.bool?,
        tlsServiceDirectory: json_['tlsServiceDirectory'] as core.String?,
        trafficShapingConfigs:
            (json_['trafficShapingConfigs'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudConnectorsV1TrafficShapingConfig.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (asyncOperationsEnabled != null)
      'asyncOperationsEnabled': asyncOperationsEnabled!,
    if (authConfig != null) 'authConfig': authConfig!,
    if (authOverrideEnabled != null)
      'authOverrideEnabled': authOverrideEnabled!,
    if (billingConfig != null) 'billingConfig': billingConfig!,
    if (configVariables != null) 'configVariables': configVariables!,
    if (connectionRevision != null) 'connectionRevision': connectionRevision!,
    if (connectorVersion != null) 'connectorVersion': connectorVersion!,
    if (connectorVersionInfraConfig != null)
      'connectorVersionInfraConfig': connectorVersionInfraConfig!,
    if (connectorVersionLaunchStage != null)
      'connectorVersionLaunchStage': connectorVersionLaunchStage!,
    if (createTime != null) 'createTime': createTime!,
    if (description != null) 'description': description!,
    if (destinationConfigs != null) 'destinationConfigs': destinationConfigs!,
    if (envoyImageLocation != null) 'envoyImageLocation': envoyImageLocation!,
    if (euaOauthAuthConfig != null) 'euaOauthAuthConfig': euaOauthAuthConfig!,
    if (eventingConfig != null) 'eventingConfig': eventingConfig!,
    if (eventingEnablementType != null)
      'eventingEnablementType': eventingEnablementType!,
    if (eventingRuntimeData != null)
      'eventingRuntimeData': eventingRuntimeData!,
    if (fallbackOnAdminCredentials != null)
      'fallbackOnAdminCredentials': fallbackOnAdminCredentials!,
    if (host != null) 'host': host!,
    if (imageLocation != null) 'imageLocation': imageLocation!,
    if (isTrustedTester != null) 'isTrustedTester': isTrustedTester!,
    if (labels != null) 'labels': labels!,
    if (lockConfig != null) 'lockConfig': lockConfig!,
    if (logConfig != null) 'logConfig': logConfig!,
    if (name != null) 'name': name!,
    if (nodeConfig != null) 'nodeConfig': nodeConfig!,
    if (serviceAccount != null) 'serviceAccount': serviceAccount!,
    if (serviceDirectory != null) 'serviceDirectory': serviceDirectory!,
    if (sslConfig != null) 'sslConfig': sslConfig!,
    if (status != null) 'status': status!,
    if (subscriptionType != null) 'subscriptionType': subscriptionType!,
    if (suspended != null) 'suspended': suspended!,
    if (tlsServiceDirectory != null)
      'tlsServiceDirectory': tlsServiceDirectory!,
    if (trafficShapingConfigs != null)
      'trafficShapingConfigs': trafficShapingConfigs!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// ConnectionStatus indicates the state of the connection.
typedef GoogleCloudConnectorsV1ConnectionStatus = $ConnectionStatus;

/// This configuration provides infra configs like rate limit threshold which
/// need to be configurable for every connector version
class GoogleCloudConnectorsV1ConnectorVersionInfraConfig {
  /// The window used for ratelimiting runtime requests to connections.
  ///
  /// Output only.
  core.String? connectionRatelimitWindowSeconds;

  /// Indicates whether connector is deployed on GKE/CloudRun
  ///
  /// Output only.
  /// Possible string values are:
  /// - "DEPLOYMENT_MODEL_UNSPECIFIED" : Deployment model is not specified.
  /// - "GKE_MST" : Default model gke mst.
  /// - "CLOUD_RUN_MST" : Cloud run mst.
  core.String? deploymentModel;

  /// Status of the deployment model migration.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "DEPLOYMENT_MODEL_MIGRATION_STATE_UNSPECIFIED" : Deployment model
  /// migration state is not specified.
  /// - "IN_PROGRESS" : Deployment model migration is in progress.
  /// - "COMPLETED" : Deployment model migration is completed.
  /// - "ROLLEDBACK" : Deployment model migration rolledback.
  /// - "ROLLBACK_IN_PROGRESS" : Deployment model migration rollback in
  /// progress.
  core.String? deploymentModelMigrationState;

  /// HPA autoscaling config.
  ///
  /// Output only.
  GoogleCloudConnectorsV1HPAConfig? hpaConfig;

  /// Max QPS supported for internal requests originating from Connd.
  ///
  /// Output only.
  core.String? internalclientRatelimitThreshold;

  /// Max instance request concurrency.
  ///
  /// Output only.
  core.int? maxInstanceRequestConcurrency;

  /// Max QPS supported by the connector version before throttling of requests.
  ///
  /// Output only.
  core.String? ratelimitThreshold;

  /// System resource limits.
  ///
  /// Output only.
  GoogleCloudConnectorsV1ResourceLimits? resourceLimits;

  /// System resource requests.
  ///
  /// Output only.
  GoogleCloudConnectorsV1ResourceRequests? resourceRequests;

  /// The name of shared connector deployment.
  ///
  /// Output only.
  core.String? sharedDeployment;

  /// Status of the TLS migration.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "TLS_MIGRATION_STATE_UNSPECIFIED" : TLS migration state is not
  /// specified.
  /// - "TLS_MIGRATION_NOT_STARTED" : TLS migration is in progress.
  /// - "TLS_MIGRATION_COMPLETED" : TLS migration is completed.
  core.String? tlsMigrationState;

  GoogleCloudConnectorsV1ConnectorVersionInfraConfig({
    this.connectionRatelimitWindowSeconds,
    this.deploymentModel,
    this.deploymentModelMigrationState,
    this.hpaConfig,
    this.internalclientRatelimitThreshold,
    this.maxInstanceRequestConcurrency,
    this.ratelimitThreshold,
    this.resourceLimits,
    this.resourceRequests,
    this.sharedDeployment,
    this.tlsMigrationState,
  });

  GoogleCloudConnectorsV1ConnectorVersionInfraConfig.fromJson(core.Map json_)
    : this(
        connectionRatelimitWindowSeconds:
            json_['connectionRatelimitWindowSeconds'] as core.String?,
        deploymentModel: json_['deploymentModel'] as core.String?,
        deploymentModelMigrationState:
            json_['deploymentModelMigrationState'] as core.String?,
        hpaConfig:
            json_.containsKey('hpaConfig')
                ? GoogleCloudConnectorsV1HPAConfig.fromJson(
                  json_['hpaConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        internalclientRatelimitThreshold:
            json_['internalclientRatelimitThreshold'] as core.String?,
        maxInstanceRequestConcurrency:
            json_['maxInstanceRequestConcurrency'] as core.int?,
        ratelimitThreshold: json_['ratelimitThreshold'] as core.String?,
        resourceLimits:
            json_.containsKey('resourceLimits')
                ? GoogleCloudConnectorsV1ResourceLimits.fromJson(
                  json_['resourceLimits']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        resourceRequests:
            json_.containsKey('resourceRequests')
                ? GoogleCloudConnectorsV1ResourceRequests.fromJson(
                  json_['resourceRequests']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        sharedDeployment: json_['sharedDeployment'] as core.String?,
        tlsMigrationState: json_['tlsMigrationState'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (connectionRatelimitWindowSeconds != null)
      'connectionRatelimitWindowSeconds': connectionRatelimitWindowSeconds!,
    if (deploymentModel != null) 'deploymentModel': deploymentModel!,
    if (deploymentModelMigrationState != null)
      'deploymentModelMigrationState': deploymentModelMigrationState!,
    if (hpaConfig != null) 'hpaConfig': hpaConfig!,
    if (internalclientRatelimitThreshold != null)
      'internalclientRatelimitThreshold': internalclientRatelimitThreshold!,
    if (maxInstanceRequestConcurrency != null)
      'maxInstanceRequestConcurrency': maxInstanceRequestConcurrency!,
    if (ratelimitThreshold != null) 'ratelimitThreshold': ratelimitThreshold!,
    if (resourceLimits != null) 'resourceLimits': resourceLimits!,
    if (resourceRequests != null) 'resourceRequests': resourceRequests!,
    if (sharedDeployment != null) 'sharedDeployment': sharedDeployment!,
    if (tlsMigrationState != null) 'tlsMigrationState': tlsMigrationState!,
  };
}

typedef GoogleCloudConnectorsV1Destination = $Destination;

/// Define the Connectors target endpoint.
class GoogleCloudConnectorsV1DestinationConfig {
  /// The destinations for the key.
  core.List<GoogleCloudConnectorsV1Destination>? destinations;

  /// The key is the destination identifier that is supported by the Connector.
  core.String? key;

  GoogleCloudConnectorsV1DestinationConfig({this.destinations, this.key});

  GoogleCloudConnectorsV1DestinationConfig.fromJson(core.Map json_)
    : this(
        destinations:
            (json_['destinations'] as core.List?)
                ?.map(
                  (value) => GoogleCloudConnectorsV1Destination.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        key: json_['key'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (destinations != null) 'destinations': destinations!,
    if (key != null) 'key': key!,
  };
}

/// Encryption Key value.
typedef GoogleCloudConnectorsV1EncryptionKey = $EncryptionKey;

/// Data enrichment configuration.
typedef GoogleCloudConnectorsV1EnrichmentConfig = $EnrichmentConfig;

/// Eventing Configuration of a connection next: 19
class GoogleCloudConnectorsV1EventingConfig {
  /// Additional eventing related field values
  ///
  /// Optional.
  core.List<GoogleCloudConnectorsV1ConfigVariable>? additionalVariables;

  /// Auth details for the webhook adapter.
  ///
  /// Optional.
  GoogleCloudConnectorsV1AuthConfig? authConfig;

  /// Dead letter configuration for eventing of a connection.
  ///
  /// Optional.
  GoogleCloudConnectorsV1EventingConfigDeadLetterConfig? deadLetterConfig;

  /// Data enrichment configuration.
  ///
  /// Optional.
  GoogleCloudConnectorsV1EnrichmentConfig? enrichmentConfig;

  /// Enrichment Enabled.
  ///
  /// Optional.
  core.bool? enrichmentEnabled;

  /// Ingress endpoint of the event listener.
  ///
  /// This is used only when private connectivity is enabled.
  ///
  /// Optional.
  core.String? eventsListenerIngressEndpoint;

  /// Auth details for the event listener.
  ///
  /// Optional.
  GoogleCloudConnectorsV1AuthConfig? listenerAuthConfig;

  /// List of projects to be allowlisted for the service attachment created in
  /// the tenant project for eventing ingress.
  ///
  /// Optional.
  core.List<core.String>? privateConnectivityAllowlistedProjects;

  /// Private Connectivity Enabled.
  ///
  /// Optional.
  core.bool? privateConnectivityEnabled;

  /// Proxy for Eventing auto-registration.
  ///
  /// Optional.
  GoogleCloudConnectorsV1DestinationConfig? proxyDestinationConfig;

  /// Registration endpoint for auto registration.
  ///
  /// Optional.
  GoogleCloudConnectorsV1DestinationConfig? registrationDestinationConfig;

  /// Ssl config of a connection
  ///
  /// Optional.
  GoogleCloudConnectorsV1SslConfig? sslConfig;

  GoogleCloudConnectorsV1EventingConfig({
    this.additionalVariables,
    this.authConfig,
    this.deadLetterConfig,
    this.enrichmentConfig,
    this.enrichmentEnabled,
    this.eventsListenerIngressEndpoint,
    this.listenerAuthConfig,
    this.privateConnectivityAllowlistedProjects,
    this.privateConnectivityEnabled,
    this.proxyDestinationConfig,
    this.registrationDestinationConfig,
    this.sslConfig,
  });

  GoogleCloudConnectorsV1EventingConfig.fromJson(core.Map json_)
    : this(
        additionalVariables:
            (json_['additionalVariables'] as core.List?)
                ?.map(
                  (value) => GoogleCloudConnectorsV1ConfigVariable.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        authConfig:
            json_.containsKey('authConfig')
                ? GoogleCloudConnectorsV1AuthConfig.fromJson(
                  json_['authConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        deadLetterConfig:
            json_.containsKey('deadLetterConfig')
                ? GoogleCloudConnectorsV1EventingConfigDeadLetterConfig.fromJson(
                  json_['deadLetterConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        enrichmentConfig:
            json_.containsKey('enrichmentConfig')
                ? GoogleCloudConnectorsV1EnrichmentConfig.fromJson(
                  json_['enrichmentConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        enrichmentEnabled: json_['enrichmentEnabled'] as core.bool?,
        eventsListenerIngressEndpoint:
            json_['eventsListenerIngressEndpoint'] as core.String?,
        listenerAuthConfig:
            json_.containsKey('listenerAuthConfig')
                ? GoogleCloudConnectorsV1AuthConfig.fromJson(
                  json_['listenerAuthConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        privateConnectivityAllowlistedProjects:
            (json_['privateConnectivityAllowlistedProjects'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        privateConnectivityEnabled:
            json_['privateConnectivityEnabled'] as core.bool?,
        proxyDestinationConfig:
            json_.containsKey('proxyDestinationConfig')
                ? GoogleCloudConnectorsV1DestinationConfig.fromJson(
                  json_['proxyDestinationConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        registrationDestinationConfig:
            json_.containsKey('registrationDestinationConfig')
                ? GoogleCloudConnectorsV1DestinationConfig.fromJson(
                  json_['registrationDestinationConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        sslConfig:
            json_.containsKey('sslConfig')
                ? GoogleCloudConnectorsV1SslConfig.fromJson(
                  json_['sslConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (additionalVariables != null)
      'additionalVariables': additionalVariables!,
    if (authConfig != null) 'authConfig': authConfig!,
    if (deadLetterConfig != null) 'deadLetterConfig': deadLetterConfig!,
    if (enrichmentConfig != null) 'enrichmentConfig': enrichmentConfig!,
    if (enrichmentEnabled != null) 'enrichmentEnabled': enrichmentEnabled!,
    if (eventsListenerIngressEndpoint != null)
      'eventsListenerIngressEndpoint': eventsListenerIngressEndpoint!,
    if (listenerAuthConfig != null) 'listenerAuthConfig': listenerAuthConfig!,
    if (privateConnectivityAllowlistedProjects != null)
      'privateConnectivityAllowlistedProjects':
          privateConnectivityAllowlistedProjects!,
    if (privateConnectivityEnabled != null)
      'privateConnectivityEnabled': privateConnectivityEnabled!,
    if (proxyDestinationConfig != null)
      'proxyDestinationConfig': proxyDestinationConfig!,
    if (registrationDestinationConfig != null)
      'registrationDestinationConfig': registrationDestinationConfig!,
    if (sslConfig != null) 'sslConfig': sslConfig!,
  };
}

/// Dead Letter configuration details provided by the user.
typedef GoogleCloudConnectorsV1EventingConfigDeadLetterConfig =
    $DeadLetterConfig;

/// Eventing runtime data has the details related to eventing managed by the
/// system.
class GoogleCloudConnectorsV1EventingRuntimeData {
  /// Events listener endpoint.
  ///
  /// The value will populated after provisioning the events listener.
  ///
  /// Output only.
  core.String? eventsListenerEndpoint;

  /// Events listener PSC Service attachment.
  ///
  /// The value will be populated after provisioning the events listener with
  /// private connectivity enabled.
  ///
  /// Output only.
  core.String? eventsListenerPscSa;

  /// Current status of eventing.
  ///
  /// Output only.
  GoogleCloudConnectorsV1EventingStatus? status;

  /// Webhook data.
  ///
  /// Output only.
  GoogleCloudConnectorsV1EventingRuntimeDataWebhookData? webhookData;

  /// Webhook subscriptions.
  ///
  /// Output only.
  GoogleCloudConnectorsV1EventingRuntimeDataWebhookSubscriptions?
  webhookSubscriptions;

  GoogleCloudConnectorsV1EventingRuntimeData({
    this.eventsListenerEndpoint,
    this.eventsListenerPscSa,
    this.status,
    this.webhookData,
    this.webhookSubscriptions,
  });

  GoogleCloudConnectorsV1EventingRuntimeData.fromJson(core.Map json_)
    : this(
        eventsListenerEndpoint: json_['eventsListenerEndpoint'] as core.String?,
        eventsListenerPscSa: json_['eventsListenerPscSa'] as core.String?,
        status:
            json_.containsKey('status')
                ? GoogleCloudConnectorsV1EventingStatus.fromJson(
                  json_['status'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        webhookData:
            json_.containsKey('webhookData')
                ? GoogleCloudConnectorsV1EventingRuntimeDataWebhookData.fromJson(
                  json_['webhookData'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        webhookSubscriptions:
            json_.containsKey('webhookSubscriptions')
                ? GoogleCloudConnectorsV1EventingRuntimeDataWebhookSubscriptions.fromJson(
                  json_['webhookSubscriptions']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (eventsListenerEndpoint != null)
      'eventsListenerEndpoint': eventsListenerEndpoint!,
    if (eventsListenerPscSa != null)
      'eventsListenerPscSa': eventsListenerPscSa!,
    if (status != null) 'status': status!,
    if (webhookData != null) 'webhookData': webhookData!,
    if (webhookSubscriptions != null)
      'webhookSubscriptions': webhookSubscriptions!,
  };
}

/// WebhookData has details of webhook configuration.
class GoogleCloudConnectorsV1EventingRuntimeDataWebhookData {
  /// Additional webhook related field values.
  ///
  /// Output only.
  core.List<GoogleCloudConnectorsV1ConfigVariable>? additionalVariables;

  /// Timestamp when the webhook was created.
  ///
  /// Output only.
  core.String? createTime;

  /// ID to uniquely identify webhook.
  ///
  /// Output only.
  core.String? id;

  /// Name of the Webhook
  ///
  /// Output only.
  core.String? name;

  /// Next webhook refresh time.
  ///
  /// Will be null if refresh is not supported.
  ///
  /// Output only.
  core.String? nextRefreshTime;

  /// Timestamp when the webhook was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  GoogleCloudConnectorsV1EventingRuntimeDataWebhookData({
    this.additionalVariables,
    this.createTime,
    this.id,
    this.name,
    this.nextRefreshTime,
    this.updateTime,
  });

  GoogleCloudConnectorsV1EventingRuntimeDataWebhookData.fromJson(core.Map json_)
    : this(
        additionalVariables:
            (json_['additionalVariables'] as core.List?)
                ?.map(
                  (value) => GoogleCloudConnectorsV1ConfigVariable.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        createTime: json_['createTime'] as core.String?,
        id: json_['id'] as core.String?,
        name: json_['name'] as core.String?,
        nextRefreshTime: json_['nextRefreshTime'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (additionalVariables != null)
      'additionalVariables': additionalVariables!,
    if (createTime != null) 'createTime': createTime!,
    if (id != null) 'id': id!,
    if (name != null) 'name': name!,
    if (nextRefreshTime != null) 'nextRefreshTime': nextRefreshTime!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// WebhookSubscriptions has details of webhook subscriptions.
class GoogleCloudConnectorsV1EventingRuntimeDataWebhookSubscriptions {
  /// Webhook data.
  ///
  /// Output only.
  core.List<GoogleCloudConnectorsV1EventingRuntimeDataWebhookData>? webhookData;

  GoogleCloudConnectorsV1EventingRuntimeDataWebhookSubscriptions({
    this.webhookData,
  });

  GoogleCloudConnectorsV1EventingRuntimeDataWebhookSubscriptions.fromJson(
    core.Map json_,
  ) : this(
        webhookData:
            (json_['webhookData'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudConnectorsV1EventingRuntimeDataWebhookData.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (webhookData != null) 'webhookData': webhookData!,
  };
}

/// EventingStatus indicates the state of eventing.
typedef GoogleCloudConnectorsV1EventingStatus = $EventingStatus;

/// Autoscaling config for connector deployment system metrics.
typedef GoogleCloudConnectorsV1HPAConfig = $HPAConfig;

/// Determines whether or no a connection is locked.
///
/// If locked, a reason must be specified.
typedef GoogleCloudConnectorsV1LockConfig = $LockConfig;

/// Log configuration for the connection.
typedef GoogleCloudConnectorsV1LogConfig = $LogConfig;

/// Node configuration for the connection.
typedef GoogleCloudConnectorsV1NodeConfig = $NodeConfig;

/// Resource limits defined for connection pods of a given connector type.
typedef GoogleCloudConnectorsV1ResourceLimits = $ResourceLimits;

/// Resource requests defined for connection pods of a given connector type.
typedef GoogleCloudConnectorsV1ResourceRequests = $ResourceRequests;

/// Secret provides a reference to entries in Secret Manager.
typedef GoogleCloudConnectorsV1Secret = $Secret;

/// SSL Configuration of a connection
class GoogleCloudConnectorsV1SslConfig {
  /// Additional SSL related field values
  ///
  /// Optional.
  core.List<GoogleCloudConnectorsV1ConfigVariable>? additionalVariables;

  /// Type of Client Cert (PEM/JKS/..
  ///
  /// etc.)
  ///
  /// Optional.
  /// Possible string values are:
  /// - "CERT_TYPE_UNSPECIFIED" : Cert type unspecified.
  /// - "PEM" : Privacy Enhanced Mail (PEM) Type
  core.String? clientCertType;

  /// Client Certificate
  ///
  /// Optional.
  GoogleCloudConnectorsV1Secret? clientCertificate;

  /// Client Private Key
  ///
  /// Optional.
  GoogleCloudConnectorsV1Secret? clientPrivateKey;

  /// Secret containing the passphrase protecting the Client Private Key
  ///
  /// Optional.
  GoogleCloudConnectorsV1Secret? clientPrivateKeyPass;

  /// Private Server Certificate.
  ///
  /// Needs to be specified if trust model is `PRIVATE`.
  ///
  /// Optional.
  GoogleCloudConnectorsV1Secret? privateServerCertificate;

  /// Type of Server Cert (PEM/JKS/..
  ///
  /// etc.)
  ///
  /// Optional.
  /// Possible string values are:
  /// - "CERT_TYPE_UNSPECIFIED" : Cert type unspecified.
  /// - "PEM" : Privacy Enhanced Mail (PEM) Type
  core.String? serverCertType;

  /// Trust Model of the SSL connection
  ///
  /// Optional.
  /// Possible string values are:
  /// - "PUBLIC" : Public Trust Model. Takes the Default Java trust store.
  /// - "PRIVATE" : Private Trust Model. Takes custom/private trust store.
  /// - "INSECURE" : Insecure Trust Model. Accept all certificates.
  core.String? trustModel;

  /// Controls the ssl type for the given connector version.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "SSL_TYPE_UNSPECIFIED" : No SSL configuration required.
  /// - "TLS" : TLS Handshake
  /// - "MTLS" : mutual TLS (MTLS) Handshake
  core.String? type;

  /// Bool for enabling SSL
  ///
  /// Optional.
  core.bool? useSsl;

  GoogleCloudConnectorsV1SslConfig({
    this.additionalVariables,
    this.clientCertType,
    this.clientCertificate,
    this.clientPrivateKey,
    this.clientPrivateKeyPass,
    this.privateServerCertificate,
    this.serverCertType,
    this.trustModel,
    this.type,
    this.useSsl,
  });

  GoogleCloudConnectorsV1SslConfig.fromJson(core.Map json_)
    : this(
        additionalVariables:
            (json_['additionalVariables'] as core.List?)
                ?.map(
                  (value) => GoogleCloudConnectorsV1ConfigVariable.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        clientCertType: json_['clientCertType'] as core.String?,
        clientCertificate:
            json_.containsKey('clientCertificate')
                ? GoogleCloudConnectorsV1Secret.fromJson(
                  json_['clientCertificate']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        clientPrivateKey:
            json_.containsKey('clientPrivateKey')
                ? GoogleCloudConnectorsV1Secret.fromJson(
                  json_['clientPrivateKey']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        clientPrivateKeyPass:
            json_.containsKey('clientPrivateKeyPass')
                ? GoogleCloudConnectorsV1Secret.fromJson(
                  json_['clientPrivateKeyPass']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        privateServerCertificate:
            json_.containsKey('privateServerCertificate')
                ? GoogleCloudConnectorsV1Secret.fromJson(
                  json_['privateServerCertificate']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        serverCertType: json_['serverCertType'] as core.String?,
        trustModel: json_['trustModel'] as core.String?,
        type: json_['type'] as core.String?,
        useSsl: json_['useSsl'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (additionalVariables != null)
      'additionalVariables': additionalVariables!,
    if (clientCertType != null) 'clientCertType': clientCertType!,
    if (clientCertificate != null) 'clientCertificate': clientCertificate!,
    if (clientPrivateKey != null) 'clientPrivateKey': clientPrivateKey!,
    if (clientPrivateKeyPass != null)
      'clientPrivateKeyPass': clientPrivateKeyPass!,
    if (privateServerCertificate != null)
      'privateServerCertificate': privateServerCertificate!,
    if (serverCertType != null) 'serverCertType': serverCertType!,
    if (trustModel != null) 'trustModel': trustModel!,
    if (type != null) 'type': type!,
    if (useSsl != null) 'useSsl': useSsl!,
  };
}

/// * TrafficShapingConfig defines the configuration for shaping API traffic by
/// specifying a quota limit and the duration over which this limit is enforced.
///
/// This configuration helps to control and manage the rate at which API calls
/// are made on the client side, preventing service overload on the backend. For
/// example: - if the quota limit is 100 calls per 10 seconds, then the message
/// would be: { quota_limit: 100 duration: { seconds: 10 } } - if the quota
/// limit is 100 calls per 5 minutes, then the message would be: { quota_limit:
/// 100 duration: { seconds: 300 } } - if the quota limit is 10000 calls per
/// day, then the message would be: { quota_limit: 10000 duration: { seconds:
/// 86400 } and so on.
typedef GoogleCloudConnectorsV1TrafficShapingConfig = $TrafficShapingConfig;

/// The access token represents the authorization of a specific application to
/// access specific parts of a user’s data.
class GoogleCloudIntegrationsV1alphaAccessToken {
  /// The access token encapsulating the security identity of a process or
  /// thread.
  core.String? accessToken;

  /// The approximate time until the access token retrieved is valid.
  ///
  /// Required.
  core.String? accessTokenExpireTime;

  /// If the access token will expire, use the refresh token to obtain another
  /// access token.
  core.String? refreshToken;

  /// The approximate time until the refresh token retrieved is valid.
  core.String? refreshTokenExpireTime;

  /// Only support "bearer" token in v1 as bearer token is the predominant type
  /// used with OAuth 2.0.
  core.String? tokenType;

  GoogleCloudIntegrationsV1alphaAccessToken({
    this.accessToken,
    this.accessTokenExpireTime,
    this.refreshToken,
    this.refreshTokenExpireTime,
    this.tokenType,
  });

  GoogleCloudIntegrationsV1alphaAccessToken.fromJson(core.Map json_)
    : this(
        accessToken: json_['accessToken'] as core.String?,
        accessTokenExpireTime: json_['accessTokenExpireTime'] as core.String?,
        refreshToken: json_['refreshToken'] as core.String?,
        refreshTokenExpireTime: json_['refreshTokenExpireTime'] as core.String?,
        tokenType: json_['tokenType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (accessToken != null) 'accessToken': accessToken!,
    if (accessTokenExpireTime != null)
      'accessTokenExpireTime': accessTokenExpireTime!,
    if (refreshToken != null) 'refreshToken': refreshToken!,
    if (refreshTokenExpireTime != null)
      'refreshTokenExpireTime': refreshTokenExpireTime!,
    if (tokenType != null) 'tokenType': tokenType!,
  };
}

/// List of API triggerID and their workflow resource name.
class GoogleCloudIntegrationsV1alphaApiTriggerResource {
  /// Integration where the API is published
  ///
  /// Required.
  core.String? integrationResource;

  /// Trigger Id of the API trigger(s) in the integration
  ///
  /// Required.
  core.List<core.String>? triggerId;

  GoogleCloudIntegrationsV1alphaApiTriggerResource({
    this.integrationResource,
    this.triggerId,
  });

  GoogleCloudIntegrationsV1alphaApiTriggerResource.fromJson(core.Map json_)
    : this(
        integrationResource: json_['integrationResource'] as core.String?,
        triggerId:
            (json_['triggerId'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (integrationResource != null)
      'integrationResource': integrationResource!,
    if (triggerId != null) 'triggerId': triggerId!,
  };
}

/// An assertion which will check for a condition over task execution status or
/// an expression for task output variables
class GoogleCloudIntegrationsV1alphaAssertion {
  /// The type of assertion to perform.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "ASSERTION_STRATEGY_UNSPECIFIED" : Unspecified Assertion strategy
  /// - "ASSERT_SUCCESSFUL_EXECUTION" : Test a successful execution
  /// - "ASSERT_FAILED_EXECUTION" : Test a failed execution
  /// - "ASSERT_NO_EXECUTION" : Test that the task was never executed
  /// - "ASSERT_EQUALS" : Test the parameter selected is equal to the expected
  /// value
  /// - "ASSERT_NOT_EQUALS" : Test the parameter selected is not equal to the
  /// expected value
  /// - "ASSERT_CONTAINS" : Test the parameter selected contains the configured
  /// value
  /// - "ASSERT_CONDITION" : Test a specific condition
  core.String? assertionStrategy;

  /// Standard filter expression for ASSERT_CONDITION to succeed
  ///
  /// Optional.
  core.String? condition;

  /// Key-value pair for ASSERT_EQUALS, ASSERT_NOT_EQUALS, ASSERT_CONTAINS to
  /// succeed
  ///
  /// Optional.
  GoogleCloudIntegrationsV1alphaEventParameter? parameter;

  /// Number of times given task should be retried in case of
  /// ASSERT_FAILED_EXECUTION
  core.int? retryCount;

  GoogleCloudIntegrationsV1alphaAssertion({
    this.assertionStrategy,
    this.condition,
    this.parameter,
    this.retryCount,
  });

  GoogleCloudIntegrationsV1alphaAssertion.fromJson(core.Map json_)
    : this(
        assertionStrategy: json_['assertionStrategy'] as core.String?,
        condition: json_['condition'] as core.String?,
        parameter:
            json_.containsKey('parameter')
                ? GoogleCloudIntegrationsV1alphaEventParameter.fromJson(
                  json_['parameter'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        retryCount: json_['retryCount'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (assertionStrategy != null) 'assertionStrategy': assertionStrategy!,
    if (condition != null) 'condition': condition!,
    if (parameter != null) 'parameter': parameter!,
    if (retryCount != null) 'retryCount': retryCount!,
  };
}

/// The result of an assertion.
class GoogleCloudIntegrationsV1alphaAssertionResult {
  /// Assertion that was run.
  GoogleCloudIntegrationsV1alphaAssertion? assertion;

  /// Details of the assertion failure
  core.String? failureMessage;

  /// Status of assertion to signify if the assertion succeeded or failed
  /// Possible string values are:
  /// - "ASSERTION_STATUS_UNSPECIFIED" : Unspecified assertion status
  /// - "SUCCEEDED" : Assertion succeeded
  /// - "FAILED" : Assertion failed
  core.String? status;

  /// Task name of task where the assertion was run.
  core.String? taskName;

  /// Task number of task where the assertion was run.
  core.String? taskNumber;

  GoogleCloudIntegrationsV1alphaAssertionResult({
    this.assertion,
    this.failureMessage,
    this.status,
    this.taskName,
    this.taskNumber,
  });

  GoogleCloudIntegrationsV1alphaAssertionResult.fromJson(core.Map json_)
    : this(
        assertion:
            json_.containsKey('assertion')
                ? GoogleCloudIntegrationsV1alphaAssertion.fromJson(
                  json_['assertion'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        failureMessage: json_['failureMessage'] as core.String?,
        status: json_['status'] as core.String?,
        taskName: json_['taskName'] as core.String?,
        taskNumber: json_['taskNumber'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (assertion != null) 'assertion': assertion!,
    if (failureMessage != null) 'failureMessage': failureMessage!,
    if (status != null) 'status': status!,
    if (taskName != null) 'taskName': taskName!,
    if (taskNumber != null) 'taskNumber': taskNumber!,
  };
}

/// Status for the execution attempt.
class GoogleCloudIntegrationsV1alphaAttemptStats {
  /// The end time of the integration execution for current attempt.
  core.String? endTime;

  /// The start time of the integration execution for current attempt.
  ///
  /// This could be in the future if it's been scheduled.
  core.String? startTime;

  GoogleCloudIntegrationsV1alphaAttemptStats({this.endTime, this.startTime});

  GoogleCloudIntegrationsV1alphaAttemptStats.fromJson(core.Map json_)
    : this(
        endTime: json_['endTime'] as core.String?,
        startTime: json_['startTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (endTime != null) 'endTime': endTime!,
    if (startTime != null) 'startTime': startTime!,
  };
}

/// The AuthConfig resource use to hold channels and connection config data.
class GoogleCloudIntegrationsV1alphaAuthConfig {
  /// Certificate id for client certificate
  core.String? certificateId;

  /// The timestamp when the auth config is created.
  ///
  /// Output only.
  core.String? createTime;

  /// The creator's email address.
  ///
  /// Generated based on the End User Credentials/LOAS role of the user making
  /// the call.
  core.String? creatorEmail;

  /// Credential type of the encrypted credential.
  ///
  /// Required.
  /// Possible string values are:
  /// - "CREDENTIAL_TYPE_UNSPECIFIED" : Unspecified credential type
  /// - "USERNAME_AND_PASSWORD" : Regular username/password pair.
  /// - "API_KEY" : API key.
  /// - "OAUTH2_AUTHORIZATION_CODE" : OAuth 2.0 Authorization Code Grant Type.
  /// - "OAUTH2_IMPLICIT" : OAuth 2.0 Implicit Grant Type.
  /// - "OAUTH2_CLIENT_CREDENTIALS" : OAuth 2.0 Client Credentials Grant Type.
  /// - "OAUTH2_RESOURCE_OWNER_CREDENTIALS" : OAuth 2.0 Resource Owner
  /// Credentials Grant Type.
  /// - "JWT" : JWT Token.
  /// - "AUTH_TOKEN" : Auth Token, e.g. bearer token.
  /// - "SERVICE_ACCOUNT" : Service Account which can be used to generate token
  /// for authentication.
  /// - "CLIENT_CERTIFICATE_ONLY" : Client Certificate only.
  /// - "OIDC_TOKEN" : Google OIDC ID Token
  core.String? credentialType;

  /// Raw auth credentials.
  GoogleCloudIntegrationsV1alphaCredential? decryptedCredential;

  /// A description of the auth config.
  ///
  /// Optional.
  core.String? description;

  /// The name of the auth config.
  ///
  /// Required.
  core.String? displayName;

  /// Auth credential encrypted by Cloud KMS.
  ///
  /// Can be decrypted as Credential with proper KMS key.
  core.String? encryptedCredential;
  core.List<core.int> get encryptedCredentialAsBytes =>
      convert.base64.decode(encryptedCredential!);

  set encryptedCredentialAsBytes(core.List<core.int> bytes_) {
    encryptedCredential = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  /// User can define the time to receive notification after which the auth
  /// config becomes invalid.
  ///
  /// Support up to 30 days. Support granularity in hours.
  ///
  /// Optional.
  core.List<core.String>? expiryNotificationDuration;

  /// The last modifier's email address.
  ///
  /// Generated based on the End User Credentials/LOAS role of the user making
  /// the call.
  core.String? lastModifierEmail;

  /// Resource name of the auth config.
  ///
  /// For more information, see Manage authentication profiles.
  /// projects/{project}/locations/{location}/authConfigs/{authConfig}.
  core.String? name;

  /// User provided expiry time to override.
  ///
  /// For the example of Salesforce, username/password credentials can be valid
  /// for 6 months depending on the instance settings.
  ///
  /// Optional.
  core.String? overrideValidTime;

  /// The reason / details of the current status.
  ///
  /// Output only.
  core.String? reason;

  /// The status of the auth config.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Status not specified.
  /// - "VALID" : Valid Auth config.
  /// - "INVALID" : General invalidity, if it doesn't fits in the detailed issue
  /// below.
  /// - "SOFT_DELETED" : Auth config soft deleted.
  /// - "EXPIRED" : Auth config expired.
  /// - "UNAUTHORIZED" : Auth config unauthorized.
  /// - "UNSUPPORTED" : Auth config not supported.
  core.String? state;

  /// The timestamp when the auth config is modified.
  ///
  /// Output only.
  core.String? updateTime;

  /// The time until the auth config is valid.
  ///
  /// Empty or max value is considered the auth config won't expire.
  ///
  /// Optional.
  core.String? validTime;

  /// The visibility of the auth config.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "AUTH_CONFIG_VISIBILITY_UNSPECIFIED" : Visibility not specified.
  /// - "PRIVATE" : Profile visible to the creator only.
  /// - "CLIENT_VISIBLE" : Profile visible within the client.
  core.String? visibility;

  GoogleCloudIntegrationsV1alphaAuthConfig({
    this.certificateId,
    this.createTime,
    this.creatorEmail,
    this.credentialType,
    this.decryptedCredential,
    this.description,
    this.displayName,
    this.encryptedCredential,
    this.expiryNotificationDuration,
    this.lastModifierEmail,
    this.name,
    this.overrideValidTime,
    this.reason,
    this.state,
    this.updateTime,
    this.validTime,
    this.visibility,
  });

  GoogleCloudIntegrationsV1alphaAuthConfig.fromJson(core.Map json_)
    : this(
        certificateId: json_['certificateId'] as core.String?,
        createTime: json_['createTime'] as core.String?,
        creatorEmail: json_['creatorEmail'] as core.String?,
        credentialType: json_['credentialType'] as core.String?,
        decryptedCredential:
            json_.containsKey('decryptedCredential')
                ? GoogleCloudIntegrationsV1alphaCredential.fromJson(
                  json_['decryptedCredential']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        description: json_['description'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        encryptedCredential: json_['encryptedCredential'] as core.String?,
        expiryNotificationDuration:
            (json_['expiryNotificationDuration'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        lastModifierEmail: json_['lastModifierEmail'] as core.String?,
        name: json_['name'] as core.String?,
        overrideValidTime: json_['overrideValidTime'] as core.String?,
        reason: json_['reason'] as core.String?,
        state: json_['state'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
        validTime: json_['validTime'] as core.String?,
        visibility: json_['visibility'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (certificateId != null) 'certificateId': certificateId!,
    if (createTime != null) 'createTime': createTime!,
    if (creatorEmail != null) 'creatorEmail': creatorEmail!,
    if (credentialType != null) 'credentialType': credentialType!,
    if (decryptedCredential != null)
      'decryptedCredential': decryptedCredential!,
    if (description != null) 'description': description!,
    if (displayName != null) 'displayName': displayName!,
    if (encryptedCredential != null)
      'encryptedCredential': encryptedCredential!,
    if (expiryNotificationDuration != null)
      'expiryNotificationDuration': expiryNotificationDuration!,
    if (lastModifierEmail != null) 'lastModifierEmail': lastModifierEmail!,
    if (name != null) 'name': name!,
    if (overrideValidTime != null) 'overrideValidTime': overrideValidTime!,
    if (reason != null) 'reason': reason!,
    if (state != null) 'state': state!,
    if (updateTime != null) 'updateTime': updateTime!,
    if (validTime != null) 'validTime': validTime!,
    if (visibility != null) 'visibility': visibility!,
  };
}

/// The credentials to authenticate a user agent with a server that is put in
/// HTTP Authorization request header.
class GoogleCloudIntegrationsV1alphaAuthToken {
  /// The token for the auth type.
  core.String? token;

  /// Authentication type, e.g. "Basic", "Bearer", etc.
  core.String? type;

  GoogleCloudIntegrationsV1alphaAuthToken({this.token, this.type});

  GoogleCloudIntegrationsV1alphaAuthToken.fromJson(core.Map json_)
    : this(
        token: json_['token'] as core.String?,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (token != null) 'token': token!,
    if (type != null) 'type': type!,
  };
}

/// This message only contains a field of boolean array.
class GoogleCloudIntegrationsV1alphaBooleanParameterArray {
  /// Boolean array.
  core.List<core.bool>? booleanValues;

  GoogleCloudIntegrationsV1alphaBooleanParameterArray({this.booleanValues});

  GoogleCloudIntegrationsV1alphaBooleanParameterArray.fromJson(core.Map json_)
    : this(
        booleanValues:
            (json_['booleanValues'] as core.List?)
                ?.map((value) => value as core.bool)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (booleanValues != null) 'booleanValues': booleanValues!,
  };
}

/// Request for cancelling an execution.
class GoogleCloudIntegrationsV1alphaCancelExecutionRequest {
  /// Reason for cancelling the execution.
  ///
  /// This is provided by the client requesting the cancellation, and is not
  /// used by the Platform.
  ///
  /// Required.
  core.String? cancelReason;

  GoogleCloudIntegrationsV1alphaCancelExecutionRequest({this.cancelReason});

  GoogleCloudIntegrationsV1alphaCancelExecutionRequest.fromJson(core.Map json_)
    : this(cancelReason: json_['cancelReason'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (cancelReason != null) 'cancelReason': cancelReason!,
  };
}

/// Response for cancelling an execution.
class GoogleCloudIntegrationsV1alphaCancelExecutionResponse {
  /// True if cancellation performed successfully.
  core.bool? isCanceled;

  GoogleCloudIntegrationsV1alphaCancelExecutionResponse({this.isCanceled});

  GoogleCloudIntegrationsV1alphaCancelExecutionResponse.fromJson(core.Map json_)
    : this(isCanceled: json_['isCanceled'] as core.bool?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (isCanceled != null) 'isCanceled': isCanceled!,
  };
}

/// The certificate definition
class GoogleCloudIntegrationsV1alphaCertificate {
  /// Status of the certificate
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Unspecified certificate status
  /// - "ACTIVE" : Certificate in active state will be able to use
  /// - "EXPIRED" : Certificate in expired state needs to be updated
  core.String? certificateStatus;

  /// Credential id that will be used to register with trawler
  ///
  /// Immutable.
  core.String? credentialId;

  /// Description of the certificate
  core.String? description;

  /// Name of the certificate
  ///
  /// Required.
  core.String? displayName;

  /// Auto generated primary key
  ///
  /// Output only.
  core.String? name;

  /// Input only.
  ///
  /// Raw client certificate which would be registered with trawler
  GoogleCloudIntegrationsV1alphaClientCertificate? rawCertificate;

  /// Requestor ID to be used to register certificate with trawler
  ///
  /// Immutable.
  core.String? requestorId;

  /// The timestamp after which certificate will expire
  ///
  /// Output only.
  core.String? validEndTime;

  /// The timestamp after which certificate will be valid
  ///
  /// Output only.
  core.String? validStartTime;

  GoogleCloudIntegrationsV1alphaCertificate({
    this.certificateStatus,
    this.credentialId,
    this.description,
    this.displayName,
    this.name,
    this.rawCertificate,
    this.requestorId,
    this.validEndTime,
    this.validStartTime,
  });

  GoogleCloudIntegrationsV1alphaCertificate.fromJson(core.Map json_)
    : this(
        certificateStatus: json_['certificateStatus'] as core.String?,
        credentialId: json_['credentialId'] as core.String?,
        description: json_['description'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        name: json_['name'] as core.String?,
        rawCertificate:
            json_.containsKey('rawCertificate')
                ? GoogleCloudIntegrationsV1alphaClientCertificate.fromJson(
                  json_['rawCertificate']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        requestorId: json_['requestorId'] as core.String?,
        validEndTime: json_['validEndTime'] as core.String?,
        validStartTime: json_['validStartTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (certificateStatus != null) 'certificateStatus': certificateStatus!,
    if (credentialId != null) 'credentialId': credentialId!,
    if (description != null) 'description': description!,
    if (displayName != null) 'displayName': displayName!,
    if (name != null) 'name': name!,
    if (rawCertificate != null) 'rawCertificate': rawCertificate!,
    if (requestorId != null) 'requestorId': requestorId!,
    if (validEndTime != null) 'validEndTime': validEndTime!,
    if (validStartTime != null) 'validStartTime': validStartTime!,
  };
}

/// Request for the ChangeCustomerConfig rpc
class GoogleCloudIntegrationsV1alphaChangeCustomerConfigRequest {
  /// The customer configuration to be updated.
  ///
  /// Optional.
  GoogleCloudIntegrationsV1alphaCustomerConfig? customerConfig;

  /// Field mask specifying the fields in the customer config that have been
  /// modified and must be updated.
  ///
  /// If absent or empty, no fields are updated.
  ///
  /// Required.
  core.String? updateMask;

  GoogleCloudIntegrationsV1alphaChangeCustomerConfigRequest({
    this.customerConfig,
    this.updateMask,
  });

  GoogleCloudIntegrationsV1alphaChangeCustomerConfigRequest.fromJson(
    core.Map json_,
  ) : this(
        customerConfig:
            json_.containsKey('customerConfig')
                ? GoogleCloudIntegrationsV1alphaCustomerConfig.fromJson(
                  json_['customerConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        updateMask: json_['updateMask'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (customerConfig != null) 'customerConfig': customerConfig!,
    if (updateMask != null) 'updateMask': updateMask!,
  };
}

/// Response for the ChangeCustomerConfig rpc
class GoogleCloudIntegrationsV1alphaChangeCustomerConfigResponse {
  /// The updated customer configuration.
  ///
  /// Required.
  GoogleCloudIntegrationsV1alphaCustomerConfig? customerConfig;

  GoogleCloudIntegrationsV1alphaChangeCustomerConfigResponse({
    this.customerConfig,
  });

  GoogleCloudIntegrationsV1alphaChangeCustomerConfigResponse.fromJson(
    core.Map json_,
  ) : this(
        customerConfig:
            json_.containsKey('customerConfig')
                ? GoogleCloudIntegrationsV1alphaCustomerConfig.fromJson(
                  json_['customerConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (customerConfig != null) 'customerConfig': customerConfig!,
  };
}

/// Contains client certificate information
class GoogleCloudIntegrationsV1alphaClientCertificate {
  /// The ssl certificate encoded in PEM format.
  ///
  /// This string must include the begin header and end footer lines. For
  /// example, -----BEGIN CERTIFICATE-----
  /// MIICTTCCAbagAwIBAgIJAPT0tSKNxan/MA0GCSqGSIb3DQEBCwUAMCoxFzAVBgNV
  /// BAoTDkdvb2dsZSBURVNUSU5HMQ8wDQYDVQQDEwZ0ZXN0Q0EwHhcNMTUwMTAxMDAw
  /// MDAwWhcNMjUwMTAxMDAwMDAwWjAuMRcwFQYDVQQKEw5Hb29nbGUgVEVTVElORzET
  /// MBEGA1UEAwwKam9lQGJhbmFuYTCBnzANBgkqhkiG9w0BAQEFAAOBjQAwgYkCgYEA
  /// vDYFgMgxi5W488d9J7UpCInl0NXmZQpJDEHE4hvkaRlH7pnC71H0DLt0/3zATRP1
  /// JzY2+eqBmbGl4/sgZKYv8UrLnNyQNUTsNx1iZAfPUflf5FwgVsai8BM0pUciq1NB
  /// xD429VFcrGZNucvFLh72RuRFIKH8WUpiK/iZNFkWhZ0CAwEAAaN3MHUwDgYDVR0P
  /// AQH/BAQDAgWgMB0GA1UdJQQWMBQGCCsGAQUFBwMBBggrBgEFBQcDAjAMBgNVHRMB
  /// Af8EAjAAMBkGA1UdDgQSBBCVgnFBCWgL/iwCqnGrhTPQMBsGA1UdIwQUMBKAEKey
  /// Um2o4k2WiEVA0ldQvNYwDQYJKoZIhvcNAQELBQADgYEAYK986R4E3L1v+Q6esBtW
  /// JrUwA9UmJRSQr0N5w3o9XzarU37/bkjOP0Fw0k/A6Vv1n3vlciYfBFaBIam1qRHr
  /// 5dMsYf4CZS6w50r7hyzqyrwDoyNxkLnd2PdcHT/sym1QmflsjEs7pejtnohO6N2H
  /// wQW6M0H7Zt8claGRla4fKkg= -----END CERTIFICATE-----
  core.String? encryptedPrivateKey;

  /// 'passphrase' should be left unset if private key is not encrypted.
  ///
  /// Note that 'passphrase' is not the password for web server, but an extra
  /// layer of security to protected private key.
  core.String? passphrase;

  /// The ssl certificate encoded in PEM format.
  ///
  /// This string must include the begin header and end footer lines. For
  /// example, -----BEGIN CERTIFICATE-----
  /// MIICTTCCAbagAwIBAgIJAPT0tSKNxan/MA0GCSqGSIb3DQEBCwUAMCoxFzAVBgNV
  /// BAoTDkdvb2dsZSBURVNUSU5HMQ8wDQYDVQQDEwZ0ZXN0Q0EwHhcNMTUwMTAxMDAw
  /// MDAwWhcNMjUwMTAxMDAwMDAwWjAuMRcwFQYDVQQKEw5Hb29nbGUgVEVTVElORzET
  /// MBEGA1UEAwwKam9lQGJhbmFuYTCBnzANBgkqhkiG9w0BAQEFAAOBjQAwgYkCgYEA
  /// vDYFgMgxi5W488d9J7UpCInl0NXmZQpJDEHE4hvkaRlH7pnC71H0DLt0/3zATRP1
  /// JzY2+eqBmbGl4/sgZKYv8UrLnNyQNUTsNx1iZAfPUflf5FwgVsai8BM0pUciq1NB
  /// xD429VFcrGZNucvFLh72RuRFIKH8WUpiK/iZNFkWhZ0CAwEAAaN3MHUwDgYDVR0P
  /// AQH/BAQDAgWgMB0GA1UdJQQWMBQGCCsGAQUFBwMBBggrBgEFBQcDAjAMBgNVHRMB
  /// Af8EAjAAMBkGA1UdDgQSBBCVgnFBCWgL/iwCqnGrhTPQMBsGA1UdIwQUMBKAEKey
  /// Um2o4k2WiEVA0ldQvNYwDQYJKoZIhvcNAQELBQADgYEAYK986R4E3L1v+Q6esBtW
  /// JrUwA9UmJRSQr0N5w3o9XzarU37/bkjOP0Fw0k/A6Vv1n3vlciYfBFaBIam1qRHr
  /// 5dMsYf4CZS6w50r7hyzqyrwDoyNxkLnd2PdcHT/sym1QmflsjEs7pejtnohO6N2H
  /// wQW6M0H7Zt8claGRla4fKkg= -----END CERTIFICATE-----
  core.String? sslCertificate;

  GoogleCloudIntegrationsV1alphaClientCertificate({
    this.encryptedPrivateKey,
    this.passphrase,
    this.sslCertificate,
  });

  GoogleCloudIntegrationsV1alphaClientCertificate.fromJson(core.Map json_)
    : this(
        encryptedPrivateKey: json_['encryptedPrivateKey'] as core.String?,
        passphrase: json_['passphrase'] as core.String?,
        sslCertificate: json_['sslCertificate'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (encryptedPrivateKey != null)
      'encryptedPrivateKey': encryptedPrivateKey!,
    if (passphrase != null) 'passphrase': passphrase!,
    if (sslCertificate != null) 'sslCertificate': sslCertificate!,
  };
}

/// The configuration information for the Client
class GoogleCloudIntegrationsV1alphaClientConfig {
  /// Indicates the billing type of the client
  /// Possible string values are:
  /// - "BILLING_TYPE_UNSPECIFIED" : Unspecified billing type
  /// - "BILLING_TYPE_APIGEE_TRIALS" : A trial org provisioned through Apigee
  /// Provisioning Wizard
  /// - "BILLING_TYPE_APIGEE_SUBSCRIPTION" : Subscription based users of Apigee
  /// - "BILLING_TYPE_PAYG" : Consumption based users of IP
  core.String? billingType;

  /// Indicates the activity state the client
  /// Possible string values are:
  /// - "CLIENT_STATE_UNSPECIFIED" : The client state is unspecified
  /// - "CLIENT_STATE_ACTIVE" : The client is active and able to make calls to
  /// the IP APIs
  /// - "CLIENT_STATE_DISABLED" : The client is disabled and will soon be
  /// deleted
  core.String? clientState;
  GoogleCloudIntegrationsV1alphaCloudKmsConfig? cloudKmsConfig;

  /// The timestamp when the client was first created.
  core.String? createTime;

  /// Customer configuration information for the given client.
  ///
  /// Optional.
  GoogleCloudIntegrationsV1alphaCustomerConfig? customerConfig;

  /// Description of what the client is used for
  core.String? description;

  ///
  ///
  /// Optional.
  core.bool? enableHttpCall;

  /// Indicates the client enables internal IP feature, this is applicable for
  /// internal clients only.
  ///
  /// Optional.
  core.bool? enableInternalIp;

  ///
  ///
  /// Optional.
  core.bool? enableManagedAiFeatures;

  ///
  ///
  /// Optional.
  core.bool? enableVariableMasking;

  /// Globally unique ID (project_id + region)
  core.String? id;

  /// Indicates the client is provisioned with CMEK or GMEK.
  ///
  /// Optional.
  core.bool? isGmek;

  /// The service agent associated with this client
  core.String? p4ServiceAccount;

  /// The GCP project id of the client associated with
  core.String? projectId;

  /// The region the client is linked to.
  core.String? region;
  core.String? runAsServiceAccount;

  GoogleCloudIntegrationsV1alphaClientConfig({
    this.billingType,
    this.clientState,
    this.cloudKmsConfig,
    this.createTime,
    this.customerConfig,
    this.description,
    this.enableHttpCall,
    this.enableInternalIp,
    this.enableManagedAiFeatures,
    this.enableVariableMasking,
    this.id,
    this.isGmek,
    this.p4ServiceAccount,
    this.projectId,
    this.region,
    this.runAsServiceAccount,
  });

  GoogleCloudIntegrationsV1alphaClientConfig.fromJson(core.Map json_)
    : this(
        billingType: json_['billingType'] as core.String?,
        clientState: json_['clientState'] as core.String?,
        cloudKmsConfig:
            json_.containsKey('cloudKmsConfig')
                ? GoogleCloudIntegrationsV1alphaCloudKmsConfig.fromJson(
                  json_['cloudKmsConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        createTime: json_['createTime'] as core.String?,
        customerConfig:
            json_.containsKey('customerConfig')
                ? GoogleCloudIntegrationsV1alphaCustomerConfig.fromJson(
                  json_['customerConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        description: json_['description'] as core.String?,
        enableHttpCall: json_['enableHttpCall'] as core.bool?,
        enableInternalIp: json_['enableInternalIp'] as core.bool?,
        enableManagedAiFeatures: json_['enableManagedAiFeatures'] as core.bool?,
        enableVariableMasking: json_['enableVariableMasking'] as core.bool?,
        id: json_['id'] as core.String?,
        isGmek: json_['isGmek'] as core.bool?,
        p4ServiceAccount: json_['p4ServiceAccount'] as core.String?,
        projectId: json_['projectId'] as core.String?,
        region: json_['region'] as core.String?,
        runAsServiceAccount: json_['runAsServiceAccount'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (billingType != null) 'billingType': billingType!,
    if (clientState != null) 'clientState': clientState!,
    if (cloudKmsConfig != null) 'cloudKmsConfig': cloudKmsConfig!,
    if (createTime != null) 'createTime': createTime!,
    if (customerConfig != null) 'customerConfig': customerConfig!,
    if (description != null) 'description': description!,
    if (enableHttpCall != null) 'enableHttpCall': enableHttpCall!,
    if (enableInternalIp != null) 'enableInternalIp': enableInternalIp!,
    if (enableManagedAiFeatures != null)
      'enableManagedAiFeatures': enableManagedAiFeatures!,
    if (enableVariableMasking != null)
      'enableVariableMasking': enableVariableMasking!,
    if (id != null) 'id': id!,
    if (isGmek != null) 'isGmek': isGmek!,
    if (p4ServiceAccount != null) 'p4ServiceAccount': p4ServiceAccount!,
    if (projectId != null) 'projectId': projectId!,
    if (region != null) 'region': region!,
    if (runAsServiceAccount != null)
      'runAsServiceAccount': runAsServiceAccount!,
  };
}

/// Configuration information for Client's Cloud KMS information
class GoogleCloudIntegrationsV1alphaCloudKmsConfig {
  /// A Cloud KMS key is a named object containing one or more key versions,
  /// along with metadata for the key.
  ///
  /// A key exists on exactly one key ring tied to a specific location.
  ///
  /// Required.
  core.String? key;

  /// Each version of a key contains key material used for encryption or
  /// signing.
  ///
  /// A key's version is represented by an integer, starting at 1. To decrypt
  /// data or verify a signature, you must use the same key version that was
  /// used to encrypt or sign the data.
  ///
  /// Optional.
  core.String? keyVersion;

  /// Location name of the key ring, e.g. "us-west1".
  ///
  /// Required.
  core.String? kmsLocation;

  /// The gcp project id of the project where the kms key stored.
  ///
  /// If empty, the kms key is stored at the same project as customer's project
  /// and ecrypted with CMEK, otherwise, the kms key is stored in the tenant
  /// project and encrypted with GMEK
  ///
  /// Optional.
  core.String? kmsProjectId;

  /// A key ring organizes keys in a specific Google Cloud location and allows
  /// you to manage access control on groups of keys.
  ///
  /// A key ring's name does not need to be unique across a Google Cloud
  /// project, but must be unique within a given location.
  ///
  /// Required.
  core.String? kmsRing;

  GoogleCloudIntegrationsV1alphaCloudKmsConfig({
    this.key,
    this.keyVersion,
    this.kmsLocation,
    this.kmsProjectId,
    this.kmsRing,
  });

  GoogleCloudIntegrationsV1alphaCloudKmsConfig.fromJson(core.Map json_)
    : this(
        key: json_['key'] as core.String?,
        keyVersion: json_['keyVersion'] as core.String?,
        kmsLocation: json_['kmsLocation'] as core.String?,
        kmsProjectId: json_['kmsProjectId'] as core.String?,
        kmsRing: json_['kmsRing'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (key != null) 'key': key!,
    if (keyVersion != null) 'keyVersion': keyVersion!,
    if (kmsLocation != null) 'kmsLocation': kmsLocation!,
    if (kmsProjectId != null) 'kmsProjectId': kmsProjectId!,
    if (kmsRing != null) 'kmsRing': kmsRing!,
  };
}

/// Cloud Logging details for execution info
class GoogleCloudIntegrationsV1alphaCloudLoggingDetails {
  /// Severity selected by the customer for the logs to be sent to Cloud
  /// Logging, for the integration version getting executed.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "CLOUD_LOGGING_SEVERITY_UNSPECIFIED" : Unspecified
  /// - "INFO" : If Severity selected is `INFO`, then all the Integration
  /// Execution States (`IN_PROCESS`, `ON_HOLD`, `SUCCEEDED`, `SUSPENDED`,
  /// `ERROR`, `CANCELLED`) will be sent to Cloud Logging.
  /// - "ERROR" : If Severity selected is `ERROR`, then only the following
  /// Integration Execution States (`ERROR`, `CANCELLED`) will be sent to Cloud
  /// Logging.
  /// - "WARNING" : If Severity selected is `WARNING`, then only the following
  /// Integration Execution States (`ERROR`, `CANCELLED`) will be sent to Cloud
  /// Logging.
  core.String? cloudLoggingSeverity;

  /// Status of whether Cloud Logging is enabled or not for the integration
  /// version getting executed.
  ///
  /// Optional.
  core.bool? enableCloudLogging;

  GoogleCloudIntegrationsV1alphaCloudLoggingDetails({
    this.cloudLoggingSeverity,
    this.enableCloudLogging,
  });

  GoogleCloudIntegrationsV1alphaCloudLoggingDetails.fromJson(core.Map json_)
    : this(
        cloudLoggingSeverity: json_['cloudLoggingSeverity'] as core.String?,
        enableCloudLogging: json_['enableCloudLogging'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (cloudLoggingSeverity != null)
      'cloudLoggingSeverity': cloudLoggingSeverity!,
    if (enableCloudLogging != null) 'enableCloudLogging': enableCloudLogging!,
  };
}

/// Cloud Scheduler Trigger configuration
typedef GoogleCloudIntegrationsV1alphaCloudSchedulerConfig =
    $CloudSchedulerConfig;

/// Conditional task failur retry strategies
class GoogleCloudIntegrationsV1alphaConditionalFailurePolicies {
  /// The default failure policy to be applied if no conditional failure policy
  /// matches.
  GoogleCloudIntegrationsV1alphaFailurePolicy? defaultFailurePolicy;

  /// The list of failure policies that will be applied to the task in order.
  core.List<GoogleCloudIntegrationsV1alphaFailurePolicy>? failurePolicies;

  GoogleCloudIntegrationsV1alphaConditionalFailurePolicies({
    this.defaultFailurePolicy,
    this.failurePolicies,
  });

  GoogleCloudIntegrationsV1alphaConditionalFailurePolicies.fromJson(
    core.Map json_,
  ) : this(
        defaultFailurePolicy:
            json_.containsKey('defaultFailurePolicy')
                ? GoogleCloudIntegrationsV1alphaFailurePolicy.fromJson(
                  json_['defaultFailurePolicy']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        failurePolicies:
            (json_['failurePolicies'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudIntegrationsV1alphaFailurePolicy.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (defaultFailurePolicy != null)
      'defaultFailurePolicy': defaultFailurePolicy!,
    if (failurePolicies != null) 'failurePolicies': failurePolicies!,
  };
}

/// Metadata of runtime connection schema.
class GoogleCloudIntegrationsV1alphaConnectionSchemaMetadata {
  /// List of actions.
  core.List<core.String>? actions;

  /// List of entity names.
  core.List<core.String>? entities;

  GoogleCloudIntegrationsV1alphaConnectionSchemaMetadata({
    this.actions,
    this.entities,
  });

  GoogleCloudIntegrationsV1alphaConnectionSchemaMetadata.fromJson(
    core.Map json_,
  ) : this(
        actions:
            (json_['actions'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        entities:
            (json_['entities'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (actions != null) 'actions': actions!,
    if (entities != null) 'entities': entities!,
  };
}

/// Configuration detail of coordinate, it used for UI
class GoogleCloudIntegrationsV1alphaCoordinate {
  /// X axis of the coordinate
  ///
  /// Required.
  core.int? x;

  /// Y axis of the coordinate
  ///
  /// Required.
  core.int? y;

  GoogleCloudIntegrationsV1alphaCoordinate({this.x, this.y});

  GoogleCloudIntegrationsV1alphaCoordinate.fromJson(core.Map json_)
    : this(x: json_['x'] as core.int?, y: json_['y'] as core.int?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (x != null) 'x': x!,
    if (y != null) 'y': y!,
  };
}

/// Request for CreateAppsScriptProject rpc call.
class GoogleCloudIntegrationsV1alphaCreateAppsScriptProjectRequest {
  /// The name of the Apps Script project to be created.
  core.String? appsScriptProject;

  /// The auth config id necessary to fetch the necessary credentials to create
  /// the project for external clients
  core.String? authConfigId;

  GoogleCloudIntegrationsV1alphaCreateAppsScriptProjectRequest({
    this.appsScriptProject,
    this.authConfigId,
  });

  GoogleCloudIntegrationsV1alphaCreateAppsScriptProjectRequest.fromJson(
    core.Map json_,
  ) : this(
        appsScriptProject: json_['appsScriptProject'] as core.String?,
        authConfigId: json_['authConfigId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (appsScriptProject != null) 'appsScriptProject': appsScriptProject!,
    if (authConfigId != null) 'authConfigId': authConfigId!,
  };
}

/// Response for CreateAppsScriptProject rpc call.
class GoogleCloudIntegrationsV1alphaCreateAppsScriptProjectResponse {
  /// The created AppsScriptProject ID.
  core.String? projectId;

  GoogleCloudIntegrationsV1alphaCreateAppsScriptProjectResponse({
    this.projectId,
  });

  GoogleCloudIntegrationsV1alphaCreateAppsScriptProjectResponse.fromJson(
    core.Map json_,
  ) : this(projectId: json_['projectId'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (projectId != null) 'projectId': projectId!,
  };
}

/// Request for Creating Cloud Function rpc call.
class GoogleCloudIntegrationsV1alphaCreateCloudFunctionRequest {
  /// The function name of CF to be created
  core.String? functionName;

  /// The function region of CF to be created
  core.String? functionRegion;

  /// The api version of CF to be created
  ///
  /// Optional.
  /// Possible string values are:
  /// - "GCF_API_VERSION_UNSPECIFIED" : Unspecified.
  /// - "API_VERSION_V1" : V1 API version.
  /// - "API_VERSION_V2" : V2 API version.
  core.String? gcfApiVersion;

  /// Indicates the id of the GCP project that the function will be created in.
  core.String? projectId;

  GoogleCloudIntegrationsV1alphaCreateCloudFunctionRequest({
    this.functionName,
    this.functionRegion,
    this.gcfApiVersion,
    this.projectId,
  });

  GoogleCloudIntegrationsV1alphaCreateCloudFunctionRequest.fromJson(
    core.Map json_,
  ) : this(
        functionName: json_['functionName'] as core.String?,
        functionRegion: json_['functionRegion'] as core.String?,
        gcfApiVersion: json_['gcfApiVersion'] as core.String?,
        projectId: json_['projectId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (functionName != null) 'functionName': functionName!,
    if (functionRegion != null) 'functionRegion': functionRegion!,
    if (gcfApiVersion != null) 'gcfApiVersion': gcfApiVersion!,
    if (projectId != null) 'projectId': projectId!,
  };
}

/// Response for Creating Cloud Function rpc call.
class GoogleCloudIntegrationsV1alphaCreateCloudFunctionResponse {
  /// The trigger url that will be returned
  core.String? triggerUrl;

  GoogleCloudIntegrationsV1alphaCreateCloudFunctionResponse({this.triggerUrl});

  GoogleCloudIntegrationsV1alphaCreateCloudFunctionResponse.fromJson(
    core.Map json_,
  ) : this(triggerUrl: json_['triggerUrl'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (triggerUrl != null) 'triggerUrl': triggerUrl!,
  };
}

/// Defines parameters for a single, canonical credential.
class GoogleCloudIntegrationsV1alphaCredential {
  /// Auth token credential
  GoogleCloudIntegrationsV1alphaAuthToken? authToken;

  /// Credential type associated with auth config.
  /// Possible string values are:
  /// - "CREDENTIAL_TYPE_UNSPECIFIED" : Unspecified credential type
  /// - "USERNAME_AND_PASSWORD" : Regular username/password pair.
  /// - "API_KEY" : API key.
  /// - "OAUTH2_AUTHORIZATION_CODE" : OAuth 2.0 Authorization Code Grant Type.
  /// - "OAUTH2_IMPLICIT" : OAuth 2.0 Implicit Grant Type.
  /// - "OAUTH2_CLIENT_CREDENTIALS" : OAuth 2.0 Client Credentials Grant Type.
  /// - "OAUTH2_RESOURCE_OWNER_CREDENTIALS" : OAuth 2.0 Resource Owner
  /// Credentials Grant Type.
  /// - "JWT" : JWT Token.
  /// - "AUTH_TOKEN" : Auth Token, e.g. bearer token.
  /// - "SERVICE_ACCOUNT" : Service Account which can be used to generate token
  /// for authentication.
  /// - "CLIENT_CERTIFICATE_ONLY" : Client Certificate only.
  /// - "OIDC_TOKEN" : Google OIDC ID Token
  core.String? credentialType;

  /// JWT credential
  GoogleCloudIntegrationsV1alphaJwt? jwt;

  /// The api_key and oauth2_implicit are not covered in v1 and will be picked
  /// up once v1 is implemented.
  ///
  /// ApiKey api_key = 3; OAuth2 authorization code credential
  GoogleCloudIntegrationsV1alphaOAuth2AuthorizationCode?
  oauth2AuthorizationCode;

  /// OAuth2Implicit oauth2_implicit = 5; OAuth2 client credentials
  GoogleCloudIntegrationsV1alphaOAuth2ClientCredentials?
  oauth2ClientCredentials;

  /// OAuth2 resource owner credentials
  GoogleCloudIntegrationsV1alphaOAuth2ResourceOwnerCredentials?
  oauth2ResourceOwnerCredentials;

  /// Google OIDC ID Token
  GoogleCloudIntegrationsV1alphaOidcToken? oidcToken;

  /// Service account credential
  GoogleCloudIntegrationsV1alphaServiceAccountCredentials?
  serviceAccountCredentials;

  /// Username and password credential
  GoogleCloudIntegrationsV1alphaUsernameAndPassword? usernameAndPassword;

  GoogleCloudIntegrationsV1alphaCredential({
    this.authToken,
    this.credentialType,
    this.jwt,
    this.oauth2AuthorizationCode,
    this.oauth2ClientCredentials,
    this.oauth2ResourceOwnerCredentials,
    this.oidcToken,
    this.serviceAccountCredentials,
    this.usernameAndPassword,
  });

  GoogleCloudIntegrationsV1alphaCredential.fromJson(core.Map json_)
    : this(
        authToken:
            json_.containsKey('authToken')
                ? GoogleCloudIntegrationsV1alphaAuthToken.fromJson(
                  json_['authToken'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        credentialType: json_['credentialType'] as core.String?,
        jwt:
            json_.containsKey('jwt')
                ? GoogleCloudIntegrationsV1alphaJwt.fromJson(
                  json_['jwt'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        oauth2AuthorizationCode:
            json_.containsKey('oauth2AuthorizationCode')
                ? GoogleCloudIntegrationsV1alphaOAuth2AuthorizationCode.fromJson(
                  json_['oauth2AuthorizationCode']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        oauth2ClientCredentials:
            json_.containsKey('oauth2ClientCredentials')
                ? GoogleCloudIntegrationsV1alphaOAuth2ClientCredentials.fromJson(
                  json_['oauth2ClientCredentials']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        oauth2ResourceOwnerCredentials:
            json_.containsKey('oauth2ResourceOwnerCredentials')
                ? GoogleCloudIntegrationsV1alphaOAuth2ResourceOwnerCredentials.fromJson(
                  json_['oauth2ResourceOwnerCredentials']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        oidcToken:
            json_.containsKey('oidcToken')
                ? GoogleCloudIntegrationsV1alphaOidcToken.fromJson(
                  json_['oidcToken'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        serviceAccountCredentials:
            json_.containsKey('serviceAccountCredentials')
                ? GoogleCloudIntegrationsV1alphaServiceAccountCredentials.fromJson(
                  json_['serviceAccountCredentials']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        usernameAndPassword:
            json_.containsKey('usernameAndPassword')
                ? GoogleCloudIntegrationsV1alphaUsernameAndPassword.fromJson(
                  json_['usernameAndPassword']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (authToken != null) 'authToken': authToken!,
    if (credentialType != null) 'credentialType': credentialType!,
    if (jwt != null) 'jwt': jwt!,
    if (oauth2AuthorizationCode != null)
      'oauth2AuthorizationCode': oauth2AuthorizationCode!,
    if (oauth2ClientCredentials != null)
      'oauth2ClientCredentials': oauth2ClientCredentials!,
    if (oauth2ResourceOwnerCredentials != null)
      'oauth2ResourceOwnerCredentials': oauth2ResourceOwnerCredentials!,
    if (oidcToken != null) 'oidcToken': oidcToken!,
    if (serviceAccountCredentials != null)
      'serviceAccountCredentials': serviceAccountCredentials!,
    if (usernameAndPassword != null)
      'usernameAndPassword': usernameAndPassword!,
  };
}

/// Customer configuration information for the given client
class GoogleCloudIntegrationsV1alphaCustomerConfig {
  /// Cloud KMS config for Auth Module to encrypt/decrypt credentials.
  ///
  /// Optional.
  GoogleCloudIntegrationsV1alphaCloudKmsConfig? cloudKmsConfig;

  /// Indicates if the client should be allowed to make HTTP calls.
  ///
  /// True if http call feature should be turned on for this region.
  ///
  /// Optional.
  core.bool? enableHttpCall;

  /// Indicates if the client should be allowed to use managed AI features, i.e.
  /// using Cloud Companion APIs of the tenant project.
  ///
  /// This will allow the customers to use features like Troubleshooting,
  /// OpenAPI spec enrichment, etc. for free.
  ///
  /// Optional.
  core.bool? enableManagedAiFeatures;

  /// True if variable masking feature should be turned on for this region.
  ///
  /// Optional.
  core.bool? enableVariableMasking;

  /// Run-as service account to be updated for the provisioned client.
  ///
  /// Optional.
  core.String? runAsServiceAccount;

  GoogleCloudIntegrationsV1alphaCustomerConfig({
    this.cloudKmsConfig,
    this.enableHttpCall,
    this.enableManagedAiFeatures,
    this.enableVariableMasking,
    this.runAsServiceAccount,
  });

  GoogleCloudIntegrationsV1alphaCustomerConfig.fromJson(core.Map json_)
    : this(
        cloudKmsConfig:
            json_.containsKey('cloudKmsConfig')
                ? GoogleCloudIntegrationsV1alphaCloudKmsConfig.fromJson(
                  json_['cloudKmsConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        enableHttpCall: json_['enableHttpCall'] as core.bool?,
        enableManagedAiFeatures: json_['enableManagedAiFeatures'] as core.bool?,
        enableVariableMasking: json_['enableVariableMasking'] as core.bool?,
        runAsServiceAccount: json_['runAsServiceAccount'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (cloudKmsConfig != null) 'cloudKmsConfig': cloudKmsConfig!,
    if (enableHttpCall != null) 'enableHttpCall': enableHttpCall!,
    if (enableManagedAiFeatures != null)
      'enableManagedAiFeatures': enableManagedAiFeatures!,
    if (enableVariableMasking != null)
      'enableVariableMasking': enableVariableMasking!,
    if (runAsServiceAccount != null)
      'runAsServiceAccount': runAsServiceAccount!,
  };
}

/// Request for the Deprovision rpc
typedef GoogleCloudIntegrationsV1alphaDeprovisionClientRequest = $Empty;

/// This message only contains a field of double number array.
class GoogleCloudIntegrationsV1alphaDoubleParameterArray {
  /// Double number array.
  core.List<core.double>? doubleValues;

  GoogleCloudIntegrationsV1alphaDoubleParameterArray({this.doubleValues});

  GoogleCloudIntegrationsV1alphaDoubleParameterArray.fromJson(core.Map json_)
    : this(
        doubleValues:
            (json_['doubleValues'] as core.List?)
                ?.map((value) => (value as core.num).toDouble())
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (doubleValues != null) 'doubleValues': doubleValues!,
  };
}

/// Response for downloading an execution.
class GoogleCloudIntegrationsV1alphaDownloadExecutionResponse {
  /// The content of downloaded execution.
  core.String? content;

  GoogleCloudIntegrationsV1alphaDownloadExecutionResponse({this.content});

  GoogleCloudIntegrationsV1alphaDownloadExecutionResponse.fromJson(
    core.Map json_,
  ) : this(content: json_['content'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (content != null) 'content': content!,
  };
}

/// Response for DownloadIntegrationVersion.
class GoogleCloudIntegrationsV1alphaDownloadIntegrationVersionResponse {
  /// String representation of the requested file.
  core.String? content;

  /// List containing String represendation for multiple file with type.
  core.List<GoogleCloudIntegrationsV1alphaSerializedFile>? files;

  GoogleCloudIntegrationsV1alphaDownloadIntegrationVersionResponse({
    this.content,
    this.files,
  });

  GoogleCloudIntegrationsV1alphaDownloadIntegrationVersionResponse.fromJson(
    core.Map json_,
  ) : this(
        content: json_['content'] as core.String?,
        files:
            (json_['files'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudIntegrationsV1alphaSerializedFile.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (content != null) 'content': content!,
    if (files != null) 'files': files!,
  };
}

/// Response for DownloadJsonPackage.
class GoogleCloudIntegrationsV1alphaDownloadJsonPackageResponse {
  /// List containing JSON for multiple file with type information.
  core.List<GoogleCloudIntegrationsV1alphaFile>? files;

  GoogleCloudIntegrationsV1alphaDownloadJsonPackageResponse({this.files});

  GoogleCloudIntegrationsV1alphaDownloadJsonPackageResponse.fromJson(
    core.Map json_,
  ) : this(
        files:
            (json_['files'] as core.List?)
                ?.map(
                  (value) => GoogleCloudIntegrationsV1alphaFile.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (files != null) 'files': files!,
  };
}

/// Response for DownloadTemplate.
class GoogleCloudIntegrationsV1alphaDownloadTemplateResponse {
  /// String representation of the template.
  core.String? content;

  GoogleCloudIntegrationsV1alphaDownloadTemplateResponse({this.content});

  GoogleCloudIntegrationsV1alphaDownloadTemplateResponse.fromJson(
    core.Map json_,
  ) : this(content: json_['content'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (content != null) 'content': content!,
  };
}

/// Response for DownloadTestCase.
class GoogleCloudIntegrationsV1alphaDownloadTestCaseResponse {
  /// String representation of the test case.
  core.String? content;

  GoogleCloudIntegrationsV1alphaDownloadTestCaseResponse({this.content});

  GoogleCloudIntegrationsV1alphaDownloadTestCaseResponse.fromJson(
    core.Map json_,
  ) : this(content: json_['content'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (content != null) 'content': content!,
  };
}

/// Response containing all provisioned regions for Connector Platform.
class GoogleCloudIntegrationsV1alphaEnumerateConnectorPlatformRegionsResponse {
  /// All regions where Connector Platform is provisioned.
  core.List<core.String>? regions;

  GoogleCloudIntegrationsV1alphaEnumerateConnectorPlatformRegionsResponse({
    this.regions,
  });

  GoogleCloudIntegrationsV1alphaEnumerateConnectorPlatformRegionsResponse.fromJson(
    core.Map json_,
  ) : this(
        regions:
            (json_['regions'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (regions != null) 'regions': regions!,
  };
}

/// Configuration detail of a error catch task
class GoogleCloudIntegrationsV1alphaErrorCatcherConfig {
  /// User-provided description intended to give more business context about the
  /// error catcher config.
  ///
  /// Optional.
  core.String? description;

  /// An error catcher id is string representation for the error catcher config.
  ///
  /// Within a workflow, error_catcher_id uniquely identifies an error catcher
  /// config among all error catcher configs for the workflow
  ///
  /// Required.
  core.String? errorCatcherId;

  /// A number to uniquely identify each error catcher config within the
  /// workflow on UI.
  ///
  /// Required.
  core.String? errorCatcherNumber;

  /// The user created label for a particular error catcher.
  ///
  /// Optional.
  ///
  /// Optional.
  core.String? label;

  /// Informs the front-end application where to draw this error catcher config
  /// on the UI.
  ///
  /// Optional.
  GoogleCloudIntegrationsV1alphaCoordinate? position;

  /// The set of start tasks that are to be executed for the error catch flow
  ///
  /// Required.
  core.List<GoogleCloudIntegrationsV1alphaNextTask>? startErrorTasks;

  GoogleCloudIntegrationsV1alphaErrorCatcherConfig({
    this.description,
    this.errorCatcherId,
    this.errorCatcherNumber,
    this.label,
    this.position,
    this.startErrorTasks,
  });

  GoogleCloudIntegrationsV1alphaErrorCatcherConfig.fromJson(core.Map json_)
    : this(
        description: json_['description'] as core.String?,
        errorCatcherId: json_['errorCatcherId'] as core.String?,
        errorCatcherNumber: json_['errorCatcherNumber'] as core.String?,
        label: json_['label'] as core.String?,
        position:
            json_.containsKey('position')
                ? GoogleCloudIntegrationsV1alphaCoordinate.fromJson(
                  json_['position'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        startErrorTasks:
            (json_['startErrorTasks'] as core.List?)
                ?.map(
                  (value) => GoogleCloudIntegrationsV1alphaNextTask.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (description != null) 'description': description!,
    if (errorCatcherId != null) 'errorCatcherId': errorCatcherId!,
    if (errorCatcherNumber != null) 'errorCatcherNumber': errorCatcherNumber!,
    if (label != null) 'label': label!,
    if (position != null) 'position': position!,
    if (startErrorTasks != null) 'startErrorTasks': startErrorTasks!,
  };
}

/// This message is used for processing and persisting (when applicable) key
/// value pair parameters for each event in the event bus.
///
/// Next available id: 4
class GoogleCloudIntegrationsV1alphaEventParameter {
  /// Key is used to retrieve the corresponding parameter value.
  ///
  /// This should be unique for a given fired event. These parameters must be
  /// predefined in the integration definition.
  core.String? key;

  /// True if this parameter should be masked in the logs
  core.bool? masked;

  /// Values for the defined keys.
  ///
  /// Each value can either be string, int, double or any proto message.
  GoogleCloudIntegrationsV1alphaValueType? value;

  GoogleCloudIntegrationsV1alphaEventParameter({
    this.key,
    this.masked,
    this.value,
  });

  GoogleCloudIntegrationsV1alphaEventParameter.fromJson(core.Map json_)
    : this(
        key: json_['key'] as core.String?,
        masked: json_['masked'] as core.bool?,
        value:
            json_.containsKey('value')
                ? GoogleCloudIntegrationsV1alphaValueType.fromJson(
                  json_['value'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (key != null) 'key': key!,
    if (masked != null) 'masked': masked!,
    if (value != null) 'value': value!,
  };
}

/// The response for executing an integration.
class GoogleCloudIntegrationsV1alphaExecuteEventResponse {
  /// The id of the execution corresponding to this run of integration.
  core.String? executionId;

  GoogleCloudIntegrationsV1alphaExecuteEventResponse({this.executionId});

  GoogleCloudIntegrationsV1alphaExecuteEventResponse.fromJson(core.Map json_)
    : this(executionId: json_['executionId'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (executionId != null) 'executionId': executionId!,
  };
}

/// The request for executing an integration.
class GoogleCloudIntegrationsV1alphaExecuteIntegrationsRequest {
  /// Flag to determine how to should propagate errors.
  ///
  /// If this flag is set to be true, it will not throw an exception. Instead,
  /// it will return a {@link ExecuteIntegrationsResponse} with an execution id
  /// and error messages as PostWithTriggerIdExecutionException in {@link
  /// EventParameters}. The flag is set to be false by default.
  ///
  /// Optional.
  core.bool? doNotPropagateError;

  /// The id of the ON_HOLD execution to be resumed.
  ///
  /// Optional.
  core.String? executionId;

  /// Input parameters used by integration execution.
  ///
  /// Optional.
  core.Map<core.String, GoogleCloudIntegrationsV1alphaValueType>?
  inputParameters;

  /// Parameters are a part of Event and can be used to communicate between
  /// different tasks that are part of the same integration execution.
  ///
  /// Optional.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.List<EnterpriseCrmFrontendsEventbusProtoParameterEntry>?
  parameterEntries;

  /// Passed in as parameters to each integration execution.
  ///
  /// Redacted
  ///
  /// Optional.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  EnterpriseCrmFrontendsEventbusProtoEventParameters? parameters;

  /// This is used to de-dup incoming request: if the duplicate request was
  /// detected, the response from the previous execution is returned.
  ///
  /// Optional.
  core.String? requestId;

  /// Matched against all {@link TriggerConfig}s across all integrations.
  ///
  /// i.e. TriggerConfig.trigger_id.equals(trigger_id). The trigger_id is in the
  /// format of `api_trigger/TRIGGER_NAME`.
  ///
  /// Required.
  core.String? triggerId;

  GoogleCloudIntegrationsV1alphaExecuteIntegrationsRequest({
    this.doNotPropagateError,
    this.executionId,
    this.inputParameters,
    this.parameterEntries,
    this.parameters,
    this.requestId,
    this.triggerId,
  });

  GoogleCloudIntegrationsV1alphaExecuteIntegrationsRequest.fromJson(
    core.Map json_,
  ) : this(
        doNotPropagateError: json_['doNotPropagateError'] as core.bool?,
        executionId: json_['executionId'] as core.String?,
        inputParameters: (json_['inputParameters']
                as core.Map<core.String, core.dynamic>?)
            ?.map(
              (key, value) => core.MapEntry(
                key,
                GoogleCloudIntegrationsV1alphaValueType.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              ),
            ),
        parameterEntries:
            (json_['parameterEntries'] as core.List?)
                ?.map(
                  (value) =>
                      EnterpriseCrmFrontendsEventbusProtoParameterEntry.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        parameters:
            json_.containsKey('parameters')
                ? EnterpriseCrmFrontendsEventbusProtoEventParameters.fromJson(
                  json_['parameters'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        requestId: json_['requestId'] as core.String?,
        triggerId: json_['triggerId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (doNotPropagateError != null)
      'doNotPropagateError': doNotPropagateError!,
    if (executionId != null) 'executionId': executionId!,
    if (inputParameters != null) 'inputParameters': inputParameters!,
    if (parameterEntries != null) 'parameterEntries': parameterEntries!,
    if (parameters != null) 'parameters': parameters!,
    if (requestId != null) 'requestId': requestId!,
    if (triggerId != null) 'triggerId': triggerId!,
  };
}

/// The response for executing an integration.
class GoogleCloudIntegrationsV1alphaExecuteIntegrationsResponse {
  /// Details for the integration that were executed.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  EnterpriseCrmFrontendsEventbusProtoEventParameters? eventParameters;

  /// Is true if any execution in the integration failed.
  ///
  /// False otherwise.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.bool? executionFailed;

  /// The id of the execution corresponding to this run of integration.
  core.String? executionId;

  /// OUTPUT parameters in format of Map.
  ///
  /// Where Key is the name of the parameter. Note: Name of the system generated
  /// parameters are wrapped by backtick(\`) to distinguish them from the user
  /// defined parameters.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? outputParameters;

  /// Parameters are a part of Event and can be used to communicate between
  /// different tasks that are part of the same integration execution.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.List<EnterpriseCrmFrontendsEventbusProtoParameterEntry>?
  parameterEntries;

  /// OUTPUT parameters from integration execution.
  ///
  /// Optional.
  core.Map<core.String, GoogleCloudIntegrationsV1alphaValueType>? parameters;

  GoogleCloudIntegrationsV1alphaExecuteIntegrationsResponse({
    this.eventParameters,
    this.executionFailed,
    this.executionId,
    this.outputParameters,
    this.parameterEntries,
    this.parameters,
  });

  GoogleCloudIntegrationsV1alphaExecuteIntegrationsResponse.fromJson(
    core.Map json_,
  ) : this(
        eventParameters:
            json_.containsKey('eventParameters')
                ? EnterpriseCrmFrontendsEventbusProtoEventParameters.fromJson(
                  json_['eventParameters']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        executionFailed: json_['executionFailed'] as core.bool?,
        executionId: json_['executionId'] as core.String?,
        outputParameters:
            json_.containsKey('outputParameters')
                ? json_['outputParameters']
                    as core.Map<core.String, core.dynamic>
                : null,
        parameterEntries:
            (json_['parameterEntries'] as core.List?)
                ?.map(
                  (value) =>
                      EnterpriseCrmFrontendsEventbusProtoParameterEntry.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        parameters:
            (json_['parameters'] as core.Map<core.String, core.dynamic>?)?.map(
              (key, value) => core.MapEntry(
                key,
                GoogleCloudIntegrationsV1alphaValueType.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              ),
            ),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (eventParameters != null) 'eventParameters': eventParameters!,
    if (executionFailed != null) 'executionFailed': executionFailed!,
    if (executionId != null) 'executionId': executionId!,
    if (outputParameters != null) 'outputParameters': outputParameters!,
    if (parameterEntries != null) 'parameterEntries': parameterEntries!,
    if (parameters != null) 'parameters': parameters!,
  };
}

/// The request for executing a functional test.
class GoogleCloudIntegrationsV1alphaExecuteTestCaseRequest {
  /// Input parameters used by test case execution.
  ///
  /// Optional.
  core.Map<core.String, GoogleCloudIntegrationsV1alphaValueType>?
  inputParameters;

  GoogleCloudIntegrationsV1alphaExecuteTestCaseRequest({this.inputParameters});

  GoogleCloudIntegrationsV1alphaExecuteTestCaseRequest.fromJson(core.Map json_)
    : this(
        inputParameters: (json_['inputParameters']
                as core.Map<core.String, core.dynamic>?)
            ?.map(
              (key, value) => core.MapEntry(
                key,
                GoogleCloudIntegrationsV1alphaValueType.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              ),
            ),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (inputParameters != null) 'inputParameters': inputParameters!,
  };
}

/// The response for executing a functional test.
class GoogleCloudIntegrationsV1alphaExecuteTestCaseResponse {
  /// Results of each assertions ran during execution of test case.
  core.List<GoogleCloudIntegrationsV1alphaAssertionResult>? assertionResults;

  /// The id of the execution corresponding to this run of integration.
  core.String? executionId;

  /// OUTPUT parameters in format of Map.
  ///
  /// Where Key is the name of the parameter. Note: Name of the system generated
  /// parameters are wrapped by backtick(\`) to distinguish them from the user
  /// defined parameters.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? outputParameters;

  /// State of the test case execution
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Unspecified state
  /// - "PASSED" : Test case execution passed
  /// - "FAILED" : Test case execution failed
  core.String? testExecutionState;

  GoogleCloudIntegrationsV1alphaExecuteTestCaseResponse({
    this.assertionResults,
    this.executionId,
    this.outputParameters,
    this.testExecutionState,
  });

  GoogleCloudIntegrationsV1alphaExecuteTestCaseResponse.fromJson(core.Map json_)
    : this(
        assertionResults:
            (json_['assertionResults'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudIntegrationsV1alphaAssertionResult.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        executionId: json_['executionId'] as core.String?,
        outputParameters:
            json_.containsKey('outputParameters')
                ? json_['outputParameters']
                    as core.Map<core.String, core.dynamic>
                : null,
        testExecutionState: json_['testExecutionState'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (assertionResults != null) 'assertionResults': assertionResults!,
    if (executionId != null) 'executionId': executionId!,
    if (outputParameters != null) 'outputParameters': outputParameters!,
    if (testExecutionState != null) 'testExecutionState': testExecutionState!,
  };
}

/// Request for ExecuteTestCases.
typedef GoogleCloudIntegrationsV1alphaExecuteTestCasesRequest = $Empty;

/// Response for ExecuteTestCases.
class GoogleCloudIntegrationsV1alphaExecuteTestCasesResponse {
  /// Results of each execution of test cases in an integration version.
  core.List<GoogleCloudIntegrationsV1alphaExecuteTestCaseResponse>?
  executeTestCaseResponses;

  GoogleCloudIntegrationsV1alphaExecuteTestCasesResponse({
    this.executeTestCaseResponses,
  });

  GoogleCloudIntegrationsV1alphaExecuteTestCasesResponse.fromJson(
    core.Map json_,
  ) : this(
        executeTestCaseResponses:
            (json_['executeTestCaseResponses'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudIntegrationsV1alphaExecuteTestCaseResponse.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (executeTestCaseResponses != null)
      'executeTestCaseResponses': executeTestCaseResponses!,
  };
}

/// The Execution resource contains detailed information of an individual
/// integration execution.
class GoogleCloudIntegrationsV1alphaExecution {
  /// Cloud KMS resource name for the CMEK encryption key.
  ///
  /// Optional.
  core.String? cloudKmsKey;

  /// Cloud Logging details for the integration version
  GoogleCloudIntegrationsV1alphaCloudLoggingDetails? cloudLoggingDetails;

  /// Created time of the execution.
  ///
  /// Output only.
  core.String? createTime;

  /// Direct sub executions of the following Execution.
  core.List<GoogleCloudIntegrationsV1alphaExecution>? directSubExecutions;

  /// The execution info about this event.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  EnterpriseCrmEventbusProtoEventExecutionDetails? eventExecutionDetails;

  /// Detailed info of this execution.
  GoogleCloudIntegrationsV1alphaExecutionDetails? executionDetails;

  /// The ways user posts this event.
  /// Possible string values are:
  /// - "EXECUTION_METHOD_UNSPECIFIED" : Default value.
  /// - "POST" : Sync post.
  /// - "POST_TO_QUEUE" : Async post.
  /// - "SCHEDULE" : Async post with schedule time.
  core.String? executionMethod;

  /// State of the integration version
  ///
  /// Output only.
  /// Possible string values are:
  /// - "INTEGRATION_STATE_UNSPECIFIED" : Default.
  /// - "DRAFT" : Draft.
  /// - "ACTIVE" : Active.
  /// - "ARCHIVED" : Archived.
  /// - "SNAPSHOT" : Snapshot.
  core.String? integrationVersionState;

  /// Auto-generated primary key.
  core.String? name;

  /// Replay info for the execution
  ///
  /// Output only.
  GoogleCloudIntegrationsV1alphaExecutionReplayInfo? replayInfo;

  /// Event parameters come in as part of the request.
  core.Map<core.String, GoogleCloudIntegrationsV1alphaValueType>?
  requestParameters;

  /// Event parameters come in as part of the request.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.List<EnterpriseCrmFrontendsEventbusProtoParameterEntry>? requestParams;

  /// Event parameters returned as part of the response.
  ///
  /// In the case of error, the `ErrorInfo` field is returned in the following
  /// format: { "ErrorInfo": { "message": String, "code": Number } }
  core.Map<core.String, GoogleCloudIntegrationsV1alphaValueType>?
  responseParameters;
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.List<EnterpriseCrmFrontendsEventbusProtoParameterEntry>? responseParams;

  /// An increasing sequence that is set when a new snapshot is created
  ///
  /// Output only.
  core.String? snapshotNumber;

  /// The trigger id of the integration trigger config.
  ///
  /// If both trigger_id and client_id is present, the integration is executed
  /// from the start tasks provided by the matching trigger config otherwise it
  /// is executed from the default start tasks.
  core.String? triggerId;

  /// Last modified time of the execution.
  ///
  /// Output only.
  core.String? updateTime;

  GoogleCloudIntegrationsV1alphaExecution({
    this.cloudKmsKey,
    this.cloudLoggingDetails,
    this.createTime,
    this.directSubExecutions,
    this.eventExecutionDetails,
    this.executionDetails,
    this.executionMethod,
    this.integrationVersionState,
    this.name,
    this.replayInfo,
    this.requestParameters,
    this.requestParams,
    this.responseParameters,
    this.responseParams,
    this.snapshotNumber,
    this.triggerId,
    this.updateTime,
  });

  GoogleCloudIntegrationsV1alphaExecution.fromJson(core.Map json_)
    : this(
        cloudKmsKey: json_['cloudKmsKey'] as core.String?,
        cloudLoggingDetails:
            json_.containsKey('cloudLoggingDetails')
                ? GoogleCloudIntegrationsV1alphaCloudLoggingDetails.fromJson(
                  json_['cloudLoggingDetails']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        createTime: json_['createTime'] as core.String?,
        directSubExecutions:
            (json_['directSubExecutions'] as core.List?)
                ?.map(
                  (value) => GoogleCloudIntegrationsV1alphaExecution.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        eventExecutionDetails:
            json_.containsKey('eventExecutionDetails')
                ? EnterpriseCrmEventbusProtoEventExecutionDetails.fromJson(
                  json_['eventExecutionDetails']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        executionDetails:
            json_.containsKey('executionDetails')
                ? GoogleCloudIntegrationsV1alphaExecutionDetails.fromJson(
                  json_['executionDetails']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        executionMethod: json_['executionMethod'] as core.String?,
        integrationVersionState:
            json_['integrationVersionState'] as core.String?,
        name: json_['name'] as core.String?,
        replayInfo:
            json_.containsKey('replayInfo')
                ? GoogleCloudIntegrationsV1alphaExecutionReplayInfo.fromJson(
                  json_['replayInfo'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        requestParameters: (json_['requestParameters']
                as core.Map<core.String, core.dynamic>?)
            ?.map(
              (key, value) => core.MapEntry(
                key,
                GoogleCloudIntegrationsV1alphaValueType.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              ),
            ),
        requestParams:
            (json_['requestParams'] as core.List?)
                ?.map(
                  (value) =>
                      EnterpriseCrmFrontendsEventbusProtoParameterEntry.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        responseParameters: (json_['responseParameters']
                as core.Map<core.String, core.dynamic>?)
            ?.map(
              (key, value) => core.MapEntry(
                key,
                GoogleCloudIntegrationsV1alphaValueType.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              ),
            ),
        responseParams:
            (json_['responseParams'] as core.List?)
                ?.map(
                  (value) =>
                      EnterpriseCrmFrontendsEventbusProtoParameterEntry.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        snapshotNumber: json_['snapshotNumber'] as core.String?,
        triggerId: json_['triggerId'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (cloudKmsKey != null) 'cloudKmsKey': cloudKmsKey!,
    if (cloudLoggingDetails != null)
      'cloudLoggingDetails': cloudLoggingDetails!,
    if (createTime != null) 'createTime': createTime!,
    if (directSubExecutions != null)
      'directSubExecutions': directSubExecutions!,
    if (eventExecutionDetails != null)
      'eventExecutionDetails': eventExecutionDetails!,
    if (executionDetails != null) 'executionDetails': executionDetails!,
    if (executionMethod != null) 'executionMethod': executionMethod!,
    if (integrationVersionState != null)
      'integrationVersionState': integrationVersionState!,
    if (name != null) 'name': name!,
    if (replayInfo != null) 'replayInfo': replayInfo!,
    if (requestParameters != null) 'requestParameters': requestParameters!,
    if (requestParams != null) 'requestParams': requestParams!,
    if (responseParameters != null) 'responseParameters': responseParameters!,
    if (responseParams != null) 'responseParams': responseParams!,
    if (snapshotNumber != null) 'snapshotNumber': snapshotNumber!,
    if (triggerId != null) 'triggerId': triggerId!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// Contains the details of the execution info: this includes the tasks
/// execution details plus the event execution statistics.
class GoogleCloudIntegrationsV1alphaExecutionDetails {
  /// List of Start and end time of the execution attempts.
  core.List<GoogleCloudIntegrationsV1alphaAttemptStats>? attemptStats;

  /// Total size of all event_execution_snapshots for an execution
  core.String? eventExecutionSnapshotsSize;

  /// List of snapshots taken during the execution.
  core.List<GoogleCloudIntegrationsV1alphaExecutionSnapshot>?
  executionSnapshots;

  /// Status of the execution.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Default.
  /// - "PENDING" : Execution is scheduled and awaiting to be triggered.
  /// - "PROCESSING" : Execution is processing.
  /// - "SUCCEEDED" : Execution successfully finished. There's no more change
  /// after this state.
  /// - "FAILED" : Execution failed. There's no more change after this state.
  /// - "CANCELLED" : Execution canceled by user. There's no more change after
  /// this state.
  /// - "RETRY_ON_HOLD" : Execution failed and waiting for retry.
  /// - "SUSPENDED" : Execution suspended and waiting for manual intervention.
  core.String? state;

  GoogleCloudIntegrationsV1alphaExecutionDetails({
    this.attemptStats,
    this.eventExecutionSnapshotsSize,
    this.executionSnapshots,
    this.state,
  });

  GoogleCloudIntegrationsV1alphaExecutionDetails.fromJson(core.Map json_)
    : this(
        attemptStats:
            (json_['attemptStats'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudIntegrationsV1alphaAttemptStats.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        eventExecutionSnapshotsSize:
            json_['eventExecutionSnapshotsSize'] as core.String?,
        executionSnapshots:
            (json_['executionSnapshots'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudIntegrationsV1alphaExecutionSnapshot.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        state: json_['state'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (attemptStats != null) 'attemptStats': attemptStats!,
    if (eventExecutionSnapshotsSize != null)
      'eventExecutionSnapshotsSize': eventExecutionSnapshotsSize!,
    if (executionSnapshots != null) 'executionSnapshots': executionSnapshots!,
    if (state != null) 'state': state!,
  };
}

/// Contains the details of the execution info: this includes the replay reason
/// and replay tree connecting executions in a parent-child relationship
class GoogleCloudIntegrationsV1alphaExecutionReplayInfo {
  /// If this execution is a replay of another execution, then this field
  /// contains the original execution id.
  core.String? originalExecutionInfoId;

  /// Replay mode for the execution
  /// Possible string values are:
  /// - "REPLAY_MODE_UNSPECIFIED" : Default value.
  /// - "REPLAY_MODE_FROM_BEGINNING" : Replay the original execution from the
  /// beginning.
  /// - "REPLAY_MODE_POINT_OF_FAILURE" : Replay the execution from the first
  /// failed task.
  core.String? replayMode;

  /// reason for replay
  core.String? replayReason;

  /// If this execution has been replayed, then this field contains the
  /// execution ids of the replayed executions.
  core.List<core.String>? replayedExecutionInfoIds;

  GoogleCloudIntegrationsV1alphaExecutionReplayInfo({
    this.originalExecutionInfoId,
    this.replayMode,
    this.replayReason,
    this.replayedExecutionInfoIds,
  });

  GoogleCloudIntegrationsV1alphaExecutionReplayInfo.fromJson(core.Map json_)
    : this(
        originalExecutionInfoId:
            json_['originalExecutionInfoId'] as core.String?,
        replayMode: json_['replayMode'] as core.String?,
        replayReason: json_['replayReason'] as core.String?,
        replayedExecutionInfoIds:
            (json_['replayedExecutionInfoIds'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (originalExecutionInfoId != null)
      'originalExecutionInfoId': originalExecutionInfoId!,
    if (replayMode != null) 'replayMode': replayMode!,
    if (replayReason != null) 'replayReason': replayReason!,
    if (replayedExecutionInfoIds != null)
      'replayedExecutionInfoIds': replayedExecutionInfoIds!,
  };
}

/// Contains the snapshot of the execution for a given checkpoint.
class GoogleCloudIntegrationsV1alphaExecutionSnapshot {
  /// Indicates "after which checkpoint task's execution" this snapshot is
  /// taken.
  core.String? checkpointTaskNumber;

  /// Metadata of the execution snapshot.
  GoogleCloudIntegrationsV1alphaExecutionSnapshotExecutionSnapshotMetadata?
  executionSnapshotMetadata;

  /// Parameters used during the execution.
  core.Map<core.String, GoogleCloudIntegrationsV1alphaValueType>? params;

  /// All of the task execution details at the given point of time.
  core.List<GoogleCloudIntegrationsV1alphaTaskExecutionDetails>?
  taskExecutionDetails;

  GoogleCloudIntegrationsV1alphaExecutionSnapshot({
    this.checkpointTaskNumber,
    this.executionSnapshotMetadata,
    this.params,
    this.taskExecutionDetails,
  });

  GoogleCloudIntegrationsV1alphaExecutionSnapshot.fromJson(core.Map json_)
    : this(
        checkpointTaskNumber: json_['checkpointTaskNumber'] as core.String?,
        executionSnapshotMetadata:
            json_.containsKey('executionSnapshotMetadata')
                ? GoogleCloudIntegrationsV1alphaExecutionSnapshotExecutionSnapshotMetadata.fromJson(
                  json_['executionSnapshotMetadata']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        params: (json_['params'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(
            key,
            GoogleCloudIntegrationsV1alphaValueType.fromJson(
              value as core.Map<core.String, core.dynamic>,
            ),
          ),
        ),
        taskExecutionDetails:
            (json_['taskExecutionDetails'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudIntegrationsV1alphaTaskExecutionDetails.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (checkpointTaskNumber != null)
      'checkpointTaskNumber': checkpointTaskNumber!,
    if (executionSnapshotMetadata != null)
      'executionSnapshotMetadata': executionSnapshotMetadata!,
    if (params != null) 'params': params!,
    if (taskExecutionDetails != null)
      'taskExecutionDetails': taskExecutionDetails!,
  };
}

/// Metadata of the execution snapshot.
class GoogleCloudIntegrationsV1alphaExecutionSnapshotExecutionSnapshotMetadata {
  /// Ancestor iteration number for the task(it will only be non-empty if the
  /// task is under 'private workflow')
  core.List<core.String>? ancestorIterationNumbers;

  /// Ancestor task number for the task(it will only be non-empty if the task is
  /// under 'private workflow')
  core.List<core.String>? ancestorTaskNumbers;

  /// the execution attempt number this snapshot belongs to.
  core.int? executionAttempt;

  /// The direct integration which the event execution snapshots belongs to
  core.String? integrationName;

  /// the task name associated with this snapshot.
  core.String? task;

  /// the task attempt number this snapshot belongs to.
  core.int? taskAttempt;

  /// the task label associated with this snapshot.
  ///
  /// Could be empty.
  core.String? taskLabel;

  /// The task number associated with this snapshot.
  core.String? taskNumber;

  GoogleCloudIntegrationsV1alphaExecutionSnapshotExecutionSnapshotMetadata({
    this.ancestorIterationNumbers,
    this.ancestorTaskNumbers,
    this.executionAttempt,
    this.integrationName,
    this.task,
    this.taskAttempt,
    this.taskLabel,
    this.taskNumber,
  });

  GoogleCloudIntegrationsV1alphaExecutionSnapshotExecutionSnapshotMetadata.fromJson(
    core.Map json_,
  ) : this(
        ancestorIterationNumbers:
            (json_['ancestorIterationNumbers'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        ancestorTaskNumbers:
            (json_['ancestorTaskNumbers'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        executionAttempt: json_['executionAttempt'] as core.int?,
        integrationName: json_['integrationName'] as core.String?,
        task: json_['task'] as core.String?,
        taskAttempt: json_['taskAttempt'] as core.int?,
        taskLabel: json_['taskLabel'] as core.String?,
        taskNumber: json_['taskNumber'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (ancestorIterationNumbers != null)
      'ancestorIterationNumbers': ancestorIterationNumbers!,
    if (ancestorTaskNumbers != null)
      'ancestorTaskNumbers': ancestorTaskNumbers!,
    if (executionAttempt != null) 'executionAttempt': executionAttempt!,
    if (integrationName != null) 'integrationName': integrationName!,
    if (task != null) 'task': task!,
    if (taskAttempt != null) 'taskAttempt': taskAttempt!,
    if (taskLabel != null) 'taskLabel': taskLabel!,
    if (taskNumber != null) 'taskNumber': taskNumber!,
  };
}

/// Policy that defines the task retry logic and failure type.
///
/// If no FailurePolicy is defined for a task, all its dependent tasks will not
/// be executed (i.e, a `retry_strategy` of NONE will be applied).
class GoogleCloudIntegrationsV1alphaFailurePolicy {
  /// The string condition that will be evaluated to determine if the task
  /// should be retried with this failure policy.
  ///
  /// Optional.
  core.String? condition;

  /// Required if retry_strategy is FIXED_INTERVAL or
  /// LINEAR/EXPONENTIAL_BACKOFF/RESTART_INTEGRATION_WITH_BACKOFF.
  ///
  /// Defines the initial interval in seconds for backoff.
  core.String? intervalTime;

  /// Required if retry_strategy is FIXED_INTERVAL or
  /// LINEAR/EXPONENTIAL_BACKOFF/RESTART_INTEGRATION_WITH_BACKOFF.
  ///
  /// Defines the number of times the task will be retried if failed.
  core.int? maxRetries;

  /// Defines what happens to the task upon failure.
  /// Possible string values are:
  /// - "RETRY_STRATEGY_UNSPECIFIED" : UNSPECIFIED.
  /// - "IGNORE" : Ignores the failure of this task. The rest of the integration
  /// will be executed Assuming this task succeeded.
  /// - "NONE" : Causes a permanent failure of the task. However, if the last
  /// task(s) of event was successfully completed despite the failure of this
  /// task, it has no impact on the integration.
  /// - "FATAL" : Causes a permanent failure of the event. It is different from
  /// NONE because this will mark the event as FAILED by shutting down the event
  /// execution.
  /// - "FIXED_INTERVAL" : The task will be retried from the failed task onwards
  /// after a fixed delay. A max-retry count is required to be specified with
  /// this strategy. A jitter is added to each exponential interval so that
  /// concurrently failing tasks of the same type do not end up retrying after
  /// the exact same exponential interval. max_retries and interval_in_seconds
  /// must be specified.
  /// - "LINEAR_BACKOFF" : The task will be retried from the failed task onwards
  /// after a fixed delay that linearly increases with each retry attempt. A
  /// jitter is added to each exponential interval so that concurrently failing
  /// tasks of the same type do not end up retrying after the exact same
  /// exponential interval. A max-retry count is required to be specified with
  /// this strategy. max_retries and interval_in_seconds must be specified.
  /// - "EXPONENTIAL_BACKOFF" : The task will be retried after an exponentially
  /// increasing period of time with each failure. A jitter is added to each
  /// exponential interval so that concurrently failing tasks of the same type
  /// do not end up retrying after the exact same exponential interval. A
  /// max-retry count is required to be specified with this strategy.
  /// `max_retries` and `interval_in_seconds` must be specified.
  /// - "RESTART_INTEGRATION_WITH_BACKOFF" : The entire integration will be
  /// restarted with the initial parameters that were set when the event was
  /// fired. A max-retry count is required to be specified with this strategy.
  /// `max_retries` and `interval_in_seconds` must be specified.
  core.String? retryStrategy;

  GoogleCloudIntegrationsV1alphaFailurePolicy({
    this.condition,
    this.intervalTime,
    this.maxRetries,
    this.retryStrategy,
  });

  GoogleCloudIntegrationsV1alphaFailurePolicy.fromJson(core.Map json_)
    : this(
        condition: json_['condition'] as core.String?,
        intervalTime: json_['intervalTime'] as core.String?,
        maxRetries: json_['maxRetries'] as core.int?,
        retryStrategy: json_['retryStrategy'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (condition != null) 'condition': condition!,
    if (intervalTime != null) 'intervalTime': intervalTime!,
    if (maxRetries != null) 'maxRetries': maxRetries!,
    if (retryStrategy != null) 'retryStrategy': retryStrategy!,
  };
}

/// To store Integration version related file i.e. Integration Version, Config
/// variable etc.
class GoogleCloudIntegrationsV1alphaFile {
  /// Integration version config file
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? integrationConfig;

  /// Integration version
  GoogleCloudIntegrationsV1alphaIntegrationVersion? integrationVersion;

  /// File information like Integration version, Integration Config variables
  /// etc.
  /// Possible string values are:
  /// - "INTEGRATION_FILE_UNSPECIFIED" : Default value.
  /// - "INTEGRATION" : Integration file.
  /// - "INTEGRATION_CONFIG_VARIABLES" : Integration Config variables.
  core.String? type;

  GoogleCloudIntegrationsV1alphaFile({
    this.integrationConfig,
    this.integrationVersion,
    this.type,
  });

  GoogleCloudIntegrationsV1alphaFile.fromJson(core.Map json_)
    : this(
        integrationConfig:
            json_.containsKey('integrationConfig')
                ? json_['integrationConfig']
                    as core.Map<core.String, core.dynamic>
                : null,
        integrationVersion:
            json_.containsKey('integrationVersion')
                ? GoogleCloudIntegrationsV1alphaIntegrationVersion.fromJson(
                  json_['integrationVersion']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (integrationConfig != null) 'integrationConfig': integrationConfig!,
    if (integrationVersion != null) 'integrationVersion': integrationVersion!,
    if (type != null) 'type': type!,
  };
}

/// Request for GenerateOpenApiSpec.
class GoogleCloudIntegrationsV1alphaGenerateOpenApiSpecRequest {
  /// List of api triggers
  ///
  /// Required.
  core.List<GoogleCloudIntegrationsV1alphaApiTriggerResource>?
  apiTriggerResources;

  /// File format for generated spec.
  ///
  /// Required.
  /// Possible string values are:
  /// - "FILE_FORMAT_UNSPECIFIED" : Unspecified file format
  /// - "JSON" : JSON File Format
  /// - "YAML" : YAML File Format
  core.String? fileFormat;

  GoogleCloudIntegrationsV1alphaGenerateOpenApiSpecRequest({
    this.apiTriggerResources,
    this.fileFormat,
  });

  GoogleCloudIntegrationsV1alphaGenerateOpenApiSpecRequest.fromJson(
    core.Map json_,
  ) : this(
        apiTriggerResources:
            (json_['apiTriggerResources'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudIntegrationsV1alphaApiTriggerResource.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        fileFormat: json_['fileFormat'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (apiTriggerResources != null)
      'apiTriggerResources': apiTriggerResources!,
    if (fileFormat != null) 'fileFormat': fileFormat!,
  };
}

/// Response of the GenerateOpenApiSpec API.
class GoogleCloudIntegrationsV1alphaGenerateOpenApiSpecResponse {
  /// Open API spec as per the required format
  core.String? openApiSpec;

  GoogleCloudIntegrationsV1alphaGenerateOpenApiSpecResponse({this.openApiSpec});

  GoogleCloudIntegrationsV1alphaGenerateOpenApiSpecResponse.fromJson(
    core.Map json_,
  ) : this(openApiSpec: json_['openApiSpec'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (openApiSpec != null) 'openApiSpec': openApiSpec!,
  };
}

/// Returns success or error message
class GoogleCloudIntegrationsV1alphaGenerateTokenResponse {
  /// The message that notifies the user if the request succeeded or not.
  core.String? message;

  GoogleCloudIntegrationsV1alphaGenerateTokenResponse({this.message});

  GoogleCloudIntegrationsV1alphaGenerateTokenResponse.fromJson(core.Map json_)
    : this(message: json_['message'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (message != null) 'message': message!,
  };
}

/// Response for the GetClientMetadata rpc
class GoogleCloudIntegrationsV1alphaGetClientMetadataResponse {
  /// Required: The client configuration that was requested
  ///
  /// Required.
  GoogleCloudIntegrationsV1alphaProjectProperties? properties;

  GoogleCloudIntegrationsV1alphaGetClientMetadataResponse({this.properties});

  GoogleCloudIntegrationsV1alphaGetClientMetadataResponse.fromJson(
    core.Map json_,
  ) : this(
        properties:
            json_.containsKey('properties')
                ? GoogleCloudIntegrationsV1alphaProjectProperties.fromJson(
                  json_['properties'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (properties != null) 'properties': properties!,
  };
}

/// Response for the GetClient rpc
class GoogleCloudIntegrationsV1alphaGetClientResponse {
  /// Required: The client configuration that was requested
  ///
  /// Required.
  GoogleCloudIntegrationsV1alphaClientConfig? client;

  GoogleCloudIntegrationsV1alphaGetClientResponse({this.client});

  GoogleCloudIntegrationsV1alphaGetClientResponse.fromJson(core.Map json_)
    : this(
        client:
            json_.containsKey('client')
                ? GoogleCloudIntegrationsV1alphaClientConfig.fromJson(
                  json_['client'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (client != null) 'client': client!,
  };
}

/// Request to Import template
class GoogleCloudIntegrationsV1alphaImportTemplateRequest {
  /// Resource Name of the integration where template needs to be
  /// imported/inserted.
  ///
  /// Required.
  core.String? integration;

  /// Sub Integration which would be created via templates.
  ///
  /// Optional.
  core.Map<
    core.String,
    GoogleCloudIntegrationsV1alphaUseTemplateRequestIntegrationDetails
  >?
  subIntegrations;

  GoogleCloudIntegrationsV1alphaImportTemplateRequest({
    this.integration,
    this.subIntegrations,
  });

  GoogleCloudIntegrationsV1alphaImportTemplateRequest.fromJson(core.Map json_)
    : this(
        integration: json_['integration'] as core.String?,
        subIntegrations: (json_['subIntegrations']
                as core.Map<core.String, core.dynamic>?)
            ?.map(
              (key, value) => core.MapEntry(
                key,
                GoogleCloudIntegrationsV1alphaUseTemplateRequestIntegrationDetails.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              ),
            ),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (integration != null) 'integration': integration!,
    if (subIntegrations != null) 'subIntegrations': subIntegrations!,
  };
}

/// Response for import template
class GoogleCloudIntegrationsV1alphaImportTemplateResponse {
  /// IntegrationVersion after the import.
  GoogleCloudIntegrationsV1alphaIntegrationVersion? integrationVersion;

  /// Sub integration versions which are imported.
  core.List<GoogleCloudIntegrationsV1alphaIntegrationVersion>?
  subIntegrationVersions;

  GoogleCloudIntegrationsV1alphaImportTemplateResponse({
    this.integrationVersion,
    this.subIntegrationVersions,
  });

  GoogleCloudIntegrationsV1alphaImportTemplateResponse.fromJson(core.Map json_)
    : this(
        integrationVersion:
            json_.containsKey('integrationVersion')
                ? GoogleCloudIntegrationsV1alphaIntegrationVersion.fromJson(
                  json_['integrationVersion']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        subIntegrationVersions:
            (json_['subIntegrationVersions'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudIntegrationsV1alphaIntegrationVersion.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (integrationVersion != null) 'integrationVersion': integrationVersion!,
    if (subIntegrationVersions != null)
      'subIntegrationVersions': subIntegrationVersions!,
  };
}

/// This message only contains a field of integer array.
class GoogleCloudIntegrationsV1alphaIntParameterArray {
  /// Integer array.
  core.List<core.String>? intValues;

  GoogleCloudIntegrationsV1alphaIntParameterArray({this.intValues});

  GoogleCloudIntegrationsV1alphaIntParameterArray.fromJson(core.Map json_)
    : this(
        intValues:
            (json_['intValues'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (intValues != null) 'intValues': intValues!,
  };
}

/// The integration definition.
class GoogleCloudIntegrationsV1alphaIntegration {
  /// If any integration version is published.
  ///
  /// Required.
  core.bool? active;

  /// Auto-generated.
  ///
  /// Required. Output only.
  core.String? createTime;

  /// The creator's email address.
  ///
  /// Generated based on the End User Credentials/LOAS role of the user making
  /// the call.
  ///
  /// Output only.
  core.String? creatorEmail;

  /// Optional.
  core.String? description;

  /// The last modifier of this integration
  ///
  /// Required.
  core.String? lastModifierEmail;

  /// The resource name of the integration.
  ///
  /// Required.
  core.String? name;

  /// Auto-generated.
  ///
  /// Output only.
  core.String? updateTime;

  GoogleCloudIntegrationsV1alphaIntegration({
    this.active,
    this.createTime,
    this.creatorEmail,
    this.description,
    this.lastModifierEmail,
    this.name,
    this.updateTime,
  });

  GoogleCloudIntegrationsV1alphaIntegration.fromJson(core.Map json_)
    : this(
        active: json_['active'] as core.bool?,
        createTime: json_['createTime'] as core.String?,
        creatorEmail: json_['creatorEmail'] as core.String?,
        description: json_['description'] as core.String?,
        lastModifierEmail: json_['lastModifierEmail'] as core.String?,
        name: json_['name'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (active != null) 'active': active!,
    if (createTime != null) 'createTime': createTime!,
    if (creatorEmail != null) 'creatorEmail': creatorEmail!,
    if (description != null) 'description': description!,
    if (lastModifierEmail != null) 'lastModifierEmail': lastModifierEmail!,
    if (name != null) 'name': name!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// Message to be used to configure custom alerting in the {@code EventConfig}
/// protos for an event.
class GoogleCloudIntegrationsV1alphaIntegrationAlertConfig {
  /// The period over which the metric value should be aggregated and evaluated.
  ///
  /// Format is , where integer should be a positive integer and unit should be
  /// one of (s,m,h,d,w) meaning (second, minute, hour, day, week). For an
  /// EXPECTED_MIN threshold, this aggregation_period must be lesser than 24
  /// hours.
  core.String? aggregationPeriod;

  /// For how many contiguous aggregation periods should the expected min or max
  /// be violated for the alert to be fired.
  core.int? alertThreshold;

  /// Set to false by default.
  ///
  /// When set to true, the metrics are not aggregated or pushed to Monarch for
  /// this integration alert.
  core.bool? disableAlert;

  /// Name of the alert.
  ///
  /// This will be displayed in the alert subject. If set, this name should be
  /// unique within the scope of the integration.
  core.String? displayName;

  /// Should be specified only for *AVERAGE_DURATION and *PERCENTILE_DURATION
  /// metrics.
  ///
  /// This member should be used to specify what duration value the metrics
  /// should exceed for the alert to trigger.
  core.String? durationThreshold;

  /// The type of metric.
  /// Possible string values are:
  /// - "METRIC_TYPE_UNSPECIFIED" : The default value. Metric type should always
  /// be set to one of the other non-default values, otherwise it will result in
  /// an INVALID_ARGUMENT error.
  /// - "EVENT_ERROR_RATE" : Specifies alerting on the rate of errors for the
  /// enclosing integration.
  /// - "EVENT_WARNING_RATE" : Specifies alerting on the rate of warnings for
  /// the enclosing integration. Warnings use the same enum values as errors.
  /// - "TASK_ERROR_RATE" : Specifies alerting on the rate of errors for any
  /// task in the enclosing integration.
  /// - "TASK_WARNING_RATE" : Specifies alerting on the rate of warnings for any
  /// task in the enclosing integration.
  /// - "TASK_RATE" : Specifies alerting on the rate of executions over all
  /// tasks in the enclosing integration.
  /// - "EVENT_RATE" : Specifies alerting on the number of events executed in
  /// the given aggregation_period.
  /// - "EVENT_AVERAGE_DURATION" : Specifies alerting on the average duration of
  /// executions for this integration.
  /// - "EVENT_PERCENTILE_DURATION" : Specifies alerting on the duration value
  /// of a particular percentile of integration executions. E.g. If 10% or more
  /// of the integration executions have durations above 5 seconds, alert.
  /// - "TASK_AVERAGE_DURATION" : Specifies alerting on the average duration of
  /// any task in the enclosing integration,
  /// - "TASK_PERCENTILE_DURATION" : Specifies alerting on the duration value of
  /// a particular percentile of any task executions within the enclosing
  /// integration. E.g. If 10% or more of the task executions in the integration
  /// have durations above 5 seconds, alert.
  core.String? metricType;

  /// For either events or tasks, depending on the type of alert, count only
  /// final attempts, not retries.
  core.bool? onlyFinalAttempt;

  /// The threshold type, whether lower(expected_min) or upper(expected_max),
  /// for which this alert is being configured.
  ///
  /// If value falls below expected_min or exceeds expected_max, an alert will
  /// be fired.
  /// Possible string values are:
  /// - "THRESHOLD_TYPE_UNSPECIFIED" : Default.
  /// - "EXPECTED_MIN" : Note that this field will only trigger alerts if the
  /// integration specifying it runs at least once in 24 hours (which is our
  /// in-memory retention period for monarch streams). Also note that
  /// `aggregation_period` for this alert configuration must be less than 24
  /// hours. Min value threshold.
  /// - "EXPECTED_MAX" : Max value threshold.
  core.String? thresholdType;

  /// The metric value, above or below which the alert should be triggered.
  GoogleCloudIntegrationsV1alphaIntegrationAlertConfigThresholdValue?
  thresholdValue;

  GoogleCloudIntegrationsV1alphaIntegrationAlertConfig({
    this.aggregationPeriod,
    this.alertThreshold,
    this.disableAlert,
    this.displayName,
    this.durationThreshold,
    this.metricType,
    this.onlyFinalAttempt,
    this.thresholdType,
    this.thresholdValue,
  });

  GoogleCloudIntegrationsV1alphaIntegrationAlertConfig.fromJson(core.Map json_)
    : this(
        aggregationPeriod: json_['aggregationPeriod'] as core.String?,
        alertThreshold: json_['alertThreshold'] as core.int?,
        disableAlert: json_['disableAlert'] as core.bool?,
        displayName: json_['displayName'] as core.String?,
        durationThreshold: json_['durationThreshold'] as core.String?,
        metricType: json_['metricType'] as core.String?,
        onlyFinalAttempt: json_['onlyFinalAttempt'] as core.bool?,
        thresholdType: json_['thresholdType'] as core.String?,
        thresholdValue:
            json_.containsKey('thresholdValue')
                ? GoogleCloudIntegrationsV1alphaIntegrationAlertConfigThresholdValue.fromJson(
                  json_['thresholdValue']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (aggregationPeriod != null) 'aggregationPeriod': aggregationPeriod!,
    if (alertThreshold != null) 'alertThreshold': alertThreshold!,
    if (disableAlert != null) 'disableAlert': disableAlert!,
    if (displayName != null) 'displayName': displayName!,
    if (durationThreshold != null) 'durationThreshold': durationThreshold!,
    if (metricType != null) 'metricType': metricType!,
    if (onlyFinalAttempt != null) 'onlyFinalAttempt': onlyFinalAttempt!,
    if (thresholdType != null) 'thresholdType': thresholdType!,
    if (thresholdValue != null) 'thresholdValue': thresholdValue!,
  };
}

/// The threshold value of the metric, above or below which the alert should be
/// triggered.
///
/// See EventAlertConfig or TaskAlertConfig for the different alert metric types
/// in each case. For the *RATE metrics, one or both of these fields may be set.
/// Zero is the default value and can be left at that. For *PERCENTILE_DURATION
/// metrics, one or both of these fields may be set, and also, the duration
/// threshold value should be specified in the threshold_duration_ms member
/// below. For *AVERAGE_DURATION metrics, these fields should not be set at all.
/// A different member, threshold_duration_ms, must be set in the
/// EventAlertConfig or the TaskAlertConfig.
class GoogleCloudIntegrationsV1alphaIntegrationAlertConfigThresholdValue {
  /// Absolute value threshold.
  core.String? absolute;

  /// Percentage threshold.
  core.int? percentage;

  GoogleCloudIntegrationsV1alphaIntegrationAlertConfigThresholdValue({
    this.absolute,
    this.percentage,
  });

  GoogleCloudIntegrationsV1alphaIntegrationAlertConfigThresholdValue.fromJson(
    core.Map json_,
  ) : this(
        absolute: json_['absolute'] as core.String?,
        percentage: json_['percentage'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (absolute != null) 'absolute': absolute!,
    if (percentage != null) 'percentage': percentage!,
  };
}

/// Integration Config Parameter is defined in the integration config and are
/// used to provide external configuration for integration.
///
/// It provide information about data types of the expected parameters and
/// provide any default values or value. They can also be used to add custom
/// attributes.
class GoogleCloudIntegrationsV1alphaIntegrationConfigParameter {
  /// Integration Parameter to provide the default value, data type and
  /// attributes required for the Integration config variables.
  ///
  /// Optional.
  GoogleCloudIntegrationsV1alphaIntegrationParameter? parameter;

  /// Values for the defined keys.
  ///
  /// Each value can either be string, int, double or any proto message or a
  /// serialized object.
  GoogleCloudIntegrationsV1alphaValueType? value;

  GoogleCloudIntegrationsV1alphaIntegrationConfigParameter({
    this.parameter,
    this.value,
  });

  GoogleCloudIntegrationsV1alphaIntegrationConfigParameter.fromJson(
    core.Map json_,
  ) : this(
        parameter:
            json_.containsKey('parameter')
                ? GoogleCloudIntegrationsV1alphaIntegrationParameter.fromJson(
                  json_['parameter'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        value:
            json_.containsKey('value')
                ? GoogleCloudIntegrationsV1alphaValueType.fromJson(
                  json_['value'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (parameter != null) 'parameter': parameter!,
    if (value != null) 'value': value!,
  };
}

/// Integration Parameter is defined in the integration config and are used to
/// provide information about data types of the expected parameters and provide
/// any default values if needed.
///
/// They can also be used to add custom attributes. These are static in nature
/// and should not be used for dynamic event definition.
class GoogleCloudIntegrationsV1alphaIntegrationParameter {
  /// Indicates whether this variable contains large data and need to be
  /// uploaded to Cloud Storage.
  core.bool? containsLargeData;

  /// Type of the parameter.
  /// Possible string values are:
  /// - "INTEGRATION_PARAMETER_DATA_TYPE_UNSPECIFIED" : Unspecified.
  /// - "STRING_VALUE" : String.
  /// - "INT_VALUE" : Integer.
  /// - "DOUBLE_VALUE" : Double Number.
  /// - "BOOLEAN_VALUE" : Boolean.
  /// - "STRING_ARRAY" : String Array.
  /// - "INT_ARRAY" : Integer Array.
  /// - "DOUBLE_ARRAY" : Double Number Array.
  /// - "BOOLEAN_ARRAY" : Boolean Array.
  /// - "JSON_VALUE" : Json.
  /// - "PROTO_VALUE" : Proto Value (Internal use only).
  /// - "PROTO_ARRAY" : Proto Array (Internal use only).
  /// - "NON_SERIALIZABLE_OBJECT" : // Non-serializable object (Internal use
  /// only).
  /// - "PROTO_ENUM" : Proto Enum (Internal use only).
  /// - "SERIALIZED_OBJECT_VALUE" : Serialized object (Internal use only).
  /// - "PROTO_ENUM_ARRAY" : Proto Enum Array (Internal use only).
  /// - "BYTES" : BYTES data types are not allowed for top-level params. They're
  /// only meant to support protobufs with BYTES (sub)fields.
  /// - "BYTES_ARRAY" : BYTES_ARRAY data types are not allowed for top-level
  /// params. They're only meant to support protobufs with BYTES (sub)fields.
  core.String? dataType;

  /// Default values for the defined keys.
  ///
  /// Each value can either be string, int, double or any proto message or a
  /// serialized object.
  GoogleCloudIntegrationsV1alphaValueType? defaultValue;

  /// Description of the parameter.
  ///
  /// Optional.
  core.String? description;

  /// The name (without prefix) to be displayed in the UI for this parameter.
  ///
  /// E.g. if the key is "foo.bar.myName", then the name would be "myName".
  core.String? displayName;

  /// Specifies the input/output type for the parameter.
  /// Possible string values are:
  /// - "IN_OUT_TYPE_UNSPECIFIED" : Default.
  /// - "IN" : Input parameters for the integration. EventBus validates that
  /// these parameters exist in the integrations before execution.
  /// - "OUT" : Output Parameters for the integration. EventBus will only return
  /// the integration parameters tagged with OUT in the response back.
  /// - "IN_OUT" : Input and Output Parameters. These can be used as both input
  /// and output. EventBus will validate for the existence of these parameters
  /// before execution and will also return this parameter back in the response.
  core.String? inputOutputType;

  /// Whether this parameter is a transient parameter.
  core.bool? isTransient;

  /// This schema will be used to validate runtime JSON-typed values of this
  /// parameter.
  core.String? jsonSchema;

  /// Key is used to retrieve the corresponding parameter value.
  ///
  /// This should be unique for a given fired event. These parameters must be
  /// predefined in the integration definition.
  core.String? key;

  /// True if this parameter should be masked in the logs
  core.bool? masked;

  /// The identifier of the node (TaskConfig/TriggerConfig) this parameter was
  /// produced by, if it is a transient param or a copy of an input param.
  core.String? producer;

  /// Searchable in the execution log or not.
  core.bool? searchable;

  GoogleCloudIntegrationsV1alphaIntegrationParameter({
    this.containsLargeData,
    this.dataType,
    this.defaultValue,
    this.description,
    this.displayName,
    this.inputOutputType,
    this.isTransient,
    this.jsonSchema,
    this.key,
    this.masked,
    this.producer,
    this.searchable,
  });

  GoogleCloudIntegrationsV1alphaIntegrationParameter.fromJson(core.Map json_)
    : this(
        containsLargeData: json_['containsLargeData'] as core.bool?,
        dataType: json_['dataType'] as core.String?,
        defaultValue:
            json_.containsKey('defaultValue')
                ? GoogleCloudIntegrationsV1alphaValueType.fromJson(
                  json_['defaultValue'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        description: json_['description'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        inputOutputType: json_['inputOutputType'] as core.String?,
        isTransient: json_['isTransient'] as core.bool?,
        jsonSchema: json_['jsonSchema'] as core.String?,
        key: json_['key'] as core.String?,
        masked: json_['masked'] as core.bool?,
        producer: json_['producer'] as core.String?,
        searchable: json_['searchable'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (containsLargeData != null) 'containsLargeData': containsLargeData!,
    if (dataType != null) 'dataType': dataType!,
    if (defaultValue != null) 'defaultValue': defaultValue!,
    if (description != null) 'description': description!,
    if (displayName != null) 'displayName': displayName!,
    if (inputOutputType != null) 'inputOutputType': inputOutputType!,
    if (isTransient != null) 'isTransient': isTransient!,
    if (jsonSchema != null) 'jsonSchema': jsonSchema!,
    if (key != null) 'key': key!,
    if (masked != null) 'masked': masked!,
    if (producer != null) 'producer': producer!,
    if (searchable != null) 'searchable': searchable!,
  };
}

/// The integration version definition.
class GoogleCloudIntegrationsV1alphaIntegrationVersion {
  /// Cloud KMS resource name for the CMEK encryption key.
  ///
  /// Optional.
  core.String? cloudKmsKey;

  /// Cloud Logging details for the integration version
  ///
  /// Optional.
  GoogleCloudIntegrationsV1alphaCloudLoggingDetails? cloudLoggingDetails;

  /// Auto-generated.
  ///
  /// Output only.
  core.String? createTime;

  /// The resource name of the template from which the integration is created.
  ///
  /// Optional.
  core.String? createdFromTemplate;

  /// Flag to disable database persistence for execution data, including event
  /// execution info, execution export info, execution metadata index and
  /// execution param index.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "DATABASE_PERSISTENCE_POLICY_UNSPECIFIED" : Enables persistence for all
  /// execution data.
  /// - "DATABASE_PERSISTENCE_DISABLED" : Disables persistence for all execution
  /// data.
  /// - "DATABASE_PERSISTENCE_ASYNC" : Asynchronously persist all execution
  /// data.
  core.String? databasePersistencePolicy;

  /// The integration description.
  ///
  /// Optional.
  core.String? description;

  /// True if variable masking feature should be turned on for this version
  ///
  /// Optional.
  core.bool? enableVariableMasking;

  /// Error Catch Task configuration for the integration.
  ///
  /// It's optional.
  ///
  /// Optional.
  core.List<GoogleCloudIntegrationsV1alphaErrorCatcherConfig>?
  errorCatcherConfigs;

  /// Config Parameters that are expected to be passed to the integration when
  /// an integration is published.
  ///
  /// This consists of all the parameters that are expected to provide
  /// configuration in the integration execution. This gives the user the
  /// ability to provide default values, value, add information like connection
  /// url, project based configuration value and also provide data types of each
  /// parameter.
  ///
  /// Optional.
  core.List<GoogleCloudIntegrationsV1alphaIntegrationConfigParameter>?
  integrationConfigParameters;

  /// Parameters that are expected to be passed to the integration when an event
  /// is triggered.
  ///
  /// This consists of all the parameters that are expected in the integration
  /// execution. This gives the user the ability to provide default values, add
  /// information like PII and also provide data types of each parameter.
  ///
  /// Optional.
  core.List<GoogleCloudIntegrationsV1alphaIntegrationParameter>?
  integrationParameters;

  /// Parameters that are expected to be passed to the integration when an event
  /// is triggered.
  ///
  /// This consists of all the parameters that are expected in the integration
  /// execution. This gives the user the ability to provide default values, add
  /// information like PII and also provide data types of each parameter.
  ///
  /// Optional.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  EnterpriseCrmFrontendsEventbusProtoWorkflowParameters?
  integrationParametersInternal;

  /// The last modifier's email address.
  ///
  /// Generated based on the End User Credentials/LOAS role of the user making
  /// the call.
  ///
  /// Optional.
  core.String? lastModifierEmail;

  /// The edit lock holder's email address.
  ///
  /// Generated based on the End User Credentials/LOAS role of the user making
  /// the call.
  ///
  /// Optional.
  core.String? lockHolder;

  /// Auto-generated primary key.
  ///
  /// Output only.
  core.String? name;

  /// The origin that indicates where this integration is coming from.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "UNSPECIFIED"
  /// - "UI" : Workflow is being created via event bus UI.
  /// - "PIPER_V2" : User checked in this workflow in Piper as v2 textproto
  /// format and we synced it into spanner.
  /// - "PIPER_V3" : User checked in this workflow in piper as v3 textproto
  /// format and we synced it into spanner.
  /// - "APPLICATION_IP_PROVISIONING" : Workflow is being created via Standalone
  /// IP Provisioning
  /// - "TEST_CASE" : Workflow is being created via Test Case.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? origin;

  /// The id of the template which was used to create this integration_version.
  ///
  /// Optional.
  core.String? parentTemplateId;

  /// The run-as service account email, if set and auth config is not
  /// configured, that will be used to generate auth token to be used in
  /// Connector task, Rest caller task and Cloud function task.
  ///
  /// Optional.
  core.String? runAsServiceAccount;

  /// An increasing sequence that is set when a new snapshot is created.
  ///
  /// The last created snapshot can be identified by \[workflow_name, org_id
  /// latest(snapshot_number)\]. However, last created snapshot need not be same
  /// as the HEAD. So users should always use "HEAD" tag to identify the head.
  ///
  /// Output only.
  core.String? snapshotNumber;

  /// User should not set it as an input.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "INTEGRATION_STATE_UNSPECIFIED" : Default.
  /// - "DRAFT" : Draft.
  /// - "ACTIVE" : Active.
  /// - "ARCHIVED" : Archived.
  /// - "SNAPSHOT" : Snapshot.
  core.String? state;

  /// Generated by eventbus.
  ///
  /// User should not set it as an input.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "UNKNOWN"
  /// - "DRAFT"
  /// - "ACTIVE"
  /// - "ARCHIVED"
  /// - "SNAPSHOT"
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? status;

  /// Task configuration for the integration.
  ///
  /// It's optional, but the integration doesn't do anything without
  /// task_configs.
  ///
  /// Optional.
  core.List<GoogleCloudIntegrationsV1alphaTaskConfig>? taskConfigs;

  /// Task configuration for the integration.
  ///
  /// It's optional, but the integration doesn't do anything without
  /// task_configs.
  ///
  /// Optional.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.List<EnterpriseCrmFrontendsEventbusProtoTaskConfig>? taskConfigsInternal;

  /// Contains a graph of tasks that will be executed before putting the event
  /// in a terminal state (SUCCEEDED/FAILED/FATAL), regardless of success or
  /// failure, similar to "finally" in code.
  ///
  /// Optional.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  EnterpriseCrmEventbusProtoTeardown? teardown;

  /// Trigger configurations.
  ///
  /// Optional.
  core.List<GoogleCloudIntegrationsV1alphaTriggerConfig>? triggerConfigs;

  /// Trigger configurations.
  ///
  /// Optional.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.List<EnterpriseCrmFrontendsEventbusProtoTriggerConfig>?
  triggerConfigsInternal;

  /// Auto-generated.
  ///
  /// Output only.
  core.String? updateTime;

  /// A user-defined label that annotates an integration version.
  ///
  /// Typically, this is only set when the integration version is created.
  ///
  /// Optional.
  core.String? userLabel;

  GoogleCloudIntegrationsV1alphaIntegrationVersion({
    this.cloudKmsKey,
    this.cloudLoggingDetails,
    this.createTime,
    this.createdFromTemplate,
    this.databasePersistencePolicy,
    this.description,
    this.enableVariableMasking,
    this.errorCatcherConfigs,
    this.integrationConfigParameters,
    this.integrationParameters,
    this.integrationParametersInternal,
    this.lastModifierEmail,
    this.lockHolder,
    this.name,
    this.origin,
    this.parentTemplateId,
    this.runAsServiceAccount,
    this.snapshotNumber,
    this.state,
    this.status,
    this.taskConfigs,
    this.taskConfigsInternal,
    this.teardown,
    this.triggerConfigs,
    this.triggerConfigsInternal,
    this.updateTime,
    this.userLabel,
  });

  GoogleCloudIntegrationsV1alphaIntegrationVersion.fromJson(core.Map json_)
    : this(
        cloudKmsKey: json_['cloudKmsKey'] as core.String?,
        cloudLoggingDetails:
            json_.containsKey('cloudLoggingDetails')
                ? GoogleCloudIntegrationsV1alphaCloudLoggingDetails.fromJson(
                  json_['cloudLoggingDetails']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        createTime: json_['createTime'] as core.String?,
        createdFromTemplate: json_['createdFromTemplate'] as core.String?,
        databasePersistencePolicy:
            json_['databasePersistencePolicy'] as core.String?,
        description: json_['description'] as core.String?,
        enableVariableMasking: json_['enableVariableMasking'] as core.bool?,
        errorCatcherConfigs:
            (json_['errorCatcherConfigs'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudIntegrationsV1alphaErrorCatcherConfig.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        integrationConfigParameters:
            (json_['integrationConfigParameters'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudIntegrationsV1alphaIntegrationConfigParameter.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        integrationParameters:
            (json_['integrationParameters'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudIntegrationsV1alphaIntegrationParameter.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        integrationParametersInternal:
            json_.containsKey('integrationParametersInternal')
                ? EnterpriseCrmFrontendsEventbusProtoWorkflowParameters.fromJson(
                  json_['integrationParametersInternal']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        lastModifierEmail: json_['lastModifierEmail'] as core.String?,
        lockHolder: json_['lockHolder'] as core.String?,
        name: json_['name'] as core.String?,
        origin: json_['origin'] as core.String?,
        parentTemplateId: json_['parentTemplateId'] as core.String?,
        runAsServiceAccount: json_['runAsServiceAccount'] as core.String?,
        snapshotNumber: json_['snapshotNumber'] as core.String?,
        state: json_['state'] as core.String?,
        status: json_['status'] as core.String?,
        taskConfigs:
            (json_['taskConfigs'] as core.List?)
                ?.map(
                  (value) => GoogleCloudIntegrationsV1alphaTaskConfig.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        taskConfigsInternal:
            (json_['taskConfigsInternal'] as core.List?)
                ?.map(
                  (value) =>
                      EnterpriseCrmFrontendsEventbusProtoTaskConfig.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        teardown:
            json_.containsKey('teardown')
                ? EnterpriseCrmEventbusProtoTeardown.fromJson(
                  json_['teardown'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        triggerConfigs:
            (json_['triggerConfigs'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudIntegrationsV1alphaTriggerConfig.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        triggerConfigsInternal:
            (json_['triggerConfigsInternal'] as core.List?)
                ?.map(
                  (value) =>
                      EnterpriseCrmFrontendsEventbusProtoTriggerConfig.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        updateTime: json_['updateTime'] as core.String?,
        userLabel: json_['userLabel'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (cloudKmsKey != null) 'cloudKmsKey': cloudKmsKey!,
    if (cloudLoggingDetails != null)
      'cloudLoggingDetails': cloudLoggingDetails!,
    if (createTime != null) 'createTime': createTime!,
    if (createdFromTemplate != null)
      'createdFromTemplate': createdFromTemplate!,
    if (databasePersistencePolicy != null)
      'databasePersistencePolicy': databasePersistencePolicy!,
    if (description != null) 'description': description!,
    if (enableVariableMasking != null)
      'enableVariableMasking': enableVariableMasking!,
    if (errorCatcherConfigs != null)
      'errorCatcherConfigs': errorCatcherConfigs!,
    if (integrationConfigParameters != null)
      'integrationConfigParameters': integrationConfigParameters!,
    if (integrationParameters != null)
      'integrationParameters': integrationParameters!,
    if (integrationParametersInternal != null)
      'integrationParametersInternal': integrationParametersInternal!,
    if (lastModifierEmail != null) 'lastModifierEmail': lastModifierEmail!,
    if (lockHolder != null) 'lockHolder': lockHolder!,
    if (name != null) 'name': name!,
    if (origin != null) 'origin': origin!,
    if (parentTemplateId != null) 'parentTemplateId': parentTemplateId!,
    if (runAsServiceAccount != null)
      'runAsServiceAccount': runAsServiceAccount!,
    if (snapshotNumber != null) 'snapshotNumber': snapshotNumber!,
    if (state != null) 'state': state!,
    if (status != null) 'status': status!,
    if (taskConfigs != null) 'taskConfigs': taskConfigs!,
    if (taskConfigsInternal != null)
      'taskConfigsInternal': taskConfigsInternal!,
    if (teardown != null) 'teardown': teardown!,
    if (triggerConfigs != null) 'triggerConfigs': triggerConfigs!,
    if (triggerConfigsInternal != null)
      'triggerConfigsInternal': triggerConfigsInternal!,
    if (updateTime != null) 'updateTime': updateTime!,
    if (userLabel != null) 'userLabel': userLabel!,
  };
}

/// Define the template of IntegrationVersion.
class GoogleCloudIntegrationsV1alphaIntegrationVersionTemplate {
  /// Templatized version of integration.
  ///
  /// Required.
  GoogleCloudIntegrationsV1alphaIntegrationVersion? integrationVersion;

  /// Unique Key of the IntegrationVersion.
  ///
  /// Required.
  core.String? key;

  GoogleCloudIntegrationsV1alphaIntegrationVersionTemplate({
    this.integrationVersion,
    this.key,
  });

  GoogleCloudIntegrationsV1alphaIntegrationVersionTemplate.fromJson(
    core.Map json_,
  ) : this(
        integrationVersion:
            json_.containsKey('integrationVersion')
                ? GoogleCloudIntegrationsV1alphaIntegrationVersion.fromJson(
                  json_['integrationVersion']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        key: json_['key'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (integrationVersion != null) 'integrationVersion': integrationVersion!,
    if (key != null) 'key': key!,
  };
}

/// Represents JSON web token(JWT), which is a compact, URL-safe means of
/// representing claims to be transferred between two parties, enabling the
/// claims to be digitally signed or integrity protected.
class GoogleCloudIntegrationsV1alphaJwt {
  /// The token calculated by the header, payload and signature.
  core.String? jwt;

  /// Identifies which algorithm is used to generate the signature.
  core.String? jwtHeader;

  /// Contains a set of claims.
  ///
  /// The JWT specification defines seven Registered Claim Names which are the
  /// standard fields commonly included in tokens. Custom claims are usually
  /// also included, depending on the purpose of the token.
  core.String? jwtPayload;

  /// User's pre-shared secret to sign the token.
  core.String? secret;

  GoogleCloudIntegrationsV1alphaJwt({
    this.jwt,
    this.jwtHeader,
    this.jwtPayload,
    this.secret,
  });

  GoogleCloudIntegrationsV1alphaJwt.fromJson(core.Map json_)
    : this(
        jwt: json_['jwt'] as core.String?,
        jwtHeader: json_['jwtHeader'] as core.String?,
        jwtPayload: json_['jwtPayload'] as core.String?,
        secret: json_['secret'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (jwt != null) 'jwt': jwt!,
    if (jwtHeader != null) 'jwtHeader': jwtHeader!,
    if (jwtPayload != null) 'jwtPayload': jwtPayload!,
    if (secret != null) 'secret': secret!,
  };
}

/// Request for lift Suspension
class GoogleCloudIntegrationsV1alphaLiftSuspensionRequest {
  /// User passed in suspension result and will be used to control workflow
  /// execution branching behavior by setting up corresponnding edge condition
  /// with suspension result.
  ///
  /// For example, if you want to lift the suspension, you can pass "Approved",
  /// or if you want to reject the suspension and terminate workfloe execution,
  /// you can pass "Rejected" and terminate the workflow execution with
  /// configuring the edge condition.
  core.String? suspensionResult;

  GoogleCloudIntegrationsV1alphaLiftSuspensionRequest({this.suspensionResult});

  GoogleCloudIntegrationsV1alphaLiftSuspensionRequest.fromJson(core.Map json_)
    : this(suspensionResult: json_['suspensionResult'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (suspensionResult != null) 'suspensionResult': suspensionResult!,
  };
}

/// Response of lift Suspense
class GoogleCloudIntegrationsV1alphaLiftSuspensionResponse {
  /// Execution Id that will be returned
  core.String? eventExecutionInfoId;

  GoogleCloudIntegrationsV1alphaLiftSuspensionResponse({
    this.eventExecutionInfoId,
  });

  GoogleCloudIntegrationsV1alphaLiftSuspensionResponse.fromJson(core.Map json_)
    : this(eventExecutionInfoId: json_['eventExecutionInfoId'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (eventExecutionInfoId != null)
      'eventExecutionInfoId': eventExecutionInfoId!,
  };
}

/// Request for LinkAppsScriptProject rpc call.
class GoogleCloudIntegrationsV1alphaLinkAppsScriptProjectRequest {
  /// The id of the Apps Script project to be linked.
  core.String? scriptId;

  GoogleCloudIntegrationsV1alphaLinkAppsScriptProjectRequest({this.scriptId});

  GoogleCloudIntegrationsV1alphaLinkAppsScriptProjectRequest.fromJson(
    core.Map json_,
  ) : this(scriptId: json_['scriptId'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (scriptId != null) 'scriptId': scriptId!,
  };
}

/// Response for LinkAppsScriptProject rpc call.
class GoogleCloudIntegrationsV1alphaLinkAppsScriptProjectResponse {
  /// The id of the linked Apps Script project.
  core.String? scriptId;

  GoogleCloudIntegrationsV1alphaLinkAppsScriptProjectResponse({this.scriptId});

  GoogleCloudIntegrationsV1alphaLinkAppsScriptProjectResponse.fromJson(
    core.Map json_,
  ) : this(scriptId: json_['scriptId'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (scriptId != null) 'scriptId': scriptId!,
  };
}

/// Response to list AuthConfigs.
class GoogleCloudIntegrationsV1alphaListAuthConfigsResponse {
  /// The list of AuthConfigs retrieved.
  core.List<GoogleCloudIntegrationsV1alphaAuthConfig>? authConfigs;

  /// The token used to retrieve the next page of results.
  core.String? nextPageToken;

  GoogleCloudIntegrationsV1alphaListAuthConfigsResponse({
    this.authConfigs,
    this.nextPageToken,
  });

  GoogleCloudIntegrationsV1alphaListAuthConfigsResponse.fromJson(core.Map json_)
    : this(
        authConfigs:
            (json_['authConfigs'] as core.List?)
                ?.map(
                  (value) => GoogleCloudIntegrationsV1alphaAuthConfig.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (authConfigs != null) 'authConfigs': authConfigs!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// Response to list Certificates.
class GoogleCloudIntegrationsV1alphaListCertificatesResponse {
  /// The list of Certificates retrieved.
  core.List<GoogleCloudIntegrationsV1alphaCertificate>? certificates;

  /// The token used to retrieve the next page of results.
  core.String? nextPageToken;

  GoogleCloudIntegrationsV1alphaListCertificatesResponse({
    this.certificates,
    this.nextPageToken,
  });

  GoogleCloudIntegrationsV1alphaListCertificatesResponse.fromJson(
    core.Map json_,
  ) : this(
        certificates:
            (json_['certificates'] as core.List?)
                ?.map(
                  (value) => GoogleCloudIntegrationsV1alphaCertificate.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (certificates != null) 'certificates': certificates!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// Response containing Connections listed by region.
class GoogleCloudIntegrationsV1alphaListConnectionsResponse {
  /// Connections.
  core.List<GoogleCloudConnectorsV1Connection>? connections;

  /// Next page token.
  core.String? nextPageToken;

  GoogleCloudIntegrationsV1alphaListConnectionsResponse({
    this.connections,
    this.nextPageToken,
  });

  GoogleCloudIntegrationsV1alphaListConnectionsResponse.fromJson(core.Map json_)
    : this(
        connections:
            (json_['connections'] as core.List?)
                ?.map(
                  (value) => GoogleCloudConnectorsV1Connection.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (connections != null) 'connections': connections!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// Response for listing the integration execution data.
class GoogleCloudIntegrationsV1alphaListExecutionsResponse {
  /// The detailed information of requested executions.
  ///
  /// Required.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.List<EnterpriseCrmFrontendsEventbusProtoEventExecutionInfo>?
  executionInfos;

  /// The detailed information of requested executions
  core.List<GoogleCloudIntegrationsV1alphaExecution>? executions;

  /// The token used to retrieve the next page results.
  core.String? nextPageToken;

  GoogleCloudIntegrationsV1alphaListExecutionsResponse({
    this.executionInfos,
    this.executions,
    this.nextPageToken,
  });

  GoogleCloudIntegrationsV1alphaListExecutionsResponse.fromJson(core.Map json_)
    : this(
        executionInfos:
            (json_['executionInfos'] as core.List?)
                ?.map(
                  (value) =>
                      EnterpriseCrmFrontendsEventbusProtoEventExecutionInfo.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        executions:
            (json_['executions'] as core.List?)
                ?.map(
                  (value) => GoogleCloudIntegrationsV1alphaExecution.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (executionInfos != null) 'executionInfos': executionInfos!,
    if (executions != null) 'executions': executions!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// Response for ListIntegrationVersions.
class GoogleCloudIntegrationsV1alphaListIntegrationVersionsResponse {
  /// The integrations which match the request.
  core.List<GoogleCloudIntegrationsV1alphaIntegrationVersion>?
  integrationVersions;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// Whether the user has no permission on the version or not.
  core.bool? noPermission;

  GoogleCloudIntegrationsV1alphaListIntegrationVersionsResponse({
    this.integrationVersions,
    this.nextPageToken,
    this.noPermission,
  });

  GoogleCloudIntegrationsV1alphaListIntegrationVersionsResponse.fromJson(
    core.Map json_,
  ) : this(
        integrationVersions:
            (json_['integrationVersions'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudIntegrationsV1alphaIntegrationVersion.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
        noPermission: json_['noPermission'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (integrationVersions != null)
      'integrationVersions': integrationVersions!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (noPermission != null) 'noPermission': noPermission!,
  };
}

/// Response for ListIntegrations.
class GoogleCloudIntegrationsV1alphaListIntegrationsResponse {
  /// The integrations which match the request.
  core.List<GoogleCloudIntegrationsV1alphaIntegration>? integrations;

  /// The next page token for the response.
  core.String? nextPageToken;

  GoogleCloudIntegrationsV1alphaListIntegrationsResponse({
    this.integrations,
    this.nextPageToken,
  });

  GoogleCloudIntegrationsV1alphaListIntegrationsResponse.fromJson(
    core.Map json_,
  ) : this(
        integrations:
            (json_['integrations'] as core.List?)
                ?.map(
                  (value) => GoogleCloudIntegrationsV1alphaIntegration.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (integrations != null) 'integrations': integrations!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// Response for listing RuntimeActionSchemas for a specific Connection.
class GoogleCloudIntegrationsV1alphaListRuntimeActionSchemasResponse {
  /// Next page token.
  core.String? nextPageToken;

  /// Runtime action schemas.
  core.List<GoogleCloudIntegrationsV1alphaRuntimeActionSchema>?
  runtimeActionSchemas;

  GoogleCloudIntegrationsV1alphaListRuntimeActionSchemasResponse({
    this.nextPageToken,
    this.runtimeActionSchemas,
  });

  GoogleCloudIntegrationsV1alphaListRuntimeActionSchemasResponse.fromJson(
    core.Map json_,
  ) : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        runtimeActionSchemas:
            (json_['runtimeActionSchemas'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudIntegrationsV1alphaRuntimeActionSchema.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (runtimeActionSchemas != null)
      'runtimeActionSchemas': runtimeActionSchemas!,
  };
}

/// Response for listing RuntimeEntitySchemas for a specific Connection.
class GoogleCloudIntegrationsV1alphaListRuntimeEntitySchemasResponse {
  /// Next page token.
  core.String? nextPageToken;

  /// Runtime entity schemas.
  core.List<GoogleCloudIntegrationsV1alphaRuntimeEntitySchema>?
  runtimeEntitySchemas;

  GoogleCloudIntegrationsV1alphaListRuntimeEntitySchemasResponse({
    this.nextPageToken,
    this.runtimeEntitySchemas,
  });

  GoogleCloudIntegrationsV1alphaListRuntimeEntitySchemasResponse.fromJson(
    core.Map json_,
  ) : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        runtimeEntitySchemas:
            (json_['runtimeEntitySchemas'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudIntegrationsV1alphaRuntimeEntitySchema.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (runtimeEntitySchemas != null)
      'runtimeEntitySchemas': runtimeEntitySchemas!,
  };
}

/// Response to list SfdcChannels.
class GoogleCloudIntegrationsV1alphaListSfdcChannelsResponse {
  /// The token used to retrieve the next page of results.
  core.String? nextPageToken;

  /// The list of SfdcChannels retrieved.
  core.List<GoogleCloudIntegrationsV1alphaSfdcChannel>? sfdcChannels;

  GoogleCloudIntegrationsV1alphaListSfdcChannelsResponse({
    this.nextPageToken,
    this.sfdcChannels,
  });

  GoogleCloudIntegrationsV1alphaListSfdcChannelsResponse.fromJson(
    core.Map json_,
  ) : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        sfdcChannels:
            (json_['sfdcChannels'] as core.List?)
                ?.map(
                  (value) => GoogleCloudIntegrationsV1alphaSfdcChannel.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (sfdcChannels != null) 'sfdcChannels': sfdcChannels!,
  };
}

/// Response to list SfdcInstances.
class GoogleCloudIntegrationsV1alphaListSfdcInstancesResponse {
  /// The token used to retrieve the next page of results.
  core.String? nextPageToken;

  /// The list of SfdcInstances retrieved.
  core.List<GoogleCloudIntegrationsV1alphaSfdcInstance>? sfdcInstances;

  GoogleCloudIntegrationsV1alphaListSfdcInstancesResponse({
    this.nextPageToken,
    this.sfdcInstances,
  });

  GoogleCloudIntegrationsV1alphaListSfdcInstancesResponse.fromJson(
    core.Map json_,
  ) : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        sfdcInstances:
            (json_['sfdcInstances'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudIntegrationsV1alphaSfdcInstance.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (sfdcInstances != null) 'sfdcInstances': sfdcInstances!,
  };
}

/// Response for Suspensions.ListSuspensions.
class GoogleCloudIntegrationsV1alphaListSuspensionsResponse {
  /// Token to retrieve the next page of results.
  core.String? nextPageToken;

  /// The suspensions for the relevant execution which the caller has
  /// permissions to view and resolve.
  core.List<GoogleCloudIntegrationsV1alphaSuspension>? suspensions;

  GoogleCloudIntegrationsV1alphaListSuspensionsResponse({
    this.nextPageToken,
    this.suspensions,
  });

  GoogleCloudIntegrationsV1alphaListSuspensionsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        suspensions:
            (json_['suspensions'] as core.List?)
                ?.map(
                  (value) => GoogleCloudIntegrationsV1alphaSuspension.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (suspensions != null) 'suspensions': suspensions!,
  };
}

/// Response for a request to list templates
class GoogleCloudIntegrationsV1alphaListTemplatesResponse {
  /// The token used to retrieve the next page results.
  core.String? nextPageToken;

  /// List of templates retrieved.
  core.List<GoogleCloudIntegrationsV1alphaTemplate>? templates;

  GoogleCloudIntegrationsV1alphaListTemplatesResponse({
    this.nextPageToken,
    this.templates,
  });

  GoogleCloudIntegrationsV1alphaListTemplatesResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        templates:
            (json_['templates'] as core.List?)
                ?.map(
                  (value) => GoogleCloudIntegrationsV1alphaTemplate.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (templates != null) 'templates': templates!,
  };
}

/// Response for ListTestCases
class GoogleCloudIntegrationsV1alphaListTestCasesResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// The test cases corresponding to the specified filter
  core.List<GoogleCloudIntegrationsV1alphaTestCase>? testCases;

  GoogleCloudIntegrationsV1alphaListTestCasesResponse({
    this.nextPageToken,
    this.testCases,
  });

  GoogleCloudIntegrationsV1alphaListTestCasesResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        testCases:
            (json_['testCases'] as core.List?)
                ?.map(
                  (value) => GoogleCloudIntegrationsV1alphaTestCase.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (testCases != null) 'testCases': testCases!,
  };
}

/// The configuration for mocking of a task during test execution Next available
/// id: 4
class GoogleCloudIntegrationsV1alphaMockConfig {
  /// Number of times the given task should fail for failure mock strategy
  ///
  /// Optional.
  core.String? failedExecutions;

  /// Mockstrategy defines how the particular task should be mocked during test
  /// execution
  /// Possible string values are:
  /// - "MOCK_STRATEGY_UNSPECIFIED" : This should never be used to annotate a
  /// field
  /// - "NO_MOCK_STRATEGY" : Execute actual task
  /// - "SPECIFIC_MOCK_STRATEGY" : Don't execute actual task, instead use the
  /// values specified by user for output of the task
  /// - "FAILURE_MOCK_STRATEGY" : Don't execute actual task, instead return task
  /// failure
  /// - "SKIP_MOCK_STRATEGY" : Don't execute actual task, instead mark it as
  /// successful
  core.String? mockStrategy;

  /// List of key-value pairs for specific mock strategy
  ///
  /// Optional.
  core.List<GoogleCloudIntegrationsV1alphaEventParameter>? parameters;

  GoogleCloudIntegrationsV1alphaMockConfig({
    this.failedExecutions,
    this.mockStrategy,
    this.parameters,
  });

  GoogleCloudIntegrationsV1alphaMockConfig.fromJson(core.Map json_)
    : this(
        failedExecutions: json_['failedExecutions'] as core.String?,
        mockStrategy: json_['mockStrategy'] as core.String?,
        parameters:
            (json_['parameters'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudIntegrationsV1alphaEventParameter.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (failedExecutions != null) 'failedExecutions': failedExecutions!,
    if (mockStrategy != null) 'mockStrategy': mockStrategy!,
    if (parameters != null) 'parameters': parameters!,
  };
}

/// The task that is next in line to be executed, if the condition specified
/// evaluated to true.
class GoogleCloudIntegrationsV1alphaNextTask {
  /// Standard filter expression for this task to become an eligible next task.
  core.String? condition;

  /// User-provided description intended to give additional business context
  /// about the task.
  core.String? description;

  /// User-provided label that is attached to this edge in the UI.
  core.String? displayName;

  /// ID of the next task.
  core.String? taskConfigId;

  /// Task number of the next task.
  core.String? taskId;

  GoogleCloudIntegrationsV1alphaNextTask({
    this.condition,
    this.description,
    this.displayName,
    this.taskConfigId,
    this.taskId,
  });

  GoogleCloudIntegrationsV1alphaNextTask.fromJson(core.Map json_)
    : this(
        condition: json_['condition'] as core.String?,
        description: json_['description'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        taskConfigId: json_['taskConfigId'] as core.String?,
        taskId: json_['taskId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (condition != null) 'condition': condition!,
    if (description != null) 'description': description!,
    if (displayName != null) 'displayName': displayName!,
    if (taskConfigId != null) 'taskConfigId': taskConfigId!,
    if (taskId != null) 'taskId': taskId!,
  };
}

/// The OAuth Type where the client sends request with the client id and
/// requested scopes to auth endpoint.
///
/// User sees a consent screen and auth code is received at specified redirect
/// url afterwards. The auth code is then combined with the client id and secret
/// and sent to the token endpoint in exchange for the access and refresh token.
/// The refresh token can be used to fetch new access tokens.
class GoogleCloudIntegrationsV1alphaOAuth2AuthorizationCode {
  /// The access token received from the token endpoint.
  GoogleCloudIntegrationsV1alphaAccessToken? accessToken;

  /// Indicates if the user has opted in Google Reauth Policy.
  ///
  /// If opted in, the refresh token will be valid for 20 hours, after which
  /// time users must re-authenticate in order to obtain a new one.
  core.bool? applyReauthPolicy;

  /// The Auth Code that is used to initially retrieve the access token.
  core.String? authCode;

  /// The auth url endpoint to send the auth code request to.
  core.String? authEndpoint;

  /// The auth parameters sent along with the auth code request.
  GoogleCloudIntegrationsV1alphaParameterMap? authParams;

  /// The client's id.
  core.String? clientId;

  /// The client's secret.
  core.String? clientSecret;

  /// Represent how to pass parameters to fetch access token
  /// Possible string values are:
  /// - "REQUEST_TYPE_UNSPECIFIED" : Unspecified request type
  /// - "REQUEST_BODY" : To pass all the parameters in post body.
  /// - "QUERY_PARAMETERS" : To pass all the parameters as a part of query
  /// parameter.
  /// - "ENCODED_HEADER" : To pass client id and client secret as base 64
  /// encoding of client_id:client_password and rest parameters in post body.
  core.String? requestType;

  /// A space-delimited list of requested scope permissions.
  core.String? scope;

  /// The token url endpoint to send the token request to.
  core.String? tokenEndpoint;

  /// The token parameters sent along with the token request.
  GoogleCloudIntegrationsV1alphaParameterMap? tokenParams;

  GoogleCloudIntegrationsV1alphaOAuth2AuthorizationCode({
    this.accessToken,
    this.applyReauthPolicy,
    this.authCode,
    this.authEndpoint,
    this.authParams,
    this.clientId,
    this.clientSecret,
    this.requestType,
    this.scope,
    this.tokenEndpoint,
    this.tokenParams,
  });

  GoogleCloudIntegrationsV1alphaOAuth2AuthorizationCode.fromJson(core.Map json_)
    : this(
        accessToken:
            json_.containsKey('accessToken')
                ? GoogleCloudIntegrationsV1alphaAccessToken.fromJson(
                  json_['accessToken'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        applyReauthPolicy: json_['applyReauthPolicy'] as core.bool?,
        authCode: json_['authCode'] as core.String?,
        authEndpoint: json_['authEndpoint'] as core.String?,
        authParams:
            json_.containsKey('authParams')
                ? GoogleCloudIntegrationsV1alphaParameterMap.fromJson(
                  json_['authParams'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        clientId: json_['clientId'] as core.String?,
        clientSecret: json_['clientSecret'] as core.String?,
        requestType: json_['requestType'] as core.String?,
        scope: json_['scope'] as core.String?,
        tokenEndpoint: json_['tokenEndpoint'] as core.String?,
        tokenParams:
            json_.containsKey('tokenParams')
                ? GoogleCloudIntegrationsV1alphaParameterMap.fromJson(
                  json_['tokenParams'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (accessToken != null) 'accessToken': accessToken!,
    if (applyReauthPolicy != null) 'applyReauthPolicy': applyReauthPolicy!,
    if (authCode != null) 'authCode': authCode!,
    if (authEndpoint != null) 'authEndpoint': authEndpoint!,
    if (authParams != null) 'authParams': authParams!,
    if (clientId != null) 'clientId': clientId!,
    if (clientSecret != null) 'clientSecret': clientSecret!,
    if (requestType != null) 'requestType': requestType!,
    if (scope != null) 'scope': scope!,
    if (tokenEndpoint != null) 'tokenEndpoint': tokenEndpoint!,
    if (tokenParams != null) 'tokenParams': tokenParams!,
  };
}

/// For client credentials grant, the client sends a POST request with
/// grant_type as 'client_credentials' to the authorization server.
///
/// The authorization server will respond with a JSON object containing the
/// access token.
class GoogleCloudIntegrationsV1alphaOAuth2ClientCredentials {
  /// Access token fetched from the authorization server.
  GoogleCloudIntegrationsV1alphaAccessToken? accessToken;

  /// The client's ID.
  core.String? clientId;

  /// The client's secret.
  core.String? clientSecret;

  /// Represent how to pass parameters to fetch access token
  /// Possible string values are:
  /// - "REQUEST_TYPE_UNSPECIFIED" : Unspecified request type
  /// - "REQUEST_BODY" : To pass all the parameters in post body.
  /// - "QUERY_PARAMETERS" : To pass all the parameters as a part of query
  /// parameter.
  /// - "ENCODED_HEADER" : To pass client id and client secret as base 64
  /// encoding of client_id:client_password and rest parameters in post body.
  core.String? requestType;

  /// A space-delimited list of requested scope permissions.
  core.String? scope;

  /// The token endpoint is used by the client to obtain an access token by
  /// presenting its authorization grant or refresh token.
  core.String? tokenEndpoint;

  /// Token parameters for the auth request.
  GoogleCloudIntegrationsV1alphaParameterMap? tokenParams;

  GoogleCloudIntegrationsV1alphaOAuth2ClientCredentials({
    this.accessToken,
    this.clientId,
    this.clientSecret,
    this.requestType,
    this.scope,
    this.tokenEndpoint,
    this.tokenParams,
  });

  GoogleCloudIntegrationsV1alphaOAuth2ClientCredentials.fromJson(core.Map json_)
    : this(
        accessToken:
            json_.containsKey('accessToken')
                ? GoogleCloudIntegrationsV1alphaAccessToken.fromJson(
                  json_['accessToken'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        clientId: json_['clientId'] as core.String?,
        clientSecret: json_['clientSecret'] as core.String?,
        requestType: json_['requestType'] as core.String?,
        scope: json_['scope'] as core.String?,
        tokenEndpoint: json_['tokenEndpoint'] as core.String?,
        tokenParams:
            json_.containsKey('tokenParams')
                ? GoogleCloudIntegrationsV1alphaParameterMap.fromJson(
                  json_['tokenParams'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (accessToken != null) 'accessToken': accessToken!,
    if (clientId != null) 'clientId': clientId!,
    if (clientSecret != null) 'clientSecret': clientSecret!,
    if (requestType != null) 'requestType': requestType!,
    if (scope != null) 'scope': scope!,
    if (tokenEndpoint != null) 'tokenEndpoint': tokenEndpoint!,
    if (tokenParams != null) 'tokenParams': tokenParams!,
  };
}

/// For resource owner credentials grant, the client will ask the user for their
/// authorization credentials (ususally a username and password) and send a POST
/// request to the authorization server.
///
/// The authorization server will respond with a JSON object containing the
/// access token.
class GoogleCloudIntegrationsV1alphaOAuth2ResourceOwnerCredentials {
  /// Access token fetched from the authorization server.
  GoogleCloudIntegrationsV1alphaAccessToken? accessToken;

  /// The client's ID.
  core.String? clientId;

  /// The client's secret.
  core.String? clientSecret;

  /// The user's password.
  core.String? password;

  /// Represent how to pass parameters to fetch access token
  /// Possible string values are:
  /// - "REQUEST_TYPE_UNSPECIFIED" : Unspecified request type
  /// - "REQUEST_BODY" : To pass all the parameters in post body.
  /// - "QUERY_PARAMETERS" : To pass all the parameters as a part of query
  /// parameter.
  /// - "ENCODED_HEADER" : To pass client id and client secret as base 64
  /// encoding of client_id:client_password and rest parameters in post body.
  core.String? requestType;

  /// A space-delimited list of requested scope permissions.
  core.String? scope;

  /// The token endpoint is used by the client to obtain an access token by
  /// presenting its authorization grant or refresh token.
  core.String? tokenEndpoint;

  /// Token parameters for the auth request.
  GoogleCloudIntegrationsV1alphaParameterMap? tokenParams;

  /// The user's username.
  core.String? username;

  GoogleCloudIntegrationsV1alphaOAuth2ResourceOwnerCredentials({
    this.accessToken,
    this.clientId,
    this.clientSecret,
    this.password,
    this.requestType,
    this.scope,
    this.tokenEndpoint,
    this.tokenParams,
    this.username,
  });

  GoogleCloudIntegrationsV1alphaOAuth2ResourceOwnerCredentials.fromJson(
    core.Map json_,
  ) : this(
        accessToken:
            json_.containsKey('accessToken')
                ? GoogleCloudIntegrationsV1alphaAccessToken.fromJson(
                  json_['accessToken'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        clientId: json_['clientId'] as core.String?,
        clientSecret: json_['clientSecret'] as core.String?,
        password: json_['password'] as core.String?,
        requestType: json_['requestType'] as core.String?,
        scope: json_['scope'] as core.String?,
        tokenEndpoint: json_['tokenEndpoint'] as core.String?,
        tokenParams:
            json_.containsKey('tokenParams')
                ? GoogleCloudIntegrationsV1alphaParameterMap.fromJson(
                  json_['tokenParams'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        username: json_['username'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (accessToken != null) 'accessToken': accessToken!,
    if (clientId != null) 'clientId': clientId!,
    if (clientSecret != null) 'clientSecret': clientSecret!,
    if (password != null) 'password': password!,
    if (requestType != null) 'requestType': requestType!,
    if (scope != null) 'scope': scope!,
    if (tokenEndpoint != null) 'tokenEndpoint': tokenEndpoint!,
    if (tokenParams != null) 'tokenParams': tokenParams!,
    if (username != null) 'username': username!,
  };
}

/// OIDC Token
class GoogleCloudIntegrationsV1alphaOidcToken {
  /// Audience to be used when generating OIDC token.
  ///
  /// The audience claim identifies the recipients that the JWT is intended for.
  core.String? audience;

  /// The service account email to be used as the identity for the token.
  core.String? serviceAccountEmail;

  /// ID token obtained for the service account
  core.String? token;

  /// The approximate time until the token retrieved is valid.
  core.String? tokenExpireTime;

  GoogleCloudIntegrationsV1alphaOidcToken({
    this.audience,
    this.serviceAccountEmail,
    this.token,
    this.tokenExpireTime,
  });

  GoogleCloudIntegrationsV1alphaOidcToken.fromJson(core.Map json_)
    : this(
        audience: json_['audience'] as core.String?,
        serviceAccountEmail: json_['serviceAccountEmail'] as core.String?,
        token: json_['token'] as core.String?,
        tokenExpireTime: json_['tokenExpireTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (audience != null) 'audience': audience!,
    if (serviceAccountEmail != null)
      'serviceAccountEmail': serviceAccountEmail!,
    if (token != null) 'token': token!,
    if (tokenExpireTime != null) 'tokenExpireTime': tokenExpireTime!,
  };
}

/// A generic multi-map that holds key value pairs.
///
/// They keys and values can be of any type, unless specified.
class GoogleCloudIntegrationsV1alphaParameterMap {
  /// A list of parameter map entries.
  core.List<GoogleCloudIntegrationsV1alphaParameterMapEntry>? entries;

  /// Option to specify key type for all entries of the map.
  ///
  /// If provided then field types for all entries must conform to this.
  /// Possible string values are:
  /// - "INTEGRATION_PARAMETER_DATA_TYPE_UNSPECIFIED" : Unspecified.
  /// - "STRING_VALUE" : String.
  /// - "INT_VALUE" : Integer.
  /// - "DOUBLE_VALUE" : Double Number.
  /// - "BOOLEAN_VALUE" : Boolean.
  /// - "STRING_ARRAY" : String Array.
  /// - "INT_ARRAY" : Integer Array.
  /// - "DOUBLE_ARRAY" : Double Number Array.
  /// - "BOOLEAN_ARRAY" : Boolean Array.
  /// - "JSON_VALUE" : Json.
  /// - "PROTO_VALUE" : Proto Value (Internal use only).
  /// - "PROTO_ARRAY" : Proto Array (Internal use only).
  /// - "NON_SERIALIZABLE_OBJECT" : // Non-serializable object (Internal use
  /// only).
  /// - "PROTO_ENUM" : Proto Enum (Internal use only).
  /// - "SERIALIZED_OBJECT_VALUE" : Serialized object (Internal use only).
  /// - "PROTO_ENUM_ARRAY" : Proto Enum Array (Internal use only).
  /// - "BYTES" : BYTES data types are not allowed for top-level params. They're
  /// only meant to support protobufs with BYTES (sub)fields.
  /// - "BYTES_ARRAY" : BYTES_ARRAY data types are not allowed for top-level
  /// params. They're only meant to support protobufs with BYTES (sub)fields.
  core.String? keyType;

  /// Option to specify value type for all entries of the map.
  ///
  /// If provided then field types for all entries must conform to this.
  /// Possible string values are:
  /// - "INTEGRATION_PARAMETER_DATA_TYPE_UNSPECIFIED" : Unspecified.
  /// - "STRING_VALUE" : String.
  /// - "INT_VALUE" : Integer.
  /// - "DOUBLE_VALUE" : Double Number.
  /// - "BOOLEAN_VALUE" : Boolean.
  /// - "STRING_ARRAY" : String Array.
  /// - "INT_ARRAY" : Integer Array.
  /// - "DOUBLE_ARRAY" : Double Number Array.
  /// - "BOOLEAN_ARRAY" : Boolean Array.
  /// - "JSON_VALUE" : Json.
  /// - "PROTO_VALUE" : Proto Value (Internal use only).
  /// - "PROTO_ARRAY" : Proto Array (Internal use only).
  /// - "NON_SERIALIZABLE_OBJECT" : // Non-serializable object (Internal use
  /// only).
  /// - "PROTO_ENUM" : Proto Enum (Internal use only).
  /// - "SERIALIZED_OBJECT_VALUE" : Serialized object (Internal use only).
  /// - "PROTO_ENUM_ARRAY" : Proto Enum Array (Internal use only).
  /// - "BYTES" : BYTES data types are not allowed for top-level params. They're
  /// only meant to support protobufs with BYTES (sub)fields.
  /// - "BYTES_ARRAY" : BYTES_ARRAY data types are not allowed for top-level
  /// params. They're only meant to support protobufs with BYTES (sub)fields.
  core.String? valueType;

  GoogleCloudIntegrationsV1alphaParameterMap({
    this.entries,
    this.keyType,
    this.valueType,
  });

  GoogleCloudIntegrationsV1alphaParameterMap.fromJson(core.Map json_)
    : this(
        entries:
            (json_['entries'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudIntegrationsV1alphaParameterMapEntry.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        keyType: json_['keyType'] as core.String?,
        valueType: json_['valueType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (entries != null) 'entries': entries!,
    if (keyType != null) 'keyType': keyType!,
    if (valueType != null) 'valueType': valueType!,
  };
}

/// Entry is a pair of key and value.
class GoogleCloudIntegrationsV1alphaParameterMapEntry {
  /// Key of the map entry.
  GoogleCloudIntegrationsV1alphaParameterMapField? key;

  /// Value of the map entry.
  GoogleCloudIntegrationsV1alphaParameterMapField? value;

  GoogleCloudIntegrationsV1alphaParameterMapEntry({this.key, this.value});

  GoogleCloudIntegrationsV1alphaParameterMapEntry.fromJson(core.Map json_)
    : this(
        key:
            json_.containsKey('key')
                ? GoogleCloudIntegrationsV1alphaParameterMapField.fromJson(
                  json_['key'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        value:
            json_.containsKey('value')
                ? GoogleCloudIntegrationsV1alphaParameterMapField.fromJson(
                  json_['value'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (key != null) 'key': key!,
    if (value != null) 'value': value!,
  };
}

/// Field represents either the key or value in an entry.
class GoogleCloudIntegrationsV1alphaParameterMapField {
  /// Passing a literal value.
  GoogleCloudIntegrationsV1alphaValueType? literalValue;

  /// Referencing one of the Integration variables.
  core.String? referenceKey;

  GoogleCloudIntegrationsV1alphaParameterMapField({
    this.literalValue,
    this.referenceKey,
  });

  GoogleCloudIntegrationsV1alphaParameterMapField.fromJson(core.Map json_)
    : this(
        literalValue:
            json_.containsKey('literalValue')
                ? GoogleCloudIntegrationsV1alphaValueType.fromJson(
                  json_['literalValue'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        referenceKey: json_['referenceKey'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (literalValue != null) 'literalValue': literalValue!,
    if (referenceKey != null) 'referenceKey': referenceKey!,
  };
}

/// Metadata information for the given project
class GoogleCloudIntegrationsV1alphaProjectProperties {
  /// Required: The client billing type that was requested
  ///
  /// Required.
  /// Possible string values are:
  /// - "BILLING_TYPE_UNSPECIFIED"
  /// - "APIGEE_TRIALS" : A trial org provisioned through Apigee Provisioning
  /// Wizard
  /// - "APIGEE_SUBSCRIPTION" : Subscription based on concurrency model for
  /// Apigee and Application Integration users.
  /// - "PAYG" : Consumption based users of IP
  /// - "SUBSCRIPTION" : Argentum subscription for Application Integration
  /// users. To be used in the future.
  /// - "NO_BILLING" : Special billing type to avoid any billing to clients (eg:
  /// trusted tester program). This should not be used without consulting with
  /// the leads.
  core.String? billingType;

  /// An enum value of what the enablement state is for the given project
  /// Possible string values are:
  /// - "IP_ENABLEMENT_STATE_UNSPECIFIED" : The client enablement status is
  /// unspecified
  /// - "IP_ENABLEMENT_STATE_STANDALONE" : The client is enabled on Standalone
  /// IP
  /// - "IP_ENABLEMENT_STATE_APIGEE" : The client is enabled on Apigee
  /// - "IP_ENABLEMENT_STATE_APIGEE_ENTITLED" : The client is entitled for
  /// Apigee but not enabled
  core.String? ipEnablementState;

  /// A list of provisioned regions on the current project
  core.List<core.String>? provisionedRegions;

  GoogleCloudIntegrationsV1alphaProjectProperties({
    this.billingType,
    this.ipEnablementState,
    this.provisionedRegions,
  });

  GoogleCloudIntegrationsV1alphaProjectProperties.fromJson(core.Map json_)
    : this(
        billingType: json_['billingType'] as core.String?,
        ipEnablementState: json_['ipEnablementState'] as core.String?,
        provisionedRegions:
            (json_['provisionedRegions'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (billingType != null) 'billingType': billingType!,
    if (ipEnablementState != null) 'ipEnablementState': ipEnablementState!,
    if (provisionedRegions != null) 'provisionedRegions': provisionedRegions!,
  };
}

/// Request for PostProvisioning rpc call.
class GoogleCloudIntegrationsV1alphaProvisionClientPostProcessorRequest {
  /// Indicate which workflows to create
  ///
  /// Optional.
  core.List<core.String>? workflows;

  GoogleCloudIntegrationsV1alphaProvisionClientPostProcessorRequest({
    this.workflows,
  });

  GoogleCloudIntegrationsV1alphaProvisionClientPostProcessorRequest.fromJson(
    core.Map json_,
  ) : this(
        workflows:
            (json_['workflows'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (workflows != null) 'workflows': workflows!,
  };
}

/// Response for PostProvisioning rpc call.
typedef GoogleCloudIntegrationsV1alphaProvisionClientPostProcessorResponse =
    $Empty;

/// Request for the Provision rpc
class GoogleCloudIntegrationsV1alphaProvisionClientRequest {
  /// OPTIONAL: Cloud KMS config for AuthModule to encrypt/decrypt credentials.
  ///
  /// Optional.
  GoogleCloudIntegrationsV1alphaCloudKmsConfig? cloudKmsConfig;

  /// Indicates if sample workflow should be created along with provisioning
  ///
  /// Optional.
  core.bool? createSampleWorkflows;

  /// Indicates if the client should be allowed to make HTTP calls.
  ///
  /// Optional.
  core.bool? enableHttpCall;

  /// Indicates if the client should be allowed to use managed AI features, i.e.
  /// using Cloud Companion APIs of the tenant project.
  ///
  /// This will allow the customers to use features like Troubleshooting,
  /// OpenAPI spec enrichment, etc. for free.
  ///
  /// Optional.
  core.bool? enableManagedAiFeatures;

  /// Indicates provision with GMEK or CMEK.
  ///
  /// This field is deprecated and the provision would always be GMEK if
  /// cloud_kms_config is not present in the request.
  ///
  /// Optional. Deprecated.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.bool? provisionGmek;

  /// User input run-as service account, if empty, will bring up a new default
  /// service account
  ///
  /// Optional.
  core.String? runAsServiceAccount;

  /// Indicates if skip CP provision or not
  ///
  /// Optional.
  core.bool? skipCpProvision;

  GoogleCloudIntegrationsV1alphaProvisionClientRequest({
    this.cloudKmsConfig,
    this.createSampleWorkflows,
    this.enableHttpCall,
    this.enableManagedAiFeatures,
    this.provisionGmek,
    this.runAsServiceAccount,
    this.skipCpProvision,
  });

  GoogleCloudIntegrationsV1alphaProvisionClientRequest.fromJson(core.Map json_)
    : this(
        cloudKmsConfig:
            json_.containsKey('cloudKmsConfig')
                ? GoogleCloudIntegrationsV1alphaCloudKmsConfig.fromJson(
                  json_['cloudKmsConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        createSampleWorkflows: json_['createSampleWorkflows'] as core.bool?,
        enableHttpCall: json_['enableHttpCall'] as core.bool?,
        enableManagedAiFeatures: json_['enableManagedAiFeatures'] as core.bool?,
        provisionGmek: json_['provisionGmek'] as core.bool?,
        runAsServiceAccount: json_['runAsServiceAccount'] as core.String?,
        skipCpProvision: json_['skipCpProvision'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (cloudKmsConfig != null) 'cloudKmsConfig': cloudKmsConfig!,
    if (createSampleWorkflows != null)
      'createSampleWorkflows': createSampleWorkflows!,
    if (enableHttpCall != null) 'enableHttpCall': enableHttpCall!,
    if (enableManagedAiFeatures != null)
      'enableManagedAiFeatures': enableManagedAiFeatures!,
    if (provisionGmek != null) 'provisionGmek': provisionGmek!,
    if (runAsServiceAccount != null)
      'runAsServiceAccount': runAsServiceAccount!,
    if (skipCpProvision != null) 'skipCpProvision': skipCpProvision!,
  };
}

/// Request for PublishIntegrationVersion.
class GoogleCloudIntegrationsV1alphaPublishIntegrationVersionRequest {
  /// Config parameters used during integration execution.
  ///
  /// Optional.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? configParameters;

  GoogleCloudIntegrationsV1alphaPublishIntegrationVersionRequest({
    this.configParameters,
  });

  GoogleCloudIntegrationsV1alphaPublishIntegrationVersionRequest.fromJson(
    core.Map json_,
  ) : this(
        configParameters:
            json_.containsKey('configParameters')
                ? json_['configParameters']
                    as core.Map<core.String, core.dynamic>
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (configParameters != null) 'configParameters': configParameters!,
  };
}

/// Response for PublishIntegrationVersion.
typedef GoogleCloudIntegrationsV1alphaPublishIntegrationVersionResponse =
    $Empty;

/// Request for the ReplaceServiceAccount rpc
class GoogleCloudIntegrationsV1alphaReplaceServiceAccountRequest {
  /// REQUIRED: Run-as service account to be updated
  ///
  /// Required.
  core.String? runAsServiceAccount;

  GoogleCloudIntegrationsV1alphaReplaceServiceAccountRequest({
    this.runAsServiceAccount,
  });

  GoogleCloudIntegrationsV1alphaReplaceServiceAccountRequest.fromJson(
    core.Map json_,
  ) : this(runAsServiceAccount: json_['runAsServiceAccount'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (runAsServiceAccount != null)
      'runAsServiceAccount': runAsServiceAccount!,
  };
}

/// Request for replaying an execution.
class GoogleCloudIntegrationsV1alphaReplayExecutionRequest {
  /// The modified input parameters for replay.
  ///
  /// - Provide values for all the fields in the 'update_mask'. Any field not
  /// present in the 'update_mask' will be ignored and its value will be taken
  /// from the original execution. - If the 'update_mask' is not specified, all
  /// the parameters from original execution will be ignored and only the
  /// `modified_parameters` will be used.
  ///
  /// Optional.
  core.Map<core.String, GoogleCloudIntegrationsV1alphaValueType>?
  modifiedParameters;

  /// The mode of the replay.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "REPLAY_MODE_UNSPECIFIED" : Default value.
  /// - "REPLAY_MODE_FROM_BEGINNING" : Replay the original execution.
  /// - "REPLAY_MODE_POINT_OF_FAILURE" : Replay the execution with the modified
  /// parameters.
  core.String? replayMode;

  /// The user provided reason for replaying the execution.
  ///
  /// Required.
  core.String? replayReason;

  /// The list of parameters to be updated.
  ///
  /// - If the `update_mask` is not specified, all the parameters from original
  /// execution will be ignored and only the `modified_parameters` will be used.
  /// - It is an error to include a parameter in `update_mask` but not in
  /// `modified_parameters`. - Updating nested fields in a JSON parameter is not
  /// supported, please provide the complete JSON in the `modified_parameters`.
  ///
  /// Optional.
  core.String? updateMask;

  GoogleCloudIntegrationsV1alphaReplayExecutionRequest({
    this.modifiedParameters,
    this.replayMode,
    this.replayReason,
    this.updateMask,
  });

  GoogleCloudIntegrationsV1alphaReplayExecutionRequest.fromJson(core.Map json_)
    : this(
        modifiedParameters: (json_['modifiedParameters']
                as core.Map<core.String, core.dynamic>?)
            ?.map(
              (key, value) => core.MapEntry(
                key,
                GoogleCloudIntegrationsV1alphaValueType.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              ),
            ),
        replayMode: json_['replayMode'] as core.String?,
        replayReason: json_['replayReason'] as core.String?,
        updateMask: json_['updateMask'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (modifiedParameters != null) 'modifiedParameters': modifiedParameters!,
    if (replayMode != null) 'replayMode': replayMode!,
    if (replayReason != null) 'replayReason': replayReason!,
    if (updateMask != null) 'updateMask': updateMask!,
  };
}

/// Response for replaying an execution.
class GoogleCloudIntegrationsV1alphaReplayExecutionResponse {
  /// Next ID: 4 The id of the execution corresponding to this run of the
  /// integration.
  core.String? executionId;

  /// OUTPUT parameters in format of Map.
  ///
  /// Where Key is the name of the parameter. The parameters would only be
  /// present in case of synchrounous execution. Note: Name of the system
  /// generated parameters are wrapped by backtick(\`) to distinguish them from
  /// the user defined parameters.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? outputParameters;

  /// The execution id which is replayed.
  core.String? replayedExecutionId;

  GoogleCloudIntegrationsV1alphaReplayExecutionResponse({
    this.executionId,
    this.outputParameters,
    this.replayedExecutionId,
  });

  GoogleCloudIntegrationsV1alphaReplayExecutionResponse.fromJson(core.Map json_)
    : this(
        executionId: json_['executionId'] as core.String?,
        outputParameters:
            json_.containsKey('outputParameters')
                ? json_['outputParameters']
                    as core.Map<core.String, core.dynamic>
                : null,
        replayedExecutionId: json_['replayedExecutionId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (executionId != null) 'executionId': executionId!,
    if (outputParameters != null) 'outputParameters': outputParameters!,
    if (replayedExecutionId != null)
      'replayedExecutionId': replayedExecutionId!,
  };
}

/// Request for \[Suspensions.ResolveSuspensions\].
class GoogleCloudIntegrationsV1alphaResolveSuspensionRequest {
  /// Suspension, containing the event_execution_info_id, task_id, and state to
  /// set on the corresponding suspension record.
  GoogleCloudIntegrationsV1alphaSuspension? suspension;

  GoogleCloudIntegrationsV1alphaResolveSuspensionRequest({this.suspension});

  GoogleCloudIntegrationsV1alphaResolveSuspensionRequest.fromJson(
    core.Map json_,
  ) : this(
        suspension:
            json_.containsKey('suspension')
                ? GoogleCloudIntegrationsV1alphaSuspension.fromJson(
                  json_['suspension'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (suspension != null) 'suspension': suspension!,
  };
}

/// Response for Suspensions.ResolveSuspensions.
typedef GoogleCloudIntegrationsV1alphaResolveSuspensionResponse = $Empty;

/// Metadata of an action, including schemas for its inputs and outputs.
class GoogleCloudIntegrationsV1alphaRuntimeActionSchema {
  /// Name of the action.
  core.String? action;

  /// Input parameter schema for the action.
  core.String? inputSchema;

  /// Output parameter schema for the action.
  core.String? outputSchema;

  GoogleCloudIntegrationsV1alphaRuntimeActionSchema({
    this.action,
    this.inputSchema,
    this.outputSchema,
  });

  GoogleCloudIntegrationsV1alphaRuntimeActionSchema.fromJson(core.Map json_)
    : this(
        action: json_['action'] as core.String?,
        inputSchema: json_['inputSchema'] as core.String?,
        outputSchema: json_['outputSchema'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (action != null) 'action': action!,
    if (inputSchema != null) 'inputSchema': inputSchema!,
    if (outputSchema != null) 'outputSchema': outputSchema!,
  };
}

/// Metadata of an entity, including a schema for its properties.
class GoogleCloudIntegrationsV1alphaRuntimeEntitySchema {
  /// The above schema, but for an array of the associated entity.
  core.String? arrayFieldSchema;

  /// Name of the entity.
  core.String? entity;

  /// List of fields in the entity.
  core.String? fieldSchema;

  GoogleCloudIntegrationsV1alphaRuntimeEntitySchema({
    this.arrayFieldSchema,
    this.entity,
    this.fieldSchema,
  });

  GoogleCloudIntegrationsV1alphaRuntimeEntitySchema.fromJson(core.Map json_)
    : this(
        arrayFieldSchema: json_['arrayFieldSchema'] as core.String?,
        entity: json_['entity'] as core.String?,
        fieldSchema: json_['fieldSchema'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (arrayFieldSchema != null) 'arrayFieldSchema': arrayFieldSchema!,
    if (entity != null) 'entity': entity!,
    if (fieldSchema != null) 'fieldSchema': fieldSchema!,
  };
}

/// The request for scheduling an integration.
class GoogleCloudIntegrationsV1alphaScheduleIntegrationsRequest {
  /// Input parameters used by integration execution.
  ///
  /// Optional.
  core.Map<core.String, GoogleCloudIntegrationsV1alphaValueType>?
  inputParameters;

  /// Parameters are a part of Event and can be used to communicate between
  /// different tasks that are part of the same integration execution.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.List<EnterpriseCrmFrontendsEventbusProtoParameterEntry>?
  parameterEntries;

  /// Passed in as parameters to each integration execution.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  EnterpriseCrmEventbusProtoEventParameters? parameters;

  /// This is used to de-dup incoming request: if the duplicate request was
  /// detected, the response from the previous execution is returned.
  core.String? requestId;

  /// The time that the integration should be executed.
  ///
  /// If the time is less or equal to the current time, the integration is
  /// executed immediately.
  core.String? scheduleTime;

  /// Matched against all {@link TriggerConfig}s across all integrations.
  ///
  /// i.e. TriggerConfig.trigger_id.equals(trigger_id)
  ///
  /// Required.
  core.String? triggerId;

  /// This is a unique id provided by the method caller.
  ///
  /// If provided this will be used as the execution_id when a new execution
  /// info is created. This is a string representation of a UUID. Must have no
  /// more than 36 characters and contain only alphanumeric characters and
  /// hyphens.
  ///
  /// Optional.
  core.String? userGeneratedExecutionId;

  GoogleCloudIntegrationsV1alphaScheduleIntegrationsRequest({
    this.inputParameters,
    this.parameterEntries,
    this.parameters,
    this.requestId,
    this.scheduleTime,
    this.triggerId,
    this.userGeneratedExecutionId,
  });

  GoogleCloudIntegrationsV1alphaScheduleIntegrationsRequest.fromJson(
    core.Map json_,
  ) : this(
        inputParameters: (json_['inputParameters']
                as core.Map<core.String, core.dynamic>?)
            ?.map(
              (key, value) => core.MapEntry(
                key,
                GoogleCloudIntegrationsV1alphaValueType.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              ),
            ),
        parameterEntries:
            (json_['parameterEntries'] as core.List?)
                ?.map(
                  (value) =>
                      EnterpriseCrmFrontendsEventbusProtoParameterEntry.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        parameters:
            json_.containsKey('parameters')
                ? EnterpriseCrmEventbusProtoEventParameters.fromJson(
                  json_['parameters'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        requestId: json_['requestId'] as core.String?,
        scheduleTime: json_['scheduleTime'] as core.String?,
        triggerId: json_['triggerId'] as core.String?,
        userGeneratedExecutionId:
            json_['userGeneratedExecutionId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (inputParameters != null) 'inputParameters': inputParameters!,
    if (parameterEntries != null) 'parameterEntries': parameterEntries!,
    if (parameters != null) 'parameters': parameters!,
    if (requestId != null) 'requestId': requestId!,
    if (scheduleTime != null) 'scheduleTime': scheduleTime!,
    if (triggerId != null) 'triggerId': triggerId!,
    if (userGeneratedExecutionId != null)
      'userGeneratedExecutionId': userGeneratedExecutionId!,
  };
}

/// The response for executing an integration.
class GoogleCloudIntegrationsV1alphaScheduleIntegrationsResponse {
  /// The execution info id for the executed integrations.
  core.List<core.String>? executionInfoIds;

  GoogleCloudIntegrationsV1alphaScheduleIntegrationsResponse({
    this.executionInfoIds,
  });

  GoogleCloudIntegrationsV1alphaScheduleIntegrationsResponse.fromJson(
    core.Map json_,
  ) : this(
        executionInfoIds:
            (json_['executionInfoIds'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (executionInfoIds != null) 'executionInfoIds': executionInfoIds!,
  };
}

/// Response for SearchIntegrations.
class GoogleCloudIntegrationsV1alphaSearchIntegrationsResponse {
  /// The list of integrations that match the search criteria.
  core.List<
    GoogleCloudIntegrationsV1alphaSearchIntegrationsResponseIntegrationSearchResult
  >?
  integrations;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  GoogleCloudIntegrationsV1alphaSearchIntegrationsResponse({
    this.integrations,
    this.nextPageToken,
  });

  GoogleCloudIntegrationsV1alphaSearchIntegrationsResponse.fromJson(
    core.Map json_,
  ) : this(
        integrations:
            (json_['integrations'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudIntegrationsV1alphaSearchIntegrationsResponseIntegrationSearchResult.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (integrations != null) 'integrations': integrations!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// The integration search result with integration level information.
class GoogleCloudIntegrationsV1alphaSearchIntegrationsResponseIntegrationSearchResult {
  /// The create time of the integration version.
  ///
  /// Output only.
  core.String? createTime;

  /// The creator of the integration version.
  core.String? creator;

  /// The description of the integration version.
  core.String? description;

  /// The integration id.
  core.String? id;

  /// The integration document metadata.
  core.String? name;

  /// The region of the integration version.
  core.String? region;

  /// The status of the integration version.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "INTEGRATION_STATE_UNSPECIFIED" : Default.
  /// - "DRAFT" : Draft.
  /// - "ACTIVE" : Active.
  /// - "ARCHIVED" : Archived.
  /// - "SNAPSHOT" : Snapshot.
  core.String? status;

  /// The version of the integration version.
  core.String? version;

  GoogleCloudIntegrationsV1alphaSearchIntegrationsResponseIntegrationSearchResult({
    this.createTime,
    this.creator,
    this.description,
    this.id,
    this.name,
    this.region,
    this.status,
    this.version,
  });

  GoogleCloudIntegrationsV1alphaSearchIntegrationsResponseIntegrationSearchResult.fromJson(
    core.Map json_,
  ) : this(
        createTime: json_['createTime'] as core.String?,
        creator: json_['creator'] as core.String?,
        description: json_['description'] as core.String?,
        id: json_['id'] as core.String?,
        name: json_['name'] as core.String?,
        region: json_['region'] as core.String?,
        status: json_['status'] as core.String?,
        version: json_['version'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (createTime != null) 'createTime': createTime!,
    if (creator != null) 'creator': creator!,
    if (description != null) 'description': description!,
    if (id != null) 'id': id!,
    if (name != null) 'name': name!,
    if (region != null) 'region': region!,
    if (status != null) 'status': status!,
    if (version != null) 'version': version!,
  };
}

/// Response for a request to search templates
class GoogleCloudIntegrationsV1alphaSearchTemplatesResponse {
  /// The token used to retrieve the next page results.
  core.String? nextPageToken;

  /// List of templates retrieved.
  core.List<GoogleCloudIntegrationsV1alphaTemplate>? templates;

  GoogleCloudIntegrationsV1alphaSearchTemplatesResponse({
    this.nextPageToken,
    this.templates,
  });

  GoogleCloudIntegrationsV1alphaSearchTemplatesResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        templates:
            (json_['templates'] as core.List?)
                ?.map(
                  (value) => GoogleCloudIntegrationsV1alphaTemplate.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (templates != null) 'templates': templates!,
  };
}

/// To store string representation of Integration file.
class GoogleCloudIntegrationsV1alphaSerializedFile {
  /// String representation of the file content.
  core.String? content;

  /// File information like Integration version, Integration Config variables
  /// etc.
  /// Possible string values are:
  /// - "INTEGRATION_FILE_UNSPECIFIED" : Default value.
  /// - "INTEGRATION" : Integration file.
  /// - "INTEGRATION_CONFIG_VARIABLES" : Integration Config variables.
  core.String? file;

  GoogleCloudIntegrationsV1alphaSerializedFile({this.content, this.file});

  GoogleCloudIntegrationsV1alphaSerializedFile.fromJson(core.Map json_)
    : this(
        content: json_['content'] as core.String?,
        file: json_['file'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (content != null) 'content': content!,
    if (file != null) 'file': file!,
  };
}

/// Represents the service account which can be used to generate access token
/// for authenticating the service call.
class GoogleCloudIntegrationsV1alphaServiceAccountCredentials {
  /// A space-delimited list of requested scope permissions.
  core.String? scope;

  /// Name of the service account that has the permission to make the request.
  core.String? serviceAccount;

  GoogleCloudIntegrationsV1alphaServiceAccountCredentials({
    this.scope,
    this.serviceAccount,
  });

  GoogleCloudIntegrationsV1alphaServiceAccountCredentials.fromJson(
    core.Map json_,
  ) : this(
        scope: json_['scope'] as core.String?,
        serviceAccount: json_['serviceAccount'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (scope != null) 'scope': scope!,
    if (serviceAccount != null) 'serviceAccount': serviceAccount!,
  };
}

/// The SfdcChannel that points to a CDC or Platform Event Channel.
class GoogleCloudIntegrationsV1alphaSfdcChannel {
  /// The Channel topic defined by salesforce once an channel is opened
  ///
  /// Required.
  core.String? channelTopic;

  /// Time when the channel is created
  ///
  /// Output only.
  core.String? createTime;

  /// Time when the channel was deleted.
  ///
  /// Empty if not deleted.
  ///
  /// Output only.
  core.String? deleteTime;

  /// The description for this channel
  ///
  /// Optional.
  core.String? description;

  /// Client level unique name/alias to easily reference a channel.
  ///
  /// Optional.
  core.String? displayName;

  /// Indicated if a channel has any active integrations referencing it.
  ///
  /// Set to false when the channel is created, and set to true if there is any
  /// integration published with the channel configured in it.
  ///
  /// Output only.
  core.bool? isActive;

  /// Last sfdc messsage replay id for channel
  ///
  /// Output only.
  core.String? lastReplayId;

  /// Resource name of the SFDC channel
  /// projects/{project}/locations/{location}/sfdcInstances/{sfdc_instance}/sfdcChannels/{sfdc_channel}.
  core.String? name;

  /// Time when the channel was last updated
  ///
  /// Output only.
  core.String? updateTime;

  GoogleCloudIntegrationsV1alphaSfdcChannel({
    this.channelTopic,
    this.createTime,
    this.deleteTime,
    this.description,
    this.displayName,
    this.isActive,
    this.lastReplayId,
    this.name,
    this.updateTime,
  });

  GoogleCloudIntegrationsV1alphaSfdcChannel.fromJson(core.Map json_)
    : this(
        channelTopic: json_['channelTopic'] as core.String?,
        createTime: json_['createTime'] as core.String?,
        deleteTime: json_['deleteTime'] as core.String?,
        description: json_['description'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        isActive: json_['isActive'] as core.bool?,
        lastReplayId: json_['lastReplayId'] as core.String?,
        name: json_['name'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (channelTopic != null) 'channelTopic': channelTopic!,
    if (createTime != null) 'createTime': createTime!,
    if (deleteTime != null) 'deleteTime': deleteTime!,
    if (description != null) 'description': description!,
    if (displayName != null) 'displayName': displayName!,
    if (isActive != null) 'isActive': isActive!,
    if (lastReplayId != null) 'lastReplayId': lastReplayId!,
    if (name != null) 'name': name!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// The SfdcInstance resource use to hold channels and connection config data.
class GoogleCloudIntegrationsV1alphaSfdcInstance {
  /// A list of AuthConfigs that can be tried to open the channel to SFDC
  core.List<core.String>? authConfigId;

  /// Time when the instance is created
  ///
  /// Output only.
  core.String? createTime;

  /// Time when the instance was deleted.
  ///
  /// Empty if not deleted.
  ///
  /// Output only.
  core.String? deleteTime;

  /// A description of the sfdc instance.
  ///
  /// Optional.
  core.String? description;

  /// User selected unique name/alias to easily reference an instance.
  ///
  /// Optional.
  core.String? displayName;

  /// Resource name of the SFDC instance
  /// projects/{project}/locations/{location}/sfdcInstances/{sfdcInstance}.
  core.String? name;

  /// URL used for API calls after authentication (the login authority is
  /// configured within the referenced AuthConfig).
  ///
  /// Optional.
  core.String? serviceAuthority;

  /// The SFDC Org Id.
  ///
  /// This is defined in salesforce.
  core.String? sfdcOrgId;

  /// Time when the instance was last updated
  ///
  /// Output only.
  core.String? updateTime;

  GoogleCloudIntegrationsV1alphaSfdcInstance({
    this.authConfigId,
    this.createTime,
    this.deleteTime,
    this.description,
    this.displayName,
    this.name,
    this.serviceAuthority,
    this.sfdcOrgId,
    this.updateTime,
  });

  GoogleCloudIntegrationsV1alphaSfdcInstance.fromJson(core.Map json_)
    : this(
        authConfigId:
            (json_['authConfigId'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        createTime: json_['createTime'] as core.String?,
        deleteTime: json_['deleteTime'] as core.String?,
        description: json_['description'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        name: json_['name'] as core.String?,
        serviceAuthority: json_['serviceAuthority'] as core.String?,
        sfdcOrgId: json_['sfdcOrgId'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (authConfigId != null) 'authConfigId': authConfigId!,
    if (createTime != null) 'createTime': createTime!,
    if (deleteTime != null) 'deleteTime': deleteTime!,
    if (description != null) 'description': description!,
    if (displayName != null) 'displayName': displayName!,
    if (name != null) 'name': name!,
    if (serviceAuthority != null) 'serviceAuthority': serviceAuthority!,
    if (sfdcOrgId != null) 'sfdcOrgId': sfdcOrgId!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// Request to Share template
class GoogleCloudIntegrationsV1alphaShareTemplateRequest {
  /// Project name resources to share the template.
  ///
  /// The project names is expected in resource format Ex:
  /// projects/{project-number} or organization/{org-id}
  ///
  /// Optional.
  core.List<core.String>? resourceNames;

  GoogleCloudIntegrationsV1alphaShareTemplateRequest({this.resourceNames});

  GoogleCloudIntegrationsV1alphaShareTemplateRequest.fromJson(core.Map json_)
    : this(
        resourceNames:
            (json_['resourceNames'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (resourceNames != null) 'resourceNames': resourceNames!,
  };
}

/// This message only contains a field of string array.
class GoogleCloudIntegrationsV1alphaStringParameterArray {
  /// String array.
  core.List<core.String>? stringValues;

  GoogleCloudIntegrationsV1alphaStringParameterArray({this.stringValues});

  GoogleCloudIntegrationsV1alphaStringParameterArray.fromJson(core.Map json_)
    : this(
        stringValues:
            (json_['stringValues'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (stringValues != null) 'stringValues': stringValues!,
  };
}

/// Policy that dictates the behavior for the task after it completes
/// successfully.
class GoogleCloudIntegrationsV1alphaSuccessPolicy {
  /// State to which the execution snapshot status will be set if the task
  /// succeeds.
  /// Possible string values are:
  /// - "FINAL_STATE_UNSPECIFIED" : UNSPECIFIED.
  /// - "SUCCEEDED" : The default behavior, where successful tasks will be
  /// marked as SUCCEEDED.
  /// - "SUSPENDED" : Sets the state to SUSPENDED after executing. This is
  /// required for SuspensionTask; event execution will continue once the user
  /// calls ResolveSuspensions with the event_execution_info_id and the task
  /// number.
  core.String? finalState;

  GoogleCloudIntegrationsV1alphaSuccessPolicy({this.finalState});

  GoogleCloudIntegrationsV1alphaSuccessPolicy.fromJson(core.Map json_)
    : this(finalState: json_['finalState'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (finalState != null) 'finalState': finalState!,
  };
}

/// A record representing a suspension.
class GoogleCloudIntegrationsV1alphaSuspension {
  /// Controls the notifications and approval permissions for this suspension.
  GoogleCloudIntegrationsV1alphaSuspensionApprovalConfig? approvalConfig;

  /// Metadata pertaining to the resolution of this suspension.
  GoogleCloudIntegrationsV1alphaSuspensionAudit? audit;

  /// Auto-generated.
  ///
  /// Output only.
  core.String? createTime;

  /// ID of the associated execution.
  ///
  /// Required.
  core.String? eventExecutionInfoId;

  /// The name of the originating integration.
  ///
  /// Required.
  core.String? integration;

  /// Auto-generated.
  ///
  /// Output only.
  core.String? lastModifyTime;

  /// Resource name for suspensions suspension/{suspension_id}
  core.String? name;

  /// State of this suspension, indicating what action a resolver has taken.
  ///
  /// Required.
  /// Possible string values are:
  /// - "RESOLUTION_STATE_UNSPECIFIED" : Unset state.
  /// - "PENDING" : The suspension has not yet been resolved.
  /// - "REJECTED" : The resolver has rejected the suspension.
  /// - "LIFTED" : The resolver has lifted the suspension.
  core.String? state;

  /// Controls the notifications and resolver permissions for this suspension.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  EnterpriseCrmEventbusProtoSuspensionConfig? suspensionConfig;

  /// Task id of the associated SuspensionTask.
  ///
  /// Required.
  core.String? taskId;

  GoogleCloudIntegrationsV1alphaSuspension({
    this.approvalConfig,
    this.audit,
    this.createTime,
    this.eventExecutionInfoId,
    this.integration,
    this.lastModifyTime,
    this.name,
    this.state,
    this.suspensionConfig,
    this.taskId,
  });

  GoogleCloudIntegrationsV1alphaSuspension.fromJson(core.Map json_)
    : this(
        approvalConfig:
            json_.containsKey('approvalConfig')
                ? GoogleCloudIntegrationsV1alphaSuspensionApprovalConfig.fromJson(
                  json_['approvalConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        audit:
            json_.containsKey('audit')
                ? GoogleCloudIntegrationsV1alphaSuspensionAudit.fromJson(
                  json_['audit'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        createTime: json_['createTime'] as core.String?,
        eventExecutionInfoId: json_['eventExecutionInfoId'] as core.String?,
        integration: json_['integration'] as core.String?,
        lastModifyTime: json_['lastModifyTime'] as core.String?,
        name: json_['name'] as core.String?,
        state: json_['state'] as core.String?,
        suspensionConfig:
            json_.containsKey('suspensionConfig')
                ? EnterpriseCrmEventbusProtoSuspensionConfig.fromJson(
                  json_['suspensionConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        taskId: json_['taskId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (approvalConfig != null) 'approvalConfig': approvalConfig!,
    if (audit != null) 'audit': audit!,
    if (createTime != null) 'createTime': createTime!,
    if (eventExecutionInfoId != null)
      'eventExecutionInfoId': eventExecutionInfoId!,
    if (integration != null) 'integration': integration!,
    if (lastModifyTime != null) 'lastModifyTime': lastModifyTime!,
    if (name != null) 'name': name!,
    if (state != null) 'state': state!,
    if (suspensionConfig != null) 'suspensionConfig': suspensionConfig!,
    if (taskId != null) 'taskId': taskId!,
  };
}

/// Configurations for approving the Suspension.
class GoogleCloudIntegrationsV1alphaSuspensionApprovalConfig {
  /// Information to provide for recipients.
  core.String? customMessage;

  /// Email addresses to send approval request to.
  core.List<core.String>? emailAddresses;

  /// Indicates the next steps when no external actions happen on the
  /// suspension.
  GoogleCloudIntegrationsV1alphaSuspensionApprovalExpiration? expiration;

  GoogleCloudIntegrationsV1alphaSuspensionApprovalConfig({
    this.customMessage,
    this.emailAddresses,
    this.expiration,
  });

  GoogleCloudIntegrationsV1alphaSuspensionApprovalConfig.fromJson(
    core.Map json_,
  ) : this(
        customMessage: json_['customMessage'] as core.String?,
        emailAddresses:
            (json_['emailAddresses'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        expiration:
            json_.containsKey('expiration')
                ? GoogleCloudIntegrationsV1alphaSuspensionApprovalExpiration.fromJson(
                  json_['expiration'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (customMessage != null) 'customMessage': customMessage!,
    if (emailAddresses != null) 'emailAddresses': emailAddresses!,
    if (expiration != null) 'expiration': expiration!,
  };
}

/// Expiration configs for the approval request.
class GoogleCloudIntegrationsV1alphaSuspensionApprovalExpiration {
  /// Time after which the suspension expires, if no action taken.
  ///
  /// Output only.
  core.String? expireTime;

  /// Whether the suspension will be REJECTED or LIFTED upon expiration.
  ///
  /// REJECTED is the default behavior.
  core.bool? liftWhenExpired;

  /// Time after the previous suspension action reminder, if any, is sent using
  /// the selected notification option, for a suspension which is still
  /// PENDING_UNSPECIFIED.
  core.String? remindTime;

  GoogleCloudIntegrationsV1alphaSuspensionApprovalExpiration({
    this.expireTime,
    this.liftWhenExpired,
    this.remindTime,
  });

  GoogleCloudIntegrationsV1alphaSuspensionApprovalExpiration.fromJson(
    core.Map json_,
  ) : this(
        expireTime: json_['expireTime'] as core.String?,
        liftWhenExpired: json_['liftWhenExpired'] as core.bool?,
        remindTime: json_['remindTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (expireTime != null) 'expireTime': expireTime!,
    if (liftWhenExpired != null) 'liftWhenExpired': liftWhenExpired!,
    if (remindTime != null) 'remindTime': remindTime!,
  };
}

/// Contains when and by whom the suspension was resolved.
class GoogleCloudIntegrationsV1alphaSuspensionAudit {
  /// Time at which this suspension was resolved.
  core.String? resolveTime;

  /// Email address of the person who resolved this suspension.
  core.String? resolver;

  GoogleCloudIntegrationsV1alphaSuspensionAudit({
    this.resolveTime,
    this.resolver,
  });

  GoogleCloudIntegrationsV1alphaSuspensionAudit.fromJson(core.Map json_)
    : this(
        resolveTime: json_['resolveTime'] as core.String?,
        resolver: json_['resolver'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (resolveTime != null) 'resolveTime': resolveTime!,
    if (resolver != null) 'resolver': resolver!,
  };
}

/// Request for the SwitchEncryption rpc
class GoogleCloudIntegrationsV1alphaSwitchEncryptionRequest {
  /// REQUIRED: Cloud KMS config for AuthModule to encrypt/decrypt credentials.
  ///
  /// Required.
  GoogleCloudIntegrationsV1alphaCloudKmsConfig? cloudKmsConfig;

  GoogleCloudIntegrationsV1alphaSwitchEncryptionRequest({this.cloudKmsConfig});

  GoogleCloudIntegrationsV1alphaSwitchEncryptionRequest.fromJson(core.Map json_)
    : this(
        cloudKmsConfig:
            json_.containsKey('cloudKmsConfig')
                ? GoogleCloudIntegrationsV1alphaCloudKmsConfig.fromJson(
                  json_['cloudKmsConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (cloudKmsConfig != null) 'cloudKmsConfig': cloudKmsConfig!,
  };
}

/// Request to enable/disable variable masking for a provisioned client
class GoogleCloudIntegrationsV1alphaSwitchVariableMaskingRequest {
  /// REQUIRED: True if variable masking feature should be turned on for this
  /// region
  ///
  /// Required.
  core.bool? enableVariableMasking;

  GoogleCloudIntegrationsV1alphaSwitchVariableMaskingRequest({
    this.enableVariableMasking,
  });

  GoogleCloudIntegrationsV1alphaSwitchVariableMaskingRequest.fromJson(
    core.Map json_,
  ) : this(enableVariableMasking: json_['enableVariableMasking'] as core.bool?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (enableVariableMasking != null)
      'enableVariableMasking': enableVariableMasking!,
  };
}

/// Request for TakeoverEditLock.
typedef GoogleCloudIntegrationsV1alphaTakeoverEditLockRequest = $Empty;

/// Response for TakeoverEditLock.
class GoogleCloudIntegrationsV1alphaTakeoverEditLockResponse {
  /// Version after the lock is acquired by the new user.
  GoogleCloudIntegrationsV1alphaIntegrationVersion? integrationVersion;

  GoogleCloudIntegrationsV1alphaTakeoverEditLockResponse({
    this.integrationVersion,
  });

  GoogleCloudIntegrationsV1alphaTakeoverEditLockResponse.fromJson(
    core.Map json_,
  ) : this(
        integrationVersion:
            json_.containsKey('integrationVersion')
                ? GoogleCloudIntegrationsV1alphaIntegrationVersion.fromJson(
                  json_['integrationVersion']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (integrationVersion != null) 'integrationVersion': integrationVersion!,
  };
}

/// Request for TakeoverTestCaseEditLock.
typedef GoogleCloudIntegrationsV1alphaTakeoverTestCaseEditLockRequest = $Empty;

/// The task configuration details.
///
/// This is not the implementation of Task. There might be multiple TaskConfigs
/// for the same Task.
class GoogleCloudIntegrationsV1alphaTaskConfig {
  /// The list of conditional failure policies that will be applied to the task
  /// in order.
  ///
  /// Optional.
  GoogleCloudIntegrationsV1alphaConditionalFailurePolicies?
  conditionalFailurePolicies;

  /// User-provided description intended to give additional business context
  /// about the task.
  ///
  /// Optional.
  core.String? description;

  /// User-provided label that is attached to this TaskConfig in the UI.
  ///
  /// Optional.
  core.String? displayName;

  /// Optional Error catcher id of the error catch flow which will be executed
  /// when execution error happens in the task
  ///
  /// Optional.
  core.String? errorCatcherId;

  /// External task type of the task
  ///
  /// Optional.
  /// Possible string values are:
  /// - "EXTERNAL_TASK_TYPE_UNSPECIFIED" : Default value. External task type is
  /// not specified
  /// - "NORMAL_TASK" : Tasks belongs to the normal task flows
  /// - "ERROR_TASK" : Task belongs to the error catch task flows
  core.String? externalTaskType;

  /// Determines the number of times the task will be retried on failure and
  /// with what retry strategy.
  ///
  /// This is applicable for asynchronous calls to Eventbus alone (Post To
  /// Queue, Schedule etc.).
  ///
  /// Optional.
  GoogleCloudIntegrationsV1alphaFailurePolicy? failurePolicy;

  /// If set, overrides the option configured in the Task implementation class.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "JSON_VALIDATION_OPTION_UNSPECIFIED" : As per the default behavior, no
  /// validation will be run. Will not override any option set in a Task.
  /// - "SKIP" : Do not run any validation against JSON schemas.
  /// - "PRE_EXECUTION" : Validate all potential input JSON parameters against
  /// schemas specified in IntegrationParameter.
  /// - "POST_EXECUTION" : Validate all potential output JSON parameters against
  /// schemas specified in IntegrationParameter.
  /// - "PRE_POST_EXECUTION" : Perform both PRE_EXECUTION and POST_EXECUTION
  /// validations.
  core.String? jsonValidationOption;

  /// The set of tasks that are next in line to be executed as per the execution
  /// graph defined for the parent event, specified by `event_config_id`.
  ///
  /// Each of these next tasks are executed only if the condition associated
  /// with them evaluates to true.
  ///
  /// Optional.
  core.List<GoogleCloudIntegrationsV1alphaNextTask>? nextTasks;

  /// The policy dictating the execution of the next set of tasks for the
  /// current task.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "NEXT_TASKS_EXECUTION_POLICY_UNSPECIFIED" : Default.
  /// - "RUN_ALL_MATCH" : Execute all the tasks that satisfy their associated
  /// condition.
  /// - "RUN_FIRST_MATCH" : Execute the first task that satisfies the associated
  /// condition.
  core.String? nextTasksExecutionPolicy;

  /// The customized parameters the user can pass to this task.
  ///
  /// Optional.
  core.Map<core.String, GoogleCloudIntegrationsV1alphaEventParameter>?
  parameters;

  /// Informs the front-end application where to draw this error catcher config
  /// on the UI.
  ///
  /// Optional.
  GoogleCloudIntegrationsV1alphaCoordinate? position;

  /// Determines what action to take upon successful task completion.
  ///
  /// Optional.
  GoogleCloudIntegrationsV1alphaSuccessPolicy? successPolicy;

  /// Determines the number of times the task will be retried on failure and
  /// with what retry strategy.
  ///
  /// This is applicable for synchronous calls to Eventbus alone (Post).
  ///
  /// Optional.
  GoogleCloudIntegrationsV1alphaFailurePolicy? synchronousCallFailurePolicy;

  /// The name for the task.
  ///
  /// Optional.
  core.String? task;

  /// The policy dictating the execution strategy of this task.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "TASK_EXECUTION_STRATEGY_UNSPECIFIED" : Default. If the strategy is not
  /// set explicitly, it will default to `WHEN_ALL_SUCCEED`.
  /// - "WHEN_ALL_SUCCEED" : Wait until all of its previous tasks finished
  /// execution, then verify at least one of the edge conditions is met, and
  /// execute if possible. This should be considered as WHEN_ALL_TASKS_SUCCEED.
  /// - "WHEN_ANY_SUCCEED" : Start execution as long as any of its previous
  /// tasks finished execution and the corresponding edge condition is met
  /// (since we will execute if only that succeeding edge condition is met).
  /// - "WHEN_ALL_TASKS_AND_CONDITIONS_SUCCEED" : Wait until all of its previous
  /// tasks finished execution, then verify the all edge conditions are met and
  /// execute if possible.
  core.String? taskExecutionStrategy;

  /// The identifier of this task within its parent event config, specified by
  /// the client.
  ///
  /// This should be unique among all the tasks belong to the same event config.
  /// We use this field as the identifier to find next tasks (via field
  /// `next_tasks.task_id`).
  ///
  /// Required.
  core.String? taskId;

  /// Used to define task-template name if task is of type task-template
  ///
  /// Optional.
  core.String? taskTemplate;

  GoogleCloudIntegrationsV1alphaTaskConfig({
    this.conditionalFailurePolicies,
    this.description,
    this.displayName,
    this.errorCatcherId,
    this.externalTaskType,
    this.failurePolicy,
    this.jsonValidationOption,
    this.nextTasks,
    this.nextTasksExecutionPolicy,
    this.parameters,
    this.position,
    this.successPolicy,
    this.synchronousCallFailurePolicy,
    this.task,
    this.taskExecutionStrategy,
    this.taskId,
    this.taskTemplate,
  });

  GoogleCloudIntegrationsV1alphaTaskConfig.fromJson(core.Map json_)
    : this(
        conditionalFailurePolicies:
            json_.containsKey('conditionalFailurePolicies')
                ? GoogleCloudIntegrationsV1alphaConditionalFailurePolicies.fromJson(
                  json_['conditionalFailurePolicies']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        description: json_['description'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        errorCatcherId: json_['errorCatcherId'] as core.String?,
        externalTaskType: json_['externalTaskType'] as core.String?,
        failurePolicy:
            json_.containsKey('failurePolicy')
                ? GoogleCloudIntegrationsV1alphaFailurePolicy.fromJson(
                  json_['failurePolicy'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        jsonValidationOption: json_['jsonValidationOption'] as core.String?,
        nextTasks:
            (json_['nextTasks'] as core.List?)
                ?.map(
                  (value) => GoogleCloudIntegrationsV1alphaNextTask.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextTasksExecutionPolicy:
            json_['nextTasksExecutionPolicy'] as core.String?,
        parameters:
            (json_['parameters'] as core.Map<core.String, core.dynamic>?)?.map(
              (key, value) => core.MapEntry(
                key,
                GoogleCloudIntegrationsV1alphaEventParameter.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              ),
            ),
        position:
            json_.containsKey('position')
                ? GoogleCloudIntegrationsV1alphaCoordinate.fromJson(
                  json_['position'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        successPolicy:
            json_.containsKey('successPolicy')
                ? GoogleCloudIntegrationsV1alphaSuccessPolicy.fromJson(
                  json_['successPolicy'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        synchronousCallFailurePolicy:
            json_.containsKey('synchronousCallFailurePolicy')
                ? GoogleCloudIntegrationsV1alphaFailurePolicy.fromJson(
                  json_['synchronousCallFailurePolicy']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        task: json_['task'] as core.String?,
        taskExecutionStrategy: json_['taskExecutionStrategy'] as core.String?,
        taskId: json_['taskId'] as core.String?,
        taskTemplate: json_['taskTemplate'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (conditionalFailurePolicies != null)
      'conditionalFailurePolicies': conditionalFailurePolicies!,
    if (description != null) 'description': description!,
    if (displayName != null) 'displayName': displayName!,
    if (errorCatcherId != null) 'errorCatcherId': errorCatcherId!,
    if (externalTaskType != null) 'externalTaskType': externalTaskType!,
    if (failurePolicy != null) 'failurePolicy': failurePolicy!,
    if (jsonValidationOption != null)
      'jsonValidationOption': jsonValidationOption!,
    if (nextTasks != null) 'nextTasks': nextTasks!,
    if (nextTasksExecutionPolicy != null)
      'nextTasksExecutionPolicy': nextTasksExecutionPolicy!,
    if (parameters != null) 'parameters': parameters!,
    if (position != null) 'position': position!,
    if (successPolicy != null) 'successPolicy': successPolicy!,
    if (synchronousCallFailurePolicy != null)
      'synchronousCallFailurePolicy': synchronousCallFailurePolicy!,
    if (task != null) 'task': task!,
    if (taskExecutionStrategy != null)
      'taskExecutionStrategy': taskExecutionStrategy!,
    if (taskId != null) 'taskId': taskId!,
    if (taskTemplate != null) 'taskTemplate': taskTemplate!,
  };
}

/// Contains the details of the execution of this task.
class GoogleCloudIntegrationsV1alphaTaskExecutionDetails {
  /// Status for the current task execution attempt.
  core.List<GoogleCloudIntegrationsV1alphaAttemptStats>? taskAttemptStats;

  /// The execution state of this task.
  /// Possible string values are:
  /// - "TASK_EXECUTION_STATE_UNSPECIFIED" : Default value.
  /// - "PENDING_EXECUTION" : Task is waiting for its precondition tasks to
  /// finish to start the execution.
  /// - "IN_PROCESS" : Task is under processing.
  /// - "SUCCEED" : Task execution successfully finished. There's no more change
  /// after this state.
  /// - "FAILED" : Task execution failed. There's no more change after this
  /// state.
  /// - "FATAL" : Task execution failed and cause the whole integration
  /// execution to fail immediately. There's no more change after this state.
  /// - "RETRY_ON_HOLD" : Task execution failed and waiting for retry.
  /// - "SKIPPED" : Task execution skipped. This happens when its precondition
  /// wasn't met, or the integration execution been canceled before reach to the
  /// task. There's no more changes after this state.
  /// - "CANCELLED" : Task execution canceled when in progress. This happens
  /// when integration execution been canceled or any other task fall in fatal
  /// state.
  /// - "PENDING_ROLLBACK" : Task is waiting for its dependency tasks' rollback
  /// to finish to start its rollback.
  /// - "ROLLBACK_IN_PROCESS" : Task is rolling back.
  /// - "ROLLEDBACK" : Task is rolled back. This is the state we will set
  /// regardless of rollback succeeding or failing.
  /// - "SUSPENDED" : Task is a SuspensionTask which has executed once, creating
  /// a pending suspension.
  core.String? taskExecutionState;

  /// Pointer to the task config it used for execution.
  core.String? taskNumber;

  GoogleCloudIntegrationsV1alphaTaskExecutionDetails({
    this.taskAttemptStats,
    this.taskExecutionState,
    this.taskNumber,
  });

  GoogleCloudIntegrationsV1alphaTaskExecutionDetails.fromJson(core.Map json_)
    : this(
        taskAttemptStats:
            (json_['taskAttemptStats'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudIntegrationsV1alphaAttemptStats.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        taskExecutionState: json_['taskExecutionState'] as core.String?,
        taskNumber: json_['taskNumber'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (taskAttemptStats != null) 'taskAttemptStats': taskAttemptStats!,
    if (taskExecutionState != null) 'taskExecutionState': taskExecutionState!,
    if (taskNumber != null) 'taskNumber': taskNumber!,
  };
}

/// Defines the template for Application Integration
class GoogleCloudIntegrationsV1alphaTemplate {
  /// Creator of the template.
  ///
  /// Optional.
  core.String? author;

  /// Categories associated with the Template.
  ///
  /// The categories listed below will be utilized for the Template listing.
  ///
  /// Required.
  core.List<core.String>? categories;

  /// Components being used in the template.
  ///
  /// This could be used to categorize and filter.
  ///
  /// Optional.
  core.List<GoogleCloudIntegrationsV1alphaTemplateComponent>? components;

  /// Auto-generated.
  ///
  /// Output only.
  core.String? createTime;

  /// Description of the template.
  ///
  /// The length should not be more than 255 characters
  ///
  /// Optional.
  core.String? description;

  /// The name of the template
  ///
  /// Required.
  core.String? displayName;

  /// Link to template documentation.
  ///
  /// Optional.
  core.String? docLink;

  /// Time the template was last used.
  ///
  /// Optional.
  core.String? lastUsedTime;

  /// Identifier.
  ///
  /// Resource name of the template.
  core.String? name;

  /// Resource names with which the template is shared for example
  /// ProjectNumber/Ord id
  ///
  /// Required.
  core.List<core.String>? sharedWith;

  /// Tags which are used to identify templates.
  ///
  /// These tags could be for business use case, connectors etc.
  ///
  /// Required.
  core.List<core.String>? tags;

  /// Bundle which is part of the templates.
  ///
  /// The template entities in the bundle would be converted to an actual
  /// entity.
  ///
  /// Required.
  GoogleCloudIntegrationsV1alphaTemplateBundle? templateBundle;

  /// Auto-generated
  ///
  /// Output only.
  core.String? updateTime;

  /// Number of template usages.
  ///
  /// Optional.
  core.String? usageCount;

  /// Information on how to use the template.
  ///
  /// This should contain detailed information about usage of the template.
  ///
  /// Optional.
  core.String? usageInfo;

  /// Visibility of the template.
  ///
  /// Required.
  /// Possible string values are:
  /// - "VISIBILITY_UNSPECIFIED" : Visibility is unspecified
  /// - "PRIVATE" : Visibility is private
  /// - "SHARED" : Visibility is shared
  /// - "PUBLIC" : Visibility is public
  core.String? visibility;

  GoogleCloudIntegrationsV1alphaTemplate({
    this.author,
    this.categories,
    this.components,
    this.createTime,
    this.description,
    this.displayName,
    this.docLink,
    this.lastUsedTime,
    this.name,
    this.sharedWith,
    this.tags,
    this.templateBundle,
    this.updateTime,
    this.usageCount,
    this.usageInfo,
    this.visibility,
  });

  GoogleCloudIntegrationsV1alphaTemplate.fromJson(core.Map json_)
    : this(
        author: json_['author'] as core.String?,
        categories:
            (json_['categories'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        components:
            (json_['components'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudIntegrationsV1alphaTemplateComponent.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        createTime: json_['createTime'] as core.String?,
        description: json_['description'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        docLink: json_['docLink'] as core.String?,
        lastUsedTime: json_['lastUsedTime'] as core.String?,
        name: json_['name'] as core.String?,
        sharedWith:
            (json_['sharedWith'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        tags:
            (json_['tags'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        templateBundle:
            json_.containsKey('templateBundle')
                ? GoogleCloudIntegrationsV1alphaTemplateBundle.fromJson(
                  json_['templateBundle']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        updateTime: json_['updateTime'] as core.String?,
        usageCount: json_['usageCount'] as core.String?,
        usageInfo: json_['usageInfo'] as core.String?,
        visibility: json_['visibility'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (author != null) 'author': author!,
    if (categories != null) 'categories': categories!,
    if (components != null) 'components': components!,
    if (createTime != null) 'createTime': createTime!,
    if (description != null) 'description': description!,
    if (displayName != null) 'displayName': displayName!,
    if (docLink != null) 'docLink': docLink!,
    if (lastUsedTime != null) 'lastUsedTime': lastUsedTime!,
    if (name != null) 'name': name!,
    if (sharedWith != null) 'sharedWith': sharedWith!,
    if (tags != null) 'tags': tags!,
    if (templateBundle != null) 'templateBundle': templateBundle!,
    if (updateTime != null) 'updateTime': updateTime!,
    if (usageCount != null) 'usageCount': usageCount!,
    if (usageInfo != null) 'usageInfo': usageInfo!,
    if (visibility != null) 'visibility': visibility!,
  };
}

/// Define the bundle of the template.
class GoogleCloudIntegrationsV1alphaTemplateBundle {
  /// Main integration templates of the template bundle.
  ///
  /// Required.
  GoogleCloudIntegrationsV1alphaIntegrationVersionTemplate?
  integrationVersionTemplate;

  /// Sub integration templates which would be added along with main
  /// integration.
  ///
  /// Optional.
  core.List<GoogleCloudIntegrationsV1alphaIntegrationVersionTemplate>?
  subIntegrationVersionTemplates;

  GoogleCloudIntegrationsV1alphaTemplateBundle({
    this.integrationVersionTemplate,
    this.subIntegrationVersionTemplates,
  });

  GoogleCloudIntegrationsV1alphaTemplateBundle.fromJson(core.Map json_)
    : this(
        integrationVersionTemplate:
            json_.containsKey('integrationVersionTemplate')
                ? GoogleCloudIntegrationsV1alphaIntegrationVersionTemplate.fromJson(
                  json_['integrationVersionTemplate']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        subIntegrationVersionTemplates:
            (json_['subIntegrationVersionTemplates'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudIntegrationsV1alphaIntegrationVersionTemplate.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (integrationVersionTemplate != null)
      'integrationVersionTemplate': integrationVersionTemplate!,
    if (subIntegrationVersionTemplates != null)
      'subIntegrationVersionTemplates': subIntegrationVersionTemplates!,
  };
}

/// Define the components that are present in a template.
class GoogleCloudIntegrationsV1alphaTemplateComponent {
  /// Name of the component.
  ///
  /// Optional.
  core.String? name;

  /// Type of the component.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Component type is unspecified
  /// - "TRIGGER" : Trigger component
  /// - "TASK" : Task component
  /// - "CONNECTOR" : Connector component
  core.String? type;

  GoogleCloudIntegrationsV1alphaTemplateComponent({this.name, this.type});

  GoogleCloudIntegrationsV1alphaTemplateComponent.fromJson(core.Map json_)
    : this(
        name: json_['name'] as core.String?,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (name != null) 'name': name!,
    if (type != null) 'type': type!,
  };
}

/// Defines the functional test case for Application Integration.
///
/// Next available id: 15
class GoogleCloudIntegrationsV1alphaTestCase {
  /// Auto-generated.
  core.String? createTime;

  /// The creator's email address.
  ///
  /// Generated based on the End User Credentials/LOAS role of the user making
  /// the call.
  ///
  /// Optional.
  core.String? creatorEmail;

  /// Various policies for how to persist the test execution info including
  /// execution info, execution export info, execution metadata index and
  /// execution param index..
  ///
  /// Optional.
  /// Possible string values are:
  /// - "DATABASE_PERSISTENCE_POLICY_UNSPECIFIED" : Enables persistence for all
  /// execution data.
  /// - "DATABASE_PERSISTENCE_DISABLED" : Disables persistence for all execution
  /// data.
  /// - "DATABASE_PERSISTENCE_ASYNC" : Asynchronously persist all execution
  /// data.
  core.String? databasePersistencePolicy;

  /// Description of the test case.
  ///
  /// Optional.
  core.String? description;

  /// The display name of test case.
  ///
  /// Required.
  core.String? displayName;

  /// The last modifier's email address.
  ///
  /// Generated based on the End User Credentials/LOAS role of the user making
  /// the call.
  core.String? lastModifierEmail;

  /// The edit lock holder's email address.
  ///
  /// Generated based on the End User Credentials/LOAS role of the user making
  /// the call.
  ///
  /// Optional.
  core.String? lockHolderEmail;

  /// Auto-generated primary key.
  ///
  /// Output only.
  core.String? name;

  /// Parameters that are expected to be passed to the test case when the test
  /// case is triggered.
  ///
  /// This gives the user the ability to provide default values. This should
  /// include all the output variables of the trigger as input variables.
  ///
  /// Optional.
  core.List<GoogleCloudIntegrationsV1alphaIntegrationParameter>?
  testInputParameters;

  /// However, the test case doesn't mock or assert anything without
  /// test_task_configs.
  ///
  /// Optional.
  core.List<GoogleCloudIntegrationsV1alphaTestTaskConfig>? testTaskConfigs;

  /// Auto-generated.
  ///
  /// Optional.
  GoogleCloudIntegrationsV1alphaTriggerConfig? triggerConfig;

  /// This defines the trigger ID in workflow which is considered to be executed
  /// as starting point of the test case
  ///
  /// Required.
  core.String? triggerId;

  /// Auto-generated.
  core.String? updateTime;

  GoogleCloudIntegrationsV1alphaTestCase({
    this.createTime,
    this.creatorEmail,
    this.databasePersistencePolicy,
    this.description,
    this.displayName,
    this.lastModifierEmail,
    this.lockHolderEmail,
    this.name,
    this.testInputParameters,
    this.testTaskConfigs,
    this.triggerConfig,
    this.triggerId,
    this.updateTime,
  });

  GoogleCloudIntegrationsV1alphaTestCase.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        creatorEmail: json_['creatorEmail'] as core.String?,
        databasePersistencePolicy:
            json_['databasePersistencePolicy'] as core.String?,
        description: json_['description'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        lastModifierEmail: json_['lastModifierEmail'] as core.String?,
        lockHolderEmail: json_['lockHolderEmail'] as core.String?,
        name: json_['name'] as core.String?,
        testInputParameters:
            (json_['testInputParameters'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudIntegrationsV1alphaIntegrationParameter.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        testTaskConfigs:
            (json_['testTaskConfigs'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudIntegrationsV1alphaTestTaskConfig.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        triggerConfig:
            json_.containsKey('triggerConfig')
                ? GoogleCloudIntegrationsV1alphaTriggerConfig.fromJson(
                  json_['triggerConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        triggerId: json_['triggerId'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (createTime != null) 'createTime': createTime!,
    if (creatorEmail != null) 'creatorEmail': creatorEmail!,
    if (databasePersistencePolicy != null)
      'databasePersistencePolicy': databasePersistencePolicy!,
    if (description != null) 'description': description!,
    if (displayName != null) 'displayName': displayName!,
    if (lastModifierEmail != null) 'lastModifierEmail': lastModifierEmail!,
    if (lockHolderEmail != null) 'lockHolderEmail': lockHolderEmail!,
    if (name != null) 'name': name!,
    if (testInputParameters != null)
      'testInputParameters': testInputParameters!,
    if (testTaskConfigs != null) 'testTaskConfigs': testTaskConfigs!,
    if (triggerConfig != null) 'triggerConfig': triggerConfig!,
    if (triggerId != null) 'triggerId': triggerId!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// The request for testing an integration.
class GoogleCloudIntegrationsV1alphaTestIntegrationsRequest {
  /// This is used to identify the client on whose behalf the event will be
  /// executed.
  ///
  /// Required.
  core.String? clientId;

  /// Config parameters used during integration execution.
  ///
  /// Optional.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? configParameters;

  /// custom deadline of the rpc
  ///
  /// Optional.
  core.String? deadlineSecondsTime;

  /// Input parameters used during integration execution.
  ///
  /// Optional.
  core.Map<core.String, GoogleCloudIntegrationsV1alphaValueType>?
  inputParameters;

  /// integration config to execute the workflow
  ///
  /// Required.
  GoogleCloudIntegrationsV1alphaIntegrationVersion? integrationVersion;

  /// Passed in as parameters to each integration execution.
  ///
  /// Optional.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  EnterpriseCrmFrontendsEventbusProtoEventParameters? parameters;

  /// Can be specified in the event request, otherwise false (default).
  ///
  /// If true, enables tasks with condition "test_mode = true". If false,
  /// disables tasks with condition "test_mode = true" if global test mode (set
  /// by platform) is also false {@link EventBusConfig}.
  ///
  /// Optional.
  core.bool? testMode;

  /// The trigger id of the integration trigger config.
  ///
  /// If both trigger_id and client_id is present, the integration is executed
  /// from the start tasks provided by the matching trigger config otherwise it
  /// is executed from the default start tasks.
  ///
  /// Required.
  core.String? triggerId;

  GoogleCloudIntegrationsV1alphaTestIntegrationsRequest({
    this.clientId,
    this.configParameters,
    this.deadlineSecondsTime,
    this.inputParameters,
    this.integrationVersion,
    this.parameters,
    this.testMode,
    this.triggerId,
  });

  GoogleCloudIntegrationsV1alphaTestIntegrationsRequest.fromJson(core.Map json_)
    : this(
        clientId: json_['clientId'] as core.String?,
        configParameters:
            json_.containsKey('configParameters')
                ? json_['configParameters']
                    as core.Map<core.String, core.dynamic>
                : null,
        deadlineSecondsTime: json_['deadlineSecondsTime'] as core.String?,
        inputParameters: (json_['inputParameters']
                as core.Map<core.String, core.dynamic>?)
            ?.map(
              (key, value) => core.MapEntry(
                key,
                GoogleCloudIntegrationsV1alphaValueType.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              ),
            ),
        integrationVersion:
            json_.containsKey('integrationVersion')
                ? GoogleCloudIntegrationsV1alphaIntegrationVersion.fromJson(
                  json_['integrationVersion']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        parameters:
            json_.containsKey('parameters')
                ? EnterpriseCrmFrontendsEventbusProtoEventParameters.fromJson(
                  json_['parameters'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        testMode: json_['testMode'] as core.bool?,
        triggerId: json_['triggerId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (clientId != null) 'clientId': clientId!,
    if (configParameters != null) 'configParameters': configParameters!,
    if (deadlineSecondsTime != null)
      'deadlineSecondsTime': deadlineSecondsTime!,
    if (inputParameters != null) 'inputParameters': inputParameters!,
    if (integrationVersion != null) 'integrationVersion': integrationVersion!,
    if (parameters != null) 'parameters': parameters!,
    if (testMode != null) 'testMode': testMode!,
    if (triggerId != null) 'triggerId': triggerId!,
  };
}

/// The response for testing an integration.
class GoogleCloudIntegrationsV1alphaTestIntegrationsResponse {
  /// Details for the integration that were executed.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  EnterpriseCrmFrontendsEventbusProtoEventParameters? eventParameters;

  /// Is true if any execution in the integration failed.
  ///
  /// False otherwise.
  core.bool? executionFailed;

  /// The id of the execution corresponding to this run of integration.
  core.String? executionId;

  /// Parameters are a part of Event and can be used to communicate between
  /// different tasks that are part of the same integration execution.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.List<EnterpriseCrmFrontendsEventbusProtoParameterEntry>?
  parameterEntries;

  /// Parameters are a part of Event and can be used to communicate between
  /// different tasks that are part of the same integration execution.
  ///
  /// Optional.
  core.Map<core.String, GoogleCloudIntegrationsV1alphaValueType>? parameters;

  GoogleCloudIntegrationsV1alphaTestIntegrationsResponse({
    this.eventParameters,
    this.executionFailed,
    this.executionId,
    this.parameterEntries,
    this.parameters,
  });

  GoogleCloudIntegrationsV1alphaTestIntegrationsResponse.fromJson(
    core.Map json_,
  ) : this(
        eventParameters:
            json_.containsKey('eventParameters')
                ? EnterpriseCrmFrontendsEventbusProtoEventParameters.fromJson(
                  json_['eventParameters']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        executionFailed: json_['executionFailed'] as core.bool?,
        executionId: json_['executionId'] as core.String?,
        parameterEntries:
            (json_['parameterEntries'] as core.List?)
                ?.map(
                  (value) =>
                      EnterpriseCrmFrontendsEventbusProtoParameterEntry.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        parameters:
            (json_['parameters'] as core.Map<core.String, core.dynamic>?)?.map(
              (key, value) => core.MapEntry(
                key,
                GoogleCloudIntegrationsV1alphaValueType.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              ),
            ),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (eventParameters != null) 'eventParameters': eventParameters!,
    if (executionFailed != null) 'executionFailed': executionFailed!,
    if (executionId != null) 'executionId': executionId!,
    if (parameterEntries != null) 'parameterEntries': parameterEntries!,
    if (parameters != null) 'parameters': parameters!,
  };
}

/// The task mock configuration details and assertions for functional tests.
///
/// Next available id: 6
class GoogleCloudIntegrationsV1alphaTestTaskConfig {
  /// List of conditions or expressions which should be evaluated to true unless
  /// there is a bug/problem in the integration.
  ///
  /// These are evaluated one the task execution is completed as per the mock
  /// strategy in test case
  ///
  /// Optional.
  core.List<GoogleCloudIntegrationsV1alphaAssertion>? assertions;

  /// Defines how to mock the given task during test execution
  ///
  /// Optional.
  GoogleCloudIntegrationsV1alphaMockConfig? mockConfig;

  /// This defines in the test case, the task name in integration which will be
  /// mocked by this test task config
  ///
  /// Required.
  core.String? task;

  /// Auto-generated.
  ///
  /// Optional.
  GoogleCloudIntegrationsV1alphaTaskConfig? taskConfig;

  /// This defines in the test case, the task in integration which will be
  /// mocked by this test task config
  ///
  /// Required.
  core.String? taskNumber;

  GoogleCloudIntegrationsV1alphaTestTaskConfig({
    this.assertions,
    this.mockConfig,
    this.task,
    this.taskConfig,
    this.taskNumber,
  });

  GoogleCloudIntegrationsV1alphaTestTaskConfig.fromJson(core.Map json_)
    : this(
        assertions:
            (json_['assertions'] as core.List?)
                ?.map(
                  (value) => GoogleCloudIntegrationsV1alphaAssertion.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        mockConfig:
            json_.containsKey('mockConfig')
                ? GoogleCloudIntegrationsV1alphaMockConfig.fromJson(
                  json_['mockConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        task: json_['task'] as core.String?,
        taskConfig:
            json_.containsKey('taskConfig')
                ? GoogleCloudIntegrationsV1alphaTaskConfig.fromJson(
                  json_['taskConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        taskNumber: json_['taskNumber'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (assertions != null) 'assertions': assertions!,
    if (mockConfig != null) 'mockConfig': mockConfig!,
    if (task != null) 'task': task!,
    if (taskConfig != null) 'taskConfig': taskConfig!,
    if (taskNumber != null) 'taskNumber': taskNumber!,
  };
}

/// Request to enable/disable http call for a provisioned client
class GoogleCloudIntegrationsV1alphaToggleHttpRequest {
  /// REQUIRED: True if http call feature should be turned on for this region
  ///
  /// Required.
  core.bool? enableHttpCall;

  GoogleCloudIntegrationsV1alphaToggleHttpRequest({this.enableHttpCall});

  GoogleCloudIntegrationsV1alphaToggleHttpRequest.fromJson(core.Map json_)
    : this(enableHttpCall: json_['enableHttpCall'] as core.bool?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (enableHttpCall != null) 'enableHttpCall': enableHttpCall!,
  };
}

/// Configuration detail of a trigger.
class GoogleCloudIntegrationsV1alphaTriggerConfig {
  /// An alert threshold configuration for the \[trigger + client +
  /// integration\] tuple.
  ///
  /// If these values are not specified in the trigger config, default values
  /// will be populated by the system. Note that there must be exactly one alert
  /// threshold configured per \[client + trigger + integration\] when
  /// published.
  ///
  /// Optional.
  core.List<GoogleCloudIntegrationsV1alphaIntegrationAlertConfig>? alertConfig;

  /// Cloud Scheduler Trigger related metadata
  ///
  /// Optional.
  GoogleCloudIntegrationsV1alphaCloudSchedulerConfig? cloudSchedulerConfig;

  /// User-provided description intended to give additional business context
  /// about the task.
  ///
  /// Optional.
  core.String? description;

  /// Optional Error catcher id of the error catch flow which will be executed
  /// when execution error happens in the task
  ///
  /// Optional.
  core.String? errorCatcherId;

  /// List of input variables for the api trigger.
  ///
  /// Optional.
  GoogleCloudIntegrationsV1alphaTriggerConfigVariables? inputVariables;

  /// The user created label for a particular trigger.
  ///
  /// Optional.
  core.String? label;

  /// Dictates how next tasks will be executed.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "NEXT_TASKS_EXECUTION_POLICY_UNSPECIFIED" : Default.
  /// - "RUN_ALL_MATCH" : Execute all the tasks that satisfy their associated
  /// condition.
  /// - "RUN_FIRST_MATCH" : Execute the first task that satisfies the associated
  /// condition.
  core.String? nextTasksExecutionPolicy;

  /// List of output variables for the api trigger.
  ///
  /// Optional.
  GoogleCloudIntegrationsV1alphaTriggerConfigVariables? outputVariables;

  /// Informs the front-end application where to draw this error catcher config
  /// on the UI.
  ///
  /// Optional.
  GoogleCloudIntegrationsV1alphaCoordinate? position;

  /// Configurable properties of the trigger, not to be confused with
  /// integration parameters.
  ///
  /// E.g. "name" is a property for API triggers and "subscription" is a
  /// property for Pub/sub triggers.
  ///
  /// Optional.
  core.Map<core.String, core.String>? properties;

  /// Set of tasks numbers from where the integration execution is started by
  /// this trigger.
  ///
  /// If this is empty, then integration is executed with default start tasks.
  /// In the list of start tasks, none of two tasks can have direct
  /// ancestor-descendant relationships (i.e. in a same integration execution
  /// graph).
  ///
  /// Optional.
  core.List<GoogleCloudIntegrationsV1alphaNextTask>? startTasks;

  /// Name of the trigger.
  ///
  /// Example: "API Trigger", "Cloud Pub Sub Trigger" When set will be sent out
  /// to monitoring dashabord for tracking purpose.
  ///
  /// Optional.
  core.String? trigger;

  /// Auto-generated trigger ID.
  ///
  /// The ID is based on the properties that you define in the trigger config.
  /// For example, for an API trigger, the trigger ID follows the format:
  /// api_trigger/TRIGGER_NAME Where trigger config has properties with value
  /// {"Trigger name": TRIGGER_NAME}
  ///
  /// Optional.
  core.String? triggerId;

  /// A number to uniquely identify each trigger config within the integration
  /// on UI.
  ///
  /// Required.
  core.String? triggerNumber;

  /// Type of trigger
  ///
  /// Optional.
  /// Possible string values are:
  /// - "TRIGGER_TYPE_UNSPECIFIED" : Unknown.
  /// - "CRON" : Trigger by scheduled time.
  /// - "API" : Trigger by API call.
  /// - "SFDC_CHANNEL" : Trigger by Salesforce Channel.
  /// - "CLOUD_PUBSUB_EXTERNAL" : Trigger by Pub/Sub external.
  /// - "SFDC_CDC_CHANNEL" : SFDC Channel Trigger for CDC.
  /// - "CLOUD_SCHEDULER" : Trigger by Cloud Scheduler job.
  /// - "INTEGRATION_CONNECTOR_TRIGGER" : Trigger by Connector Event
  /// - "PRIVATE_TRIGGER" : Trigger for private workflow
  /// - "CLOUD_PUBSUB" : Trigger by cloud pub/sub for internal ip
  /// - "EVENTARC_TRIGGER" : Trigger by Eventarc
  core.String? triggerType;

  GoogleCloudIntegrationsV1alphaTriggerConfig({
    this.alertConfig,
    this.cloudSchedulerConfig,
    this.description,
    this.errorCatcherId,
    this.inputVariables,
    this.label,
    this.nextTasksExecutionPolicy,
    this.outputVariables,
    this.position,
    this.properties,
    this.startTasks,
    this.trigger,
    this.triggerId,
    this.triggerNumber,
    this.triggerType,
  });

  GoogleCloudIntegrationsV1alphaTriggerConfig.fromJson(core.Map json_)
    : this(
        alertConfig:
            (json_['alertConfig'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudIntegrationsV1alphaIntegrationAlertConfig.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        cloudSchedulerConfig:
            json_.containsKey('cloudSchedulerConfig')
                ? GoogleCloudIntegrationsV1alphaCloudSchedulerConfig.fromJson(
                  json_['cloudSchedulerConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        description: json_['description'] as core.String?,
        errorCatcherId: json_['errorCatcherId'] as core.String?,
        inputVariables:
            json_.containsKey('inputVariables')
                ? GoogleCloudIntegrationsV1alphaTriggerConfigVariables.fromJson(
                  json_['inputVariables']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        label: json_['label'] as core.String?,
        nextTasksExecutionPolicy:
            json_['nextTasksExecutionPolicy'] as core.String?,
        outputVariables:
            json_.containsKey('outputVariables')
                ? GoogleCloudIntegrationsV1alphaTriggerConfigVariables.fromJson(
                  json_['outputVariables']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        position:
            json_.containsKey('position')
                ? GoogleCloudIntegrationsV1alphaCoordinate.fromJson(
                  json_['position'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        properties: (json_['properties']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        startTasks:
            (json_['startTasks'] as core.List?)
                ?.map(
                  (value) => GoogleCloudIntegrationsV1alphaNextTask.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        trigger: json_['trigger'] as core.String?,
        triggerId: json_['triggerId'] as core.String?,
        triggerNumber: json_['triggerNumber'] as core.String?,
        triggerType: json_['triggerType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (alertConfig != null) 'alertConfig': alertConfig!,
    if (cloudSchedulerConfig != null)
      'cloudSchedulerConfig': cloudSchedulerConfig!,
    if (description != null) 'description': description!,
    if (errorCatcherId != null) 'errorCatcherId': errorCatcherId!,
    if (inputVariables != null) 'inputVariables': inputVariables!,
    if (label != null) 'label': label!,
    if (nextTasksExecutionPolicy != null)
      'nextTasksExecutionPolicy': nextTasksExecutionPolicy!,
    if (outputVariables != null) 'outputVariables': outputVariables!,
    if (position != null) 'position': position!,
    if (properties != null) 'properties': properties!,
    if (startTasks != null) 'startTasks': startTasks!,
    if (trigger != null) 'trigger': trigger!,
    if (triggerId != null) 'triggerId': triggerId!,
    if (triggerNumber != null) 'triggerNumber': triggerNumber!,
    if (triggerType != null) 'triggerType': triggerType!,
  };
}

/// Variables names mapped to api trigger.
typedef GoogleCloudIntegrationsV1alphaTriggerConfigVariables =
    $TriggerConfigVariables;

/// Request for UnpublishIntegrationVersion.
typedef GoogleCloudIntegrationsV1alphaUnpublishIntegrationVersionRequest =
    $Empty;

/// Request to Unshare template
class GoogleCloudIntegrationsV1alphaUnshareTemplateRequest {
  /// Project name resources to unshare the template.
  ///
  /// The project names is expected in resource format Ex:
  /// projects/{project-number}
  ///
  /// Optional.
  core.List<core.String>? resourceNames;

  GoogleCloudIntegrationsV1alphaUnshareTemplateRequest({this.resourceNames});

  GoogleCloudIntegrationsV1alphaUnshareTemplateRequest.fromJson(core.Map json_)
    : this(
        resourceNames:
            (json_['resourceNames'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (resourceNames != null) 'resourceNames': resourceNames!,
  };
}

/// Request for UploadIntegrationVersion.
class GoogleCloudIntegrationsV1alphaUploadIntegrationVersionRequest {
  /// The textproto of the IntegrationVersion.
  core.String? content;

  /// File format for upload request.
  /// Possible string values are:
  /// - "FILE_FORMAT_UNSPECIFIED" : Unspecified file format
  /// - "JSON" : JSON File Format
  /// - "YAML" : YAML File Format
  core.String? fileFormat;

  GoogleCloudIntegrationsV1alphaUploadIntegrationVersionRequest({
    this.content,
    this.fileFormat,
  });

  GoogleCloudIntegrationsV1alphaUploadIntegrationVersionRequest.fromJson(
    core.Map json_,
  ) : this(
        content: json_['content'] as core.String?,
        fileFormat: json_['fileFormat'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (content != null) 'content': content!,
    if (fileFormat != null) 'fileFormat': fileFormat!,
  };
}

/// Response for UploadIntegrationVersion.
class GoogleCloudIntegrationsV1alphaUploadIntegrationVersionResponse {
  /// The uploaded integration.
  GoogleCloudIntegrationsV1alphaIntegrationVersion? integrationVersion;

  GoogleCloudIntegrationsV1alphaUploadIntegrationVersionResponse({
    this.integrationVersion,
  });

  GoogleCloudIntegrationsV1alphaUploadIntegrationVersionResponse.fromJson(
    core.Map json_,
  ) : this(
        integrationVersion:
            json_.containsKey('integrationVersion')
                ? GoogleCloudIntegrationsV1alphaIntegrationVersion.fromJson(
                  json_['integrationVersion']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (integrationVersion != null) 'integrationVersion': integrationVersion!,
  };
}

/// Request for UploadTemplate.
class GoogleCloudIntegrationsV1alphaUploadTemplateRequest {
  /// The textproto of the template.
  ///
  /// Required.
  core.String? content;

  /// File format for upload request.
  ///
  /// Required.
  /// Possible string values are:
  /// - "FILE_FORMAT_UNSPECIFIED" : Unspecified file format
  /// - "JSON" : JSON File Format
  /// - "YAML" : YAML File Format
  core.String? fileFormat;

  GoogleCloudIntegrationsV1alphaUploadTemplateRequest({
    this.content,
    this.fileFormat,
  });

  GoogleCloudIntegrationsV1alphaUploadTemplateRequest.fromJson(core.Map json_)
    : this(
        content: json_['content'] as core.String?,
        fileFormat: json_['fileFormat'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (content != null) 'content': content!,
    if (fileFormat != null) 'fileFormat': fileFormat!,
  };
}

/// Response for UploadTemplate.
class GoogleCloudIntegrationsV1alphaUploadTemplateResponse {
  /// The uploaded Template
  GoogleCloudIntegrationsV1alphaTemplate? template;

  GoogleCloudIntegrationsV1alphaUploadTemplateResponse({this.template});

  GoogleCloudIntegrationsV1alphaUploadTemplateResponse.fromJson(core.Map json_)
    : this(
        template:
            json_.containsKey('template')
                ? GoogleCloudIntegrationsV1alphaTemplate.fromJson(
                  json_['template'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (template != null) 'template': template!,
  };
}

/// Request for UploadTestCase.
class GoogleCloudIntegrationsV1alphaUploadTestCaseRequest {
  /// The textproto of the test case.
  core.String? content;

  /// File format for upload request.
  /// Possible string values are:
  /// - "FILE_FORMAT_UNSPECIFIED" : Unspecified file format
  /// - "JSON" : JSON File Format
  /// - "YAML" : YAML File Format
  core.String? fileFormat;

  GoogleCloudIntegrationsV1alphaUploadTestCaseRequest({
    this.content,
    this.fileFormat,
  });

  GoogleCloudIntegrationsV1alphaUploadTestCaseRequest.fromJson(core.Map json_)
    : this(
        content: json_['content'] as core.String?,
        fileFormat: json_['fileFormat'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (content != null) 'content': content!,
    if (fileFormat != null) 'fileFormat': fileFormat!,
  };
}

/// Response for UploadTestCase.
class GoogleCloudIntegrationsV1alphaUploadTestCaseResponse {
  /// The uploaded TestCase
  GoogleCloudIntegrationsV1alphaTestCase? testCase;

  GoogleCloudIntegrationsV1alphaUploadTestCaseResponse({this.testCase});

  GoogleCloudIntegrationsV1alphaUploadTestCaseResponse.fromJson(core.Map json_)
    : this(
        testCase:
            json_.containsKey('testCase')
                ? GoogleCloudIntegrationsV1alphaTestCase.fromJson(
                  json_['testCase'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (testCase != null) 'testCase': testCase!,
  };
}

/// Request to Use template
class GoogleCloudIntegrationsV1alphaUseTemplateRequest {
  /// Integration details which would be created via templates.
  ///
  /// Required.
  GoogleCloudIntegrationsV1alphaUseTemplateRequestIntegrationDetails?
  integrationDetails;

  /// The region of the Integration to be created.
  ///
  /// Required.
  core.String? integrationRegion;

  /// Sub Integration which would be created via templates.
  ///
  /// Optional.
  core.Map<
    core.String,
    GoogleCloudIntegrationsV1alphaUseTemplateRequestIntegrationDetails
  >?
  subIntegrations;

  GoogleCloudIntegrationsV1alphaUseTemplateRequest({
    this.integrationDetails,
    this.integrationRegion,
    this.subIntegrations,
  });

  GoogleCloudIntegrationsV1alphaUseTemplateRequest.fromJson(core.Map json_)
    : this(
        integrationDetails:
            json_.containsKey('integrationDetails')
                ? GoogleCloudIntegrationsV1alphaUseTemplateRequestIntegrationDetails.fromJson(
                  json_['integrationDetails']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        integrationRegion: json_['integrationRegion'] as core.String?,
        subIntegrations: (json_['subIntegrations']
                as core.Map<core.String, core.dynamic>?)
            ?.map(
              (key, value) => core.MapEntry(
                key,
                GoogleCloudIntegrationsV1alphaUseTemplateRequestIntegrationDetails.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              ),
            ),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (integrationDetails != null) 'integrationDetails': integrationDetails!,
    if (integrationRegion != null) 'integrationRegion': integrationRegion!,
    if (subIntegrations != null) 'subIntegrations': subIntegrations!,
  };
}

/// Sub Integration which would be created via templates.
class GoogleCloudIntegrationsV1alphaUseTemplateRequestIntegrationDetails {
  /// Name of the sub integration which would be created via templates.
  ///
  /// Required.
  core.String? integration;

  /// Description of the sub integration which would be created via templates.
  ///
  /// Optional.
  core.String? integrationDescription;

  GoogleCloudIntegrationsV1alphaUseTemplateRequestIntegrationDetails({
    this.integration,
    this.integrationDescription,
  });

  GoogleCloudIntegrationsV1alphaUseTemplateRequestIntegrationDetails.fromJson(
    core.Map json_,
  ) : this(
        integration: json_['integration'] as core.String?,
        integrationDescription: json_['integrationDescription'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (integration != null) 'integration': integration!,
    if (integrationDescription != null)
      'integrationDescription': integrationDescription!,
  };
}

/// Response for use template
class GoogleCloudIntegrationsV1alphaUseTemplateResponse {
  /// IntegrationVersion which is created.
  GoogleCloudIntegrationsV1alphaIntegrationVersion? integrationVersion;

  /// Sub integration versions which are created.
  core.List<GoogleCloudIntegrationsV1alphaIntegrationVersion>?
  subIntegrationVersions;

  GoogleCloudIntegrationsV1alphaUseTemplateResponse({
    this.integrationVersion,
    this.subIntegrationVersions,
  });

  GoogleCloudIntegrationsV1alphaUseTemplateResponse.fromJson(core.Map json_)
    : this(
        integrationVersion:
            json_.containsKey('integrationVersion')
                ? GoogleCloudIntegrationsV1alphaIntegrationVersion.fromJson(
                  json_['integrationVersion']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        subIntegrationVersions:
            (json_['subIntegrationVersions'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudIntegrationsV1alphaIntegrationVersion.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (integrationVersion != null) 'integrationVersion': integrationVersion!,
    if (subIntegrationVersions != null)
      'subIntegrationVersions': subIntegrationVersions!,
  };
}

/// Username and password pair.
class GoogleCloudIntegrationsV1alphaUsernameAndPassword {
  /// Password to be used
  core.String? password;

  /// Username to be used
  core.String? username;

  GoogleCloudIntegrationsV1alphaUsernameAndPassword({
    this.password,
    this.username,
  });

  GoogleCloudIntegrationsV1alphaUsernameAndPassword.fromJson(core.Map json_)
    : this(
        password: json_['password'] as core.String?,
        username: json_['username'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (password != null) 'password': password!,
    if (username != null) 'username': username!,
  };
}

/// The type of the parameter.
class GoogleCloudIntegrationsV1alphaValueType {
  /// Boolean Array.
  GoogleCloudIntegrationsV1alphaBooleanParameterArray? booleanArray;

  /// Boolean.
  core.bool? booleanValue;

  /// Double Number Array.
  GoogleCloudIntegrationsV1alphaDoubleParameterArray? doubleArray;

  /// Double Number.
  core.double? doubleValue;

  /// Integer Array.
  GoogleCloudIntegrationsV1alphaIntParameterArray? intArray;

  /// Integer.
  core.String? intValue;

  /// Json.
  core.String? jsonValue;

  /// String Array.
  GoogleCloudIntegrationsV1alphaStringParameterArray? stringArray;

  /// String.
  core.String? stringValue;

  GoogleCloudIntegrationsV1alphaValueType({
    this.booleanArray,
    this.booleanValue,
    this.doubleArray,
    this.doubleValue,
    this.intArray,
    this.intValue,
    this.jsonValue,
    this.stringArray,
    this.stringValue,
  });

  GoogleCloudIntegrationsV1alphaValueType.fromJson(core.Map json_)
    : this(
        booleanArray:
            json_.containsKey('booleanArray')
                ? GoogleCloudIntegrationsV1alphaBooleanParameterArray.fromJson(
                  json_['booleanArray'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        booleanValue: json_['booleanValue'] as core.bool?,
        doubleArray:
            json_.containsKey('doubleArray')
                ? GoogleCloudIntegrationsV1alphaDoubleParameterArray.fromJson(
                  json_['doubleArray'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        doubleValue: (json_['doubleValue'] as core.num?)?.toDouble(),
        intArray:
            json_.containsKey('intArray')
                ? GoogleCloudIntegrationsV1alphaIntParameterArray.fromJson(
                  json_['intArray'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        intValue: json_['intValue'] as core.String?,
        jsonValue: json_['jsonValue'] as core.String?,
        stringArray:
            json_.containsKey('stringArray')
                ? GoogleCloudIntegrationsV1alphaStringParameterArray.fromJson(
                  json_['stringArray'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        stringValue: json_['stringValue'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (booleanArray != null) 'booleanArray': booleanArray!,
    if (booleanValue != null) 'booleanValue': booleanValue!,
    if (doubleArray != null) 'doubleArray': doubleArray!,
    if (doubleValue != null) 'doubleValue': doubleValue!,
    if (intArray != null) 'intArray': intArray!,
    if (intValue != null) 'intValue': intValue!,
    if (jsonValue != null) 'jsonValue': jsonValue!,
    if (stringArray != null) 'stringArray': stringArray!,
    if (stringValue != null) 'stringValue': stringValue!,
  };
}

/// LINT.IfChange Use this request to post all workflows associated with a given
/// trigger id.
///
/// Next available id: 13
class GoogleInternalCloudCrmEventbusV3PostToQueueWithTriggerIdRequest {
  /// If the client id is provided, then the combination of trigger id and
  /// client id is matched across all the workflows.
  ///
  /// If the client id is not provided, then workflows with matching trigger id
  /// are executed for each client id in the {@link TriggerConfig}. For Api
  /// Trigger, the client id is required and will be validated against the
  /// allowed clients.
  ///
  /// Optional.
  core.String? clientId;

  /// Flag to determine whether clients would suppress a warning when no ACTIVE
  /// workflows are not found.
  ///
  /// If this flag is set to be true, an error will not be thrown if the
  /// requested trigger_id or client_id is not found in any ACTIVE workflow.
  /// Otherwise, the error is always thrown. The flag is set to be false by
  /// default.
  ///
  /// Optional.
  core.bool? ignoreErrorIfNoActiveWorkflow;

  /// Passed in as parameters to each workflow execution.
  ///
  /// Optional.
  EnterpriseCrmEventbusProtoEventParameters? parameters;

  /// The request priority this request should be processed at.
  ///
  /// For internal users:
  /// Possible string values are:
  /// - "UNSPCIFIED" : Unspecified
  /// - "SHEDDABLE" : Frequent partial and occasional full unavailability is
  /// expected and not pageable. * Requests to this band will be shed before all
  /// other requests. * This is the default for async calls sent from batch
  /// jobs.
  /// - "SHEDDABLE_PLUS" : Partial unavailability is expected and is not
  /// necessarily pageable. * Requests to this band will be shed before any
  /// critical traffic. * This is the default for async calls sent from
  /// production jobs.
  /// - "CRITICAL" : Any outage is a pageable event. * During a production
  /// outage requests in this band will only be shed before CRITICAL_PLUS. *
  /// This is the default for sync calls sent from production jobs.
  /// - "CRITICAL_PLUS" : Any outage is a pageable event. * The guideline is for
  /// \< 10% of requests to a service to be in this band. * During a production
  /// outage requests in this band will be prioritized above all others. *
  /// Opt-in to CRITICAL_PLUS when your workflow triggers by human.
  core.String? priority;

  /// This is a field to see the quota retry count for integration execution
  ///
  /// Optional.
  core.int? quotaRetryCount;

  /// This is used to de-dup incoming request: if the duplicate request was
  /// detected, the response from the previous execution is returned.
  ///
  /// Must have no more than 36 characters and contain only alphanumeric
  /// characters and hyphens.
  ///
  /// Optional.
  core.String? requestId;

  /// This field is only required when using Admin Access.
  ///
  /// The resource name of target, or the parent resource name. For example:
  /// "projects / * /locations / * /integrations / * "
  core.String? resourceName;

  /// Time in milliseconds since epoch when the given event would be scheduled.
  ///
  /// Optional.
  core.String? scheduledTime;

  /// Sets test mode in {@link enterprise/crm/eventbus/event_message.proto}.
  ///
  /// Optional.
  core.bool? testMode;

  /// Matched against all {@link TriggerConfig}s across all workflows.
  ///
  /// i.e. TriggerConfig.trigger_id.equals(trigger_id) Required.
  core.String? triggerId;

  /// This is a unique id provided by the method caller.
  ///
  /// If provided this will be used as the execution_id when a new execution
  /// info is created. This is a string representation of a UUID. Must have no
  /// more than 36 characters and contain only alphanumeric characters and
  /// hyphens.
  core.String? userGeneratedExecutionId;

  /// If provided, the workflow_name is used to filter all the matched workflows
  /// having same trigger_id+client_id.
  ///
  /// A combination of trigger_id, client_id and workflow_name identifies a
  /// unique workflow.
  ///
  /// Optional.
  core.String? workflowName;

  GoogleInternalCloudCrmEventbusV3PostToQueueWithTriggerIdRequest({
    this.clientId,
    this.ignoreErrorIfNoActiveWorkflow,
    this.parameters,
    this.priority,
    this.quotaRetryCount,
    this.requestId,
    this.resourceName,
    this.scheduledTime,
    this.testMode,
    this.triggerId,
    this.userGeneratedExecutionId,
    this.workflowName,
  });

  GoogleInternalCloudCrmEventbusV3PostToQueueWithTriggerIdRequest.fromJson(
    core.Map json_,
  ) : this(
        clientId: json_['clientId'] as core.String?,
        ignoreErrorIfNoActiveWorkflow:
            json_['ignoreErrorIfNoActiveWorkflow'] as core.bool?,
        parameters:
            json_.containsKey('parameters')
                ? EnterpriseCrmEventbusProtoEventParameters.fromJson(
                  json_['parameters'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        priority: json_['priority'] as core.String?,
        quotaRetryCount: json_['quotaRetryCount'] as core.int?,
        requestId: json_['requestId'] as core.String?,
        resourceName: json_['resourceName'] as core.String?,
        scheduledTime: json_['scheduledTime'] as core.String?,
        testMode: json_['testMode'] as core.bool?,
        triggerId: json_['triggerId'] as core.String?,
        userGeneratedExecutionId:
            json_['userGeneratedExecutionId'] as core.String?,
        workflowName: json_['workflowName'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (clientId != null) 'clientId': clientId!,
    if (ignoreErrorIfNoActiveWorkflow != null)
      'ignoreErrorIfNoActiveWorkflow': ignoreErrorIfNoActiveWorkflow!,
    if (parameters != null) 'parameters': parameters!,
    if (priority != null) 'priority': priority!,
    if (quotaRetryCount != null) 'quotaRetryCount': quotaRetryCount!,
    if (requestId != null) 'requestId': requestId!,
    if (resourceName != null) 'resourceName': resourceName!,
    if (scheduledTime != null) 'scheduledTime': scheduledTime!,
    if (testMode != null) 'testMode': testMode!,
    if (triggerId != null) 'triggerId': triggerId!,
    if (userGeneratedExecutionId != null)
      'userGeneratedExecutionId': userGeneratedExecutionId!,
    if (workflowName != null) 'workflowName': workflowName!,
  };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef GoogleProtobufEmpty = $Empty;
