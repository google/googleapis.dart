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

/// Merchant API - datasources_v1beta
///
/// Programmatically manage your Merchant Center Accounts.
///
/// For more information, see <https://developers.google.com/merchant/api>
///
/// Create an instance of [MerchantApi] to access these resources:
///
/// - [AccountsResource]
///   - [AccountsDataSourcesResource]
///     - [AccountsDataSourcesFileUploadsResource]
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

  AccountsDataSourcesResource get dataSources =>
      AccountsDataSourcesResource(_requester);

  AccountsResource(commons.ApiRequester client) : _requester = client;
}

class AccountsDataSourcesResource {
  final commons.ApiRequester _requester;

  AccountsDataSourcesFileUploadsResource get fileUploads =>
      AccountsDataSourcesFileUploadsResource(_requester);

  AccountsDataSourcesResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates the new data source configuration for the given account.
  ///
  /// This method always creates a new data source.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The account where this data source will be created.
  /// Format: `accounts/{account}`
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DataSource].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DataSource> create(
    DataSource request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'datasources/v1beta/' + core.Uri.encodeFull('$parent') + '/dataSources';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return DataSource.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes a data source from your Merchant Center account.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the data source to delete. Format:
  /// `accounts/{account}/dataSources/{datasource}`
  /// Value must have pattern `^accounts/\[^/\]+/dataSources/\[^/\]+$`.
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
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'datasources/v1beta/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Performs the data fetch immediately (even outside fetch schedule) on a
  /// data source from your Merchant Center Account.
  ///
  /// If you need to call this method more than once per day, you should use the
  /// Products service to update your product data instead. This method only
  /// works on data sources with a file input set.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the data source resource to fetch. Format:
  /// `accounts/{account}/dataSources/{datasource}`
  /// Value must have pattern `^accounts/\[^/\]+/dataSources/\[^/\]+$`.
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
  async.Future<Empty> fetch(
    FetchDataSourceRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'datasources/v1beta/' + core.Uri.encodeFull('$name') + ':fetch';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves the data source configuration for the given account.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the data source to retrieve. Format:
  /// `accounts/{account}/dataSources/{datasource}`
  /// Value must have pattern `^accounts/\[^/\]+/dataSources/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DataSource].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DataSource> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'datasources/v1beta/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return DataSource.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists the configurations for data sources for the given account.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The account to list data sources for. Format:
  /// `accounts/{account}`
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. The maximum number of data sources to return. The
  /// service may return fewer than this value. The maximum value is 1000;
  /// values above 1000 will be coerced to 1000. If unspecified, the maximum
  /// number of data sources will be returned.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListDataSources` call. Provide this to retrieve the subsequent page. When
  /// paginating, all other parameters provided to `ListDataSources` must match
  /// the call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListDataSourcesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListDataSourcesResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'datasources/v1beta/' + core.Uri.encodeFull('$parent') + '/dataSources';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListDataSourcesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the existing data source configuration.
  ///
  /// The fields that are set in the update mask but not provided in the
  /// resource will be deleted.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Identifier. The name of the data source. Format:
  /// `accounts/{account}/dataSources/{datasource}`
  /// Value must have pattern `^accounts/\[^/\]+/dataSources/\[^/\]+$`.
  ///
  /// [updateMask] - Required. The list of data source fields to be updated.
  /// Fields specified in the update mask without a value specified in the body
  /// will be deleted from the data source. Providing special "*" value for full
  /// data source replacement is not supported. For example, If you insert
  /// `updateMask=displayName` in the request, it will only update the
  /// `displayName` leaving all other fields untouched.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DataSource].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DataSource> patch(
    DataSource request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'datasources/v1beta/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return DataSource.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class AccountsDataSourcesFileUploadsResource {
  final commons.ApiRequester _requester;

  AccountsDataSourcesFileUploadsResource(commons.ApiRequester client)
    : _requester = client;

  /// Gets the latest data source file upload.
  ///
  /// Only the `latest` alias is accepted for a file upload.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the data source file upload to retrieve.
  /// Format: `accounts/{account}/dataSources/{datasource}/fileUploads/latest`
  /// Value must have pattern
  /// `^accounts/\[^/\]+/dataSources/\[^/\]+/fileUploads/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FileUpload].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FileUpload> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'datasources/v1beta/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return FileUpload.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

/// The \[data source\](/merchant/api/guides/data-sources/overview) for the
/// Merchant Center account.
class DataSource {
  /// The data source id.
  ///
  /// Output only.
  core.String? dataSourceId;

  /// The displayed data source name in the Merchant Center UI.
  ///
  /// Required.
  core.String? displayName;

  /// The field is used only when data is managed through a file.
  ///
  /// Optional.
  FileInput? fileInput;

  /// Determines the type of input to the data source.
  ///
  /// Based on the input some settings might not work. Only generic data sources
  /// can be created through the API.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "INPUT_UNSPECIFIED" : Input unspecified.
  /// - "API" : Represents data sources for which the data is primarily provided
  /// through the API.
  /// - "FILE" : Represents data sources for which the data is primarily
  /// provided through file input. Data can still be provided through the API.
  /// - "UI" : The data source for products added directly in Merchant Center.
  /// This type of data source can not be created or updated through this API,
  /// only by Merchant Center UI. This type of data source is read only.
  /// - "AUTOFEED" : This is also known as
  /// [Automated feeds](https://support.google.com/merchants/answer/12158480)
  /// used to automatically build your product data. This type of data source
  /// can be enabled or disabled through the Accounts sub-API.
  core.String? input;

  /// The [local inventory](https://support.google.com/merchants/answer/7023001)
  /// data source.
  LocalInventoryDataSource? localInventoryDataSource;

  /// The [merchant review](https://support.google.com/merchants/answer/7045996)
  /// data source.
  MerchantReviewDataSource? merchantReviewDataSource;

  /// Identifier.
  ///
  /// The name of the data source. Format:
  /// `accounts/{account}/dataSources/{datasource}`
  ///
  /// Required.
  core.String? name;

  /// The
  /// [primary data source](https://support.google.com/merchants/answer/7439058)
  /// for local and online products.
  PrimaryProductDataSource? primaryProductDataSource;

  /// The [product review](https://support.google.com/merchants/answer/7045996)
  /// data source.
  ProductReviewDataSource? productReviewDataSource;

  /// The [promotion](https://support.google.com/merchants/answer/2906014) data
  /// source.
  PromotionDataSource? promotionDataSource;

  /// The
  /// [regional inventory](https://support.google.com/merchants/answer/7439058)
  /// data source.
  RegionalInventoryDataSource? regionalInventoryDataSource;

  /// The
  /// [supplemental data source](https://support.google.com/merchants/answer/7439058)
  /// for local and online products.
  SupplementalProductDataSource? supplementalProductDataSource;

  DataSource({
    this.dataSourceId,
    this.displayName,
    this.fileInput,
    this.input,
    this.localInventoryDataSource,
    this.merchantReviewDataSource,
    this.name,
    this.primaryProductDataSource,
    this.productReviewDataSource,
    this.promotionDataSource,
    this.regionalInventoryDataSource,
    this.supplementalProductDataSource,
  });

  DataSource.fromJson(core.Map json_)
    : this(
        dataSourceId: json_['dataSourceId'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        fileInput:
            json_.containsKey('fileInput')
                ? FileInput.fromJson(
                  json_['fileInput'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        input: json_['input'] as core.String?,
        localInventoryDataSource:
            json_.containsKey('localInventoryDataSource')
                ? LocalInventoryDataSource.fromJson(
                  json_['localInventoryDataSource']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        merchantReviewDataSource:
            json_.containsKey('merchantReviewDataSource')
                ? MerchantReviewDataSource.fromJson(
                  json_['merchantReviewDataSource']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        name: json_['name'] as core.String?,
        primaryProductDataSource:
            json_.containsKey('primaryProductDataSource')
                ? PrimaryProductDataSource.fromJson(
                  json_['primaryProductDataSource']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        productReviewDataSource:
            json_.containsKey('productReviewDataSource')
                ? ProductReviewDataSource.fromJson(
                  json_['productReviewDataSource']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        promotionDataSource:
            json_.containsKey('promotionDataSource')
                ? PromotionDataSource.fromJson(
                  json_['promotionDataSource']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        regionalInventoryDataSource:
            json_.containsKey('regionalInventoryDataSource')
                ? RegionalInventoryDataSource.fromJson(
                  json_['regionalInventoryDataSource']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        supplementalProductDataSource:
            json_.containsKey('supplementalProductDataSource')
                ? SupplementalProductDataSource.fromJson(
                  json_['supplementalProductDataSource']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (dataSourceId != null) 'dataSourceId': dataSourceId!,
    if (displayName != null) 'displayName': displayName!,
    if (fileInput != null) 'fileInput': fileInput!,
    if (input != null) 'input': input!,
    if (localInventoryDataSource != null)
      'localInventoryDataSource': localInventoryDataSource!,
    if (merchantReviewDataSource != null)
      'merchantReviewDataSource': merchantReviewDataSource!,
    if (name != null) 'name': name!,
    if (primaryProductDataSource != null)
      'primaryProductDataSource': primaryProductDataSource!,
    if (productReviewDataSource != null)
      'productReviewDataSource': productReviewDataSource!,
    if (promotionDataSource != null)
      'promotionDataSource': promotionDataSource!,
    if (regionalInventoryDataSource != null)
      'regionalInventoryDataSource': regionalInventoryDataSource!,
    if (supplementalProductDataSource != null)
      'supplementalProductDataSource': supplementalProductDataSource!,
  };
}

/// Data source reference can be used to manage related data sources within the
/// data source service.
class DataSourceReference {
  /// The name of the primary data source.
  ///
  /// Format: `accounts/{account}/dataSources/{datasource}`
  ///
  /// Optional.
  core.String? primaryDataSourceName;

  /// Self should be used to reference the primary data source itself.
  core.bool? self;

  /// The name of the supplemental data source.
  ///
  /// Format: `accounts/{account}/dataSources/{datasource}`
  ///
  /// Optional.
  core.String? supplementalDataSourceName;

  DataSourceReference({
    this.primaryDataSourceName,
    this.self,
    this.supplementalDataSourceName,
  });

  DataSourceReference.fromJson(core.Map json_)
    : this(
        primaryDataSourceName: json_['primaryDataSourceName'] as core.String?,
        self: json_['self'] as core.bool?,
        supplementalDataSourceName:
            json_['supplementalDataSourceName'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (primaryDataSourceName != null)
      'primaryDataSourceName': primaryDataSourceName!,
    if (self != null) 'self': self!,
    if (supplementalDataSourceName != null)
      'supplementalDataSourceName': supplementalDataSourceName!,
  };
}

/// Default rule management of the data source.
class DefaultRule {
  /// The list of data sources linked in the
  /// [default rule](https://support.google.com/merchants/answer/7450276).
  ///
  /// This list is ordered by the default rule priority of joining the data. It
  /// might include none or multiple references to `self` and supplemental data
  /// sources. The list must not be empty. To link the data source to the
  /// default rule, you need to add a new reference to this list (in sequential
  /// order). To unlink the data source from the default rule, you need to
  /// remove the given reference from this list. Changing the order of this list
  /// will result in changing the priority of data sources in the default rule.
  /// For example, providing the following list: \[`1001`, `self`\] will take
  /// attribute values from supplemental data source `1001`, and fallback to
  /// `self` if the attribute is not set in `1001`.
  ///
  /// Required.
  core.List<DataSourceReference>? takeFromDataSources;

  DefaultRule({this.takeFromDataSources});

  DefaultRule.fromJson(core.Map json_)
    : this(
        takeFromDataSources:
            (json_['takeFromDataSources'] as core.List?)
                ?.map(
                  (value) => DataSourceReference.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (takeFromDataSources != null)
      'takeFromDataSources': takeFromDataSources!,
  };
}

/// Destinations also known as
/// [Marketing methods](https://support.google.com/merchants/answer/15130232)
/// selections.
class Destination {
  /// [Marketing methods](https://support.google.com/merchants/answer/15130232)
  /// (also known as destination) selections.
  /// Possible string values are:
  /// - "DESTINATION_ENUM_UNSPECIFIED" : Not specified.
  /// - "SHOPPING_ADS" :
  /// [Shopping ads](https://support.google.com/google-ads/answer/2454022).
  /// - "DISPLAY_ADS" :
  /// [Display ads](https://support.google.com/merchants/answer/6069387).
  /// - "LOCAL_INVENTORY_ADS" :
  /// [Local inventory ads](https://support.google.com/merchants/answer/3057972).
  /// - "FREE_LISTINGS" :
  /// [Free listings](https://support.google.com/merchants/answer/9199328).
  /// - "FREE_LOCAL_LISTINGS" :
  /// [Free local product listings](https://support.google.com/merchants/answer/9825611).
  /// - "YOUTUBE_SHOPPING" :
  /// [YouTube Shopping](https://support.google.com/merchants/answer/12362804).
  /// - "YOUTUBE_SHOPPING_CHECKOUT" : Youtube shopping checkout.
  /// - "YOUTUBE_AFFILIATE" :
  /// [Youtube Affiliate](https://support.google.com/youtube/answer/13376398).
  /// - "FREE_VEHICLE_LISTINGS" :
  /// [Free vehicle listings](https://support.google.com/merchants/answer/11189169).
  /// - "VEHICLE_ADS" :
  /// [Vehicle ads](https://support.google.com/merchants/answer/11189169).
  /// - "CLOUD_RETAIL" :
  /// [Cloud retail](https://cloud.google.com/solutions/retail).
  /// - "LOCAL_CLOUD_RETAIL" :
  /// [Local cloud retail](https://cloud.google.com/solutions/retail).
  core.String? destination;

  /// The state of the destination.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Not specified.
  /// - "ENABLED" : Indicates that the destination is enabled.
  /// - "DISABLED" : Indicates that the destination is disabled.
  core.String? state;

  Destination({this.destination, this.state});

  Destination.fromJson(core.Map json_)
    : this(
        destination: json_['destination'] as core.String?,
        state: json_['state'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (destination != null) 'destination': destination!,
    if (state != null) 'state': state!,
  };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// Request message for the FetchDataSource method.
typedef FetchDataSourceRequest = $Empty;

/// Fetch details to deliver the data source.
class FetchSettings {
  /// The day of the month when the data source file should be fetched (1-31).
  ///
  /// This field can only be set for monthly frequency.
  ///
  /// Optional.
  core.int? dayOfMonth;

  /// The day of the week when the data source file should be fetched.
  ///
  /// This field can only be set for weekly frequency.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "DAY_OF_WEEK_UNSPECIFIED" : The day of the week is unspecified.
  /// - "MONDAY" : Monday
  /// - "TUESDAY" : Tuesday
  /// - "WEDNESDAY" : Wednesday
  /// - "THURSDAY" : Thursday
  /// - "FRIDAY" : Friday
  /// - "SATURDAY" : Saturday
  /// - "SUNDAY" : Sunday
  core.String? dayOfWeek;

  /// Enables or pauses the fetch schedule.
  ///
  /// Optional.
  core.bool? enabled;

  /// The URL where the data source file can be fetched.
  ///
  /// Google Merchant Center supports automatic scheduled uploads using the
  /// HTTP, HTTPS or SFTP protocols, so the value will need to be a valid link
  /// using one of those three protocols. Immutable for Google Sheets files.
  ///
  /// Optional.
  core.String? fetchUri;

  /// The frequency describing fetch schedule.
  ///
  /// Required.
  /// Possible string values are:
  /// - "FREQUENCY_UNSPECIFIED" : Frequency unspecified.
  /// - "FREQUENCY_DAILY" : The fetch happens every day.
  /// - "FREQUENCY_WEEKLY" : The fetch happens every week.
  /// - "FREQUENCY_MONTHLY" : The fetch happens every month.
  core.String? frequency;

  /// An optional password for fetch_uri.
  ///
  /// Used for
  /// [submitting data sources through SFTP](https://support.google.com/merchants/answer/13813117).
  ///
  /// Optional.
  core.String? password;

  /// The hour of the day when the data source file should be fetched.
  ///
  /// Minutes and seconds are not supported and will be ignored.
  ///
  /// Optional.
  TimeOfDay? timeOfDay;

  /// [Time zone](https://cldr.unicode.org) used for schedule.
  ///
  /// UTC by default. For example, "America/Los_Angeles".
  ///
  /// Optional.
  core.String? timeZone;

  /// An optional user name for fetch_uri.
  ///
  /// Used for
  /// [submitting data sources through SFTP](https://support.google.com/merchants/answer/13813117).
  ///
  /// Optional.
  core.String? username;

  FetchSettings({
    this.dayOfMonth,
    this.dayOfWeek,
    this.enabled,
    this.fetchUri,
    this.frequency,
    this.password,
    this.timeOfDay,
    this.timeZone,
    this.username,
  });

  FetchSettings.fromJson(core.Map json_)
    : this(
        dayOfMonth: json_['dayOfMonth'] as core.int?,
        dayOfWeek: json_['dayOfWeek'] as core.String?,
        enabled: json_['enabled'] as core.bool?,
        fetchUri: json_['fetchUri'] as core.String?,
        frequency: json_['frequency'] as core.String?,
        password: json_['password'] as core.String?,
        timeOfDay:
            json_.containsKey('timeOfDay')
                ? TimeOfDay.fromJson(
                  json_['timeOfDay'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        timeZone: json_['timeZone'] as core.String?,
        username: json_['username'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (dayOfMonth != null) 'dayOfMonth': dayOfMonth!,
    if (dayOfWeek != null) 'dayOfWeek': dayOfWeek!,
    if (enabled != null) 'enabled': enabled!,
    if (fetchUri != null) 'fetchUri': fetchUri!,
    if (frequency != null) 'frequency': frequency!,
    if (password != null) 'password': password!,
    if (timeOfDay != null) 'timeOfDay': timeOfDay!,
    if (timeZone != null) 'timeZone': timeZone!,
    if (username != null) 'username': username!,
  };
}

/// The data specific for file data sources.
///
/// This field is empty for other data source inputs.
class FileInput {
  /// Fetch details to deliver the data source.
  ///
  /// It contains settings for `FETCH` and `GOOGLE_SHEETS` file input types. The
  /// required fields vary based on the frequency of fetching.
  ///
  /// Optional.
  FetchSettings? fetchSettings;

  /// The type of file input.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "FILE_INPUT_TYPE_UNSPECIFIED" : File input type unspecified.
  /// - "UPLOAD" : The file is uploaded through SFTP, Google Cloud Storage or
  /// manually in the Merchant Center.
  /// - "FETCH" : The file is fetched from the configured fetch_uri.
  /// - "GOOGLE_SHEETS" : The file is fetched from Google Sheets specified in
  /// the fetch_uri. However, you can't set up `GOOGLE_SHEETS` as a data source
  /// through the API. To add `GOOGLE_SHEETS` as a data source through the
  /// Merchant Center, see
  /// [Add products to Merchant Center](https://support.google.com/merchants/answer/12158053).
  core.String? fileInputType;

  /// The file name of the data source.
  ///
  /// Required for `UPLOAD` file input type.
  ///
  /// Optional.
  core.String? fileName;

  FileInput({this.fetchSettings, this.fileInputType, this.fileName});

  FileInput.fromJson(core.Map json_)
    : this(
        fetchSettings:
            json_.containsKey('fetchSettings')
                ? FetchSettings.fromJson(
                  json_['fetchSettings'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        fileInputType: json_['fileInputType'] as core.String?,
        fileName: json_['fileName'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (fetchSettings != null) 'fetchSettings': fetchSettings!,
    if (fileInputType != null) 'fileInputType': fileInputType!,
    if (fileName != null) 'fileName': fileName!,
  };
}

/// The file upload of a specific data source, that is, the result of the
/// retrieval of the data source at a certain timestamp computed asynchronously
/// when the data source processing is finished.
///
/// Only applicable to file data sources.
class FileUpload {
  /// The data source id.
  ///
  /// Output only.
  core.String? dataSourceId;

  /// The list of issues occurring in the data source.
  ///
  /// Output only.
  core.List<Issue>? issues;

  /// The number of items in the data source that were created.
  ///
  /// Output only.
  core.String? itemsCreated;

  /// The number of items in the data source that were processed.
  ///
  /// Output only.
  core.String? itemsTotal;

  /// The number of items in the data source that were updated.
  ///
  /// Output only.
  core.String? itemsUpdated;

  /// Identifier.
  ///
  /// The name of the data source file upload. Format:
  /// `{datasource.name=accounts/{account}/dataSources/{datasource}/fileUploads/{fileupload}}`
  core.String? name;

  /// The processing state of the data source.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "PROCESSING_STATE_UNSPECIFIED" : Processing state unspecified.
  /// - "FAILED" : The data source could not be processed or all the items had
  /// errors.
  /// - "IN_PROGRESS" : The data source is being processed.
  /// - "SUCCEEDED" : The data source was processed successfully, though some
  /// items might have had errors.
  core.String? processingState;

  /// The date at which the file of the data source was uploaded.
  ///
  /// Output only.
  core.String? uploadTime;

  FileUpload({
    this.dataSourceId,
    this.issues,
    this.itemsCreated,
    this.itemsTotal,
    this.itemsUpdated,
    this.name,
    this.processingState,
    this.uploadTime,
  });

  FileUpload.fromJson(core.Map json_)
    : this(
        dataSourceId: json_['dataSourceId'] as core.String?,
        issues:
            (json_['issues'] as core.List?)
                ?.map(
                  (value) => Issue.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        itemsCreated: json_['itemsCreated'] as core.String?,
        itemsTotal: json_['itemsTotal'] as core.String?,
        itemsUpdated: json_['itemsUpdated'] as core.String?,
        name: json_['name'] as core.String?,
        processingState: json_['processingState'] as core.String?,
        uploadTime: json_['uploadTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (dataSourceId != null) 'dataSourceId': dataSourceId!,
    if (issues != null) 'issues': issues!,
    if (itemsCreated != null) 'itemsCreated': itemsCreated!,
    if (itemsTotal != null) 'itemsTotal': itemsTotal!,
    if (itemsUpdated != null) 'itemsUpdated': itemsUpdated!,
    if (name != null) 'name': name!,
    if (processingState != null) 'processingState': processingState!,
    if (uploadTime != null) 'uploadTime': uploadTime!,
  };
}

/// An error occurring in the data source, like "invalid price".
class Issue {
  /// The code of the error, for example, "validation/invalid_value".
  ///
  /// Returns "?" if the code is unknown.
  ///
  /// Output only.
  core.String? code;

  /// The number of occurrences of the error in the file upload.
  ///
  /// Output only.
  core.String? count;

  /// The error description, for example, "Your data source contains items which
  /// have too many attributes, or are too big.
  ///
  /// These items will be dropped".
  ///
  /// Output only.
  core.String? description;

  /// Link to the documentation explaining the issue in more details, if
  /// available.
  ///
  /// Output only.
  core.String? documentationUri;

  /// The severity of the issue.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "SEVERITY_UNSPECIFIED" : Severity unspecified.
  /// - "WARNING" : The issue is the warning.
  /// - "ERROR" : The issue is an error.
  core.String? severity;

  /// The title of the issue, for example, "Item too big".
  ///
  /// Output only.
  core.String? title;

  Issue({
    this.code,
    this.count,
    this.description,
    this.documentationUri,
    this.severity,
    this.title,
  });

  Issue.fromJson(core.Map json_)
    : this(
        code: json_['code'] as core.String?,
        count: json_['count'] as core.String?,
        description: json_['description'] as core.String?,
        documentationUri: json_['documentationUri'] as core.String?,
        severity: json_['severity'] as core.String?,
        title: json_['title'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (code != null) 'code': code!,
    if (count != null) 'count': count!,
    if (description != null) 'description': description!,
    if (documentationUri != null) 'documentationUri': documentationUri!,
    if (severity != null) 'severity': severity!,
    if (title != null) 'title': title!,
  };
}

/// Response message for the ListDataSources method.
class ListDataSourcesResponse {
  /// The data sources from the specified account.
  core.List<DataSource>? dataSources;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  ListDataSourcesResponse({this.dataSources, this.nextPageToken});

  ListDataSourcesResponse.fromJson(core.Map json_)
    : this(
        dataSources:
            (json_['dataSources'] as core.List?)
                ?.map(
                  (value) => DataSource.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (dataSources != null) 'dataSources': dataSources!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// The local inventory data source type is only available for file inputs and
/// can't be used to create API local inventory data sources.
class LocalInventoryDataSource {
  /// The two-letter ISO 639-1 language of the items to which the local
  /// inventory is provided.
  ///
  /// Required. Immutable.
  core.String? contentLanguage;

  /// The feed label of the offers to which the local inventory is provided.
  ///
  /// Must be less than or equal to 20 uppercase letters (A-Z), numbers (0-9),
  /// and dashes (-). See also
  /// [migration to feed labels](https://developers.google.com/shopping-content/guides/products/feed-labels).
  ///
  /// Required. Immutable.
  core.String? feedLabel;

  LocalInventoryDataSource({this.contentLanguage, this.feedLabel});

  LocalInventoryDataSource.fromJson(core.Map json_)
    : this(
        contentLanguage: json_['contentLanguage'] as core.String?,
        feedLabel: json_['feedLabel'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (contentLanguage != null) 'contentLanguage': contentLanguage!,
    if (feedLabel != null) 'feedLabel': feedLabel!,
  };
}

/// The merchant review data source.
typedef MerchantReviewDataSource = $Empty;

/// The primary data source for local and online products.
class PrimaryProductDataSource {
  /// Specifies the type of data source channel.
  ///
  /// Optional. Immutable.
  /// Possible string values are:
  /// - "CHANNEL_UNSPECIFIED" : Not specified.
  /// - "ONLINE_PRODUCTS" : Online product.
  /// - "LOCAL_PRODUCTS" : Local product.
  /// - "PRODUCTS" : Unified data source for both local and online products.
  /// Note: Products management through the API is not possible for this
  /// channel.
  core.String? channel;

  /// The two-letter ISO 639-1 language of the items in the data source.
  ///
  /// `feedLabel` and `contentLanguage` must be either both set or unset. The
  /// fields can only be unset for data sources without file input. If set, the
  /// data source will only accept products matching this combination. If unset,
  /// the data source will accept products without that restriction.
  ///
  /// Optional. Immutable.
  core.String? contentLanguage;

  /// The countries where the items may be displayed.
  ///
  /// Represented as a
  /// [CLDR territory code](https://github.com/unicode-org/cldr/blob/latest/common/main/en.xml).
  ///
  /// Optional.
  core.List<core.String>? countries;

  /// Default rule management of the data source.
  ///
  /// If set, the linked data sources will be replaced.
  ///
  /// Optional.
  DefaultRule? defaultRule;

  /// A list of destinations describing where products of the data source can be
  /// shown.
  ///
  /// When retrieving the data source, the list contains all the destinations
  /// that can be used for the data source, including the ones that are disabled
  /// for the data source but enabled for the account. Only destinations that
  /// are enabled on the account, for example through program participation, can
  /// be enabled on the data source. If unset, during creation, the destinations
  /// will be inherited based on the account level program participation. If
  /// set, during creation or update, the data source will be set only for the
  /// specified destinations. Updating this field requires at least one
  /// destination.
  ///
  /// Optional.
  core.List<Destination>? destinations;

  /// The feed label that is specified on the data source level.
  ///
  /// Must be less than or equal to 20 uppercase letters (A-Z), numbers (0-9),
  /// and dashes (-). See also
  /// [migration to feed labels](https://developers.google.com/shopping-content/guides/products/feed-labels).
  /// `feedLabel` and `contentLanguage` must be either both set or unset for
  /// data sources with product content type. They must be set for data sources
  /// with a file input. If set, the data source will only accept products
  /// matching this combination. If unset, the data source will accept products
  /// without that restriction.
  ///
  /// Optional. Immutable.
  core.String? feedLabel;

  PrimaryProductDataSource({
    this.channel,
    this.contentLanguage,
    this.countries,
    this.defaultRule,
    this.destinations,
    this.feedLabel,
  });

  PrimaryProductDataSource.fromJson(core.Map json_)
    : this(
        channel: json_['channel'] as core.String?,
        contentLanguage: json_['contentLanguage'] as core.String?,
        countries:
            (json_['countries'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        defaultRule:
            json_.containsKey('defaultRule')
                ? DefaultRule.fromJson(
                  json_['defaultRule'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        destinations:
            (json_['destinations'] as core.List?)
                ?.map(
                  (value) => Destination.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        feedLabel: json_['feedLabel'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (channel != null) 'channel': channel!,
    if (contentLanguage != null) 'contentLanguage': contentLanguage!,
    if (countries != null) 'countries': countries!,
    if (defaultRule != null) 'defaultRule': defaultRule!,
    if (destinations != null) 'destinations': destinations!,
    if (feedLabel != null) 'feedLabel': feedLabel!,
  };
}

/// The product review data source.
typedef ProductReviewDataSource = $Empty;

/// The promotion data source.
class PromotionDataSource {
  /// The two-letter ISO 639-1 language of the items in the data source.
  ///
  /// Required. Immutable.
  core.String? contentLanguage;

  /// The target country used as part of the unique identifier.
  ///
  /// Represented as a
  /// [CLDR territory code](https://github.com/unicode-org/cldr/blob/latest/common/main/en.xml).
  /// Promotions are only available in selected
  /// [countries](https://support.google.com/merchants/answer/4588460).
  ///
  /// Required. Immutable.
  core.String? targetCountry;

  PromotionDataSource({this.contentLanguage, this.targetCountry});

  PromotionDataSource.fromJson(core.Map json_)
    : this(
        contentLanguage: json_['contentLanguage'] as core.String?,
        targetCountry: json_['targetCountry'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (contentLanguage != null) 'contentLanguage': contentLanguage!,
    if (targetCountry != null) 'targetCountry': targetCountry!,
  };
}

class RegionalInventoryDataSource {
  /// The two-letter ISO 639-1 language of the items to which the regional
  /// inventory is provided.
  ///
  /// Required. Immutable.
  core.String? contentLanguage;

  /// The feed label of the offers to which the regional inventory is provided.
  ///
  /// Must be less than or equal to 20 uppercase letters (A-Z), numbers (0-9),
  /// and dashes (-). See also
  /// [migration to feed labels](https://developers.google.com/shopping-content/guides/products/feed-labels).
  ///
  /// Required. Immutable.
  core.String? feedLabel;

  RegionalInventoryDataSource({this.contentLanguage, this.feedLabel});

  RegionalInventoryDataSource.fromJson(core.Map json_)
    : this(
        contentLanguage: json_['contentLanguage'] as core.String?,
        feedLabel: json_['feedLabel'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (contentLanguage != null) 'contentLanguage': contentLanguage!,
    if (feedLabel != null) 'feedLabel': feedLabel!,
  };
}

/// The supplemental data source for local and online products.
///
/// After creation, you should make sure to link the supplemental product data
/// source into one or more primary product data sources.
class SupplementalProductDataSource {
  /// The two-letter ISO 639-1 language of the items in the data source.
  ///
  /// `feedLabel` and `contentLanguage` must be either both set or unset. The
  /// fields can only be unset for data sources without file input. If set, the
  /// data source will only accept products matching this combination. If unset,
  /// the data source will accept produts without that restriction.
  ///
  /// Optional. Immutable.
  core.String? contentLanguage;

  /// The feed label that is specified on the data source level.
  ///
  /// Must be less than or equal to 20 uppercase letters (A-Z), numbers (0-9),
  /// and dashes (-). See also
  /// [migration to feed labels](https://developers.google.com/shopping-content/guides/products/feed-labels).
  /// `feedLabel` and `contentLanguage` must be either both set or unset for
  /// data sources with product content type. They must be set for data sources
  /// with a file input. The fields must be unset for data sources without file
  /// input. If set, the data source will only accept products matching this
  /// combination. If unset, the data source will accept produts without that
  /// restriction.
  ///
  /// Optional. Immutable.
  core.String? feedLabel;

  /// The (unordered and deduplicated) list of all primary data sources linked
  /// to this data source in either default or custom rules.
  ///
  /// Supplemental data source cannot be deleted before all links are removed.
  ///
  /// Output only.
  core.List<DataSourceReference>? referencingPrimaryDataSources;

  SupplementalProductDataSource({
    this.contentLanguage,
    this.feedLabel,
    this.referencingPrimaryDataSources,
  });

  SupplementalProductDataSource.fromJson(core.Map json_)
    : this(
        contentLanguage: json_['contentLanguage'] as core.String?,
        feedLabel: json_['feedLabel'] as core.String?,
        referencingPrimaryDataSources:
            (json_['referencingPrimaryDataSources'] as core.List?)
                ?.map(
                  (value) => DataSourceReference.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (contentLanguage != null) 'contentLanguage': contentLanguage!,
    if (feedLabel != null) 'feedLabel': feedLabel!,
    if (referencingPrimaryDataSources != null)
      'referencingPrimaryDataSources': referencingPrimaryDataSources!,
  };
}

/// Represents a time of day.
///
/// The date and time zone are either not significant or are specified
/// elsewhere. An API may choose to allow leap seconds. Related types are
/// google.type.Date and `google.protobuf.Timestamp`.
typedef TimeOfDay = $TimeOfDay;
