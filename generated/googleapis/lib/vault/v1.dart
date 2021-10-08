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

/// Google Vault API - v1
///
/// Retention and eDiscovery for Google Workspace. To work with Vault resources,
/// the account must have the
/// [required Vault privileges](https://support.google.com/vault/answer/2799699)
/// and access to the matter. To access a matter, the account must have created
/// the matter, have the matter shared with them, or have the **View All
/// Matters** privilege. For example, to download an export, an account needs
/// the **Manage Exports** privilege and the matter shared with them.
///
/// For more information, see <https://developers.google.com/vault>
///
/// Create an instance of [VaultApi] to access these resources:
///
/// - [MattersResource]
///   - [MattersExportsResource]
///   - [MattersHoldsResource]
///     - [MattersHoldsAccountsResource]
///   - [MattersSavedQueriesResource]
/// - [OperationsResource]
library vault.v1;

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

/// Retention and eDiscovery for Google Workspace.
///
/// To work with Vault resources, the account must have the
/// [required Vault privileges](https://support.google.com/vault/answer/2799699)
/// and access to the matter. To access a matter, the account must have created
/// the matter, have the matter shared with them, or have the **View All
/// Matters** privilege. For example, to download an export, an account needs
/// the **Manage Exports** privilege and the matter shared with them.
class VaultApi {
  /// Manage your eDiscovery data
  static const ediscoveryScope = 'https://www.googleapis.com/auth/ediscovery';

  /// View your eDiscovery data
  static const ediscoveryReadonlyScope =
      'https://www.googleapis.com/auth/ediscovery.readonly';

  final commons.ApiRequester _requester;

  MattersResource get matters => MattersResource(_requester);
  OperationsResource get operations => OperationsResource(_requester);

  VaultApi(http.Client client,
      {core.String rootUrl = 'https://vault.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class MattersResource {
  final commons.ApiRequester _requester;

  MattersExportsResource get exports => MattersExportsResource(_requester);
  MattersHoldsResource get holds => MattersHoldsResource(_requester);
  MattersSavedQueriesResource get savedQueries =>
      MattersSavedQueriesResource(_requester);

  MattersResource(commons.ApiRequester client) : _requester = client;

  /// Adds an account as a matter collaborator.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [matterId] - The matter ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [MatterPermission].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<MatterPermission> addPermissions(
    AddMatterPermissionsRequest request,
    core.String matterId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/matters/' + commons.escapeVariable('$matterId') + ':addPermissions';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return MatterPermission.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Closes the specified matter.
  ///
  /// Returns the matter with updated state.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [matterId] - The matter ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CloseMatterResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CloseMatterResponse> close(
    CloseMatterRequest request,
    core.String matterId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/matters/' + commons.escapeVariable('$matterId') + ':close';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return CloseMatterResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Counts the accounts processed by the specified query.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [matterId] - The matter ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> count(
    CountArtifactsRequest request,
    core.String matterId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/matters/' + commons.escapeVariable('$matterId') + ':count';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Creates a matter with the given name and description.
  ///
  /// The initial state is open, and the owner is the method caller. Returns the
  /// created matter with default view.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Matter].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Matter> create(
    Matter request, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1/matters';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Matter.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the specified matter.
  ///
  /// Returns the matter with updated state.
  ///
  /// Request parameters:
  ///
  /// [matterId] - The matter ID
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Matter].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Matter> delete(
    core.String matterId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/matters/' + commons.escapeVariable('$matterId');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Matter.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Gets the specified matter.
  ///
  /// Request parameters:
  ///
  /// [matterId] - The matter ID.
  ///
  /// [view] - Specifies how much information about the matter to return in the
  /// response.
  /// Possible string values are:
  /// - "VIEW_UNSPECIFIED" : The amount of detail is unspecified. Same as
  /// **BASIC**.
  /// - "BASIC" : Returns the matter ID, name, description, and state. Default
  /// choice.
  /// - "FULL" : Returns the basic details and a list of matter owners and
  /// collaborators (see
  /// [MatterPermissions](https://developers.google.com/vault/reference/rest/v1/matters#matterpermission)).
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Matter].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Matter> get(
    core.String matterId, {
    core.String? view,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/matters/' + commons.escapeVariable('$matterId');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Matter.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists matters the requestor has access to.
  ///
  /// Request parameters:
  ///
  /// [pageSize] - The number of matters to return in the response. Default and
  /// maximum are 100.
  ///
  /// [pageToken] - The pagination token as returned in the response.
  ///
  /// [state] - If set, lists only matters with the specified state. The default
  /// lists matters of all states.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The matter has no specified state.
  /// - "OPEN" : The matter is open.
  /// - "CLOSED" : The matter is closed.
  /// - "DELETED" : The matter is deleted.
  ///
  /// [view] - Specifies how much information about the matter to return in
  /// response.
  /// Possible string values are:
  /// - "VIEW_UNSPECIFIED" : The amount of detail is unspecified. Same as
  /// **BASIC**.
  /// - "BASIC" : Returns the matter ID, name, description, and state. Default
  /// choice.
  /// - "FULL" : Returns the basic details and a list of matter owners and
  /// collaborators (see
  /// [MatterPermissions](https://developers.google.com/vault/reference/rest/v1/matters#matterpermission)).
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListMattersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListMattersResponse> list({
    core.int? pageSize,
    core.String? pageToken,
    core.String? state,
    core.String? view,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (state != null) 'state': [state],
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1/matters';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListMattersResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Removes an account as a matter collaborator.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [matterId] - The matter ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Empty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Empty> removePermissions(
    RemoveMatterPermissionsRequest request,
    core.String matterId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/matters/' +
        commons.escapeVariable('$matterId') +
        ':removePermissions';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Empty.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Reopens the specified matter.
  ///
  /// Returns the matter with updated state.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [matterId] - The matter ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ReopenMatterResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ReopenMatterResponse> reopen(
    ReopenMatterRequest request,
    core.String matterId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/matters/' + commons.escapeVariable('$matterId') + ':reopen';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return ReopenMatterResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Undeletes the specified matter.
  ///
  /// Returns the matter with updated state.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [matterId] - The matter ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Matter].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Matter> undelete(
    UndeleteMatterRequest request,
    core.String matterId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/matters/' + commons.escapeVariable('$matterId') + ':undelete';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Matter.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Updates the specified matter.
  ///
  /// This updates only the name and description of the matter, identified by
  /// matter ID. Changes to any other fields are ignored. Returns the default
  /// view of the matter.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [matterId] - The matter ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Matter].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Matter> update(
    Matter request,
    core.String matterId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/matters/' + commons.escapeVariable('$matterId');

    final _response = await _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
    );
    return Matter.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class MattersExportsResource {
  final commons.ApiRequester _requester;

  MattersExportsResource(commons.ApiRequester client) : _requester = client;

  /// Creates an export.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [matterId] - The matter ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Export].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Export> create(
    Export request,
    core.String matterId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/matters/' + commons.escapeVariable('$matterId') + '/exports';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Export.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes an export.
  ///
  /// Request parameters:
  ///
  /// [matterId] - The matter ID.
  ///
  /// [exportId] - The export ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Empty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Empty> delete(
    core.String matterId,
    core.String exportId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/matters/' +
        commons.escapeVariable('$matterId') +
        '/exports/' +
        commons.escapeVariable('$exportId');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Empty.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Gets an export.
  ///
  /// Request parameters:
  ///
  /// [matterId] - The matter ID.
  ///
  /// [exportId] - The export ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Export].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Export> get(
    core.String matterId,
    core.String exportId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/matters/' +
        commons.escapeVariable('$matterId') +
        '/exports/' +
        commons.escapeVariable('$exportId');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Export.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists details about the exports in the specified matter.
  ///
  /// Request parameters:
  ///
  /// [matterId] - The matter ID.
  ///
  /// [pageSize] - The number of exports to return in the response.
  ///
  /// [pageToken] - The pagination token as returned in the response.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListExportsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListExportsResponse> list(
    core.String matterId, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/matters/' + commons.escapeVariable('$matterId') + '/exports';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListExportsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class MattersHoldsResource {
  final commons.ApiRequester _requester;

  MattersHoldsAccountsResource get accounts =>
      MattersHoldsAccountsResource(_requester);

  MattersHoldsResource(commons.ApiRequester client) : _requester = client;

  /// Adds accounts to a hold.
  ///
  /// Returns a list of accounts that have been successfully added. Accounts can
  /// be added only to an existing account-based hold.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [matterId] - The matter ID.
  ///
  /// [holdId] - The hold ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AddHeldAccountsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AddHeldAccountsResponse> addHeldAccounts(
    AddHeldAccountsRequest request,
    core.String matterId,
    core.String holdId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/matters/' +
        commons.escapeVariable('$matterId') +
        '/holds/' +
        commons.escapeVariable('$holdId') +
        ':addHeldAccounts';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return AddHeldAccountsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Creates a hold in the specified matter.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [matterId] - The matter ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Hold].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Hold> create(
    Hold request,
    core.String matterId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/matters/' + commons.escapeVariable('$matterId') + '/holds';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Hold.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Removes the specified hold and releases the accounts or organizational
  /// unit covered by the hold.
  ///
  /// If the data is not preserved by another hold or retention rule, it might
  /// be purged.
  ///
  /// Request parameters:
  ///
  /// [matterId] - The matter ID.
  ///
  /// [holdId] - The hold ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Empty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Empty> delete(
    core.String matterId,
    core.String holdId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/matters/' +
        commons.escapeVariable('$matterId') +
        '/holds/' +
        commons.escapeVariable('$holdId');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Empty.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Gets the specified hold.
  ///
  /// Request parameters:
  ///
  /// [matterId] - The matter ID.
  ///
  /// [holdId] - The hold ID.
  ///
  /// [view] - The amount of detail to return for a hold.
  /// Possible string values are:
  /// - "HOLD_VIEW_UNSPECIFIED" : Not specified. Defaults to **FULL_HOLD**.
  /// - "BASIC_HOLD" : Returns the hold ID, name, update time, service, and
  /// query.
  /// - "FULL_HOLD" : Returns all details of **BASIC_HOLD** and the entities the
  /// hold applies to, such as accounts or organizational unit.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Hold].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Hold> get(
    core.String matterId,
    core.String holdId, {
    core.String? view,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/matters/' +
        commons.escapeVariable('$matterId') +
        '/holds/' +
        commons.escapeVariable('$holdId');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Hold.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists the holds in a matter.
  ///
  /// Request parameters:
  ///
  /// [matterId] - The matter ID.
  ///
  /// [pageSize] - The number of holds to return in the response, between 0 and
  /// 100 inclusive. Leaving this empty, or as 0, is the same as **page_size** =
  /// 100.
  ///
  /// [pageToken] - The pagination token as returned in the response. An empty
  /// token means start from the beginning.
  ///
  /// [view] - The amount of detail to return for a hold.
  /// Possible string values are:
  /// - "HOLD_VIEW_UNSPECIFIED" : Not specified. Defaults to **FULL_HOLD**.
  /// - "BASIC_HOLD" : Returns the hold ID, name, update time, service, and
  /// query.
  /// - "FULL_HOLD" : Returns all details of **BASIC_HOLD** and the entities the
  /// hold applies to, such as accounts or organizational unit.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListHoldsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListHoldsResponse> list(
    core.String matterId, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? view,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/matters/' + commons.escapeVariable('$matterId') + '/holds';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListHoldsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Removes the specified accounts from a hold.
  ///
  /// Returns a list of statuses in the same order as the request.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [matterId] - The matter ID.
  ///
  /// [holdId] - The hold ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RemoveHeldAccountsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RemoveHeldAccountsResponse> removeHeldAccounts(
    RemoveHeldAccountsRequest request,
    core.String matterId,
    core.String holdId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/matters/' +
        commons.escapeVariable('$matterId') +
        '/holds/' +
        commons.escapeVariable('$holdId') +
        ':removeHeldAccounts';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return RemoveHeldAccountsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates the scope (organizational unit or accounts) and query parameters
  /// of a hold.
  ///
  /// You cannot add accounts to a hold that covers an organizational unit, nor
  /// can you add organizational units to a hold that covers individual
  /// accounts. If you try, the unsupported values are ignored.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [matterId] - The matter ID.
  ///
  /// [holdId] - The ID of the hold.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Hold].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Hold> update(
    Hold request,
    core.String matterId,
    core.String holdId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/matters/' +
        commons.escapeVariable('$matterId') +
        '/holds/' +
        commons.escapeVariable('$holdId');

    final _response = await _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
    );
    return Hold.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class MattersHoldsAccountsResource {
  final commons.ApiRequester _requester;

  MattersHoldsAccountsResource(commons.ApiRequester client)
      : _requester = client;

  /// Adds an account to a hold.
  ///
  /// Accounts can be added only to a hold that does not have an organizational
  /// unit set. If you try to add an account to an organizational unit-based
  /// hold, an error is returned.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [matterId] - The matter ID.
  ///
  /// [holdId] - The hold ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [HeldAccount].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<HeldAccount> create(
    HeldAccount request,
    core.String matterId,
    core.String holdId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/matters/' +
        commons.escapeVariable('$matterId') +
        '/holds/' +
        commons.escapeVariable('$holdId') +
        '/accounts';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return HeldAccount.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Removes an account from a hold.
  ///
  /// Request parameters:
  ///
  /// [matterId] - The matter ID.
  ///
  /// [holdId] - The hold ID.
  ///
  /// [accountId] - The ID of the account to remove from the hold.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Empty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Empty> delete(
    core.String matterId,
    core.String holdId,
    core.String accountId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/matters/' +
        commons.escapeVariable('$matterId') +
        '/holds/' +
        commons.escapeVariable('$holdId') +
        '/accounts/' +
        commons.escapeVariable('$accountId');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Empty.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists the accounts covered by a hold.
  ///
  /// This can list only individually-specified accounts covered by the hold. If
  /// the hold covers an organizational unit, use the
  /// [Admin SDK](https://developers.google.com/admin-sdk/). to list the members
  /// of the organizational unit on hold.
  ///
  /// Request parameters:
  ///
  /// [matterId] - The matter ID.
  ///
  /// [holdId] - The hold ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListHeldAccountsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListHeldAccountsResponse> list(
    core.String matterId,
    core.String holdId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/matters/' +
        commons.escapeVariable('$matterId') +
        '/holds/' +
        commons.escapeVariable('$holdId') +
        '/accounts';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListHeldAccountsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class MattersSavedQueriesResource {
  final commons.ApiRequester _requester;

  MattersSavedQueriesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a saved query.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [matterId] - The ID of the matter to create the saved query in.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SavedQuery].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SavedQuery> create(
    SavedQuery request,
    core.String matterId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/matters/' + commons.escapeVariable('$matterId') + '/savedQueries';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return SavedQuery.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the specified saved query.
  ///
  /// Request parameters:
  ///
  /// [matterId] - The ID of the matter to delete the saved query from.
  ///
  /// [savedQueryId] - ID of the saved query to delete.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Empty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Empty> delete(
    core.String matterId,
    core.String savedQueryId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/matters/' +
        commons.escapeVariable('$matterId') +
        '/savedQueries/' +
        commons.escapeVariable('$savedQueryId');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Empty.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves the specified saved query.
  ///
  /// Request parameters:
  ///
  /// [matterId] - The ID of the matter to get the saved query from.
  ///
  /// [savedQueryId] - ID of the saved query to retrieve.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SavedQuery].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SavedQuery> get(
    core.String matterId,
    core.String savedQueryId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/matters/' +
        commons.escapeVariable('$matterId') +
        '/savedQueries/' +
        commons.escapeVariable('$savedQueryId');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return SavedQuery.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists the saved queries in a matter.
  ///
  /// Request parameters:
  ///
  /// [matterId] - The ID of the matter to get the saved queries for.
  ///
  /// [pageSize] - The maximum number of saved queries to return.
  ///
  /// [pageToken] - The pagination token as returned in the previous response.
  /// An empty token means start from the beginning.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListSavedQueriesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListSavedQueriesResponse> list(
    core.String matterId, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/matters/' + commons.escapeVariable('$matterId') + '/savedQueries';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListSavedQueriesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class OperationsResource {
  final commons.ApiRequester _requester;

  OperationsResource(commons.ApiRequester client) : _requester = client;

  /// Starts asynchronous cancellation on a long-running operation.
  ///
  /// The server makes a best effort to cancel the operation, but success is not
  /// guaranteed. If the server doesn't support this method, it returns
  /// `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation
  /// or other methods to check whether the cancellation succeeded or whether
  /// the operation completed despite cancellation. On successful cancellation,
  /// the operation is not deleted; instead, it becomes an operation with an
  /// Operation.error value with a google.rpc.Status.code of 1, corresponding to
  /// `Code.CANCELLED`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource to be cancelled.
  /// Value must have pattern `^operations/.*$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Empty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Empty> cancel(
    CancelOperationRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':cancel';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Empty.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a long-running operation.
  ///
  /// This method indicates that the client is no longer interested in the
  /// operation result. It does not cancel the operation. If the server doesn't
  /// support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource to be deleted.
  /// Value must have pattern `^operations/.*$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Empty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Empty> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Empty.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Gets the latest state of a long-running operation.
  ///
  /// Clients can use this method to poll the operation result at intervals as
  /// recommended by the API service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern `^operations/.*$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists operations that match the specified filter in the request.
  ///
  /// If the server doesn't support this method, it returns `UNIMPLEMENTED`.
  /// NOTE: the `name` binding allows API services to override the binding to
  /// use different resource name schemes, such as `users / * /operations`. To
  /// override the binding, API services can add a binding such as
  /// `"/v1/{name=users / * }/operations"` to their service configuration. For
  /// backwards compatibility, the default name includes the operations
  /// collection id, however overriding users must ensure the name binding is
  /// the parent resource, without the operations collection id.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation's parent resource.
  /// Value must have pattern `^operations$`.
  ///
  /// [filter] - The standard list filter.
  ///
  /// [pageSize] - The standard list page size.
  ///
  /// [pageToken] - The standard list page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListOperationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListOperationsResponse> list(
    core.String name, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListOperationsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

/// The results count for each account.
class AccountCount {
  /// Account owner.
  UserInfo? account;

  /// The number of results (messages or files) found for this account.
  core.String? count;

  AccountCount({
    this.account,
    this.count,
  });

  AccountCount.fromJson(core.Map _json)
      : this(
          account: _json.containsKey('account')
              ? UserInfo.fromJson(
                  _json['account'] as core.Map<core.String, core.dynamic>)
              : null,
          count:
              _json.containsKey('count') ? _json['count'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (account != null) 'account': account!,
        if (count != null) 'count': count!,
      };
}

/// An error that occurred when querying a specific account
class AccountCountError {
  /// Account owner.
  UserInfo? account;

  /// Account query error.
  /// Possible string values are:
  /// - "ERROR_TYPE_UNSPECIFIED" : Default.
  /// - "WILDCARD_TOO_BROAD" : Permanent - prefix terms expanded to too many
  /// query terms.
  /// - "TOO_MANY_TERMS" : Permanent - query contains too many terms.
  /// - "LOCATION_UNAVAILABLE" : Transient - data in transit between storage
  /// replicas, temporarily unavailable.
  /// - "UNKNOWN" : Unrecognized error.
  /// - "DEADLINE_EXCEEDED" : Deadline exceeded when querying the account.
  core.String? errorType;

  AccountCountError({
    this.account,
    this.errorType,
  });

  AccountCountError.fromJson(core.Map _json)
      : this(
          account: _json.containsKey('account')
              ? UserInfo.fromJson(
                  _json['account'] as core.Map<core.String, core.dynamic>)
              : null,
          errorType: _json.containsKey('errorType')
              ? _json['errorType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (account != null) 'account': account!,
        if (errorType != null) 'errorType': errorType!,
      };
}

/// The accounts to search
class AccountInfo {
  /// A set of accounts to search.
  core.List<core.String>? emails;

  AccountInfo({
    this.emails,
  });

  AccountInfo.fromJson(core.Map _json)
      : this(
          emails: _json.containsKey('emails')
              ? (_json['emails'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (emails != null) 'emails': emails!,
      };
}

/// The status of each account creation, and the **HeldAccount**, if successful.
class AddHeldAccountResult {
  /// Returned when the account was successfully created.
  HeldAccount? account;

  /// Reports the request status.
  ///
  /// If it failed, returns an error message.
  Status? status;

  AddHeldAccountResult({
    this.account,
    this.status,
  });

  AddHeldAccountResult.fromJson(core.Map _json)
      : this(
          account: _json.containsKey('account')
              ? HeldAccount.fromJson(
                  _json['account'] as core.Map<core.String, core.dynamic>)
              : null,
          status: _json.containsKey('status')
              ? Status.fromJson(
                  _json['status'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (account != null) 'account': account!,
        if (status != null) 'status': status!,
      };
}

/// Add a list of accounts to a hold.
class AddHeldAccountsRequest {
  /// A comma-separated list of the account IDs of the accounts to add to the
  /// hold.
  ///
  /// Specify either **emails** or **account_ids**, but not both.
  core.List<core.String>? accountIds;

  /// A comma-separated list of the emails of the accounts to add to the hold.
  ///
  /// Specify either **emails** or **account_ids**, but not both.
  core.List<core.String>? emails;

  AddHeldAccountsRequest({
    this.accountIds,
    this.emails,
  });

  AddHeldAccountsRequest.fromJson(core.Map _json)
      : this(
          accountIds: _json.containsKey('accountIds')
              ? (_json['accountIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          emails: _json.containsKey('emails')
              ? (_json['emails'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountIds != null) 'accountIds': accountIds!,
        if (emails != null) 'emails': emails!,
      };
}

/// Response for batch create held accounts.
class AddHeldAccountsResponse {
  /// The list of responses, in the same order as the batch request.
  core.List<AddHeldAccountResult>? responses;

  AddHeldAccountsResponse({
    this.responses,
  });

  AddHeldAccountsResponse.fromJson(core.Map _json)
      : this(
          responses: _json.containsKey('responses')
              ? (_json['responses'] as core.List)
                  .map((value) => AddHeldAccountResult.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (responses != null) 'responses': responses!,
      };
}

/// Add an account with the permission specified.
///
/// The role cannot be owner. If an account already has a role in the matter,
/// the existing role is overwritten.
class AddMatterPermissionsRequest {
  /// Only relevant if **sendEmails** is **true**.
  ///
  /// To CC the requestor in the email message, set to **true**. To not CC
  /// requestor, set to **false**.
  core.bool? ccMe;

  /// The account and its role to add.
  MatterPermission? matterPermission;

  /// To send a notification email to the added account, set to **true**.
  ///
  /// To not send a notification email, set to **false**.
  core.bool? sendEmails;

  AddMatterPermissionsRequest({
    this.ccMe,
    this.matterPermission,
    this.sendEmails,
  });

  AddMatterPermissionsRequest.fromJson(core.Map _json)
      : this(
          ccMe: _json.containsKey('ccMe') ? _json['ccMe'] as core.bool : null,
          matterPermission: _json.containsKey('matterPermission')
              ? MatterPermission.fromJson(_json['matterPermission']
                  as core.Map<core.String, core.dynamic>)
              : null,
          sendEmails: _json.containsKey('sendEmails')
              ? _json['sendEmails'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (ccMe != null) 'ccMe': ccMe!,
        if (matterPermission != null) 'matterPermission': matterPermission!,
        if (sendEmails != null) 'sendEmails': sendEmails!,
      };
}

/// The request message for Operations.CancelOperation.
typedef CancelOperationRequest = $Empty;

/// Close a matter by ID.
typedef CloseMatterRequest = $Empty;

/// Response to a CloseMatterRequest.
class CloseMatterResponse {
  /// The updated matter, with state **CLOSED**.
  Matter? matter;

  CloseMatterResponse({
    this.matter,
  });

  CloseMatterResponse.fromJson(core.Map _json)
      : this(
          matter: _json.containsKey('matter')
              ? Matter.fromJson(
                  _json['matter'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (matter != null) 'matter': matter!,
      };
}

/// The export file in Cloud Storage
class CloudStorageFile {
  /// The name of the Cloud Storage bucket for the export file.
  ///
  /// You can use this value in the
  /// [Cloud Storage JSON or XML APIs](https://cloud.google.com/storage/docs/apis),
  /// but not to list the bucket contents. Instead, you can
  /// [get individual export files](https://cloud.google.com/storage/docs/json_api/v1/objects/get)
  /// by object name.
  core.String? bucketName;

  /// The md5 hash of the file.
  core.String? md5Hash;

  /// The name of the Cloud Storage object for the export file.
  ///
  /// You can use this value in the
  /// [Cloud Storage JSON or XML APIs](https://cloud.google.com/storage/docs/apis).
  core.String? objectName;

  /// The export file size.
  core.String? size;

  CloudStorageFile({
    this.bucketName,
    this.md5Hash,
    this.objectName,
    this.size,
  });

  CloudStorageFile.fromJson(core.Map _json)
      : this(
          bucketName: _json.containsKey('bucketName')
              ? _json['bucketName'] as core.String
              : null,
          md5Hash: _json.containsKey('md5Hash')
              ? _json['md5Hash'] as core.String
              : null,
          objectName: _json.containsKey('objectName')
              ? _json['objectName'] as core.String
              : null,
          size: _json.containsKey('size') ? _json['size'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bucketName != null) 'bucketName': bucketName!,
        if (md5Hash != null) 'md5Hash': md5Hash!,
        if (objectName != null) 'objectName': objectName!,
        if (size != null) 'size': size!,
      };
}

/// Export sink for Cloud Storage files.
class CloudStorageSink {
  /// The exported files in Cloud Storage.
  ///
  /// Output only.
  core.List<CloudStorageFile>? files;

  CloudStorageSink({
    this.files,
  });

  CloudStorageSink.fromJson(core.Map _json)
      : this(
          files: _json.containsKey('files')
              ? (_json['files'] as core.List)
                  .map((value) => CloudStorageFile.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (files != null) 'files': files!,
      };
}

/// Service-specific options for holds.
class CorpusQuery {
  /// Service-specific options for Drive holds.
  ///
  /// If set, **CorpusType** must be **DRIVE**.
  HeldDriveQuery? driveQuery;

  /// Service-specific options for Groups holds.
  ///
  /// If set, **CorpusType** must be **GROUPS**.
  HeldGroupsQuery? groupsQuery;

  /// Service-specific options for Chat holds.
  ///
  /// If set, **CorpusType** must be **HANGOUTS_CHAT**.
  HeldHangoutsChatQuery? hangoutsChatQuery;

  /// Service-specific options for Gmail holds.
  ///
  /// If set, **CorpusType** must be **MAIL**.
  HeldMailQuery? mailQuery;

  /// Service-specific options for Voice holds.
  ///
  /// If set, **CorpusType** must be **VOICE**.
  HeldVoiceQuery? voiceQuery;

  CorpusQuery({
    this.driveQuery,
    this.groupsQuery,
    this.hangoutsChatQuery,
    this.mailQuery,
    this.voiceQuery,
  });

  CorpusQuery.fromJson(core.Map _json)
      : this(
          driveQuery: _json.containsKey('driveQuery')
              ? HeldDriveQuery.fromJson(
                  _json['driveQuery'] as core.Map<core.String, core.dynamic>)
              : null,
          groupsQuery: _json.containsKey('groupsQuery')
              ? HeldGroupsQuery.fromJson(
                  _json['groupsQuery'] as core.Map<core.String, core.dynamic>)
              : null,
          hangoutsChatQuery: _json.containsKey('hangoutsChatQuery')
              ? HeldHangoutsChatQuery.fromJson(_json['hangoutsChatQuery']
                  as core.Map<core.String, core.dynamic>)
              : null,
          mailQuery: _json.containsKey('mailQuery')
              ? HeldMailQuery.fromJson(
                  _json['mailQuery'] as core.Map<core.String, core.dynamic>)
              : null,
          voiceQuery: _json.containsKey('voiceQuery')
              ? HeldVoiceQuery.fromJson(
                  _json['voiceQuery'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (driveQuery != null) 'driveQuery': driveQuery!,
        if (groupsQuery != null) 'groupsQuery': groupsQuery!,
        if (hangoutsChatQuery != null) 'hangoutsChatQuery': hangoutsChatQuery!,
        if (mailQuery != null) 'mailQuery': mailQuery!,
        if (voiceQuery != null) 'voiceQuery': voiceQuery!,
      };
}

/// Long running operation metadata for CountArtifacts.
class CountArtifactsMetadata {
  /// End time of count operation.
  ///
  /// Available when operation is done.
  core.String? endTime;

  /// The matter ID of the associated matter.
  core.String? matterId;

  /// The search query from the request.
  Query? query;

  /// Creation time of count operation.
  core.String? startTime;

  CountArtifactsMetadata({
    this.endTime,
    this.matterId,
    this.query,
    this.startTime,
  });

  CountArtifactsMetadata.fromJson(core.Map _json)
      : this(
          endTime: _json.containsKey('endTime')
              ? _json['endTime'] as core.String
              : null,
          matterId: _json.containsKey('matterId')
              ? _json['matterId'] as core.String
              : null,
          query: _json.containsKey('query')
              ? Query.fromJson(
                  _json['query'] as core.Map<core.String, core.dynamic>)
              : null,
          startTime: _json.containsKey('startTime')
              ? _json['startTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (endTime != null) 'endTime': endTime!,
        if (matterId != null) 'matterId': matterId!,
        if (query != null) 'query': query!,
        if (startTime != null) 'startTime': startTime!,
      };
}

/// Count artifacts request.
class CountArtifactsRequest {
  /// The search query.
  Query? query;

  /// Sets the granularity of the count results.
  /// Possible string values are:
  /// - "COUNT_RESULT_VIEW_UNSPECIFIED" : Default. Same as **TOTAL_COUNT**.
  /// - "TOTAL_COUNT" : Response includes counts of the total accounts, queried
  /// accounts, matching accounts, non-queryable accounts, and queried account
  /// errors.
  /// - "ALL" : Response includes the same details as **TOTAL_COUNT**, plus
  /// additional account breakdown.
  core.String? view;

  CountArtifactsRequest({
    this.query,
    this.view,
  });

  CountArtifactsRequest.fromJson(core.Map _json)
      : this(
          query: _json.containsKey('query')
              ? Query.fromJson(
                  _json['query'] as core.Map<core.String, core.dynamic>)
              : null,
          view: _json.containsKey('view') ? _json['view'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (query != null) 'query': query!,
        if (view != null) 'view': view!,
      };
}

/// Definition of the response for method CountArtifacts.
class CountArtifactsResponse {
  /// Count metrics for Groups.
  GroupsCountResult? groupsCountResult;

  /// Count metrics for Gmail and classic Hangouts.
  MailCountResult? mailCountResult;

  /// Total count of messages.
  core.String? totalCount;

  CountArtifactsResponse({
    this.groupsCountResult,
    this.mailCountResult,
    this.totalCount,
  });

  CountArtifactsResponse.fromJson(core.Map _json)
      : this(
          groupsCountResult: _json.containsKey('groupsCountResult')
              ? GroupsCountResult.fromJson(_json['groupsCountResult']
                  as core.Map<core.String, core.dynamic>)
              : null,
          mailCountResult: _json.containsKey('mailCountResult')
              ? MailCountResult.fromJson(_json['mailCountResult']
                  as core.Map<core.String, core.dynamic>)
              : null,
          totalCount: _json.containsKey('totalCount')
              ? _json['totalCount'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (groupsCountResult != null) 'groupsCountResult': groupsCountResult!,
        if (mailCountResult != null) 'mailCountResult': mailCountResult!,
        if (totalCount != null) 'totalCount': totalCount!,
      };
}

/// Options for Drive exports.
class DriveExportOptions {
  /// To include access level information for users with
  /// [indirect access](https://support.google.com/vault/answer/6099459#metadata)
  /// to files, set to **true**.
  core.bool? includeAccessInfo;

  DriveExportOptions({
    this.includeAccessInfo,
  });

  DriveExportOptions.fromJson(core.Map _json)
      : this(
          includeAccessInfo: _json.containsKey('includeAccessInfo')
              ? _json['includeAccessInfo'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (includeAccessInfo != null) 'includeAccessInfo': includeAccessInfo!,
      };
}

/// Additional options for Drive search
class DriveOptions {
  /// Set to **true** to include shared drives.
  core.bool? includeSharedDrives;

  /// Set to true to include Team Drive.
  core.bool? includeTeamDrives;

  /// Search the current version of the Drive file, but export the contents of
  /// the last version saved before 12:00 AM UTC on the specified date.
  ///
  /// Enter the date in UTC.
  core.String? versionDate;

  DriveOptions({
    this.includeSharedDrives,
    this.includeTeamDrives,
    this.versionDate,
  });

  DriveOptions.fromJson(core.Map _json)
      : this(
          includeSharedDrives: _json.containsKey('includeSharedDrives')
              ? _json['includeSharedDrives'] as core.bool
              : null,
          includeTeamDrives: _json.containsKey('includeTeamDrives')
              ? _json['includeTeamDrives'] as core.bool
              : null,
          versionDate: _json.containsKey('versionDate')
              ? _json['versionDate'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (includeSharedDrives != null)
          'includeSharedDrives': includeSharedDrives!,
        if (includeTeamDrives != null) 'includeTeamDrives': includeTeamDrives!,
        if (versionDate != null) 'versionDate': versionDate!,
      };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); } The JSON representation for `Empty` is empty JSON
/// object `{}`.
typedef Empty = $Empty;

/// An export.
///
/// To work with Vault resources, the account must have the
/// [required Vault privileges](https://support.google.com/vault/answer/2799699)
/// and access to the matter. To access a matter, the account must have created
/// the matter, have the matter shared with them, or have the **View All
/// Matters** privilege.
class Export {
  /// The sink for export files in Cloud Storage.
  ///
  /// Output only.
  CloudStorageSink? cloudStorageSink;

  /// The time when the export was created.
  ///
  /// Output only.
  core.String? createTime;

  /// Additional export options.
  ExportOptions? exportOptions;

  /// The generated export ID.
  ///
  /// Output only.
  core.String? id;

  /// The matter ID.
  ///
  /// Output only.
  core.String? matterId;

  /// The export name.
  core.String? name;

  /// The query parameters used to create the export.
  Query? query;

  /// The requester of the export.
  ///
  /// Output only.
  UserInfo? requester;

  /// Details about the export progress and size.
  ///
  /// Output only.
  ExportStats? stats;

  /// The status of the export.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "EXPORT_STATUS_UNSPECIFIED" : The status is unspecified.
  /// - "COMPLETED" : The export completed.
  /// - "FAILED" : The export failed.
  /// - "IN_PROGRESS" : The export is in progress.
  core.String? status;

  Export({
    this.cloudStorageSink,
    this.createTime,
    this.exportOptions,
    this.id,
    this.matterId,
    this.name,
    this.query,
    this.requester,
    this.stats,
    this.status,
  });

  Export.fromJson(core.Map _json)
      : this(
          cloudStorageSink: _json.containsKey('cloudStorageSink')
              ? CloudStorageSink.fromJson(_json['cloudStorageSink']
                  as core.Map<core.String, core.dynamic>)
              : null,
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          exportOptions: _json.containsKey('exportOptions')
              ? ExportOptions.fromJson(
                  _json['exportOptions'] as core.Map<core.String, core.dynamic>)
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          matterId: _json.containsKey('matterId')
              ? _json['matterId'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          query: _json.containsKey('query')
              ? Query.fromJson(
                  _json['query'] as core.Map<core.String, core.dynamic>)
              : null,
          requester: _json.containsKey('requester')
              ? UserInfo.fromJson(
                  _json['requester'] as core.Map<core.String, core.dynamic>)
              : null,
          stats: _json.containsKey('stats')
              ? ExportStats.fromJson(
                  _json['stats'] as core.Map<core.String, core.dynamic>)
              : null,
          status: _json.containsKey('status')
              ? _json['status'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cloudStorageSink != null) 'cloudStorageSink': cloudStorageSink!,
        if (createTime != null) 'createTime': createTime!,
        if (exportOptions != null) 'exportOptions': exportOptions!,
        if (id != null) 'id': id!,
        if (matterId != null) 'matterId': matterId!,
        if (name != null) 'name': name!,
        if (query != null) 'query': query!,
        if (requester != null) 'requester': requester!,
        if (stats != null) 'stats': stats!,
        if (status != null) 'status': status!,
      };
}

/// Additional options for exports
class ExportOptions {
  /// Options for Drive exports.
  DriveExportOptions? driveOptions;

  /// Options for Groups exports.
  GroupsExportOptions? groupsOptions;

  /// Options for Chat exports.
  HangoutsChatExportOptions? hangoutsChatOptions;

  /// Options for Gmail exports.
  MailExportOptions? mailOptions;

  /// The requested data region for the export.
  /// Possible string values are:
  /// - "EXPORT_REGION_UNSPECIFIED" : The region is unspecified. Defaults to
  /// ANY.
  /// - "ANY" : Any region.
  /// - "US" : United States region.
  /// - "EUROPE" : Europe region.
  core.String? region;

  /// Options for Voice exports.
  VoiceExportOptions? voiceOptions;

  ExportOptions({
    this.driveOptions,
    this.groupsOptions,
    this.hangoutsChatOptions,
    this.mailOptions,
    this.region,
    this.voiceOptions,
  });

  ExportOptions.fromJson(core.Map _json)
      : this(
          driveOptions: _json.containsKey('driveOptions')
              ? DriveExportOptions.fromJson(
                  _json['driveOptions'] as core.Map<core.String, core.dynamic>)
              : null,
          groupsOptions: _json.containsKey('groupsOptions')
              ? GroupsExportOptions.fromJson(
                  _json['groupsOptions'] as core.Map<core.String, core.dynamic>)
              : null,
          hangoutsChatOptions: _json.containsKey('hangoutsChatOptions')
              ? HangoutsChatExportOptions.fromJson(_json['hangoutsChatOptions']
                  as core.Map<core.String, core.dynamic>)
              : null,
          mailOptions: _json.containsKey('mailOptions')
              ? MailExportOptions.fromJson(
                  _json['mailOptions'] as core.Map<core.String, core.dynamic>)
              : null,
          region: _json.containsKey('region')
              ? _json['region'] as core.String
              : null,
          voiceOptions: _json.containsKey('voiceOptions')
              ? VoiceExportOptions.fromJson(
                  _json['voiceOptions'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (driveOptions != null) 'driveOptions': driveOptions!,
        if (groupsOptions != null) 'groupsOptions': groupsOptions!,
        if (hangoutsChatOptions != null)
          'hangoutsChatOptions': hangoutsChatOptions!,
        if (mailOptions != null) 'mailOptions': mailOptions!,
        if (region != null) 'region': region!,
        if (voiceOptions != null) 'voiceOptions': voiceOptions!,
      };
}

/// Progress information for an export.
class ExportStats {
  /// The number of messages or files already processed for export.
  core.String? exportedArtifactCount;

  /// The size of export in bytes.
  core.String? sizeInBytes;

  /// The number of messages or files to be exported.
  core.String? totalArtifactCount;

  ExportStats({
    this.exportedArtifactCount,
    this.sizeInBytes,
    this.totalArtifactCount,
  });

  ExportStats.fromJson(core.Map _json)
      : this(
          exportedArtifactCount: _json.containsKey('exportedArtifactCount')
              ? _json['exportedArtifactCount'] as core.String
              : null,
          sizeInBytes: _json.containsKey('sizeInBytes')
              ? _json['sizeInBytes'] as core.String
              : null,
          totalArtifactCount: _json.containsKey('totalArtifactCount')
              ? _json['totalArtifactCount'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (exportedArtifactCount != null)
          'exportedArtifactCount': exportedArtifactCount!,
        if (sizeInBytes != null) 'sizeInBytes': sizeInBytes!,
        if (totalArtifactCount != null)
          'totalArtifactCount': totalArtifactCount!,
      };
}

/// Groups specific count metrics.
class GroupsCountResult {
  /// Error occurred when querying these accounts.
  core.List<AccountCountError>? accountCountErrors;

  /// Subtotal count per matching account that have more than zero messages.
  core.List<AccountCount>? accountCounts;

  /// Total number of accounts that can be queried and have more than zero
  /// messages.
  core.String? matchingAccountsCount;

  /// When **DataScope** is **HELD_DATA**, these accounts in the request are not
  /// queried because they are not on hold.
  ///
  /// For other data scope, this field is not set.
  core.List<core.String>? nonQueryableAccounts;

  /// Total number of accounts involved in this count operation.
  core.String? queriedAccountsCount;

  GroupsCountResult({
    this.accountCountErrors,
    this.accountCounts,
    this.matchingAccountsCount,
    this.nonQueryableAccounts,
    this.queriedAccountsCount,
  });

  GroupsCountResult.fromJson(core.Map _json)
      : this(
          accountCountErrors: _json.containsKey('accountCountErrors')
              ? (_json['accountCountErrors'] as core.List)
                  .map((value) => AccountCountError.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          accountCounts: _json.containsKey('accountCounts')
              ? (_json['accountCounts'] as core.List)
                  .map((value) => AccountCount.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          matchingAccountsCount: _json.containsKey('matchingAccountsCount')
              ? _json['matchingAccountsCount'] as core.String
              : null,
          nonQueryableAccounts: _json.containsKey('nonQueryableAccounts')
              ? (_json['nonQueryableAccounts'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          queriedAccountsCount: _json.containsKey('queriedAccountsCount')
              ? _json['queriedAccountsCount'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountCountErrors != null)
          'accountCountErrors': accountCountErrors!,
        if (accountCounts != null) 'accountCounts': accountCounts!,
        if (matchingAccountsCount != null)
          'matchingAccountsCount': matchingAccountsCount!,
        if (nonQueryableAccounts != null)
          'nonQueryableAccounts': nonQueryableAccounts!,
        if (queriedAccountsCount != null)
          'queriedAccountsCount': queriedAccountsCount!,
      };
}

/// Options for Groups exports.
typedef GroupsExportOptions = $ExportOptions;

/// Options for Chat exports.
typedef HangoutsChatExportOptions = $ExportOptions;

/// The Chat spaces to search
class HangoutsChatInfo {
  /// A list of Chat spaces IDs, as provided by the
  /// [Chat API](https://developers.google.com/hangouts/chat).
  core.List<core.String>? roomId;

  HangoutsChatInfo({
    this.roomId,
  });

  HangoutsChatInfo.fromJson(core.Map _json)
      : this(
          roomId: _json.containsKey('roomId')
              ? (_json['roomId'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (roomId != null) 'roomId': roomId!,
      };
}

/// Additional options for Google Chat search
class HangoutsChatOptions {
  /// For searches by account or organizational unit, set to **true** to include
  /// rooms.
  core.bool? includeRooms;

  HangoutsChatOptions({
    this.includeRooms,
  });

  HangoutsChatOptions.fromJson(core.Map _json)
      : this(
          includeRooms: _json.containsKey('includeRooms')
              ? _json['includeRooms'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (includeRooms != null) 'includeRooms': includeRooms!,
      };
}

/// An account covered by a hold.
///
/// This structure is immutable. It can be an individual account or a Google
/// Group, depending on the service. To work with Vault resources, the account
/// must have the
/// [required Vault privileges](https://support.google.com/vault/answer/2799699)
/// and access to the matter. To access a matter, the account must have created
/// the matter, have the matter shared with them, or have the **View All
/// Matters** privilege.
class HeldAccount {
  /// The account ID, as provided by the
  /// [Admin SDK](https://developers.google.com/admin-sdk/).
  core.String? accountId;

  /// The primary email address of the account.
  ///
  /// If used as an input, this takes precedence over **accountId**.
  core.String? email;

  /// The first name of the account holder.
  ///
  /// Output only.
  core.String? firstName;

  /// When the account was put on hold.
  ///
  /// Output only.
  core.String? holdTime;

  /// The last name of the account holder.
  ///
  /// Output only.
  core.String? lastName;

  HeldAccount({
    this.accountId,
    this.email,
    this.firstName,
    this.holdTime,
    this.lastName,
  });

  HeldAccount.fromJson(core.Map _json)
      : this(
          accountId: _json.containsKey('accountId')
              ? _json['accountId'] as core.String
              : null,
          email:
              _json.containsKey('email') ? _json['email'] as core.String : null,
          firstName: _json.containsKey('firstName')
              ? _json['firstName'] as core.String
              : null,
          holdTime: _json.containsKey('holdTime')
              ? _json['holdTime'] as core.String
              : null,
          lastName: _json.containsKey('lastName')
              ? _json['lastName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountId != null) 'accountId': accountId!,
        if (email != null) 'email': email!,
        if (firstName != null) 'firstName': firstName!,
        if (holdTime != null) 'holdTime': holdTime!,
        if (lastName != null) 'lastName': lastName!,
      };
}

/// Options for Drive holds.
class HeldDriveQuery {
  /// To include files in shared drives in the hold, set to **true**.
  core.bool? includeSharedDriveFiles;

  /// To include files in Team Drives in the hold, set to **true**.
  core.bool? includeTeamDriveFiles;

  HeldDriveQuery({
    this.includeSharedDriveFiles,
    this.includeTeamDriveFiles,
  });

  HeldDriveQuery.fromJson(core.Map _json)
      : this(
          includeSharedDriveFiles: _json.containsKey('includeSharedDriveFiles')
              ? _json['includeSharedDriveFiles'] as core.bool
              : null,
          includeTeamDriveFiles: _json.containsKey('includeTeamDriveFiles')
              ? _json['includeTeamDriveFiles'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (includeSharedDriveFiles != null)
          'includeSharedDriveFiles': includeSharedDriveFiles!,
        if (includeTeamDriveFiles != null)
          'includeTeamDriveFiles': includeTeamDriveFiles!,
      };
}

/// Query options for group holds.
typedef HeldGroupsQuery = $Query;

/// Options for Chat holds.
class HeldHangoutsChatQuery {
  /// To include messages in Chat spaces the user was a member of, set to
  /// **true**.
  core.bool? includeRooms;

  HeldHangoutsChatQuery({
    this.includeRooms,
  });

  HeldHangoutsChatQuery.fromJson(core.Map _json)
      : this(
          includeRooms: _json.containsKey('includeRooms')
              ? _json['includeRooms'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (includeRooms != null) 'includeRooms': includeRooms!,
      };
}

/// Query options for Gmail holds.
typedef HeldMailQuery = $Query;

/// The organizational unit covered by a hold.
///
/// This structure is immutable.
class HeldOrgUnit {
  /// When the organizational unit was put on hold.
  ///
  /// This property is immutable.
  core.String? holdTime;

  /// The organizational unit's immutable ID as provided by the
  /// [Admin SDK](https://developers.google.com/admin-sdk/).
  core.String? orgUnitId;

  HeldOrgUnit({
    this.holdTime,
    this.orgUnitId,
  });

  HeldOrgUnit.fromJson(core.Map _json)
      : this(
          holdTime: _json.containsKey('holdTime')
              ? _json['holdTime'] as core.String
              : null,
          orgUnitId: _json.containsKey('orgUnitId')
              ? _json['orgUnitId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (holdTime != null) 'holdTime': holdTime!,
        if (orgUnitId != null) 'orgUnitId': orgUnitId!,
      };
}

/// Options for Voice holds.
class HeldVoiceQuery {
  /// A list of data types covered by the hold.
  ///
  /// Should be non-empty. Order does not matter and duplicates are ignored.
  core.List<core.String>? coveredData;

  HeldVoiceQuery({
    this.coveredData,
  });

  HeldVoiceQuery.fromJson(core.Map _json)
      : this(
          coveredData: _json.containsKey('coveredData')
              ? (_json['coveredData'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (coveredData != null) 'coveredData': coveredData!,
      };
}

/// A hold.
///
/// A hold prevents the specified Google Workspace service from purging data for
/// specific accounts or all members of an organizational unit. To work with
/// Vault resources, the account must have the
/// [required Vault privileges](https://support.google.com/vault/answer/2799699)
/// and access to the matter. To access a matter, the account must have created
/// the matter, have the matter shared with them, or have the **View All
/// Matters** privilege.
class Hold {
  /// If set, the hold applies to the specified accounts and **orgUnit** must be
  /// empty.
  core.List<HeldAccount>? accounts;

  /// The service to be searched.
  /// Possible string values are:
  /// - "CORPUS_TYPE_UNSPECIFIED" : No service specified.
  /// - "DRIVE" : Drive, including Meet and Sites.
  /// - "MAIL" : For search, Gmail and classic Hangouts. For holds, Gmail only.
  /// - "GROUPS" : Groups.
  /// - "HANGOUTS_CHAT" : For search, Google Chat only. For holds, Google Chat
  /// and classic Hangouts.
  /// - "VOICE" : Google Voice.
  core.String? corpus;

  /// The unique immutable ID of the hold.
  ///
  /// Assigned during creation.
  core.String? holdId;

  /// The name of the hold.
  core.String? name;

  /// If set, the hold applies to all members of the organizational unit and
  /// **accounts** must be empty.
  ///
  /// This property is mutable. For Groups holds, set **accounts**.
  HeldOrgUnit? orgUnit;

  /// Service-specific options.
  ///
  /// If set, **CorpusQuery** must match **CorpusType**.
  CorpusQuery? query;

  /// The last time this hold was modified.
  core.String? updateTime;

  Hold({
    this.accounts,
    this.corpus,
    this.holdId,
    this.name,
    this.orgUnit,
    this.query,
    this.updateTime,
  });

  Hold.fromJson(core.Map _json)
      : this(
          accounts: _json.containsKey('accounts')
              ? (_json['accounts'] as core.List)
                  .map((value) => HeldAccount.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          corpus: _json.containsKey('corpus')
              ? _json['corpus'] as core.String
              : null,
          holdId: _json.containsKey('holdId')
              ? _json['holdId'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          orgUnit: _json.containsKey('orgUnit')
              ? HeldOrgUnit.fromJson(
                  _json['orgUnit'] as core.Map<core.String, core.dynamic>)
              : null,
          query: _json.containsKey('query')
              ? CorpusQuery.fromJson(
                  _json['query'] as core.Map<core.String, core.dynamic>)
              : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accounts != null) 'accounts': accounts!,
        if (corpus != null) 'corpus': corpus!,
        if (holdId != null) 'holdId': holdId!,
        if (name != null) 'name': name!,
        if (orgUnit != null) 'orgUnit': orgUnit!,
        if (query != null) 'query': query!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// The exports for a matter.
class ListExportsResponse {
  /// The list of exports.
  core.List<Export>? exports;

  /// Page token to retrieve the next page of results in the list.
  core.String? nextPageToken;

  ListExportsResponse({
    this.exports,
    this.nextPageToken,
  });

  ListExportsResponse.fromJson(core.Map _json)
      : this(
          exports: _json.containsKey('exports')
              ? (_json['exports'] as core.List)
                  .map((value) => Export.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (exports != null) 'exports': exports!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Returns a list of the accounts covered by a hold.
class ListHeldAccountsResponse {
  /// The held accounts on a hold.
  core.List<HeldAccount>? accounts;

  ListHeldAccountsResponse({
    this.accounts,
  });

  ListHeldAccountsResponse.fromJson(core.Map _json)
      : this(
          accounts: _json.containsKey('accounts')
              ? (_json['accounts'] as core.List)
                  .map((value) => HeldAccount.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accounts != null) 'accounts': accounts!,
      };
}

/// The holds for a matter.
class ListHoldsResponse {
  /// The list of holds.
  core.List<Hold>? holds;

  /// Page token to retrieve the next page of results in the list.
  ///
  /// If this is empty, then there are no more holds to list.
  core.String? nextPageToken;

  ListHoldsResponse({
    this.holds,
    this.nextPageToken,
  });

  ListHoldsResponse.fromJson(core.Map _json)
      : this(
          holds: _json.containsKey('holds')
              ? (_json['holds'] as core.List)
                  .map((value) => Hold.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (holds != null) 'holds': holds!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Provides the list of matters.
class ListMattersResponse {
  /// List of matters.
  core.List<Matter>? matters;

  /// Page token to retrieve the next page of results in the list.
  core.String? nextPageToken;

  ListMattersResponse({
    this.matters,
    this.nextPageToken,
  });

  ListMattersResponse.fromJson(core.Map _json)
      : this(
          matters: _json.containsKey('matters')
              ? (_json['matters'] as core.List)
                  .map((value) => Matter.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (matters != null) 'matters': matters!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// The response message for Operations.ListOperations.
class ListOperationsResponse {
  /// The standard List next-page token.
  core.String? nextPageToken;

  /// A list of operations that matches the specified filter in the request.
  core.List<Operation>? operations;

  ListOperationsResponse({
    this.nextPageToken,
    this.operations,
  });

  ListOperationsResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          operations: _json.containsKey('operations')
              ? (_json['operations'] as core.List)
                  .map((value) => Operation.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (operations != null) 'operations': operations!,
      };
}

/// Definition of the response for method ListSaveQuery.
class ListSavedQueriesResponse {
  /// Page token to retrieve the next page of results in the list.
  ///
  /// If this is empty, then there are no more saved queries to list.
  core.String? nextPageToken;

  /// List of saved queries.
  core.List<SavedQuery>? savedQueries;

  ListSavedQueriesResponse({
    this.nextPageToken,
    this.savedQueries,
  });

  ListSavedQueriesResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          savedQueries: _json.containsKey('savedQueries')
              ? (_json['savedQueries'] as core.List)
                  .map((value) => SavedQuery.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (savedQueries != null) 'savedQueries': savedQueries!,
      };
}

/// Gmail and classic Hangouts-specific count metrics.
class MailCountResult {
  /// Errors occurred when querying these accounts.
  core.List<AccountCountError>? accountCountErrors;

  /// Subtotal count per matching account that have more than zero messages.
  core.List<AccountCount>? accountCounts;

  /// Total number of accounts that can be queried and have more than zero
  /// messages.
  core.String? matchingAccountsCount;

  /// When **DataScope** is **HELD_DATA**, the number of accounts in the request
  /// that are not queried because they are not on hold.
  ///
  /// For other data scopes, this field is not set.
  core.List<core.String>? nonQueryableAccounts;

  /// Total number of accounts involved in this count operation.
  core.String? queriedAccountsCount;

  MailCountResult({
    this.accountCountErrors,
    this.accountCounts,
    this.matchingAccountsCount,
    this.nonQueryableAccounts,
    this.queriedAccountsCount,
  });

  MailCountResult.fromJson(core.Map _json)
      : this(
          accountCountErrors: _json.containsKey('accountCountErrors')
              ? (_json['accountCountErrors'] as core.List)
                  .map((value) => AccountCountError.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          accountCounts: _json.containsKey('accountCounts')
              ? (_json['accountCounts'] as core.List)
                  .map((value) => AccountCount.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          matchingAccountsCount: _json.containsKey('matchingAccountsCount')
              ? _json['matchingAccountsCount'] as core.String
              : null,
          nonQueryableAccounts: _json.containsKey('nonQueryableAccounts')
              ? (_json['nonQueryableAccounts'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          queriedAccountsCount: _json.containsKey('queriedAccountsCount')
              ? _json['queriedAccountsCount'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountCountErrors != null)
          'accountCountErrors': accountCountErrors!,
        if (accountCounts != null) 'accountCounts': accountCounts!,
        if (matchingAccountsCount != null)
          'matchingAccountsCount': matchingAccountsCount!,
        if (nonQueryableAccounts != null)
          'nonQueryableAccounts': nonQueryableAccounts!,
        if (queriedAccountsCount != null)
          'queriedAccountsCount': queriedAccountsCount!,
      };
}

/// Options for Gmail exports.
class MailExportOptions {
  /// The file format for exported messages.
  /// Possible string values are:
  /// - "EXPORT_FORMAT_UNSPECIFIED" : No export format specified.
  /// - "MBOX" : Export as MBOX.
  /// - "PST" : Export as PST.
  core.String? exportFormat;

  /// To export confidential mode content, set to **true**.
  core.bool? showConfidentialModeContent;

  MailExportOptions({
    this.exportFormat,
    this.showConfidentialModeContent,
  });

  MailExportOptions.fromJson(core.Map _json)
      : this(
          exportFormat: _json.containsKey('exportFormat')
              ? _json['exportFormat'] as core.String
              : null,
          showConfidentialModeContent:
              _json.containsKey('showConfidentialModeContent')
                  ? _json['showConfidentialModeContent'] as core.bool
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (exportFormat != null) 'exportFormat': exportFormat!,
        if (showConfidentialModeContent != null)
          'showConfidentialModeContent': showConfidentialModeContent!,
      };
}

/// Additional options for Gmail search
class MailOptions {
  /// Set to **true** to exclude drafts.
  core.bool? excludeDrafts;

  MailOptions({
    this.excludeDrafts,
  });

  MailOptions.fromJson(core.Map _json)
      : this(
          excludeDrafts: _json.containsKey('excludeDrafts')
              ? _json['excludeDrafts'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (excludeDrafts != null) 'excludeDrafts': excludeDrafts!,
      };
}

/// Represents a matter.
///
/// To work with Vault resources, the account must have the
/// [required Vault privileges](https://support.google.com/vault/answer/2799699)
/// and access to the matter. To access a matter, the account must have created
/// the matter, have the matter shared with them, or have the **View All
/// Matters** privilege.
class Matter {
  /// An optional description for the matter.
  core.String? description;

  /// The matter ID, which is generated by the server.
  ///
  /// Leave blank when creating a matter.
  core.String? matterId;

  /// Lists the users and their permission for the matter.
  ///
  /// Currently there is no programmer defined limit on the number of
  /// permissions a matter can have.
  core.List<MatterPermission>? matterPermissions;

  /// The name of the matter.
  core.String? name;

  /// The state of the matter.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The matter has no specified state.
  /// - "OPEN" : The matter is open.
  /// - "CLOSED" : The matter is closed.
  /// - "DELETED" : The matter is deleted.
  core.String? state;

  Matter({
    this.description,
    this.matterId,
    this.matterPermissions,
    this.name,
    this.state,
  });

  Matter.fromJson(core.Map _json)
      : this(
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          matterId: _json.containsKey('matterId')
              ? _json['matterId'] as core.String
              : null,
          matterPermissions: _json.containsKey('matterPermissions')
              ? (_json['matterPermissions'] as core.List)
                  .map((value) => MatterPermission.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (matterId != null) 'matterId': matterId!,
        if (matterPermissions != null) 'matterPermissions': matterPermissions!,
        if (name != null) 'name': name!,
        if (state != null) 'state': state!,
      };
}

/// Users can be matter owners or collaborators.
///
/// Each matter has only one owner. All others users who can access the matter
/// are collaborators. When an account is purged, its corresponding
/// MatterPermission resources cease to exist.
class MatterPermission {
  /// The account ID, as provided by the
  /// [Admin SDK](https://developers.google.com/admin-sdk/).
  core.String? accountId;

  /// The user's role for the matter.
  /// Possible string values are:
  /// - "ROLE_UNSPECIFIED" : No role assigned.
  /// - "COLLABORATOR" : A collaborator on the matter.
  /// - "OWNER" : The owner of the matter.
  core.String? role;

  MatterPermission({
    this.accountId,
    this.role,
  });

  MatterPermission.fromJson(core.Map _json)
      : this(
          accountId: _json.containsKey('accountId')
              ? _json['accountId'] as core.String
              : null,
          role: _json.containsKey('role') ? _json['role'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountId != null) 'accountId': accountId!,
        if (role != null) 'role': role!,
      };
}

/// This resource represents a long-running operation that is the result of a
/// network API call.
class Operation {
  /// If the value is `false`, it means the operation is still in progress.
  ///
  /// If `true`, the operation is completed, and either `error` or `response` is
  /// available.
  core.bool? done;

  /// The error result of the operation in case of failure or cancellation.
  Status? error;

  /// Service-specific metadata associated with the operation.
  ///
  /// It typically contains progress information and common metadata such as
  /// create time. Some services might not provide such metadata. Any method
  /// that returns a long-running operation should document the metadata type,
  /// if any.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? metadata;

  /// The server-assigned name, which is only unique within the same service
  /// that originally returns it.
  ///
  /// If you use the default HTTP mapping, the `name` should be a resource name
  /// ending with `operations/{unique_id}`.
  core.String? name;

  /// The normal response of the operation in case of success.
  ///
  /// If the original method returns no data on success, such as `Delete`, the
  /// response is `google.protobuf.Empty`. If the original method is standard
  /// `Get`/`Create`/`Update`, the response should be the resource. For other
  /// methods, the response should have the type `XxxResponse`, where `Xxx` is
  /// the original method name. For example, if the original method name is
  /// `TakeSnapshot()`, the inferred response type is `TakeSnapshotResponse`.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? response;

  Operation({
    this.done,
    this.error,
    this.metadata,
    this.name,
    this.response,
  });

  Operation.fromJson(core.Map _json)
      : this(
          done: _json.containsKey('done') ? _json['done'] as core.bool : null,
          error: _json.containsKey('error')
              ? Status.fromJson(
                  _json['error'] as core.Map<core.String, core.dynamic>)
              : null,
          metadata: _json.containsKey('metadata')
              ? _json['metadata'] as core.Map<core.String, core.dynamic>
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          response: _json.containsKey('response')
              ? _json['response'] as core.Map<core.String, core.dynamic>
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (done != null) 'done': done!,
        if (error != null) 'error': error!,
        if (metadata != null) 'metadata': metadata!,
        if (name != null) 'name': name!,
        if (response != null) 'response': response!,
      };
}

/// The organizational unit to search
class OrgUnitInfo {
  /// The name of the organizational unit to search, as provided by the
  /// [Admin SDK Directory API](https://developers.google.com/admin-sdk/directory/).
  core.String? orgUnitId;

  OrgUnitInfo({
    this.orgUnitId,
  });

  OrgUnitInfo.fromJson(core.Map _json)
      : this(
          orgUnitId: _json.containsKey('orgUnitId')
              ? _json['orgUnitId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (orgUnitId != null) 'orgUnitId': orgUnitId!,
      };
}

/// The query definition used for search and export.
class Query {
  /// Required when **SearchMethod** is **ACCOUNT**.
  AccountInfo? accountInfo;

  /// The Google Workspace service to search.
  /// Possible string values are:
  /// - "CORPUS_TYPE_UNSPECIFIED" : No service specified.
  /// - "DRIVE" : Drive, including Meet and Sites.
  /// - "MAIL" : For search, Gmail and classic Hangouts. For holds, Gmail only.
  /// - "GROUPS" : Groups.
  /// - "HANGOUTS_CHAT" : For search, Google Chat only. For holds, Google Chat
  /// and classic Hangouts.
  /// - "VOICE" : Google Voice.
  core.String? corpus;

  /// The data source to search.
  /// Possible string values are:
  /// - "DATA_SCOPE_UNSPECIFIED" : No data source specified.
  /// - "ALL_DATA" : All available data.
  /// - "HELD_DATA" : Only data on hold.
  /// - "UNPROCESSED_DATA" : Only data not yet processed by Vault. (Gmail and
  /// Groups only)
  core.String? dataScope;

  /// Set Drive search-specific options.
  DriveOptions? driveOptions;

  /// The end time for the search query.
  ///
  /// Specify in GMT. The value is rounded to 12 AM on the specified date.
  core.String? endTime;

  /// Required when **SearchMethod** is **ROOM**.
  ///
  /// (read-only)
  HangoutsChatInfo? hangoutsChatInfo;

  /// Set Chat search-specific options.
  ///
  /// (read-only)
  HangoutsChatOptions? hangoutsChatOptions;

  /// Set Gmail search-specific options.
  MailOptions? mailOptions;

  /// The entity to search.
  ///
  /// This field replaces **searchMethod** to support shared drives. When
  /// **searchMethod** is **TEAM_DRIVE**, the response of this field is
  /// **SHARED_DRIVE**.
  /// Possible string values are:
  /// - "SEARCH_METHOD_UNSPECIFIED" : A search method must be specified or else
  /// it is rejected.
  /// - "ACCOUNT" : Search the data of the accounts specified in
  /// [AccountInfo](https://developers.google.com/vault/reference/rest/v1/Query#accountinfo).
  /// - "ORG_UNIT" : Search the data of all accounts in the organizational unit
  /// specified in
  /// [OrgUnitInfo](https://developers.google.com/vault/reference/rest/v1/Query#orgunitinfo).
  /// - "TEAM_DRIVE" : Search the data in the Team Drive specified in
  /// **team_drive_info**.
  /// - "ENTIRE_ORG" : Search the data of all accounts in the organization.
  /// Supported only for Gmail. When specified, you don't need to specify
  /// **AccountInfo** or **OrgUnitInfo**.
  /// - "ROOM" : Search messages in the Chat spaces specified in
  /// [HangoutsChatInfo](https://developers.google.com/vault/reference/rest/v1/Query#hangoutschatinfo).
  /// - "SHARED_DRIVE" : Search the files in the shared drives specified in
  /// [SharedDriveInfo](https://developers.devsite.corp.google.com/vault/reference/rest/v1/Query#shareddriveinfo).
  core.String? method;

  /// Required when **SearchMethod** is **ORG_UNIT**.
  OrgUnitInfo? orgUnitInfo;

  /// The search method to use.
  /// Possible string values are:
  /// - "SEARCH_METHOD_UNSPECIFIED" : A search method must be specified or else
  /// it is rejected.
  /// - "ACCOUNT" : Search the data of the accounts specified in
  /// [AccountInfo](https://developers.google.com/vault/reference/rest/v1/Query#accountinfo).
  /// - "ORG_UNIT" : Search the data of all accounts in the organizational unit
  /// specified in
  /// [OrgUnitInfo](https://developers.google.com/vault/reference/rest/v1/Query#orgunitinfo).
  /// - "TEAM_DRIVE" : Search the data in the Team Drive specified in
  /// **team_drive_info**.
  /// - "ENTIRE_ORG" : Search the data of all accounts in the organization.
  /// Supported only for Gmail. When specified, you don't need to specify
  /// **AccountInfo** or **OrgUnitInfo**.
  /// - "ROOM" : Search messages in the Chat spaces specified in
  /// [HangoutsChatInfo](https://developers.google.com/vault/reference/rest/v1/Query#hangoutschatinfo).
  /// - "SHARED_DRIVE" : Search the files in the shared drives specified in
  /// [SharedDriveInfo](https://developers.devsite.corp.google.com/vault/reference/rest/v1/Query#shareddriveinfo).
  core.String? searchMethod;

  /// Required when **SearchMethod** is **SHARED_DRIVE**.
  SharedDriveInfo? sharedDriveInfo;

  /// The start time for the search query.
  ///
  /// Specify in GMT. The value is rounded to 12 AM on the specified date.
  core.String? startTime;

  /// Required when **SearchMethod** is **TEAM_DRIVE**.
  TeamDriveInfo? teamDriveInfo;

  /// Service-specific
  /// [search operators](https://support.google.com/vault/answer/2474474) to
  /// filter search results.
  core.String? terms;

  /// The time zone name.
  ///
  /// It should be an IANA TZ name, such as "America/Los_Angeles". For a list of
  /// time zone names, see
  /// [Time Zone](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones).
  /// For more information about how Vault uses time zones, see
  /// [the Vault help center](https://support.google.com/vault/answer/6092995#time).
  core.String? timeZone;

  /// Set Voice search-specific options.
  VoiceOptions? voiceOptions;

  Query({
    this.accountInfo,
    this.corpus,
    this.dataScope,
    this.driveOptions,
    this.endTime,
    this.hangoutsChatInfo,
    this.hangoutsChatOptions,
    this.mailOptions,
    this.method,
    this.orgUnitInfo,
    this.searchMethod,
    this.sharedDriveInfo,
    this.startTime,
    this.teamDriveInfo,
    this.terms,
    this.timeZone,
    this.voiceOptions,
  });

  Query.fromJson(core.Map _json)
      : this(
          accountInfo: _json.containsKey('accountInfo')
              ? AccountInfo.fromJson(
                  _json['accountInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          corpus: _json.containsKey('corpus')
              ? _json['corpus'] as core.String
              : null,
          dataScope: _json.containsKey('dataScope')
              ? _json['dataScope'] as core.String
              : null,
          driveOptions: _json.containsKey('driveOptions')
              ? DriveOptions.fromJson(
                  _json['driveOptions'] as core.Map<core.String, core.dynamic>)
              : null,
          endTime: _json.containsKey('endTime')
              ? _json['endTime'] as core.String
              : null,
          hangoutsChatInfo: _json.containsKey('hangoutsChatInfo')
              ? HangoutsChatInfo.fromJson(_json['hangoutsChatInfo']
                  as core.Map<core.String, core.dynamic>)
              : null,
          hangoutsChatOptions: _json.containsKey('hangoutsChatOptions')
              ? HangoutsChatOptions.fromJson(_json['hangoutsChatOptions']
                  as core.Map<core.String, core.dynamic>)
              : null,
          mailOptions: _json.containsKey('mailOptions')
              ? MailOptions.fromJson(
                  _json['mailOptions'] as core.Map<core.String, core.dynamic>)
              : null,
          method: _json.containsKey('method')
              ? _json['method'] as core.String
              : null,
          orgUnitInfo: _json.containsKey('orgUnitInfo')
              ? OrgUnitInfo.fromJson(
                  _json['orgUnitInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          searchMethod: _json.containsKey('searchMethod')
              ? _json['searchMethod'] as core.String
              : null,
          sharedDriveInfo: _json.containsKey('sharedDriveInfo')
              ? SharedDriveInfo.fromJson(_json['sharedDriveInfo']
                  as core.Map<core.String, core.dynamic>)
              : null,
          startTime: _json.containsKey('startTime')
              ? _json['startTime'] as core.String
              : null,
          teamDriveInfo: _json.containsKey('teamDriveInfo')
              ? TeamDriveInfo.fromJson(
                  _json['teamDriveInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          terms:
              _json.containsKey('terms') ? _json['terms'] as core.String : null,
          timeZone: _json.containsKey('timeZone')
              ? _json['timeZone'] as core.String
              : null,
          voiceOptions: _json.containsKey('voiceOptions')
              ? VoiceOptions.fromJson(
                  _json['voiceOptions'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountInfo != null) 'accountInfo': accountInfo!,
        if (corpus != null) 'corpus': corpus!,
        if (dataScope != null) 'dataScope': dataScope!,
        if (driveOptions != null) 'driveOptions': driveOptions!,
        if (endTime != null) 'endTime': endTime!,
        if (hangoutsChatInfo != null) 'hangoutsChatInfo': hangoutsChatInfo!,
        if (hangoutsChatOptions != null)
          'hangoutsChatOptions': hangoutsChatOptions!,
        if (mailOptions != null) 'mailOptions': mailOptions!,
        if (method != null) 'method': method!,
        if (orgUnitInfo != null) 'orgUnitInfo': orgUnitInfo!,
        if (searchMethod != null) 'searchMethod': searchMethod!,
        if (sharedDriveInfo != null) 'sharedDriveInfo': sharedDriveInfo!,
        if (startTime != null) 'startTime': startTime!,
        if (teamDriveInfo != null) 'teamDriveInfo': teamDriveInfo!,
        if (terms != null) 'terms': terms!,
        if (timeZone != null) 'timeZone': timeZone!,
        if (voiceOptions != null) 'voiceOptions': voiceOptions!,
      };
}

/// Remove a list of accounts from a hold.
class RemoveHeldAccountsRequest {
  /// The account IDs of the accounts to remove from the hold.
  core.List<core.String>? accountIds;

  RemoveHeldAccountsRequest({
    this.accountIds,
  });

  RemoveHeldAccountsRequest.fromJson(core.Map _json)
      : this(
          accountIds: _json.containsKey('accountIds')
              ? (_json['accountIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountIds != null) 'accountIds': accountIds!,
      };
}

/// Response for batch delete held accounts.
class RemoveHeldAccountsResponse {
  /// A list of statuses for the deleted accounts.
  ///
  /// Results have the same order as the request.
  core.List<Status>? statuses;

  RemoveHeldAccountsResponse({
    this.statuses,
  });

  RemoveHeldAccountsResponse.fromJson(core.Map _json)
      : this(
          statuses: _json.containsKey('statuses')
              ? (_json['statuses'] as core.List)
                  .map((value) => Status.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (statuses != null) 'statuses': statuses!,
      };
}

/// Remove an account as a matter collaborator.
class RemoveMatterPermissionsRequest {
  /// The account ID.
  core.String? accountId;

  RemoveMatterPermissionsRequest({
    this.accountId,
  });

  RemoveMatterPermissionsRequest.fromJson(core.Map _json)
      : this(
          accountId: _json.containsKey('accountId')
              ? _json['accountId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountId != null) 'accountId': accountId!,
      };
}

/// Reopen a matter by ID.
typedef ReopenMatterRequest = $Empty;

/// Response to a ReopenMatterRequest.
class ReopenMatterResponse {
  /// The updated matter, with state **OPEN**.
  Matter? matter;

  ReopenMatterResponse({
    this.matter,
  });

  ReopenMatterResponse.fromJson(core.Map _json)
      : this(
          matter: _json.containsKey('matter')
              ? Matter.fromJson(
                  _json['matter'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (matter != null) 'matter': matter!,
      };
}

/// The definition of a saved query.
///
/// To work with Vault resources, the account must have the
/// [required Vault privileges](https://support.google.com/vault/answer/2799699)
/// and access to the matter. To access a matter, the account must have created
/// the matter, have the matter shared with them, or have the **View All
/// Matters** privilege.
class SavedQuery {
  /// The server-generated timestamp when the saved query was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The name of the saved query.
  core.String? displayName;

  /// The matter ID of the matter the saved query is saved in.
  ///
  /// The server does not use this field during create and always uses matter ID
  /// in the URL.
  ///
  /// Output only.
  core.String? matterId;

  /// The search parameters of the saved query.
  Query? query;

  /// A unique identifier for the saved query.
  core.String? savedQueryId;

  SavedQuery({
    this.createTime,
    this.displayName,
    this.matterId,
    this.query,
    this.savedQueryId,
  });

  SavedQuery.fromJson(core.Map _json)
      : this(
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          matterId: _json.containsKey('matterId')
              ? _json['matterId'] as core.String
              : null,
          query: _json.containsKey('query')
              ? Query.fromJson(
                  _json['query'] as core.Map<core.String, core.dynamic>)
              : null,
          savedQueryId: _json.containsKey('savedQueryId')
              ? _json['savedQueryId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (displayName != null) 'displayName': displayName!,
        if (matterId != null) 'matterId': matterId!,
        if (query != null) 'query': query!,
        if (savedQueryId != null) 'savedQueryId': savedQueryId!,
      };
}

/// The shared drives to search
class SharedDriveInfo {
  /// A list of shared drive IDs, as provided by the
  /// [Drive API](https://developers.google.com/drive).
  core.List<core.String>? sharedDriveIds;

  SharedDriveInfo({
    this.sharedDriveIds,
  });

  SharedDriveInfo.fromJson(core.Map _json)
      : this(
          sharedDriveIds: _json.containsKey('sharedDriveIds')
              ? (_json['sharedDriveIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (sharedDriveIds != null) 'sharedDriveIds': sharedDriveIds!,
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

/// Team Drives to search
class TeamDriveInfo {
  /// List of Team Drive IDs, as provided by the
  /// [Drive API](https://developers.google.com/drive).
  core.List<core.String>? teamDriveIds;

  TeamDriveInfo({
    this.teamDriveIds,
  });

  TeamDriveInfo.fromJson(core.Map _json)
      : this(
          teamDriveIds: _json.containsKey('teamDriveIds')
              ? (_json['teamDriveIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (teamDriveIds != null) 'teamDriveIds': teamDriveIds!,
      };
}

/// Undelete a matter by ID.
typedef UndeleteMatterRequest = $Empty;

/// User's information.
class UserInfo {
  /// The displayed name of the user.
  core.String? displayName;

  /// The email address of the user.
  core.String? email;

  UserInfo({
    this.displayName,
    this.email,
  });

  UserInfo.fromJson(core.Map _json)
      : this(
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          email:
              _json.containsKey('email') ? _json['email'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (email != null) 'email': email!,
      };
}

/// The options for Voice exports.
class VoiceExportOptions {
  /// The file format for exported text messages.
  /// Possible string values are:
  /// - "EXPORT_FORMAT_UNSPECIFIED" : No export format specified.
  /// - "MBOX" : Export as MBOX.
  /// - "PST" : Export as PST.
  core.String? exportFormat;

  VoiceExportOptions({
    this.exportFormat,
  });

  VoiceExportOptions.fromJson(core.Map _json)
      : this(
          exportFormat: _json.containsKey('exportFormat')
              ? _json['exportFormat'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (exportFormat != null) 'exportFormat': exportFormat!,
      };
}

/// Additional options for Voice search
class VoiceOptions {
  /// Datatypes to search
  core.List<core.String>? coveredData;

  VoiceOptions({
    this.coveredData,
  });

  VoiceOptions.fromJson(core.Map _json)
      : this(
          coveredData: _json.containsKey('coveredData')
              ? (_json['coveredData'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (coveredData != null) 'coveredData': coveredData!,
      };
}
