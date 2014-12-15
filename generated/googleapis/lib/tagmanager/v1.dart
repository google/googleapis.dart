library googleapis.tagmanager.v1;

import "dart:core" as core;
import "dart:collection" as collection;
import "dart:async" as async;
import "dart:convert" as convert;

import "package:crypto/crypto.dart" as crypto;
import 'package:http/http.dart' as http;
import '../src/common_internal.dart' as common_internal;
import '../common/common.dart' as common;

export '../common/common.dart' show ApiRequestError;
export '../common/common.dart' show DetailedApiRequestError;

/** API for accessing Tag Manager accounts and containers. */
class TagmanagerApi {
  /** Delete your Google Tag Manager containers */
  static const TagmanagerDeleteContainersScope = "https://www.googleapis.com/auth/tagmanager.delete.containers";

  /** Manage your Google Tag Manager containers */
  static const TagmanagerEditContainersScope = "https://www.googleapis.com/auth/tagmanager.edit.containers";

  /** Manage your Google Tag Manager container versions */
  static const TagmanagerEditContainerversionsScope = "https://www.googleapis.com/auth/tagmanager.edit.containerversions";

  /** Manage your Google Tag Manager accounts */
  static const TagmanagerManageAccountsScope = "https://www.googleapis.com/auth/tagmanager.manage.accounts";

  /** Manage user permissions of your Google Tag Manager data */
  static const TagmanagerManageUsersScope = "https://www.googleapis.com/auth/tagmanager.manage.users";

  /** Publish your Google Tag Manager containers */
  static const TagmanagerPublishScope = "https://www.googleapis.com/auth/tagmanager.publish";

  /** View your Google Tag Manager containers */
  static const TagmanagerReadonlyScope = "https://www.googleapis.com/auth/tagmanager.readonly";


  final common_internal.ApiRequester _requester;

  AccountsResourceApi get accounts => new AccountsResourceApi(_requester);

  TagmanagerApi(http.Client client, {core.String rootUrl: "https://www.googleapis.com/", core.String servicePath: "tagmanager/v1/"}) :
      _requester = new common_internal.ApiRequester(client, rootUrl, servicePath);
}


/** Not documented yet. */
class AccountsResourceApi {
  final common_internal.ApiRequester _requester;

  AccountsContainersResourceApi get containers => new AccountsContainersResourceApi(_requester);
  AccountsPermissionsResourceApi get permissions => new AccountsPermissionsResourceApi(_requester);

  AccountsResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Gets a GTM Account.
   *
   * Request parameters:
   *
   * [accountId] - The GTM Account ID.
   *
   * Completes with a [Account].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Account> get(core.String accountId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }


    _url = 'accounts/' + common_internal.Escaper.ecapeVariable('$accountId');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Account.fromJson(data));
  }

  /**
   * Lists all GTM Accounts that a user has access to.
   *
   * Request parameters:
   *
   * Completes with a [ListAccountsResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<ListAccountsResponse> list() {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;



    _url = 'accounts';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ListAccountsResponse.fromJson(data));
  }

  /**
   * Updates a GTM Account.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [accountId] - The GTM Account ID.
   *
   * [fingerprint] - When provided, this fingerprint must match the fingerprint
   * of the account in storage.
   *
   * Completes with a [Account].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Account> update(Account request, core.String accountId, {core.String fingerprint}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }
    if (fingerprint != null) {
      _queryParams["fingerprint"] = [fingerprint];
    }


    _url = 'accounts/' + common_internal.Escaper.ecapeVariable('$accountId');

    var _response = _requester.request(_url,
                                       "PUT",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Account.fromJson(data));
  }

}


/** Not documented yet. */
class AccountsContainersResourceApi {
  final common_internal.ApiRequester _requester;

  AccountsContainersMacrosResourceApi get macros => new AccountsContainersMacrosResourceApi(_requester);
  AccountsContainersRulesResourceApi get rules => new AccountsContainersRulesResourceApi(_requester);
  AccountsContainersTagsResourceApi get tags => new AccountsContainersTagsResourceApi(_requester);
  AccountsContainersTriggersResourceApi get triggers => new AccountsContainersTriggersResourceApi(_requester);
  AccountsContainersVariablesResourceApi get variables => new AccountsContainersVariablesResourceApi(_requester);
  AccountsContainersVersionsResourceApi get versions => new AccountsContainersVersionsResourceApi(_requester);

  AccountsContainersResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Creates a Container.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [accountId] - The GTM Account ID.
   *
   * Completes with a [Container].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Container> create(Container request, core.String accountId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }


    _url = 'accounts/' + common_internal.Escaper.ecapeVariable('$accountId') + '/containers';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Container.fromJson(data));
  }

  /**
   * Deletes a Container.
   *
   * Request parameters:
   *
   * [accountId] - The GTM Account ID.
   *
   * [containerId] - The GTM Container ID.
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future delete(core.String accountId, core.String containerId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }
    if (containerId == null) {
      throw new core.ArgumentError("Parameter containerId is required.");
    }

    _downloadOptions = null;

    _url = 'accounts/' + common_internal.Escaper.ecapeVariable('$accountId') + '/containers/' + common_internal.Escaper.ecapeVariable('$containerId');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /**
   * Gets a Container.
   *
   * Request parameters:
   *
   * [accountId] - The GTM Account ID.
   *
   * [containerId] - The GTM Container ID.
   *
   * Completes with a [Container].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Container> get(core.String accountId, core.String containerId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }
    if (containerId == null) {
      throw new core.ArgumentError("Parameter containerId is required.");
    }


    _url = 'accounts/' + common_internal.Escaper.ecapeVariable('$accountId') + '/containers/' + common_internal.Escaper.ecapeVariable('$containerId');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Container.fromJson(data));
  }

  /**
   * Lists all Containers that belongs to a GTM Account.
   *
   * Request parameters:
   *
   * [accountId] - The GTM Account ID.
   *
   * Completes with a [ListContainersResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<ListContainersResponse> list(core.String accountId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }


    _url = 'accounts/' + common_internal.Escaper.ecapeVariable('$accountId') + '/containers';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ListContainersResponse.fromJson(data));
  }

  /**
   * Updates a Container.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [accountId] - The GTM Account ID.
   *
   * [containerId] - The GTM Container ID.
   *
   * [fingerprint] - When provided, this fingerprint must match the fingerprint
   * of the container in storage.
   *
   * Completes with a [Container].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Container> update(Container request, core.String accountId, core.String containerId, {core.String fingerprint}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }
    if (containerId == null) {
      throw new core.ArgumentError("Parameter containerId is required.");
    }
    if (fingerprint != null) {
      _queryParams["fingerprint"] = [fingerprint];
    }


    _url = 'accounts/' + common_internal.Escaper.ecapeVariable('$accountId') + '/containers/' + common_internal.Escaper.ecapeVariable('$containerId');

    var _response = _requester.request(_url,
                                       "PUT",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Container.fromJson(data));
  }

}


/** Not documented yet. */
class AccountsContainersMacrosResourceApi {
  final common_internal.ApiRequester _requester;

  AccountsContainersMacrosResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Creates a GTM Macro.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [accountId] - The GTM Account ID.
   *
   * [containerId] - The GTM Container ID.
   *
   * Completes with a [Macro].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Macro> create(Macro request, core.String accountId, core.String containerId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }
    if (containerId == null) {
      throw new core.ArgumentError("Parameter containerId is required.");
    }


    _url = 'accounts/' + common_internal.Escaper.ecapeVariable('$accountId') + '/containers/' + common_internal.Escaper.ecapeVariable('$containerId') + '/macros';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Macro.fromJson(data));
  }

  /**
   * Deletes a GTM Macro.
   *
   * Request parameters:
   *
   * [accountId] - The GTM Account ID.
   *
   * [containerId] - The GTM Container ID.
   *
   * [macroId] - The GTM Macro ID.
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future delete(core.String accountId, core.String containerId, core.String macroId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }
    if (containerId == null) {
      throw new core.ArgumentError("Parameter containerId is required.");
    }
    if (macroId == null) {
      throw new core.ArgumentError("Parameter macroId is required.");
    }

    _downloadOptions = null;

    _url = 'accounts/' + common_internal.Escaper.ecapeVariable('$accountId') + '/containers/' + common_internal.Escaper.ecapeVariable('$containerId') + '/macros/' + common_internal.Escaper.ecapeVariable('$macroId');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /**
   * Gets a GTM Macro.
   *
   * Request parameters:
   *
   * [accountId] - The GTM Account ID.
   *
   * [containerId] - The GTM Container ID.
   *
   * [macroId] - The GTM Macro ID.
   *
   * Completes with a [Macro].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Macro> get(core.String accountId, core.String containerId, core.String macroId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }
    if (containerId == null) {
      throw new core.ArgumentError("Parameter containerId is required.");
    }
    if (macroId == null) {
      throw new core.ArgumentError("Parameter macroId is required.");
    }


    _url = 'accounts/' + common_internal.Escaper.ecapeVariable('$accountId') + '/containers/' + common_internal.Escaper.ecapeVariable('$containerId') + '/macros/' + common_internal.Escaper.ecapeVariable('$macroId');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Macro.fromJson(data));
  }

  /**
   * Lists all GTM Macros of a Container.
   *
   * Request parameters:
   *
   * [accountId] - The GTM Account ID.
   *
   * [containerId] - The GTM Container ID.
   *
   * Completes with a [ListMacrosResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<ListMacrosResponse> list(core.String accountId, core.String containerId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }
    if (containerId == null) {
      throw new core.ArgumentError("Parameter containerId is required.");
    }


    _url = 'accounts/' + common_internal.Escaper.ecapeVariable('$accountId') + '/containers/' + common_internal.Escaper.ecapeVariable('$containerId') + '/macros';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ListMacrosResponse.fromJson(data));
  }

  /**
   * Updates a GTM Macro.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [accountId] - The GTM Account ID.
   *
   * [containerId] - The GTM Container ID.
   *
   * [macroId] - The GTM Macro ID.
   *
   * [fingerprint] - When provided, this fingerprint must match the fingerprint
   * of the macro in storage.
   *
   * Completes with a [Macro].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Macro> update(Macro request, core.String accountId, core.String containerId, core.String macroId, {core.String fingerprint}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }
    if (containerId == null) {
      throw new core.ArgumentError("Parameter containerId is required.");
    }
    if (macroId == null) {
      throw new core.ArgumentError("Parameter macroId is required.");
    }
    if (fingerprint != null) {
      _queryParams["fingerprint"] = [fingerprint];
    }


    _url = 'accounts/' + common_internal.Escaper.ecapeVariable('$accountId') + '/containers/' + common_internal.Escaper.ecapeVariable('$containerId') + '/macros/' + common_internal.Escaper.ecapeVariable('$macroId');

    var _response = _requester.request(_url,
                                       "PUT",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Macro.fromJson(data));
  }

}


/** Not documented yet. */
class AccountsContainersRulesResourceApi {
  final common_internal.ApiRequester _requester;

  AccountsContainersRulesResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Creates a GTM Rule.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [accountId] - The GTM Account ID.
   *
   * [containerId] - The GTM Container ID.
   *
   * Completes with a [Rule].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Rule> create(Rule request, core.String accountId, core.String containerId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }
    if (containerId == null) {
      throw new core.ArgumentError("Parameter containerId is required.");
    }


    _url = 'accounts/' + common_internal.Escaper.ecapeVariable('$accountId') + '/containers/' + common_internal.Escaper.ecapeVariable('$containerId') + '/rules';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Rule.fromJson(data));
  }

  /**
   * Deletes a GTM Rule.
   *
   * Request parameters:
   *
   * [accountId] - The GTM Account ID.
   *
   * [containerId] - The GTM Container ID.
   *
   * [ruleId] - The GTM Rule ID.
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future delete(core.String accountId, core.String containerId, core.String ruleId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }
    if (containerId == null) {
      throw new core.ArgumentError("Parameter containerId is required.");
    }
    if (ruleId == null) {
      throw new core.ArgumentError("Parameter ruleId is required.");
    }

    _downloadOptions = null;

    _url = 'accounts/' + common_internal.Escaper.ecapeVariable('$accountId') + '/containers/' + common_internal.Escaper.ecapeVariable('$containerId') + '/rules/' + common_internal.Escaper.ecapeVariable('$ruleId');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /**
   * Gets a GTM Rule.
   *
   * Request parameters:
   *
   * [accountId] - The GTM Account ID.
   *
   * [containerId] - The GTM Container ID.
   *
   * [ruleId] - The GTM Rule ID.
   *
   * Completes with a [Rule].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Rule> get(core.String accountId, core.String containerId, core.String ruleId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }
    if (containerId == null) {
      throw new core.ArgumentError("Parameter containerId is required.");
    }
    if (ruleId == null) {
      throw new core.ArgumentError("Parameter ruleId is required.");
    }


    _url = 'accounts/' + common_internal.Escaper.ecapeVariable('$accountId') + '/containers/' + common_internal.Escaper.ecapeVariable('$containerId') + '/rules/' + common_internal.Escaper.ecapeVariable('$ruleId');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Rule.fromJson(data));
  }

  /**
   * Lists all GTM Rules of a Container.
   *
   * Request parameters:
   *
   * [accountId] - The GTM Account ID.
   *
   * [containerId] - The GTM Container ID.
   *
   * Completes with a [ListRulesResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<ListRulesResponse> list(core.String accountId, core.String containerId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }
    if (containerId == null) {
      throw new core.ArgumentError("Parameter containerId is required.");
    }


    _url = 'accounts/' + common_internal.Escaper.ecapeVariable('$accountId') + '/containers/' + common_internal.Escaper.ecapeVariable('$containerId') + '/rules';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ListRulesResponse.fromJson(data));
  }

  /**
   * Updates a GTM Rule.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [accountId] - The GTM Account ID.
   *
   * [containerId] - The GTM Container ID.
   *
   * [ruleId] - The GTM Rule ID.
   *
   * [fingerprint] - When provided, this fingerprint must match the fingerprint
   * of the rule in storage.
   *
   * Completes with a [Rule].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Rule> update(Rule request, core.String accountId, core.String containerId, core.String ruleId, {core.String fingerprint}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }
    if (containerId == null) {
      throw new core.ArgumentError("Parameter containerId is required.");
    }
    if (ruleId == null) {
      throw new core.ArgumentError("Parameter ruleId is required.");
    }
    if (fingerprint != null) {
      _queryParams["fingerprint"] = [fingerprint];
    }


    _url = 'accounts/' + common_internal.Escaper.ecapeVariable('$accountId') + '/containers/' + common_internal.Escaper.ecapeVariable('$containerId') + '/rules/' + common_internal.Escaper.ecapeVariable('$ruleId');

    var _response = _requester.request(_url,
                                       "PUT",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Rule.fromJson(data));
  }

}


/** Not documented yet. */
class AccountsContainersTagsResourceApi {
  final common_internal.ApiRequester _requester;

  AccountsContainersTagsResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Creates a GTM Tag.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [accountId] - The GTM Account ID.
   *
   * [containerId] - The GTM Container ID.
   *
   * Completes with a [Tag].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Tag> create(Tag request, core.String accountId, core.String containerId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }
    if (containerId == null) {
      throw new core.ArgumentError("Parameter containerId is required.");
    }


    _url = 'accounts/' + common_internal.Escaper.ecapeVariable('$accountId') + '/containers/' + common_internal.Escaper.ecapeVariable('$containerId') + '/tags';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Tag.fromJson(data));
  }

  /**
   * Deletes a GTM Tag.
   *
   * Request parameters:
   *
   * [accountId] - The GTM Account ID.
   *
   * [containerId] - The GTM Container ID.
   *
   * [tagId] - The GTM Tag ID.
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future delete(core.String accountId, core.String containerId, core.String tagId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }
    if (containerId == null) {
      throw new core.ArgumentError("Parameter containerId is required.");
    }
    if (tagId == null) {
      throw new core.ArgumentError("Parameter tagId is required.");
    }

    _downloadOptions = null;

    _url = 'accounts/' + common_internal.Escaper.ecapeVariable('$accountId') + '/containers/' + common_internal.Escaper.ecapeVariable('$containerId') + '/tags/' + common_internal.Escaper.ecapeVariable('$tagId');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /**
   * Gets a GTM Tag.
   *
   * Request parameters:
   *
   * [accountId] - The GTM Account ID.
   *
   * [containerId] - The GTM Container ID.
   *
   * [tagId] - The GTM Tag ID.
   *
   * Completes with a [Tag].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Tag> get(core.String accountId, core.String containerId, core.String tagId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }
    if (containerId == null) {
      throw new core.ArgumentError("Parameter containerId is required.");
    }
    if (tagId == null) {
      throw new core.ArgumentError("Parameter tagId is required.");
    }


    _url = 'accounts/' + common_internal.Escaper.ecapeVariable('$accountId') + '/containers/' + common_internal.Escaper.ecapeVariable('$containerId') + '/tags/' + common_internal.Escaper.ecapeVariable('$tagId');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Tag.fromJson(data));
  }

  /**
   * Lists all GTM Tags of a Container.
   *
   * Request parameters:
   *
   * [accountId] - The GTM Account ID.
   *
   * [containerId] - The GTM Container ID.
   *
   * Completes with a [ListTagsResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<ListTagsResponse> list(core.String accountId, core.String containerId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }
    if (containerId == null) {
      throw new core.ArgumentError("Parameter containerId is required.");
    }


    _url = 'accounts/' + common_internal.Escaper.ecapeVariable('$accountId') + '/containers/' + common_internal.Escaper.ecapeVariable('$containerId') + '/tags';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ListTagsResponse.fromJson(data));
  }

  /**
   * Updates a GTM Tag.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [accountId] - The GTM Account ID.
   *
   * [containerId] - The GTM Container ID.
   *
   * [tagId] - The GTM Tag ID.
   *
   * [fingerprint] - When provided, this fingerprint must match the fingerprint
   * of the tag in storage.
   *
   * Completes with a [Tag].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Tag> update(Tag request, core.String accountId, core.String containerId, core.String tagId, {core.String fingerprint}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }
    if (containerId == null) {
      throw new core.ArgumentError("Parameter containerId is required.");
    }
    if (tagId == null) {
      throw new core.ArgumentError("Parameter tagId is required.");
    }
    if (fingerprint != null) {
      _queryParams["fingerprint"] = [fingerprint];
    }


    _url = 'accounts/' + common_internal.Escaper.ecapeVariable('$accountId') + '/containers/' + common_internal.Escaper.ecapeVariable('$containerId') + '/tags/' + common_internal.Escaper.ecapeVariable('$tagId');

    var _response = _requester.request(_url,
                                       "PUT",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Tag.fromJson(data));
  }

}


/** Not documented yet. */
class AccountsContainersTriggersResourceApi {
  final common_internal.ApiRequester _requester;

  AccountsContainersTriggersResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Creates a GTM Trigger.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [accountId] - The GTM Account ID.
   *
   * [containerId] - The GTM Container ID.
   *
   * Completes with a [Trigger].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Trigger> create(Trigger request, core.String accountId, core.String containerId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }
    if (containerId == null) {
      throw new core.ArgumentError("Parameter containerId is required.");
    }


    _url = 'accounts/' + common_internal.Escaper.ecapeVariable('$accountId') + '/containers/' + common_internal.Escaper.ecapeVariable('$containerId') + '/triggers';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Trigger.fromJson(data));
  }

  /**
   * Deletes a GTM Trigger.
   *
   * Request parameters:
   *
   * [accountId] - The GTM Account ID.
   *
   * [containerId] - The GTM Container ID.
   *
   * [triggerId] - The GTM Trigger ID.
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future delete(core.String accountId, core.String containerId, core.String triggerId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }
    if (containerId == null) {
      throw new core.ArgumentError("Parameter containerId is required.");
    }
    if (triggerId == null) {
      throw new core.ArgumentError("Parameter triggerId is required.");
    }

    _downloadOptions = null;

    _url = 'accounts/' + common_internal.Escaper.ecapeVariable('$accountId') + '/containers/' + common_internal.Escaper.ecapeVariable('$containerId') + '/triggers/' + common_internal.Escaper.ecapeVariable('$triggerId');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /**
   * Gets a GTM Trigger.
   *
   * Request parameters:
   *
   * [accountId] - The GTM Account ID.
   *
   * [containerId] - The GTM Container ID.
   *
   * [triggerId] - The GTM Trigger ID.
   *
   * Completes with a [Trigger].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Trigger> get(core.String accountId, core.String containerId, core.String triggerId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }
    if (containerId == null) {
      throw new core.ArgumentError("Parameter containerId is required.");
    }
    if (triggerId == null) {
      throw new core.ArgumentError("Parameter triggerId is required.");
    }


    _url = 'accounts/' + common_internal.Escaper.ecapeVariable('$accountId') + '/containers/' + common_internal.Escaper.ecapeVariable('$containerId') + '/triggers/' + common_internal.Escaper.ecapeVariable('$triggerId');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Trigger.fromJson(data));
  }

  /**
   * Lists all GTM Triggers of a Container.
   *
   * Request parameters:
   *
   * [accountId] - The GTM Account ID.
   *
   * [containerId] - The GTM Container ID.
   *
   * Completes with a [ListTriggersResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<ListTriggersResponse> list(core.String accountId, core.String containerId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }
    if (containerId == null) {
      throw new core.ArgumentError("Parameter containerId is required.");
    }


    _url = 'accounts/' + common_internal.Escaper.ecapeVariable('$accountId') + '/containers/' + common_internal.Escaper.ecapeVariable('$containerId') + '/triggers';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ListTriggersResponse.fromJson(data));
  }

  /**
   * Updates a GTM Trigger.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [accountId] - The GTM Account ID.
   *
   * [containerId] - The GTM Container ID.
   *
   * [triggerId] - The GTM Trigger ID.
   *
   * [fingerprint] - When provided, this fingerprint must match the fingerprint
   * of the trigger in storage.
   *
   * Completes with a [Trigger].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Trigger> update(Trigger request, core.String accountId, core.String containerId, core.String triggerId, {core.String fingerprint}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }
    if (containerId == null) {
      throw new core.ArgumentError("Parameter containerId is required.");
    }
    if (triggerId == null) {
      throw new core.ArgumentError("Parameter triggerId is required.");
    }
    if (fingerprint != null) {
      _queryParams["fingerprint"] = [fingerprint];
    }


    _url = 'accounts/' + common_internal.Escaper.ecapeVariable('$accountId') + '/containers/' + common_internal.Escaper.ecapeVariable('$containerId') + '/triggers/' + common_internal.Escaper.ecapeVariable('$triggerId');

    var _response = _requester.request(_url,
                                       "PUT",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Trigger.fromJson(data));
  }

}


/** Not documented yet. */
class AccountsContainersVariablesResourceApi {
  final common_internal.ApiRequester _requester;

  AccountsContainersVariablesResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Creates a GTM Variable.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [accountId] - The GTM Account ID.
   *
   * [containerId] - The GTM Container ID.
   *
   * Completes with a [Variable].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Variable> create(Variable request, core.String accountId, core.String containerId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }
    if (containerId == null) {
      throw new core.ArgumentError("Parameter containerId is required.");
    }


    _url = 'accounts/' + common_internal.Escaper.ecapeVariable('$accountId') + '/containers/' + common_internal.Escaper.ecapeVariable('$containerId') + '/variables';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Variable.fromJson(data));
  }

  /**
   * Deletes a GTM Variable.
   *
   * Request parameters:
   *
   * [accountId] - The GTM Account ID.
   *
   * [containerId] - The GTM Container ID.
   *
   * [variableId] - The GTM Variable ID.
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future delete(core.String accountId, core.String containerId, core.String variableId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }
    if (containerId == null) {
      throw new core.ArgumentError("Parameter containerId is required.");
    }
    if (variableId == null) {
      throw new core.ArgumentError("Parameter variableId is required.");
    }

    _downloadOptions = null;

    _url = 'accounts/' + common_internal.Escaper.ecapeVariable('$accountId') + '/containers/' + common_internal.Escaper.ecapeVariable('$containerId') + '/variables/' + common_internal.Escaper.ecapeVariable('$variableId');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /**
   * Gets a GTM Variable.
   *
   * Request parameters:
   *
   * [accountId] - The GTM Account ID.
   *
   * [containerId] - The GTM Container ID.
   *
   * [variableId] - The GTM Variable ID.
   *
   * Completes with a [Variable].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Variable> get(core.String accountId, core.String containerId, core.String variableId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }
    if (containerId == null) {
      throw new core.ArgumentError("Parameter containerId is required.");
    }
    if (variableId == null) {
      throw new core.ArgumentError("Parameter variableId is required.");
    }


    _url = 'accounts/' + common_internal.Escaper.ecapeVariable('$accountId') + '/containers/' + common_internal.Escaper.ecapeVariable('$containerId') + '/variables/' + common_internal.Escaper.ecapeVariable('$variableId');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Variable.fromJson(data));
  }

  /**
   * Lists all GTM Variables of a Container.
   *
   * Request parameters:
   *
   * [accountId] - The GTM Account ID.
   *
   * [containerId] - The GTM Container ID.
   *
   * Completes with a [ListVariablesResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<ListVariablesResponse> list(core.String accountId, core.String containerId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }
    if (containerId == null) {
      throw new core.ArgumentError("Parameter containerId is required.");
    }


    _url = 'accounts/' + common_internal.Escaper.ecapeVariable('$accountId') + '/containers/' + common_internal.Escaper.ecapeVariable('$containerId') + '/variables';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ListVariablesResponse.fromJson(data));
  }

  /**
   * Updates a GTM Variable.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [accountId] - The GTM Account ID.
   *
   * [containerId] - The GTM Container ID.
   *
   * [variableId] - The GTM Variable ID.
   *
   * [fingerprint] - When provided, this fingerprint must match the fingerprint
   * of the variable in storage.
   *
   * Completes with a [Variable].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Variable> update(Variable request, core.String accountId, core.String containerId, core.String variableId, {core.String fingerprint}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }
    if (containerId == null) {
      throw new core.ArgumentError("Parameter containerId is required.");
    }
    if (variableId == null) {
      throw new core.ArgumentError("Parameter variableId is required.");
    }
    if (fingerprint != null) {
      _queryParams["fingerprint"] = [fingerprint];
    }


    _url = 'accounts/' + common_internal.Escaper.ecapeVariable('$accountId') + '/containers/' + common_internal.Escaper.ecapeVariable('$containerId') + '/variables/' + common_internal.Escaper.ecapeVariable('$variableId');

    var _response = _requester.request(_url,
                                       "PUT",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Variable.fromJson(data));
  }

}


/** Not documented yet. */
class AccountsContainersVersionsResourceApi {
  final common_internal.ApiRequester _requester;

  AccountsContainersVersionsResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Creates a Container Version.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [accountId] - The GTM Account ID.
   *
   * [containerId] - The GTM Container ID.
   *
   * Completes with a [CreateContainerVersionResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<CreateContainerVersionResponse> create(CreateContainerVersionRequestVersionOptions request, core.String accountId, core.String containerId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }
    if (containerId == null) {
      throw new core.ArgumentError("Parameter containerId is required.");
    }


    _url = 'accounts/' + common_internal.Escaper.ecapeVariable('$accountId') + '/containers/' + common_internal.Escaper.ecapeVariable('$containerId') + '/versions';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new CreateContainerVersionResponse.fromJson(data));
  }

  /**
   * Deletes a Container Version.
   *
   * Request parameters:
   *
   * [accountId] - The GTM Account ID.
   *
   * [containerId] - The GTM Container ID.
   *
   * [containerVersionId] - The GTM Container Version ID.
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future delete(core.String accountId, core.String containerId, core.String containerVersionId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }
    if (containerId == null) {
      throw new core.ArgumentError("Parameter containerId is required.");
    }
    if (containerVersionId == null) {
      throw new core.ArgumentError("Parameter containerVersionId is required.");
    }

    _downloadOptions = null;

    _url = 'accounts/' + common_internal.Escaper.ecapeVariable('$accountId') + '/containers/' + common_internal.Escaper.ecapeVariable('$containerId') + '/versions/' + common_internal.Escaper.ecapeVariable('$containerVersionId');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /**
   * Gets a Container Version.
   *
   * Request parameters:
   *
   * [accountId] - The GTM Account ID.
   *
   * [containerId] - The GTM Container ID.
   *
   * [containerVersionId] - The GTM Container Version ID. Specify published to
   * retrieve the currently published version.
   *
   * Completes with a [ContainerVersion].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<ContainerVersion> get(core.String accountId, core.String containerId, core.String containerVersionId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }
    if (containerId == null) {
      throw new core.ArgumentError("Parameter containerId is required.");
    }
    if (containerVersionId == null) {
      throw new core.ArgumentError("Parameter containerVersionId is required.");
    }


    _url = 'accounts/' + common_internal.Escaper.ecapeVariable('$accountId') + '/containers/' + common_internal.Escaper.ecapeVariable('$containerId') + '/versions/' + common_internal.Escaper.ecapeVariable('$containerVersionId');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ContainerVersion.fromJson(data));
  }

  /**
   * Lists all Container Versions of a GTM Container.
   *
   * Request parameters:
   *
   * [accountId] - The GTM Account ID.
   *
   * [containerId] - The GTM Container ID.
   *
   * [headers] - Retrieve headers only when true.
   *
   * Completes with a [ListContainerVersionsResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<ListContainerVersionsResponse> list(core.String accountId, core.String containerId, {core.bool headers}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }
    if (containerId == null) {
      throw new core.ArgumentError("Parameter containerId is required.");
    }
    if (headers != null) {
      _queryParams["headers"] = ["${headers}"];
    }


    _url = 'accounts/' + common_internal.Escaper.ecapeVariable('$accountId') + '/containers/' + common_internal.Escaper.ecapeVariable('$containerId') + '/versions';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ListContainerVersionsResponse.fromJson(data));
  }

  /**
   * Publishes a Container Version.
   *
   * Request parameters:
   *
   * [accountId] - The GTM Account ID.
   *
   * [containerId] - The GTM Container ID.
   *
   * [containerVersionId] - The GTM Container Version ID.
   *
   * [fingerprint] - When provided, this fingerprint must match the fingerprint
   * of the container version in storage.
   *
   * Completes with a [PublishContainerVersionResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<PublishContainerVersionResponse> publish(core.String accountId, core.String containerId, core.String containerVersionId, {core.String fingerprint}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }
    if (containerId == null) {
      throw new core.ArgumentError("Parameter containerId is required.");
    }
    if (containerVersionId == null) {
      throw new core.ArgumentError("Parameter containerVersionId is required.");
    }
    if (fingerprint != null) {
      _queryParams["fingerprint"] = [fingerprint];
    }


    _url = 'accounts/' + common_internal.Escaper.ecapeVariable('$accountId') + '/containers/' + common_internal.Escaper.ecapeVariable('$containerId') + '/versions/' + common_internal.Escaper.ecapeVariable('$containerVersionId') + '/publish';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new PublishContainerVersionResponse.fromJson(data));
  }

  /**
   * Restores a Container Version. This will overwrite the container's current
   * configuration (including its macros, rules and tags). The operation will
   * not have any effect on the version that is being served (i.e. the published
   * version).
   *
   * Request parameters:
   *
   * [accountId] - The GTM Account ID.
   *
   * [containerId] - The GTM Container ID.
   *
   * [containerVersionId] - The GTM Container Version ID.
   *
   * Completes with a [ContainerVersion].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<ContainerVersion> restore(core.String accountId, core.String containerId, core.String containerVersionId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }
    if (containerId == null) {
      throw new core.ArgumentError("Parameter containerId is required.");
    }
    if (containerVersionId == null) {
      throw new core.ArgumentError("Parameter containerVersionId is required.");
    }


    _url = 'accounts/' + common_internal.Escaper.ecapeVariable('$accountId') + '/containers/' + common_internal.Escaper.ecapeVariable('$containerId') + '/versions/' + common_internal.Escaper.ecapeVariable('$containerVersionId') + '/restore';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ContainerVersion.fromJson(data));
  }

  /**
   * Undeletes a Container Version.
   *
   * Request parameters:
   *
   * [accountId] - The GTM Account ID.
   *
   * [containerId] - The GTM Container ID.
   *
   * [containerVersionId] - The GTM Container Version ID.
   *
   * Completes with a [ContainerVersion].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<ContainerVersion> undelete(core.String accountId, core.String containerId, core.String containerVersionId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }
    if (containerId == null) {
      throw new core.ArgumentError("Parameter containerId is required.");
    }
    if (containerVersionId == null) {
      throw new core.ArgumentError("Parameter containerVersionId is required.");
    }


    _url = 'accounts/' + common_internal.Escaper.ecapeVariable('$accountId') + '/containers/' + common_internal.Escaper.ecapeVariable('$containerId') + '/versions/' + common_internal.Escaper.ecapeVariable('$containerVersionId') + '/undelete';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ContainerVersion.fromJson(data));
  }

  /**
   * Updates a Container Version.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [accountId] - The GTM Account ID.
   *
   * [containerId] - The GTM Container ID.
   *
   * [containerVersionId] - The GTM Container Version ID.
   *
   * [fingerprint] - When provided, this fingerprint must match the fingerprint
   * of the container version in storage.
   *
   * Completes with a [ContainerVersion].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<ContainerVersion> update(ContainerVersion request, core.String accountId, core.String containerId, core.String containerVersionId, {core.String fingerprint}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }
    if (containerId == null) {
      throw new core.ArgumentError("Parameter containerId is required.");
    }
    if (containerVersionId == null) {
      throw new core.ArgumentError("Parameter containerVersionId is required.");
    }
    if (fingerprint != null) {
      _queryParams["fingerprint"] = [fingerprint];
    }


    _url = 'accounts/' + common_internal.Escaper.ecapeVariable('$accountId') + '/containers/' + common_internal.Escaper.ecapeVariable('$containerId') + '/versions/' + common_internal.Escaper.ecapeVariable('$containerVersionId');

    var _response = _requester.request(_url,
                                       "PUT",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ContainerVersion.fromJson(data));
  }

}


/** Not documented yet. */
class AccountsPermissionsResourceApi {
  final common_internal.ApiRequester _requester;

  AccountsPermissionsResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Creates a user's Account & Container Permissions.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [accountId] - The GTM Account ID.
   *
   * Completes with a [UserAccess].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<UserAccess> create(UserAccess request, core.String accountId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }


    _url = 'accounts/' + common_internal.Escaper.ecapeVariable('$accountId') + '/permissions';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new UserAccess.fromJson(data));
  }

  /**
   * Removes a user from the account, revoking access to it and all of its
   * containers.
   *
   * Request parameters:
   *
   * [accountId] - The GTM Account ID.
   *
   * [permissionId] - The GTM User ID.
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future delete(core.String accountId, core.String permissionId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }
    if (permissionId == null) {
      throw new core.ArgumentError("Parameter permissionId is required.");
    }

    _downloadOptions = null;

    _url = 'accounts/' + common_internal.Escaper.ecapeVariable('$accountId') + '/permissions/' + common_internal.Escaper.ecapeVariable('$permissionId');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /**
   * Gets a user's Account & Container Permissions.
   *
   * Request parameters:
   *
   * [accountId] - The GTM Account ID.
   *
   * [permissionId] - The GTM User ID.
   *
   * Completes with a [UserAccess].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<UserAccess> get(core.String accountId, core.String permissionId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }
    if (permissionId == null) {
      throw new core.ArgumentError("Parameter permissionId is required.");
    }


    _url = 'accounts/' + common_internal.Escaper.ecapeVariable('$accountId') + '/permissions/' + common_internal.Escaper.ecapeVariable('$permissionId');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new UserAccess.fromJson(data));
  }

  /**
   * List all users that have access to the account along with Account and
   * Container Permissions granted to each of them.
   *
   * Request parameters:
   *
   * [accountId] - The GTM Account ID. @required
   * tagmanager.accounts.permissions.list
   *
   * Completes with a [ListAccountUsersResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<ListAccountUsersResponse> list(core.String accountId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }


    _url = 'accounts/' + common_internal.Escaper.ecapeVariable('$accountId') + '/permissions';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ListAccountUsersResponse.fromJson(data));
  }

  /**
   * Updates a user's Account & Container Permissions.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [accountId] - The GTM Account ID.
   *
   * [permissionId] - The GTM User ID.
   *
   * Completes with a [UserAccess].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<UserAccess> update(UserAccess request, core.String accountId, core.String permissionId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (accountId == null) {
      throw new core.ArgumentError("Parameter accountId is required.");
    }
    if (permissionId == null) {
      throw new core.ArgumentError("Parameter permissionId is required.");
    }


    _url = 'accounts/' + common_internal.Escaper.ecapeVariable('$accountId') + '/permissions/' + common_internal.Escaper.ecapeVariable('$permissionId');

    var _response = _requester.request(_url,
                                       "PUT",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new UserAccess.fromJson(data));
  }

}



/** Represents a Google Tag Manager Account. */
class Account {
  /** The Account ID uniquely identifies the GTM Account. */
  core.String accountId;

  /**
   * The fingerprint of the GTM Account as computed at storage time. This value
   * is recomputed whenever the account is modified.
   */
  core.String fingerprint;

  /** Account display name. */
  core.String name;

  /** Whether the account shares data anonymously with Google and others. */
  core.bool shareData;


  Account();

  Account.fromJson(core.Map _json) {
    if (_json.containsKey("accountId")) {
      accountId = _json["accountId"];
    }
    if (_json.containsKey("fingerprint")) {
      fingerprint = _json["fingerprint"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("shareData")) {
      shareData = _json["shareData"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (accountId != null) {
      _json["accountId"] = accountId;
    }
    if (fingerprint != null) {
      _json["fingerprint"] = fingerprint;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (shareData != null) {
      _json["shareData"] = shareData;
    }
    return _json;
  }
}


/** Defines the Google Tag Manager Account access permissions. */
class AccountAccess {
  /**
   * List of Account permissions. Valid account permissions are read and manage.
   */
  core.List<core.String> permission;


  AccountAccess();

  AccountAccess.fromJson(core.Map _json) {
    if (_json.containsKey("permission")) {
      permission = _json["permission"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (permission != null) {
      _json["permission"] = permission;
    }
    return _json;
  }
}


/** Represents a predicate. */
class Condition {
  /**
   * A list of named parameters (key/value), depending on the condition's type.
   * Notes:
   * - For binary operators, include parameters named arg0 and arg1 for
   * specifying the left and right operands, respectively.
   * - At this time, the left operand (arg0) must be a reference to a macro.
   * - For case-insensitive Regex matching, include a boolean parameter named
   * ignore_case that is set to true. If not specified or set to any other
   * value, the matching will be case sensitive.
   * - To negate an operator, include a boolean parameter named negate boolean
   * parameter that is set to true.
   */
  core.List<Parameter> parameter;

  /**
   * The type of operator for this condition.
   * Possible string values are:
   * - "contains"
   * - "endsWith"
   * - "equals"
   * - "greater"
   * - "greaterOrEquals"
   * - "less"
   * - "lessOrEquals"
   * - "matchRegex"
   * - "startsWith"
   */
  core.String type;


  Condition();

  Condition.fromJson(core.Map _json) {
    if (_json.containsKey("parameter")) {
      parameter = _json["parameter"].map((value) => new Parameter.fromJson(value)).toList();
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (parameter != null) {
      _json["parameter"] = parameter.map((value) => (value).toJson()).toList();
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}


/** Represents a Google Tag Manager Container. */
class Container {
  /** GTM Account ID. */
  core.String accountId;

  /** The Container ID uniquely identifies the GTM Container. */
  core.String containerId;

  /** Optional list of domain names associated with the Container. */
  core.List<core.String> domainName;

  /** List of enabled built-in variables. */
  core.List<core.String> enabledBuiltInVariable;

  /**
   * The fingerprint of the GTM Container as computed at storage time. This
   * value is recomputed whenever the account is modified.
   */
  core.String fingerprint;

  /** Container display name. */
  core.String name;

  /** Container Notes. */
  core.String notes;

  /** Container Public ID. */
  core.String publicId;

  /** Container Country ID. */
  core.String timeZoneCountryId;

  /** Container Time Zone ID. */
  core.String timeZoneId;

  /**
   * List of Usage Contexts for the Container. Valid values include: web,
   * android, ios.
   */
  core.List<core.String> usageContext;


  Container();

  Container.fromJson(core.Map _json) {
    if (_json.containsKey("accountId")) {
      accountId = _json["accountId"];
    }
    if (_json.containsKey("containerId")) {
      containerId = _json["containerId"];
    }
    if (_json.containsKey("domainName")) {
      domainName = _json["domainName"];
    }
    if (_json.containsKey("enabledBuiltInVariable")) {
      enabledBuiltInVariable = _json["enabledBuiltInVariable"];
    }
    if (_json.containsKey("fingerprint")) {
      fingerprint = _json["fingerprint"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("notes")) {
      notes = _json["notes"];
    }
    if (_json.containsKey("publicId")) {
      publicId = _json["publicId"];
    }
    if (_json.containsKey("timeZoneCountryId")) {
      timeZoneCountryId = _json["timeZoneCountryId"];
    }
    if (_json.containsKey("timeZoneId")) {
      timeZoneId = _json["timeZoneId"];
    }
    if (_json.containsKey("usageContext")) {
      usageContext = _json["usageContext"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (accountId != null) {
      _json["accountId"] = accountId;
    }
    if (containerId != null) {
      _json["containerId"] = containerId;
    }
    if (domainName != null) {
      _json["domainName"] = domainName;
    }
    if (enabledBuiltInVariable != null) {
      _json["enabledBuiltInVariable"] = enabledBuiltInVariable;
    }
    if (fingerprint != null) {
      _json["fingerprint"] = fingerprint;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (notes != null) {
      _json["notes"] = notes;
    }
    if (publicId != null) {
      _json["publicId"] = publicId;
    }
    if (timeZoneCountryId != null) {
      _json["timeZoneCountryId"] = timeZoneCountryId;
    }
    if (timeZoneId != null) {
      _json["timeZoneId"] = timeZoneId;
    }
    if (usageContext != null) {
      _json["usageContext"] = usageContext;
    }
    return _json;
  }
}


/** Defines the Google Tag Manager Container access permissions. */
class ContainerAccess {
  /** GTM Container ID. */
  core.String containerId;

  /**
   * List of Container permissions. Valid container permissions are: read, edit,
   * delete, publish.
   */
  core.List<core.String> permission;


  ContainerAccess();

  ContainerAccess.fromJson(core.Map _json) {
    if (_json.containsKey("containerId")) {
      containerId = _json["containerId"];
    }
    if (_json.containsKey("permission")) {
      permission = _json["permission"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (containerId != null) {
      _json["containerId"] = containerId;
    }
    if (permission != null) {
      _json["permission"] = permission;
    }
    return _json;
  }
}


/** Represents a Google Tag Manager Container Version. */
class ContainerVersion {
  /** GTM Account ID. */
  core.String accountId;

  /** The container that this version was taken from. */
  Container container;

  /** GTM Container ID. */
  core.String containerId;

  /**
   * The Container Version ID uniquely identifies the GTM Container Version.
   */
  core.String containerVersionId;

  /** A value of true indicates this container version has been deleted. */
  core.bool deleted;

  /**
   * The fingerprint of the GTM Container Version as computed at storage time.
   * This value is recomputed whenever the container version is modified.
   */
  core.String fingerprint;

  /** The macros in the container that this version was taken from. */
  core.List<Macro> macro;

  /** Container version display name. */
  core.String name;

  /** User notes on how to apply this container version in the container. */
  core.String notes;

  /** The rules in the container that this version was taken from. */
  core.List<Rule> rule;

  /** The tags in the container that this version was taken from. */
  core.List<Tag> tag;

  /** The triggers in the container that this version was taken from. */
  core.List<Trigger> trigger;

  /** The variables in the container that this version was taken from. */
  core.List<Variable> variable;


  ContainerVersion();

  ContainerVersion.fromJson(core.Map _json) {
    if (_json.containsKey("accountId")) {
      accountId = _json["accountId"];
    }
    if (_json.containsKey("container")) {
      container = new Container.fromJson(_json["container"]);
    }
    if (_json.containsKey("containerId")) {
      containerId = _json["containerId"];
    }
    if (_json.containsKey("containerVersionId")) {
      containerVersionId = _json["containerVersionId"];
    }
    if (_json.containsKey("deleted")) {
      deleted = _json["deleted"];
    }
    if (_json.containsKey("fingerprint")) {
      fingerprint = _json["fingerprint"];
    }
    if (_json.containsKey("macro")) {
      macro = _json["macro"].map((value) => new Macro.fromJson(value)).toList();
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("notes")) {
      notes = _json["notes"];
    }
    if (_json.containsKey("rule")) {
      rule = _json["rule"].map((value) => new Rule.fromJson(value)).toList();
    }
    if (_json.containsKey("tag")) {
      tag = _json["tag"].map((value) => new Tag.fromJson(value)).toList();
    }
    if (_json.containsKey("trigger")) {
      trigger = _json["trigger"].map((value) => new Trigger.fromJson(value)).toList();
    }
    if (_json.containsKey("variable")) {
      variable = _json["variable"].map((value) => new Variable.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (accountId != null) {
      _json["accountId"] = accountId;
    }
    if (container != null) {
      _json["container"] = (container).toJson();
    }
    if (containerId != null) {
      _json["containerId"] = containerId;
    }
    if (containerVersionId != null) {
      _json["containerVersionId"] = containerVersionId;
    }
    if (deleted != null) {
      _json["deleted"] = deleted;
    }
    if (fingerprint != null) {
      _json["fingerprint"] = fingerprint;
    }
    if (macro != null) {
      _json["macro"] = macro.map((value) => (value).toJson()).toList();
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (notes != null) {
      _json["notes"] = notes;
    }
    if (rule != null) {
      _json["rule"] = rule.map((value) => (value).toJson()).toList();
    }
    if (tag != null) {
      _json["tag"] = tag.map((value) => (value).toJson()).toList();
    }
    if (trigger != null) {
      _json["trigger"] = trigger.map((value) => (value).toJson()).toList();
    }
    if (variable != null) {
      _json["variable"] = variable.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}


/** Represents a Google Tag Manager Container Version Header. */
class ContainerVersionHeader {
  /** GTM Account ID. */
  core.String accountId;

  /** GTM Container ID. */
  core.String containerId;

  /**
   * The Container Version ID uniquely identifies the GTM Container Version.
   */
  core.String containerVersionId;

  /** A value of true indicates this container version has been deleted. */
  core.bool deleted;

  /** Container version display name. */
  core.String name;

  /** Number of macros in the container version. */
  core.String numMacros;

  /** Number of rules in the container version. */
  core.String numRules;

  /** Number of tags in the container version. */
  core.String numTags;

  /** Number of triggers in the container version. */
  core.String numTriggers;

  /** Number of variables in the container version. */
  core.String numVariables;


  ContainerVersionHeader();

  ContainerVersionHeader.fromJson(core.Map _json) {
    if (_json.containsKey("accountId")) {
      accountId = _json["accountId"];
    }
    if (_json.containsKey("containerId")) {
      containerId = _json["containerId"];
    }
    if (_json.containsKey("containerVersionId")) {
      containerVersionId = _json["containerVersionId"];
    }
    if (_json.containsKey("deleted")) {
      deleted = _json["deleted"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("numMacros")) {
      numMacros = _json["numMacros"];
    }
    if (_json.containsKey("numRules")) {
      numRules = _json["numRules"];
    }
    if (_json.containsKey("numTags")) {
      numTags = _json["numTags"];
    }
    if (_json.containsKey("numTriggers")) {
      numTriggers = _json["numTriggers"];
    }
    if (_json.containsKey("numVariables")) {
      numVariables = _json["numVariables"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (accountId != null) {
      _json["accountId"] = accountId;
    }
    if (containerId != null) {
      _json["containerId"] = containerId;
    }
    if (containerVersionId != null) {
      _json["containerVersionId"] = containerVersionId;
    }
    if (deleted != null) {
      _json["deleted"] = deleted;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (numMacros != null) {
      _json["numMacros"] = numMacros;
    }
    if (numRules != null) {
      _json["numRules"] = numRules;
    }
    if (numTags != null) {
      _json["numTags"] = numTags;
    }
    if (numTriggers != null) {
      _json["numTriggers"] = numTriggers;
    }
    if (numVariables != null) {
      _json["numVariables"] = numVariables;
    }
    return _json;
  }
}


/** Options for new container versions. */
class CreateContainerVersionRequestVersionOptions {
  /** The name of the container version to be created. */
  core.String name;

  /** The notes of the container version to be created. */
  core.String notes;

  /**
   * The creation of this version may be for quick preview and shouldn't be
   * saved.
   */
  core.bool quickPreview;


  CreateContainerVersionRequestVersionOptions();

  CreateContainerVersionRequestVersionOptions.fromJson(core.Map _json) {
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("notes")) {
      notes = _json["notes"];
    }
    if (_json.containsKey("quickPreview")) {
      quickPreview = _json["quickPreview"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (name != null) {
      _json["name"] = name;
    }
    if (notes != null) {
      _json["notes"] = notes;
    }
    if (quickPreview != null) {
      _json["quickPreview"] = quickPreview;
    }
    return _json;
  }
}


/** Create container versions response. */
class CreateContainerVersionResponse {
  /** Compiler errors or not. */
  core.bool compilerError;

  /** The container version created. */
  ContainerVersion containerVersion;


  CreateContainerVersionResponse();

  CreateContainerVersionResponse.fromJson(core.Map _json) {
    if (_json.containsKey("compilerError")) {
      compilerError = _json["compilerError"];
    }
    if (_json.containsKey("containerVersion")) {
      containerVersion = new ContainerVersion.fromJson(_json["containerVersion"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (compilerError != null) {
      _json["compilerError"] = compilerError;
    }
    if (containerVersion != null) {
      _json["containerVersion"] = (containerVersion).toJson();
    }
    return _json;
  }
}


/** List AccountUsers Response. */
class ListAccountUsersResponse {
  /** All GTM AccountUsers of a GTM Account. */
  core.List<UserAccess> userAccess;


  ListAccountUsersResponse();

  ListAccountUsersResponse.fromJson(core.Map _json) {
    if (_json.containsKey("userAccess")) {
      userAccess = _json["userAccess"].map((value) => new UserAccess.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (userAccess != null) {
      _json["userAccess"] = userAccess.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}


/** List Accounts Response. */
class ListAccountsResponse {
  /** List of GTM Accounts that a user has access to. */
  core.List<Account> accounts;


  ListAccountsResponse();

  ListAccountsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("accounts")) {
      accounts = _json["accounts"].map((value) => new Account.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (accounts != null) {
      _json["accounts"] = accounts.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}


/** List container versions response. */
class ListContainerVersionsResponse {
  /** All versions of a GTM Container. */
  core.List<ContainerVersion> containerVersion;

  /** All container version headers of a GTM Container. */
  core.List<ContainerVersionHeader> containerVersionHeader;


  ListContainerVersionsResponse();

  ListContainerVersionsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("containerVersion")) {
      containerVersion = _json["containerVersion"].map((value) => new ContainerVersion.fromJson(value)).toList();
    }
    if (_json.containsKey("containerVersionHeader")) {
      containerVersionHeader = _json["containerVersionHeader"].map((value) => new ContainerVersionHeader.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (containerVersion != null) {
      _json["containerVersion"] = containerVersion.map((value) => (value).toJson()).toList();
    }
    if (containerVersionHeader != null) {
      _json["containerVersionHeader"] = containerVersionHeader.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}


/** List Containers Response. */
class ListContainersResponse {
  /** All Containers of a GTM Account. */
  core.List<Container> containers;


  ListContainersResponse();

  ListContainersResponse.fromJson(core.Map _json) {
    if (_json.containsKey("containers")) {
      containers = _json["containers"].map((value) => new Container.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (containers != null) {
      _json["containers"] = containers.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}


/** List Macros Response. */
class ListMacrosResponse {
  /** All GTM Macros of a GTM Container. */
  core.List<Macro> macros;


  ListMacrosResponse();

  ListMacrosResponse.fromJson(core.Map _json) {
    if (_json.containsKey("macros")) {
      macros = _json["macros"].map((value) => new Macro.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (macros != null) {
      _json["macros"] = macros.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}


/** List Rules Response. */
class ListRulesResponse {
  /** All GTM Rules of a GTM Container. */
  core.List<Rule> rules;


  ListRulesResponse();

  ListRulesResponse.fromJson(core.Map _json) {
    if (_json.containsKey("rules")) {
      rules = _json["rules"].map((value) => new Rule.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (rules != null) {
      _json["rules"] = rules.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}


/** List Tags Response. */
class ListTagsResponse {
  /** All GTM Tags of a GTM Container. */
  core.List<Tag> tags;


  ListTagsResponse();

  ListTagsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("tags")) {
      tags = _json["tags"].map((value) => new Tag.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (tags != null) {
      _json["tags"] = tags.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}


/** List triggers response. */
class ListTriggersResponse {
  /** All GTM Triggers of a GTM Container. */
  core.List<Trigger> triggers;


  ListTriggersResponse();

  ListTriggersResponse.fromJson(core.Map _json) {
    if (_json.containsKey("triggers")) {
      triggers = _json["triggers"].map((value) => new Trigger.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (triggers != null) {
      _json["triggers"] = triggers.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}


/** List Variables Response. */
class ListVariablesResponse {
  /** All GTM Variables of a GTM Container. */
  core.List<Variable> variables;


  ListVariablesResponse();

  ListVariablesResponse.fromJson(core.Map _json) {
    if (_json.containsKey("variables")) {
      variables = _json["variables"].map((value) => new Variable.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (variables != null) {
      _json["variables"] = variables.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}


/** Represents a Google Tag Manager Macro. */
class Macro {
  /** GTM Account ID. */
  core.String accountId;

  /** GTM Container ID. */
  core.String containerId;

  /**
   * For mobile containers only: A list of rule IDs for disabling conditional
   * macros; the macro is enabled if one of the enabling rules is true while all
   * the disabling rules are false. Treated as an unordered set.
   */
  core.List<core.String> disablingRuleId;

  /**
   * For mobile containers only: A list of rule IDs for enabling conditional
   * macros; the macro is enabled if one of the enabling rules is true while all
   * the disabling rules are false. Treated as an unordered set.
   */
  core.List<core.String> enablingRuleId;

  /**
   * The fingerprint of the GTM Macro as computed at storage time. This value is
   * recomputed whenever the macro is modified.
   */
  core.String fingerprint;

  /** The Macro ID uniquely identifies the GTM Macro. */
  core.String macroId;

  /** Macro display name. */
  core.String name;

  /** User notes on how to apply this macro in the container. */
  core.String notes;

  /** The macro's parameters. */
  core.List<Parameter> parameter;

  /** The end timestamp in milliseconds to schedule a macro. */
  core.String scheduleEndMs;

  /** The start timestamp in milliseconds to schedule a macro. */
  core.String scheduleStartMs;

  /** GTM Macro Type. */
  core.String type;


  Macro();

  Macro.fromJson(core.Map _json) {
    if (_json.containsKey("accountId")) {
      accountId = _json["accountId"];
    }
    if (_json.containsKey("containerId")) {
      containerId = _json["containerId"];
    }
    if (_json.containsKey("disablingRuleId")) {
      disablingRuleId = _json["disablingRuleId"];
    }
    if (_json.containsKey("enablingRuleId")) {
      enablingRuleId = _json["enablingRuleId"];
    }
    if (_json.containsKey("fingerprint")) {
      fingerprint = _json["fingerprint"];
    }
    if (_json.containsKey("macroId")) {
      macroId = _json["macroId"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("notes")) {
      notes = _json["notes"];
    }
    if (_json.containsKey("parameter")) {
      parameter = _json["parameter"].map((value) => new Parameter.fromJson(value)).toList();
    }
    if (_json.containsKey("scheduleEndMs")) {
      scheduleEndMs = _json["scheduleEndMs"];
    }
    if (_json.containsKey("scheduleStartMs")) {
      scheduleStartMs = _json["scheduleStartMs"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (accountId != null) {
      _json["accountId"] = accountId;
    }
    if (containerId != null) {
      _json["containerId"] = containerId;
    }
    if (disablingRuleId != null) {
      _json["disablingRuleId"] = disablingRuleId;
    }
    if (enablingRuleId != null) {
      _json["enablingRuleId"] = enablingRuleId;
    }
    if (fingerprint != null) {
      _json["fingerprint"] = fingerprint;
    }
    if (macroId != null) {
      _json["macroId"] = macroId;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (notes != null) {
      _json["notes"] = notes;
    }
    if (parameter != null) {
      _json["parameter"] = parameter.map((value) => (value).toJson()).toList();
    }
    if (scheduleEndMs != null) {
      _json["scheduleEndMs"] = scheduleEndMs;
    }
    if (scheduleStartMs != null) {
      _json["scheduleStartMs"] = scheduleStartMs;
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}


/** Represents a Google Tag Manager Parameter. */
class Parameter {
  /**
   * The named key that uniquely identifies a parameter. Required for top-level
   * parameters, as well as map values. Ignored for list values.
   */
  core.String key;

  /** This list parameter's parameters (keys will be ignored). */
  core.List<Parameter> list;

  /** This map parameter's parameters (must have keys; keys must be unique). */
  core.List<Parameter> map;

  /**
   * The parameter type. Valid values are:
   * - boolean: The value represents a boolean, represented as 'true' or 'false'
   * - integer: The value represents a 64-bit signed integer value, in base 10
   * - list: A list of parameters should be specified
   * - map: A map of parameters should be specified
   * - template: The value represents any text; this can include macro
   * references (even macro references that might return non-string types)
   * Possible string values are:
   * - "boolean"
   * - "integer"
   * - "list"
   * - "map"
   * - "template"
   */
  core.String type;

  /**
   * A parameter's value (may contain macro references such as "{{myMacro}}") as
   * appropriate to the specified type.
   */
  core.String value;


  Parameter();

  Parameter.fromJson(core.Map _json) {
    if (_json.containsKey("key")) {
      key = _json["key"];
    }
    if (_json.containsKey("list")) {
      list = _json["list"].map((value) => new Parameter.fromJson(value)).toList();
    }
    if (_json.containsKey("map")) {
      map = _json["map"].map((value) => new Parameter.fromJson(value)).toList();
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (key != null) {
      _json["key"] = key;
    }
    if (list != null) {
      _json["list"] = list.map((value) => (value).toJson()).toList();
    }
    if (map != null) {
      _json["map"] = map.map((value) => (value).toJson()).toList();
    }
    if (type != null) {
      _json["type"] = type;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}


/** Publish container version response. */
class PublishContainerVersionResponse {
  /** Compiler errors or not. */
  core.bool compilerError;

  /** The container version created. */
  ContainerVersion containerVersion;


  PublishContainerVersionResponse();

  PublishContainerVersionResponse.fromJson(core.Map _json) {
    if (_json.containsKey("compilerError")) {
      compilerError = _json["compilerError"];
    }
    if (_json.containsKey("containerVersion")) {
      containerVersion = new ContainerVersion.fromJson(_json["containerVersion"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (compilerError != null) {
      _json["compilerError"] = compilerError;
    }
    if (containerVersion != null) {
      _json["containerVersion"] = (containerVersion).toJson();
    }
    return _json;
  }
}


/** Represents a Google Tag Manager Rule. */
class Rule {
  /** GTM Account ID. */
  core.String accountId;

  /**
   * The list of conditions that make up this rule (implicit AND between them).
   */
  core.List<Condition> condition;

  /** GTM Container ID. */
  core.String containerId;

  /**
   * The fingerprint of the GTM Rule as computed at storage time. This value is
   * recomputed whenever the rule is modified.
   */
  core.String fingerprint;

  /** Rule display name. */
  core.String name;

  /** User notes on how to apply this rule in the container. */
  core.String notes;

  /** The Rule ID uniquely identifies the GTM Rule. */
  core.String ruleId;


  Rule();

  Rule.fromJson(core.Map _json) {
    if (_json.containsKey("accountId")) {
      accountId = _json["accountId"];
    }
    if (_json.containsKey("condition")) {
      condition = _json["condition"].map((value) => new Condition.fromJson(value)).toList();
    }
    if (_json.containsKey("containerId")) {
      containerId = _json["containerId"];
    }
    if (_json.containsKey("fingerprint")) {
      fingerprint = _json["fingerprint"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("notes")) {
      notes = _json["notes"];
    }
    if (_json.containsKey("ruleId")) {
      ruleId = _json["ruleId"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (accountId != null) {
      _json["accountId"] = accountId;
    }
    if (condition != null) {
      _json["condition"] = condition.map((value) => (value).toJson()).toList();
    }
    if (containerId != null) {
      _json["containerId"] = containerId;
    }
    if (fingerprint != null) {
      _json["fingerprint"] = fingerprint;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (notes != null) {
      _json["notes"] = notes;
    }
    if (ruleId != null) {
      _json["ruleId"] = ruleId;
    }
    return _json;
  }
}


/** Represents a Google Tag Manager Tag. */
class Tag {
  /** GTM Account ID. */
  core.String accountId;

  /**
   * Blocking rule IDs. If any of the listed rules evaluate to true, the tag
   * will not fire.
   */
  core.List<core.String> blockingRuleId;

  /**
   * Blocking trigger IDs. If any of the listed triggers evaluate to true, the
   * tag will not fire.
   */
  core.List<core.String> blockingTriggerId;

  /** GTM Container ID. */
  core.String containerId;

  /**
   * The fingerprint of the GTM Tag as computed at storage time. This value is
   * recomputed whenever the tag is modified.
   */
  core.String fingerprint;

  /**
   * Firing rule IDs. A tag will fire when any of the listed rules are true and
   * all of its blockingRuleIds (if any specified) are false.
   */
  core.List<core.String> firingRuleId;

  /**
   * Firing trigger IDs. A tag will fire when any of the listed triggers are
   * true and all of its blockingTriggerIds (if any specified) are false.
   */
  core.List<core.String> firingTriggerId;

  /**
   * If set to true, this tag will only fire in the live environment (e.g. not
   * in preview or debug mode).
   */
  core.bool liveOnly;

  /** Tag display name. */
  core.String name;

  /** User notes on how to apply this tag in the container. */
  core.String notes;

  /** The tag's parameters. */
  core.List<Parameter> parameter;

  /**
   * User defined numeric priority of the tag. Tags are fired asynchronously in
   * order of priority. Tags with higher numeric value fire first. A tag's
   * priority can be a positive or negative value. The default value is 0.
   */
  Parameter priority;

  /** The end timestamp in milliseconds to schedule a tag. */
  core.String scheduleEndMs;

  /** The start timestamp in milliseconds to schedule a tag. */
  core.String scheduleStartMs;

  /** The Tag ID uniquely identifies the GTM Tag. */
  core.String tagId;

  /** GTM Tag Type. */
  core.String type;


  Tag();

  Tag.fromJson(core.Map _json) {
    if (_json.containsKey("accountId")) {
      accountId = _json["accountId"];
    }
    if (_json.containsKey("blockingRuleId")) {
      blockingRuleId = _json["blockingRuleId"];
    }
    if (_json.containsKey("blockingTriggerId")) {
      blockingTriggerId = _json["blockingTriggerId"];
    }
    if (_json.containsKey("containerId")) {
      containerId = _json["containerId"];
    }
    if (_json.containsKey("fingerprint")) {
      fingerprint = _json["fingerprint"];
    }
    if (_json.containsKey("firingRuleId")) {
      firingRuleId = _json["firingRuleId"];
    }
    if (_json.containsKey("firingTriggerId")) {
      firingTriggerId = _json["firingTriggerId"];
    }
    if (_json.containsKey("liveOnly")) {
      liveOnly = _json["liveOnly"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("notes")) {
      notes = _json["notes"];
    }
    if (_json.containsKey("parameter")) {
      parameter = _json["parameter"].map((value) => new Parameter.fromJson(value)).toList();
    }
    if (_json.containsKey("priority")) {
      priority = new Parameter.fromJson(_json["priority"]);
    }
    if (_json.containsKey("scheduleEndMs")) {
      scheduleEndMs = _json["scheduleEndMs"];
    }
    if (_json.containsKey("scheduleStartMs")) {
      scheduleStartMs = _json["scheduleStartMs"];
    }
    if (_json.containsKey("tagId")) {
      tagId = _json["tagId"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (accountId != null) {
      _json["accountId"] = accountId;
    }
    if (blockingRuleId != null) {
      _json["blockingRuleId"] = blockingRuleId;
    }
    if (blockingTriggerId != null) {
      _json["blockingTriggerId"] = blockingTriggerId;
    }
    if (containerId != null) {
      _json["containerId"] = containerId;
    }
    if (fingerprint != null) {
      _json["fingerprint"] = fingerprint;
    }
    if (firingRuleId != null) {
      _json["firingRuleId"] = firingRuleId;
    }
    if (firingTriggerId != null) {
      _json["firingTriggerId"] = firingTriggerId;
    }
    if (liveOnly != null) {
      _json["liveOnly"] = liveOnly;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (notes != null) {
      _json["notes"] = notes;
    }
    if (parameter != null) {
      _json["parameter"] = parameter.map((value) => (value).toJson()).toList();
    }
    if (priority != null) {
      _json["priority"] = (priority).toJson();
    }
    if (scheduleEndMs != null) {
      _json["scheduleEndMs"] = scheduleEndMs;
    }
    if (scheduleStartMs != null) {
      _json["scheduleStartMs"] = scheduleStartMs;
    }
    if (tagId != null) {
      _json["tagId"] = tagId;
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}


/** Represents a Google Tag Manager Trigger */
class Trigger {
  /** GTM Account ID. */
  core.String accountId;

  /** Used in the case of auto event tracking. */
  core.List<Condition> autoEventFilter;

  /**
   * Whether or not we should only fire tags if the form submit or link click
   * event is not cancelled by some other event handler (e.g. because of
   * validation). Only valid for Form Submission and Link Click triggers.
   */
  Parameter checkValidation;

  /** GTM Container ID. */
  core.String containerId;

  /**
   * Used in the case of custom event, which is fired iff all Conditions are
   * true.
   */
  core.List<Condition> customEventFilter;

  /**
   * Reloads the videos in the page that don't already have the YT API enabled.
   * If false, only capture events from videos that already have the API
   * enabled. Only valid for YouTube triggers.
   */
  Parameter enableAllVideos;

  /** Name of the GTM event that is fired. Only valid for Timer triggers. */
  Parameter eventName;

  /** The trigger will only fire iff all Conditions are true. */
  core.List<Condition> filter;

  /**
   * The fingerprint of the GTM Trigger as computed at storage time. This value
   * is recomputed whenever the trigger is modified.
   */
  core.String fingerprint;

  /**
   * Time between triggering recurring Timer Events (in milliseconds). Only
   * valid for Timer triggers.
   */
  Parameter interval;

  /**
   * Limit of the number of GTM events this Timer Trigger will fire. If no limit
   * is set, we will continue to fire GTM events until the user leaves the page.
   * Only valid for Timer triggers.
   */
  Parameter limit;

  /** Trigger display name. */
  core.String name;

  /** The Trigger ID uniquely identifies the GTM Trigger. */
  core.String triggerId;

  /**
   * Defines the data layer event that causes this trigger.
   * Possible string values are:
   * - "ajaxSubmission"
   * - "always"
   * - "click"
   * - "customEvent"
   * - "domReady"
   * - "formSubmission"
   * - "historyChange"
   * - "jsError"
   * - "linkClick"
   * - "pageview"
   * - "timer"
   * - "windowLoaded"
   * - "youTube"
   */
  core.String type;

  /**
   * Globally unique id of the trigger that auto-generates this Form Submit or
   * Link Click listeners if any. Used to make incompatible auto-events work
   * together with trigger filtering based on trigger ids. This value is
   * populated during output generation since the tags implied by triggers don't
   * exist until then. Only valid for Form Submission and Link Click triggers.
   */
  Parameter uniqueTriggerId;

  /**
   * List of integer percentage values. The trigger will fire as each percentage
   * is reached in any instrumented videos. Only valid for YouTube triggers.
   */
  Parameter videoPercentageList;

  /**
   * Whether or not we should delay the form submissions or link opening until
   * all of the tags have fired (by preventing the default action and later
   * simulating the default action). Only valid for Form Submission and Link
   * Click triggers.
   */
  Parameter waitForTags;

  /**
   * How long to wait (in milliseconds) for tags to fire when 'waits_for_tags'
   * above evaluates to true. Only valid for Form Submission and Link Click
   * triggers.
   */
  Parameter waitForTagsTimeout;


  Trigger();

  Trigger.fromJson(core.Map _json) {
    if (_json.containsKey("accountId")) {
      accountId = _json["accountId"];
    }
    if (_json.containsKey("autoEventFilter")) {
      autoEventFilter = _json["autoEventFilter"].map((value) => new Condition.fromJson(value)).toList();
    }
    if (_json.containsKey("checkValidation")) {
      checkValidation = new Parameter.fromJson(_json["checkValidation"]);
    }
    if (_json.containsKey("containerId")) {
      containerId = _json["containerId"];
    }
    if (_json.containsKey("customEventFilter")) {
      customEventFilter = _json["customEventFilter"].map((value) => new Condition.fromJson(value)).toList();
    }
    if (_json.containsKey("enableAllVideos")) {
      enableAllVideos = new Parameter.fromJson(_json["enableAllVideos"]);
    }
    if (_json.containsKey("eventName")) {
      eventName = new Parameter.fromJson(_json["eventName"]);
    }
    if (_json.containsKey("filter")) {
      filter = _json["filter"].map((value) => new Condition.fromJson(value)).toList();
    }
    if (_json.containsKey("fingerprint")) {
      fingerprint = _json["fingerprint"];
    }
    if (_json.containsKey("interval")) {
      interval = new Parameter.fromJson(_json["interval"]);
    }
    if (_json.containsKey("limit")) {
      limit = new Parameter.fromJson(_json["limit"]);
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("triggerId")) {
      triggerId = _json["triggerId"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
    if (_json.containsKey("uniqueTriggerId")) {
      uniqueTriggerId = new Parameter.fromJson(_json["uniqueTriggerId"]);
    }
    if (_json.containsKey("videoPercentageList")) {
      videoPercentageList = new Parameter.fromJson(_json["videoPercentageList"]);
    }
    if (_json.containsKey("waitForTags")) {
      waitForTags = new Parameter.fromJson(_json["waitForTags"]);
    }
    if (_json.containsKey("waitForTagsTimeout")) {
      waitForTagsTimeout = new Parameter.fromJson(_json["waitForTagsTimeout"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (accountId != null) {
      _json["accountId"] = accountId;
    }
    if (autoEventFilter != null) {
      _json["autoEventFilter"] = autoEventFilter.map((value) => (value).toJson()).toList();
    }
    if (checkValidation != null) {
      _json["checkValidation"] = (checkValidation).toJson();
    }
    if (containerId != null) {
      _json["containerId"] = containerId;
    }
    if (customEventFilter != null) {
      _json["customEventFilter"] = customEventFilter.map((value) => (value).toJson()).toList();
    }
    if (enableAllVideos != null) {
      _json["enableAllVideos"] = (enableAllVideos).toJson();
    }
    if (eventName != null) {
      _json["eventName"] = (eventName).toJson();
    }
    if (filter != null) {
      _json["filter"] = filter.map((value) => (value).toJson()).toList();
    }
    if (fingerprint != null) {
      _json["fingerprint"] = fingerprint;
    }
    if (interval != null) {
      _json["interval"] = (interval).toJson();
    }
    if (limit != null) {
      _json["limit"] = (limit).toJson();
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (triggerId != null) {
      _json["triggerId"] = triggerId;
    }
    if (type != null) {
      _json["type"] = type;
    }
    if (uniqueTriggerId != null) {
      _json["uniqueTriggerId"] = (uniqueTriggerId).toJson();
    }
    if (videoPercentageList != null) {
      _json["videoPercentageList"] = (videoPercentageList).toJson();
    }
    if (waitForTags != null) {
      _json["waitForTags"] = (waitForTags).toJson();
    }
    if (waitForTagsTimeout != null) {
      _json["waitForTagsTimeout"] = (waitForTagsTimeout).toJson();
    }
    return _json;
  }
}


/** Represents a user's permissions to an account and its container. */
class UserAccess {
  /** GTM Account access permissions. */
  AccountAccess accountAccess;

  /** GTM Account ID. */
  core.String accountId;

  /** GTM Container access permissions. */
  core.List<ContainerAccess> containerAccess;

  /** User's email address. */
  core.String emailAddress;

  /** Account Permission ID. */
  core.String permissionId;


  UserAccess();

  UserAccess.fromJson(core.Map _json) {
    if (_json.containsKey("accountAccess")) {
      accountAccess = new AccountAccess.fromJson(_json["accountAccess"]);
    }
    if (_json.containsKey("accountId")) {
      accountId = _json["accountId"];
    }
    if (_json.containsKey("containerAccess")) {
      containerAccess = _json["containerAccess"].map((value) => new ContainerAccess.fromJson(value)).toList();
    }
    if (_json.containsKey("emailAddress")) {
      emailAddress = _json["emailAddress"];
    }
    if (_json.containsKey("permissionId")) {
      permissionId = _json["permissionId"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (accountAccess != null) {
      _json["accountAccess"] = (accountAccess).toJson();
    }
    if (accountId != null) {
      _json["accountId"] = accountId;
    }
    if (containerAccess != null) {
      _json["containerAccess"] = containerAccess.map((value) => (value).toJson()).toList();
    }
    if (emailAddress != null) {
      _json["emailAddress"] = emailAddress;
    }
    if (permissionId != null) {
      _json["permissionId"] = permissionId;
    }
    return _json;
  }
}


/** Represents a Google Tag Manager Variable. */
class Variable {
  /** GTM Account ID. */
  core.String accountId;

  /** GTM Container ID. */
  core.String containerId;

  /**
   * For mobile containers only: A list of trigger IDs for disabling conditional
   * variables; the variable is enabled if one of the enabling trigger is true
   * while all the disabling trigger are false. Treated as an unordered set.
   */
  core.List<core.String> disablingTriggerId;

  /**
   * For mobile containers only: A list of trigger IDs for enabling conditional
   * variables; the variable is enabled if one of the enabling triggers is true
   * while all the disabling triggers are false. Treated as an unordered set.
   */
  core.List<core.String> enablingTriggerId;

  /**
   * The fingerprint of the GTM Variable as computed at storage time. This value
   * is recomputed whenever the variable is modified.
   */
  core.String fingerprint;

  /** Variable display name. */
  core.String name;

  /** User notes on how to apply this variable in the container. */
  core.String notes;

  /** The variable's parameters. */
  core.List<Parameter> parameter;

  /** The end timestamp in milliseconds to schedule a variable. */
  core.String scheduleEndMs;

  /** The start timestamp in milliseconds to schedule a variable. */
  core.String scheduleStartMs;

  /** GTM Variable Type. */
  core.String type;

  /** The Variable ID uniquely identifies the GTM Variable. */
  core.String variableId;


  Variable();

  Variable.fromJson(core.Map _json) {
    if (_json.containsKey("accountId")) {
      accountId = _json["accountId"];
    }
    if (_json.containsKey("containerId")) {
      containerId = _json["containerId"];
    }
    if (_json.containsKey("disablingTriggerId")) {
      disablingTriggerId = _json["disablingTriggerId"];
    }
    if (_json.containsKey("enablingTriggerId")) {
      enablingTriggerId = _json["enablingTriggerId"];
    }
    if (_json.containsKey("fingerprint")) {
      fingerprint = _json["fingerprint"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("notes")) {
      notes = _json["notes"];
    }
    if (_json.containsKey("parameter")) {
      parameter = _json["parameter"].map((value) => new Parameter.fromJson(value)).toList();
    }
    if (_json.containsKey("scheduleEndMs")) {
      scheduleEndMs = _json["scheduleEndMs"];
    }
    if (_json.containsKey("scheduleStartMs")) {
      scheduleStartMs = _json["scheduleStartMs"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
    if (_json.containsKey("variableId")) {
      variableId = _json["variableId"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (accountId != null) {
      _json["accountId"] = accountId;
    }
    if (containerId != null) {
      _json["containerId"] = containerId;
    }
    if (disablingTriggerId != null) {
      _json["disablingTriggerId"] = disablingTriggerId;
    }
    if (enablingTriggerId != null) {
      _json["enablingTriggerId"] = enablingTriggerId;
    }
    if (fingerprint != null) {
      _json["fingerprint"] = fingerprint;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (notes != null) {
      _json["notes"] = notes;
    }
    if (parameter != null) {
      _json["parameter"] = parameter.map((value) => (value).toJson()).toList();
    }
    if (scheduleEndMs != null) {
      _json["scheduleEndMs"] = scheduleEndMs;
    }
    if (scheduleStartMs != null) {
      _json["scheduleStartMs"] = scheduleStartMs;
    }
    if (type != null) {
      _json["type"] = type;
    }
    if (variableId != null) {
      _json["variableId"] = variableId;
    }
    return _json;
  }
}


