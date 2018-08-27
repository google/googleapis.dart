// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: unnecessary_cast

library googleapis.cloudkms.v1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client cloudkms/v1';

/// Cloud KMS allows you to keep cryptographic keys in one central cloud
/// service, for direct use by other cloud resources and applications. With
/// Cloud KMS you are the ultimate custodian of your data, you can manage
/// encryption in the cloud the same way you do on-premises, and you have a
/// provable and monitorable root of trust over your data.
class CloudkmsApi {
  /// View and manage your data across Google Cloud Platform services
  static const CloudPlatformScope =
      "https://www.googleapis.com/auth/cloud-platform";

  final commons.ApiRequester _requester;

  ProjectsResourceApi get projects => new ProjectsResourceApi(_requester);

  CloudkmsApi(http.Client client,
      {core.String rootUrl: "https://cloudkms.googleapis.com/",
      core.String servicePath: ""})
      : _requester =
            new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}

class ProjectsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLocationsResourceApi get locations =>
      new ProjectsLocationsResourceApi(_requester);

  ProjectsResourceApi(commons.ApiRequester client) : _requester = client;
}

class ProjectsLocationsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLocationsKeyRingsResourceApi get keyRings =>
      new ProjectsLocationsKeyRingsResourceApi(_requester);

  ProjectsLocationsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Gets information about a location.
  ///
  /// Request parameters:
  ///
  /// [name] - Resource name for the location.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Location].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Location> get(core.String name, {core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Location.fromJson(data));
  }

  /// Lists information about the supported locations for this service.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource that owns the locations collection, if applicable.
  /// Value must have pattern "^projects/[^/]+$".
  ///
  /// [filter] - The standard list filter.
  ///
  /// [pageToken] - The standard list page token.
  ///
  /// [pageSize] - The standard list page size.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListLocationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListLocationsResponse> list(core.String name,
      {core.String filter,
      core.String pageToken,
      core.int pageSize,
      core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url =
        'v1/' + commons.Escaper.ecapeVariableReserved('$name') + '/locations';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListLocationsResponse.fromJson(data));
  }
}

class ProjectsLocationsKeyRingsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLocationsKeyRingsCryptoKeysResourceApi get cryptoKeys =>
      new ProjectsLocationsKeyRingsCryptoKeysResourceApi(_requester);

  ProjectsLocationsKeyRingsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Create a new KeyRing in a given Project and Location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the location associated with the
  /// KeyRings, in the format `projects / * /locations / * `.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+$".
  ///
  /// [keyRingId] - Required. It must be unique within a location and match the
  /// regular
  /// expression `[a-zA-Z0-9_-]{1,63}`
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [KeyRing].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<KeyRing> create(KeyRing request, core.String parent,
      {core.String keyRingId, core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (keyRingId != null) {
      _queryParams["keyRingId"] = [keyRingId];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url =
        'v1/' + commons.Escaper.ecapeVariableReserved('$parent') + '/keyRings';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new KeyRing.fromJson(data));
  }

  /// Returns metadata for a given KeyRing.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the KeyRing to get.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+/keyRings/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [KeyRing].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<KeyRing> get(core.String name, {core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new KeyRing.fromJson(data));
  }

  /// Gets the access control policy for a resource.
  /// Returns an empty policy if the resource exists and does not have a policy
  /// set.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested.
  /// See the operation documentation for the appropriate value for this field.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+/keyRings/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Policy> getIamPolicy(core.String resource,
      {core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (resource == null) {
      throw new core.ArgumentError("Parameter resource is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':getIamPolicy';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Policy.fromJson(data));
  }

  /// Lists KeyRings.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the location associated with the
  /// KeyRings, in the format `projects / * /locations / * `.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+$".
  ///
  /// [pageToken] - Optional pagination token, returned earlier via
  /// ListKeyRingsResponse.next_page_token.
  ///
  /// [pageSize] - Optional limit on the number of KeyRings to include in the
  /// response.  Further KeyRings can subsequently be obtained by
  /// including the ListKeyRingsResponse.next_page_token in a subsequent
  /// request.  If unspecified, the server will pick an appropriate default.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListKeyRingsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListKeyRingsResponse> list(core.String parent,
      {core.String pageToken, core.int pageSize, core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url =
        'v1/' + commons.Escaper.ecapeVariableReserved('$parent') + '/keyRings';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListKeyRingsResponse.fromJson(data));
  }

  /// Sets the access control policy on the specified resource. Replaces any
  /// existing policy.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified.
  /// See the operation documentation for the appropriate value for this field.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+/keyRings/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Policy> setIamPolicy(
      SetIamPolicyRequest request, core.String resource,
      {core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (resource == null) {
      throw new core.ArgumentError("Parameter resource is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':setIamPolicy';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Policy.fromJson(data));
  }

  /// Returns permissions that a caller has on the specified resource.
  /// If the resource does not exist, this will return an empty set of
  /// permissions, not a NOT_FOUND error.
  ///
  /// Note: This operation is designed to be used for building permission-aware
  /// UIs and command-line tools, not for authorization checking. This operation
  /// may "fail open" without warning.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested.
  /// See the operation documentation for the appropriate value for this field.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+/keyRings/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TestIamPermissionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TestIamPermissionsResponse> testIamPermissions(
      TestIamPermissionsRequest request, core.String resource,
      {core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (resource == null) {
      throw new core.ArgumentError("Parameter resource is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':testIamPermissions';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new TestIamPermissionsResponse.fromJson(data));
  }
}

class ProjectsLocationsKeyRingsCryptoKeysResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsResourceApi
      get cryptoKeyVersions =>
          new ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsResourceApi(
              _requester);

  ProjectsLocationsKeyRingsCryptoKeysResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Create a new CryptoKey within a KeyRing.
  ///
  /// CryptoKey.purpose and
  /// CryptoKey.version_template.algorithm
  /// are required.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the KeyRing associated with the
  /// CryptoKeys.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+/keyRings/[^/]+$".
  ///
  /// [cryptoKeyId] - Required. It must be unique within a KeyRing and match the
  /// regular
  /// expression `[a-zA-Z0-9_-]{1,63}`
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CryptoKey].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CryptoKey> create(CryptoKey request, core.String parent,
      {core.String cryptoKeyId, core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (cryptoKeyId != null) {
      _queryParams["cryptoKeyId"] = [cryptoKeyId];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/cryptoKeys';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new CryptoKey.fromJson(data));
  }

  /// Decrypts data that was protected by Encrypt. The CryptoKey.purpose
  /// must be ENCRYPT_DECRYPT.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the CryptoKey to use for
  /// decryption.
  /// The server will choose the appropriate version.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/keyRings/[^/]+/cryptoKeys/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DecryptResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DecryptResponse> decrypt(
      DecryptRequest request, core.String name,
      {core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name') + ':decrypt';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new DecryptResponse.fromJson(data));
  }

  /// Encrypts data, so that it can only be recovered by a call to Decrypt.
  /// The CryptoKey.purpose must be
  /// ENCRYPT_DECRYPT.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the CryptoKey or CryptoKeyVersion
  /// to use for encryption.
  ///
  /// If a CryptoKey is specified, the server will use its
  /// primary version.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/keyRings/[^/]+/cryptoKeys/.+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [EncryptResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<EncryptResponse> encrypt(
      EncryptRequest request, core.String name,
      {core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name') + ':encrypt';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new EncryptResponse.fromJson(data));
  }

  /// Returns metadata for a given CryptoKey, as well as its
  /// primary CryptoKeyVersion.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the CryptoKey to get.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/keyRings/[^/]+/cryptoKeys/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CryptoKey].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CryptoKey> get(core.String name, {core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new CryptoKey.fromJson(data));
  }

  /// Gets the access control policy for a resource.
  /// Returns an empty policy if the resource exists and does not have a policy
  /// set.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested.
  /// See the operation documentation for the appropriate value for this field.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/keyRings/[^/]+/cryptoKeys/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Policy> getIamPolicy(core.String resource,
      {core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (resource == null) {
      throw new core.ArgumentError("Parameter resource is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':getIamPolicy';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Policy.fromJson(data));
  }

  /// Lists CryptoKeys.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the KeyRing to list, in the
  /// format
  /// `projects / * /locations / * /keyRings / * `.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+/keyRings/[^/]+$".
  ///
  /// [pageSize] - Optional limit on the number of CryptoKeys to include in the
  /// response.  Further CryptoKeys can subsequently be obtained by
  /// including the ListCryptoKeysResponse.next_page_token in a subsequent
  /// request.  If unspecified, the server will pick an appropriate default.
  ///
  /// [versionView] - The fields of the primary version to include in the
  /// response.
  /// Possible string values are:
  /// - "CRYPTO_KEY_VERSION_VIEW_UNSPECIFIED" : A
  /// CRYPTO_KEY_VERSION_VIEW_UNSPECIFIED.
  /// - "FULL" : A FULL.
  ///
  /// [pageToken] - Optional pagination token, returned earlier via
  /// ListCryptoKeysResponse.next_page_token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListCryptoKeysResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListCryptoKeysResponse> list(core.String parent,
      {core.int pageSize,
      core.String versionView,
      core.String pageToken,
      core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (versionView != null) {
      _queryParams["versionView"] = [versionView];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/cryptoKeys';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListCryptoKeysResponse.fromJson(data));
  }

  /// Update a CryptoKey.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The resource name for this CryptoKey in the format
  /// `projects / * /locations / * /keyRings / * /cryptoKeys / * `.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/keyRings/[^/]+/cryptoKeys/[^/]+$".
  ///
  /// [updateMask] - Required list of fields to be updated in this request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CryptoKey].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CryptoKey> patch(CryptoKey request, core.String name,
      {core.String updateMask, core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (updateMask != null) {
      _queryParams["updateMask"] = [updateMask];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new CryptoKey.fromJson(data));
  }

  /// Sets the access control policy on the specified resource. Replaces any
  /// existing policy.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified.
  /// See the operation documentation for the appropriate value for this field.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/keyRings/[^/]+/cryptoKeys/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Policy> setIamPolicy(
      SetIamPolicyRequest request, core.String resource,
      {core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (resource == null) {
      throw new core.ArgumentError("Parameter resource is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':setIamPolicy';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Policy.fromJson(data));
  }

  /// Returns permissions that a caller has on the specified resource.
  /// If the resource does not exist, this will return an empty set of
  /// permissions, not a NOT_FOUND error.
  ///
  /// Note: This operation is designed to be used for building permission-aware
  /// UIs and command-line tools, not for authorization checking. This operation
  /// may "fail open" without warning.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested.
  /// See the operation documentation for the appropriate value for this field.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/keyRings/[^/]+/cryptoKeys/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TestIamPermissionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TestIamPermissionsResponse> testIamPermissions(
      TestIamPermissionsRequest request, core.String resource,
      {core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (resource == null) {
      throw new core.ArgumentError("Parameter resource is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':testIamPermissions';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new TestIamPermissionsResponse.fromJson(data));
  }

  /// Update the version of a CryptoKey that will be used in Encrypt.
  ///
  /// Returns an error if called on an asymmetric key.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the CryptoKey to update.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/keyRings/[^/]+/cryptoKeys/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CryptoKey].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CryptoKey> updatePrimaryVersion(
      UpdateCryptoKeyPrimaryVersionRequest request, core.String name,
      {core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        ':updatePrimaryVersion';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new CryptoKey.fromJson(data));
  }
}

class ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsResourceApi(
      commons.ApiRequester client)
      : _requester = client;

  /// Decrypts data that was encrypted with a public key retrieved from
  /// GetPublicKey corresponding to a CryptoKeyVersion with
  /// CryptoKey.purpose ASYMMETRIC_DECRYPT.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the CryptoKeyVersion to use for
  /// decryption.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/keyRings/[^/]+/cryptoKeys/[^/]+/cryptoKeyVersions/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AsymmetricDecryptResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AsymmetricDecryptResponse> asymmetricDecrypt(
      AsymmetricDecryptRequest request, core.String name,
      {core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        ':asymmetricDecrypt';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new AsymmetricDecryptResponse.fromJson(data));
  }

  /// Signs data using a CryptoKeyVersion with CryptoKey.purpose
  /// ASYMMETRIC_SIGN, producing a signature that can be verified with the
  /// public
  /// key retrieved from GetPublicKey.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the CryptoKeyVersion to use for
  /// signing.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/keyRings/[^/]+/cryptoKeys/[^/]+/cryptoKeyVersions/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AsymmetricSignResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AsymmetricSignResponse> asymmetricSign(
      AsymmetricSignRequest request, core.String name,
      {core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        ':asymmetricSign';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new AsymmetricSignResponse.fromJson(data));
  }

  /// Create a new CryptoKeyVersion in a CryptoKey.
  ///
  /// The server will assign the next sequential id. If unset,
  /// state will be set to
  /// ENABLED.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the CryptoKey associated with
  /// the CryptoKeyVersions.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/keyRings/[^/]+/cryptoKeys/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CryptoKeyVersion].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CryptoKeyVersion> create(
      CryptoKeyVersion request, core.String parent,
      {core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/cryptoKeyVersions';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new CryptoKeyVersion.fromJson(data));
  }

  /// Schedule a CryptoKeyVersion for destruction.
  ///
  /// Upon calling this method, CryptoKeyVersion.state will be set to
  /// DESTROY_SCHEDULED
  /// and destroy_time will be set to a time 24
  /// hours in the future, at which point the state
  /// will be changed to
  /// DESTROYED, and the key
  /// material will be irrevocably destroyed.
  ///
  /// Before the destroy_time is reached,
  /// RestoreCryptoKeyVersion may be called to reverse the process.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the CryptoKeyVersion to destroy.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/keyRings/[^/]+/cryptoKeys/[^/]+/cryptoKeyVersions/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CryptoKeyVersion].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CryptoKeyVersion> destroy(
      DestroyCryptoKeyVersionRequest request, core.String name,
      {core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name') + ':destroy';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new CryptoKeyVersion.fromJson(data));
  }

  /// Returns metadata for a given CryptoKeyVersion.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the CryptoKeyVersion to get.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/keyRings/[^/]+/cryptoKeys/[^/]+/cryptoKeyVersions/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CryptoKeyVersion].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CryptoKeyVersion> get(core.String name, {core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new CryptoKeyVersion.fromJson(data));
  }

  /// Returns the public key for the given CryptoKeyVersion. The
  /// CryptoKey.purpose must be
  /// ASYMMETRIC_SIGN or
  /// ASYMMETRIC_DECRYPT.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the CryptoKeyVersion public key to
  /// get.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/keyRings/[^/]+/cryptoKeys/[^/]+/cryptoKeyVersions/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PublicKey].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PublicKey> getPublicKey(core.String name,
      {core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url =
        'v1/' + commons.Escaper.ecapeVariableReserved('$name') + '/publicKey';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new PublicKey.fromJson(data));
  }

  /// Lists CryptoKeyVersions.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the CryptoKey to list, in the
  /// format
  /// `projects / * /locations / * /keyRings / * /cryptoKeys / * `.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/keyRings/[^/]+/cryptoKeys/[^/]+$".
  ///
  /// [pageSize] - Optional limit on the number of CryptoKeyVersions to
  /// include in the response. Further CryptoKeyVersions can
  /// subsequently be obtained by including the
  /// ListCryptoKeyVersionsResponse.next_page_token in a subsequent request.
  /// If unspecified, the server will pick an appropriate default.
  ///
  /// [view] - The fields to include in the response.
  /// Possible string values are:
  /// - "CRYPTO_KEY_VERSION_VIEW_UNSPECIFIED" : A
  /// CRYPTO_KEY_VERSION_VIEW_UNSPECIFIED.
  /// - "FULL" : A FULL.
  ///
  /// [pageToken] - Optional pagination token, returned earlier via
  /// ListCryptoKeyVersionsResponse.next_page_token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListCryptoKeyVersionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListCryptoKeyVersionsResponse> list(core.String parent,
      {core.int pageSize,
      core.String view,
      core.String pageToken,
      core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (view != null) {
      _queryParams["view"] = [view];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/cryptoKeyVersions';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new ListCryptoKeyVersionsResponse.fromJson(data));
  }

  /// Update a CryptoKeyVersion's metadata.
  ///
  /// state may be changed between
  /// ENABLED and
  /// DISABLED using this
  /// method. See DestroyCryptoKeyVersion and RestoreCryptoKeyVersion to
  /// move between other states.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The resource name for this CryptoKeyVersion in the
  /// format
  /// `projects / * /locations / * /keyRings / * /cryptoKeys / *
  /// /cryptoKeyVersions / * `.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/keyRings/[^/]+/cryptoKeys/[^/]+/cryptoKeyVersions/[^/]+$".
  ///
  /// [updateMask] - Required list of fields to be updated in this request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CryptoKeyVersion].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CryptoKeyVersion> patch(
      CryptoKeyVersion request, core.String name,
      {core.String updateMask, core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (updateMask != null) {
      _queryParams["updateMask"] = [updateMask];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new CryptoKeyVersion.fromJson(data));
  }

  /// Restore a CryptoKeyVersion in the
  /// DESTROY_SCHEDULED
  /// state.
  ///
  /// Upon restoration of the CryptoKeyVersion, state
  /// will be set to DISABLED,
  /// and destroy_time will be cleared.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the CryptoKeyVersion to restore.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/keyRings/[^/]+/cryptoKeys/[^/]+/cryptoKeyVersions/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CryptoKeyVersion].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CryptoKeyVersion> restore(
      RestoreCryptoKeyVersionRequest request, core.String name,
      {core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name') + ':restore';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new CryptoKeyVersion.fromJson(data));
  }
}

/// Request message for KeyManagementService.AsymmetricDecrypt.
class AsymmetricDecryptRequest {
  /// Required. The data encrypted with the named CryptoKeyVersion's public
  /// key using OAEP.
  core.String ciphertext;
  core.List<core.int> get ciphertextAsBytes {
    return convert.base64.decode(ciphertext);
  }

  void set ciphertextAsBytes(core.List<core.int> _bytes) {
    ciphertext =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  AsymmetricDecryptRequest();

  AsymmetricDecryptRequest.fromJson(core.Map _json) {
    if (_json.containsKey("ciphertext")) {
      ciphertext = _json["ciphertext"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (ciphertext != null) {
      _json["ciphertext"] = ciphertext;
    }
    return _json;
  }
}

/// Response message for KeyManagementService.AsymmetricDecrypt.
class AsymmetricDecryptResponse {
  /// The decrypted data originally encrypted with the matching public key.
  core.String plaintext;
  core.List<core.int> get plaintextAsBytes {
    return convert.base64.decode(plaintext);
  }

  void set plaintextAsBytes(core.List<core.int> _bytes) {
    plaintext =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  AsymmetricDecryptResponse();

  AsymmetricDecryptResponse.fromJson(core.Map _json) {
    if (_json.containsKey("plaintext")) {
      plaintext = _json["plaintext"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (plaintext != null) {
      _json["plaintext"] = plaintext;
    }
    return _json;
  }
}

/// Request message for KeyManagementService.AsymmetricSign.
class AsymmetricSignRequest {
  /// Required. The digest of the data to sign. The digest must be produced with
  /// the same digest algorithm as specified by the key version's
  /// algorithm.
  Digest digest;

  AsymmetricSignRequest();

  AsymmetricSignRequest.fromJson(core.Map _json) {
    if (_json.containsKey("digest")) {
      digest = new Digest.fromJson(_json["digest"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (digest != null) {
      _json["digest"] = (digest).toJson();
    }
    return _json;
  }
}

/// Response message for KeyManagementService.AsymmetricSign.
class AsymmetricSignResponse {
  /// The created signature.
  core.String signature;
  core.List<core.int> get signatureAsBytes {
    return convert.base64.decode(signature);
  }

  void set signatureAsBytes(core.List<core.int> _bytes) {
    signature =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  AsymmetricSignResponse();

  AsymmetricSignResponse.fromJson(core.Map _json) {
    if (_json.containsKey("signature")) {
      signature = _json["signature"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (signature != null) {
      _json["signature"] = signature;
    }
    return _json;
  }
}

/// Specifies the audit configuration for a service.
/// The configuration determines which permission types are logged, and what
/// identities, if any, are exempted from logging.
/// An AuditConfig must have one or more AuditLogConfigs.
///
/// If there are AuditConfigs for both `allServices` and a specific service,
/// the union of the two AuditConfigs is used for that service: the log_types
/// specified in each AuditConfig are enabled, and the exempted_members in each
/// AuditLogConfig are exempted.
///
/// Example Policy with multiple AuditConfigs:
///
///     {
///       "audit_configs": [
///         {
///           "service": "allServices"
///           "audit_log_configs": [
///             {
///               "log_type": "DATA_READ",
///               "exempted_members": [
///                 "user:foo@gmail.com"
///               ]
///             },
///             {
///               "log_type": "DATA_WRITE",
///             },
///             {
///               "log_type": "ADMIN_READ",
///             }
///           ]
///         },
///         {
///           "service": "fooservice.googleapis.com"
///           "audit_log_configs": [
///             {
///               "log_type": "DATA_READ",
///             },
///             {
///               "log_type": "DATA_WRITE",
///               "exempted_members": [
///                 "user:bar@gmail.com"
///               ]
///             }
///           ]
///         }
///       ]
///     }
///
/// For fooservice, this policy enables DATA_READ, DATA_WRITE and ADMIN_READ
/// logging. It also exempts foo@gmail.com from DATA_READ logging, and
/// bar@gmail.com from DATA_WRITE logging.
class AuditConfig {
  /// The configuration for logging of each type of permission.
  core.List<AuditLogConfig> auditLogConfigs;

  /// Specifies a service that will be enabled for audit logging.
  /// For example, `storage.googleapis.com`, `cloudsql.googleapis.com`.
  /// `allServices` is a special value that covers all services.
  core.String service;

  AuditConfig();

  AuditConfig.fromJson(core.Map _json) {
    if (_json.containsKey("auditLogConfigs")) {
      auditLogConfigs = (_json["auditLogConfigs"] as core.List)
          .map<AuditLogConfig>((value) => new AuditLogConfig.fromJson(value))
          .toList();
    }
    if (_json.containsKey("service")) {
      service = _json["service"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (auditLogConfigs != null) {
      _json["auditLogConfigs"] =
          auditLogConfigs.map((value) => (value).toJson()).toList();
    }
    if (service != null) {
      _json["service"] = service;
    }
    return _json;
  }
}

/// Provides the configuration for logging a type of permissions.
/// Example:
///
///     {
///       "audit_log_configs": [
///         {
///           "log_type": "DATA_READ",
///           "exempted_members": [
///             "user:foo@gmail.com"
///           ]
///         },
///         {
///           "log_type": "DATA_WRITE",
///         }
///       ]
///     }
///
/// This enables 'DATA_READ' and 'DATA_WRITE' logging, while exempting
/// foo@gmail.com from DATA_READ logging.
class AuditLogConfig {
  /// Specifies the identities that do not cause logging for this type of
  /// permission.
  /// Follows the same format of Binding.members.
  core.List<core.String> exemptedMembers;

  /// The log type that this config enables.
  /// Possible string values are:
  /// - "LOG_TYPE_UNSPECIFIED" : Default case. Should never be this.
  /// - "ADMIN_READ" : Admin reads. Example: CloudIAM getIamPolicy
  /// - "DATA_WRITE" : Data writes. Example: CloudSQL Users create
  /// - "DATA_READ" : Data reads. Example: CloudSQL Users list
  core.String logType;

  AuditLogConfig();

  AuditLogConfig.fromJson(core.Map _json) {
    if (_json.containsKey("exemptedMembers")) {
      exemptedMembers =
          (_json["exemptedMembers"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("logType")) {
      logType = _json["logType"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (exemptedMembers != null) {
      _json["exemptedMembers"] = exemptedMembers;
    }
    if (logType != null) {
      _json["logType"] = logType;
    }
    return _json;
  }
}

/// Associates `members` with a `role`.
class Binding {
  /// Unimplemented. The condition that is associated with this binding.
  /// NOTE: an unsatisfied condition will not allow user access via current
  /// binding. Different bindings, including their conditions, are examined
  /// independently.
  Expr condition;

  /// Specifies the identities requesting access for a Cloud Platform resource.
  /// `members` can have the following values:
  ///
  /// * `allUsers`: A special identifier that represents anyone who is
  ///    on the internet; with or without a Google account.
  ///
  /// * `allAuthenticatedUsers`: A special identifier that represents anyone
  ///    who is authenticated with a Google account or a service account.
  ///
  /// * `user:{emailid}`: An email address that represents a specific Google
  ///    account. For example, `alice@gmail.com` .
  ///
  ///
  /// * `serviceAccount:{emailid}`: An email address that represents a service
  ///    account. For example, `my-other-app@appspot.gserviceaccount.com`.
  ///
  /// * `group:{emailid}`: An email address that represents a Google group.
  ///    For example, `admins@example.com`.
  ///
  ///
  /// * `domain:{domain}`: A Google Apps domain name that represents all the
  ///    users of that domain. For example, `google.com` or `example.com`.
  core.List<core.String> members;

  /// Role that is assigned to `members`.
  /// For example, `roles/viewer`, `roles/editor`, or `roles/owner`.
  core.String role;

  Binding();

  Binding.fromJson(core.Map _json) {
    if (_json.containsKey("condition")) {
      condition = new Expr.fromJson(_json["condition"]);
    }
    if (_json.containsKey("members")) {
      members = (_json["members"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("role")) {
      role = _json["role"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (condition != null) {
      _json["condition"] = (condition).toJson();
    }
    if (members != null) {
      _json["members"] = members;
    }
    if (role != null) {
      _json["role"] = role;
    }
    return _json;
  }
}

/// A CryptoKey represents a logical key that can be used for cryptographic
/// operations.
///
/// A CryptoKey is made up of one or more versions, which
/// represent the actual key material used in cryptographic operations.
class CryptoKey {
  /// Output only. The time at which this CryptoKey was created.
  core.String createTime;

  /// Labels with user-defined metadata. For more information, see
  /// [Labeling Keys](/kms/docs/labeling-keys).
  core.Map<core.String, core.String> labels;

  /// Output only. The resource name for this CryptoKey in the format
  /// `projects / * /locations / * /keyRings / * /cryptoKeys / * `.
  core.String name;

  /// At next_rotation_time, the Key Management Service will automatically:
  ///
  /// 1. Create a new version of this CryptoKey.
  /// 2. Mark the new version as primary.
  ///
  /// Key rotations performed manually via
  /// CreateCryptoKeyVersion and
  /// UpdateCryptoKeyPrimaryVersion
  /// do not affect next_rotation_time.
  ///
  /// Keys with purpose
  /// ENCRYPT_DECRYPT support
  /// automatic rotation. For other keys, this field must be omitted.
  core.String nextRotationTime;

  /// Output only. A copy of the "primary" CryptoKeyVersion that will be used
  /// by Encrypt when this CryptoKey is given
  /// in EncryptRequest.name.
  ///
  /// The CryptoKey's primary version can be updated via
  /// UpdateCryptoKeyPrimaryVersion.
  ///
  /// All keys with purpose
  /// ENCRYPT_DECRYPT have a
  /// primary. For other keys, this field will be omitted.
  CryptoKeyVersion primary;

  /// The immutable purpose of this CryptoKey.
  /// Possible string values are:
  /// - "CRYPTO_KEY_PURPOSE_UNSPECIFIED" : Not specified.
  /// - "ENCRYPT_DECRYPT" : CryptoKeys with this purpose may be used with
  /// Encrypt and
  /// Decrypt.
  /// - "ASYMMETRIC_SIGN" : CryptoKeys with this purpose may be used with
  /// AsymmetricSign and
  /// GetPublicKey.
  /// - "ASYMMETRIC_DECRYPT" : CryptoKeys with this purpose may be used with
  /// AsymmetricDecrypt and
  /// GetPublicKey.
  core.String purpose;

  /// next_rotation_time will be advanced by this period when the service
  /// automatically rotates a key. Must be at least one day.
  ///
  /// If rotation_period is set, next_rotation_time must also be set.
  ///
  /// Keys with purpose
  /// ENCRYPT_DECRYPT support
  /// automatic rotation. For other keys, this field must be omitted.
  core.String rotationPeriod;

  /// A template describing settings for new CryptoKeyVersion instances.
  /// The properties of new CryptoKeyVersion instances created by either
  /// CreateCryptoKeyVersion or
  /// auto-rotation are controlled by this template.
  CryptoKeyVersionTemplate versionTemplate;

  CryptoKey();

  CryptoKey.fromJson(core.Map _json) {
    if (_json.containsKey("createTime")) {
      createTime = _json["createTime"];
    }
    if (_json.containsKey("labels")) {
      labels = (_json["labels"] as core.Map).cast<core.String, core.String>();
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("nextRotationTime")) {
      nextRotationTime = _json["nextRotationTime"];
    }
    if (_json.containsKey("primary")) {
      primary = new CryptoKeyVersion.fromJson(_json["primary"]);
    }
    if (_json.containsKey("purpose")) {
      purpose = _json["purpose"];
    }
    if (_json.containsKey("rotationPeriod")) {
      rotationPeriod = _json["rotationPeriod"];
    }
    if (_json.containsKey("versionTemplate")) {
      versionTemplate =
          new CryptoKeyVersionTemplate.fromJson(_json["versionTemplate"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (createTime != null) {
      _json["createTime"] = createTime;
    }
    if (labels != null) {
      _json["labels"] = labels;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (nextRotationTime != null) {
      _json["nextRotationTime"] = nextRotationTime;
    }
    if (primary != null) {
      _json["primary"] = (primary).toJson();
    }
    if (purpose != null) {
      _json["purpose"] = purpose;
    }
    if (rotationPeriod != null) {
      _json["rotationPeriod"] = rotationPeriod;
    }
    if (versionTemplate != null) {
      _json["versionTemplate"] = (versionTemplate).toJson();
    }
    return _json;
  }
}

/// A CryptoKeyVersion represents an individual cryptographic key, and the
/// associated key material.
///
/// An ENABLED version can be
/// used for cryptographic operations.
///
/// For security reasons, the raw cryptographic key material represented by a
/// CryptoKeyVersion can never be viewed or exported. It can only be used to
/// encrypt, decrypt, or sign data when an authorized user or application
/// invokes
/// Cloud KMS.
class CryptoKeyVersion {
  /// Output only. The CryptoKeyVersionAlgorithm that this
  /// CryptoKeyVersion supports.
  /// Possible string values are:
  /// - "CRYPTO_KEY_VERSION_ALGORITHM_UNSPECIFIED" : Not specified.
  /// - "GOOGLE_SYMMETRIC_ENCRYPTION" : Creates symmetric encryption keys.
  /// - "RSA_SIGN_PSS_2048_SHA256" : RSASSA-PSS 2048 bit key with a SHA256
  /// digest.
  /// - "RSA_SIGN_PSS_3072_SHA256" : RSASSA-PSS 3072 bit key with a SHA256
  /// digest.
  /// - "RSA_SIGN_PSS_4096_SHA256" : RSASSA-PSS 4096 bit key with a SHA256
  /// digest.
  /// - "RSA_SIGN_PKCS1_2048_SHA256" : RSASSA-PKCS1-v1_5 with a 2048 bit key and
  /// a SHA256 digest.
  /// - "RSA_SIGN_PKCS1_3072_SHA256" : RSASSA-PKCS1-v1_5 with a 3072 bit key and
  /// a SHA256 digest.
  /// - "RSA_SIGN_PKCS1_4096_SHA256" : RSASSA-PKCS1-v1_5 with a 4096 bit key and
  /// a SHA256 digest.
  /// - "RSA_DECRYPT_OAEP_2048_SHA256" : RSAES-OAEP 2048 bit key with a SHA256
  /// digest.
  /// - "RSA_DECRYPT_OAEP_3072_SHA256" : RSAES-OAEP 3072 bit key with a SHA256
  /// digest.
  /// - "EC_SIGN_P256_SHA256" : ECDSA on the NIST P-256 curve with a SHA256
  /// digest.
  /// - "EC_SIGN_P384_SHA384" : ECDSA on the NIST P-384 curve with a SHA384
  /// digest.
  core.String algorithm;

  /// Output only. Statement that was generated and signed by the HSM at key
  /// creation time. Use this statement to verify attributes of the key as
  /// stored
  /// on the HSM, independently of Google. Only provided for key versions with
  /// protection_level HSM.
  KeyOperationAttestation attestation;

  /// Output only. The time at which this CryptoKeyVersion was created.
  core.String createTime;

  /// Output only. The time this CryptoKeyVersion's key material was
  /// destroyed. Only present if state is
  /// DESTROYED.
  core.String destroyEventTime;

  /// Output only. The time this CryptoKeyVersion's key material is scheduled
  /// for destruction. Only present if state is
  /// DESTROY_SCHEDULED.
  core.String destroyTime;

  /// Output only. The time this CryptoKeyVersion's key material was
  /// generated.
  core.String generateTime;

  /// Output only. The resource name for this CryptoKeyVersion in the format
  /// `projects / * /locations / * /keyRings / * /cryptoKeys / *
  /// /cryptoKeyVersions / * `.
  core.String name;

  /// Output only. The ProtectionLevel describing how crypto operations are
  /// performed with this CryptoKeyVersion.
  /// Possible string values are:
  /// - "PROTECTION_LEVEL_UNSPECIFIED" : Not specified.
  /// - "SOFTWARE" : Crypto operations are performed in software.
  /// - "HSM" : Crypto operations are performed in a Hardware Security Module.
  core.String protectionLevel;

  /// The current state of the CryptoKeyVersion.
  /// Possible string values are:
  /// - "CRYPTO_KEY_VERSION_STATE_UNSPECIFIED" : Not specified.
  /// - "PENDING_GENERATION" : This version is still being generated. It may not
  /// be used, enabled,
  /// disabled, or destroyed yet. Cloud KMS will automatically mark this
  /// version ENABLED as soon as the version is ready.
  /// - "ENABLED" : This version may be used for cryptographic operations.
  /// - "DISABLED" : This version may not be used, but the key material is still
  /// available,
  /// and the version can be placed back into the ENABLED state.
  /// - "DESTROYED" : This version is destroyed, and the key material is no
  /// longer stored.
  /// A version may not leave this state once entered.
  /// - "DESTROY_SCHEDULED" : This version is scheduled for destruction, and
  /// will be destroyed soon.
  /// Call
  /// RestoreCryptoKeyVersion
  /// to put it back into the DISABLED state.
  core.String state;

  CryptoKeyVersion();

  CryptoKeyVersion.fromJson(core.Map _json) {
    if (_json.containsKey("algorithm")) {
      algorithm = _json["algorithm"];
    }
    if (_json.containsKey("attestation")) {
      attestation = new KeyOperationAttestation.fromJson(_json["attestation"]);
    }
    if (_json.containsKey("createTime")) {
      createTime = _json["createTime"];
    }
    if (_json.containsKey("destroyEventTime")) {
      destroyEventTime = _json["destroyEventTime"];
    }
    if (_json.containsKey("destroyTime")) {
      destroyTime = _json["destroyTime"];
    }
    if (_json.containsKey("generateTime")) {
      generateTime = _json["generateTime"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("protectionLevel")) {
      protectionLevel = _json["protectionLevel"];
    }
    if (_json.containsKey("state")) {
      state = _json["state"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (algorithm != null) {
      _json["algorithm"] = algorithm;
    }
    if (attestation != null) {
      _json["attestation"] = (attestation).toJson();
    }
    if (createTime != null) {
      _json["createTime"] = createTime;
    }
    if (destroyEventTime != null) {
      _json["destroyEventTime"] = destroyEventTime;
    }
    if (destroyTime != null) {
      _json["destroyTime"] = destroyTime;
    }
    if (generateTime != null) {
      _json["generateTime"] = generateTime;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (protectionLevel != null) {
      _json["protectionLevel"] = protectionLevel;
    }
    if (state != null) {
      _json["state"] = state;
    }
    return _json;
  }
}

/// A CryptoKeyVersionTemplate specifies the properties to use when creating
/// a new CryptoKeyVersion, either manually with
/// CreateCryptoKeyVersion or
/// automatically as a result of auto-rotation.
class CryptoKeyVersionTemplate {
  /// Required. Algorithm to use
  /// when creating a CryptoKeyVersion based on this template.
  ///
  /// For backwards compatibility, GOOGLE_SYMMETRIC_ENCRYPTION is implied if
  /// both
  /// this field is omitted and CryptoKey.purpose is
  /// ENCRYPT_DECRYPT.
  /// Possible string values are:
  /// - "CRYPTO_KEY_VERSION_ALGORITHM_UNSPECIFIED" : Not specified.
  /// - "GOOGLE_SYMMETRIC_ENCRYPTION" : Creates symmetric encryption keys.
  /// - "RSA_SIGN_PSS_2048_SHA256" : RSASSA-PSS 2048 bit key with a SHA256
  /// digest.
  /// - "RSA_SIGN_PSS_3072_SHA256" : RSASSA-PSS 3072 bit key with a SHA256
  /// digest.
  /// - "RSA_SIGN_PSS_4096_SHA256" : RSASSA-PSS 4096 bit key with a SHA256
  /// digest.
  /// - "RSA_SIGN_PKCS1_2048_SHA256" : RSASSA-PKCS1-v1_5 with a 2048 bit key and
  /// a SHA256 digest.
  /// - "RSA_SIGN_PKCS1_3072_SHA256" : RSASSA-PKCS1-v1_5 with a 3072 bit key and
  /// a SHA256 digest.
  /// - "RSA_SIGN_PKCS1_4096_SHA256" : RSASSA-PKCS1-v1_5 with a 4096 bit key and
  /// a SHA256 digest.
  /// - "RSA_DECRYPT_OAEP_2048_SHA256" : RSAES-OAEP 2048 bit key with a SHA256
  /// digest.
  /// - "RSA_DECRYPT_OAEP_3072_SHA256" : RSAES-OAEP 3072 bit key with a SHA256
  /// digest.
  /// - "EC_SIGN_P256_SHA256" : ECDSA on the NIST P-256 curve with a SHA256
  /// digest.
  /// - "EC_SIGN_P384_SHA384" : ECDSA on the NIST P-384 curve with a SHA384
  /// digest.
  core.String algorithm;

  /// ProtectionLevel to use when creating a CryptoKeyVersion based on
  /// this template. Immutable. Defaults to SOFTWARE.
  /// Possible string values are:
  /// - "PROTECTION_LEVEL_UNSPECIFIED" : Not specified.
  /// - "SOFTWARE" : Crypto operations are performed in software.
  /// - "HSM" : Crypto operations are performed in a Hardware Security Module.
  core.String protectionLevel;

  CryptoKeyVersionTemplate();

  CryptoKeyVersionTemplate.fromJson(core.Map _json) {
    if (_json.containsKey("algorithm")) {
      algorithm = _json["algorithm"];
    }
    if (_json.containsKey("protectionLevel")) {
      protectionLevel = _json["protectionLevel"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (algorithm != null) {
      _json["algorithm"] = algorithm;
    }
    if (protectionLevel != null) {
      _json["protectionLevel"] = protectionLevel;
    }
    return _json;
  }
}

/// Request message for KeyManagementService.Decrypt.
class DecryptRequest {
  /// Optional data that must match the data originally supplied in
  /// EncryptRequest.additional_authenticated_data.
  core.String additionalAuthenticatedData;
  core.List<core.int> get additionalAuthenticatedDataAsBytes {
    return convert.base64.decode(additionalAuthenticatedData);
  }

  void set additionalAuthenticatedDataAsBytes(core.List<core.int> _bytes) {
    additionalAuthenticatedData =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  /// Required. The encrypted data originally returned in
  /// EncryptResponse.ciphertext.
  core.String ciphertext;
  core.List<core.int> get ciphertextAsBytes {
    return convert.base64.decode(ciphertext);
  }

  void set ciphertextAsBytes(core.List<core.int> _bytes) {
    ciphertext =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  DecryptRequest();

  DecryptRequest.fromJson(core.Map _json) {
    if (_json.containsKey("additionalAuthenticatedData")) {
      additionalAuthenticatedData = _json["additionalAuthenticatedData"];
    }
    if (_json.containsKey("ciphertext")) {
      ciphertext = _json["ciphertext"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (additionalAuthenticatedData != null) {
      _json["additionalAuthenticatedData"] = additionalAuthenticatedData;
    }
    if (ciphertext != null) {
      _json["ciphertext"] = ciphertext;
    }
    return _json;
  }
}

/// Response message for KeyManagementService.Decrypt.
class DecryptResponse {
  /// The decrypted data originally supplied in EncryptRequest.plaintext.
  core.String plaintext;
  core.List<core.int> get plaintextAsBytes {
    return convert.base64.decode(plaintext);
  }

  void set plaintextAsBytes(core.List<core.int> _bytes) {
    plaintext =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  DecryptResponse();

  DecryptResponse.fromJson(core.Map _json) {
    if (_json.containsKey("plaintext")) {
      plaintext = _json["plaintext"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (plaintext != null) {
      _json["plaintext"] = plaintext;
    }
    return _json;
  }
}

/// Request message for KeyManagementService.DestroyCryptoKeyVersion.
class DestroyCryptoKeyVersionRequest {
  DestroyCryptoKeyVersionRequest();

  DestroyCryptoKeyVersionRequest.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    return _json;
  }
}

/// A Digest holds a cryptographic message digest.
class Digest {
  /// A message digest produced with the SHA-256 algorithm.
  core.String sha256;
  core.List<core.int> get sha256AsBytes {
    return convert.base64.decode(sha256);
  }

  void set sha256AsBytes(core.List<core.int> _bytes) {
    sha256 =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  /// A message digest produced with the SHA-384 algorithm.
  core.String sha384;
  core.List<core.int> get sha384AsBytes {
    return convert.base64.decode(sha384);
  }

  void set sha384AsBytes(core.List<core.int> _bytes) {
    sha384 =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  /// A message digest produced with the SHA-512 algorithm.
  core.String sha512;
  core.List<core.int> get sha512AsBytes {
    return convert.base64.decode(sha512);
  }

  void set sha512AsBytes(core.List<core.int> _bytes) {
    sha512 =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  Digest();

  Digest.fromJson(core.Map _json) {
    if (_json.containsKey("sha256")) {
      sha256 = _json["sha256"];
    }
    if (_json.containsKey("sha384")) {
      sha384 = _json["sha384"];
    }
    if (_json.containsKey("sha512")) {
      sha512 = _json["sha512"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (sha256 != null) {
      _json["sha256"] = sha256;
    }
    if (sha384 != null) {
      _json["sha384"] = sha384;
    }
    if (sha512 != null) {
      _json["sha512"] = sha512;
    }
    return _json;
  }
}

/// Request message for KeyManagementService.Encrypt.
class EncryptRequest {
  /// Optional data that, if specified, must also be provided during decryption
  /// through DecryptRequest.additional_authenticated_data.
  ///
  /// The maximum size depends on the key version's
  /// protection_level. For
  /// SOFTWARE keys, the AAD must be no larger than
  /// 64KiB. For HSM keys, the combined length of the
  /// plaintext and additional_authenticated_data fields must be no larger than
  /// 8KiB.
  core.String additionalAuthenticatedData;
  core.List<core.int> get additionalAuthenticatedDataAsBytes {
    return convert.base64.decode(additionalAuthenticatedData);
  }

  void set additionalAuthenticatedDataAsBytes(core.List<core.int> _bytes) {
    additionalAuthenticatedData =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  /// Required. The data to encrypt. Must be no larger than 64KiB.
  ///
  /// The maximum size depends on the key version's
  /// protection_level. For
  /// SOFTWARE keys, the plaintext must be no larger
  /// than 64KiB. For HSM keys, the combined length of the
  /// plaintext and additional_authenticated_data fields must be no larger than
  /// 8KiB.
  core.String plaintext;
  core.List<core.int> get plaintextAsBytes {
    return convert.base64.decode(plaintext);
  }

  void set plaintextAsBytes(core.List<core.int> _bytes) {
    plaintext =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  EncryptRequest();

  EncryptRequest.fromJson(core.Map _json) {
    if (_json.containsKey("additionalAuthenticatedData")) {
      additionalAuthenticatedData = _json["additionalAuthenticatedData"];
    }
    if (_json.containsKey("plaintext")) {
      plaintext = _json["plaintext"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (additionalAuthenticatedData != null) {
      _json["additionalAuthenticatedData"] = additionalAuthenticatedData;
    }
    if (plaintext != null) {
      _json["plaintext"] = plaintext;
    }
    return _json;
  }
}

/// Response message for KeyManagementService.Encrypt.
class EncryptResponse {
  /// The encrypted data.
  core.String ciphertext;
  core.List<core.int> get ciphertextAsBytes {
    return convert.base64.decode(ciphertext);
  }

  void set ciphertextAsBytes(core.List<core.int> _bytes) {
    ciphertext =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  /// The resource name of the CryptoKeyVersion used in encryption.
  core.String name;

  EncryptResponse();

  EncryptResponse.fromJson(core.Map _json) {
    if (_json.containsKey("ciphertext")) {
      ciphertext = _json["ciphertext"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (ciphertext != null) {
      _json["ciphertext"] = ciphertext;
    }
    if (name != null) {
      _json["name"] = name;
    }
    return _json;
  }
}

/// Represents an expression text. Example:
///
///     title: "User account presence"
///     description: "Determines whether the request has a user account"
///     expression: "size(request.user) > 0"
class Expr {
  /// An optional description of the expression. This is a longer text which
  /// describes the expression, e.g. when hovered over it in a UI.
  core.String description;

  /// Textual representation of an expression in
  /// Common Expression Language syntax.
  ///
  /// The application context of the containing message determines which
  /// well-known feature set of CEL is supported.
  core.String expression;

  /// An optional string indicating the location of the expression for error
  /// reporting, e.g. a file name and a position in the file.
  core.String location;

  /// An optional title for the expression, i.e. a short string describing
  /// its purpose. This can be used e.g. in UIs which allow to enter the
  /// expression.
  core.String title;

  Expr();

  Expr.fromJson(core.Map _json) {
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("expression")) {
      expression = _json["expression"];
    }
    if (_json.containsKey("location")) {
      location = _json["location"];
    }
    if (_json.containsKey("title")) {
      title = _json["title"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (description != null) {
      _json["description"] = description;
    }
    if (expression != null) {
      _json["expression"] = expression;
    }
    if (location != null) {
      _json["location"] = location;
    }
    if (title != null) {
      _json["title"] = title;
    }
    return _json;
  }
}

/// Contains an HSM-generated attestation about a key operation.
class KeyOperationAttestation {
  /// Output only. The attestation data provided by the HSM when the key
  /// operation was performed.
  core.String content;
  core.List<core.int> get contentAsBytes {
    return convert.base64.decode(content);
  }

  void set contentAsBytes(core.List<core.int> _bytes) {
    content =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  /// Output only. The format of the attestation data.
  /// Possible string values are:
  /// - "ATTESTATION_FORMAT_UNSPECIFIED"
  /// - "CAVIUM_V1_COMPRESSED" : Cavium HSM attestation compressed with gzip.
  /// Note that this format is
  /// defined by Cavium and subject to change at any time.
  core.String format;

  KeyOperationAttestation();

  KeyOperationAttestation.fromJson(core.Map _json) {
    if (_json.containsKey("content")) {
      content = _json["content"];
    }
    if (_json.containsKey("format")) {
      format = _json["format"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (content != null) {
      _json["content"] = content;
    }
    if (format != null) {
      _json["format"] = format;
    }
    return _json;
  }
}

/// A KeyRing is a toplevel logical grouping of CryptoKeys.
class KeyRing {
  /// Output only. The time at which this KeyRing was created.
  core.String createTime;

  /// Output only. The resource name for the KeyRing in the format
  /// `projects / * /locations / * /keyRings / * `.
  core.String name;

  KeyRing();

  KeyRing.fromJson(core.Map _json) {
    if (_json.containsKey("createTime")) {
      createTime = _json["createTime"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (createTime != null) {
      _json["createTime"] = createTime;
    }
    if (name != null) {
      _json["name"] = name;
    }
    return _json;
  }
}

/// Response message for KeyManagementService.ListCryptoKeyVersions.
class ListCryptoKeyVersionsResponse {
  /// The list of CryptoKeyVersions.
  core.List<CryptoKeyVersion> cryptoKeyVersions;

  /// A token to retrieve next page of results. Pass this value in
  /// ListCryptoKeyVersionsRequest.page_token to retrieve the next page of
  /// results.
  core.String nextPageToken;

  /// The total number of CryptoKeyVersions that matched the
  /// query.
  core.int totalSize;

  ListCryptoKeyVersionsResponse();

  ListCryptoKeyVersionsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("cryptoKeyVersions")) {
      cryptoKeyVersions = (_json["cryptoKeyVersions"] as core.List)
          .map<CryptoKeyVersion>(
              (value) => new CryptoKeyVersion.fromJson(value))
          .toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("totalSize")) {
      totalSize = _json["totalSize"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (cryptoKeyVersions != null) {
      _json["cryptoKeyVersions"] =
          cryptoKeyVersions.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (totalSize != null) {
      _json["totalSize"] = totalSize;
    }
    return _json;
  }
}

/// Response message for KeyManagementService.ListCryptoKeys.
class ListCryptoKeysResponse {
  /// The list of CryptoKeys.
  core.List<CryptoKey> cryptoKeys;

  /// A token to retrieve next page of results. Pass this value in
  /// ListCryptoKeysRequest.page_token to retrieve the next page of results.
  core.String nextPageToken;

  /// The total number of CryptoKeys that matched the query.
  core.int totalSize;

  ListCryptoKeysResponse();

  ListCryptoKeysResponse.fromJson(core.Map _json) {
    if (_json.containsKey("cryptoKeys")) {
      cryptoKeys = (_json["cryptoKeys"] as core.List)
          .map<CryptoKey>((value) => new CryptoKey.fromJson(value))
          .toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("totalSize")) {
      totalSize = _json["totalSize"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (cryptoKeys != null) {
      _json["cryptoKeys"] =
          cryptoKeys.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (totalSize != null) {
      _json["totalSize"] = totalSize;
    }
    return _json;
  }
}

/// Response message for KeyManagementService.ListKeyRings.
class ListKeyRingsResponse {
  /// The list of KeyRings.
  core.List<KeyRing> keyRings;

  /// A token to retrieve next page of results. Pass this value in
  /// ListKeyRingsRequest.page_token to retrieve the next page of results.
  core.String nextPageToken;

  /// The total number of KeyRings that matched the query.
  core.int totalSize;

  ListKeyRingsResponse();

  ListKeyRingsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("keyRings")) {
      keyRings = (_json["keyRings"] as core.List)
          .map<KeyRing>((value) => new KeyRing.fromJson(value))
          .toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("totalSize")) {
      totalSize = _json["totalSize"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (keyRings != null) {
      _json["keyRings"] = keyRings.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (totalSize != null) {
      _json["totalSize"] = totalSize;
    }
    return _json;
  }
}

/// The response message for Locations.ListLocations.
class ListLocationsResponse {
  /// A list of locations that matches the specified filter in the request.
  core.List<Location> locations;

  /// The standard List next-page token.
  core.String nextPageToken;

  ListLocationsResponse();

  ListLocationsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("locations")) {
      locations = (_json["locations"] as core.List)
          .map<Location>((value) => new Location.fromJson(value))
          .toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (locations != null) {
      _json["locations"] = locations.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/// A resource that represents Google Cloud Platform location.
class Location {
  /// The friendly name for this location, typically a nearby city name.
  /// For example, "Tokyo".
  core.String displayName;

  /// Cross-service attributes for the location. For example
  ///
  ///     {"cloud.googleapis.com/region": "us-east1"}
  core.Map<core.String, core.String> labels;

  /// The canonical id for this location. For example: `"us-east1"`.
  core.String locationId;

  /// Service-specific metadata. For example the available capacity at the given
  /// location.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> metadata;

  /// Resource name for the location, which may vary between implementations.
  /// For example: `"projects/example-project/locations/us-east1"`
  core.String name;

  Location();

  Location.fromJson(core.Map _json) {
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("labels")) {
      labels = (_json["labels"] as core.Map).cast<core.String, core.String>();
    }
    if (_json.containsKey("locationId")) {
      locationId = _json["locationId"];
    }
    if (_json.containsKey("metadata")) {
      metadata =
          (_json["metadata"] as core.Map).cast<core.String, core.Object>();
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    if (labels != null) {
      _json["labels"] = labels;
    }
    if (locationId != null) {
      _json["locationId"] = locationId;
    }
    if (metadata != null) {
      _json["metadata"] = metadata;
    }
    if (name != null) {
      _json["name"] = name;
    }
    return _json;
  }
}

/// Cloud KMS metadata for the given google.cloud.location.Location.
class LocationMetadata {
  /// Indicates whether CryptoKeys with
  /// protection_level
  /// HSM can be created in this location.
  core.bool hsmAvailable;

  LocationMetadata();

  LocationMetadata.fromJson(core.Map _json) {
    if (_json.containsKey("hsmAvailable")) {
      hsmAvailable = _json["hsmAvailable"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (hsmAvailable != null) {
      _json["hsmAvailable"] = hsmAvailable;
    }
    return _json;
  }
}

/// Defines an Identity and Access Management (IAM) policy. It is used to
/// specify access control policies for Cloud Platform resources.
///
///
/// A `Policy` consists of a list of `bindings`. A `binding` binds a list of
/// `members` to a `role`, where the members can be user accounts, Google
/// groups,
/// Google domains, and service accounts. A `role` is a named list of
/// permissions
/// defined by IAM.
///
/// **JSON Example**
///
///     {
///       "bindings": [
///         {
///           "role": "roles/owner",
///           "members": [
///             "user:mike@example.com",
///             "group:admins@example.com",
///             "domain:google.com",
///             "serviceAccount:my-other-app@appspot.gserviceaccount.com"
///           ]
///         },
///         {
///           "role": "roles/viewer",
///           "members": ["user:sean@example.com"]
///         }
///       ]
///     }
///
/// **YAML Example**
///
///     bindings:
///     - members:
///       - user:mike@example.com
///       - group:admins@example.com
///       - domain:google.com
///       - serviceAccount:my-other-app@appspot.gserviceaccount.com
///       role: roles/owner
///     - members:
///       - user:sean@example.com
///       role: roles/viewer
///
///
/// For a description of IAM and its features, see the
/// [IAM developer's guide](https://cloud.google.com/iam/docs).
class Policy {
  /// Specifies cloud audit logging configuration for this policy.
  core.List<AuditConfig> auditConfigs;

  /// Associates a list of `members` to a `role`.
  /// `bindings` with no members will result in an error.
  core.List<Binding> bindings;

  /// `etag` is used for optimistic concurrency control as a way to help
  /// prevent simultaneous updates of a policy from overwriting each other.
  /// It is strongly suggested that systems make use of the `etag` in the
  /// read-modify-write cycle to perform policy updates in order to avoid race
  /// conditions: An `etag` is returned in the response to `getIamPolicy`, and
  /// systems are expected to put that etag in the request to `setIamPolicy` to
  /// ensure that their change will be applied to the same version of the
  /// policy.
  ///
  /// If no `etag` is provided in the call to `setIamPolicy`, then the existing
  /// policy is overwritten blindly.
  core.String etag;
  core.List<core.int> get etagAsBytes {
    return convert.base64.decode(etag);
  }

  void set etagAsBytes(core.List<core.int> _bytes) {
    etag =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  /// Deprecated.
  core.int version;

  Policy();

  Policy.fromJson(core.Map _json) {
    if (_json.containsKey("auditConfigs")) {
      auditConfigs = (_json["auditConfigs"] as core.List)
          .map<AuditConfig>((value) => new AuditConfig.fromJson(value))
          .toList();
    }
    if (_json.containsKey("bindings")) {
      bindings = (_json["bindings"] as core.List)
          .map<Binding>((value) => new Binding.fromJson(value))
          .toList();
    }
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("version")) {
      version = _json["version"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (auditConfigs != null) {
      _json["auditConfigs"] =
          auditConfigs.map((value) => (value).toJson()).toList();
    }
    if (bindings != null) {
      _json["bindings"] = bindings.map((value) => (value).toJson()).toList();
    }
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (version != null) {
      _json["version"] = version;
    }
    return _json;
  }
}

/// The public key for a given CryptoKeyVersion. Obtained via
/// GetPublicKey.
class PublicKey {
  /// The public key, encoded in PEM format. For more information, see the
  /// [RFC 7468](https://tools.ietf.org/html/rfc7468) sections for
  /// [General Considerations](https://tools.ietf.org/html/rfc7468#section-2)
  /// and
  /// [Textual Encoding of Subject Public Key Info]
  /// (https://tools.ietf.org/html/rfc7468#section-13).
  core.String pem;

  PublicKey();

  PublicKey.fromJson(core.Map _json) {
    if (_json.containsKey("pem")) {
      pem = _json["pem"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (pem != null) {
      _json["pem"] = pem;
    }
    return _json;
  }
}

/// Request message for KeyManagementService.RestoreCryptoKeyVersion.
class RestoreCryptoKeyVersionRequest {
  RestoreCryptoKeyVersionRequest();

  RestoreCryptoKeyVersionRequest.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    return _json;
  }
}

/// Request message for `SetIamPolicy` method.
class SetIamPolicyRequest {
  /// REQUIRED: The complete policy to be applied to the `resource`. The size of
  /// the policy is limited to a few 10s of KB. An empty policy is a
  /// valid policy but certain Cloud Platform services (such as Projects)
  /// might reject them.
  Policy policy;

  /// OPTIONAL: A FieldMask specifying which fields of the policy to modify.
  /// Only
  /// the fields in the mask will be modified. If no mask is provided, the
  /// following default mask is used:
  /// paths: "bindings, etag"
  /// This field is only used by Cloud IAM.
  core.String updateMask;

  SetIamPolicyRequest();

  SetIamPolicyRequest.fromJson(core.Map _json) {
    if (_json.containsKey("policy")) {
      policy = new Policy.fromJson(_json["policy"]);
    }
    if (_json.containsKey("updateMask")) {
      updateMask = _json["updateMask"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (policy != null) {
      _json["policy"] = (policy).toJson();
    }
    if (updateMask != null) {
      _json["updateMask"] = updateMask;
    }
    return _json;
  }
}

/// Request message for `TestIamPermissions` method.
class TestIamPermissionsRequest {
  /// The set of permissions to check for the `resource`. Permissions with
  /// wildcards (such as '*' or 'storage.*') are not allowed. For more
  /// information see
  /// [IAM Overview](https://cloud.google.com/iam/docs/overview#permissions).
  core.List<core.String> permissions;

  TestIamPermissionsRequest();

  TestIamPermissionsRequest.fromJson(core.Map _json) {
    if (_json.containsKey("permissions")) {
      permissions = (_json["permissions"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (permissions != null) {
      _json["permissions"] = permissions;
    }
    return _json;
  }
}

/// Response message for `TestIamPermissions` method.
class TestIamPermissionsResponse {
  /// A subset of `TestPermissionsRequest.permissions` that the caller is
  /// allowed.
  core.List<core.String> permissions;

  TestIamPermissionsResponse();

  TestIamPermissionsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("permissions")) {
      permissions = (_json["permissions"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (permissions != null) {
      _json["permissions"] = permissions;
    }
    return _json;
  }
}

/// Request message for KeyManagementService.UpdateCryptoKeyPrimaryVersion.
class UpdateCryptoKeyPrimaryVersionRequest {
  /// The id of the child CryptoKeyVersion to use as primary.
  core.String cryptoKeyVersionId;

  UpdateCryptoKeyPrimaryVersionRequest();

  UpdateCryptoKeyPrimaryVersionRequest.fromJson(core.Map _json) {
    if (_json.containsKey("cryptoKeyVersionId")) {
      cryptoKeyVersionId = _json["cryptoKeyVersionId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (cryptoKeyVersionId != null) {
      _json["cryptoKeyVersionId"] = cryptoKeyVersionId;
    }
    return _json;
  }
}
