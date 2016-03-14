// This is a generated file (see the discoveryapis_generator project).

library googleapis.iam.v1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:crypto/crypto.dart' as crypto;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart' show
    ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client iam/v1';

/**
 * Manages identity and access control for Google Cloud Platform resources,
 * including the creation of service accounts, which you can use to authenticate
 * to Google and make API calls.
 */
class IamApi {
  /** View and manage your data across Google Cloud Platform services */
  static const CloudPlatformScope = "https://www.googleapis.com/auth/cloud-platform";


  final commons.ApiRequester _requester;

  ProjectsResourceApi get projects => new ProjectsResourceApi(_requester);

  IamApi(http.Client client, {core.String rootUrl: "https://iam.googleapis.com/", core.String servicePath: ""}) :
      _requester = new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}


class ProjectsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsServiceAccountsResourceApi get serviceAccounts => new ProjectsServiceAccountsResourceApi(_requester);

  ProjectsResourceApi(commons.ApiRequester client) : 
      _requester = client;
}


class ProjectsServiceAccountsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsServiceAccountsKeysResourceApi get keys => new ProjectsServiceAccountsKeysResourceApi(_requester);

  ProjectsServiceAccountsResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Creates a service account and returns it.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [name] - Required. The resource name of the project associated with the
   * service accounts, such as "projects/123"
   * Value must have pattern "^projects/[^/]*$".
   *
   * Completes with a [ServiceAccount].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ServiceAccount> create(CreateServiceAccountRequest request, core.String name) {
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

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name') + '/serviceAccounts';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ServiceAccount.fromJson(data));
  }

  /**
   * Deletes a service acount.
   *
   * Request parameters:
   *
   * [name] - The resource name of the service account in the format
   * "projects/{project}/serviceAccounts/{account}". Using '-' as a wildcard for
   * the project, will infer the project from the account. The account value can
   * be the email address or the unique_id of the service account.
   * Value must have pattern "^projects/[^/] * / serviceAccounts/[^/]*$".
   *
   * Completes with a [Empty].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Empty> delete(core.String name) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /**
   * Gets a ServiceAccount
   *
   * Request parameters:
   *
   * [name] - The resource name of the service account in the format
   * "projects/{project}/serviceAccounts/{account}". Using '-' as a wildcard for
   * the project, will infer the project from the account. The account value can
   * be the email address or the unique_id of the service account.
   * Value must have pattern "^projects/[^/] * / serviceAccounts/[^/]*$".
   *
   * Completes with a [ServiceAccount].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ServiceAccount> get(core.String name) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ServiceAccount.fromJson(data));
  }

  /**
   * Returns the IAM access control policy for specified IAM resource.
   *
   * Request parameters:
   *
   * [resource] - REQUIRED: The resource for which the policy is being
   * requested. `resource` is usually specified as a path, such as `projects / *
   * project * / zones / * zone * / disks / * disk*`. The format for the path
   * specified in this value is resource specific and is specified in the
   * `getIamPolicy` documentation.
   * Value must have pattern "^projects/[^/] * / serviceAccounts/[^/]*$".
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

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$resource') + ':getIamPolicy';

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
   * Lists service accounts for a project.
   *
   * Request parameters:
   *
   * [name] - Required. The resource name of the project associated with the
   * service accounts, such as "projects/123"
   * Value must have pattern "^projects/[^/]*$".
   *
   * [pageSize] - Optional limit on the number of service accounts to include in
   * the response. Further accounts can subsequently be obtained by including
   * the [ListServiceAccountsResponse.next_page_token] in a subsequent request.
   *
   * [pageToken] - Optional pagination token returned in an earlier
   * [ListServiceAccountsResponse.next_page_token].
   *
   * Completes with a [ListServiceAccountsResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ListServiceAccountsResponse> list(core.String name, {core.int pageSize, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name') + '/serviceAccounts';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ListServiceAccountsResponse.fromJson(data));
  }

  /**
   * Sets the IAM access control policy for the specified IAM resource.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [resource] - REQUIRED: The resource for which the policy is being
   * specified. `resource` is usually specified as a path, such as `projects / *
   * project * / zones / * zone * / disks / * disk*`. The format for the path
   * specified in this value is resource specific and is specified in the
   * `setIamPolicy` documentation.
   * Value must have pattern "^projects/[^/] * / serviceAccounts/[^/]*$".
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

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$resource') + ':setIamPolicy';

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
   * Signs a blob using a service account.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [name] - The resource name of the service account in the format
   * "projects/{project}/serviceAccounts/{account}". Using '-' as a wildcard for
   * the project, will infer the project from the account. The account value can
   * be the email address or the unique_id of the service account.
   * Value must have pattern "^projects/[^/] * / serviceAccounts/[^/]*$".
   *
   * Completes with a [SignBlobResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<SignBlobResponse> signBlob(SignBlobRequest request, core.String name) {
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

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name') + ':signBlob';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new SignBlobResponse.fromJson(data));
  }

  /**
   * Tests the specified permissions against the IAM access control policy for
   * the specified IAM resource.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [resource] - REQUIRED: The resource for which the policy detail is being
   * requested. `resource` is usually specified as a path, such as `projects / *
   * project * / zones / * zone * / disks / * disk*`. The format for the path
   * specified in this value is resource specific and is specified in the
   * `testIamPermissions` documentation.
   * Value must have pattern "^projects/[^/] * / serviceAccounts/[^/]*$".
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

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$resource') + ':testIamPermissions';

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
   * Updates a service account. Currently, only the following fields are
   * updatable: 'display_name' . The 'etag' is mandatory.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [name] - The resource name of the service account in the format
   * "projects/{project}/serviceAccounts/{account}". In requests using '-' as a
   * wildcard for the project, will infer the project from the account and the
   * account value can be the email address or the unique_id of the service
   * account. In responses the resource name will always be in the format
   * "projects/{project}/serviceAccounts/{email}".
   * Value must have pattern "^projects/[^/] * / serviceAccounts/[^/]*$".
   *
   * Completes with a [ServiceAccount].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ServiceAccount> update(ServiceAccount request, core.String name) {
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

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url,
                                       "PUT",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ServiceAccount.fromJson(data));
  }

}


class ProjectsServiceAccountsKeysResourceApi {
  final commons.ApiRequester _requester;

  ProjectsServiceAccountsKeysResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Creates a service account key and returns it.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [name] - The resource name of the service account in the format
   * "projects/{project}/serviceAccounts/{account}". Using '-' as a wildcard for
   * the project, will infer the project from the account. The account value can
   * be the email address or the unique_id of the service account.
   * Value must have pattern "^projects/[^/] * / serviceAccounts/[^/]*$".
   *
   * Completes with a [ServiceAccountKey].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ServiceAccountKey> create(CreateServiceAccountKeyRequest request, core.String name) {
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

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name') + '/keys';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ServiceAccountKey.fromJson(data));
  }

  /**
   * Deletes a service account key.
   *
   * Request parameters:
   *
   * [name] - The resource name of the service account key in the format
   * "projects/{project}/serviceAccounts/{account}/keys/{key}". Using '-' as a
   * wildcard for the project will infer the project from the account. The
   * account value can be the email address or the unique_id of the service
   * account.
   * Value must have pattern "^projects/[^/] * / serviceAccounts/[^/] * /
   * keys/[^/]*$".
   *
   * Completes with a [Empty].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Empty> delete(core.String name) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /**
   * Gets the ServiceAccountKey by key id.
   *
   * Request parameters:
   *
   * [name] - The resource name of the service account key in the format
   * "projects/{project}/serviceAccounts/{account}/keys/{key}". Using '-' as a
   * wildcard for the project will infer the project from the account. The
   * account value can be the email address or the unique_id of the service
   * account.
   * Value must have pattern "^projects/[^/] * / serviceAccounts/[^/] * /
   * keys/[^/]*$".
   *
   * Completes with a [ServiceAccountKey].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ServiceAccountKey> get(core.String name) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ServiceAccountKey.fromJson(data));
  }

  /**
   * Lists service account keys
   *
   * Request parameters:
   *
   * [name] - The resource name of the service account in the format
   * "projects/{project}/serviceAccounts/{account}". Using '-' as a wildcard for
   * the project, will infer the project from the account. The account value can
   * be the email address or the unique_id of the service account.
   * Value must have pattern "^projects/[^/] * / serviceAccounts/[^/]*$".
   *
   * [keyTypes] - The type of keys the user wants to list. If empty, all key
   * types are included in the response. Duplicate key types are not allowed.
   *
   * Completes with a [ListServiceAccountKeysResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ListServiceAccountKeysResponse> list(core.String name, {core.List<core.String> keyTypes}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (keyTypes != null) {
      _queryParams["keyTypes"] = keyTypes;
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name') + '/keys';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ListServiceAccountKeysResponse.fromJson(data));
  }

}



/** Associates `members` with a `role`. */
class Binding {
  /**
   * Specifies the identities requesting access for a Cloud Platform resource.
   * `members` can have the following values: * `allUsers`: A special identifier
   * that represents anyone who is on the internet; with or without a Google
   * account. * `allAuthenticatedUsers`: A special identifier that represents
   * anyone who is authenticated with a Google account or a service account. *
   * `user:{emailid}`: An email address that represents a specific Google
   * account. For example, `alice@gmail.com` or `joe@example.com`. *
   * `serviceAccount:{emailid}`: An email address that represents a service
   * account. For example, `my-other-app@appspot.gserviceaccount.com`. *
   * `group:{emailid}`: An email address that represents a Google group. For
   * example, `admins@example.com`. * `domain:{domain}`: A Google Apps domain
   * name that represents all the users of that domain. For example,
   * `google.com` or `example.com`.
   */
  core.List<core.String> members;
  /**
   * Role that is assigned to `members`. For example, `roles/viewer`,
   * `roles/editor`, or `roles/owner`. Required
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
   * - "NO_ATTR" : A NO_ATTR.
   * - "AUTHORITY" : A AUTHORITY.
   * - "ATTRIBUTION" : A ATTRIBUTION.
   */
  core.String iam;
  /**
   * An operator to apply the subject with.
   * Possible string values are:
   * - "NO_OP" : A NO_OP.
   * - "EQUALS" : A EQUALS.
   * - "NOT_EQUALS" : A NOT_EQUALS.
   * - "IN" : A IN.
   * - "NOT_IN" : A NOT_IN.
   * - "DISCHARGED" : A DISCHARGED.
   */
  core.String op;
  /** Trusted attributes discharged by the service. */
  core.String svc;
  /**
   * Trusted attributes supplied by any service that owns resources and uses the
   * IAM system for access control.
   * Possible string values are:
   * - "NO_ATTR" : A NO_ATTR.
   * - "REGION" : A REGION.
   * - "SERVICE" : A SERVICE.
   * - "NAME" : A NAME.
   * - "IP" : A IP.
   */
  core.String sys;
  /** The object of the condition. Exactly one of these must be set. */
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

/** The service account key create request. */
class CreateServiceAccountKeyRequest {
  /**
   * The type of the key requested. GOOGLE_CREDENTIALS is the default key type.
   * Possible string values are:
   * - "TYPE_UNSPECIFIED" : A TYPE_UNSPECIFIED.
   * - "TYPE_PKCS12_FILE" : A TYPE_PKCS12_FILE.
   * - "TYPE_GOOGLE_CREDENTIALS_FILE" : A TYPE_GOOGLE_CREDENTIALS_FILE.
   */
  core.String privateKeyType;

  CreateServiceAccountKeyRequest();

  CreateServiceAccountKeyRequest.fromJson(core.Map _json) {
    if (_json.containsKey("privateKeyType")) {
      privateKeyType = _json["privateKeyType"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (privateKeyType != null) {
      _json["privateKeyType"] = privateKeyType;
    }
    return _json;
  }
}

/** The service account create request. */
class CreateServiceAccountRequest {
  /**
   * Required. The account id that is used to generate the service account email
   * address and a stable unique id. It is unique within a project, must be 1-63
   * characters long, and match the regular expression [a-z]([-a-z0-9]*[a-z0-9])
   * to comply with RFC1035.
   */
  core.String accountId;
  /**
   * The ServiceAccount resource to create. Currently, only the following values
   * are user assignable: display_name .
   */
  ServiceAccount serviceAccount;

  CreateServiceAccountRequest();

  CreateServiceAccountRequest.fromJson(core.Map _json) {
    if (_json.containsKey("accountId")) {
      accountId = _json["accountId"];
    }
    if (_json.containsKey("serviceAccount")) {
      serviceAccount = new ServiceAccount.fromJson(_json["serviceAccount"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (accountId != null) {
      _json["accountId"] = accountId;
    }
    if (serviceAccount != null) {
      _json["serviceAccount"] = (serviceAccount).toJson();
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

/**
 * A generic empty message that you can re-use to avoid defining duplicated
 * empty messages in your APIs. A typical example is to use it as the request or
 * the response type of an API method. For instance: service Foo { rpc
 * Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } The JSON
 * representation for `Empty` is empty JSON object `{}`.
 */
class Empty {

  Empty();

  Empty.fromJson(core.Map _json) {
  }

  core.Map toJson() {
    var _json = new core.Map();
    return _json;
  }
}

/** The service account keys list response. */
class ListServiceAccountKeysResponse {
  /** The public keys for the service account. */
  core.List<ServiceAccountKey> keys;

  ListServiceAccountKeysResponse();

  ListServiceAccountKeysResponse.fromJson(core.Map _json) {
    if (_json.containsKey("keys")) {
      keys = _json["keys"].map((value) => new ServiceAccountKey.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (keys != null) {
      _json["keys"] = keys.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/** The service account list response. */
class ListServiceAccountsResponse {
  /** The list of matching service accounts. */
  core.List<ServiceAccount> accounts;
  /**
   * To retrieve the next page of results, set
   * [ListServiceAccountsRequest.page_token] to this value.
   */
  core.String nextPageToken;

  ListServiceAccountsResponse();

  ListServiceAccountsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("accounts")) {
      accounts = _json["accounts"].map((value) => new ServiceAccount.fromJson(value)).toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (accounts != null) {
      _json["accounts"] = accounts.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/**
 * Specifies what kind of log the caller must write Increment a streamz counter
 * with the specified metric and field names. Metric names should start with a
 * '/', generally be lowercase-only, and end in "_count". Field names should not
 * contain an initial slash. The actual exported metric names will have
 * "/iam/policy" prepended. Field names correspond to IAM request parameters and
 * field values are their respective values. At present only "iam_principal",
 * corresponding to IAMContext.principal, is supported. Examples: counter {
 * metric: "/debug_access_count" field: "iam_principal" } ==> increment counter
 * /iam/policy/backend_debug_access_count {iam_principal=[value of
 * IAMContext.principal]} At this time we do not support: * multiple field names
 * (though this may be supported in the future) * decrementing the counter *
 * incrementing it by anything other than 1
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
 * Defines an Identity and Access Management (IAM) policy. It is used to specify
 * access control policies for Cloud Platform resources. A `Policy` consists of
 * a list of `bindings`. A `Binding` binds a list of `members` to a `role`,
 * where the members can be user accounts, Google groups, Google domains, and
 * service accounts. A `role` is a named list of permissions defined by IAM.
 * **Example** { "bindings": [ { "role": "roles/owner", "members": [
 * "user:mike@example.com", "group:admins@example.com", "domain:google.com",
 * "serviceAccount:my-other-app@appspot.gserviceaccount.com"] }, { "role":
 * "roles/viewer", "members": ["user:sean@example.com"] } ] } For a description
 * of IAM and its features, see the [IAM developer's
 * guide](https://cloud.google.com/iam).
 */
class Policy {
  /**
   * Associates a list of `members` to a `role`. Multiple `bindings` must not be
   * specified for the same `role`. `bindings` with no members will result in an
   * error.
   */
  core.List<Binding> bindings;
  /**
   * `etag` is used for optimistic concurrency control as a way to help prevent
   * simultaneous updates of a policy from overwriting each other. It is
   * strongly suggested that systems make use of the `etag` in the
   * read-modify-write cycle to perform policy updates in order to avoid race
   * conditions: An `etag` is returned in the response to `getIamPolicy`, and
   * systems are expected to put that etag in the request to `setIamPolicy` to
   * ensure that their change will be applied to the same version of the policy.
   * If no `etag` is provided in the call to `setIamPolicy`, then the existing
   * policy is overwritten blindly.
   */
  core.String etag;
  core.List<core.int> get etagAsBytes {
    return crypto.CryptoUtils.base64StringToBytes(etag);
  }

  void set etagAsBytes(core.List<core.int> _bytes) {
    etag = crypto.CryptoUtils.bytesToBase64(_bytes, urlSafe: true);
  }
  core.List<Rule> rules;
  /** Version of the `Policy`. The default version is 0. */
  core.int version;

  Policy();

  Policy.fromJson(core.Map _json) {
    if (_json.containsKey("bindings")) {
      bindings = _json["bindings"].map((value) => new Binding.fromJson(value)).toList();
    }
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
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
    if (bindings != null) {
      _json["bindings"] = bindings.map((value) => (value).toJson()).toList();
    }
    if (etag != null) {
      _json["etag"] = etag;
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

/** A rule to be applied in a Policy. */
class Rule {
  /**
   * Required
   * Possible string values are:
   * - "NO_ACTION" : A NO_ACTION.
   * - "ALLOW" : A ALLOW.
   * - "ALLOW_WITH_LOG" : A ALLOW_WITH_LOG.
   * - "DENY" : A DENY.
   * - "DENY_WITH_LOG" : A DENY_WITH_LOG.
   * - "LOG" : A LOG.
   */
  core.String action;
  /** Additional restrictions that must be met */
  core.List<Condition> conditions;
  /** Human-readable description of the rule. */
  core.String description;
  /**
   * The rule matches if the PRINCIPAL/AUTHORITY_SELECTOR is in this set of
   * entries.
   */
  core.List<core.String> in_;
  /**
   * The config returned to callers of tech.iam.IAM.CheckPolicy for any entries
   * that match the LOG action.
   */
  core.List<LogConfig> logConfig;
  /**
   * The rule matches if the PRINCIPAL/AUTHORITY_SELECTOR is not in this set of
   * entries. The format for in and not_in entries is the same as for members in
   * a Binding (see google/iam/v1/policy.proto).
   */
  core.List<core.String> notIn;
  /**
   * A permission is a string of form '..' (e.g., 'storage.buckets.list'). A
   * value of '*' matches all permissions, and a verb part of '*' (e.g.,
   * 'storage.buckets.*') matches all verbs.
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

/**
 * A service account in the Identity and Access Management API. To create a
 * service account, you specify the project_id and account_id for the account.
 * The account_id is unique within the project, and used to generate the service
 * account email address and a stable unique id. All other methods can identify
 * accounts using the format "projects/{project}/serviceAccounts/{account}".
 * Using '-' as a wildcard for the project, will infer the project from the
 * account. The account value can be the email address or the unique_id of the
 * service account.
 */
class ServiceAccount {
  /**
   * Optional. A user-specified description of the service account. Must be
   * fewer than 100 UTF-8 bytes.
   */
  core.String displayName;
  /** @OutputOnly Email address of the service account. */
  core.String email;
  /** Used to perform a consistent read-modify-write. */
  core.String etag;
  core.List<core.int> get etagAsBytes {
    return crypto.CryptoUtils.base64StringToBytes(etag);
  }

  void set etagAsBytes(core.List<core.int> _bytes) {
    etag = crypto.CryptoUtils.bytesToBase64(_bytes, urlSafe: true);
  }
  /**
   * The resource name of the service account in the format
   * "projects/{project}/serviceAccounts/{account}". In requests using '-' as a
   * wildcard for the project, will infer the project from the account and the
   * account value can be the email address or the unique_id of the service
   * account. In responses the resource name will always be in the format
   * "projects/{project}/serviceAccounts/{email}".
   */
  core.String name;
  /**
   * @OutputOnly. The OAuth2 client id for the service account. This is used in
   * conjunction with the OAuth2 clientconfig API to make three legged OAuth2
   * (3LO) flows to access the data of Google users.
   */
  core.String oauth2ClientId;
  /** @OutputOnly The id of the project that owns the service account. */
  core.String projectId;
  /** @OutputOnly unique and stable id of the service account. */
  core.String uniqueId;

  ServiceAccount();

  ServiceAccount.fromJson(core.Map _json) {
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("email")) {
      email = _json["email"];
    }
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("oauth2ClientId")) {
      oauth2ClientId = _json["oauth2ClientId"];
    }
    if (_json.containsKey("projectId")) {
      projectId = _json["projectId"];
    }
    if (_json.containsKey("uniqueId")) {
      uniqueId = _json["uniqueId"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    if (email != null) {
      _json["email"] = email;
    }
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (oauth2ClientId != null) {
      _json["oauth2ClientId"] = oauth2ClientId;
    }
    if (projectId != null) {
      _json["projectId"] = projectId;
    }
    if (uniqueId != null) {
      _json["uniqueId"] = uniqueId;
    }
    return _json;
  }
}

/**
 * Represents a service account key. A service account can have 0 or more key
 * pairs. The private keys for these are not stored by Google.
 * ServiceAccountKeys are immutable.
 */
class ServiceAccountKey {
  /**
   * The resource name of the service account key in the format
   * "projects/{project}/serviceAccounts/{email}/keys/{key}".
   */
  core.String name;
  /** The key data. */
  core.String privateKeyData;
  core.List<core.int> get privateKeyDataAsBytes {
    return crypto.CryptoUtils.base64StringToBytes(privateKeyData);
  }

  void set privateKeyDataAsBytes(core.List<core.int> _bytes) {
    privateKeyData = crypto.CryptoUtils.bytesToBase64(_bytes, urlSafe: true);
  }
  /**
   * The type of the private key.
   * Possible string values are:
   * - "TYPE_UNSPECIFIED" : A TYPE_UNSPECIFIED.
   * - "TYPE_PKCS12_FILE" : A TYPE_PKCS12_FILE.
   * - "TYPE_GOOGLE_CREDENTIALS_FILE" : A TYPE_GOOGLE_CREDENTIALS_FILE.
   */
  core.String privateKeyType;
  /** The key can be used after this timestamp. */
  core.String validAfterTime;
  /** The key can be used before this timestamp. */
  core.String validBeforeTime;

  ServiceAccountKey();

  ServiceAccountKey.fromJson(core.Map _json) {
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("privateKeyData")) {
      privateKeyData = _json["privateKeyData"];
    }
    if (_json.containsKey("privateKeyType")) {
      privateKeyType = _json["privateKeyType"];
    }
    if (_json.containsKey("validAfterTime")) {
      validAfterTime = _json["validAfterTime"];
    }
    if (_json.containsKey("validBeforeTime")) {
      validBeforeTime = _json["validBeforeTime"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (name != null) {
      _json["name"] = name;
    }
    if (privateKeyData != null) {
      _json["privateKeyData"] = privateKeyData;
    }
    if (privateKeyType != null) {
      _json["privateKeyType"] = privateKeyType;
    }
    if (validAfterTime != null) {
      _json["validAfterTime"] = validAfterTime;
    }
    if (validBeforeTime != null) {
      _json["validBeforeTime"] = validBeforeTime;
    }
    return _json;
  }
}

/** Request message for `SetIamPolicy` method. */
class SetIamPolicyRequest {
  /**
   * REQUIRED: The complete policy to be applied to the `resource`. The size of
   * the policy is limited to a few 10s of KB. An empty policy is a valid policy
   * but certain Cloud Platform services (such as Projects) might reject them.
   */
  Policy policy;

  SetIamPolicyRequest();

  SetIamPolicyRequest.fromJson(core.Map _json) {
    if (_json.containsKey("policy")) {
      policy = new Policy.fromJson(_json["policy"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (policy != null) {
      _json["policy"] = (policy).toJson();
    }
    return _json;
  }
}

/** The service account sign blob request. */
class SignBlobRequest {
  /** The bytes to sign */
  core.String bytesToSign;
  core.List<core.int> get bytesToSignAsBytes {
    return crypto.CryptoUtils.base64StringToBytes(bytesToSign);
  }

  void set bytesToSignAsBytes(core.List<core.int> _bytes) {
    bytesToSign = crypto.CryptoUtils.bytesToBase64(_bytes, urlSafe: true);
  }

  SignBlobRequest();

  SignBlobRequest.fromJson(core.Map _json) {
    if (_json.containsKey("bytesToSign")) {
      bytesToSign = _json["bytesToSign"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (bytesToSign != null) {
      _json["bytesToSign"] = bytesToSign;
    }
    return _json;
  }
}

/** The service account sign blob response. */
class SignBlobResponse {
  /** The id of the key used to sign the blob. */
  core.String keyId;
  /** The signed blob. */
  core.String signature;
  core.List<core.int> get signatureAsBytes {
    return crypto.CryptoUtils.base64StringToBytes(signature);
  }

  void set signatureAsBytes(core.List<core.int> _bytes) {
    signature = crypto.CryptoUtils.bytesToBase64(_bytes, urlSafe: true);
  }

  SignBlobResponse();

  SignBlobResponse.fromJson(core.Map _json) {
    if (_json.containsKey("keyId")) {
      keyId = _json["keyId"];
    }
    if (_json.containsKey("signature")) {
      signature = _json["signature"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (keyId != null) {
      _json["keyId"] = keyId;
    }
    if (signature != null) {
      _json["signature"] = signature;
    }
    return _json;
  }
}

/** Request message for `TestIamPermissions` method. */
class TestIamPermissionsRequest {
  /**
   * The set of permissions to check for the `resource`. Permissions with
   * wildcards (such as '*' or 'storage.*') are not allowed. For more
   * information see IAM Overview.
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
