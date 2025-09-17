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

/// Merchant API - issueresolution_v1beta
///
/// Programmatically manage your Merchant Center Accounts.
///
/// For more information, see <https://developers.google.com/merchant/api>
///
/// Create an instance of [MerchantApi] to access these resources:
///
/// - [AccountsResource]
///   - [AccountsAggregateProductStatusesResource]
/// - [IssueresolutionResource]
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

/// Programmatically manage your Merchant Center Accounts.
class MerchantApi {
  /// Manage your product listings and accounts for Google Shopping
  static const contentScope = 'https://www.googleapis.com/auth/content';

  final commons.ApiRequester _requester;

  AccountsResource get accounts => AccountsResource(_requester);
  IssueresolutionResource get issueresolution =>
      IssueresolutionResource(_requester);

  MerchantApi(
    http.Client client, {
    core.String rootUrl = 'https://merchantapi.googleapis.com/',
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

  AccountsAggregateProductStatusesResource get aggregateProductStatuses =>
      AccountsAggregateProductStatusesResource(_requester);

  AccountsResource(commons.ApiRequester client) : _requester = client;
}

class AccountsAggregateProductStatusesResource {
  final commons.ApiRequester _requester;

  AccountsAggregateProductStatusesResource(commons.ApiRequester client)
    : _requester = client;

  /// Lists the `AggregateProductStatuses` resources for your merchant account.
  ///
  /// The response might contain fewer items than specified by `pageSize`. If
  /// `pageToken` was returned in previous request, it can be used to obtain
  /// additional results.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The account to list aggregate product statuses for.
  /// Format: `accounts/{account}`
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [filter] - Optional. A filter expression that filters the aggregate
  /// product statuses. Filtering is only supported by the `reporting_context`
  /// and `country` field. For example: `reporting_context = "SHOPPING_ADS" AND
  /// country = "US"`.
  ///
  /// [pageSize] - Optional. The maximum number of aggregate product statuses to
  /// return. The service may return fewer than this value. If unspecified, at
  /// most 25 aggregate product statuses are returned. The maximum value is 250;
  /// values above 250 are coerced to 250.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListAggregateProductStatuses` call. Provide this to retrieve the
  /// subsequent page. When paginating, all other parameters provided to
  /// `ListAggregateProductStatuses` must match the call that provided the page
  /// token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListAggregateProductStatusesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAggregateProductStatusesResponse> list(
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
        'issueresolution/v1beta/' +
        core.Uri.encodeFull('$parent') +
        '/aggregateProductStatuses';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListAggregateProductStatusesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class IssueresolutionResource {
  final commons.ApiRequester _requester;

  IssueresolutionResource(commons.ApiRequester client) : _requester = client;

  /// Provide a list of business's account issues with an issue resolution
  /// content and available actions.
  ///
  /// This content and actions are meant to be rendered and shown in third-party
  /// applications.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The account to fetch issues for. Format:
  /// `accounts/{account}`
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [languageCode] - Optional. The \[IETF
  /// BCP-47\](https://tools.ietf.org/html/bcp47) language code used to localize
  /// issue resolution content. If not set, the result will be in default
  /// language `en-US`.
  ///
  /// [timeZone] - Optional. The [IANA](https://www.iana.org/time-zones)
  /// timezone used to localize times in an issue resolution content. For
  /// example 'America/Los_Angeles'. If not set, results will use as a default
  /// UTC.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RenderAccountIssuesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RenderAccountIssuesResponse> renderaccountissues(
    RenderIssuesRequestPayload request,
    core.String name, {
    core.String? languageCode,
    core.String? timeZone,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (languageCode != null) 'languageCode': [languageCode],
      if (timeZone != null) 'timeZone': [timeZone],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'issueresolution/v1beta/' +
        core.Uri.encodeFull('$name') +
        ':renderaccountissues';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return RenderAccountIssuesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Provide a list of issues for business's product with an issue resolution
  /// content and available actions.
  ///
  /// This content and actions are meant to be rendered and shown in third-party
  /// applications.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the product to fetch issues for. Format:
  /// `accounts/{account}/products/{product}`
  /// Value must have pattern `^accounts/\[^/\]+/products/\[^/\]+$`.
  ///
  /// [languageCode] - Optional. The \[IETF
  /// BCP-47\](https://tools.ietf.org/html/bcp47) language code used to localize
  /// an issue resolution content. If not set, the result will be in default
  /// language `en-US`.
  ///
  /// [timeZone] - Optional. The [IANA](https://www.iana.org/time-zones)
  /// timezone used to localize times in an issue resolution content. For
  /// example 'America/Los_Angeles'. If not set, results will use as a default
  /// UTC.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RenderProductIssuesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RenderProductIssuesResponse> renderproductissues(
    RenderIssuesRequestPayload request,
    core.String name, {
    core.String? languageCode,
    core.String? timeZone,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (languageCode != null) 'languageCode': [languageCode],
      if (timeZone != null) 'timeZone': [timeZone],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'issueresolution/v1beta/' +
        core.Uri.encodeFull('$name') +
        ':renderproductissues';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return RenderProductIssuesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Start an action.
  ///
  /// The action can be requested by a business in third-party application.
  /// Before the business can request the action, the third-party application
  /// needs to show them action specific content and display a user input form.
  /// The action can be successfully started only once all `required` inputs are
  /// provided. If any `required` input is missing, or invalid value was
  /// provided, the service will return 400 error. Validation errors will
  /// contain Ids for all problematic field together with translated, human
  /// readable error messages that can be shown to the user.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The business's account that is triggering the action.
  /// Format: `accounts/{account}`
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [languageCode] - Optional. Language code
  /// [IETF BCP 47 syntax](https://tools.ietf.org/html/bcp47) used to localize
  /// the response. If not set, the result will be in default language `en-US`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TriggerActionResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TriggerActionResponse> triggeraction(
    TriggerActionPayload request,
    core.String name, {
    core.String? languageCode,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (languageCode != null) 'languageCode': [languageCode],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'issueresolution/v1beta/' +
        core.Uri.encodeFull('$name') +
        ':triggeraction';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return TriggerActionResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

/// An actionable step that can be executed to solve the issue.
class Action {
  /// Action implemented and performed in (your) third-party application.
  ///
  /// The application should point the business to the place, where they can
  /// access the corresponding functionality or provide instructions, if the
  /// specific functionality is not available.
  BuiltInSimpleAction? builtinSimpleAction;

  /// Action implemented and performed in (your) third-party application.
  ///
  /// The application needs to show an additional content and input form to the
  /// business as specified for given action. They can trigger the action only
  /// when they provided all required inputs.
  BuiltInUserInputAction? builtinUserInputAction;

  /// Label of the action button.
  core.String? buttonLabel;

  /// Action that is implemented and performed outside of (your) third-party
  /// application.
  ///
  /// The application needs to redirect the business to the external location
  /// where they can perform the action.
  ExternalAction? externalAction;

  /// Controlling whether the button is active or disabled.
  ///
  /// The value is 'false' when the action was already requested or is not
  /// available. If the action is not available then a reason will be present.
  /// If (your) third-party application shows a disabled button for action that
  /// is not available, then it should also show reasons.
  core.bool? isAvailable;

  /// List of reasons why the action is not available.
  ///
  /// The list of reasons is empty if the action is available. If there is only
  /// one reason, it can be displayed next to the disabled button. If there are
  /// more reasons, all of them should be displayed, for example in a pop-up
  /// dialog.
  core.List<Reason>? reasons;

  Action({
    this.builtinSimpleAction,
    this.builtinUserInputAction,
    this.buttonLabel,
    this.externalAction,
    this.isAvailable,
    this.reasons,
  });

  Action.fromJson(core.Map json_)
    : this(
        builtinSimpleAction:
            json_.containsKey('builtinSimpleAction')
                ? BuiltInSimpleAction.fromJson(
                  json_['builtinSimpleAction']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        builtinUserInputAction:
            json_.containsKey('builtinUserInputAction')
                ? BuiltInUserInputAction.fromJson(
                  json_['builtinUserInputAction']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        buttonLabel: json_['buttonLabel'] as core.String?,
        externalAction:
            json_.containsKey('externalAction')
                ? ExternalAction.fromJson(
                  json_['externalAction']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        isAvailable: json_['isAvailable'] as core.bool?,
        reasons:
            (json_['reasons'] as core.List?)
                ?.map(
                  (value) => Reason.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (builtinSimpleAction != null)
      'builtinSimpleAction': builtinSimpleAction!,
    if (builtinUserInputAction != null)
      'builtinUserInputAction': builtinUserInputAction!,
    if (buttonLabel != null) 'buttonLabel': buttonLabel!,
    if (externalAction != null) 'externalAction': externalAction!,
    if (isAvailable != null) 'isAvailable': isAvailable!,
    if (reasons != null) 'reasons': reasons!,
  };
}

/// Flow that can be selected for an action.
///
/// When a business selects a flow, application should open a dialog with more
/// information and input form.
class ActionFlow {
  /// Label for the button to trigger the action from the action dialog.
  ///
  /// For example: "Request review"
  core.String? dialogButtonLabel;

  /// Important message to be highlighted in the request dialog.
  ///
  /// For example: "You can only request a review for disagreeing with this
  /// issue once. If it's not approved, you'll need to fix the issue and wait a
  /// few days before you can request another review."
  Callout? dialogCallout;

  /// Message displayed in the request dialog.
  ///
  /// For example: "Make sure you've fixed all your country-specific issues. If
  /// not, you may have to wait 7 days to request another review". There may be
  /// an more information to be shown in a tooltip.
  TextWithTooltip? dialogMessage;

  /// Title of the request dialog.
  ///
  /// For example: "Before you request a review"
  core.String? dialogTitle;

  /// Not for display but need to be sent back for the selected action flow.
  core.String? id;

  /// A list of input fields.
  core.List<InputField>? inputs;

  /// Text value describing the intent for the action flow.
  ///
  /// It can be used as an input label if business needs to pick one of multiple
  /// flows. For example: "I disagree with the issue"
  core.String? label;

  ActionFlow({
    this.dialogButtonLabel,
    this.dialogCallout,
    this.dialogMessage,
    this.dialogTitle,
    this.id,
    this.inputs,
    this.label,
  });

  ActionFlow.fromJson(core.Map json_)
    : this(
        dialogButtonLabel: json_['dialogButtonLabel'] as core.String?,
        dialogCallout:
            json_.containsKey('dialogCallout')
                ? Callout.fromJson(
                  json_['dialogCallout'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        dialogMessage:
            json_.containsKey('dialogMessage')
                ? TextWithTooltip.fromJson(
                  json_['dialogMessage'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        dialogTitle: json_['dialogTitle'] as core.String?,
        id: json_['id'] as core.String?,
        inputs:
            (json_['inputs'] as core.List?)
                ?.map(
                  (value) => InputField.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        label: json_['label'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (dialogButtonLabel != null) 'dialogButtonLabel': dialogButtonLabel!,
    if (dialogCallout != null) 'dialogCallout': dialogCallout!,
    if (dialogMessage != null) 'dialogMessage': dialogMessage!,
    if (dialogTitle != null) 'dialogTitle': dialogTitle!,
    if (id != null) 'id': id!,
    if (inputs != null) 'inputs': inputs!,
    if (label != null) 'label': label!,
  };
}

/// Input provided by the business.
class ActionInput {
  /// Id of the selected action flow.
  ///
  /// Required.
  core.String? actionFlowId;

  /// Values for input fields.
  ///
  /// Required.
  core.List<InputValue>? inputValues;

  ActionInput({this.actionFlowId, this.inputValues});

  ActionInput.fromJson(core.Map json_)
    : this(
        actionFlowId: json_['actionFlowId'] as core.String?,
        inputValues:
            (json_['inputValues'] as core.List?)
                ?.map(
                  (value) => InputValue.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (actionFlowId != null) 'actionFlowId': actionFlowId!,
    if (inputValues != null) 'inputValues': inputValues!,
  };
}

/// Long text from external source.
typedef AdditionalContent = $AdditionalContent;

/// Aggregate product statuses for a given reporting context and country.
class AggregateProductStatus {
  /// The country of the aggregate product statuses.
  ///
  /// Represented as a
  /// [CLDR territory code](https://github.com/unicode-org/cldr/blob/latest/common/main/en.xml).
  core.String? country;

  /// The product issues that affect the given reporting context and country.
  core.List<ItemLevelIssue>? itemLevelIssues;

  /// Identifier.
  ///
  /// The name of the `AggregateProductStatuses` resource. Format:
  /// `accounts/{account}/aggregateProductStatuses/{aggregateProductStatuses}`
  core.String? name;

  /// The reporting context of the aggregate product statuses.
  /// Possible string values are:
  /// - "REPORTING_CONTEXT_ENUM_UNSPECIFIED" : Not specified.
  /// - "SHOPPING_ADS" :
  /// [Shopping ads](https://support.google.com/merchants/answer/6149970).
  /// - "DISCOVERY_ADS" : Deprecated: Use `DEMAND_GEN_ADS` instead.
  /// [Discovery and Demand Gen ads](https://support.google.com/merchants/answer/13389785).
  /// - "DEMAND_GEN_ADS" :
  /// [Demand Gen ads](https://support.google.com/merchants/answer/13389785).
  /// - "DEMAND_GEN_ADS_DISCOVER_SURFACE" :
  /// [Demand Gen ads on Discover surface](https://support.google.com/merchants/answer/13389785).
  /// - "VIDEO_ADS" :
  /// [Video ads](https://support.google.com/google-ads/answer/6340491).
  /// - "DISPLAY_ADS" :
  /// [Display ads](https://support.google.com/merchants/answer/6069387).
  /// - "LOCAL_INVENTORY_ADS" :
  /// [Local inventory ads](https://support.google.com/merchants/answer/3271956).
  /// - "VEHICLE_INVENTORY_ADS" :
  /// [Vehicle inventory ads](https://support.google.com/merchants/answer/11544533).
  /// - "FREE_LISTINGS" :
  /// [Free product listings](https://support.google.com/merchants/answer/9199328).
  /// - "FREE_LOCAL_LISTINGS" :
  /// [Free local product listings](https://support.google.com/merchants/answer/9825611).
  /// - "FREE_LOCAL_VEHICLE_LISTINGS" :
  /// [Free local vehicle listings](https://support.google.com/merchants/answer/11544533).
  /// - "YOUTUBE_AFFILIATE" :
  /// [Youtube Affiliate](https://support.google.com/youtube/answer/13376398).
  /// - "YOUTUBE_SHOPPING" :
  /// [YouTube Shopping](https://support.google.com/merchants/answer/13478370).
  /// - "CLOUD_RETAIL" :
  /// [Cloud retail](https://cloud.google.com/solutions/retail).
  /// - "LOCAL_CLOUD_RETAIL" :
  /// [Local cloud retail](https://cloud.google.com/solutions/retail).
  /// - "PRODUCT_REVIEWS" :
  /// [Product Reviews](https://support.google.com/merchants/answer/14620732).
  /// - "MERCHANT_REVIEWS" :
  /// [Merchant Reviews](https://developers.google.com/merchant-review-feeds).
  /// - "YOUTUBE_CHECKOUT" : YouTube Checkout .
  core.String? reportingContext;

  /// Products statistics for the given reporting context and country.
  Stats? stats;

  AggregateProductStatus({
    this.country,
    this.itemLevelIssues,
    this.name,
    this.reportingContext,
    this.stats,
  });

  AggregateProductStatus.fromJson(core.Map json_)
    : this(
        country: json_['country'] as core.String?,
        itemLevelIssues:
            (json_['itemLevelIssues'] as core.List?)
                ?.map(
                  (value) => ItemLevelIssue.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        name: json_['name'] as core.String?,
        reportingContext: json_['reportingContext'] as core.String?,
        stats:
            json_.containsKey('stats')
                ? Stats.fromJson(
                  json_['stats'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (country != null) 'country': country!,
    if (itemLevelIssues != null) 'itemLevelIssues': itemLevelIssues!,
    if (name != null) 'name': name!,
    if (reportingContext != null) 'reportingContext': reportingContext!,
    if (stats != null) 'stats': stats!,
  };
}

/// A detailed impact breakdown for a group of regions where the impact of the
/// issue on different shopping destinations is the same.
class Breakdown {
  /// Human readable, localized description of issue's effect on different
  /// targets.
  ///
  /// Should be rendered as a list. For example: * "Products not showing in ads"
  /// * "Products not showing organically"
  core.List<core.String>? details;

  /// Lists of regions.
  ///
  /// Should be rendered as a title for this group of details. The full list
  /// should be shown to the business. If the list is too long, it is
  /// recommended to make it expandable.
  core.List<Region>? regions;

  Breakdown({this.details, this.regions});

  Breakdown.fromJson(core.Map json_)
    : this(
        details:
            (json_['details'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        regions:
            (json_['regions'] as core.List?)
                ?.map(
                  (value) => Region.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (details != null) 'details': details!,
    if (regions != null) 'regions': regions!,
  };
}

/// Action that is implemented and performed in (your) third-party application.
///
/// Represents various functionality that is expected to be available to
/// business and will help them with resolving the issue. The application should
/// point the business to the place, where they can access the corresponding
/// functionality. If the functionality is not supported, it is recommended to
/// explain the situation to the business and provide them with instructions how
/// to solve the issue.
class BuiltInSimpleAction {
  /// Long text from an external source that should be available to the
  /// business.
  ///
  /// Present when the type is `SHOW_ADDITIONAL_CONTENT`.
  AdditionalContent? additionalContent;

  /// The attribute that needs to be updated.
  ///
  /// Present when the type is `EDIT_ITEM_ATTRIBUTE`. This field contains a code
  /// for attribute, represented in snake_case. You can find a list of product's
  /// attributes, with their codes
  /// [here](https://support.google.com/merchants/answer/7052112).
  core.String? attributeCode;

  /// The type of action that represents a functionality that is expected to be
  /// available in third-party application.
  /// Possible string values are:
  /// - "BUILT_IN_SIMPLE_ACTION_TYPE_UNSPECIFIED" : Default value. Will never be
  /// provided by the API.
  /// - "VERIFY_PHONE" : Redirect the business to the part of your application
  /// where they can verify their phone.
  /// - "CLAIM_WEBSITE" : Redirect the business to the part of your application
  /// where they can claim their website.
  /// - "ADD_PRODUCTS" : Redirect the business to the part of your application
  /// where they can add products.
  /// - "ADD_CONTACT_INFO" : Open a form where the business can edit their
  /// contact information.
  /// - "LINK_ADS_ACCOUNT" : Redirect the business to the part of your
  /// application where they can link ads account.
  /// - "ADD_BUSINESS_REGISTRATION_NUMBER" : Open a form where the business can
  /// add their business registration number.
  /// - "EDIT_ITEM_ATTRIBUTE" : Open a form where the business can edit an
  /// attribute. The attribute that needs to be updated is specified in
  /// attribute_code field of the action.
  /// - "FIX_ACCOUNT_ISSUE" : Redirect the business from the product issues to
  /// the diagnostic page with their account issues in your application. This
  /// action will be returned only for product issues that are caused by an
  /// account issue and thus the business should resolve the problem on the
  /// account level.
  /// - "SHOW_ADDITIONAL_CONTENT" : Show additional content to the business.
  /// This action will be used for example to deliver a justification from
  /// national authority.
  core.String? type;

  BuiltInSimpleAction({this.additionalContent, this.attributeCode, this.type});

  BuiltInSimpleAction.fromJson(core.Map json_)
    : this(
        additionalContent:
            json_.containsKey('additionalContent')
                ? AdditionalContent.fromJson(
                  json_['additionalContent']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        attributeCode: json_['attributeCode'] as core.String?,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (additionalContent != null) 'additionalContent': additionalContent!,
    if (attributeCode != null) 'attributeCode': attributeCode!,
    if (type != null) 'type': type!,
  };
}

/// Action that is implemented and performed in (your) third-party application.
///
/// The application needs to show an additional content and input form to the
/// business. They can start the action only when they provided all required
/// inputs. The application will request processing of the action by calling the
/// [triggeraction method](https://developers.google.com/merchant/api/reference/rest/issueresolution_v1beta/issueresolution/triggeraction).
class BuiltInUserInputAction {
  /// Contains the action's context that must be included as part of the
  /// TriggerActionPayload.action_context in TriggerActionRequest.payload to
  /// call the `triggeraction` method.
  ///
  /// The content should be treated as opaque and must not be modified.
  core.String? actionContext;

  /// Actions may provide multiple different flows.
  ///
  /// Business selects one that fits best to their intent. Selecting the flow is
  /// the first step in user's interaction with the action. It affects what
  /// input fields will be available and required and also how the request will
  /// be processed.
  core.List<ActionFlow>? flows;

  BuiltInUserInputAction({this.actionContext, this.flows});

  BuiltInUserInputAction.fromJson(core.Map json_)
    : this(
        actionContext: json_['actionContext'] as core.String?,
        flows:
            (json_['flows'] as core.List?)
                ?.map(
                  (value) => ActionFlow.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (actionContext != null) 'actionContext': actionContext!,
    if (flows != null) 'flows': flows!,
  };
}

/// An important message that should be highlighted.
///
/// Usually displayed as a banner.
class Callout {
  /// A full message that needs to be shown to the business.
  TextWithTooltip? fullMessage;

  /// Can be used to render messages with different severity in different
  /// styles.
  ///
  /// Snippets off all types contain important information that should be
  /// displayed to the business.
  /// Possible string values are:
  /// - "CALLOUT_STYLE_HINT_UNSPECIFIED" : Default value. Will never be provided
  /// by the API.
  /// - "ERROR" : The most important type of information highlighting problems,
  /// like an unsuccessful outcome of previously requested actions.
  /// - "WARNING" : Information warning about pending problems, risks or
  /// deadlines.
  /// - "INFO" : Default severity for important information like pending status
  /// of previously requested action or cooldown for re-review.
  core.String? styleHint;

  Callout({this.fullMessage, this.styleHint});

  Callout.fromJson(core.Map json_)
    : this(
        fullMessage:
            json_.containsKey('fullMessage')
                ? TextWithTooltip.fromJson(
                  json_['fullMessage'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        styleHint: json_['styleHint'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (fullMessage != null) 'fullMessage': fullMessage!,
    if (styleHint != null) 'styleHint': styleHint!,
  };
}

/// Checkbox input allows the business to provide a boolean value.
///
/// Corresponds to the \[html input
/// type=checkbox\](https://www.w3.org/TR/2012/WD-html-markup-20121025/input.checkbox.html#input.checkbox).
/// If the business checks the box, the input value for the field is `true`,
/// otherwise it is `false`. This type of input is often used as a confirmation
/// that the business completed required steps before they are allowed to start
/// the action. In such a case, the input field is marked as required and the
/// button to trigger the action should stay disabled until the business checks
/// the box.
typedef CheckboxInput = $Empty;

/// Value for checkbox input field.
class CheckboxInputValue {
  /// True if the business checked the box field.
  ///
  /// False otherwise.
  ///
  /// Required.
  core.bool? value;

  CheckboxInputValue({this.value});

  CheckboxInputValue.fromJson(core.Map json_)
    : this(value: json_['value'] as core.bool?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (value != null) 'value': value!,
  };
}

/// Choice input allows the business to select one of the offered choices.
///
/// Some choices may be linked to additional input fields that should be
/// displayed under or next to the choice option. The value for the additional
/// input field needs to be provided only when the specific choice is selected
/// by the the business. For example, additional input field can be hidden or
/// disabled until the business selects the specific choice.
class ChoiceInput {
  /// A list of choices.
  ///
  /// Only one option can be selected.
  core.List<ChoiceInputOption>? options;

  ChoiceInput({this.options});

  ChoiceInput.fromJson(core.Map json_)
    : this(
        options:
            (json_['options'] as core.List?)
                ?.map(
                  (value) => ChoiceInputOption.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (options != null) 'options': options!,
  };
}

/// A choice that the business can select.
class ChoiceInputOption {
  /// Input that should be displayed when this option is selected.
  ///
  /// The additional input will not contain a `ChoiceInput`.
  InputField? additionalInput;

  /// Not for display but need to be sent back for the selected choice option.
  core.String? id;

  /// Short description of the choice option.
  ///
  /// There may be more information to be shown as a tooltip.
  TextWithTooltip? label;

  ChoiceInputOption({this.additionalInput, this.id, this.label});

  ChoiceInputOption.fromJson(core.Map json_)
    : this(
        additionalInput:
            json_.containsKey('additionalInput')
                ? InputField.fromJson(
                  json_['additionalInput']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        id: json_['id'] as core.String?,
        label:
            json_.containsKey('label')
                ? TextWithTooltip.fromJson(
                  json_['label'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (additionalInput != null) 'additionalInput': additionalInput!,
    if (id != null) 'id': id!,
    if (label != null) 'label': label!,
  };
}

/// Value for choice input field.
class ChoiceInputValue {
  /// Id of the option that was selected by the business.
  ///
  /// Required.
  core.String? choiceInputOptionId;

  ChoiceInputValue({this.choiceInputOptionId});

  ChoiceInputValue.fromJson(core.Map json_)
    : this(choiceInputOptionId: json_['choiceInputOptionId'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (choiceInputOptionId != null)
      'choiceInputOptionId': choiceInputOptionId!,
  };
}

/// Action that is implemented and performed outside of the third-party
/// application.
///
/// It should redirect the business to the provided URL of an external system
/// where they can perform the action. For example to request a review in the
/// Merchant Center.
class ExternalAction {
  /// The type of external action.
  /// Possible string values are:
  /// - "EXTERNAL_ACTION_TYPE_UNSPECIFIED" : Default value. Will never be
  /// provided by the API.
  /// - "REVIEW_PRODUCT_ISSUE_IN_MERCHANT_CENTER" : Redirect to Merchant Center
  /// where the business can request a review for issue related to their
  /// product.
  /// - "REVIEW_ACCOUNT_ISSUE_IN_MERCHANT_CENTER" : Redirect to Merchant Center
  /// where the business can request a review for issue related to their
  /// account.
  /// - "LEGAL_APPEAL_IN_HELP_CENTER" : Redirect to the form in Help Center
  /// where the business can request a legal appeal for the issue.
  /// - "VERIFY_IDENTITY_IN_MERCHANT_CENTER" : Redirect to Merchant Center where
  /// the business can perform identity verification.
  core.String? type;

  /// URL to external system, for example Merchant Center, where the business
  /// can perform the action.
  core.String? uri;

  ExternalAction({this.type, this.uri});

  ExternalAction.fromJson(core.Map json_)
    : this(
        type: json_['type'] as core.String?,
        uri: json_['uri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (type != null) 'type': type!,
    if (uri != null) 'uri': uri!,
  };
}

/// Overall impact of the issue.
class Impact {
  /// Detailed impact breakdown.
  ///
  /// Explains the types of restriction the issue has in different shopping
  /// destinations and territory. If present, it should be rendered to the
  /// business. Can be shown as a mouse over dropdown or a dialog. Each
  /// breakdown item represents a group of regions with the same impact details.
  core.List<Breakdown>? breakdowns;

  /// Message summarizing the overall impact of the issue.
  ///
  /// If present, it should be rendered to the business. For example:
  /// "Disapproves 90k offers in 25 countries"
  ///
  /// Optional.
  core.String? message;

  /// The severity of the issue.
  /// Possible string values are:
  /// - "SEVERITY_UNSPECIFIED" : Default value. Will never be provided by the
  /// API.
  /// - "ERROR" : Causes either an account suspension or an item disapproval.
  /// Errors should be resolved as soon as possible to ensure items are eligible
  /// to appear in results again.
  /// - "WARNING" : Warnings can negatively impact the performance of ads and
  /// can lead to item or account suspensions in the future unless the issue is
  /// resolved.
  /// - "INFO" : Infos are suggested optimizations to increase data quality.
  /// Resolving these issues is recommended, but not required.
  core.String? severity;

  Impact({this.breakdowns, this.message, this.severity});

  Impact.fromJson(core.Map json_)
    : this(
        breakdowns:
            (json_['breakdowns'] as core.List?)
                ?.map(
                  (value) => Breakdown.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        message: json_['message'] as core.String?,
        severity: json_['severity'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (breakdowns != null) 'breakdowns': breakdowns!,
    if (message != null) 'message': message!,
    if (severity != null) 'severity': severity!,
  };
}

/// Input field that needs to be available to the business.
///
/// If the field is marked as required, then a value needs to be provided for a
/// successful processing of the request.
class InputField {
  /// Input field to provide a boolean value.
  ///
  /// Corresponds to the \[html input
  /// type=checkbox\](https://www.w3.org/TR/2012/WD-html-markup-20121025/input.checkbox.html#input.checkbox).
  CheckboxInput? checkboxInput;

  /// Input field to select one of the offered choices.
  ///
  /// Corresponds to the \[html input
  /// type=radio\](https://www.w3.org/TR/2012/WD-html-markup-20121025/input.radio.html#input.radio).
  ChoiceInput? choiceInput;

  /// Not for display but need to be sent back for the given input field.
  core.String? id;

  /// Input field label.
  ///
  /// There may be more information to be shown in a tooltip.
  TextWithTooltip? label;

  /// Whether the field is required.
  ///
  /// The action button needs to stay disabled till values for all required
  /// fields are provided.
  core.bool? required;

  /// Input field to provide text information.
  ///
  /// Corresponds to the \[html input
  /// type=text\](https://www.w3.org/TR/2012/WD-html-markup-20121025/input.text.html#input.text)
  /// or
  /// [html textarea](https://www.w3.org/TR/2012/WD-html-markup-20121025/textarea.html#textarea).
  TextInput? textInput;

  InputField({
    this.checkboxInput,
    this.choiceInput,
    this.id,
    this.label,
    this.required,
    this.textInput,
  });

  InputField.fromJson(core.Map json_)
    : this(
        checkboxInput:
            json_.containsKey('checkboxInput')
                ? CheckboxInput.fromJson(
                  json_['checkboxInput'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        choiceInput:
            json_.containsKey('choiceInput')
                ? ChoiceInput.fromJson(
                  json_['choiceInput'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        id: json_['id'] as core.String?,
        label:
            json_.containsKey('label')
                ? TextWithTooltip.fromJson(
                  json_['label'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        required: json_['required'] as core.bool?,
        textInput:
            json_.containsKey('textInput')
                ? TextInput.fromJson(
                  json_['textInput'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (checkboxInput != null) 'checkboxInput': checkboxInput!,
    if (choiceInput != null) 'choiceInput': choiceInput!,
    if (id != null) 'id': id!,
    if (label != null) 'label': label!,
    if (required != null) 'required': required!,
    if (textInput != null) 'textInput': textInput!,
  };
}

/// Input provided by the business for input field.
class InputValue {
  /// Value for checkbox input field.
  CheckboxInputValue? checkboxInputValue;

  /// Value for choice input field.
  ChoiceInputValue? choiceInputValue;

  /// Id of the corresponding input field.
  ///
  /// Required.
  core.String? inputFieldId;

  /// Value for text input field.
  TextInputValue? textInputValue;

  InputValue({
    this.checkboxInputValue,
    this.choiceInputValue,
    this.inputFieldId,
    this.textInputValue,
  });

  InputValue.fromJson(core.Map json_)
    : this(
        checkboxInputValue:
            json_.containsKey('checkboxInputValue')
                ? CheckboxInputValue.fromJson(
                  json_['checkboxInputValue']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        choiceInputValue:
            json_.containsKey('choiceInputValue')
                ? ChoiceInputValue.fromJson(
                  json_['choiceInputValue']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        inputFieldId: json_['inputFieldId'] as core.String?,
        textInputValue:
            json_.containsKey('textInputValue')
                ? TextInputValue.fromJson(
                  json_['textInputValue']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (checkboxInputValue != null) 'checkboxInputValue': checkboxInputValue!,
    if (choiceInputValue != null) 'choiceInputValue': choiceInputValue!,
    if (inputFieldId != null) 'inputFieldId': inputFieldId!,
    if (textInputValue != null) 'textInputValue': textInputValue!,
  };
}

/// The ItemLevelIssue of the product status.
class ItemLevelIssue {
  /// The attribute's name, if the issue is caused by a single attribute.
  core.String? attribute;

  /// The error code of the issue.
  core.String? code;

  /// A short issue description in English.
  core.String? description;

  /// A detailed issue description in English.
  core.String? detail;

  /// The URL of a web page to help with resolving this issue.
  core.String? documentationUri;

  /// The number of products affected by this issue.
  core.String? productCount;

  /// Whether the issue can be resolved by the merchant.
  /// Possible string values are:
  /// - "RESOLUTION_UNSPECIFIED" : Not specified.
  /// - "MERCHANT_ACTION" : The issue can be resolved by the merchant.
  /// - "PENDING_PROCESSING" : The issue will be resolved auomatically.
  core.String? resolution;

  /// How this issue affects serving of the offer.
  /// Possible string values are:
  /// - "SEVERITY_UNSPECIFIED" : Not specified.
  /// - "NOT_IMPACTED" : This issue represents a warning and does not have a
  /// direct affect on the product.
  /// - "DEMOTED" : The product is demoted and most likely have limited
  /// performance in search results
  /// - "DISAPPROVED" : Issue disapproves the product.
  core.String? severity;

  ItemLevelIssue({
    this.attribute,
    this.code,
    this.description,
    this.detail,
    this.documentationUri,
    this.productCount,
    this.resolution,
    this.severity,
  });

  ItemLevelIssue.fromJson(core.Map json_)
    : this(
        attribute: json_['attribute'] as core.String?,
        code: json_['code'] as core.String?,
        description: json_['description'] as core.String?,
        detail: json_['detail'] as core.String?,
        documentationUri: json_['documentationUri'] as core.String?,
        productCount: json_['productCount'] as core.String?,
        resolution: json_['resolution'] as core.String?,
        severity: json_['severity'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (attribute != null) 'attribute': attribute!,
    if (code != null) 'code': code!,
    if (description != null) 'description': description!,
    if (detail != null) 'detail': detail!,
    if (documentationUri != null) 'documentationUri': documentationUri!,
    if (productCount != null) 'productCount': productCount!,
    if (resolution != null) 'resolution': resolution!,
    if (severity != null) 'severity': severity!,
  };
}

/// Response message for the `ListAggregateProductStatuses` method.
class ListAggregateProductStatusesResponse {
  /// The `AggregateProductStatuses` resources for the given account.
  core.List<AggregateProductStatus>? aggregateProductStatuses;

  /// A token, which can be sent as `pageToken` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  ListAggregateProductStatusesResponse({
    this.aggregateProductStatuses,
    this.nextPageToken,
  });

  ListAggregateProductStatusesResponse.fromJson(core.Map json_)
    : this(
        aggregateProductStatuses:
            (json_['aggregateProductStatuses'] as core.List?)
                ?.map(
                  (value) => AggregateProductStatus.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (aggregateProductStatuses != null)
      'aggregateProductStatuses': aggregateProductStatuses!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// A single reason why the action is not available.
class Reason {
  /// An action that needs to be performed to solve the problem represented by
  /// this reason.
  ///
  /// This action will always be available. Should be rendered as a link or
  /// button next to the summarizing message. For example, the review may be
  /// available only once the business configure all required attributes. In
  /// such a situation this action can be a link to the form, where they can
  /// fill the missing attribute to unblock the main action.
  ///
  /// Optional.
  Action? action;

  /// Detailed explanation of the reason.
  ///
  /// Should be displayed as a hint if present.
  core.String? detail;

  /// Messages summarizing the reason, why the action is not available.
  ///
  /// For example: "Review requested on Jan 03. Review requests can take a few
  /// days to complete."
  core.String? message;

  Reason({this.action, this.detail, this.message});

  Reason.fromJson(core.Map json_)
    : this(
        action:
            json_.containsKey('action')
                ? Action.fromJson(
                  json_['action'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        detail: json_['detail'] as core.String?,
        message: json_['message'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (action != null) 'action': action!,
    if (detail != null) 'detail': detail!,
    if (message != null) 'message': message!,
  };
}

/// Region with code and localized name.
typedef Region = $Region;

/// Response containing an issue resolution content and actions for listed
/// account issues.
class RenderAccountIssuesResponse {
  /// List of account issues for a given account.
  ///
  /// This list can be shown with compressed, expandable items. In the
  /// compressed form, the title and impact should be shown for each issue. Once
  /// the issue is expanded, the detailed content and available actions should
  /// be rendered.
  core.List<RenderedIssue>? renderedIssues;

  RenderAccountIssuesResponse({this.renderedIssues});

  RenderAccountIssuesResponse.fromJson(core.Map json_)
    : this(
        renderedIssues:
            (json_['renderedIssues'] as core.List?)
                ?.map(
                  (value) => RenderedIssue.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (renderedIssues != null) 'renderedIssues': renderedIssues!,
  };
}

/// The payload for configuring how the content should be rendered.
class RenderIssuesRequestPayload {
  /// How the detailed content should be returned.
  ///
  /// Default option is to return the content as a pre-rendered HTML text.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "CONTENT_OPTION_UNSPECIFIED" : Default value. Will never be provided by
  /// the API.
  /// - "PRE_RENDERED_HTML" : Returns the detail of the issue as a pre-rendered
  /// HTML text.
  core.String? contentOption;

  /// How actions with user input form should be handled.
  ///
  /// If not provided, actions will be returned as links that points the
  /// business to Merchant Center where they can request the action.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "USER_INPUT_ACTION_RENDERING_OPTION_UNSPECIFIED" : Default value. Will
  /// never be provided by the API.
  /// - "REDIRECT_TO_MERCHANT_CENTER" : Actions that require user input are
  /// represented only as links that points the business to Merchant Center
  /// where they can request the action. Provides easier to implement
  /// alternative to `BUILT_IN_USER_INPUT_ACTIONS`.
  /// - "BUILT_IN_USER_INPUT_ACTIONS" : Returns content and input form
  /// definition for each complex action. Your application needs to display this
  /// content and input form to the business before they can request processing
  /// of the action. To start the action, your application needs to call the
  /// `triggeraction` method.
  core.String? userInputActionOption;

  RenderIssuesRequestPayload({this.contentOption, this.userInputActionOption});

  RenderIssuesRequestPayload.fromJson(core.Map json_)
    : this(
        contentOption: json_['contentOption'] as core.String?,
        userInputActionOption: json_['userInputActionOption'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (contentOption != null) 'contentOption': contentOption!,
    if (userInputActionOption != null)
      'userInputActionOption': userInputActionOption!,
  };
}

/// Response containing an issue resolution content and actions for listed
/// product issues.
class RenderProductIssuesResponse {
  /// List of issues for a given product.
  ///
  /// This list can be shown with compressed, expandable items. In the
  /// compressed form, the title and impact should be shown for each issue. Once
  /// the issue is expanded, the detailed content and available actions should
  /// be rendered.
  core.List<RenderedIssue>? renderedIssues;

  RenderProductIssuesResponse({this.renderedIssues});

  RenderProductIssuesResponse.fromJson(core.Map json_)
    : this(
        renderedIssues:
            (json_['renderedIssues'] as core.List?)
                ?.map(
                  (value) => RenderedIssue.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (renderedIssues != null) 'renderedIssues': renderedIssues!,
  };
}

/// An issue affecting specific business or their product.
class RenderedIssue {
  /// A list of actionable steps that can be executed to solve the issue.
  ///
  /// An example is requesting a re-review or providing arguments when business
  /// disagrees with the issue. Actions that are supported in (your) third-party
  /// application can be rendered as buttons and should be available to the
  /// business when they expand the issue.
  core.List<Action>? actions;

  /// Clarifies the severity of the issue.
  ///
  /// The summarizing message, if present, should be shown right under the title
  /// for each issue. It helps business to quickly understand the impact of the
  /// issue. The detailed breakdown helps the business to fully understand the
  /// impact of the issue. It can be rendered as dialog that opens when the
  /// business mouse over the summarized impact statement. Issues with different
  /// severity can be styled differently. They may use a different color or icon
  /// to signal the difference between `ERROR`, `WARNING` and `INFO`.
  Impact? impact;

  /// Details of the issue as a pre-rendered HTML.
  ///
  /// HTML elements contain CSS classes that can be used to customize the style
  /// of the content. Always sanitize the HTML before embedding it directly to
  /// your application. The sanitizer needs to allow basic HTML tags, such as:
  /// `div`, `span`, `p`, `a`, `ul`, `li`, `table`, `tr`, `td`. For example, you
  /// can use [DOMPurify](https://www.npmjs.com/package/dompurify). CSS classes:
  /// * `issue-detail` - top level container for the detail of the issue *
  /// `callout-banners` - section of the `issue-detail` with callout banners *
  /// `callout-banner` - single callout banner, inside `callout-banners` *
  /// `callout-banner-info` - callout with important information (default) *
  /// `callout-banner-warning` - callout with a warning * `callout-banner-error`
  /// - callout informing about an error (most severe) * `issue-content` -
  /// section of the `issue-detail`, contains multiple `content-element` *
  /// `content-element` - content element such as a list, link or paragraph,
  /// inside `issue-content` * `root-causes` - unordered list with items
  /// describing root causes of the issue, inside `issue-content` *
  /// `root-causes-intro` - intro text before the `root-causes` list, inside
  /// `issue-content` * `segment` - section of the text, `span` inside paragraph
  /// * `segment-attribute` - section of the text that represents a product
  /// attribute, for example 'image\_link' * `segment-literal` - section of the
  /// text that contains a special value, for example '0-1000 kg' *
  /// `segment-bold` - section of the text that should be rendered as bold *
  /// `segment-italic` - section of the text that should be rendered as italic *
  /// `tooltip` - used on paragraphs that should be rendered with a tooltip. A
  /// section of the text in such a paragraph will have a class `tooltip-text`
  /// and is intended to be shown in a mouse over dialog. If the style is not
  /// used, the `tooltip-text` section would be shown on a new line, after the
  /// main part of the text. * `tooltip-text` - marks a section of the text
  /// within a `tooltip`, that is intended to be shown in a mouse over dialog. *
  /// `tooltip-icon` - marks a section of the text within a `tooltip`, that can
  /// be replaced with a tooltip icon, for example '?' or 'i'. By default, this
  /// section contains a `br` tag, that is separating the main text and the
  /// tooltip text when the style is not used. * `tooltip-style-question` - the
  /// tooltip shows helpful information, can use the '?' as an icon. *
  /// `tooltip-style-info` - the tooltip adds additional information fitting to
  /// the context, can use the 'i' as an icon. * `content-moderation` - marks
  /// the paragraph that explains how the issue was identified. * `new-element`
  /// - Present for new elements added to the pre-rendered content in the
  /// future. To make sure that a new content element does not break your style,
  /// you can hide everything with this class.
  core.String? prerenderedContent;

  /// Pre-rendered HTML that contains a link to the external location where the
  /// ODS can be requested and instructions for how to request it.
  ///
  /// HTML elements contain CSS classes that can be used to customize the style
  /// of this snippet. Always sanitize the HTML before embedding it directly to
  /// your application. The sanitizer needs to allow basic HTML tags, such as:
  /// `div`, `span`, `p`, `a`, `ul`, `li`, `table`, `tr`, `td`. For example, you
  /// can use [DOMPurify](https://www.npmjs.com/package/dompurify). CSS classes:
  /// * `ods-section`* - wrapper around the out-of-court dispute resolution
  /// section * `ods-description`* - intro text for the out-of-court dispute
  /// resolution. It may contain multiple segments and a link. * `ods-param`* -
  /// wrapper around the header-value pair for parameters that the business may
  /// need to provide during the ODS process. * `ods-routing-id`* - ods param
  /// for the Routing ID. * `ods-reference-id`* - ods param for the Routing ID.
  /// * `ods-param-header`* - header for the ODS parameter * `ods-param-value`*
  /// - value of the ODS parameter. This value should be rendered in a way that
  /// it is easy for the user to identify and copy. * `segment` - section of the
  /// text, `span` inside paragraph * `segment-attribute` - section of the text
  /// that represents a product attribute, for example 'image\_link' *
  /// `segment-literal` - section of the text that contains a special value, for
  /// example '0-1000 kg' * `segment-bold` - section of the text that should be
  /// rendered as bold * `segment-italic` - section of the text that should be
  /// rendered as italic * `tooltip` - used on paragraphs that should be
  /// rendered with a tooltip. A section of the text in such a paragraph will
  /// have a class `tooltip-text` and is intended to be shown in a mouse over
  /// dialog. If the style is not used, the `tooltip-text` section would be
  /// shown on a new line, after the main part of the text. * `tooltip-text` -
  /// marks a section of the text within a `tooltip`, that is intended to be
  /// shown in a mouse over dialog. * `tooltip-icon` - marks a section of the
  /// text within a `tooltip`, that can be replaced with a tooltip icon, for
  /// example '?' or 'i'. By default, this section contains a `br` tag, that is
  /// separating the main text and the tooltip text when the style is not used.
  /// * `tooltip-style-question` - the tooltip shows helpful information, can
  /// use the '?' as an icon. * `tooltip-style-info` - the tooltip adds
  /// additional information fitting to the context, can use the 'i' as an icon.
  core.String? prerenderedOutOfCourtDisputeSettlement;

  /// Title of the issue.
  core.String? title;

  RenderedIssue({
    this.actions,
    this.impact,
    this.prerenderedContent,
    this.prerenderedOutOfCourtDisputeSettlement,
    this.title,
  });

  RenderedIssue.fromJson(core.Map json_)
    : this(
        actions:
            (json_['actions'] as core.List?)
                ?.map(
                  (value) => Action.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        impact:
            json_.containsKey('impact')
                ? Impact.fromJson(
                  json_['impact'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        prerenderedContent: json_['prerenderedContent'] as core.String?,
        prerenderedOutOfCourtDisputeSettlement:
            json_['prerenderedOutOfCourtDisputeSettlement'] as core.String?,
        title: json_['title'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (actions != null) 'actions': actions!,
    if (impact != null) 'impact': impact!,
    if (prerenderedContent != null) 'prerenderedContent': prerenderedContent!,
    if (prerenderedOutOfCourtDisputeSettlement != null)
      'prerenderedOutOfCourtDisputeSettlement':
          prerenderedOutOfCourtDisputeSettlement!,
    if (title != null) 'title': title!,
  };
}

/// Products statistics.
class Stats {
  /// The number of products that are active.
  core.String? activeCount;

  /// The number of products that are disapproved.
  core.String? disapprovedCount;

  /// The number of products that are expiring.
  core.String? expiringCount;

  /// The number of products that are pending.
  core.String? pendingCount;

  Stats({
    this.activeCount,
    this.disapprovedCount,
    this.expiringCount,
    this.pendingCount,
  });

  Stats.fromJson(core.Map json_)
    : this(
        activeCount: json_['activeCount'] as core.String?,
        disapprovedCount: json_['disapprovedCount'] as core.String?,
        expiringCount: json_['expiringCount'] as core.String?,
        pendingCount: json_['pendingCount'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (activeCount != null) 'activeCount': activeCount!,
    if (disapprovedCount != null) 'disapprovedCount': disapprovedCount!,
    if (expiringCount != null) 'expiringCount': expiringCount!,
    if (pendingCount != null) 'pendingCount': pendingCount!,
  };
}

/// Text input allows the business to provide a text value.
class TextInput {
  /// Additional info regarding the field to be displayed to the business.
  ///
  /// For example, warning to not include personal identifiable information.
  /// There may be more information to be shown in a tooltip.
  TextWithTooltip? additionalInfo;

  /// Text to be used as the
  /// \[aria-label\](https://www.w3.org/TR/WCAG20-TECHS/ARIA14.html) for the
  /// input.
  core.String? ariaLabel;

  /// Information about the required format.
  ///
  /// If present, it should be shown close to the input field to help the
  /// business to provide a correct value. For example: "VAT numbers should be
  /// in a format similar to SK9999999999"
  core.String? formatInfo;

  /// Type of the text input
  /// Possible string values are:
  /// - "TEXT_INPUT_TYPE_UNSPECIFIED" : Default value. Will never be provided by
  /// the API.
  /// - "GENERIC_SHORT_TEXT" : Used when a short text is expected. The field can
  /// be rendered as a
  /// [text field](https://www.w3.org/TR/2012/WD-html-markup-20121025/input.text.html#input.text).
  /// - "GENERIC_LONG_TEXT" : Used when a longer text is expected. The field
  /// should be rendered as a
  /// [textarea](https://www.w3.org/TR/2012/WD-html-markup-20121025/textarea.html#textarea).
  core.String? type;

  TextInput({this.additionalInfo, this.ariaLabel, this.formatInfo, this.type});

  TextInput.fromJson(core.Map json_)
    : this(
        additionalInfo:
            json_.containsKey('additionalInfo')
                ? TextWithTooltip.fromJson(
                  json_['additionalInfo']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        ariaLabel: json_['ariaLabel'] as core.String?,
        formatInfo: json_['formatInfo'] as core.String?,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (additionalInfo != null) 'additionalInfo': additionalInfo!,
    if (ariaLabel != null) 'ariaLabel': ariaLabel!,
    if (formatInfo != null) 'formatInfo': formatInfo!,
    if (type != null) 'type': type!,
  };
}

/// Value for text input field.
class TextInputValue {
  /// Text provided by the business.
  ///
  /// Required.
  core.String? value;

  TextInputValue({this.value});

  TextInputValue.fromJson(core.Map json_)
    : this(value: json_['value'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (value != null) 'value': value!,
  };
}

/// Block of text that may contain a tooltip with more information.
typedef TextWithTooltip = $TextWithTooltip;

/// The payload for the triggered action.
class TriggerActionPayload {
  /// The context from the selected action.
  ///
  /// The value is obtained from rendered issues and needs to be sent back to
  /// identify the action that is being triggered.
  ///
  /// Required.
  core.String? actionContext;

  /// Input provided by the business.
  ///
  /// Required.
  ActionInput? actionInput;

  TriggerActionPayload({this.actionContext, this.actionInput});

  TriggerActionPayload.fromJson(core.Map json_)
    : this(
        actionContext: json_['actionContext'] as core.String?,
        actionInput:
            json_.containsKey('actionInput')
                ? ActionInput.fromJson(
                  json_['actionInput'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (actionContext != null) 'actionContext': actionContext!,
    if (actionInput != null) 'actionInput': actionInput!,
  };
}

/// Response informing about the started action.
class TriggerActionResponse {
  /// The message for the business.
  core.String? message;

  TriggerActionResponse({this.message});

  TriggerActionResponse.fromJson(core.Map json_)
    : this(message: json_['message'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (message != null) 'message': message!,
  };
}
