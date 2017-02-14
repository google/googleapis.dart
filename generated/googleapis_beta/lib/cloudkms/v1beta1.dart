// This is a generated file (see the discoveryapis_generator project).

library googleapis_beta.cloudkms.v1beta1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart' show
    ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client cloudkms/v1beta1';

/**
 * Manages encryption for your cloud services the same way you do on-premise.
 * You can generate, use, rotate, and destroy AES256 encryption keys.
 */
class CloudkmsApi {
  /** View and manage your data across Google Cloud Platform services */
  static const CloudPlatformScope = "https://www.googleapis.com/auth/cloud-platform";


  final commons.ApiRequester _requester;

  ProjectsResourceApi get projects => new ProjectsResourceApi(_requester);

  CloudkmsApi(http.Client client, {core.String rootUrl: "https://cloudkms.googleapis.com/", core.String servicePath: ""}) :
      _requester = new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}


class ProjectsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLocationsResourceApi get locations => new ProjectsLocationsResourceApi(_requester);

  ProjectsResourceApi(commons.ApiRequester client) : 
      _requester = client;
}


class ProjectsLocationsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLocationsKeyRingsResourceApi get keyRings => new ProjectsLocationsKeyRingsResourceApi(_requester);

  ProjectsLocationsResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Get information about a location.
   *
   * Request parameters:
   *
   * [name] - Resource name for the location.
   * Value must have pattern "^projects/[^/]+/locations/[^/]+$".
   *
   * Completes with a [Location].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Location> get(core.String name) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Location.fromJson(data));
  }

  /**
   * Lists information about the supported locations for this service.
   *
   * Request parameters:
   *
   * [name] - The resource that owns the locations collection, if applicable.
   * Value must have pattern "^projects/[^/]+$".
   *
   * [filter] - The standard list filter.
   *
   * [pageToken] - The standard list page token.
   *
   * [pageSize] - The standard list page size.
   *
   * Completes with a [ListLocationsResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ListLocationsResponse> list(core.String name, {core.String filter, core.String pageToken, core.int pageSize}) {
    var _url = null;
    var _queryParams = new core.Map();
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

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name') + '/locations';

    var _response = _requester.request(_url,
                                       "GET",
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

  ProjectsLocationsKeyRingsCryptoKeysResourceApi get cryptoKeys => new ProjectsLocationsKeyRingsCryptoKeysResourceApi(_requester);

  ProjectsLocationsKeyRingsResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Create a new KeyRing in a given Project and Location.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [parent] - Required. The resource name of the location associated with the
   * KeyRings, in the format `projects / * /locations / * `.
   * Value must have pattern "^projects/[^/]+/locations/[^/]+$".
   *
   * [keyRingId] - Required. It must be unique within a location and match the
   * regular
   * expression `[a-zA-Z0-9_-]{1,63}`
   *
   * Completes with a [KeyRing].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<KeyRing> create(KeyRing request, core.String parent, {core.String keyRingId}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (keyRingId != null) {
      _queryParams["keyRingId"] = [keyRingId];
    }

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$parent') + '/keyRings';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new KeyRing.fromJson(data));
  }

  /**
   * Returns metadata for a given KeyRing.
   *
   * Request parameters:
   *
   * [name] - The name of the KeyRing to get.
   * Value must have pattern "^projects/[^/]+/locations/[^/]+/keyRings/[^/]+$".
   *
   * Completes with a [KeyRing].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<KeyRing> get(core.String name) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new KeyRing.fromJson(data));
  }

  /**
   * Gets the access control policy for a resource.
   * Returns an empty policy if the resource exists and does not have a policy
   * set.
   *
   * Request parameters:
   *
   * [resource] - REQUIRED: The resource for which the policy is being
   * requested.
   * `resource` is usually specified as a path. For example, a Project
   * resource is specified as `projects/{project}`.
   * Value must have pattern "^projects/[^/]+/locations/[^/]+/keyRings/[^/]+$".
   *
   * Completes with a [Policy].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Policy> getIamPolicy(core.String resource) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (resource == null) {
      throw new core.ArgumentError("Parameter resource is required.");
    }

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$resource') + ':getIamPolicy';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Policy.fromJson(data));
  }

  /**
   * Lists KeyRings.
   *
   * Request parameters:
   *
   * [parent] - Required. The resource name of the location associated with the
   * KeyRings, in the format `projects / * /locations / * `.
   * Value must have pattern "^projects/[^/]+/locations/[^/]+$".
   *
   * [pageToken] - Optional pagination token, returned earlier via
   * ListKeyRingsResponse.next_page_token.
   *
   * [pageSize] - Optional limit on the number of KeyRings to include in the
   * response.  Further KeyRings can subsequently be obtained by
   * including the ListKeyRingsResponse.next_page_token in a subsequent
   * request.  If unspecified, the server will pick an appropriate default.
   *
   * Completes with a [ListKeyRingsResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ListKeyRingsResponse> list(core.String parent, {core.String pageToken, core.int pageSize}) {
    var _url = null;
    var _queryParams = new core.Map();
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

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$parent') + '/keyRings';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ListKeyRingsResponse.fromJson(data));
  }

  /**
   * Sets the access control policy on the specified resource. Replaces any
   * existing policy.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [resource] - REQUIRED: The resource for which the policy is being
   * specified.
   * `resource` is usually specified as a path. For example, a Project
   * resource is specified as `projects/{project}`.
   * Value must have pattern "^projects/[^/]+/locations/[^/]+/keyRings/[^/]+$".
   *
   * Completes with a [Policy].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Policy> setIamPolicy(SetIamPolicyRequest request, core.String resource) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (resource == null) {
      throw new core.ArgumentError("Parameter resource is required.");
    }

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$resource') + ':setIamPolicy';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Policy.fromJson(data));
  }

  /**
   * Returns permissions that a caller has on the specified resource.
   * If the resource does not exist, this will return an empty set of
   * permissions, not a NOT_FOUND error.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [resource] - REQUIRED: The resource for which the policy detail is being
   * requested.
   * `resource` is usually specified as a path. For example, a Project
   * resource is specified as `projects/{project}`.
   * Value must have pattern "^projects/[^/]+/locations/[^/]+/keyRings/[^/]+$".
   *
   * Completes with a [TestIamPermissionsResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<TestIamPermissionsResponse> testIamPermissions(TestIamPermissionsRequest request, core.String resource) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (resource == null) {
      throw new core.ArgumentError("Parameter resource is required.");
    }

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$resource') + ':testIamPermissions';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new TestIamPermissionsResponse.fromJson(data));
  }

}


class ProjectsLocationsKeyRingsCryptoKeysResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsResourceApi get cryptoKeyVersions => new ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsResourceApi(_requester);

  ProjectsLocationsKeyRingsCryptoKeysResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Create a new CryptoKey within a KeyRing.
   *
   * CryptoKey.purpose is required.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [parent] - Required. The name of the KeyRing associated with the
   * CryptoKeys.
   * Value must have pattern "^projects/[^/]+/locations/[^/]+/keyRings/[^/]+$".
   *
   * [cryptoKeyId] - Required. It must be unique within a KeyRing and match the
   * regular
   * expression `[a-zA-Z0-9_-]{1,63}`
   *
   * Completes with a [CryptoKey].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<CryptoKey> create(CryptoKey request, core.String parent, {core.String cryptoKeyId}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (cryptoKeyId != null) {
      _queryParams["cryptoKeyId"] = [cryptoKeyId];
    }

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$parent') + '/cryptoKeys';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new CryptoKey.fromJson(data));
  }

  /**
   * Decrypt data that was protected by Encrypt.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [name] - Required. The resource name of the CryptoKey to use for
   * decryption.
   * The server will choose the appropriate version.
   * Value must have pattern
   * "^projects/[^/]+/locations/[^/]+/keyRings/[^/]+/cryptoKeys/[^/]+$".
   *
   * Completes with a [DecryptResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<DecryptResponse> decrypt(DecryptRequest request, core.String name) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name') + ':decrypt';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new DecryptResponse.fromJson(data));
  }

  /**
   * Encrypt data, so that it can only be recovered by a call to Decrypt.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [name] - Required. The resource name of the CryptoKey or CryptoKeyVersion
   * to use for encryption.
   *
   * If a CryptoKey is specified, the server will use its
   * primary version.
   * Value must have pattern
   * "^projects/[^/]+/locations/[^/]+/keyRings/[^/]+/cryptoKeys/.+$".
   *
   * Completes with a [EncryptResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<EncryptResponse> encrypt(EncryptRequest request, core.String name) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name') + ':encrypt';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new EncryptResponse.fromJson(data));
  }

  /**
   * Returns metadata for a given CryptoKey, as well as its
   * primary CryptoKeyVersion.
   *
   * Request parameters:
   *
   * [name] - The name of the CryptoKey to get.
   * Value must have pattern
   * "^projects/[^/]+/locations/[^/]+/keyRings/[^/]+/cryptoKeys/[^/]+$".
   *
   * Completes with a [CryptoKey].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<CryptoKey> get(core.String name) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new CryptoKey.fromJson(data));
  }

  /**
   * Gets the access control policy for a resource.
   * Returns an empty policy if the resource exists and does not have a policy
   * set.
   *
   * Request parameters:
   *
   * [resource] - REQUIRED: The resource for which the policy is being
   * requested.
   * `resource` is usually specified as a path. For example, a Project
   * resource is specified as `projects/{project}`.
   * Value must have pattern
   * "^projects/[^/]+/locations/[^/]+/keyRings/[^/]+/cryptoKeys/[^/]+$".
   *
   * Completes with a [Policy].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Policy> getIamPolicy(core.String resource) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (resource == null) {
      throw new core.ArgumentError("Parameter resource is required.");
    }

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$resource') + ':getIamPolicy';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Policy.fromJson(data));
  }

  /**
   * Lists CryptoKeys.
   *
   * Request parameters:
   *
   * [parent] - Required. The resource name of the KeyRing to list, in the
   * format
   * `projects / * /locations / * /keyRings / * `.
   * Value must have pattern "^projects/[^/]+/locations/[^/]+/keyRings/[^/]+$".
   *
   * [pageToken] - Optional pagination token, returned earlier via
   * ListCryptoKeysResponse.next_page_token.
   *
   * [pageSize] - Optional limit on the number of CryptoKeys to include in the
   * response.  Further CryptoKeys can subsequently be obtained by
   * including the ListCryptoKeysResponse.next_page_token in a subsequent
   * request.  If unspecified, the server will pick an appropriate default.
   *
   * Completes with a [ListCryptoKeysResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ListCryptoKeysResponse> list(core.String parent, {core.String pageToken, core.int pageSize}) {
    var _url = null;
    var _queryParams = new core.Map();
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

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$parent') + '/cryptoKeys';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ListCryptoKeysResponse.fromJson(data));
  }

  /**
   * Update a CryptoKey.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [name] - Output only. The resource name for this CryptoKey in the format
   * `projects / * /locations / * /keyRings / * /cryptoKeys / * `.
   * Value must have pattern
   * "^projects/[^/]+/locations/[^/]+/keyRings/[^/]+/cryptoKeys/[^/]+$".
   *
   * [updateMask] - Required list of fields to be updated in this request.
   *
   * Completes with a [CryptoKey].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<CryptoKey> patch(CryptoKey request, core.String name, {core.String updateMask}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (updateMask != null) {
      _queryParams["updateMask"] = [updateMask];
    }

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url,
                                       "PATCH",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new CryptoKey.fromJson(data));
  }

  /**
   * Sets the access control policy on the specified resource. Replaces any
   * existing policy.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [resource] - REQUIRED: The resource for which the policy is being
   * specified.
   * `resource` is usually specified as a path. For example, a Project
   * resource is specified as `projects/{project}`.
   * Value must have pattern
   * "^projects/[^/]+/locations/[^/]+/keyRings/[^/]+/cryptoKeys/[^/]+$".
   *
   * Completes with a [Policy].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Policy> setIamPolicy(SetIamPolicyRequest request, core.String resource) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (resource == null) {
      throw new core.ArgumentError("Parameter resource is required.");
    }

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$resource') + ':setIamPolicy';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Policy.fromJson(data));
  }

  /**
   * Returns permissions that a caller has on the specified resource.
   * If the resource does not exist, this will return an empty set of
   * permissions, not a NOT_FOUND error.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [resource] - REQUIRED: The resource for which the policy detail is being
   * requested.
   * `resource` is usually specified as a path. For example, a Project
   * resource is specified as `projects/{project}`.
   * Value must have pattern
   * "^projects/[^/]+/locations/[^/]+/keyRings/[^/]+/cryptoKeys/[^/]+$".
   *
   * Completes with a [TestIamPermissionsResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<TestIamPermissionsResponse> testIamPermissions(TestIamPermissionsRequest request, core.String resource) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (resource == null) {
      throw new core.ArgumentError("Parameter resource is required.");
    }

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$resource') + ':testIamPermissions';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new TestIamPermissionsResponse.fromJson(data));
  }

  /**
   * Update the version of a CryptoKey that will be used in Encrypt
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [name] - The resource name of the CryptoKey to update.
   * Value must have pattern
   * "^projects/[^/]+/locations/[^/]+/keyRings/[^/]+/cryptoKeys/[^/]+$".
   *
   * Completes with a [CryptoKey].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<CryptoKey> updatePrimaryVersion(UpdateCryptoKeyPrimaryVersionRequest request, core.String name) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name') + ':updatePrimaryVersion';

    var _response = _requester.request(_url,
                                       "POST",
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

  ProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Create a new CryptoKeyVersion in a CryptoKey.
   *
   * The server will assign the next sequential id. If unset,
   * state will be set to
   * ENABLED.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [parent] - Required. The name of the CryptoKey associated with
   * the CryptoKeyVersions.
   * Value must have pattern
   * "^projects/[^/]+/locations/[^/]+/keyRings/[^/]+/cryptoKeys/[^/]+$".
   *
   * Completes with a [CryptoKeyVersion].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<CryptoKeyVersion> create(CryptoKeyVersion request, core.String parent) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$parent') + '/cryptoKeyVersions';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new CryptoKeyVersion.fromJson(data));
  }

  /**
   * Schedule a CryptoKeyVersion for destruction.
   *
   * Upon calling this method, CryptoKeyVersion.state will be set to
   * DESTROY_SCHEDULED
   * and destroy_time will be set to a time 24
   * hours in the future, at which point the state
   * will be changed to
   * DESTROYED, and the key
   * material will be irrevocably destroyed.
   *
   * Before the destroy_time is reached,
   * RestoreCryptoKeyVersion may be called to reverse the process.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [name] - The resource name of the CryptoKeyVersion to destroy.
   * Value must have pattern
   * "^projects/[^/]+/locations/[^/]+/keyRings/[^/]+/cryptoKeys/[^/]+/cryptoKeyVersions/[^/]+$".
   *
   * Completes with a [CryptoKeyVersion].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<CryptoKeyVersion> destroy(DestroyCryptoKeyVersionRequest request, core.String name) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name') + ':destroy';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new CryptoKeyVersion.fromJson(data));
  }

  /**
   * Returns metadata for a given CryptoKeyVersion.
   *
   * Request parameters:
   *
   * [name] - The name of the CryptoKeyVersion to get.
   * Value must have pattern
   * "^projects/[^/]+/locations/[^/]+/keyRings/[^/]+/cryptoKeys/[^/]+/cryptoKeyVersions/[^/]+$".
   *
   * Completes with a [CryptoKeyVersion].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<CryptoKeyVersion> get(core.String name) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new CryptoKeyVersion.fromJson(data));
  }

  /**
   * Lists CryptoKeyVersions.
   *
   * Request parameters:
   *
   * [parent] - Required. The resource name of the CryptoKey to list, in the
   * format
   * `projects / * /locations / * /keyRings / * /cryptoKeys / * `.
   * Value must have pattern
   * "^projects/[^/]+/locations/[^/]+/keyRings/[^/]+/cryptoKeys/[^/]+$".
   *
   * [pageToken] - Optional pagination token, returned earlier via
   * ListCryptoKeyVersionsResponse.next_page_token.
   *
   * [pageSize] - Optional limit on the number of CryptoKeyVersions to
   * include in the response. Further CryptoKeyVersions can
   * subsequently be obtained by including the
   * ListCryptoKeyVersionsResponse.next_page_token in a subsequent request.
   * If unspecified, the server will pick an appropriate default.
   *
   * Completes with a [ListCryptoKeyVersionsResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ListCryptoKeyVersionsResponse> list(core.String parent, {core.String pageToken, core.int pageSize}) {
    var _url = null;
    var _queryParams = new core.Map();
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

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$parent') + '/cryptoKeyVersions';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ListCryptoKeyVersionsResponse.fromJson(data));
  }

  /**
   * Update a CryptoKeyVersion's metadata.
   *
   * state may be changed between
   * ENABLED and
   * DISABLED using this
   * method. See DestroyCryptoKeyVersion and RestoreCryptoKeyVersion to
   * move between other states.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [name] - Output only. The resource name for this CryptoKeyVersion in the
   * format
   * `projects / * /locations / * /keyRings / * /cryptoKeys / *
   * /cryptoKeyVersions / * `.
   * Value must have pattern
   * "^projects/[^/]+/locations/[^/]+/keyRings/[^/]+/cryptoKeys/[^/]+/cryptoKeyVersions/[^/]+$".
   *
   * [updateMask] - Required list of fields to be updated in this request.
   *
   * Completes with a [CryptoKeyVersion].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<CryptoKeyVersion> patch(CryptoKeyVersion request, core.String name, {core.String updateMask}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (updateMask != null) {
      _queryParams["updateMask"] = [updateMask];
    }

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url,
                                       "PATCH",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new CryptoKeyVersion.fromJson(data));
  }

  /**
   * Restore a CryptoKeyVersion in the
   * DESTROY_SCHEDULED,
   * state.
   *
   * Upon restoration of the CryptoKeyVersion, state
   * will be set to DISABLED,
   * and destroy_time will be cleared.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [name] - The resource name of the CryptoKeyVersion to restore.
   * Value must have pattern
   * "^projects/[^/]+/locations/[^/]+/keyRings/[^/]+/cryptoKeys/[^/]+/cryptoKeyVersions/[^/]+$".
   *
   * Completes with a [CryptoKeyVersion].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<CryptoKeyVersion> restore(RestoreCryptoKeyVersionRequest request, core.String name) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name') + ':restore';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new CryptoKeyVersion.fromJson(data));
  }

}



/**
 * Specifies the audit configuration for a service.
 * It consists of which permission types are logged, and what identities, if
 * any, are exempted from logging.
 * An AuditConifg must have one or more AuditLogConfigs.
 */
class AuditConfig {
  /**
   * The configuration for logging of each type of permission.
   * Next ID: 4
   */
  core.List<AuditLogConfig> auditLogConfigs;
  /**
   * Specifies the identities that are exempted from "data access" audit
   * logging for the `service` specified above.
   * Follows the same format of Binding.members.
   * This field is deprecated in favor of per-permission-type exemptions.
   */
  core.List<core.String> exemptedMembers;
  /**
   * Specifies a service that will be enabled for audit logging.
   * For example, `resourcemanager`, `storage`, `compute`.
   * `allServices` is a special value that covers all services.
   */
  core.String service;

  AuditConfig();

  AuditConfig.fromJson(core.Map _json) {
    if (_json.containsKey("auditLogConfigs")) {
      auditLogConfigs = _json["auditLogConfigs"].map((value) => new AuditLogConfig.fromJson(value)).toList();
    }
    if (_json.containsKey("exemptedMembers")) {
      exemptedMembers = _json["exemptedMembers"];
    }
    if (_json.containsKey("service")) {
      service = _json["service"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (auditLogConfigs != null) {
      _json["auditLogConfigs"] = auditLogConfigs.map((value) => (value).toJson()).toList();
    }
    if (exemptedMembers != null) {
      _json["exemptedMembers"] = exemptedMembers;
    }
    if (service != null) {
      _json["service"] = service;
    }
    return _json;
  }
}

/**
 * Provides the configuration for logging a type of permissions.
 * Example:
 *
 *     {
 *       "audit_log_configs": [
 *         {
 *           "log_type": "DATA_READ",
 *           "exempted_members": [
 *             "user:foo@gmail.com"
 *           ]
 *         },
 *         {
 *           "log_type": "DATA_WRITE",
 *         }
 *       ]
 *     }
 *
 * This enables 'DATA_READ' and 'DATA_WRITE' logging, while exempting
 * foo@gmail.com from DATA_READ logging.
 */
class AuditLogConfig {
  /**
   * Specifies the identities that do not cause logging for this type of
   * permission.
   * Follows the same format of Binding.members.
   */
  core.List<core.String> exemptedMembers;
  /**
   * The log type that this config enables.
   * Possible string values are:
   * - "LOG_TYPE_UNSPECIFIED" : Default case. Should never be this.
   * - "ADMIN_READ" : Admin reads. Example: CloudIAM getIamPolicy
   * - "DATA_WRITE" : Data writes. Example: CloudSQL Users create
   * - "DATA_READ" : Data reads. Example: CloudSQL Users list
   */
  core.String logType;

  AuditLogConfig();

  AuditLogConfig.fromJson(core.Map _json) {
    if (_json.containsKey("exemptedMembers")) {
      exemptedMembers = _json["exemptedMembers"];
    }
    if (_json.containsKey("logType")) {
      logType = _json["logType"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (exemptedMembers != null) {
      _json["exemptedMembers"] = exemptedMembers;
    }
    if (logType != null) {
      _json["logType"] = logType;
    }
    return _json;
  }
}

/** Associates `members` with a `role`. */
class Binding {
  /**
   * Specifies the identities requesting access for a Cloud Platform resource.
   * `members` can have the following values:
   *
   * * `allUsers`: A special identifier that represents anyone who is
   *    on the internet; with or without a Google account.
   *
   * * `allAuthenticatedUsers`: A special identifier that represents anyone
   *    who is authenticated with a Google account or a service account.
   *
   * * `user:{emailid}`: An email address that represents a specific Google
   *    account. For example, `alice@gmail.com` or `joe@example.com`.
   *
   *
   * * `serviceAccount:{emailid}`: An email address that represents a service
   *    account. For example, `my-other-app@appspot.gserviceaccount.com`.
   *
   * * `group:{emailid}`: An email address that represents a Google group.
   *    For example, `admins@example.com`.
   *
   * * `domain:{domain}`: A Google Apps domain name that represents all the
   *    users of that domain. For example, `google.com` or `example.com`.
   */
  core.List<core.String> members;
  /**
   * Role that is assigned to `members`.
   * For example, `roles/viewer`, `roles/editor`, or `roles/owner`.
   * Required
   */
  core.String role;

  Binding();

  Binding.fromJson(core.Map _json) {
    if (_json.containsKey("members")) {
      members = _json["members"];
    }
    if (_json.containsKey("role")) {
      role = _json["role"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (members != null) {
      _json["members"] = members;
    }
    if (role != null) {
      _json["role"] = role;
    }
    return _json;
  }
}

/** Write a Cloud Audit log */
class CloudAuditOptions {

  CloudAuditOptions();

  CloudAuditOptions.fromJson(core.Map _json) {
  }

  core.Map toJson() {
    var _json = new core.Map();
    return _json;
  }
}

/** A condition to be met. */
class Condition {
  /**
   * Trusted attributes supplied by the IAM system.
   * Possible string values are:
   * - "NO_ATTR" : Default non-attribute.
   * - "AUTHORITY" : Either principal or (if present) authority selector.
   * - "ATTRIBUTION" : The principal (even if an authority selector is present),
   * which
   * must only be used for attribution, not authorization.
   */
  core.String iam;
  /**
   * An operator to apply the subject with.
   * Possible string values are:
   * - "NO_OP" : Default no-op.
   * - "EQUALS" : DEPRECATED. Use IN instead.
   * - "NOT_EQUALS" : DEPRECATED. Use NOT_IN instead.
   * - "IN" : Set-inclusion check.
   * - "NOT_IN" : Set-exclusion check.
   * - "DISCHARGED" : Subject is discharged
   */
  core.String op;
  /** Trusted attributes discharged by the service. */
  core.String svc;
  /**
   * Trusted attributes supplied by any service that owns resources and uses
   * the IAM system for access control.
   * Possible string values are:
   * - "NO_ATTR" : Default non-attribute type
   * - "REGION" : Region of the resource
   * - "SERVICE" : Service name
   * - "NAME" : Resource name
   * - "IP" : IP address of the caller
   */
  core.String sys;
  /** DEPRECATED. Use 'values' instead. */
  core.String value;
  /** The objects of the condition. This is mutually exclusive with 'value'. */
  core.List<core.String> values;

  Condition();

  Condition.fromJson(core.Map _json) {
    if (_json.containsKey("iam")) {
      iam = _json["iam"];
    }
    if (_json.containsKey("op")) {
      op = _json["op"];
    }
    if (_json.containsKey("svc")) {
      svc = _json["svc"];
    }
    if (_json.containsKey("sys")) {
      sys = _json["sys"];
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
    if (_json.containsKey("values")) {
      values = _json["values"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (iam != null) {
      _json["iam"] = iam;
    }
    if (op != null) {
      _json["op"] = op;
    }
    if (svc != null) {
      _json["svc"] = svc;
    }
    if (sys != null) {
      _json["sys"] = sys;
    }
    if (value != null) {
      _json["value"] = value;
    }
    if (values != null) {
      _json["values"] = values;
    }
    return _json;
  }
}

/** Options for counters */
class CounterOptions {
  /** The field value to attribute. */
  core.String field;
  /** The metric to update. */
  core.String metric;

  CounterOptions();

  CounterOptions.fromJson(core.Map _json) {
    if (_json.containsKey("field")) {
      field = _json["field"];
    }
    if (_json.containsKey("metric")) {
      metric = _json["metric"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (field != null) {
      _json["field"] = field;
    }
    if (metric != null) {
      _json["metric"] = metric;
    }
    return _json;
  }
}

/**
 * A CryptoKey represents a logical key that can be used for cryptographic
 * operations.
 *
 * A CryptoKey is made up of one or more versions, which
 * represent the actual key material used in cryptographic operations.
 */
class CryptoKey {
  /** Output only. The time at which this CryptoKey was created. */
  core.String createTime;
  /**
   * Output only. The resource name for this CryptoKey in the format
   * `projects / * /locations / * /keyRings / * /cryptoKeys / * `.
   */
  core.String name;
  /**
   * At next_rotation_time, the Key Management Service will automatically:
   *
   * 1. Create a new version of this CryptoKey.
   * 2. Mark the new version as primary.
   *
   * Key rotations performed manually via
   * CreateCryptoKeyVersion and
   * UpdateCryptoKeyPrimaryVersion
   * do not affect next_rotation_time.
   */
  core.String nextRotationTime;
  /**
   * Output only. A copy of the "primary" CryptoKeyVersion that will be used
   * by Encrypt when this CryptoKey is given
   * in EncryptRequest.name.
   *
   * The CryptoKey's primary version can be updated via
   * UpdateCryptoKeyPrimaryVersion.
   */
  CryptoKeyVersion primary;
  /**
   * The immutable purpose of this CryptoKey. Currently, the only acceptable
   * purpose is ENCRYPT_DECRYPT.
   * Possible string values are:
   * - "CRYPTO_KEY_PURPOSE_UNSPECIFIED" : Not specified.
   * - "ENCRYPT_DECRYPT" : CryptoKeys with this purpose may be used with
   * Encrypt and
   * Decrypt.
   */
  core.String purpose;
  /**
   * next_rotation_time will be advanced by this period when the service
   * automatically rotates a key. Must be at least one day.
   *
   * If rotation_period is set, next_rotation_time must also be set.
   */
  core.String rotationPeriod;

  CryptoKey();

  CryptoKey.fromJson(core.Map _json) {
    if (_json.containsKey("createTime")) {
      createTime = _json["createTime"];
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
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (createTime != null) {
      _json["createTime"] = createTime;
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
    return _json;
  }
}

/**
 * A CryptoKeyVersion represents an individual cryptographic key, and the
 * associated key material.
 *
 * It can be used for cryptographic operations either directly, or via its
 * parent CryptoKey, in which case the server will choose the appropriate
 * version for the operation.
 */
class CryptoKeyVersion {
  /** Output only. The time at which this CryptoKeyVersion was created. */
  core.String createTime;
  /**
   * Output only. The time this CryptoKeyVersion's key material was
   * destroyed. Only present if state is
   * DESTROYED.
   */
  core.String destroyEventTime;
  /**
   * Output only. The time this CryptoKeyVersion's key material is scheduled
   * for destruction. Only present if state is
   * DESTROY_SCHEDULED.
   */
  core.String destroyTime;
  /**
   * Output only. The resource name for this CryptoKeyVersion in the format
   * `projects / * /locations / * /keyRings / * /cryptoKeys / *
   * /cryptoKeyVersions / * `.
   */
  core.String name;
  /**
   * The current state of the CryptoKeyVersion.
   * Possible string values are:
   * - "CRYPTO_KEY_VERSION_STATE_UNSPECIFIED" : Not specified.
   * - "ENABLED" : This version may be used in Encrypt and
   * Decrypt requests.
   * - "DISABLED" : This version may not be used, but the key material is still
   * available,
   * and the version can be placed back into the ENABLED state.
   * - "DESTROYED" : This version is destroyed, and the key material is no
   * longer stored.
   * A version may not leave this state once entered.
   * - "DESTROY_SCHEDULED" : This version is scheduled for destruction, and will
   * be destroyed soon.
   * Call
   * RestoreCryptoKeyVersion
   * to put it back into the DISABLED state.
   */
  core.String state;

  CryptoKeyVersion();

  CryptoKeyVersion.fromJson(core.Map _json) {
    if (_json.containsKey("createTime")) {
      createTime = _json["createTime"];
    }
    if (_json.containsKey("destroyEventTime")) {
      destroyEventTime = _json["destroyEventTime"];
    }
    if (_json.containsKey("destroyTime")) {
      destroyTime = _json["destroyTime"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("state")) {
      state = _json["state"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (createTime != null) {
      _json["createTime"] = createTime;
    }
    if (destroyEventTime != null) {
      _json["destroyEventTime"] = destroyEventTime;
    }
    if (destroyTime != null) {
      _json["destroyTime"] = destroyTime;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (state != null) {
      _json["state"] = state;
    }
    return _json;
  }
}

/** Write a Data Access (Gin) log */
class DataAccessOptions {

  DataAccessOptions();

  DataAccessOptions.fromJson(core.Map _json) {
  }

  core.Map toJson() {
    var _json = new core.Map();
    return _json;
  }
}

/** Request message for KeyManagementService.Decrypt. */
class DecryptRequest {
  /**
   * Optional data that must match the data originally supplied in
   * EncryptRequest.additional_authenticated_data.
   */
  core.String additionalAuthenticatedData;
  core.List<core.int> get additionalAuthenticatedDataAsBytes {
    return convert.BASE64.decode(additionalAuthenticatedData);
  }

  void set additionalAuthenticatedDataAsBytes(core.List<core.int> _bytes) {
    additionalAuthenticatedData = convert.BASE64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }
  /**
   * Required. The encrypted data originally returned in
   * EncryptResponse.ciphertext.
   */
  core.String ciphertext;
  core.List<core.int> get ciphertextAsBytes {
    return convert.BASE64.decode(ciphertext);
  }

  void set ciphertextAsBytes(core.List<core.int> _bytes) {
    ciphertext = convert.BASE64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
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

  core.Map toJson() {
    var _json = new core.Map();
    if (additionalAuthenticatedData != null) {
      _json["additionalAuthenticatedData"] = additionalAuthenticatedData;
    }
    if (ciphertext != null) {
      _json["ciphertext"] = ciphertext;
    }
    return _json;
  }
}

/** Response message for KeyManagementService.Decrypt. */
class DecryptResponse {
  /** The decrypted data originally supplied in EncryptRequest.plaintext. */
  core.String plaintext;
  core.List<core.int> get plaintextAsBytes {
    return convert.BASE64.decode(plaintext);
  }

  void set plaintextAsBytes(core.List<core.int> _bytes) {
    plaintext = convert.BASE64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  DecryptResponse();

  DecryptResponse.fromJson(core.Map _json) {
    if (_json.containsKey("plaintext")) {
      plaintext = _json["plaintext"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (plaintext != null) {
      _json["plaintext"] = plaintext;
    }
    return _json;
  }
}

/** Request message for KeyManagementService.DestroyCryptoKeyVersion. */
class DestroyCryptoKeyVersionRequest {

  DestroyCryptoKeyVersionRequest();

  DestroyCryptoKeyVersionRequest.fromJson(core.Map _json) {
  }

  core.Map toJson() {
    var _json = new core.Map();
    return _json;
  }
}

/** Request message for KeyManagementService.Encrypt. */
class EncryptRequest {
  /**
   * Optional data that, if specified, must also be provided during decryption
   * through DecryptRequest.additional_authenticated_data.  Must be no
   * larger than 64KiB.
   */
  core.String additionalAuthenticatedData;
  core.List<core.int> get additionalAuthenticatedDataAsBytes {
    return convert.BASE64.decode(additionalAuthenticatedData);
  }

  void set additionalAuthenticatedDataAsBytes(core.List<core.int> _bytes) {
    additionalAuthenticatedData = convert.BASE64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }
  /** Required. The data to encrypt. Must be no larger than 64KiB. */
  core.String plaintext;
  core.List<core.int> get plaintextAsBytes {
    return convert.BASE64.decode(plaintext);
  }

  void set plaintextAsBytes(core.List<core.int> _bytes) {
    plaintext = convert.BASE64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
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

  core.Map toJson() {
    var _json = new core.Map();
    if (additionalAuthenticatedData != null) {
      _json["additionalAuthenticatedData"] = additionalAuthenticatedData;
    }
    if (plaintext != null) {
      _json["plaintext"] = plaintext;
    }
    return _json;
  }
}

/** Response message for KeyManagementService.Encrypt. */
class EncryptResponse {
  /** The encrypted data. */
  core.String ciphertext;
  core.List<core.int> get ciphertextAsBytes {
    return convert.BASE64.decode(ciphertext);
  }

  void set ciphertextAsBytes(core.List<core.int> _bytes) {
    ciphertext = convert.BASE64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }
  /** The resource name of the CryptoKeyVersion used in encryption. */
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

  core.Map toJson() {
    var _json = new core.Map();
    if (ciphertext != null) {
      _json["ciphertext"] = ciphertext;
    }
    if (name != null) {
      _json["name"] = name;
    }
    return _json;
  }
}

/** A KeyRing is a toplevel logical grouping of CryptoKeys. */
class KeyRing {
  /** Output only. The time at which this KeyRing was created. */
  core.String createTime;
  /**
   * Output only. The resource name for the KeyRing in the format
   * `projects / * /locations / * /keyRings / * `.
   */
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

  core.Map toJson() {
    var _json = new core.Map();
    if (createTime != null) {
      _json["createTime"] = createTime;
    }
    if (name != null) {
      _json["name"] = name;
    }
    return _json;
  }
}

/** Response message for KeyManagementService.ListCryptoKeyVersions. */
class ListCryptoKeyVersionsResponse {
  /** The list of CryptoKeyVersions. */
  core.List<CryptoKeyVersion> cryptoKeyVersions;
  /**
   * A token to retrieve next page of results. Pass this value in
   * ListCryptoKeyVersionsRequest.page_token to retrieve the next page of
   * results.
   */
  core.String nextPageToken;
  /**
   * The total number of CryptoKeyVersions that matched the
   * query.
   */
  core.int totalSize;

  ListCryptoKeyVersionsResponse();

  ListCryptoKeyVersionsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("cryptoKeyVersions")) {
      cryptoKeyVersions = _json["cryptoKeyVersions"].map((value) => new CryptoKeyVersion.fromJson(value)).toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("totalSize")) {
      totalSize = _json["totalSize"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (cryptoKeyVersions != null) {
      _json["cryptoKeyVersions"] = cryptoKeyVersions.map((value) => (value).toJson()).toList();
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

/** Response message for KeyManagementService.ListCryptoKeys. */
class ListCryptoKeysResponse {
  /** The list of CryptoKeys. */
  core.List<CryptoKey> cryptoKeys;
  /**
   * A token to retrieve next page of results. Pass this value in
   * ListCryptoKeysRequest.page_token to retrieve the next page of results.
   */
  core.String nextPageToken;
  /** The total number of CryptoKeys that matched the query. */
  core.int totalSize;

  ListCryptoKeysResponse();

  ListCryptoKeysResponse.fromJson(core.Map _json) {
    if (_json.containsKey("cryptoKeys")) {
      cryptoKeys = _json["cryptoKeys"].map((value) => new CryptoKey.fromJson(value)).toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("totalSize")) {
      totalSize = _json["totalSize"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (cryptoKeys != null) {
      _json["cryptoKeys"] = cryptoKeys.map((value) => (value).toJson()).toList();
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

/** Response message for KeyManagementService.ListKeyRings. */
class ListKeyRingsResponse {
  /** The list of KeyRings. */
  core.List<KeyRing> keyRings;
  /**
   * A token to retrieve next page of results. Pass this value in
   * ListKeyRingsRequest.page_token to retrieve the next page of results.
   */
  core.String nextPageToken;
  /** The total number of KeyRings that matched the query. */
  core.int totalSize;

  ListKeyRingsResponse();

  ListKeyRingsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("keyRings")) {
      keyRings = _json["keyRings"].map((value) => new KeyRing.fromJson(value)).toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("totalSize")) {
      totalSize = _json["totalSize"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
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

/** The response message for Locations.ListLocations. */
class ListLocationsResponse {
  /** A list of locations that matches the specified filter in the request. */
  core.List<Location> locations;
  /** The standard List next-page token. */
  core.String nextPageToken;

  ListLocationsResponse();

  ListLocationsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("locations")) {
      locations = _json["locations"].map((value) => new Location.fromJson(value)).toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (locations != null) {
      _json["locations"] = locations.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/** A resource that represents Google Cloud Platform location. */
class Location {
  /**
   * Cross-service attributes for the location. For example
   *
   *     {"cloud.googleapis.com/region": "us-east1"}
   */
  core.Map<core.String, core.String> labels;
  /** The canonical id for this location. For example: `"us-east1"`. */
  core.String locationId;
  /**
   * Service-specific metadata. For example the available capacity at the given
   * location.
   *
   * The values for Object must be JSON objects. It can consist of `num`,
   * `String`, `bool` and `null` as well as `Map` and `List` values.
   */
  core.Map<core.String, core.Object> metadata;
  /**
   * Resource name for the location, which may vary between implementations.
   * For example: `"projects/example-project/locations/us-east1"`
   */
  core.String name;

  Location();

  Location.fromJson(core.Map _json) {
    if (_json.containsKey("labels")) {
      labels = _json["labels"];
    }
    if (_json.containsKey("locationId")) {
      locationId = _json["locationId"];
    }
    if (_json.containsKey("metadata")) {
      metadata = _json["metadata"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
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

/**
 * Specifies what kind of log the caller must write
 * Increment a streamz counter with the specified metric and field names.
 *
 * Metric names should start with a '/', generally be lowercase-only,
 * and end in "_count". Field names should not contain an initial slash.
 * The actual exported metric names will have "/iam/policy" prepended.
 *
 * Field names correspond to IAM request parameters and field values are
 * their respective values.
 *
 * At present the only supported field names are
 *    - "iam_principal", corresponding to IAMContext.principal;
 *    - "" (empty string), resulting in one aggretated counter with no field.
 *
 * Examples:
 *   counter { metric: "/debug_access_count"  field: "iam_principal" }
 *   ==> increment counter /iam/policy/backend_debug_access_count
 *                         {iam_principal=[value of IAMContext.principal]}
 *
 * At this time we do not support:
 * * multiple field names (though this may be supported in the future)
 * * decrementing the counter
 * * incrementing it by anything other than 1
 */
class LogConfig {
  /** Cloud audit options. */
  CloudAuditOptions cloudAudit;
  /** Counter options. */
  CounterOptions counter;
  /** Data access options. */
  DataAccessOptions dataAccess;

  LogConfig();

  LogConfig.fromJson(core.Map _json) {
    if (_json.containsKey("cloudAudit")) {
      cloudAudit = new CloudAuditOptions.fromJson(_json["cloudAudit"]);
    }
    if (_json.containsKey("counter")) {
      counter = new CounterOptions.fromJson(_json["counter"]);
    }
    if (_json.containsKey("dataAccess")) {
      dataAccess = new DataAccessOptions.fromJson(_json["dataAccess"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (cloudAudit != null) {
      _json["cloudAudit"] = (cloudAudit).toJson();
    }
    if (counter != null) {
      _json["counter"] = (counter).toJson();
    }
    if (dataAccess != null) {
      _json["dataAccess"] = (dataAccess).toJson();
    }
    return _json;
  }
}

/**
 * Defines an Identity and Access Management (IAM) policy. It is used to
 * specify access control policies for Cloud Platform resources.
 *
 *
 * A `Policy` consists of a list of `bindings`. A `Binding` binds a list of
 * `members` to a `role`, where the members can be user accounts, Google groups,
 * Google domains, and service accounts. A `role` is a named list of permissions
 * defined by IAM.
 *
 * **Example**
 *
 *     {
 *       "bindings": [
 *         {
 *           "role": "roles/owner",
 *           "members": [
 *             "user:mike@example.com",
 *             "group:admins@example.com",
 *             "domain:google.com",
 *             "serviceAccount:my-other-app@appspot.gserviceaccount.com",
 *           ]
 *         },
 *         {
 *           "role": "roles/viewer",
 *           "members": ["user:sean@example.com"]
 *         }
 *       ]
 *     }
 *
 * For a description of IAM and its features, see the
 * [IAM developer's guide](https://cloud.google.com/iam).
 */
class Policy {
  /** Specifies cloud audit logging configuration for this policy. */
  core.List<AuditConfig> auditConfigs;
  /**
   * Associates a list of `members` to a `role`.
   * Multiple `bindings` must not be specified for the same `role`.
   * `bindings` with no members will result in an error.
   */
  core.List<Binding> bindings;
  /**
   * `etag` is used for optimistic concurrency control as a way to help
   * prevent simultaneous updates of a policy from overwriting each other.
   * It is strongly suggested that systems make use of the `etag` in the
   * read-modify-write cycle to perform policy updates in order to avoid race
   * conditions: An `etag` is returned in the response to `getIamPolicy`, and
   * systems are expected to put that etag in the request to `setIamPolicy` to
   * ensure that their change will be applied to the same version of the policy.
   *
   * If no `etag` is provided in the call to `setIamPolicy`, then the existing
   * policy is overwritten blindly.
   */
  core.String etag;
  core.List<core.int> get etagAsBytes {
    return convert.BASE64.decode(etag);
  }

  void set etagAsBytes(core.List<core.int> _bytes) {
    etag = convert.BASE64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }
  core.bool iamOwned;
  /**
   * If more than one rule is specified, the rules are applied in the following
   * manner:
   * - All matching LOG rules are always applied.
   * - If any DENY/DENY_WITH_LOG rule matches, permission is denied.
   *   Logging will be applied if one or more matching rule requires logging.
   * - Otherwise, if any ALLOW/ALLOW_WITH_LOG rule matches, permission is
   *   granted.
   *   Logging will be applied if one or more matching rule requires logging.
   * - Otherwise, if no rule applies, permission is denied.
   */
  core.List<Rule> rules;
  /** Version of the `Policy`. The default version is 0. */
  core.int version;

  Policy();

  Policy.fromJson(core.Map _json) {
    if (_json.containsKey("auditConfigs")) {
      auditConfigs = _json["auditConfigs"].map((value) => new AuditConfig.fromJson(value)).toList();
    }
    if (_json.containsKey("bindings")) {
      bindings = _json["bindings"].map((value) => new Binding.fromJson(value)).toList();
    }
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("iamOwned")) {
      iamOwned = _json["iamOwned"];
    }
    if (_json.containsKey("rules")) {
      rules = _json["rules"].map((value) => new Rule.fromJson(value)).toList();
    }
    if (_json.containsKey("version")) {
      version = _json["version"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (auditConfigs != null) {
      _json["auditConfigs"] = auditConfigs.map((value) => (value).toJson()).toList();
    }
    if (bindings != null) {
      _json["bindings"] = bindings.map((value) => (value).toJson()).toList();
    }
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (iamOwned != null) {
      _json["iamOwned"] = iamOwned;
    }
    if (rules != null) {
      _json["rules"] = rules.map((value) => (value).toJson()).toList();
    }
    if (version != null) {
      _json["version"] = version;
    }
    return _json;
  }
}

/** Request message for KeyManagementService.RestoreCryptoKeyVersion. */
class RestoreCryptoKeyVersionRequest {

  RestoreCryptoKeyVersionRequest();

  RestoreCryptoKeyVersionRequest.fromJson(core.Map _json) {
  }

  core.Map toJson() {
    var _json = new core.Map();
    return _json;
  }
}

/** A rule to be applied in a Policy. */
class Rule {
  /**
   * Required
   * Possible string values are:
   * - "NO_ACTION" : Default no action.
   * - "ALLOW" : Matching 'Entries' grant access.
   * - "ALLOW_WITH_LOG" : Matching 'Entries' grant access and the caller
   * promises to log
   * the request per the returned log_configs.
   * - "DENY" : Matching 'Entries' deny access.
   * - "DENY_WITH_LOG" : Matching 'Entries' deny access and the caller promises
   * to log
   * the request per the returned log_configs.
   * - "LOG" : Matching 'Entries' tell IAM.Check callers to generate logs.
   */
  core.String action;
  /** Additional restrictions that must be met */
  core.List<Condition> conditions;
  /** Human-readable description of the rule. */
  core.String description;
  /**
   * If one or more 'in' clauses are specified, the rule matches if
   * the PRINCIPAL/AUTHORITY_SELECTOR is in at least one of these entries.
   */
  core.List<core.String> in_;
  /**
   * The config returned to callers of tech.iam.IAM.CheckPolicy for any entries
   * that match the LOG action.
   */
  core.List<LogConfig> logConfig;
  /**
   * If one or more 'not_in' clauses are specified, the rule matches
   * if the PRINCIPAL/AUTHORITY_SELECTOR is in none of the entries.
   * The format for in and not_in entries is the same as for members in a
   * Binding (see google/iam/v1/policy.proto).
   */
  core.List<core.String> notIn;
  /**
   * A permission is a string of form '<service>.<resource type>.<verb>'
   * (e.g., 'storage.buckets.list'). A value of '*' matches all permissions,
   * and a verb part of '*' (e.g., 'storage.buckets.*') matches all verbs.
   */
  core.List<core.String> permissions;

  Rule();

  Rule.fromJson(core.Map _json) {
    if (_json.containsKey("action")) {
      action = _json["action"];
    }
    if (_json.containsKey("conditions")) {
      conditions = _json["conditions"].map((value) => new Condition.fromJson(value)).toList();
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("in")) {
      in_ = _json["in"];
    }
    if (_json.containsKey("logConfig")) {
      logConfig = _json["logConfig"].map((value) => new LogConfig.fromJson(value)).toList();
    }
    if (_json.containsKey("notIn")) {
      notIn = _json["notIn"];
    }
    if (_json.containsKey("permissions")) {
      permissions = _json["permissions"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (action != null) {
      _json["action"] = action;
    }
    if (conditions != null) {
      _json["conditions"] = conditions.map((value) => (value).toJson()).toList();
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (in_ != null) {
      _json["in"] = in_;
    }
    if (logConfig != null) {
      _json["logConfig"] = logConfig.map((value) => (value).toJson()).toList();
    }
    if (notIn != null) {
      _json["notIn"] = notIn;
    }
    if (permissions != null) {
      _json["permissions"] = permissions;
    }
    return _json;
  }
}

/** Request message for `SetIamPolicy` method. */
class SetIamPolicyRequest {
  /**
   * REQUIRED: The complete policy to be applied to the `resource`. The size of
   * the policy is limited to a few 10s of KB. An empty policy is a
   * valid policy but certain Cloud Platform services (such as Projects)
   * might reject them.
   */
  Policy policy;
  /**
   * OPTIONAL: A FieldMask specifying which fields of the policy to modify. Only
   * the fields in the mask will be modified. If no mask is provided, a default
   * mask is used:
   * paths: "bindings, etag"
   * This field is only used by Cloud IAM.
   */
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

  core.Map toJson() {
    var _json = new core.Map();
    if (policy != null) {
      _json["policy"] = (policy).toJson();
    }
    if (updateMask != null) {
      _json["updateMask"] = updateMask;
    }
    return _json;
  }
}

/** Request message for `TestIamPermissions` method. */
class TestIamPermissionsRequest {
  /**
   * The set of permissions to check for the `resource`. Permissions with
   * wildcards (such as '*' or 'storage.*') are not allowed. For more
   * information see
   * [IAM Overview](https://cloud.google.com/iam/docs/overview#permissions).
   */
  core.List<core.String> permissions;

  TestIamPermissionsRequest();

  TestIamPermissionsRequest.fromJson(core.Map _json) {
    if (_json.containsKey("permissions")) {
      permissions = _json["permissions"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (permissions != null) {
      _json["permissions"] = permissions;
    }
    return _json;
  }
}

/** Response message for `TestIamPermissions` method. */
class TestIamPermissionsResponse {
  /**
   * A subset of `TestPermissionsRequest.permissions` that the caller is
   * allowed.
   */
  core.List<core.String> permissions;

  TestIamPermissionsResponse();

  TestIamPermissionsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("permissions")) {
      permissions = _json["permissions"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (permissions != null) {
      _json["permissions"] = permissions;
    }
    return _json;
  }
}

/** Request message for KeyManagementService.UpdateCryptoKeyPrimaryVersion. */
class UpdateCryptoKeyPrimaryVersionRequest {
  /** The id of the child CryptoKeyVersion to use as primary. */
  core.String cryptoKeyVersionId;

  UpdateCryptoKeyPrimaryVersionRequest();

  UpdateCryptoKeyPrimaryVersionRequest.fromJson(core.Map _json) {
    if (_json.containsKey("cryptoKeyVersionId")) {
      cryptoKeyVersionId = _json["cryptoKeyVersionId"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (cryptoKeyVersionId != null) {
      _json["cryptoKeyVersionId"] = cryptoKeyVersionId;
    }
    return _json;
  }
}
