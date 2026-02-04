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

/// CSS API - v1
///
/// Programmatically manage your Comparison Shopping Service (CSS) account data
/// at scale.
///
/// For more information, see
/// <https://developers.google.com/comparison-shopping-services/api/overview>
///
/// Create an instance of [CssApi] to access these resources:
///
/// - [AccountsResource]
///   - [AccountsCssProductInputsResource]
///   - [AccountsCssProductsResource]
///   - [AccountsLabelsResource]
///   - [AccountsQuotasResource]
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

/// Programmatically manage your Comparison Shopping Service (CSS) account data
/// at scale.
class CssApi {
  /// Manage your product listings and accounts for Google Shopping
  static const contentScope = 'https://www.googleapis.com/auth/content';

  final commons.ApiRequester _requester;

  AccountsResource get accounts => AccountsResource(_requester);

  CssApi(
    http.Client client, {
    core.String rootUrl = 'https://css.googleapis.com/',
    core.String servicePath = '',
  }) : _requester = commons.ApiRequester(
         client,
         rootUrl,
         servicePath,
         requestHeaders,
       );
}

class AccountsResource {
  final commons.ApiRequester _requester;

  AccountsCssProductInputsResource get cssProductInputs =>
      AccountsCssProductInputsResource(_requester);
  AccountsCssProductsResource get cssProducts =>
      AccountsCssProductsResource(_requester);
  AccountsLabelsResource get labels => AccountsLabelsResource(_requester);
  AccountsQuotasResource get quotas => AccountsQuotasResource(_requester);

  AccountsResource(commons.ApiRequester client) : _requester = client;

  /// Retrieves a single CSS/MC account by ID.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the managed CSS/MC account. Format:
  /// accounts/{account}
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [parent] - Optional. Only required when retrieving MC account information.
  /// The CSS domain that is the parent resource of the MC account. Format:
  /// accounts/{account}
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Account].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Account> get(
    core.String name, {
    core.String? parent,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'parent': ?parent == null ? null : [parent],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Account.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all the accounts under the specified CSS account ID, and optionally
  /// filters by label ID and account name.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent account. Must be a CSS group or domain.
  /// Format: accounts/{account}
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [fullName] - If set, only the MC accounts with the given name (case
  /// sensitive) will be returned.
  ///
  /// [labelId] - If set, only the MC accounts with the given label ID will be
  /// returned.
  ///
  /// [pageSize] - Optional. The maximum number of accounts to return. The
  /// service may return fewer than this value. If unspecified, at most 50
  /// accounts will be returned. The maximum value is 100; values above 100 will
  /// be coerced to 100.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListChildAccounts` call. Provide this to retrieve the subsequent page.
  /// When paginating, all other parameters provided to `ListChildAccounts` must
  /// match the call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListChildAccountsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListChildAccountsResponse> listChildAccounts(
    core.String parent, {
    core.String? fullName,
    core.String? labelId,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fullName': ?fullName == null ? null : [fullName],
      'labelId': ?labelId == null ? null : [labelId],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + ':listChildAccounts';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListChildAccountsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates labels assigned to CSS/MC accounts by a CSS domain.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The label resource name. Format: accounts/{account}
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Account].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Account> updateLabels(
    UpdateAccountLabelsRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':updateLabels';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Account.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class AccountsCssProductInputsResource {
  final commons.ApiRequester _requester;

  AccountsCssProductInputsResource(commons.ApiRequester client)
    : _requester = client;

  /// Deletes a CSS Product input from your CSS Center account.
  ///
  /// After a delete it may take several minutes until the input is no longer
  /// available.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the CSS product input resource to delete.
  /// Format: accounts/{account}/cssProductInputs/{css_product_input}, where the
  /// last section `css_product_input` consists of 3 parts:
  /// contentLanguage~feedLabel~offerId. Example:
  /// accounts/123/cssProductInputs/de~DE~rawProvidedId123
  /// Value must have pattern `^accounts/\[^/\]+/cssProductInputs/\[^/\]+$`.
  ///
  /// [supplementalFeedId] - The Content API Supplemental Feed ID. The field
  /// must not be set if the action applies to a primary feed. If the field is
  /// set, then product action applies to a supplemental feed instead of primary
  /// Content API feed.
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
    core.String? supplementalFeedId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'supplementalFeedId': ?supplementalFeedId == null
          ? null
          : [supplementalFeedId],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Uploads a CssProductInput to your CSS Center account.
  ///
  /// If an input with the same contentLanguage, identity, feedLabel and feedId
  /// already exists, this method replaces that entry. After inserting,
  /// updating, or deleting a CSS Product input, it may take several minutes
  /// before the processed CSS Product can be retrieved.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The account where this CSS Product will be inserted.
  /// Format: accounts/{account}
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [feedId] - Optional. DEPRECATED. Feed id is not required for CSS Products.
  /// The primary or supplemental feed id. If CSS Product already exists and
  /// feed id provided is different, then the CSS Product will be moved to a new
  /// feed. Note: For now, CSSs do not need to provide feed ids as we create
  /// feeds on the fly. We do not have supplemental feed support for CSS
  /// Products yet.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CssProductInput].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CssProductInput> insert(
    CssProductInput request,
    core.String parent, {
    core.String? feedId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'feedId': ?feedId == null ? null : [feedId],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/cssProductInputs:insert';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return CssProductInput.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the existing Css Product input in your CSS Center account.
  ///
  /// After inserting, updating, or deleting a CSS Product input, it may take
  /// several minutes before the processed Css Product can be retrieved.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. The name of the CSS Product input. Format:
  /// `accounts/{account}/cssProductInputs/{css_product_input}`, where the last
  /// section `css_product_input` consists of 3 parts:
  /// contentLanguage~feedLabel~offerId. Example:
  /// accounts/123/cssProductInputs/de~DE~rawProvidedId123
  /// Value must have pattern `^accounts/\[^/\]+/cssProductInputs/\[^/\]+$`.
  ///
  /// [updateMask] - The list of CSS product attributes to be updated. If the
  /// update mask is omitted, then it is treated as implied field mask
  /// equivalent to all fields that are populated (have a non-empty value).
  /// Attributes specified in the update mask without a value specified in the
  /// body will be deleted from the CSS product. Update mask can only be
  /// specified for top level fields in attributes and custom attributes. To
  /// specify the update mask for custom attributes you need to add the
  /// `custom_attribute.` prefix. Providing special "*" value for full CSS
  /// product replacement is not supported.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CssProductInput].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CssProductInput> patch(
    CssProductInput request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return CssProductInput.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class AccountsCssProductsResource {
  final commons.ApiRequester _requester;

  AccountsCssProductsResource(commons.ApiRequester client)
    : _requester = client;

  /// Retrieves the processed CSS Product from your CSS Center account.
  ///
  /// After inserting, updating, or deleting a product input, it may take
  /// several minutes before the updated final product can be retrieved.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the CSS product to retrieve. Format:
  /// `accounts/{account}/cssProducts/{css_product}`
  /// Value must have pattern `^accounts/\[^/\]+/cssProducts/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CssProduct].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CssProduct> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return CssProduct.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists the processed CSS Products in your CSS Center account.
  ///
  /// The response might contain fewer items than specified by pageSize. Rely on
  /// pageToken to determine if there are more items to be requested. After
  /// inserting, updating, or deleting a CSS product input, it may take several
  /// minutes before the updated processed CSS product can be retrieved.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The account/domain to list processed CSS Products
  /// for. Format: accounts/{account}
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of CSS Products to return. The service may
  /// return fewer than this value. The maximum value is 1000; values above 1000
  /// will be coerced to 1000. If unspecified, the maximum number of CSS
  /// products will be returned.
  ///
  /// [pageToken] - A page token, received from a previous `ListCssProducts`
  /// call. Provide this to retrieve the subsequent page. When paginating, all
  /// other parameters provided to `ListCssProducts` must match the call that
  /// provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListCssProductsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListCssProductsResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/cssProducts';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListCssProductsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class AccountsLabelsResource {
  final commons.ApiRequester _requester;

  AccountsLabelsResource(commons.ApiRequester client) : _requester = client;

  /// Creates a new label, not assigned to any account.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent account. Format: accounts/{account}
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AccountLabel].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AccountLabel> create(
    AccountLabel request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/labels';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return AccountLabel.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes a label and removes it from all accounts to which it was assigned.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the label to delete. Format:
  /// accounts/{account}/labels/{label}
  /// Value must have pattern `^accounts/\[^/\]+/labels/\[^/\]+$`.
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
  async.Future<Empty> delete(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists the labels owned by an account.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent account. Format: accounts/{account}
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of labels to return. The service may
  /// return fewer than this value. If unspecified, at most 50 labels will be
  /// returned. The maximum value is 1000; values above 1000 will be coerced to
  /// 1000.
  ///
  /// [pageToken] - A page token, received from a previous `ListAccountLabels`
  /// call. Provide this to retrieve the subsequent page. When paginating, all
  /// other parameters provided to `ListAccountLabels` must match the call that
  /// provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListAccountLabelsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAccountLabelsResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/labels';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListAccountLabelsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates a label.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. The resource name of the label. Format:
  /// accounts/{account}/labels/{label}
  /// Value must have pattern `^accounts/\[^/\]+/labels/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AccountLabel].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AccountLabel> patch(
    AccountLabel request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return AccountLabel.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class AccountsQuotasResource {
  final commons.ApiRequester _requester;

  AccountsQuotasResource(commons.ApiRequester client) : _requester = client;

  /// Lists the daily call quota and usage per group for your CSS Center
  /// account.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The CSS account that owns the collection of method
  /// quotas and resources. In most cases, this is the CSS domain. Format:
  /// accounts/{account}
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. The maximum number of quotas to return in the
  /// response, used for paging. Defaults to 500; values above 1000 will be
  /// coerced to 1000.
  ///
  /// [pageToken] - Optional. Token (if provided) to retrieve the subsequent
  /// page. All other parameters must match the original call that provided the
  /// page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListQuotaGroupsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListQuotaGroupsResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/quotas';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListQuotaGroupsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

/// Information about CSS/MC account.
class Account {
  /// The type of this account.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "ACCOUNT_TYPE_UNSPECIFIED" : Unknown account type.
  /// - "CSS_GROUP" : CSS group account.
  /// - "CSS_DOMAIN" : CSS domain account.
  /// - "MC_PRIMARY_CSS_MCA" : MC Primary CSS MCA account.
  /// - "MC_CSS_MCA" : MC CSS MCA account.
  /// - "MC_MARKETPLACE_MCA" : MC Marketplace MCA account.
  /// - "MC_OTHER_MCA" : MC Other MCA account.
  /// - "MC_STANDALONE" : MC Standalone account.
  /// - "MC_MCA_SUBACCOUNT" : MC MCA sub-account.
  core.String? accountType;

  /// Automatically created label IDs assigned to the MC account by CSS Center.
  core.List<core.String>? automaticLabelIds;

  /// The CSS/MC account's short display name.
  core.String? displayName;

  /// The CSS/MC account's full name.
  ///
  /// Output only. Immutable.
  core.String? fullName;

  /// The CSS/MC account's homepage.
  ///
  /// Output only. Immutable.
  core.String? homepageUri;

  /// Manually created label IDs assigned to the CSS/MC account by a CSS parent
  /// account.
  core.List<core.String>? labelIds;

  /// The label resource name.
  ///
  /// Format: accounts/{account}
  core.String? name;

  /// The CSS/MC account's parent resource.
  ///
  /// CSS group for CSS domains; CSS domain for MC accounts. Returned only if
  /// the user has access to the parent account. Note: For MC sub-accounts, this
  /// is also the CSS domain that is the parent resource of the MCA account,
  /// since we are effectively flattening the hierarchy."
  core.String? parent;

  Account({
    this.accountType,
    this.automaticLabelIds,
    this.displayName,
    this.fullName,
    this.homepageUri,
    this.labelIds,
    this.name,
    this.parent,
  });

  Account.fromJson(core.Map json_)
    : this(
        accountType: json_['accountType'] as core.String?,
        automaticLabelIds: (json_['automaticLabelIds'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        displayName: json_['displayName'] as core.String?,
        fullName: json_['fullName'] as core.String?,
        homepageUri: json_['homepageUri'] as core.String?,
        labelIds: (json_['labelIds'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        name: json_['name'] as core.String?,
        parent: json_['parent'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final accountType = this.accountType;
    final automaticLabelIds = this.automaticLabelIds;
    final displayName = this.displayName;
    final fullName = this.fullName;
    final homepageUri = this.homepageUri;
    final labelIds = this.labelIds;
    final name = this.name;
    final parent = this.parent;
    return {
      'accountType': ?accountType,
      'automaticLabelIds': ?automaticLabelIds,
      'displayName': ?displayName,
      'fullName': ?fullName,
      'homepageUri': ?homepageUri,
      'labelIds': ?labelIds,
      'name': ?name,
      'parent': ?parent,
    };
  }
}

/// Label assigned by CSS domain or CSS group to one of its sub-accounts.
class AccountLabel {
  /// The ID of account this label belongs to.
  ///
  /// Output only.
  core.String? accountId;

  /// The description of this label.
  core.String? description;

  /// The display name of this label.
  core.String? displayName;

  /// The ID of the label.
  ///
  /// Output only.
  core.String? labelId;

  /// The type of this label.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "LABEL_TYPE_UNSPECIFIED" : Unknown label type.
  /// - "MANUAL" : Indicates that the label was created manually.
  /// - "AUTOMATIC" : Indicates that the label was created automatically by CSS
  /// Center.
  core.String? labelType;

  /// Identifier.
  ///
  /// The resource name of the label. Format: accounts/{account}/labels/{label}
  core.String? name;

  AccountLabel({
    this.accountId,
    this.description,
    this.displayName,
    this.labelId,
    this.labelType,
    this.name,
  });

  AccountLabel.fromJson(core.Map json_)
    : this(
        accountId: json_['accountId'] as core.String?,
        description: json_['description'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        labelId: json_['labelId'] as core.String?,
        labelType: json_['labelType'] as core.String?,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final accountId = this.accountId;
    final description = this.description;
    final displayName = this.displayName;
    final labelId = this.labelId;
    final labelType = this.labelType;
    final name = this.name;
    return {
      'accountId': ?accountId,
      'description': ?description,
      'displayName': ?displayName,
      'labelId': ?labelId,
      'labelType': ?labelType,
      'name': ?name,
    };
  }
}

/// Attributes for CSS Product.
class Attributes {
  /// Additional URL of images of the item.
  core.List<core.String>? additionalImageLinks;

  /// Set to true if the item is targeted towards adults.
  core.bool? adult;

  /// Target age group of the item.
  core.String? ageGroup;

  /// Product Related Attributes.\[14-36\] Brand of the item.
  core.String? brand;

  /// A list of certificates claimed by the CSS for the given product.
  core.List<Certification>? certifications;

  /// Color of the item.
  core.String? color;

  /// Allows advertisers to override the item URL when the product is shown
  /// within the context of Product Ads.
  core.String? cppAdsRedirect;

  /// URL directly linking to your the Product Detail Page of the CSS.
  core.String? cppLink;

  /// URL for the mobile-optimized version of the Product Detail Page of the
  /// CSS.
  core.String? cppMobileLink;

  /// Custom label 0 for custom grouping of items in a Shopping campaign.
  core.String? customLabel0;

  /// Custom label 1 for custom grouping of items in a Shopping campaign.
  core.String? customLabel1;

  /// Custom label 2 for custom grouping of items in a Shopping campaign.
  core.String? customLabel2;

  /// Custom label 3 for custom grouping of items in a Shopping campaign.
  core.String? customLabel3;

  /// Custom label 4 for custom grouping of items in a Shopping campaign.
  core.String? customLabel4;

  /// Description of the item.
  core.String? description;

  /// The list of destinations to exclude for this target (corresponds to
  /// unchecked check boxes in Merchant Center).
  core.List<core.String>? excludedDestinations;

  /// Date on which the item should expire, as specified upon insertion, in
  /// [ISO 8601](http://en.wikipedia.org/wiki/ISO_8601) format.
  ///
  /// The actual expiration date is exposed in `productstatuses` as
  /// [googleExpirationDate](https://support.google.com/merchants/answer/6324499)
  /// and might be earlier if `expirationDate` is too far in the future. Note:
  /// It may take 2+ days from the expiration date for the item to actually get
  /// deleted.
  core.String? expirationDate;

  /// Target gender of the item.
  core.String? gender;

  /// Google's category of the item (see
  /// [Google product taxonomy](https://support.google.com/merchants/answer/1705911)).
  ///
  /// When querying products, this field will contain the user provided value.
  /// There is currently no way to get back the auto assigned google product
  /// categories through the API.
  core.String? googleProductCategory;

  /// Global Trade Item Number
  /// ([GTIN](https://support.google.com/merchants/answer/188494#gtin)) of the
  /// item.
  core.String? gtin;

  /// Condition of the headline offer.
  core.String? headlineOfferCondition;

  /// Number and amount of installments to pay for an item.
  HeadlineOfferInstallment? headlineOfferInstallment;

  /// Link to the headline offer.
  core.String? headlineOfferLink;

  /// Mobile Link to the headline offer.
  core.String? headlineOfferMobileLink;

  /// Headline Price of the CSS Product.
  Price? headlineOfferPrice;

  /// Headline Price of the CSS Product.
  Price? headlineOfferShippingPrice;

  /// Number of periods (months or years) and amount of payment per period for
  /// an item with an associated subscription contract.
  HeadlineOfferSubscriptionCost? headlineOfferSubscriptionCost;

  /// High Price of the CSS Product.
  Price? highPrice;

  /// URL of an image of the item.
  core.String? imageLink;

  /// The list of destinations to include for this target (corresponds to
  /// checked check boxes in Merchant Center).
  ///
  /// Default destinations are always included unless provided in
  /// `excludedDestinations`.
  core.List<core.String>? includedDestinations;

  /// Whether the item is a merchant-defined bundle.
  ///
  /// A bundle is a custom grouping of different products sold by a merchant for
  /// a single price.
  core.bool? isBundle;

  /// Shared identifier for all variants of the same product.
  core.String? itemGroupId;

  /// Low Price of the CSS Product.
  Price? lowPrice;

  /// The material of which the item is made.
  core.String? material;

  /// Manufacturer Part Number
  /// ([MPN](https://support.google.com/merchants/answer/188494#mpn)) of the
  /// item.
  core.String? mpn;

  /// The number of identical products in a merchant-defined multipack.
  core.String? multipack;

  /// The number of CSS Products.
  core.String? numberOfOffers;

  /// The item's pattern (e.g. polka dots).
  core.String? pattern;

  /// Publication of this item will be temporarily paused.
  core.String? pause;

  /// Technical specification or additional product details.
  core.List<ProductDetail>? productDetails;

  /// The height of the product in the units provided.
  ///
  /// The value must be between 0 (exclusive) and 3000 (inclusive).
  ProductDimension? productHeight;

  /// Bullet points describing the most relevant highlights of a product.
  core.List<core.String>? productHighlights;

  /// The length of the product in the units provided.
  ///
  /// The value must be between 0 (exclusive) and 3000 (inclusive).
  ProductDimension? productLength;

  /// Categories of the item (formatted as in
  /// [products data specification](https://support.google.com/merchants/answer/6324406)).
  core.List<core.String>? productTypes;

  /// The weight of the product in the units provided.
  ///
  /// The value must be between 0 (exclusive) and 2000 (inclusive).
  ProductWeight? productWeight;

  /// The width of the product in the units provided.
  ///
  /// The value must be between 0 (exclusive) and 3000 (inclusive).
  ProductDimension? productWidth;

  /// Size of the item.
  ///
  /// Only one value is allowed. For variants with different sizes, insert a
  /// separate product for each size with the same `itemGroupId` value (see
  /// \[https://support.google.com/merchants/answer/6324492\](size definition)).
  core.String? size;

  /// System in which the size is specified.
  ///
  /// Recommended for apparel items.
  core.String? sizeSystem;

  /// The cut of the item.
  ///
  /// It can be used to represent combined size types for apparel items. Maximum
  /// two of size types can be provided (see
  /// \[https://support.google.com/merchants/answer/6324497\](size type)).
  core.List<core.String>? sizeTypes;

  /// Title of the item.
  core.String? title;

  Attributes({
    this.additionalImageLinks,
    this.adult,
    this.ageGroup,
    this.brand,
    this.certifications,
    this.color,
    this.cppAdsRedirect,
    this.cppLink,
    this.cppMobileLink,
    this.customLabel0,
    this.customLabel1,
    this.customLabel2,
    this.customLabel3,
    this.customLabel4,
    this.description,
    this.excludedDestinations,
    this.expirationDate,
    this.gender,
    this.googleProductCategory,
    this.gtin,
    this.headlineOfferCondition,
    this.headlineOfferInstallment,
    this.headlineOfferLink,
    this.headlineOfferMobileLink,
    this.headlineOfferPrice,
    this.headlineOfferShippingPrice,
    this.headlineOfferSubscriptionCost,
    this.highPrice,
    this.imageLink,
    this.includedDestinations,
    this.isBundle,
    this.itemGroupId,
    this.lowPrice,
    this.material,
    this.mpn,
    this.multipack,
    this.numberOfOffers,
    this.pattern,
    this.pause,
    this.productDetails,
    this.productHeight,
    this.productHighlights,
    this.productLength,
    this.productTypes,
    this.productWeight,
    this.productWidth,
    this.size,
    this.sizeSystem,
    this.sizeTypes,
    this.title,
  });

  Attributes.fromJson(core.Map json_)
    : this(
        additionalImageLinks: (json_['additionalImageLinks'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        adult: json_['adult'] as core.bool?,
        ageGroup: json_['ageGroup'] as core.String?,
        brand: json_['brand'] as core.String?,
        certifications: (json_['certifications'] as core.List?)
            ?.map(
              (value) => Certification.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        color: json_['color'] as core.String?,
        cppAdsRedirect: json_['cppAdsRedirect'] as core.String?,
        cppLink: json_['cppLink'] as core.String?,
        cppMobileLink: json_['cppMobileLink'] as core.String?,
        customLabel0: json_['customLabel0'] as core.String?,
        customLabel1: json_['customLabel1'] as core.String?,
        customLabel2: json_['customLabel2'] as core.String?,
        customLabel3: json_['customLabel3'] as core.String?,
        customLabel4: json_['customLabel4'] as core.String?,
        description: json_['description'] as core.String?,
        excludedDestinations: (json_['excludedDestinations'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        expirationDate: json_['expirationDate'] as core.String?,
        gender: json_['gender'] as core.String?,
        googleProductCategory: json_['googleProductCategory'] as core.String?,
        gtin: json_['gtin'] as core.String?,
        headlineOfferCondition: json_['headlineOfferCondition'] as core.String?,
        headlineOfferInstallment: json_.containsKey('headlineOfferInstallment')
            ? HeadlineOfferInstallment.fromJson(
                json_['headlineOfferInstallment']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        headlineOfferLink: json_['headlineOfferLink'] as core.String?,
        headlineOfferMobileLink:
            json_['headlineOfferMobileLink'] as core.String?,
        headlineOfferPrice: json_.containsKey('headlineOfferPrice')
            ? Price.fromJson(
                json_['headlineOfferPrice']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        headlineOfferShippingPrice:
            json_.containsKey('headlineOfferShippingPrice')
            ? Price.fromJson(
                json_['headlineOfferShippingPrice']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        headlineOfferSubscriptionCost:
            json_.containsKey('headlineOfferSubscriptionCost')
            ? HeadlineOfferSubscriptionCost.fromJson(
                json_['headlineOfferSubscriptionCost']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        highPrice: json_.containsKey('highPrice')
            ? Price.fromJson(
                json_['highPrice'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        imageLink: json_['imageLink'] as core.String?,
        includedDestinations: (json_['includedDestinations'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        isBundle: json_['isBundle'] as core.bool?,
        itemGroupId: json_['itemGroupId'] as core.String?,
        lowPrice: json_.containsKey('lowPrice')
            ? Price.fromJson(
                json_['lowPrice'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        material: json_['material'] as core.String?,
        mpn: json_['mpn'] as core.String?,
        multipack: json_['multipack'] as core.String?,
        numberOfOffers: json_['numberOfOffers'] as core.String?,
        pattern: json_['pattern'] as core.String?,
        pause: json_['pause'] as core.String?,
        productDetails: (json_['productDetails'] as core.List?)
            ?.map(
              (value) => ProductDetail.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        productHeight: json_.containsKey('productHeight')
            ? ProductDimension.fromJson(
                json_['productHeight'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        productHighlights: (json_['productHighlights'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        productLength: json_.containsKey('productLength')
            ? ProductDimension.fromJson(
                json_['productLength'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        productTypes: (json_['productTypes'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        productWeight: json_.containsKey('productWeight')
            ? ProductWeight.fromJson(
                json_['productWeight'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        productWidth: json_.containsKey('productWidth')
            ? ProductDimension.fromJson(
                json_['productWidth'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        size: json_['size'] as core.String?,
        sizeSystem: json_['sizeSystem'] as core.String?,
        sizeTypes: (json_['sizeTypes'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        title: json_['title'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final additionalImageLinks = this.additionalImageLinks;
    final adult = this.adult;
    final ageGroup = this.ageGroup;
    final brand = this.brand;
    final certifications = this.certifications;
    final color = this.color;
    final cppAdsRedirect = this.cppAdsRedirect;
    final cppLink = this.cppLink;
    final cppMobileLink = this.cppMobileLink;
    final customLabel0 = this.customLabel0;
    final customLabel1 = this.customLabel1;
    final customLabel2 = this.customLabel2;
    final customLabel3 = this.customLabel3;
    final customLabel4 = this.customLabel4;
    final description = this.description;
    final excludedDestinations = this.excludedDestinations;
    final expirationDate = this.expirationDate;
    final gender = this.gender;
    final googleProductCategory = this.googleProductCategory;
    final gtin = this.gtin;
    final headlineOfferCondition = this.headlineOfferCondition;
    final headlineOfferInstallment = this.headlineOfferInstallment;
    final headlineOfferLink = this.headlineOfferLink;
    final headlineOfferMobileLink = this.headlineOfferMobileLink;
    final headlineOfferPrice = this.headlineOfferPrice;
    final headlineOfferShippingPrice = this.headlineOfferShippingPrice;
    final headlineOfferSubscriptionCost = this.headlineOfferSubscriptionCost;
    final highPrice = this.highPrice;
    final imageLink = this.imageLink;
    final includedDestinations = this.includedDestinations;
    final isBundle = this.isBundle;
    final itemGroupId = this.itemGroupId;
    final lowPrice = this.lowPrice;
    final material = this.material;
    final mpn = this.mpn;
    final multipack = this.multipack;
    final numberOfOffers = this.numberOfOffers;
    final pattern = this.pattern;
    final pause = this.pause;
    final productDetails = this.productDetails;
    final productHeight = this.productHeight;
    final productHighlights = this.productHighlights;
    final productLength = this.productLength;
    final productTypes = this.productTypes;
    final productWeight = this.productWeight;
    final productWidth = this.productWidth;
    final size = this.size;
    final sizeSystem = this.sizeSystem;
    final sizeTypes = this.sizeTypes;
    final title = this.title;
    return {
      'additionalImageLinks': ?additionalImageLinks,
      'adult': ?adult,
      'ageGroup': ?ageGroup,
      'brand': ?brand,
      'certifications': ?certifications,
      'color': ?color,
      'cppAdsRedirect': ?cppAdsRedirect,
      'cppLink': ?cppLink,
      'cppMobileLink': ?cppMobileLink,
      'customLabel0': ?customLabel0,
      'customLabel1': ?customLabel1,
      'customLabel2': ?customLabel2,
      'customLabel3': ?customLabel3,
      'customLabel4': ?customLabel4,
      'description': ?description,
      'excludedDestinations': ?excludedDestinations,
      'expirationDate': ?expirationDate,
      'gender': ?gender,
      'googleProductCategory': ?googleProductCategory,
      'gtin': ?gtin,
      'headlineOfferCondition': ?headlineOfferCondition,
      'headlineOfferInstallment': ?headlineOfferInstallment,
      'headlineOfferLink': ?headlineOfferLink,
      'headlineOfferMobileLink': ?headlineOfferMobileLink,
      'headlineOfferPrice': ?headlineOfferPrice,
      'headlineOfferShippingPrice': ?headlineOfferShippingPrice,
      'headlineOfferSubscriptionCost': ?headlineOfferSubscriptionCost,
      'highPrice': ?highPrice,
      'imageLink': ?imageLink,
      'includedDestinations': ?includedDestinations,
      'isBundle': ?isBundle,
      'itemGroupId': ?itemGroupId,
      'lowPrice': ?lowPrice,
      'material': ?material,
      'mpn': ?mpn,
      'multipack': ?multipack,
      'numberOfOffers': ?numberOfOffers,
      'pattern': ?pattern,
      'pause': ?pause,
      'productDetails': ?productDetails,
      'productHeight': ?productHeight,
      'productHighlights': ?productHighlights,
      'productLength': ?productLength,
      'productTypes': ?productTypes,
      'productWeight': ?productWeight,
      'productWidth': ?productWidth,
      'size': ?size,
      'sizeSystem': ?sizeSystem,
      'sizeTypes': ?sizeTypes,
      'title': ?title,
    };
  }
}

/// The certification for the product.
///
/// Use the this attribute to describe certifications, such as energy efficiency
/// ratings, associated with a product.
class Certification {
  /// The authority or certification body responsible for issuing the
  /// certification.
  ///
  /// At this time, the most common value is "EC" or “European_Commission” for
  /// energy labels in the EU.
  core.String? authority;

  /// The code of the certification.
  ///
  /// For example, for the EPREL certificate with the link
  /// https://eprel.ec.europa.eu/screen/product/dishwashers2019/123456 the code
  /// is 123456. The code is required for European Energy Labels.
  core.String? code;

  /// The name of the certification.
  ///
  /// At this time, the most common value is "EPREL", which represents energy
  /// efficiency certifications in the EU European Registry for Energy Labeling
  /// (EPREL) database.
  core.String? name;

  Certification({this.authority, this.code, this.name});

  Certification.fromJson(core.Map json_)
    : this(
        authority: json_['authority'] as core.String?,
        code: json_['code'] as core.String?,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final authority = this.authority;
    final code = this.code;
    final name = this.name;
    return {'authority': ?authority, 'code': ?code, 'name': ?name};
  }
}

/// The processed CSS Product.
class CssProduct {
  /// A list of product attributes.
  ///
  /// Output only.
  Attributes? attributes;

  /// The two-letter \[ISO 639-1\](http://en.wikipedia.org/wiki/ISO_639-1)
  /// language code for the product.
  ///
  /// Output only.
  core.String? contentLanguage;

  /// The status of a product, data validation issues, that is, information
  /// about a product computed asynchronously.
  ///
  /// Output only.
  CssProductStatus? cssProductStatus;

  /// A list of custom (CSS-provided) attributes.
  ///
  /// It can also be used to submit any attribute of the feed specification in
  /// its generic form (for example, `{ "name": "size type", "value": "regular"
  /// }`). This is useful for submitting attributes not explicitly exposed by
  /// the API, such as additional attributes used for Buy on Google.
  ///
  /// Output only.
  core.List<CustomAttribute>? customAttributes;

  /// The feed label for the product.
  ///
  /// Output only.
  core.String? feedLabel;

  /// The name of the CSS Product.
  ///
  /// Format: `"accounts/{account}/cssProducts/{css_product}"`
  core.String? name;

  /// Your unique raw identifier for the product.
  ///
  /// Output only.
  core.String? rawProvidedId;

  CssProduct({
    this.attributes,
    this.contentLanguage,
    this.cssProductStatus,
    this.customAttributes,
    this.feedLabel,
    this.name,
    this.rawProvidedId,
  });

  CssProduct.fromJson(core.Map json_)
    : this(
        attributes: json_.containsKey('attributes')
            ? Attributes.fromJson(
                json_['attributes'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        contentLanguage: json_['contentLanguage'] as core.String?,
        cssProductStatus: json_.containsKey('cssProductStatus')
            ? CssProductStatus.fromJson(
                json_['cssProductStatus']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        customAttributes: (json_['customAttributes'] as core.List?)
            ?.map(
              (value) => CustomAttribute.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        feedLabel: json_['feedLabel'] as core.String?,
        name: json_['name'] as core.String?,
        rawProvidedId: json_['rawProvidedId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final attributes = this.attributes;
    final contentLanguage = this.contentLanguage;
    final cssProductStatus = this.cssProductStatus;
    final customAttributes = this.customAttributes;
    final feedLabel = this.feedLabel;
    final name = this.name;
    final rawProvidedId = this.rawProvidedId;
    return {
      'attributes': ?attributes,
      'contentLanguage': ?contentLanguage,
      'cssProductStatus': ?cssProductStatus,
      'customAttributes': ?customAttributes,
      'feedLabel': ?feedLabel,
      'name': ?name,
      'rawProvidedId': ?rawProvidedId,
    };
  }
}

/// This resource represents input data you submit for a CSS Product, not the
/// processed CSS Product that you see in CSS Center, in Shopping Ads, or across
/// Google surfaces.
class CssProductInput {
  /// A list of CSS Product attributes.
  Attributes? attributes;

  /// The two-letter \[ISO 639-1\](http://en.wikipedia.org/wiki/ISO_639-1)
  /// language code for the CSS Product.
  ///
  /// Required.
  core.String? contentLanguage;

  /// A list of custom (CSS-provided) attributes.
  ///
  /// It can also be used for submitting any attribute of the feed specification
  /// in its generic form (for example: `{ "name": "size type", "value":
  /// "regular" }`). This is useful for submitting attributes not explicitly
  /// exposed by the API, such as additional attributes used for Buy on Google.
  core.List<CustomAttribute>? customAttributes;

  /// The
  /// [feed label](https://developers.google.com/shopping-content/guides/products/feed-labels)
  /// for the CSS Product.
  ///
  /// Feed Label is synonymous to "target country" and hence should always be a
  /// valid region code. For example: 'DE' for Germany, 'FR' for France.
  ///
  /// Required.
  core.String? feedLabel;

  /// The name of the processed CSS Product.
  ///
  /// Format: `accounts/{account}/cssProducts/{css_product}` "
  ///
  /// Output only.
  core.String? finalName;

  /// Use expiration_date instead.
  ///
  /// Represents the existing version (freshness) of the CSS Product, which can
  /// be used to preserve the right order when multiple updates are done at the
  /// same time. This field must not be set to the future time. If set, the
  /// update is prevented if a newer version of the item already exists in our
  /// system (that is the last update time of the existing CSS products is later
  /// than the freshness time set in the update). If the update happens, the
  /// last update time is then set to this freshness time. If not set, the
  /// update will not be prevented and the last update time will default to when
  /// this request was received by the CSS API. If the operation is prevented,
  /// the aborted exception will be thrown.
  ///
  /// Deprecated.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? freshnessTime;

  /// Identifier.
  ///
  /// The name of the CSS Product input. Format:
  /// `accounts/{account}/cssProductInputs/{css_product_input}`, where the last
  /// section `css_product_input` consists of 3 parts:
  /// contentLanguage~feedLabel~offerId. Example:
  /// accounts/123/cssProductInputs/de~DE~rawProvidedId123
  core.String? name;

  /// Your unique identifier for the CSS Product.
  ///
  /// This is the same for the CSS Product input and processed CSS Product. We
  /// only allow ids with alphanumerics, underscores and dashes. See the
  /// [products feed specification](https://support.google.com/merchants/answer/188494#id)
  /// for details.
  ///
  /// Required.
  core.String? rawProvidedId;

  CssProductInput({
    this.attributes,
    this.contentLanguage,
    this.customAttributes,
    this.feedLabel,
    this.finalName,
    this.freshnessTime,
    this.name,
    this.rawProvidedId,
  });

  CssProductInput.fromJson(core.Map json_)
    : this(
        attributes: json_.containsKey('attributes')
            ? Attributes.fromJson(
                json_['attributes'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        contentLanguage: json_['contentLanguage'] as core.String?,
        customAttributes: (json_['customAttributes'] as core.List?)
            ?.map(
              (value) => CustomAttribute.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        feedLabel: json_['feedLabel'] as core.String?,
        finalName: json_['finalName'] as core.String?,
        freshnessTime: json_['freshnessTime'] as core.String?,
        name: json_['name'] as core.String?,
        rawProvidedId: json_['rawProvidedId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final attributes = this.attributes;
    final contentLanguage = this.contentLanguage;
    final customAttributes = this.customAttributes;
    final feedLabel = this.feedLabel;
    final finalName = this.finalName;
    final freshnessTime = this.freshnessTime;
    final name = this.name;
    final rawProvidedId = this.rawProvidedId;
    return {
      'attributes': ?attributes,
      'contentLanguage': ?contentLanguage,
      'customAttributes': ?customAttributes,
      'feedLabel': ?feedLabel,
      'finalName': ?finalName,
      'freshnessTime': ?freshnessTime,
      'name': ?name,
      'rawProvidedId': ?rawProvidedId,
    };
  }
}

/// The status of the Css Product, data validation issues, that is, information
/// about the Css Product computed asynchronously.
class CssProductStatus {
  /// Date on which the item has been created, in
  /// [ISO 8601](http://en.wikipedia.org/wiki/ISO_8601) format.
  core.String? creationDate;

  /// The intended destinations for the product.
  core.List<DestinationStatus>? destinationStatuses;

  /// Date on which the item expires, in
  /// [ISO 8601](http://en.wikipedia.org/wiki/ISO_8601) format.
  core.String? googleExpirationDate;

  /// A list of all issues associated with the product.
  core.List<ItemLevelIssue>? itemLevelIssues;

  /// Date on which the item has been last updated, in
  /// [ISO 8601](http://en.wikipedia.org/wiki/ISO_8601) format.
  core.String? lastUpdateDate;

  CssProductStatus({
    this.creationDate,
    this.destinationStatuses,
    this.googleExpirationDate,
    this.itemLevelIssues,
    this.lastUpdateDate,
  });

  CssProductStatus.fromJson(core.Map json_)
    : this(
        creationDate: json_['creationDate'] as core.String?,
        destinationStatuses: (json_['destinationStatuses'] as core.List?)
            ?.map(
              (value) => DestinationStatus.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        googleExpirationDate: json_['googleExpirationDate'] as core.String?,
        itemLevelIssues: (json_['itemLevelIssues'] as core.List?)
            ?.map(
              (value) => ItemLevelIssue.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        lastUpdateDate: json_['lastUpdateDate'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final creationDate = this.creationDate;
    final destinationStatuses = this.destinationStatuses;
    final googleExpirationDate = this.googleExpirationDate;
    final itemLevelIssues = this.itemLevelIssues;
    final lastUpdateDate = this.lastUpdateDate;
    return {
      'creationDate': ?creationDate,
      'destinationStatuses': ?destinationStatuses,
      'googleExpirationDate': ?googleExpirationDate,
      'itemLevelIssues': ?itemLevelIssues,
      'lastUpdateDate': ?lastUpdateDate,
    };
  }
}

/// A message that represents custom attributes.
///
/// Exactly one of `value` or `group_values` must not be empty.
class CustomAttribute {
  /// Subattributes within this attribute group.
  ///
  /// If `group_values` is not empty, `value` must be empty.
  core.List<CustomAttribute>? groupValues;

  /// The name of the attribute.
  core.String? name;

  /// The value of the attribute.
  ///
  /// If `value` is not empty, `group_values` must be empty.
  core.String? value;

  CustomAttribute({this.groupValues, this.name, this.value});

  CustomAttribute.fromJson(core.Map json_)
    : this(
        groupValues: (json_['groupValues'] as core.List?)
            ?.map(
              (value) => CustomAttribute.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        name: json_['name'] as core.String?,
        value: json_['value'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final groupValues = this.groupValues;
    final name = this.name;
    final value = this.value;
    return {'groupValues': ?groupValues, 'name': ?name, 'value': ?value};
  }
}

/// The destination status of the product status.
class DestinationStatus {
  /// List of country codes (ISO 3166-1 alpha-2) where the CSS Product is
  /// approved.
  core.List<core.String>? approvedCountries;

  /// The name of the destination
  core.String? destination;

  /// List of country codes (ISO 3166-1 alpha-2) where the CSS Product is
  /// disapproved.
  core.List<core.String>? disapprovedCountries;

  /// List of country codes (ISO 3166-1 alpha-2) where the CSS Product is
  /// pending approval.
  core.List<core.String>? pendingCountries;

  DestinationStatus({
    this.approvedCountries,
    this.destination,
    this.disapprovedCountries,
    this.pendingCountries,
  });

  DestinationStatus.fromJson(core.Map json_)
    : this(
        approvedCountries: (json_['approvedCountries'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        destination: json_['destination'] as core.String?,
        disapprovedCountries: (json_['disapprovedCountries'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        pendingCountries: (json_['pendingCountries'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final approvedCountries = this.approvedCountries;
    final destination = this.destination;
    final disapprovedCountries = this.disapprovedCountries;
    final pendingCountries = this.pendingCountries;
    return {
      'approvedCountries': ?approvedCountries,
      'destination': ?destination,
      'disapprovedCountries': ?disapprovedCountries,
      'pendingCountries': ?pendingCountries,
    };
  }
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// A message that represents installment.
class HeadlineOfferInstallment {
  /// The amount the buyer has to pay per month.
  Price? amount;

  /// The up-front down payment amount the buyer has to pay.
  Price? downpayment;

  /// The number of installments the buyer has to pay.
  core.String? months;

  HeadlineOfferInstallment({this.amount, this.downpayment, this.months});

  HeadlineOfferInstallment.fromJson(core.Map json_)
    : this(
        amount: json_.containsKey('amount')
            ? Price.fromJson(
                json_['amount'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        downpayment: json_.containsKey('downpayment')
            ? Price.fromJson(
                json_['downpayment'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        months: json_['months'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final amount = this.amount;
    final downpayment = this.downpayment;
    final months = this.months;
    return {'amount': ?amount, 'downpayment': ?downpayment, 'months': ?months};
  }
}

/// The SubscriptionCost of the product.
class HeadlineOfferSubscriptionCost {
  /// The amount the buyer has to pay per subscription period.
  Price? amount;

  /// The type of subscription period.
  ///
  /// Supported values are: * "`month`" * "`year`"
  /// Possible string values are:
  /// - "SUBSCRIPTION_PERIOD_UNSPECIFIED" : Indicates that the subscription
  /// period is unspecified.
  /// - "MONTH" : Indicates that the subscription period is month.
  /// - "YEAR" : Indicates that the subscription period is year.
  core.String? period;

  /// The number of subscription periods the buyer has to pay.
  core.String? periodLength;

  HeadlineOfferSubscriptionCost({this.amount, this.period, this.periodLength});

  HeadlineOfferSubscriptionCost.fromJson(core.Map json_)
    : this(
        amount: json_.containsKey('amount')
            ? Price.fromJson(
                json_['amount'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        period: json_['period'] as core.String?,
        periodLength: json_['periodLength'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final amount = this.amount;
    final period = this.period;
    final periodLength = this.periodLength;
    return {
      'amount': ?amount,
      'period': ?period,
      'periodLength': ?periodLength,
    };
  }
}

/// The ItemLevelIssue of the product status.
class ItemLevelIssue {
  /// List of country codes (ISO 3166-1 alpha-2) where issue applies to the CSS
  /// Product.
  core.List<core.String>? applicableCountries;

  /// The attribute's name, if the issue is caused by a single attribute.
  core.String? attribute;

  /// The error code of the issue.
  core.String? code;

  /// A short issue description in English.
  core.String? description;

  /// The destination the issue applies to.
  core.String? destination;

  /// A detailed issue description in English.
  core.String? detail;

  /// The URL of a web page to help with resolving this issue.
  core.String? documentation;

  /// Whether the issue can be resolved by the merchant.
  core.String? resolution;

  /// How this issue affects serving of the CSS Product.
  core.String? servability;

  ItemLevelIssue({
    this.applicableCountries,
    this.attribute,
    this.code,
    this.description,
    this.destination,
    this.detail,
    this.documentation,
    this.resolution,
    this.servability,
  });

  ItemLevelIssue.fromJson(core.Map json_)
    : this(
        applicableCountries: (json_['applicableCountries'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        attribute: json_['attribute'] as core.String?,
        code: json_['code'] as core.String?,
        description: json_['description'] as core.String?,
        destination: json_['destination'] as core.String?,
        detail: json_['detail'] as core.String?,
        documentation: json_['documentation'] as core.String?,
        resolution: json_['resolution'] as core.String?,
        servability: json_['servability'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final applicableCountries = this.applicableCountries;
    final attribute = this.attribute;
    final code = this.code;
    final description = this.description;
    final destination = this.destination;
    final detail = this.detail;
    final documentation = this.documentation;
    final resolution = this.resolution;
    final servability = this.servability;
    return {
      'applicableCountries': ?applicableCountries,
      'attribute': ?attribute,
      'code': ?code,
      'description': ?description,
      'destination': ?destination,
      'detail': ?detail,
      'documentation': ?documentation,
      'resolution': ?resolution,
      'servability': ?servability,
    };
  }
}

/// Response message for the `ListAccountLabels` method.
class ListAccountLabelsResponse {
  /// The labels from the specified account.
  core.List<AccountLabel>? accountLabels;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  ListAccountLabelsResponse({this.accountLabels, this.nextPageToken});

  ListAccountLabelsResponse.fromJson(core.Map json_)
    : this(
        accountLabels: (json_['accountLabels'] as core.List?)
            ?.map(
              (value) => AccountLabel.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final accountLabels = this.accountLabels;
    final nextPageToken = this.nextPageToken;
    return {'accountLabels': ?accountLabels, 'nextPageToken': ?nextPageToken};
  }
}

/// Response message for the `ListChildAccounts` method.
class ListChildAccountsResponse {
  /// The CSS/MC accounts returned for the specified CSS parent account.
  core.List<Account>? accounts;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  ListChildAccountsResponse({this.accounts, this.nextPageToken});

  ListChildAccountsResponse.fromJson(core.Map json_)
    : this(
        accounts: (json_['accounts'] as core.List?)
            ?.map(
              (value) => Account.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final accounts = this.accounts;
    final nextPageToken = this.nextPageToken;
    return {'accounts': ?accounts, 'nextPageToken': ?nextPageToken};
  }
}

/// Response message for the ListCssProducts method.
class ListCssProductsResponse {
  /// The processed CSS products from the specified account.
  ///
  /// These are your processed CSS products after applying rules and
  /// supplemental feeds.
  core.List<CssProduct>? cssProducts;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  ListCssProductsResponse({this.cssProducts, this.nextPageToken});

  ListCssProductsResponse.fromJson(core.Map json_)
    : this(
        cssProducts: (json_['cssProducts'] as core.List?)
            ?.map(
              (value) => CssProduct.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final cssProducts = this.cssProducts;
    final nextPageToken = this.nextPageToken;
    return {'cssProducts': ?cssProducts, 'nextPageToken': ?nextPageToken};
  }
}

/// Response message for the ListMethodGroups method.
class ListQuotaGroupsResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// The methods, current quota usage and limits per each group.
  ///
  /// The quota is shared between all methods in the group. The groups are
  /// sorted in descending order based on quota_usage.
  core.List<QuotaGroup>? quotaGroups;

  ListQuotaGroupsResponse({this.nextPageToken, this.quotaGroups});

  ListQuotaGroupsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        quotaGroups: (json_['quotaGroups'] as core.List?)
            ?.map(
              (value) => QuotaGroup.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final quotaGroups = this.quotaGroups;
    return {'nextPageToken': ?nextPageToken, 'quotaGroups': ?quotaGroups};
  }
}

/// The method details per method in the CSS API.
class MethodDetails {
  /// The name of the method for example `cssproductsservice.listcssproducts`.
  ///
  /// Output only.
  core.String? method;

  /// The path for the method such as `v1/cssproductsservice.listcssproducts`.
  ///
  /// Output only.
  core.String? path;

  /// The sub-API that the method belongs to.
  ///
  /// In the CSS API, this is always `css`.
  ///
  /// Output only.
  core.String? subapi;

  /// The API version that the method belongs to.
  ///
  /// Output only.
  core.String? version;

  MethodDetails({this.method, this.path, this.subapi, this.version});

  MethodDetails.fromJson(core.Map json_)
    : this(
        method: json_['method'] as core.String?,
        path: json_['path'] as core.String?,
        subapi: json_['subapi'] as core.String?,
        version: json_['version'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final method = this.method;
    final path = this.path;
    final subapi = this.subapi;
    final version = this.version;
    return {
      'method': ?method,
      'path': ?path,
      'subapi': ?subapi,
      'version': ?version,
    };
  }
}

/// The price represented as a number and currency.
typedef Price = $Price;

/// The product details.
typedef ProductDetail = $ProductDetail;

/// The dimension of the product.
typedef ProductDimension = $ProductDimension;

/// The weight of the product.
typedef ProductWeight = $ProductWeight;

/// The group information for methods in the CSS API.
///
/// The quota is shared between all methods in the group. Even if none of the
/// methods within the group have usage the information for the group is
/// returned.
class QuotaGroup {
  /// List of all methods group quota applies to.
  ///
  /// Output only.
  core.List<MethodDetails>? methodDetails;

  /// Identifier.
  ///
  /// The resource name of the quota group. Format:
  /// accounts/{account}/quotas/{group} Example:
  /// `accounts/12345678/quotas/css-products-insert` Note: The {group} part is
  /// not guaranteed to follow a specific pattern.
  core.String? name;

  /// The maximum number of calls allowed per day for the group.
  ///
  /// Output only.
  core.String? quotaLimit;

  /// The maximum number of calls allowed per minute for the group.
  ///
  /// Output only.
  core.String? quotaMinuteLimit;

  /// The current quota usage, meaning the number of calls already made on a
  /// given day to the methods in the group.
  ///
  /// The daily quota limits reset at at 12:00 PM midday UTC.
  ///
  /// Output only.
  core.String? quotaUsage;

  QuotaGroup({
    this.methodDetails,
    this.name,
    this.quotaLimit,
    this.quotaMinuteLimit,
    this.quotaUsage,
  });

  QuotaGroup.fromJson(core.Map json_)
    : this(
        methodDetails: (json_['methodDetails'] as core.List?)
            ?.map(
              (value) => MethodDetails.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        name: json_['name'] as core.String?,
        quotaLimit: json_['quotaLimit'] as core.String?,
        quotaMinuteLimit: json_['quotaMinuteLimit'] as core.String?,
        quotaUsage: json_['quotaUsage'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final methodDetails = this.methodDetails;
    final name = this.name;
    final quotaLimit = this.quotaLimit;
    final quotaMinuteLimit = this.quotaMinuteLimit;
    final quotaUsage = this.quotaUsage;
    return {
      'methodDetails': ?methodDetails,
      'name': ?name,
      'quotaLimit': ?quotaLimit,
      'quotaMinuteLimit': ?quotaMinuteLimit,
      'quotaUsage': ?quotaUsage,
    };
  }
}

/// The request message for the `UpdateLabels` method.
class UpdateAccountLabelsRequest {
  /// The list of label IDs to overwrite the existing account label IDs.
  ///
  /// If the list is empty, all currently assigned label IDs will be deleted.
  core.List<core.String>? labelIds;

  /// Only required when updating MC account labels.
  ///
  /// The CSS domain that is the parent resource of the MC account. Format:
  /// accounts/{account}
  ///
  /// Optional.
  core.String? parent;

  UpdateAccountLabelsRequest({this.labelIds, this.parent});

  UpdateAccountLabelsRequest.fromJson(core.Map json_)
    : this(
        labelIds: (json_['labelIds'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        parent: json_['parent'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final labelIds = this.labelIds;
    final parent = this.parent;
    return {'labelIds': ?labelIds, 'parent': ?parent};
  }
}
