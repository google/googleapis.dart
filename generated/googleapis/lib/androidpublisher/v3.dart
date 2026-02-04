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

/// Google Play Android Developer API - v3
///
/// Lets Android application developers access their Google Play accounts. At a
/// high level, the expected workflow is to "insert" an Edit, make changes as
/// necessary, and then "commit" it.
///
/// For more information, see <https://developers.google.com/android-publisher>
///
/// Create an instance of [AndroidPublisherApi] to access these resources:
///
/// - [ApplicationsResource]
///   - [ApplicationsDeviceTierConfigsResource]
/// - [ApprecoveryResource]
/// - [EditsResource]
///   - [EditsApksResource]
///   - [EditsBundlesResource]
///   - [EditsCountryavailabilityResource]
///   - [EditsDeobfuscationfilesResource]
///   - [EditsDetailsResource]
///   - [EditsExpansionfilesResource]
///   - [EditsImagesResource]
///   - [EditsListingsResource]
///   - [EditsTestersResource]
///   - [EditsTracksResource]
/// - [ExternaltransactionsResource]
/// - [GeneratedapksResource]
/// - [GrantsResource]
/// - [InappproductsResource]
/// - [InternalappsharingartifactsResource]
/// - [MonetizationResource]
///   - [MonetizationOnetimeproductsResource]
///     - [MonetizationOnetimeproductsPurchaseOptionsResource]
///       - [MonetizationOnetimeproductsPurchaseOptionsOffersResource]
///   - [MonetizationSubscriptionsResource]
///     - [MonetizationSubscriptionsBasePlansResource]
///       - [MonetizationSubscriptionsBasePlansOffersResource]
/// - [OrdersResource]
/// - [PurchasesResource]
///   - [PurchasesProductsResource]
///   - [PurchasesProductsv2Resource]
///   - [PurchasesSubscriptionsResource]
///   - [PurchasesSubscriptionsv2Resource]
///   - [PurchasesVoidedpurchasesResource]
/// - [ReviewsResource]
/// - [SystemapksResource]
///   - [SystemapksVariantsResource]
/// - [UsersResource]
library;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../shared.dart';
import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show
        ApiRequestError,
        ByteRange,
        DetailedApiRequestError,
        DownloadOptions,
        Media,
        PartialDownloadOptions,
        ResumableUploadOptions,
        UploadOptions;

/// Lets Android application developers access their Google Play accounts.
///
/// At a high level, the expected workflow is to "insert" an Edit, make changes
/// as necessary, and then "commit" it.
class AndroidPublisherApi {
  /// View and manage your Google Play Developer account
  static const androidpublisherScope =
      'https://www.googleapis.com/auth/androidpublisher';

  final commons.ApiRequester _requester;

  ApplicationsResource get applications => ApplicationsResource(_requester);
  ApprecoveryResource get apprecovery => ApprecoveryResource(_requester);
  EditsResource get edits => EditsResource(_requester);
  ExternaltransactionsResource get externaltransactions =>
      ExternaltransactionsResource(_requester);
  GeneratedapksResource get generatedapks => GeneratedapksResource(_requester);
  GrantsResource get grants => GrantsResource(_requester);
  InappproductsResource get inappproducts => InappproductsResource(_requester);
  InternalappsharingartifactsResource get internalappsharingartifacts =>
      InternalappsharingartifactsResource(_requester);
  MonetizationResource get monetization => MonetizationResource(_requester);
  OrdersResource get orders => OrdersResource(_requester);
  PurchasesResource get purchases => PurchasesResource(_requester);
  ReviewsResource get reviews => ReviewsResource(_requester);
  SystemapksResource get systemapks => SystemapksResource(_requester);
  UsersResource get users => UsersResource(_requester);

  AndroidPublisherApi(
    http.Client client, {
    core.String rootUrl = 'https://androidpublisher.googleapis.com/',
    core.String servicePath = '',
  }) : _requester = commons.ApiRequester(
         client,
         rootUrl,
         servicePath,
         requestHeaders,
       );
}

class ApplicationsResource {
  final commons.ApiRequester _requester;

  ApplicationsDeviceTierConfigsResource get deviceTierConfigs =>
      ApplicationsDeviceTierConfigsResource(_requester);

  ApplicationsResource(commons.ApiRequester client) : _requester = client;

  /// Writes the Safety Labels declaration of an app.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Required. Package name of the app.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SafetyLabelsUpdateResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SafetyLabelsUpdateResponse> dataSafety(
    SafetyLabelsUpdateRequest request,
    core.String packageName, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/dataSafety';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return SafetyLabelsUpdateResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ApplicationsDeviceTierConfigsResource {
  final commons.ApiRequester _requester;

  ApplicationsDeviceTierConfigsResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a new device tier config for an app.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Package name of the app.
  ///
  /// [allowUnknownDevices] - Whether the service should accept device IDs that
  /// are unknown to Play's device catalog.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DeviceTierConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DeviceTierConfig> create(
    DeviceTierConfig request,
    core.String packageName, {
    core.bool? allowUnknownDevices,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'allowUnknownDevices': ?allowUnknownDevices == null
          ? null
          : ['${allowUnknownDevices}'],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/deviceTierConfigs';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return DeviceTierConfig.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Returns a particular device tier config.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Package name of the app.
  ///
  /// [deviceTierConfigId] - Required. Id of an existing device tier config.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DeviceTierConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DeviceTierConfig> get(
    core.String packageName,
    core.String deviceTierConfigId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/deviceTierConfigs/' +
        commons.escapeVariable('$deviceTierConfigId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return DeviceTierConfig.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Returns created device tier configs, ordered by descending creation time.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Package name of the app.
  ///
  /// [pageSize] - The maximum number of device tier configs to return. The
  /// service may return fewer than this value. If unspecified, at most 10
  /// device tier configs will be returned. The maximum value for this field is
  /// 100; values above 100 will be coerced to 100. Device tier configs will be
  /// ordered by descending creation time.
  ///
  /// [pageToken] - A page token, received from a previous
  /// `ListDeviceTierConfigs` call. Provide this to retrieve the subsequent
  /// page.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListDeviceTierConfigsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListDeviceTierConfigsResponse> list(
    core.String packageName, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/deviceTierConfigs';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListDeviceTierConfigsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ApprecoveryResource {
  final commons.ApiRequester _requester;

  ApprecoveryResource(commons.ApiRequester client) : _requester = client;

  /// Incrementally update targeting for a recovery action.
  ///
  /// Note that only the criteria selected during the creation of recovery
  /// action can be expanded.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Required. Package name of the app for which recovery
  /// action is to be updated.
  ///
  /// [appRecoveryId] - Required. ID corresponding to the app recovery action.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AddTargetingResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AddTargetingResponse> addTargeting(
    AddTargetingRequest request,
    core.String packageName,
    core.String appRecoveryId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/appRecoveries/' +
        commons.escapeVariable('$appRecoveryId') +
        ':addTargeting';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return AddTargetingResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Cancel an already executing app recovery action.
  ///
  /// Note that this action changes status of the recovery action to CANCELED.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Required. Package name of the app for which recovery
  /// action cancellation is requested.
  ///
  /// [appRecoveryId] - Required. ID corresponding to the app recovery action.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CancelAppRecoveryResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CancelAppRecoveryResponse> cancel(
    CancelAppRecoveryRequest request,
    core.String packageName,
    core.String appRecoveryId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/appRecoveries/' +
        commons.escapeVariable('$appRecoveryId') +
        ':cancel';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return CancelAppRecoveryResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Create an app recovery action with recovery status as DRAFT.
  ///
  /// Note that this action does not execute the recovery action.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Required. Package name of the app on which recovery action
  /// is performed.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AppRecoveryAction].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AppRecoveryAction> create(
    CreateDraftAppRecoveryRequest request,
    core.String packageName, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/appRecoveries';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return AppRecoveryAction.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deploy an already created app recovery action with recovery status DRAFT.
  ///
  /// Note that this action activates the recovery action for all targeted users
  /// and changes its status to ACTIVE.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Required. Package name of the app for which recovery
  /// action is deployed.
  ///
  /// [appRecoveryId] - Required. ID corresponding to the app recovery action to
  /// deploy.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DeployAppRecoveryResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DeployAppRecoveryResponse> deploy(
    DeployAppRecoveryRequest request,
    core.String packageName,
    core.String appRecoveryId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/appRecoveries/' +
        commons.escapeVariable('$appRecoveryId') +
        ':deploy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return DeployAppRecoveryResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// List all app recovery action resources associated with a particular
  /// package name and app version.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Required. Package name of the app for which list of
  /// recovery actions is requested.
  ///
  /// [versionCode] - Required. Version code targeted by the list of recovery
  /// actions.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListAppRecoveriesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAppRecoveriesResponse> list(
    core.String packageName, {
    core.String? versionCode,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'versionCode': ?versionCode == null ? null : [versionCode],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/appRecoveries';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListAppRecoveriesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class EditsResource {
  final commons.ApiRequester _requester;

  EditsApksResource get apks => EditsApksResource(_requester);
  EditsBundlesResource get bundles => EditsBundlesResource(_requester);
  EditsCountryavailabilityResource get countryavailability =>
      EditsCountryavailabilityResource(_requester);
  EditsDeobfuscationfilesResource get deobfuscationfiles =>
      EditsDeobfuscationfilesResource(_requester);
  EditsDetailsResource get details => EditsDetailsResource(_requester);
  EditsExpansionfilesResource get expansionfiles =>
      EditsExpansionfilesResource(_requester);
  EditsImagesResource get images => EditsImagesResource(_requester);
  EditsListingsResource get listings => EditsListingsResource(_requester);
  EditsTestersResource get testers => EditsTestersResource(_requester);
  EditsTracksResource get tracks => EditsTracksResource(_requester);

  EditsResource(commons.ApiRequester client) : _requester = client;

  /// Commits an app edit.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Package name of the app.
  ///
  /// [editId] - Identifier of the edit.
  ///
  /// [changesNotSentForReview] - When a rejection happens, the parameter will
  /// make sure that the changes in this edit won't be reviewed until they are
  /// explicitly sent for review from within the Google Play Console UI. These
  /// changes will be added to any other changes that are not yet sent for
  /// review.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AppEdit].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AppEdit> commit(
    core.String packageName,
    core.String editId, {
    core.bool? changesNotSentForReview,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'changesNotSentForReview': ?changesNotSentForReview == null
          ? null
          : ['${changesNotSentForReview}'],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/edits/' +
        commons.escapeVariable('$editId') +
        ':commit';

    final response_ = await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
    );
    return AppEdit.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes an app edit.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Package name of the app.
  ///
  /// [editId] - Identifier of the edit.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> delete(
    core.String packageName,
    core.String editId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/edits/' +
        commons.escapeVariable('$editId');

    await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Gets an app edit.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Package name of the app.
  ///
  /// [editId] - Identifier of the edit.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AppEdit].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AppEdit> get(
    core.String packageName,
    core.String editId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/edits/' +
        commons.escapeVariable('$editId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return AppEdit.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates a new edit for an app.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Package name of the app.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AppEdit].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AppEdit> insert(
    AppEdit request,
    core.String packageName, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/edits';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return AppEdit.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Validates an app edit.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Package name of the app.
  ///
  /// [editId] - Identifier of the edit.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AppEdit].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AppEdit> validate(
    core.String packageName,
    core.String editId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/edits/' +
        commons.escapeVariable('$editId') +
        ':validate';

    final response_ = await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
    );
    return AppEdit.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class EditsApksResource {
  final commons.ApiRequester _requester;

  EditsApksResource(commons.ApiRequester client) : _requester = client;

  /// Creates a new APK without uploading the APK itself to Google Play, instead
  /// hosting the APK at a specified URL.
  ///
  /// This function is only available to organizations using Managed Play whose
  /// application is configured to restrict distribution to the organizations.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Package name of the app.
  ///
  /// [editId] - Identifier of the edit.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ApksAddExternallyHostedResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ApksAddExternallyHostedResponse> addexternallyhosted(
    ApksAddExternallyHostedRequest request,
    core.String packageName,
    core.String editId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/edits/' +
        commons.escapeVariable('$editId') +
        '/apks/externallyHosted';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ApksAddExternallyHostedResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists all current APKs of the app and edit.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Package name of the app.
  ///
  /// [editId] - Identifier of the edit.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ApksListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ApksListResponse> list(
    core.String packageName,
    core.String editId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/edits/' +
        commons.escapeVariable('$editId') +
        '/apks';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ApksListResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Uploads an APK and adds to the current edit.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Package name of the app.
  ///
  /// [editId] - Identifier of the edit.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// [uploadMedia] - The media to upload.
  ///
  /// [uploadOptions] - Options for the media upload. Streaming Media without
  /// the length being known ahead of time is only supported via resumable
  /// uploads.
  ///
  /// Completes with a [Apk].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Apk> upload(
    core.String packageName,
    core.String editId, {
    core.String? $fields,
    commons.UploadOptions uploadOptions = commons.UploadOptions.defaultOptions,
    commons.Media? uploadMedia,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    core.String url_;
    if (uploadMedia == null) {
      url_ =
          'androidpublisher/v3/applications/' +
          commons.escapeVariable('$packageName') +
          '/edits/' +
          commons.escapeVariable('$editId') +
          '/apks';
    } else if (uploadOptions is commons.ResumableUploadOptions) {
      url_ =
          '/resumable/upload/androidpublisher/v3/applications/' +
          commons.escapeVariable('$packageName') +
          '/edits/' +
          commons.escapeVariable('$editId') +
          '/apks';
    } else {
      url_ =
          '/upload/androidpublisher/v3/applications/' +
          commons.escapeVariable('$packageName') +
          '/edits/' +
          commons.escapeVariable('$editId') +
          '/apks';
    }

    final response_ = await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
      uploadMedia: uploadMedia,
      uploadOptions: uploadOptions,
    );
    return Apk.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class EditsBundlesResource {
  final commons.ApiRequester _requester;

  EditsBundlesResource(commons.ApiRequester client) : _requester = client;

  /// Lists all current Android App Bundles of the app and edit.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Package name of the app.
  ///
  /// [editId] - Identifier of the edit.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BundlesListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BundlesListResponse> list(
    core.String packageName,
    core.String editId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/edits/' +
        commons.escapeVariable('$editId') +
        '/bundles';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return BundlesListResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Uploads a new Android App Bundle to this edit.
  ///
  /// If you are using the Google API client libraries, please increase the
  /// timeout of the http request before calling this endpoint (a timeout of 2
  /// minutes is recommended). See
  /// [Timeouts and Errors](https://developers.google.com/api-client-library/java/google-api-java-client/errors)
  /// for an example in java.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Package name of the app.
  ///
  /// [editId] - Identifier of the edit.
  ///
  /// [ackBundleInstallationWarning] - Deprecated. The installation warning has
  /// been removed, it's not necessary to set this field anymore.
  ///
  /// [deviceTierConfigId] - Device tier config (DTC) to be used for generating
  /// deliverables (APKs). Contains id of the DTC or "LATEST" for last uploaded
  /// DTC.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// [uploadMedia] - The media to upload.
  ///
  /// [uploadOptions] - Options for the media upload. Streaming Media without
  /// the length being known ahead of time is only supported via resumable
  /// uploads.
  ///
  /// Completes with a [Bundle].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Bundle> upload(
    core.String packageName,
    core.String editId, {
    core.bool? ackBundleInstallationWarning,
    core.String? deviceTierConfigId,
    core.String? $fields,
    commons.UploadOptions uploadOptions = commons.UploadOptions.defaultOptions,
    commons.Media? uploadMedia,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'ackBundleInstallationWarning': ?ackBundleInstallationWarning == null
          ? null
          : ['${ackBundleInstallationWarning}'],
      'deviceTierConfigId': ?deviceTierConfigId == null
          ? null
          : [deviceTierConfigId],
      'fields': ?$fields == null ? null : [$fields],
    };

    core.String url_;
    if (uploadMedia == null) {
      url_ =
          'androidpublisher/v3/applications/' +
          commons.escapeVariable('$packageName') +
          '/edits/' +
          commons.escapeVariable('$editId') +
          '/bundles';
    } else if (uploadOptions is commons.ResumableUploadOptions) {
      url_ =
          '/resumable/upload/androidpublisher/v3/applications/' +
          commons.escapeVariable('$packageName') +
          '/edits/' +
          commons.escapeVariable('$editId') +
          '/bundles';
    } else {
      url_ =
          '/upload/androidpublisher/v3/applications/' +
          commons.escapeVariable('$packageName') +
          '/edits/' +
          commons.escapeVariable('$editId') +
          '/bundles';
    }

    final response_ = await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
      uploadMedia: uploadMedia,
      uploadOptions: uploadOptions,
    );
    return Bundle.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class EditsCountryavailabilityResource {
  final commons.ApiRequester _requester;

  EditsCountryavailabilityResource(commons.ApiRequester client)
    : _requester = client;

  /// Gets country availability.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Package name of the app.
  ///
  /// [editId] - Identifier of the edit.
  ///
  /// [track] - The track to read from.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TrackCountryAvailability].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TrackCountryAvailability> get(
    core.String packageName,
    core.String editId,
    core.String track, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/edits/' +
        commons.escapeVariable('$editId') +
        '/countryAvailability/' +
        commons.escapeVariable('$track');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return TrackCountryAvailability.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class EditsDeobfuscationfilesResource {
  final commons.ApiRequester _requester;

  EditsDeobfuscationfilesResource(commons.ApiRequester client)
    : _requester = client;

  /// Uploads a new deobfuscation file and attaches to the specified APK.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Unique identifier for the Android app.
  ///
  /// [editId] - Unique identifier for this edit.
  ///
  /// [apkVersionCode] - The version code of the APK whose Deobfuscation File is
  /// being uploaded.
  ///
  /// [deobfuscationFileType] - The type of the deobfuscation file.
  /// Possible string values are:
  /// - "deobfuscationFileTypeUnspecified" : Unspecified deobfuscation file
  /// type.
  /// - "proguard" : Proguard deobfuscation file type.
  /// - "nativeCode" : Native debugging symbols file type.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// [uploadMedia] - The media to upload.
  ///
  /// [uploadOptions] - Options for the media upload. Streaming Media without
  /// the length being known ahead of time is only supported via resumable
  /// uploads.
  ///
  /// Completes with a [DeobfuscationFilesUploadResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DeobfuscationFilesUploadResponse> upload(
    core.String packageName,
    core.String editId,
    core.int apkVersionCode,
    core.String deobfuscationFileType, {
    core.String? $fields,
    commons.UploadOptions uploadOptions = commons.UploadOptions.defaultOptions,
    commons.Media? uploadMedia,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    core.String url_;
    if (uploadMedia == null) {
      url_ =
          'androidpublisher/v3/applications/' +
          commons.escapeVariable('$packageName') +
          '/edits/' +
          commons.escapeVariable('$editId') +
          '/apks/' +
          commons.escapeVariable('$apkVersionCode') +
          '/deobfuscationFiles/' +
          commons.escapeVariable('$deobfuscationFileType');
    } else if (uploadOptions is commons.ResumableUploadOptions) {
      url_ =
          '/resumable/upload/androidpublisher/v3/applications/' +
          commons.escapeVariable('$packageName') +
          '/edits/' +
          commons.escapeVariable('$editId') +
          '/apks/' +
          commons.escapeVariable('$apkVersionCode') +
          '/deobfuscationFiles/' +
          commons.escapeVariable('$deobfuscationFileType');
    } else {
      url_ =
          '/upload/androidpublisher/v3/applications/' +
          commons.escapeVariable('$packageName') +
          '/edits/' +
          commons.escapeVariable('$editId') +
          '/apks/' +
          commons.escapeVariable('$apkVersionCode') +
          '/deobfuscationFiles/' +
          commons.escapeVariable('$deobfuscationFileType');
    }

    final response_ = await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
      uploadMedia: uploadMedia,
      uploadOptions: uploadOptions,
    );
    return DeobfuscationFilesUploadResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class EditsDetailsResource {
  final commons.ApiRequester _requester;

  EditsDetailsResource(commons.ApiRequester client) : _requester = client;

  /// Gets details of an app.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Package name of the app.
  ///
  /// [editId] - Identifier of the edit.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AppDetails].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AppDetails> get(
    core.String packageName,
    core.String editId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/edits/' +
        commons.escapeVariable('$editId') +
        '/details';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return AppDetails.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Patches details of an app.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Package name of the app.
  ///
  /// [editId] - Identifier of the edit.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AppDetails].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AppDetails> patch(
    AppDetails request,
    core.String packageName,
    core.String editId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/edits/' +
        commons.escapeVariable('$editId') +
        '/details';

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return AppDetails.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates details of an app.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Package name of the app.
  ///
  /// [editId] - Identifier of the edit.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AppDetails].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AppDetails> update(
    AppDetails request,
    core.String packageName,
    core.String editId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/edits/' +
        commons.escapeVariable('$editId') +
        '/details';

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return AppDetails.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class EditsExpansionfilesResource {
  final commons.ApiRequester _requester;

  EditsExpansionfilesResource(commons.ApiRequester client)
    : _requester = client;

  /// Fetches the expansion file configuration for the specified APK.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Package name of the app.
  ///
  /// [editId] - Identifier of the edit.
  ///
  /// [apkVersionCode] - The version code of the APK whose expansion file
  /// configuration is being read or modified.
  ///
  /// [expansionFileType] - The file type of the file configuration which is
  /// being read or modified.
  /// Possible string values are:
  /// - "expansionFileTypeUnspecified" : Unspecified expansion file type.
  /// - "main" : Main expansion file.
  /// - "patch" : Patch expansion file.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ExpansionFile].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ExpansionFile> get(
    core.String packageName,
    core.String editId,
    core.int apkVersionCode,
    core.String expansionFileType, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/edits/' +
        commons.escapeVariable('$editId') +
        '/apks/' +
        commons.escapeVariable('$apkVersionCode') +
        '/expansionFiles/' +
        commons.escapeVariable('$expansionFileType');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ExpansionFile.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Patches the APK's expansion file configuration to reference another APK's
  /// expansion file.
  ///
  /// To add a new expansion file use the Upload method.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Package name of the app.
  ///
  /// [editId] - Identifier of the edit.
  ///
  /// [apkVersionCode] - The version code of the APK whose expansion file
  /// configuration is being read or modified.
  ///
  /// [expansionFileType] - The file type of the expansion file configuration
  /// which is being updated.
  /// Possible string values are:
  /// - "expansionFileTypeUnspecified" : Unspecified expansion file type.
  /// - "main" : Main expansion file.
  /// - "patch" : Patch expansion file.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ExpansionFile].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ExpansionFile> patch(
    ExpansionFile request,
    core.String packageName,
    core.String editId,
    core.int apkVersionCode,
    core.String expansionFileType, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/edits/' +
        commons.escapeVariable('$editId') +
        '/apks/' +
        commons.escapeVariable('$apkVersionCode') +
        '/expansionFiles/' +
        commons.escapeVariable('$expansionFileType');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return ExpansionFile.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the APK's expansion file configuration to reference another APK's
  /// expansion file.
  ///
  /// To add a new expansion file use the Upload method.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Package name of the app.
  ///
  /// [editId] - Identifier of the edit.
  ///
  /// [apkVersionCode] - The version code of the APK whose expansion file
  /// configuration is being read or modified.
  ///
  /// [expansionFileType] - The file type of the file configuration which is
  /// being read or modified.
  /// Possible string values are:
  /// - "expansionFileTypeUnspecified" : Unspecified expansion file type.
  /// - "main" : Main expansion file.
  /// - "patch" : Patch expansion file.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ExpansionFile].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ExpansionFile> update(
    ExpansionFile request,
    core.String packageName,
    core.String editId,
    core.int apkVersionCode,
    core.String expansionFileType, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/edits/' +
        commons.escapeVariable('$editId') +
        '/apks/' +
        commons.escapeVariable('$apkVersionCode') +
        '/expansionFiles/' +
        commons.escapeVariable('$expansionFileType');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return ExpansionFile.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Uploads a new expansion file and attaches to the specified APK.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Package name of the app.
  ///
  /// [editId] - Identifier of the edit.
  ///
  /// [apkVersionCode] - The version code of the APK whose expansion file
  /// configuration is being read or modified.
  ///
  /// [expansionFileType] - The file type of the expansion file configuration
  /// which is being updated.
  /// Possible string values are:
  /// - "expansionFileTypeUnspecified" : Unspecified expansion file type.
  /// - "main" : Main expansion file.
  /// - "patch" : Patch expansion file.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// [uploadMedia] - The media to upload.
  ///
  /// [uploadOptions] - Options for the media upload. Streaming Media without
  /// the length being known ahead of time is only supported via resumable
  /// uploads.
  ///
  /// Completes with a [ExpansionFilesUploadResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ExpansionFilesUploadResponse> upload(
    core.String packageName,
    core.String editId,
    core.int apkVersionCode,
    core.String expansionFileType, {
    core.String? $fields,
    commons.UploadOptions uploadOptions = commons.UploadOptions.defaultOptions,
    commons.Media? uploadMedia,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    core.String url_;
    if (uploadMedia == null) {
      url_ =
          'androidpublisher/v3/applications/' +
          commons.escapeVariable('$packageName') +
          '/edits/' +
          commons.escapeVariable('$editId') +
          '/apks/' +
          commons.escapeVariable('$apkVersionCode') +
          '/expansionFiles/' +
          commons.escapeVariable('$expansionFileType');
    } else if (uploadOptions is commons.ResumableUploadOptions) {
      url_ =
          '/resumable/upload/androidpublisher/v3/applications/' +
          commons.escapeVariable('$packageName') +
          '/edits/' +
          commons.escapeVariable('$editId') +
          '/apks/' +
          commons.escapeVariable('$apkVersionCode') +
          '/expansionFiles/' +
          commons.escapeVariable('$expansionFileType');
    } else {
      url_ =
          '/upload/androidpublisher/v3/applications/' +
          commons.escapeVariable('$packageName') +
          '/edits/' +
          commons.escapeVariable('$editId') +
          '/apks/' +
          commons.escapeVariable('$apkVersionCode') +
          '/expansionFiles/' +
          commons.escapeVariable('$expansionFileType');
    }

    final response_ = await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
      uploadMedia: uploadMedia,
      uploadOptions: uploadOptions,
    );
    return ExpansionFilesUploadResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class EditsImagesResource {
  final commons.ApiRequester _requester;

  EditsImagesResource(commons.ApiRequester client) : _requester = client;

  /// Deletes the image (specified by id) from the edit.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Package name of the app.
  ///
  /// [editId] - Identifier of the edit.
  ///
  /// [language] - Language localization code (a BCP-47 language tag; for
  /// example, "de-AT" for Austrian German).
  ///
  /// [imageType] - Type of the Image.
  /// Possible string values are:
  /// - "appImageTypeUnspecified" : Unspecified type. Do not use.
  /// - "phoneScreenshots" : Phone screenshot.
  /// - "sevenInchScreenshots" : Seven inch screenshot.
  /// - "tenInchScreenshots" : Ten inch screenshot.
  /// - "tvScreenshots" : TV screenshot.
  /// - "wearScreenshots" : Wear screenshot.
  /// - "icon" : Icon.
  /// - "featureGraphic" : Feature graphic.
  /// - "tvBanner" : TV banner.
  ///
  /// [imageId] - Unique identifier an image within the set of images attached
  /// to this edit.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> delete(
    core.String packageName,
    core.String editId,
    core.String language,
    core.String imageType,
    core.String imageId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/edits/' +
        commons.escapeVariable('$editId') +
        '/listings/' +
        commons.escapeVariable('$language') +
        '/' +
        commons.escapeVariable('$imageType') +
        '/' +
        commons.escapeVariable('$imageId');

    await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Deletes all images for the specified language and image type.
  ///
  /// Returns an empty response if no images are found.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Package name of the app.
  ///
  /// [editId] - Identifier of the edit.
  ///
  /// [language] - Language localization code (a BCP-47 language tag; for
  /// example, "de-AT" for Austrian German). Providing a language that is not
  /// supported by the App is a no-op.
  ///
  /// [imageType] - Type of the Image. Providing an image type that refers to no
  /// images is a no-op.
  /// Possible string values are:
  /// - "appImageTypeUnspecified" : Unspecified type. Do not use.
  /// - "phoneScreenshots" : Phone screenshot.
  /// - "sevenInchScreenshots" : Seven inch screenshot.
  /// - "tenInchScreenshots" : Ten inch screenshot.
  /// - "tvScreenshots" : TV screenshot.
  /// - "wearScreenshots" : Wear screenshot.
  /// - "icon" : Icon.
  /// - "featureGraphic" : Feature graphic.
  /// - "tvBanner" : TV banner.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ImagesDeleteAllResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ImagesDeleteAllResponse> deleteall(
    core.String packageName,
    core.String editId,
    core.String language,
    core.String imageType, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/edits/' +
        commons.escapeVariable('$editId') +
        '/listings/' +
        commons.escapeVariable('$language') +
        '/' +
        commons.escapeVariable('$imageType');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return ImagesDeleteAllResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists all images.
  ///
  /// The response may be empty.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Package name of the app.
  ///
  /// [editId] - Identifier of the edit.
  ///
  /// [language] - Language localization code (a BCP-47 language tag; for
  /// example, "de-AT" for Austrian German). There must be a store listing for
  /// the specified language.
  ///
  /// [imageType] - Type of the Image. Providing an image type that refers to no
  /// images will return an empty response.
  /// Possible string values are:
  /// - "appImageTypeUnspecified" : Unspecified type. Do not use.
  /// - "phoneScreenshots" : Phone screenshot.
  /// - "sevenInchScreenshots" : Seven inch screenshot.
  /// - "tenInchScreenshots" : Ten inch screenshot.
  /// - "tvScreenshots" : TV screenshot.
  /// - "wearScreenshots" : Wear screenshot.
  /// - "icon" : Icon.
  /// - "featureGraphic" : Feature graphic.
  /// - "tvBanner" : TV banner.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ImagesListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ImagesListResponse> list(
    core.String packageName,
    core.String editId,
    core.String language,
    core.String imageType, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/edits/' +
        commons.escapeVariable('$editId') +
        '/listings/' +
        commons.escapeVariable('$language') +
        '/' +
        commons.escapeVariable('$imageType');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ImagesListResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Uploads an image of the specified language and image type, and adds to the
  /// edit.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Package name of the app.
  ///
  /// [editId] - Identifier of the edit.
  ///
  /// [language] - Language localization code (a BCP-47 language tag; for
  /// example, "de-AT" for Austrian German). Providing a language that is not
  /// supported by the App is a no-op.
  ///
  /// [imageType] - Type of the Image.
  /// Possible string values are:
  /// - "appImageTypeUnspecified" : Unspecified type. Do not use.
  /// - "phoneScreenshots" : Phone screenshot.
  /// - "sevenInchScreenshots" : Seven inch screenshot.
  /// - "tenInchScreenshots" : Ten inch screenshot.
  /// - "tvScreenshots" : TV screenshot.
  /// - "wearScreenshots" : Wear screenshot.
  /// - "icon" : Icon.
  /// - "featureGraphic" : Feature graphic.
  /// - "tvBanner" : TV banner.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// [uploadMedia] - The media to upload.
  ///
  /// [uploadOptions] - Options for the media upload. Streaming Media without
  /// the length being known ahead of time is only supported via resumable
  /// uploads.
  ///
  /// Completes with a [ImagesUploadResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ImagesUploadResponse> upload(
    core.String packageName,
    core.String editId,
    core.String language,
    core.String imageType, {
    core.String? $fields,
    commons.UploadOptions uploadOptions = commons.UploadOptions.defaultOptions,
    commons.Media? uploadMedia,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    core.String url_;
    if (uploadMedia == null) {
      url_ =
          'androidpublisher/v3/applications/' +
          commons.escapeVariable('$packageName') +
          '/edits/' +
          commons.escapeVariable('$editId') +
          '/listings/' +
          commons.escapeVariable('$language') +
          '/' +
          commons.escapeVariable('$imageType');
    } else if (uploadOptions is commons.ResumableUploadOptions) {
      url_ =
          '/resumable/upload/androidpublisher/v3/applications/' +
          commons.escapeVariable('$packageName') +
          '/edits/' +
          commons.escapeVariable('$editId') +
          '/listings/' +
          commons.escapeVariable('$language') +
          '/' +
          commons.escapeVariable('$imageType');
    } else {
      url_ =
          '/upload/androidpublisher/v3/applications/' +
          commons.escapeVariable('$packageName') +
          '/edits/' +
          commons.escapeVariable('$editId') +
          '/listings/' +
          commons.escapeVariable('$language') +
          '/' +
          commons.escapeVariable('$imageType');
    }

    final response_ = await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
      uploadMedia: uploadMedia,
      uploadOptions: uploadOptions,
    );
    return ImagesUploadResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class EditsListingsResource {
  final commons.ApiRequester _requester;

  EditsListingsResource(commons.ApiRequester client) : _requester = client;

  /// Deletes a localized store listing.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Package name of the app.
  ///
  /// [editId] - Identifier of the edit.
  ///
  /// [language] - Language localization code (a BCP-47 language tag; for
  /// example, "de-AT" for Austrian German).
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> delete(
    core.String packageName,
    core.String editId,
    core.String language, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/edits/' +
        commons.escapeVariable('$editId') +
        '/listings/' +
        commons.escapeVariable('$language');

    await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Deletes all store listings.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Package name of the app.
  ///
  /// [editId] - Identifier of the edit.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> deleteall(
    core.String packageName,
    core.String editId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/edits/' +
        commons.escapeVariable('$editId') +
        '/listings';

    await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Gets a localized store listing.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Package name of the app.
  ///
  /// [editId] - Identifier of the edit.
  ///
  /// [language] - Language localization code (a BCP-47 language tag; for
  /// example, "de-AT" for Austrian German).
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Listing].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Listing> get(
    core.String packageName,
    core.String editId,
    core.String language, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/edits/' +
        commons.escapeVariable('$editId') +
        '/listings/' +
        commons.escapeVariable('$language');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Listing.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all localized store listings.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Package name of the app.
  ///
  /// [editId] - Identifier of the edit.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListingsListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListingsListResponse> list(
    core.String packageName,
    core.String editId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/edits/' +
        commons.escapeVariable('$editId') +
        '/listings';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListingsListResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Patches a localized store listing.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Package name of the app.
  ///
  /// [editId] - Identifier of the edit.
  ///
  /// [language] - Language localization code (a BCP-47 language tag; for
  /// example, "de-AT" for Austrian German).
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Listing].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Listing> patch(
    Listing request,
    core.String packageName,
    core.String editId,
    core.String language, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/edits/' +
        commons.escapeVariable('$editId') +
        '/listings/' +
        commons.escapeVariable('$language');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Listing.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates or updates a localized store listing.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Package name of the app.
  ///
  /// [editId] - Identifier of the edit.
  ///
  /// [language] - Language localization code (a BCP-47 language tag; for
  /// example, "de-AT" for Austrian German).
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Listing].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Listing> update(
    Listing request,
    core.String packageName,
    core.String editId,
    core.String language, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/edits/' +
        commons.escapeVariable('$editId') +
        '/listings/' +
        commons.escapeVariable('$language');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return Listing.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class EditsTestersResource {
  final commons.ApiRequester _requester;

  EditsTestersResource(commons.ApiRequester client) : _requester = client;

  /// Gets testers.
  ///
  /// Note: Testers resource does not support email lists.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Package name of the app.
  ///
  /// [editId] - Identifier of the edit.
  ///
  /// [track] - The track to read from.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Testers].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Testers> get(
    core.String packageName,
    core.String editId,
    core.String track, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/edits/' +
        commons.escapeVariable('$editId') +
        '/testers/' +
        commons.escapeVariable('$track');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Testers.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Patches testers.
  ///
  /// Note: Testers resource does not support email lists.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Package name of the app.
  ///
  /// [editId] - Identifier of the edit.
  ///
  /// [track] - The track to update.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Testers].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Testers> patch(
    Testers request,
    core.String packageName,
    core.String editId,
    core.String track, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/edits/' +
        commons.escapeVariable('$editId') +
        '/testers/' +
        commons.escapeVariable('$track');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Testers.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates testers.
  ///
  /// Note: Testers resource does not support email lists.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Package name of the app.
  ///
  /// [editId] - Identifier of the edit.
  ///
  /// [track] - The track to update.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Testers].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Testers> update(
    Testers request,
    core.String packageName,
    core.String editId,
    core.String track, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/edits/' +
        commons.escapeVariable('$editId') +
        '/testers/' +
        commons.escapeVariable('$track');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return Testers.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class EditsTracksResource {
  final commons.ApiRequester _requester;

  EditsTracksResource(commons.ApiRequester client) : _requester = client;

  /// Creates a new track.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Required. Package name of the app.
  ///
  /// [editId] - Required. Identifier of the edit.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Track].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Track> create(
    TrackConfig request,
    core.String packageName,
    core.String editId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/edits/' +
        commons.escapeVariable('$editId') +
        '/tracks';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Track.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets a track.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Package name of the app.
  ///
  /// [editId] - Identifier of the edit.
  ///
  /// [track] - Identifier of the track.
  /// [More on track name](https://developers.google.com/android-publisher/tracks#ff-track-name)
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Track].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Track> get(
    core.String packageName,
    core.String editId,
    core.String track, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/edits/' +
        commons.escapeVariable('$editId') +
        '/tracks/' +
        commons.escapeVariable('$track');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Track.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all tracks.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Package name of the app.
  ///
  /// [editId] - Identifier of the edit.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TracksListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TracksListResponse> list(
    core.String packageName,
    core.String editId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/edits/' +
        commons.escapeVariable('$editId') +
        '/tracks';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return TracksListResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Patches a track.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Package name of the app.
  ///
  /// [editId] - Identifier of the edit.
  ///
  /// [track] - Identifier of the track.
  /// [More on track name](https://developers.google.com/android-publisher/tracks#ff-track-name)
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Track].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Track> patch(
    Track request,
    core.String packageName,
    core.String editId,
    core.String track, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/edits/' +
        commons.escapeVariable('$editId') +
        '/tracks/' +
        commons.escapeVariable('$track');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Track.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a track.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Package name of the app.
  ///
  /// [editId] - Identifier of the edit.
  ///
  /// [track] - Identifier of the track.
  /// [More on track name](https://developers.google.com/android-publisher/tracks#ff-track-name)
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Track].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Track> update(
    Track request,
    core.String packageName,
    core.String editId,
    core.String track, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/edits/' +
        commons.escapeVariable('$editId') +
        '/tracks/' +
        commons.escapeVariable('$track');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return Track.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ExternaltransactionsResource {
  final commons.ApiRequester _requester;

  ExternaltransactionsResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a new external transaction.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource where this external transaction
  /// will be created. Format: applications/{package_name}
  /// Value must have pattern `^applications/\[^/\]+$`.
  ///
  /// [externalTransactionId] - Required. The id to use for the external
  /// transaction. Must be unique across all other transactions for the app.
  /// This value should be 1-63 characters and valid characters are
  /// /a-zA-Z0-9_-/. Do not use this field to store any Personally Identifiable
  /// Information (PII) such as emails. Attempting to store PII in this field
  /// may result in requests being blocked.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ExternalTransaction].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ExternalTransaction> createexternaltransaction(
    ExternalTransaction request,
    core.String parent, {
    core.String? externalTransactionId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'externalTransactionId': ?externalTransactionId == null
          ? null
          : [externalTransactionId],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/' +
        core.Uri.encodeFull('$parent') +
        '/externalTransactions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ExternalTransaction.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets an existing external transaction.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the external transaction to retrieve.
  /// Format:
  /// applications/{package_name}/externalTransactions/{external_transaction}
  /// Value must have pattern
  /// `^applications/\[^/\]+/externalTransactions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ExternalTransaction].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ExternalTransaction> getexternaltransaction(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'androidpublisher/v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ExternalTransaction.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Refunds or partially refunds an existing external transaction.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the external transaction that will be
  /// refunded. Format:
  /// applications/{package_name}/externalTransactions/{external_transaction}
  /// Value must have pattern
  /// `^applications/\[^/\]+/externalTransactions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ExternalTransaction].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ExternalTransaction> refundexternaltransaction(
    RefundExternalTransactionRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/' + core.Uri.encodeFull('$name') + ':refund';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ExternalTransaction.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class GeneratedapksResource {
  final commons.ApiRequester _requester;

  GeneratedapksResource(commons.ApiRequester client) : _requester = client;

  /// Downloads a single signed APK generated from an app bundle.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Package name of the app.
  ///
  /// [versionCode] - Version code of the app bundle.
  ///
  /// [downloadId] - Download ID, which uniquely identifies the APK to download.
  /// Can be obtained from the response of `generatedapks.list` method.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// [downloadOptions] - Options for downloading. A download can be either a
  /// Metadata (default) or Media download. Partial Media downloads are possible
  /// as well.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<commons.Media?> download(
    core.String packageName,
    core.int versionCode,
    core.String downloadId, {
    core.String? $fields,
    commons.DownloadOptions downloadOptions = commons.DownloadOptions.metadata,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/generatedApks/' +
        commons.escapeVariable('$versionCode') +
        '/downloads/' +
        commons.escapeVariable('$downloadId') +
        ':download';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
      downloadOptions: downloadOptions,
    );
    if (downloadOptions.isMetadataDownload) {
      return null;
    } else {
      return response_ as commons.Media;
    }
  }

  /// Returns download metadata for all APKs that were generated from a given
  /// app bundle.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Package name of the app.
  ///
  /// [versionCode] - Version code of the app bundle.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GeneratedApksListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GeneratedApksListResponse> list(
    core.String packageName,
    core.int versionCode, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/generatedApks/' +
        commons.escapeVariable('$versionCode');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GeneratedApksListResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class GrantsResource {
  final commons.ApiRequester _requester;

  GrantsResource(commons.ApiRequester client) : _requester = client;

  /// Grant access for a user to the given package.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The user which needs permission. Format:
  /// developers/{developer}/users/{user}
  /// Value must have pattern `^developers/\[^/\]+/users/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Grant].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Grant> create(
    Grant request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/' + core.Uri.encodeFull('$parent') + '/grants';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Grant.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Removes all access for the user to the given package or developer account.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the grant to delete. Format:
  /// developers/{developer}/users/{email}/grants/{package_name}
  /// Value must have pattern
  /// `^developers/\[^/\]+/users/\[^/\]+/grants/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> delete(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'androidpublisher/v3/' + core.Uri.encodeFull('$name');

    await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Updates access for the user to the given package.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name for this grant, following the pattern
  /// "developers/{developer}/users/{email}/grants/{package_name}". If this
  /// grant is for a draft app, the app ID will be used in this resource name
  /// instead of the package name.
  /// Value must have pattern
  /// `^developers/\[^/\]+/users/\[^/\]+/grants/\[^/\]+$`.
  ///
  /// [updateMask] - Optional. The list of fields to be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Grant].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Grant> patch(
    Grant request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'androidpublisher/v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Grant.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class InappproductsResource {
  final commons.ApiRequester _requester;

  InappproductsResource(commons.ApiRequester client) : _requester = client;

  /// Deletes in-app products (managed products or subscriptions).
  ///
  /// Set the latencyTolerance field on nested requests to
  /// PRODUCT_UPDATE_LATENCY_TOLERANCE_LATENCY_TOLERANT to achieve maximum
  /// update throughput. This method should not be used to delete subscriptions.
  /// See
  /// [this article](https://android-developers.googleblog.com/2023/06/changes-to-google-play-developer-api-june-2023.html)
  /// for more information.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Package name of the app.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> batchDelete(
    InappproductsBatchDeleteRequest request,
    core.String packageName, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/inappproducts:batchDelete';

    await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Reads multiple in-app products, which can be managed products or
  /// subscriptions.
  ///
  /// This method should not be used to retrieve subscriptions. See
  /// [this article](https://android-developers.googleblog.com/2023/06/changes-to-google-play-developer-api-june-2023.html)
  /// for more information.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Package name of the app.
  ///
  /// [sku] - Unique identifier for the in-app products.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [InappproductsBatchGetResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<InappproductsBatchGetResponse> batchGet(
    core.String packageName, {
    core.List<core.String>? sku,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'sku': ?sku,
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/inappproducts:batchGet';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return InappproductsBatchGetResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates or inserts one or more in-app products (managed products or
  /// subscriptions).
  ///
  /// Set the latencyTolerance field on nested requests to
  /// PRODUCT_UPDATE_LATENCY_TOLERANCE_LATENCY_TOLERANT to achieve maximum
  /// update throughput. This method should no longer be used to update
  /// subscriptions. See
  /// [this article](https://android-developers.googleblog.com/2023/06/changes-to-google-play-developer-api-june-2023.html)
  /// for more information.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Package name of the app.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [InappproductsBatchUpdateResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<InappproductsBatchUpdateResponse> batchUpdate(
    InappproductsBatchUpdateRequest request,
    core.String packageName, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/inappproducts:batchUpdate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return InappproductsBatchUpdateResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes an in-app product (a managed product or a subscription).
  ///
  /// This method should no longer be used to delete subscriptions. See
  /// [this article](https://android-developers.googleblog.com/2023/06/changes-to-google-play-developer-api-june-2023.html)
  /// for more information.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Package name of the app.
  ///
  /// [sku] - Unique identifier for the in-app product.
  ///
  /// [latencyTolerance] - Optional. The latency tolerance for the propagation
  /// of this product update. Defaults to latency-sensitive.
  /// Possible string values are:
  /// - "PRODUCT_UPDATE_LATENCY_TOLERANCE_UNSPECIFIED" : Defaults to
  /// PRODUCT_UPDATE_LATENCY_TOLERANCE_LATENCY_SENSITIVE.
  /// - "PRODUCT_UPDATE_LATENCY_TOLERANCE_LATENCY_SENSITIVE" : The update will
  /// propagate to clients within several minutes on average and up to a few
  /// hours in rare cases. Throughput is limited to 7,200 updates per app per
  /// hour.
  /// - "PRODUCT_UPDATE_LATENCY_TOLERANCE_LATENCY_TOLERANT" : The update will
  /// propagate to clients within 24 hours. Supports high throughput of up to
  /// 720,000 updates per app per hour using batch modification methods.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> delete(
    core.String packageName,
    core.String sku, {
    core.String? latencyTolerance,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'latencyTolerance': ?latencyTolerance == null ? null : [latencyTolerance],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/inappproducts/' +
        commons.escapeVariable('$sku');

    await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Gets an in-app product, which can be a managed product or a subscription.
  ///
  /// This method should no longer be used to retrieve subscriptions. See
  /// [this article](https://android-developers.googleblog.com/2023/06/changes-to-google-play-developer-api-june-2023.html)
  /// for more information.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Package name of the app.
  ///
  /// [sku] - Unique identifier for the in-app product.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [InAppProduct].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<InAppProduct> get(
    core.String packageName,
    core.String sku, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/inappproducts/' +
        commons.escapeVariable('$sku');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return InAppProduct.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Creates an in-app product (a managed product or a subscription).
  ///
  /// This method should no longer be used to create subscriptions. See
  /// [this article](https://android-developers.googleblog.com/2023/06/changes-to-google-play-developer-api-june-2023.html)
  /// for more information.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Package name of the app.
  ///
  /// [autoConvertMissingPrices] - If true the prices for all regions targeted
  /// by the parent app that don't have a price specified for this in-app
  /// product will be auto converted to the target currency based on the default
  /// price. Defaults to false.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [InAppProduct].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<InAppProduct> insert(
    InAppProduct request,
    core.String packageName, {
    core.bool? autoConvertMissingPrices,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'autoConvertMissingPrices': ?autoConvertMissingPrices == null
          ? null
          : ['${autoConvertMissingPrices}'],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/inappproducts';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return InAppProduct.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists all in-app products - both managed products and subscriptions.
  ///
  /// If an app has a large number of in-app products, the response may be
  /// paginated. In this case the response field `tokenPagination.nextPageToken`
  /// will be set and the caller should provide its value as a `token` request
  /// parameter to retrieve the next page. This method should no longer be used
  /// to retrieve subscriptions. See
  /// [this article](https://android-developers.googleblog.com/2023/06/changes-to-google-play-developer-api-june-2023.html)
  /// for more information.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Package name of the app.
  ///
  /// [maxResults] - Deprecated and ignored. The page size is determined by the
  /// server.
  ///
  /// [startIndex] - Deprecated and ignored. Set the `token` parameter to
  /// retrieve the next page.
  ///
  /// [token] - Pagination token. If empty, list starts at the first product.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [InappproductsListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<InappproductsListResponse> list(
    core.String packageName, {
    core.int? maxResults,
    core.int? startIndex,
    core.String? token,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'maxResults': ?maxResults == null ? null : ['${maxResults}'],
      'startIndex': ?startIndex == null ? null : ['${startIndex}'],
      'token': ?token == null ? null : [token],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/inappproducts';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return InappproductsListResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Patches an in-app product (a managed product or a subscription).
  ///
  /// This method should no longer be used to update subscriptions. See
  /// [this article](https://android-developers.googleblog.com/2023/06/changes-to-google-play-developer-api-june-2023.html)
  /// for more information.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Package name of the app.
  ///
  /// [sku] - Unique identifier for the in-app product.
  ///
  /// [autoConvertMissingPrices] - If true the prices for all regions targeted
  /// by the parent app that don't have a price specified for this in-app
  /// product will be auto converted to the target currency based on the default
  /// price. Defaults to false.
  ///
  /// [latencyTolerance] - Optional. The latency tolerance for the propagation
  /// of this product update. Defaults to latency-sensitive.
  /// Possible string values are:
  /// - "PRODUCT_UPDATE_LATENCY_TOLERANCE_UNSPECIFIED" : Defaults to
  /// PRODUCT_UPDATE_LATENCY_TOLERANCE_LATENCY_SENSITIVE.
  /// - "PRODUCT_UPDATE_LATENCY_TOLERANCE_LATENCY_SENSITIVE" : The update will
  /// propagate to clients within several minutes on average and up to a few
  /// hours in rare cases. Throughput is limited to 7,200 updates per app per
  /// hour.
  /// - "PRODUCT_UPDATE_LATENCY_TOLERANCE_LATENCY_TOLERANT" : The update will
  /// propagate to clients within 24 hours. Supports high throughput of up to
  /// 720,000 updates per app per hour using batch modification methods.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [InAppProduct].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<InAppProduct> patch(
    InAppProduct request,
    core.String packageName,
    core.String sku, {
    core.bool? autoConvertMissingPrices,
    core.String? latencyTolerance,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'autoConvertMissingPrices': ?autoConvertMissingPrices == null
          ? null
          : ['${autoConvertMissingPrices}'],
      'latencyTolerance': ?latencyTolerance == null ? null : [latencyTolerance],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/inappproducts/' +
        commons.escapeVariable('$sku');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return InAppProduct.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates an in-app product (a managed product or a subscription).
  ///
  /// This method should no longer be used to update subscriptions. See
  /// [this article](https://android-developers.googleblog.com/2023/06/changes-to-google-play-developer-api-june-2023.html)
  /// for more information.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Package name of the app.
  ///
  /// [sku] - Unique identifier for the in-app product.
  ///
  /// [allowMissing] - If set to true, and the in-app product with the given
  /// package_name and sku doesn't exist, the in-app product will be created.
  ///
  /// [autoConvertMissingPrices] - If true the prices for all regions targeted
  /// by the parent app that don't have a price specified for this in-app
  /// product will be auto converted to the target currency based on the default
  /// price. Defaults to false.
  ///
  /// [latencyTolerance] - Optional. The latency tolerance for the propagation
  /// of this product update. Defaults to latency-sensitive.
  /// Possible string values are:
  /// - "PRODUCT_UPDATE_LATENCY_TOLERANCE_UNSPECIFIED" : Defaults to
  /// PRODUCT_UPDATE_LATENCY_TOLERANCE_LATENCY_SENSITIVE.
  /// - "PRODUCT_UPDATE_LATENCY_TOLERANCE_LATENCY_SENSITIVE" : The update will
  /// propagate to clients within several minutes on average and up to a few
  /// hours in rare cases. Throughput is limited to 7,200 updates per app per
  /// hour.
  /// - "PRODUCT_UPDATE_LATENCY_TOLERANCE_LATENCY_TOLERANT" : The update will
  /// propagate to clients within 24 hours. Supports high throughput of up to
  /// 720,000 updates per app per hour using batch modification methods.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [InAppProduct].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<InAppProduct> update(
    InAppProduct request,
    core.String packageName,
    core.String sku, {
    core.bool? allowMissing,
    core.bool? autoConvertMissingPrices,
    core.String? latencyTolerance,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'allowMissing': ?allowMissing == null ? null : ['${allowMissing}'],
      'autoConvertMissingPrices': ?autoConvertMissingPrices == null
          ? null
          : ['${autoConvertMissingPrices}'],
      'latencyTolerance': ?latencyTolerance == null ? null : [latencyTolerance],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/inappproducts/' +
        commons.escapeVariable('$sku');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return InAppProduct.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class InternalappsharingartifactsResource {
  final commons.ApiRequester _requester;

  InternalappsharingartifactsResource(commons.ApiRequester client)
    : _requester = client;

  /// Uploads an APK to internal app sharing.
  ///
  /// If you are using the Google API client libraries, please increase the
  /// timeout of the http request before calling this endpoint (a timeout of 2
  /// minutes is recommended). See
  /// [Timeouts and Errors](https://developers.google.com/api-client-library/java/google-api-java-client/errors)
  /// for an example in java.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Package name of the app.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// [uploadMedia] - The media to upload.
  ///
  /// [uploadOptions] - Options for the media upload. Streaming Media without
  /// the length being known ahead of time is only supported via resumable
  /// uploads.
  ///
  /// Completes with a [InternalAppSharingArtifact].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<InternalAppSharingArtifact> uploadapk(
    core.String packageName, {
    core.String? $fields,
    commons.UploadOptions uploadOptions = commons.UploadOptions.defaultOptions,
    commons.Media? uploadMedia,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    core.String url_;
    if (uploadMedia == null) {
      url_ =
          'androidpublisher/v3/applications/internalappsharing/' +
          commons.escapeVariable('$packageName') +
          '/artifacts/apk';
    } else if (uploadOptions is commons.ResumableUploadOptions) {
      url_ =
          '/resumable/upload/androidpublisher/v3/applications/internalappsharing/' +
          commons.escapeVariable('$packageName') +
          '/artifacts/apk';
    } else {
      url_ =
          '/upload/androidpublisher/v3/applications/internalappsharing/' +
          commons.escapeVariable('$packageName') +
          '/artifacts/apk';
    }

    final response_ = await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
      uploadMedia: uploadMedia,
      uploadOptions: uploadOptions,
    );
    return InternalAppSharingArtifact.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Uploads an app bundle to internal app sharing.
  ///
  /// If you are using the Google API client libraries, please increase the
  /// timeout of the http request before calling this endpoint (a timeout of 2
  /// minutes is recommended). See
  /// [Timeouts and Errors](https://developers.google.com/api-client-library/java/google-api-java-client/errors)
  /// for an example in java.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Package name of the app.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// [uploadMedia] - The media to upload.
  ///
  /// [uploadOptions] - Options for the media upload. Streaming Media without
  /// the length being known ahead of time is only supported via resumable
  /// uploads.
  ///
  /// Completes with a [InternalAppSharingArtifact].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<InternalAppSharingArtifact> uploadbundle(
    core.String packageName, {
    core.String? $fields,
    commons.UploadOptions uploadOptions = commons.UploadOptions.defaultOptions,
    commons.Media? uploadMedia,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    core.String url_;
    if (uploadMedia == null) {
      url_ =
          'androidpublisher/v3/applications/internalappsharing/' +
          commons.escapeVariable('$packageName') +
          '/artifacts/bundle';
    } else if (uploadOptions is commons.ResumableUploadOptions) {
      url_ =
          '/resumable/upload/androidpublisher/v3/applications/internalappsharing/' +
          commons.escapeVariable('$packageName') +
          '/artifacts/bundle';
    } else {
      url_ =
          '/upload/androidpublisher/v3/applications/internalappsharing/' +
          commons.escapeVariable('$packageName') +
          '/artifacts/bundle';
    }

    final response_ = await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
      uploadMedia: uploadMedia,
      uploadOptions: uploadOptions,
    );
    return InternalAppSharingArtifact.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class MonetizationResource {
  final commons.ApiRequester _requester;

  MonetizationOnetimeproductsResource get onetimeproducts =>
      MonetizationOnetimeproductsResource(_requester);
  MonetizationSubscriptionsResource get subscriptions =>
      MonetizationSubscriptionsResource(_requester);

  MonetizationResource(commons.ApiRequester client) : _requester = client;

  /// Calculates the region prices, using today's exchange rate and
  /// country-specific pricing patterns, based on the price in the request for a
  /// set of regions.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Required. The app package name.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ConvertRegionPricesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ConvertRegionPricesResponse> convertRegionPrices(
    ConvertRegionPricesRequest request,
    core.String packageName, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/pricing:convertRegionPrices';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ConvertRegionPricesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class MonetizationOnetimeproductsResource {
  final commons.ApiRequester _requester;

  MonetizationOnetimeproductsPurchaseOptionsResource get purchaseOptions =>
      MonetizationOnetimeproductsPurchaseOptionsResource(_requester);

  MonetizationOnetimeproductsResource(commons.ApiRequester client)
    : _requester = client;

  /// Deletes one or more one-time products.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Required. The parent app (package name) for which the
  /// one-time products should be deleted. Must be equal to the package_name
  /// field on all the OneTimeProduct resources.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> batchDelete(
    BatchDeleteOneTimeProductsRequest request,
    core.String packageName, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/oneTimeProducts:batchDelete';

    await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Reads one or more one-time products.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Required. The parent app (package name) for which the
  /// products should be retrieved. Must be equal to the package_name field on
  /// all requests.
  ///
  /// [productIds] - Required. A list of up to 100 product IDs to retrieve. All
  /// IDs must be different.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BatchGetOneTimeProductsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BatchGetOneTimeProductsResponse> batchGet(
    core.String packageName, {
    core.List<core.String>? productIds,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'productIds': ?productIds,
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/oneTimeProducts:batchGet';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return BatchGetOneTimeProductsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Creates or updates one or more one-time products.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Required. The parent app (package name) for which the
  /// one-time products should be updated. Must be equal to the package_name
  /// field on all the OneTimeProduct resources.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BatchUpdateOneTimeProductsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BatchUpdateOneTimeProductsResponse> batchUpdate(
    BatchUpdateOneTimeProductsRequest request,
    core.String packageName, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/oneTimeProducts:batchUpdate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return BatchUpdateOneTimeProductsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes a one-time product.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Required. The parent app (package name) of the one-time
  /// product to delete.
  ///
  /// [productId] - Required. The one-time product ID of the one-time product to
  /// delete.
  ///
  /// [latencyTolerance] - Optional. The latency tolerance for the propagation
  /// of this product update. Defaults to latency-sensitive.
  /// Possible string values are:
  /// - "PRODUCT_UPDATE_LATENCY_TOLERANCE_UNSPECIFIED" : Defaults to
  /// PRODUCT_UPDATE_LATENCY_TOLERANCE_LATENCY_SENSITIVE.
  /// - "PRODUCT_UPDATE_LATENCY_TOLERANCE_LATENCY_SENSITIVE" : The update will
  /// propagate to clients within several minutes on average and up to a few
  /// hours in rare cases. Throughput is limited to 7,200 updates per app per
  /// hour.
  /// - "PRODUCT_UPDATE_LATENCY_TOLERANCE_LATENCY_TOLERANT" : The update will
  /// propagate to clients within 24 hours. Supports high throughput of up to
  /// 720,000 updates per app per hour using batch modification methods.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> delete(
    core.String packageName,
    core.String productId, {
    core.String? latencyTolerance,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'latencyTolerance': ?latencyTolerance == null ? null : [latencyTolerance],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/oneTimeProducts/' +
        commons.escapeVariable('$productId');

    await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Reads a single one-time product.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Required. The parent app (package name) of the product to
  /// retrieve.
  ///
  /// [productId] - Required. The product ID of the product to retrieve.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [OneTimeProduct].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<OneTimeProduct> get(
    core.String packageName,
    core.String productId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/oneTimeProducts/' +
        commons.escapeVariable('$productId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return OneTimeProduct.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists all one-time products under a given app.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Required. The parent app (package name) for which the
  /// one-time product should be read.
  ///
  /// [pageSize] - Optional. The maximum number of one-time product to return.
  /// The service may return fewer than this value. If unspecified, at most 50
  /// one-time products will be returned. The maximum value is 1000; values
  /// above 1000 will be coerced to 1000.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListOneTimeProducts` call. Provide this to retrieve the subsequent page.
  /// When paginating, all other parameters provided to `ListOneTimeProducts`
  /// must match the call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListOneTimeProductsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListOneTimeProductsResponse> list(
    core.String packageName, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/oneTimeProducts';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListOneTimeProductsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Creates or updates a one-time product.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Required. Immutable. Package name of the parent app.
  ///
  /// [productId] - Required. Immutable. Unique product ID of the product.
  /// Unique within the parent app. Product IDs must start with a number or
  /// lowercase letter, and can contain numbers (0-9), lowercase letters (a-z),
  /// underscores (_), and periods (.).
  ///
  /// [allowMissing] - Optional. If set to true, and the one-time product with
  /// the given package_name and product_id doesn't exist, the one-time product
  /// will be created. If a new one-time product is created, update_mask is
  /// ignored.
  ///
  /// [latencyTolerance] - Optional. The latency tolerance for the propagation
  /// of this product upsert. Defaults to latency-sensitive.
  /// Possible string values are:
  /// - "PRODUCT_UPDATE_LATENCY_TOLERANCE_UNSPECIFIED" : Defaults to
  /// PRODUCT_UPDATE_LATENCY_TOLERANCE_LATENCY_SENSITIVE.
  /// - "PRODUCT_UPDATE_LATENCY_TOLERANCE_LATENCY_SENSITIVE" : The update will
  /// propagate to clients within several minutes on average and up to a few
  /// hours in rare cases. Throughput is limited to 7,200 updates per app per
  /// hour.
  /// - "PRODUCT_UPDATE_LATENCY_TOLERANCE_LATENCY_TOLERANT" : The update will
  /// propagate to clients within 24 hours. Supports high throughput of up to
  /// 720,000 updates per app per hour using batch modification methods.
  ///
  /// [regionsVersion_version] - Required. A string representing the version of
  /// available regions being used for the specified resource. Regional prices
  /// and latest supported version for the resource have to be specified
  /// according to the information published in
  /// [this article](https://support.google.com/googleplay/android-developer/answer/10532353).
  /// Each time the supported locations substantially change, the version will
  /// be incremented. Using this field will ensure that creating and updating
  /// the resource with an older region's version and set of regional prices and
  /// currencies will succeed even though a new version is available.
  ///
  /// [updateMask] - Required. The list of fields to be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [OneTimeProduct].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<OneTimeProduct> patch(
    OneTimeProduct request,
    core.String packageName,
    core.String productId, {
    core.bool? allowMissing,
    core.String? latencyTolerance,
    core.String? regionsVersion_version,
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'allowMissing': ?allowMissing == null ? null : ['${allowMissing}'],
      'latencyTolerance': ?latencyTolerance == null ? null : [latencyTolerance],
      'regionsVersion.version': ?regionsVersion_version == null
          ? null
          : [regionsVersion_version],
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/onetimeproducts/' +
        commons.escapeVariable('$productId');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return OneTimeProduct.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class MonetizationOnetimeproductsPurchaseOptionsResource {
  final commons.ApiRequester _requester;

  MonetizationOnetimeproductsPurchaseOptionsOffersResource get offers =>
      MonetizationOnetimeproductsPurchaseOptionsOffersResource(_requester);

  MonetizationOnetimeproductsPurchaseOptionsResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Deletes purchase options across one or multiple one-time products.
  ///
  /// By default this operation will fail if there are any existing offers under
  /// the deleted purchase options. Use the force parameter to override the
  /// default behavior.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Required. The parent app (package name) of the purchase
  /// options to delete.
  ///
  /// [productId] - Required. The product ID of the parent one-time product, if
  /// all purchase options to delete belong to the same one-time product. If
  /// this batch delete spans multiple one-time products, set this field to "-".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> batchDelete(
    BatchDeletePurchaseOptionsRequest request,
    core.String packageName,
    core.String productId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/oneTimeProducts/' +
        commons.escapeVariable('$productId') +
        '/purchaseOptions:batchDelete';

    await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Activates or deactivates purchase options across one or multiple one-time
  /// products.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Required. The parent app (package name) of the updated
  /// purchase options.
  ///
  /// [productId] - Required. The product ID of the parent one-time product, if
  /// all updated purchase options belong to the same one-time product. If this
  /// batch update spans multiple one-time products, set this field to "-".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BatchUpdatePurchaseOptionStatesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BatchUpdatePurchaseOptionStatesResponse> batchUpdateStates(
    BatchUpdatePurchaseOptionStatesRequest request,
    core.String packageName,
    core.String productId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/oneTimeProducts/' +
        commons.escapeVariable('$productId') +
        '/purchaseOptions:batchUpdateStates';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return BatchUpdatePurchaseOptionStatesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class MonetizationOnetimeproductsPurchaseOptionsOffersResource {
  final commons.ApiRequester _requester;

  MonetizationOnetimeproductsPurchaseOptionsOffersResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Activates a one-time product offer.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Required. The parent app (package name) of the offer to
  /// activate.
  ///
  /// [productId] - Required. The parent one-time product (ID) of the offer to
  /// activate.
  ///
  /// [purchaseOptionId] - Required. The parent purchase option (ID) of the
  /// offer to activate.
  ///
  /// [offerId] - Required. The offer ID of the offer to activate.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [OneTimeProductOffer].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<OneTimeProductOffer> activate(
    ActivateOneTimeProductOfferRequest request,
    core.String packageName,
    core.String productId,
    core.String purchaseOptionId,
    core.String offerId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/oneTimeProducts/' +
        commons.escapeVariable('$productId') +
        '/purchaseOptions/' +
        commons.escapeVariable('$purchaseOptionId') +
        '/offers/' +
        commons.escapeVariable('$offerId') +
        ':activate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return OneTimeProductOffer.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes one or more one-time product offers.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Required. The parent app (package name) of the offers to
  /// delete. Must be equal to the package_name field on all the
  /// OneTimeProductOffer resources.
  ///
  /// [productId] - Required. The product ID of the parent one-time product, if
  /// all offers to delete belong to the same product. If this request spans
  /// multiple one-time products, set this field to "-".
  ///
  /// [purchaseOptionId] - Required. The parent purchase option (ID) for which
  /// the offers should be deleted. May be specified as '-' to update offers
  /// from multiple purchase options.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> batchDelete(
    BatchDeleteOneTimeProductOffersRequest request,
    core.String packageName,
    core.String productId,
    core.String purchaseOptionId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/oneTimeProducts/' +
        commons.escapeVariable('$productId') +
        '/purchaseOptions/' +
        commons.escapeVariable('$purchaseOptionId') +
        '/offers:batchDelete';

    await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Reads one or more one-time product offers.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Required. The parent app (package name) of the updated
  /// offers. Must be equal to the package_name field on all the updated
  /// OneTimeProductOffer resources.
  ///
  /// [productId] - Required. The product ID of the parent one-time product, if
  /// all updated offers belong to the same product. If this request spans
  /// multiple one-time products, set this field to "-".
  ///
  /// [purchaseOptionId] - Required. The parent purchase option (ID) for which
  /// the offers should be updated. May be specified as '-' to update offers
  /// from multiple purchase options.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BatchGetOneTimeProductOffersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BatchGetOneTimeProductOffersResponse> batchGet(
    BatchGetOneTimeProductOffersRequest request,
    core.String packageName,
    core.String productId,
    core.String purchaseOptionId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/oneTimeProducts/' +
        commons.escapeVariable('$productId') +
        '/purchaseOptions/' +
        commons.escapeVariable('$purchaseOptionId') +
        '/offers:batchGet';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return BatchGetOneTimeProductOffersResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Creates or updates one or more one-time product offers.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Required. The parent app (package name) of the updated
  /// offers. Must be equal to the package_name field on all the updated
  /// OneTimeProductOffer resources.
  ///
  /// [productId] - Required. The product ID of the parent one-time product, if
  /// all updated offers belong to the same product. If this request spans
  /// multiple one-time products, set this field to "-".
  ///
  /// [purchaseOptionId] - Required. The parent purchase option (ID) for which
  /// the offers should be updated. May be specified as '-' to update offers
  /// from multiple purchase options.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BatchUpdateOneTimeProductOffersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BatchUpdateOneTimeProductOffersResponse> batchUpdate(
    BatchUpdateOneTimeProductOffersRequest request,
    core.String packageName,
    core.String productId,
    core.String purchaseOptionId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/oneTimeProducts/' +
        commons.escapeVariable('$productId') +
        '/purchaseOptions/' +
        commons.escapeVariable('$purchaseOptionId') +
        '/offers:batchUpdate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return BatchUpdateOneTimeProductOffersResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates a batch of one-time product offer states.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Required. The parent app (package name) of the updated
  /// one-time product offers.
  ///
  /// [productId] - Required. The product ID of the parent one-time product, if
  /// all updated offers belong to the same one-time product. If this batch
  /// update spans multiple one-time products, set this field to "-".
  ///
  /// [purchaseOptionId] - Required. The purchase option ID of the parent
  /// purchase option, if all updated offers belong to the same purchase option.
  /// If this batch update spans multiple purchase options, set this field to
  /// "-".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BatchUpdateOneTimeProductOfferStatesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BatchUpdateOneTimeProductOfferStatesResponse> batchUpdateStates(
    BatchUpdateOneTimeProductOfferStatesRequest request,
    core.String packageName,
    core.String productId,
    core.String purchaseOptionId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/oneTimeProducts/' +
        commons.escapeVariable('$productId') +
        '/purchaseOptions/' +
        commons.escapeVariable('$purchaseOptionId') +
        '/offers:batchUpdateStates';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return BatchUpdateOneTimeProductOfferStatesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Cancels a one-time product offer.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Required. The parent app (package name) of the offer to
  /// cancel.
  ///
  /// [productId] - Required. The parent one-time product (ID) of the offer to
  /// cancel.
  ///
  /// [purchaseOptionId] - Required. The parent purchase option (ID) of the
  /// offer to cancel.
  ///
  /// [offerId] - Required. The offer ID of the offer to cancel.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [OneTimeProductOffer].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<OneTimeProductOffer> cancel(
    CancelOneTimeProductOfferRequest request,
    core.String packageName,
    core.String productId,
    core.String purchaseOptionId,
    core.String offerId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/oneTimeProducts/' +
        commons.escapeVariable('$productId') +
        '/purchaseOptions/' +
        commons.escapeVariable('$purchaseOptionId') +
        '/offers/' +
        commons.escapeVariable('$offerId') +
        ':cancel';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return OneTimeProductOffer.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deactivates a one-time product offer.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Required. The parent app (package name) of the offer to
  /// deactivate.
  ///
  /// [productId] - Required. The parent one-time product (ID) of the offer to
  /// deactivate.
  ///
  /// [purchaseOptionId] - Required. The parent purchase option (ID) of the
  /// offer to deactivate.
  ///
  /// [offerId] - Required. The offer ID of the offer to deactivate.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [OneTimeProductOffer].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<OneTimeProductOffer> deactivate(
    DeactivateOneTimeProductOfferRequest request,
    core.String packageName,
    core.String productId,
    core.String purchaseOptionId,
    core.String offerId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/oneTimeProducts/' +
        commons.escapeVariable('$productId') +
        '/purchaseOptions/' +
        commons.escapeVariable('$purchaseOptionId') +
        '/offers/' +
        commons.escapeVariable('$offerId') +
        ':deactivate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return OneTimeProductOffer.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists all offers under a given app, product, or purchase option.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Required. The parent app (package name) for which the
  /// offers should be read.
  ///
  /// [productId] - Required. The parent one-time product (ID) for which the
  /// offers should be read. May be specified as '-' to read all offers under an
  /// app.
  ///
  /// [purchaseOptionId] - Required. The parent purchase option (ID) for which
  /// the offers should be read. May be specified as '-' to read all offers
  /// under a one-time product or an app. Must be specified as '-' if product_id
  /// is specified as '-'.
  ///
  /// [pageSize] - Optional. The maximum number of offers to return. The service
  /// may return fewer than this value. If unspecified, at most 50 offers will
  /// be returned. The maximum value is 1000; values above 1000 will be coerced
  /// to 1000.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListOneTimeProductsOffers` call. Provide this to retrieve the subsequent
  /// page. When paginating, product_id, package_name and purchase_option_id
  /// provided to `ListOneTimeProductsOffersRequest` must match the call that
  /// provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListOneTimeProductOffersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListOneTimeProductOffersResponse> list(
    core.String packageName,
    core.String productId,
    core.String purchaseOptionId, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/oneTimeProducts/' +
        commons.escapeVariable('$productId') +
        '/purchaseOptions/' +
        commons.escapeVariable('$purchaseOptionId') +
        '/offers';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListOneTimeProductOffersResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class MonetizationSubscriptionsResource {
  final commons.ApiRequester _requester;

  MonetizationSubscriptionsBasePlansResource get basePlans =>
      MonetizationSubscriptionsBasePlansResource(_requester);

  MonetizationSubscriptionsResource(commons.ApiRequester client)
    : _requester = client;

  /// Deprecated: subscription archiving is not supported.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Required. The parent app (package name) of the app of the
  /// subscription to delete.
  ///
  /// [productId] - Required. The unique product ID of the subscription to
  /// delete.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Subscription].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  async.Future<Subscription> archive(
    ArchiveSubscriptionRequest request,
    core.String packageName,
    core.String productId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/subscriptions/' +
        commons.escapeVariable('$productId') +
        ':archive';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Subscription.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Reads one or more subscriptions.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Required. The parent app (package name) for which the
  /// subscriptions should be retrieved. Must be equal to the package_name field
  /// on all the requests.
  ///
  /// [productIds] - Required. A list of up to 100 subscription product IDs to
  /// retrieve. All the IDs must be different.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BatchGetSubscriptionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BatchGetSubscriptionsResponse> batchGet(
    core.String packageName, {
    core.List<core.String>? productIds,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'productIds': ?productIds,
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/subscriptions:batchGet';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return BatchGetSubscriptionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates a batch of subscriptions.
  ///
  /// Set the latencyTolerance field on nested requests to
  /// PRODUCT_UPDATE_LATENCY_TOLERANCE_LATENCY_TOLERANT to achieve maximum
  /// update throughput.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Required. The parent app (package name) for which the
  /// subscriptions should be updated. Must be equal to the package_name field
  /// on all the Subscription resources.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BatchUpdateSubscriptionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BatchUpdateSubscriptionsResponse> batchUpdate(
    BatchUpdateSubscriptionsRequest request,
    core.String packageName, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/subscriptions:batchUpdate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return BatchUpdateSubscriptionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Creates a new subscription.
  ///
  /// Newly added base plans will remain in draft state until activated.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Required. The parent app (package name) for which the
  /// subscription should be created. Must be equal to the package_name field on
  /// the Subscription resource.
  ///
  /// [productId] - Required. The ID to use for the subscription. For the
  /// requirements on this format, see the documentation of the product_id field
  /// on the Subscription resource.
  ///
  /// [regionsVersion_version] - Required. A string representing the version of
  /// available regions being used for the specified resource. Regional prices
  /// and latest supported version for the resource have to be specified
  /// according to the information published in
  /// [this article](https://support.google.com/googleplay/android-developer/answer/10532353).
  /// Each time the supported locations substantially change, the version will
  /// be incremented. Using this field will ensure that creating and updating
  /// the resource with an older region's version and set of regional prices and
  /// currencies will succeed even though a new version is available.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Subscription].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Subscription> create(
    Subscription request,
    core.String packageName, {
    core.String? productId,
    core.String? regionsVersion_version,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'productId': ?productId == null ? null : [productId],
      'regionsVersion.version': ?regionsVersion_version == null
          ? null
          : [regionsVersion_version],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/subscriptions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Subscription.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes a subscription.
  ///
  /// A subscription can only be deleted if it has never had a base plan
  /// published.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Required. The parent app (package name) of the app of the
  /// subscription to delete.
  ///
  /// [productId] - Required. The unique product ID of the subscription to
  /// delete.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> delete(
    core.String packageName,
    core.String productId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/subscriptions/' +
        commons.escapeVariable('$productId');

    await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Reads a single subscription.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Required. The parent app (package name) of the
  /// subscription to get.
  ///
  /// [productId] - Required. The unique product ID of the subscription to get.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Subscription].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Subscription> get(
    core.String packageName,
    core.String productId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/subscriptions/' +
        commons.escapeVariable('$productId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Subscription.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists all subscriptions under a given app.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Required. The parent app (package name) for which the
  /// subscriptions should be read.
  ///
  /// [pageSize] - The maximum number of subscriptions to return. The service
  /// may return fewer than this value. If unspecified, at most 50 subscriptions
  /// will be returned. The maximum value is 1000; values above 1000 will be
  /// coerced to 1000.
  ///
  /// [pageToken] - A page token, received from a previous `ListSubscriptions`
  /// call. Provide this to retrieve the subsequent page. When paginating, all
  /// other parameters provided to `ListSubscriptions` must match the call that
  /// provided the page token.
  ///
  /// [showArchived] - Deprecated: subscription archiving is not supported.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListSubscriptionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListSubscriptionsResponse> list(
    core.String packageName, {
    core.int? pageSize,
    core.String? pageToken,
    core.bool? showArchived,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'showArchived': ?showArchived == null ? null : ['${showArchived}'],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/subscriptions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListSubscriptionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates an existing subscription.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Immutable. Package name of the parent app.
  ///
  /// [productId] - Immutable. Unique product ID of the product. Unique within
  /// the parent app. Product IDs must be composed of lower-case letters (a-z),
  /// numbers (0-9), underscores (_) and dots (.). It must start with a
  /// lower-case letter or number, and be between 1 and 40 (inclusive)
  /// characters in length.
  ///
  /// [allowMissing] - Optional. If set to true, and the subscription with the
  /// given package_name and product_id doesn't exist, the subscription will be
  /// created. If a new subscription is created, update_mask is ignored.
  ///
  /// [latencyTolerance] - Optional. The latency tolerance for the propagation
  /// of this product update. Defaults to latency-sensitive.
  /// Possible string values are:
  /// - "PRODUCT_UPDATE_LATENCY_TOLERANCE_UNSPECIFIED" : Defaults to
  /// PRODUCT_UPDATE_LATENCY_TOLERANCE_LATENCY_SENSITIVE.
  /// - "PRODUCT_UPDATE_LATENCY_TOLERANCE_LATENCY_SENSITIVE" : The update will
  /// propagate to clients within several minutes on average and up to a few
  /// hours in rare cases. Throughput is limited to 7,200 updates per app per
  /// hour.
  /// - "PRODUCT_UPDATE_LATENCY_TOLERANCE_LATENCY_TOLERANT" : The update will
  /// propagate to clients within 24 hours. Supports high throughput of up to
  /// 720,000 updates per app per hour using batch modification methods.
  ///
  /// [regionsVersion_version] - Required. A string representing the version of
  /// available regions being used for the specified resource. Regional prices
  /// and latest supported version for the resource have to be specified
  /// according to the information published in
  /// [this article](https://support.google.com/googleplay/android-developer/answer/10532353).
  /// Each time the supported locations substantially change, the version will
  /// be incremented. Using this field will ensure that creating and updating
  /// the resource with an older region's version and set of regional prices and
  /// currencies will succeed even though a new version is available.
  ///
  /// [updateMask] - Required. The list of fields to be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Subscription].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Subscription> patch(
    Subscription request,
    core.String packageName,
    core.String productId, {
    core.bool? allowMissing,
    core.String? latencyTolerance,
    core.String? regionsVersion_version,
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'allowMissing': ?allowMissing == null ? null : ['${allowMissing}'],
      'latencyTolerance': ?latencyTolerance == null ? null : [latencyTolerance],
      'regionsVersion.version': ?regionsVersion_version == null
          ? null
          : [regionsVersion_version],
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/subscriptions/' +
        commons.escapeVariable('$productId');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Subscription.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class MonetizationSubscriptionsBasePlansResource {
  final commons.ApiRequester _requester;

  MonetizationSubscriptionsBasePlansOffersResource get offers =>
      MonetizationSubscriptionsBasePlansOffersResource(_requester);

  MonetizationSubscriptionsBasePlansResource(commons.ApiRequester client)
    : _requester = client;

  /// Activates a base plan.
  ///
  /// Once activated, base plans will be available to new subscribers.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Required. The parent app (package name) of the base plan
  /// to activate.
  ///
  /// [productId] - Required. The parent subscription (ID) of the base plan to
  /// activate.
  ///
  /// [basePlanId] - Required. The unique base plan ID of the base plan to
  /// activate.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Subscription].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Subscription> activate(
    ActivateBasePlanRequest request,
    core.String packageName,
    core.String productId,
    core.String basePlanId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/subscriptions/' +
        commons.escapeVariable('$productId') +
        '/basePlans/' +
        commons.escapeVariable('$basePlanId') +
        ':activate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Subscription.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Batch variant of the MigrateBasePlanPrices endpoint.
  ///
  /// Set the latencyTolerance field on nested requests to
  /// PRODUCT_UPDATE_LATENCY_TOLERANCE_LATENCY_TOLERANT to achieve maximum
  /// update throughput.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Required. The parent app (package name) for which the
  /// subscriptions should be created or updated. Must be equal to the
  /// package_name field on all the Subscription resources.
  ///
  /// [productId] - Required. The product ID of the parent subscription, if all
  /// updated offers belong to the same subscription. If this batch update spans
  /// multiple subscriptions, set this field to "-". Must be set.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BatchMigrateBasePlanPricesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BatchMigrateBasePlanPricesResponse> batchMigratePrices(
    BatchMigrateBasePlanPricesRequest request,
    core.String packageName,
    core.String productId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/subscriptions/' +
        commons.escapeVariable('$productId') +
        '/basePlans:batchMigratePrices';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return BatchMigrateBasePlanPricesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Activates or deactivates base plans across one or multiple subscriptions.
  ///
  /// Set the latencyTolerance field on nested requests to
  /// PRODUCT_UPDATE_LATENCY_TOLERANCE_LATENCY_TOLERANT to achieve maximum
  /// update throughput.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Required. The parent app (package name) of the updated
  /// base plans.
  ///
  /// [productId] - Required. The product ID of the parent subscription, if all
  /// updated base plans belong to the same subscription. If this batch update
  /// spans multiple subscriptions, set this field to "-". Must be set.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BatchUpdateBasePlanStatesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BatchUpdateBasePlanStatesResponse> batchUpdateStates(
    BatchUpdateBasePlanStatesRequest request,
    core.String packageName,
    core.String productId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/subscriptions/' +
        commons.escapeVariable('$productId') +
        '/basePlans:batchUpdateStates';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return BatchUpdateBasePlanStatesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deactivates a base plan.
  ///
  /// Once deactivated, the base plan will become unavailable to new
  /// subscribers, but existing subscribers will maintain their subscription
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Required. The parent app (package name) of the base plan
  /// to deactivate.
  ///
  /// [productId] - Required. The parent subscription (ID) of the base plan to
  /// deactivate.
  ///
  /// [basePlanId] - Required. The unique base plan ID of the base plan to
  /// deactivate.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Subscription].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Subscription> deactivate(
    DeactivateBasePlanRequest request,
    core.String packageName,
    core.String productId,
    core.String basePlanId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/subscriptions/' +
        commons.escapeVariable('$productId') +
        '/basePlans/' +
        commons.escapeVariable('$basePlanId') +
        ':deactivate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Subscription.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes a base plan.
  ///
  /// Can only be done for draft base plans. This action is irreversible.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Required. The parent app (package name) of the base plan
  /// to delete.
  ///
  /// [productId] - Required. The parent subscription (ID) of the base plan to
  /// delete.
  ///
  /// [basePlanId] - Required. The unique offer ID of the base plan to delete.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> delete(
    core.String packageName,
    core.String productId,
    core.String basePlanId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/subscriptions/' +
        commons.escapeVariable('$productId') +
        '/basePlans/' +
        commons.escapeVariable('$basePlanId');

    await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Migrates subscribers from one or more legacy price cohorts to the current
  /// price.
  ///
  /// Requests result in Google Play notifying affected subscribers. Only up to
  /// 250 simultaneous legacy price cohorts are supported.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Required. Package name of the parent app. Must be equal to
  /// the package_name field on the Subscription resource.
  ///
  /// [productId] - Required. The ID of the subscription to update. Must be
  /// equal to the product_id field on the Subscription resource.
  ///
  /// [basePlanId] - Required. The unique base plan ID of the base plan to
  /// update prices on.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [MigrateBasePlanPricesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<MigrateBasePlanPricesResponse> migratePrices(
    MigrateBasePlanPricesRequest request,
    core.String packageName,
    core.String productId,
    core.String basePlanId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/subscriptions/' +
        commons.escapeVariable('$productId') +
        '/basePlans/' +
        commons.escapeVariable('$basePlanId') +
        ':migratePrices';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return MigrateBasePlanPricesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class MonetizationSubscriptionsBasePlansOffersResource {
  final commons.ApiRequester _requester;

  MonetizationSubscriptionsBasePlansOffersResource(commons.ApiRequester client)
    : _requester = client;

  /// Activates a subscription offer.
  ///
  /// Once activated, subscription offers will be available to new subscribers.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Required. The parent app (package name) of the offer to
  /// activate.
  ///
  /// [productId] - Required. The parent subscription (ID) of the offer to
  /// activate.
  ///
  /// [basePlanId] - Required. The parent base plan (ID) of the offer to
  /// activate.
  ///
  /// [offerId] - Required. The unique offer ID of the offer to activate.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SubscriptionOffer].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SubscriptionOffer> activate(
    ActivateSubscriptionOfferRequest request,
    core.String packageName,
    core.String productId,
    core.String basePlanId,
    core.String offerId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/subscriptions/' +
        commons.escapeVariable('$productId') +
        '/basePlans/' +
        commons.escapeVariable('$basePlanId') +
        '/offers/' +
        commons.escapeVariable('$offerId') +
        ':activate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return SubscriptionOffer.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Reads one or more subscription offers.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Required. The parent app (package name) for which the
  /// subscriptions should be created or updated. Must be equal to the
  /// package_name field on all the requests.
  ///
  /// [productId] - Required. The product ID of the parent subscription, if all
  /// updated offers belong to the same subscription. If this request spans
  /// multiple subscriptions, set this field to "-". Must be set.
  ///
  /// [basePlanId] - Required. The parent base plan (ID) for which the offers
  /// should be read. May be specified as '-' to read offers from multiple base
  /// plans.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BatchGetSubscriptionOffersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BatchGetSubscriptionOffersResponse> batchGet(
    BatchGetSubscriptionOffersRequest request,
    core.String packageName,
    core.String productId,
    core.String basePlanId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/subscriptions/' +
        commons.escapeVariable('$productId') +
        '/basePlans/' +
        commons.escapeVariable('$basePlanId') +
        '/offers:batchGet';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return BatchGetSubscriptionOffersResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates a batch of subscription offers.
  ///
  /// Set the latencyTolerance field on nested requests to
  /// PRODUCT_UPDATE_LATENCY_TOLERANCE_LATENCY_TOLERANT to achieve maximum
  /// update throughput.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Required. The parent app (package name) of the updated
  /// subscription offers. Must be equal to the package_name field on all the
  /// updated SubscriptionOffer resources.
  ///
  /// [productId] - Required. The product ID of the parent subscription, if all
  /// updated offers belong to the same subscription. If this request spans
  /// multiple subscriptions, set this field to "-". Must be set.
  ///
  /// [basePlanId] - Required. The parent base plan (ID) for which the offers
  /// should be updated. May be specified as '-' to update offers from multiple
  /// base plans.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BatchUpdateSubscriptionOffersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BatchUpdateSubscriptionOffersResponse> batchUpdate(
    BatchUpdateSubscriptionOffersRequest request,
    core.String packageName,
    core.String productId,
    core.String basePlanId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/subscriptions/' +
        commons.escapeVariable('$productId') +
        '/basePlans/' +
        commons.escapeVariable('$basePlanId') +
        '/offers:batchUpdate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return BatchUpdateSubscriptionOffersResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates a batch of subscription offer states.
  ///
  /// Set the latencyTolerance field on nested requests to
  /// PRODUCT_UPDATE_LATENCY_TOLERANCE_LATENCY_TOLERANT to achieve maximum
  /// update throughput.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Required. The parent app (package name) of the updated
  /// subscription offers. Must be equal to the package_name field on all the
  /// updated SubscriptionOffer resources.
  ///
  /// [productId] - Required. The product ID of the parent subscription, if all
  /// updated offers belong to the same subscription. If this request spans
  /// multiple subscriptions, set this field to "-". Must be set.
  ///
  /// [basePlanId] - Required. The parent base plan (ID) for which the offers
  /// should be updated. May be specified as '-' to update offers from multiple
  /// base plans.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BatchUpdateSubscriptionOfferStatesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BatchUpdateSubscriptionOfferStatesResponse> batchUpdateStates(
    BatchUpdateSubscriptionOfferStatesRequest request,
    core.String packageName,
    core.String productId,
    core.String basePlanId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/subscriptions/' +
        commons.escapeVariable('$productId') +
        '/basePlans/' +
        commons.escapeVariable('$basePlanId') +
        '/offers:batchUpdateStates';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return BatchUpdateSubscriptionOfferStatesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Creates a new subscription offer.
  ///
  /// Only auto-renewing base plans can have subscription offers. The offer
  /// state will be DRAFT until it is activated.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Required. The parent app (package name) for which the
  /// offer should be created. Must be equal to the package_name field on the
  /// Subscription resource.
  ///
  /// [productId] - Required. The parent subscription (ID) for which the offer
  /// should be created. Must be equal to the product_id field on the
  /// SubscriptionOffer resource.
  ///
  /// [basePlanId] - Required. The parent base plan (ID) for which the offer
  /// should be created. Must be equal to the base_plan_id field on the
  /// SubscriptionOffer resource.
  ///
  /// [offerId] - Required. The ID to use for the offer. For the requirements on
  /// this format, see the documentation of the offer_id field on the
  /// SubscriptionOffer resource.
  ///
  /// [regionsVersion_version] - Required. A string representing the version of
  /// available regions being used for the specified resource. Regional prices
  /// and latest supported version for the resource have to be specified
  /// according to the information published in
  /// [this article](https://support.google.com/googleplay/android-developer/answer/10532353).
  /// Each time the supported locations substantially change, the version will
  /// be incremented. Using this field will ensure that creating and updating
  /// the resource with an older region's version and set of regional prices and
  /// currencies will succeed even though a new version is available.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SubscriptionOffer].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SubscriptionOffer> create(
    SubscriptionOffer request,
    core.String packageName,
    core.String productId,
    core.String basePlanId, {
    core.String? offerId,
    core.String? regionsVersion_version,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'offerId': ?offerId == null ? null : [offerId],
      'regionsVersion.version': ?regionsVersion_version == null
          ? null
          : [regionsVersion_version],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/subscriptions/' +
        commons.escapeVariable('$productId') +
        '/basePlans/' +
        commons.escapeVariable('$basePlanId') +
        '/offers';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return SubscriptionOffer.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deactivates a subscription offer.
  ///
  /// Once deactivated, existing subscribers will maintain their subscription,
  /// but the offer will become unavailable to new subscribers.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Required. The parent app (package name) of the offer to
  /// deactivate.
  ///
  /// [productId] - Required. The parent subscription (ID) of the offer to
  /// deactivate.
  ///
  /// [basePlanId] - Required. The parent base plan (ID) of the offer to
  /// deactivate.
  ///
  /// [offerId] - Required. The unique offer ID of the offer to deactivate.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SubscriptionOffer].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SubscriptionOffer> deactivate(
    DeactivateSubscriptionOfferRequest request,
    core.String packageName,
    core.String productId,
    core.String basePlanId,
    core.String offerId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/subscriptions/' +
        commons.escapeVariable('$productId') +
        '/basePlans/' +
        commons.escapeVariable('$basePlanId') +
        '/offers/' +
        commons.escapeVariable('$offerId') +
        ':deactivate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return SubscriptionOffer.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes a subscription offer.
  ///
  /// Can only be done for draft offers. This action is irreversible.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Required. The parent app (package name) of the offer to
  /// delete.
  ///
  /// [productId] - Required. The parent subscription (ID) of the offer to
  /// delete.
  ///
  /// [basePlanId] - Required. The parent base plan (ID) of the offer to delete.
  ///
  /// [offerId] - Required. The unique offer ID of the offer to delete.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> delete(
    core.String packageName,
    core.String productId,
    core.String basePlanId,
    core.String offerId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/subscriptions/' +
        commons.escapeVariable('$productId') +
        '/basePlans/' +
        commons.escapeVariable('$basePlanId') +
        '/offers/' +
        commons.escapeVariable('$offerId');

    await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Reads a single offer
  ///
  /// Request parameters:
  ///
  /// [packageName] - Required. The parent app (package name) of the offer to
  /// get.
  ///
  /// [productId] - Required. The parent subscription (ID) of the offer to get.
  ///
  /// [basePlanId] - Required. The parent base plan (ID) of the offer to get.
  ///
  /// [offerId] - Required. The unique offer ID of the offer to get.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SubscriptionOffer].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SubscriptionOffer> get(
    core.String packageName,
    core.String productId,
    core.String basePlanId,
    core.String offerId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/subscriptions/' +
        commons.escapeVariable('$productId') +
        '/basePlans/' +
        commons.escapeVariable('$basePlanId') +
        '/offers/' +
        commons.escapeVariable('$offerId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SubscriptionOffer.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists all offers under a given subscription.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Required. The parent app (package name) for which the
  /// subscriptions should be read.
  ///
  /// [productId] - Required. The parent subscription (ID) for which the offers
  /// should be read. May be specified as '-' to read all offers under an app.
  ///
  /// [basePlanId] - Required. The parent base plan (ID) for which the offers
  /// should be read. May be specified as '-' to read all offers under a
  /// subscription or an app. Must be specified as '-' if product_id is
  /// specified as '-'.
  ///
  /// [pageSize] - The maximum number of subscriptions to return. The service
  /// may return fewer than this value. If unspecified, at most 50 subscriptions
  /// will be returned. The maximum value is 1000; values above 1000 will be
  /// coerced to 1000.
  ///
  /// [pageToken] - A page token, received from a previous
  /// `ListSubscriptionsOffers` call. Provide this to retrieve the subsequent
  /// page. When paginating, all other parameters provided to
  /// `ListSubscriptionOffers` must match the call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListSubscriptionOffersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListSubscriptionOffersResponse> list(
    core.String packageName,
    core.String productId,
    core.String basePlanId, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/subscriptions/' +
        commons.escapeVariable('$productId') +
        '/basePlans/' +
        commons.escapeVariable('$basePlanId') +
        '/offers';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListSubscriptionOffersResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates an existing subscription offer.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Required. Immutable. The package name of the app the
  /// parent subscription belongs to.
  ///
  /// [productId] - Required. Immutable. The ID of the parent subscription this
  /// offer belongs to.
  ///
  /// [basePlanId] - Required. Immutable. The ID of the base plan to which this
  /// offer is an extension.
  ///
  /// [offerId] - Required. Immutable. Unique ID of this subscription offer.
  /// Must be unique within the base plan.
  ///
  /// [allowMissing] - Optional. If set to true, and the subscription offer with
  /// the given package_name, product_id, base_plan_id and offer_id doesn't
  /// exist, an offer will be created. If a new offer is created, update_mask is
  /// ignored.
  ///
  /// [latencyTolerance] - Optional. The latency tolerance for the propagation
  /// of this product update. Defaults to latency-sensitive.
  /// Possible string values are:
  /// - "PRODUCT_UPDATE_LATENCY_TOLERANCE_UNSPECIFIED" : Defaults to
  /// PRODUCT_UPDATE_LATENCY_TOLERANCE_LATENCY_SENSITIVE.
  /// - "PRODUCT_UPDATE_LATENCY_TOLERANCE_LATENCY_SENSITIVE" : The update will
  /// propagate to clients within several minutes on average and up to a few
  /// hours in rare cases. Throughput is limited to 7,200 updates per app per
  /// hour.
  /// - "PRODUCT_UPDATE_LATENCY_TOLERANCE_LATENCY_TOLERANT" : The update will
  /// propagate to clients within 24 hours. Supports high throughput of up to
  /// 720,000 updates per app per hour using batch modification methods.
  ///
  /// [regionsVersion_version] - Required. A string representing the version of
  /// available regions being used for the specified resource. Regional prices
  /// and latest supported version for the resource have to be specified
  /// according to the information published in
  /// [this article](https://support.google.com/googleplay/android-developer/answer/10532353).
  /// Each time the supported locations substantially change, the version will
  /// be incremented. Using this field will ensure that creating and updating
  /// the resource with an older region's version and set of regional prices and
  /// currencies will succeed even though a new version is available.
  ///
  /// [updateMask] - Required. The list of fields to be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SubscriptionOffer].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SubscriptionOffer> patch(
    SubscriptionOffer request,
    core.String packageName,
    core.String productId,
    core.String basePlanId,
    core.String offerId, {
    core.bool? allowMissing,
    core.String? latencyTolerance,
    core.String? regionsVersion_version,
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'allowMissing': ?allowMissing == null ? null : ['${allowMissing}'],
      'latencyTolerance': ?latencyTolerance == null ? null : [latencyTolerance],
      'regionsVersion.version': ?regionsVersion_version == null
          ? null
          : [regionsVersion_version],
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/subscriptions/' +
        commons.escapeVariable('$productId') +
        '/basePlans/' +
        commons.escapeVariable('$basePlanId') +
        '/offers/' +
        commons.escapeVariable('$offerId');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return SubscriptionOffer.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class OrdersResource {
  final commons.ApiRequester _requester;

  OrdersResource(commons.ApiRequester client) : _requester = client;

  /// Get order details for a list of orders.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Required. The package name of the application for which
  /// this subscription or in-app item was purchased (for example,
  /// 'com.some.thing').
  ///
  /// [orderIds] - Required. The list of order IDs to retrieve order details
  /// for. There must be between 1 and 1000 (inclusive) order IDs per request.
  /// If any order ID is not found or does not match the provided package, the
  /// entire request will fail with an error. The order IDs must be distinct.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BatchGetOrdersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BatchGetOrdersResponse> batchget(
    core.String packageName, {
    core.List<core.String>? orderIds,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'orderIds': ?orderIds,
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/orders:batchGet';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return BatchGetOrdersResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Get order details for a single order.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Required. The package name of the application for which
  /// this subscription or in-app item was purchased (for example,
  /// 'com.some.thing').
  ///
  /// [orderId] - Required. The order ID provided to the user when the
  /// subscription or in-app order was purchased.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Order].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Order> get(
    core.String packageName,
    core.String orderId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/orders/' +
        commons.escapeVariable('$orderId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Order.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Refunds a user's subscription or in-app purchase order.
  ///
  /// Orders older than 3 years cannot be refunded.
  ///
  /// Request parameters:
  ///
  /// [packageName] - The package name of the application for which this
  /// subscription or in-app item was purchased (for example, 'com.some.thing').
  ///
  /// [orderId] - The order ID provided to the user when the subscription or
  /// in-app order was purchased.
  ///
  /// [revoke] - Whether to revoke the purchased item. If set to true, access to
  /// the subscription or in-app item will be terminated immediately. If the
  /// item is a recurring subscription, all future payments will also be
  /// terminated. Consumed in-app items need to be handled by developer's app.
  /// (optional).
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> refund(
    core.String packageName,
    core.String orderId, {
    core.bool? revoke,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'revoke': ?revoke == null ? null : ['${revoke}'],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/orders/' +
        commons.escapeVariable('$orderId') +
        ':refund';

    await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }
}

class PurchasesResource {
  final commons.ApiRequester _requester;

  PurchasesProductsResource get products =>
      PurchasesProductsResource(_requester);
  PurchasesProductsv2Resource get productsv2 =>
      PurchasesProductsv2Resource(_requester);
  PurchasesSubscriptionsResource get subscriptions =>
      PurchasesSubscriptionsResource(_requester);
  PurchasesSubscriptionsv2Resource get subscriptionsv2 =>
      PurchasesSubscriptionsv2Resource(_requester);
  PurchasesVoidedpurchasesResource get voidedpurchases =>
      PurchasesVoidedpurchasesResource(_requester);

  PurchasesResource(commons.ApiRequester client) : _requester = client;
}

class PurchasesProductsResource {
  final commons.ApiRequester _requester;

  PurchasesProductsResource(commons.ApiRequester client) : _requester = client;

  /// Acknowledges a purchase of an inapp item.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [packageName] - The package name of the application the inapp product was
  /// sold in (for example, 'com.some.thing').
  ///
  /// [productId] - The inapp product SKU (for example,
  /// 'com.some.thing.inapp1').
  ///
  /// [token] - The token provided to the user's device when the inapp product
  /// was purchased.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> acknowledge(
    ProductPurchasesAcknowledgeRequest request,
    core.String packageName,
    core.String productId,
    core.String token, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/purchases/products/' +
        commons.escapeVariable('$productId') +
        '/tokens/' +
        commons.escapeVariable('$token') +
        ':acknowledge';

    await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Consumes a purchase for an inapp item.
  ///
  /// Request parameters:
  ///
  /// [packageName] - The package name of the application the inapp product was
  /// sold in (for example, 'com.some.thing').
  ///
  /// [productId] - The inapp product SKU (for example,
  /// 'com.some.thing.inapp1').
  ///
  /// [token] - The token provided to the user's device when the inapp product
  /// was purchased.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> consume(
    core.String packageName,
    core.String productId,
    core.String token, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/purchases/products/' +
        commons.escapeVariable('$productId') +
        '/tokens/' +
        commons.escapeVariable('$token') +
        ':consume';

    await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Checks the purchase and consumption status of an inapp item.
  ///
  /// Request parameters:
  ///
  /// [packageName] - The package name of the application the inapp product was
  /// sold in (for example, 'com.some.thing').
  ///
  /// [productId] - The inapp product SKU (for example,
  /// 'com.some.thing.inapp1').
  ///
  /// [token] - The token provided to the user's device when the inapp product
  /// was purchased.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ProductPurchase].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ProductPurchase> get(
    core.String packageName,
    core.String productId,
    core.String token, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/purchases/products/' +
        commons.escapeVariable('$productId') +
        '/tokens/' +
        commons.escapeVariable('$token');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ProductPurchase.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class PurchasesProductsv2Resource {
  final commons.ApiRequester _requester;

  PurchasesProductsv2Resource(commons.ApiRequester client)
    : _requester = client;

  /// Checks the purchase and consumption status of an inapp item.
  ///
  /// Request parameters:
  ///
  /// [packageName] - The package name of the application the inapp product was
  /// sold in (for example, 'com.some.thing').
  ///
  /// [token] - The token provided to the user's device when the inapp product
  /// was purchased.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ProductPurchaseV2].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ProductPurchaseV2> getproductpurchasev2(
    core.String packageName,
    core.String token, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/purchases/productsv2/tokens/' +
        commons.escapeVariable('$token');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ProductPurchaseV2.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class PurchasesSubscriptionsResource {
  final commons.ApiRequester _requester;

  PurchasesSubscriptionsResource(commons.ApiRequester client)
    : _requester = client;

  /// Acknowledges a subscription purchase.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [packageName] - The package name of the application for which this
  /// subscription was purchased (for example, 'com.some.thing').
  ///
  /// [subscriptionId] - Note: Since May 21, 2025, subscription_id is not
  /// required, and not recommended for subscription with add-ons. The purchased
  /// subscription ID (for example, 'monthly001').
  ///
  /// [token] - The token provided to the user's device when the subscription
  /// was purchased.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> acknowledge(
    SubscriptionPurchasesAcknowledgeRequest request,
    core.String packageName,
    core.String subscriptionId,
    core.String token, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/purchases/subscriptions/' +
        commons.escapeVariable('$subscriptionId') +
        '/tokens/' +
        commons.escapeVariable('$token') +
        ':acknowledge';

    await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Cancels a user's subscription purchase.
  ///
  /// The subscription remains valid until its expiration time. Newer version is
  /// available at purchases.subscriptionsv2.cancel for better client library
  /// support.
  ///
  /// Request parameters:
  ///
  /// [packageName] - The package name of the application for which this
  /// subscription was purchased (for example, 'com.some.thing').
  ///
  /// [subscriptionId] - Note: Since May 21, 2025, subscription_id is not
  /// required, and not recommended for subscription with add-ons. The purchased
  /// subscription ID (for example, 'monthly001').
  ///
  /// [token] - The token provided to the user's device when the subscription
  /// was purchased.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> cancel(
    core.String packageName,
    core.String subscriptionId,
    core.String token, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/purchases/subscriptions/' +
        commons.escapeVariable('$subscriptionId') +
        '/tokens/' +
        commons.escapeVariable('$token') +
        ':cancel';

    await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Defers a user's subscription purchase until a specified future expiration
  /// time.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [packageName] - The package name of the application for which this
  /// subscription was purchased (for example, 'com.some.thing').
  ///
  /// [subscriptionId] - The purchased subscription ID (for example,
  /// 'monthly001').
  ///
  /// [token] - The token provided to the user's device when the subscription
  /// was purchased.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SubscriptionPurchasesDeferResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SubscriptionPurchasesDeferResponse> defer(
    SubscriptionPurchasesDeferRequest request,
    core.String packageName,
    core.String subscriptionId,
    core.String token, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/purchases/subscriptions/' +
        commons.escapeVariable('$subscriptionId') +
        '/tokens/' +
        commons.escapeVariable('$token') +
        ':defer';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return SubscriptionPurchasesDeferResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deprecated: Use purchases.subscriptionsv2.get instead.
  ///
  /// Checks whether a user's subscription purchase is valid and returns its
  /// expiry time.
  ///
  /// Request parameters:
  ///
  /// [packageName] - The package name of the application for which this
  /// subscription was purchased (for example, 'com.some.thing').
  ///
  /// [subscriptionId] - The purchased subscription ID (for example,
  /// 'monthly001').
  ///
  /// [token] - The token provided to the user's device when the subscription
  /// was purchased.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SubscriptionPurchase].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  async.Future<SubscriptionPurchase> get(
    core.String packageName,
    core.String subscriptionId,
    core.String token, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/purchases/subscriptions/' +
        commons.escapeVariable('$subscriptionId') +
        '/tokens/' +
        commons.escapeVariable('$token');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SubscriptionPurchase.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deprecated: Use orders.refund instead.
  ///
  /// Refunds a user's subscription purchase, but the subscription remains valid
  /// until its expiration time and it will continue to recur.
  ///
  /// Request parameters:
  ///
  /// [packageName] - The package name of the application for which this
  /// subscription was purchased (for example, 'com.some.thing').
  ///
  /// [subscriptionId] - "The purchased subscription ID (for example,
  /// 'monthly001').
  ///
  /// [token] - The token provided to the user's device when the subscription
  /// was purchased.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  async.Future<void> refund(
    core.String packageName,
    core.String subscriptionId,
    core.String token, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/purchases/subscriptions/' +
        commons.escapeVariable('$subscriptionId') +
        '/tokens/' +
        commons.escapeVariable('$token') +
        ':refund';

    await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Deprecated: Use purchases.subscriptionsv2.revoke instead.
  ///
  /// Refunds and immediately revokes a user's subscription purchase. Access to
  /// the subscription will be terminated immediately and it will stop
  /// recurring.
  ///
  /// Request parameters:
  ///
  /// [packageName] - The package name of the application for which this
  /// subscription was purchased (for example, 'com.some.thing').
  ///
  /// [subscriptionId] - The purchased subscription ID (for example,
  /// 'monthly001').
  ///
  /// [token] - The token provided to the user's device when the subscription
  /// was purchased.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  async.Future<void> revoke(
    core.String packageName,
    core.String subscriptionId,
    core.String token, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/purchases/subscriptions/' +
        commons.escapeVariable('$subscriptionId') +
        '/tokens/' +
        commons.escapeVariable('$token') +
        ':revoke';

    await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }
}

class PurchasesSubscriptionsv2Resource {
  final commons.ApiRequester _requester;

  PurchasesSubscriptionsv2Resource(commons.ApiRequester client)
    : _requester = client;

  /// Cancel a subscription purchase for the user.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Required. The package of the application for which this
  /// subscription was purchased (for example, 'com.some.thing').
  ///
  /// [token] - Required. The token provided to the user's device when the
  /// subscription was purchased.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CancelSubscriptionPurchaseResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CancelSubscriptionPurchaseResponse> cancel(
    CancelSubscriptionPurchaseRequest request,
    core.String packageName,
    core.String token, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/purchases/subscriptionsv2/tokens/' +
        commons.escapeVariable('$token') +
        ':cancel';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return CancelSubscriptionPurchaseResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Defers the renewal of a subscription.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Required. The package of the application for which this
  /// subscription was purchased (for example, 'com.some.thing').
  ///
  /// [token] - Required. The token provided to the user's device when the
  /// subscription was purchased.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DeferSubscriptionPurchaseResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DeferSubscriptionPurchaseResponse> defer(
    DeferSubscriptionPurchaseRequest request,
    core.String packageName,
    core.String token, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/purchases/subscriptionsv2/tokens/' +
        commons.escapeVariable('$token') +
        ':defer';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return DeferSubscriptionPurchaseResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Get metadata about a subscription
  ///
  /// Request parameters:
  ///
  /// [packageName] - The package of the application for which this subscription
  /// was purchased (for example, 'com.some.thing').
  ///
  /// [token] - Required. The token provided to the user's device when the
  /// subscription was purchased.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SubscriptionPurchaseV2].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SubscriptionPurchaseV2> get(
    core.String packageName,
    core.String token, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/purchases/subscriptionsv2/tokens/' +
        commons.escapeVariable('$token');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SubscriptionPurchaseV2.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Revoke a subscription purchase for the user.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Required. The package of the application for which this
  /// subscription was purchased (for example, 'com.some.thing').
  ///
  /// [token] - Required. The token provided to the user's device when the
  /// subscription was purchased.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RevokeSubscriptionPurchaseResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RevokeSubscriptionPurchaseResponse> revoke(
    RevokeSubscriptionPurchaseRequest request,
    core.String packageName,
    core.String token, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/purchases/subscriptionsv2/tokens/' +
        commons.escapeVariable('$token') +
        ':revoke';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return RevokeSubscriptionPurchaseResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class PurchasesVoidedpurchasesResource {
  final commons.ApiRequester _requester;

  PurchasesVoidedpurchasesResource(commons.ApiRequester client)
    : _requester = client;

  /// Lists the purchases that were canceled, refunded or charged-back.
  ///
  /// Request parameters:
  ///
  /// [packageName] - The package name of the application for which voided
  /// purchases need to be returned (for example, 'com.some.thing').
  ///
  /// [endTime] - The time, in milliseconds since the Epoch, of the newest
  /// voided purchase that you want to see in the response. The value of this
  /// parameter cannot be greater than the current time and is ignored if a
  /// pagination token is set. Default value is current time. Note: This filter
  /// is applied on the time at which the record is seen as voided by our
  /// systems and not the actual voided time returned in the response.
  ///
  /// [includeQuantityBasedPartialRefund] - Optional. Whether to include voided
  /// purchases of quantity-based partial refunds, which are applicable only to
  /// multi-quantity purchases. If true, additional voided purchases may be
  /// returned with voidedQuantity that indicates the refund quantity of a
  /// quantity-based partial refund. The default value is false.
  ///
  /// [maxResults] - Defines how many results the list operation should return.
  /// The default number depends on the resource collection.
  ///
  /// [startIndex] - Defines the index of the first element to return. This can
  /// only be used if indexed paging is enabled.
  ///
  /// [startTime] - The time, in milliseconds since the Epoch, of the oldest
  /// voided purchase that you want to see in the response. The value of this
  /// parameter cannot be older than 30 days and is ignored if a pagination
  /// token is set. Default value is current time minus 30 days. Note: This
  /// filter is applied on the time at which the record is seen as voided by our
  /// systems and not the actual voided time returned in the response.
  ///
  /// [token] - Defines the token of the page to return, usually taken from
  /// TokenPagination. This can only be used if token paging is enabled.
  ///
  /// [type] - The type of voided purchases that you want to see in the
  /// response. Possible values are: 0. Only voided in-app product purchases
  /// will be returned in the response. This is the default value. 1. Both
  /// voided in-app purchases and voided subscription purchases will be returned
  /// in the response. Note: Before requesting to receive voided subscription
  /// purchases, you must switch to use orderId in the response which uniquely
  /// identifies one-time purchases and subscriptions. Otherwise, you will
  /// receive multiple subscription orders with the same PurchaseToken, because
  /// subscription renewal orders share the same PurchaseToken.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [VoidedPurchasesListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<VoidedPurchasesListResponse> list(
    core.String packageName, {
    core.String? endTime,
    core.bool? includeQuantityBasedPartialRefund,
    core.int? maxResults,
    core.int? startIndex,
    core.String? startTime,
    core.String? token,
    core.int? type,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'endTime': ?endTime == null ? null : [endTime],
      'includeQuantityBasedPartialRefund':
          ?includeQuantityBasedPartialRefund == null
          ? null
          : ['${includeQuantityBasedPartialRefund}'],
      'maxResults': ?maxResults == null ? null : ['${maxResults}'],
      'startIndex': ?startIndex == null ? null : ['${startIndex}'],
      'startTime': ?startTime == null ? null : [startTime],
      'token': ?token == null ? null : [token],
      'type': ?type == null ? null : ['${type}'],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/purchases/voidedpurchases';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return VoidedPurchasesListResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ReviewsResource {
  final commons.ApiRequester _requester;

  ReviewsResource(commons.ApiRequester client) : _requester = client;

  /// Gets a single review.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Package name of the app.
  ///
  /// [reviewId] - Unique identifier for a review.
  ///
  /// [translationLanguage] - Language localization code.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Review].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Review> get(
    core.String packageName,
    core.String reviewId, {
    core.String? translationLanguage,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'translationLanguage': ?translationLanguage == null
          ? null
          : [translationLanguage],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/reviews/' +
        commons.escapeVariable('$reviewId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Review.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all reviews.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Package name of the app.
  ///
  /// [maxResults] - How many results the list operation should return.
  ///
  /// [startIndex] - The index of the first element to return.
  ///
  /// [token] - Pagination token. If empty, list starts at the first review.
  ///
  /// [translationLanguage] - Language localization code.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ReviewsListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ReviewsListResponse> list(
    core.String packageName, {
    core.int? maxResults,
    core.int? startIndex,
    core.String? token,
    core.String? translationLanguage,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'maxResults': ?maxResults == null ? null : ['${maxResults}'],
      'startIndex': ?startIndex == null ? null : ['${startIndex}'],
      'token': ?token == null ? null : [token],
      'translationLanguage': ?translationLanguage == null
          ? null
          : [translationLanguage],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/reviews';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ReviewsListResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Replies to a single review, or updates an existing reply.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Package name of the app.
  ///
  /// [reviewId] - Unique identifier for a review.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ReviewsReplyResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ReviewsReplyResponse> reply(
    ReviewsReplyRequest request,
    core.String packageName,
    core.String reviewId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/reviews/' +
        commons.escapeVariable('$reviewId') +
        ':reply';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ReviewsReplyResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class SystemapksResource {
  final commons.ApiRequester _requester;

  SystemapksVariantsResource get variants =>
      SystemapksVariantsResource(_requester);

  SystemapksResource(commons.ApiRequester client) : _requester = client;
}

class SystemapksVariantsResource {
  final commons.ApiRequester _requester;

  SystemapksVariantsResource(commons.ApiRequester client) : _requester = client;

  /// Creates an APK which is suitable for inclusion in a system image from an
  /// already uploaded Android App Bundle.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Package name of the app.
  ///
  /// [versionCode] - The version code of the App Bundle.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Variant].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Variant> create(
    Variant request,
    core.String packageName,
    core.String versionCode, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/systemApks/' +
        commons.escapeVariable('$versionCode') +
        '/variants';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Variant.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Downloads a previously created system APK which is suitable for inclusion
  /// in a system image.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Package name of the app.
  ///
  /// [versionCode] - The version code of the App Bundle.
  ///
  /// [variantId] - The ID of a previously created system APK variant.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// [downloadOptions] - Options for downloading. A download can be either a
  /// Metadata (default) or Media download. Partial Media downloads are possible
  /// as well.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<commons.Media?> download(
    core.String packageName,
    core.String versionCode,
    core.int variantId, {
    core.String? $fields,
    commons.DownloadOptions downloadOptions = commons.DownloadOptions.metadata,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/systemApks/' +
        commons.escapeVariable('$versionCode') +
        '/variants/' +
        commons.escapeVariable('$variantId') +
        ':download';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
      downloadOptions: downloadOptions,
    );
    if (downloadOptions.isMetadataDownload) {
      return null;
    } else {
      return response_ as commons.Media;
    }
  }

  /// Returns a previously created system APK variant.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Package name of the app.
  ///
  /// [versionCode] - The version code of the App Bundle.
  ///
  /// [variantId] - The ID of a previously created system APK variant.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Variant].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Variant> get(
    core.String packageName,
    core.String versionCode,
    core.int variantId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/systemApks/' +
        commons.escapeVariable('$versionCode') +
        '/variants/' +
        commons.escapeVariable('$variantId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Variant.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns the list of previously created system APK variants.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Package name of the app.
  ///
  /// [versionCode] - The version code of the App Bundle.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SystemApksListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SystemApksListResponse> list(
    core.String packageName,
    core.String versionCode, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/systemApks/' +
        commons.escapeVariable('$versionCode') +
        '/variants';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SystemApksListResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class UsersResource {
  final commons.ApiRequester _requester;

  UsersResource(commons.ApiRequester client) : _requester = client;

  /// Grant access for a user to the given developer account.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The developer account to add the user to. Format:
  /// developers/{developer}
  /// Value must have pattern `^developers/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [User].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<User> create(
    User request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'androidpublisher/v3/' + core.Uri.encodeFull('$parent') + '/users';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return User.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Removes all access for the user to the given developer account.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the user to delete. Format:
  /// developers/{developer}/users/{email}
  /// Value must have pattern `^developers/\[^/\]+/users/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> delete(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'androidpublisher/v3/' + core.Uri.encodeFull('$name');

    await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Lists all users with access to a developer account.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The developer account to fetch users from. Format:
  /// developers/{developer}
  /// Value must have pattern `^developers/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of results to return. This must be set to
  /// -1 to disable pagination.
  ///
  /// [pageToken] - A token received from a previous call to this method, in
  /// order to retrieve further results.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListUsersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListUsersResponse> list(
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

    final url_ =
        'androidpublisher/v3/' + core.Uri.encodeFull('$parent') + '/users';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListUsersResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates access for the user to the developer account.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name for this user, following the pattern
  /// "developers/{developer}/users/{email}".
  /// Value must have pattern `^developers/\[^/\]+/users/\[^/\]+$`.
  ///
  /// [updateMask] - Optional. The list of fields to be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [User].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<User> patch(
    User request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'androidpublisher/v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return User.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

/// Represents an Abi.
class Abi {
  /// Alias for an abi.
  /// Possible string values are:
  /// - "UNSPECIFIED_CPU_ARCHITECTURE" : Unspecified abi.
  /// - "ARMEABI" : ARMEABI abi.
  /// - "ARMEABI_V7A" : ARMEABI_V7A abi.
  /// - "ARM64_V8A" : ARM64_V8A abi.
  /// - "X86" : X86 abi.
  /// - "X86_64" : X86_64 abi.
  /// - "RISCV64" : RISCV64 abi.
  core.String? alias;

  Abi({this.alias});

  Abi.fromJson(core.Map json_) : this(alias: json_['alias'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final alias = this.alias;
    return {'alias': ?alias};
  }
}

/// Targeting based on Abi.
class AbiTargeting {
  /// Targeting of other sibling directories that were in the Bundle.
  ///
  /// For main splits this is targeting of other main splits.
  core.List<Abi>? alternatives;

  /// Value of an abi.
  core.List<Abi>? value;

  AbiTargeting({this.alternatives, this.value});

  AbiTargeting.fromJson(core.Map json_)
    : this(
        alternatives: (json_['alternatives'] as core.List?)
            ?.map(
              (value) =>
                  Abi.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
        value: (json_['value'] as core.List?)
            ?.map(
              (value) =>
                  Abi.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final alternatives = this.alternatives;
    final value = this.value;
    return {'alternatives': ?alternatives, 'value': ?value};
  }
}

/// Represents a targeting rule of the form: User never had {scope} before.
class AcquisitionTargetingRule {
  /// The scope of subscriptions this rule considers.
  ///
  /// Only allows "this subscription" and "any subscription in app".
  ///
  /// Required.
  TargetingRuleScope? scope;

  AcquisitionTargetingRule({this.scope});

  AcquisitionTargetingRule.fromJson(core.Map json_)
    : this(
        scope: json_.containsKey('scope')
            ? TargetingRuleScope.fromJson(
                json_['scope'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final scope = this.scope;
    return {'scope': ?scope};
  }
}

/// Request message for ActivateBasePlan.
class ActivateBasePlanRequest {
  /// The unique base plan ID of the base plan to activate.
  ///
  /// Required.
  core.String? basePlanId;

  /// The latency tolerance for the propagation of this product update.
  ///
  /// Defaults to latency-sensitive.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "PRODUCT_UPDATE_LATENCY_TOLERANCE_UNSPECIFIED" : Defaults to
  /// PRODUCT_UPDATE_LATENCY_TOLERANCE_LATENCY_SENSITIVE.
  /// - "PRODUCT_UPDATE_LATENCY_TOLERANCE_LATENCY_SENSITIVE" : The update will
  /// propagate to clients within several minutes on average and up to a few
  /// hours in rare cases. Throughput is limited to 7,200 updates per app per
  /// hour.
  /// - "PRODUCT_UPDATE_LATENCY_TOLERANCE_LATENCY_TOLERANT" : The update will
  /// propagate to clients within 24 hours. Supports high throughput of up to
  /// 720,000 updates per app per hour using batch modification methods.
  core.String? latencyTolerance;

  /// The parent app (package name) of the base plan to activate.
  ///
  /// Required.
  core.String? packageName;

  /// The parent subscription (ID) of the base plan to activate.
  ///
  /// Required.
  core.String? productId;

  ActivateBasePlanRequest({
    this.basePlanId,
    this.latencyTolerance,
    this.packageName,
    this.productId,
  });

  ActivateBasePlanRequest.fromJson(core.Map json_)
    : this(
        basePlanId: json_['basePlanId'] as core.String?,
        latencyTolerance: json_['latencyTolerance'] as core.String?,
        packageName: json_['packageName'] as core.String?,
        productId: json_['productId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final basePlanId = this.basePlanId;
    final latencyTolerance = this.latencyTolerance;
    final packageName = this.packageName;
    final productId = this.productId;
    return {
      'basePlanId': ?basePlanId,
      'latencyTolerance': ?latencyTolerance,
      'packageName': ?packageName,
      'productId': ?productId,
    };
  }
}

/// Request message for ActivateOneTimeProductOffer.
class ActivateOneTimeProductOfferRequest {
  /// The latency tolerance for the propagation of this update.
  ///
  /// Defaults to latency-sensitive.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "PRODUCT_UPDATE_LATENCY_TOLERANCE_UNSPECIFIED" : Defaults to
  /// PRODUCT_UPDATE_LATENCY_TOLERANCE_LATENCY_SENSITIVE.
  /// - "PRODUCT_UPDATE_LATENCY_TOLERANCE_LATENCY_SENSITIVE" : The update will
  /// propagate to clients within several minutes on average and up to a few
  /// hours in rare cases. Throughput is limited to 7,200 updates per app per
  /// hour.
  /// - "PRODUCT_UPDATE_LATENCY_TOLERANCE_LATENCY_TOLERANT" : The update will
  /// propagate to clients within 24 hours. Supports high throughput of up to
  /// 720,000 updates per app per hour using batch modification methods.
  core.String? latencyTolerance;

  /// The offer ID of the offer to activate.
  ///
  /// Required.
  core.String? offerId;

  /// The parent app (package name) of the offer to activate.
  ///
  /// Required.
  core.String? packageName;

  /// The parent one-time product (ID) of the offer to activate.
  ///
  /// Required.
  core.String? productId;

  /// The parent purchase option (ID) of the offer to activate.
  ///
  /// Required.
  core.String? purchaseOptionId;

  ActivateOneTimeProductOfferRequest({
    this.latencyTolerance,
    this.offerId,
    this.packageName,
    this.productId,
    this.purchaseOptionId,
  });

  ActivateOneTimeProductOfferRequest.fromJson(core.Map json_)
    : this(
        latencyTolerance: json_['latencyTolerance'] as core.String?,
        offerId: json_['offerId'] as core.String?,
        packageName: json_['packageName'] as core.String?,
        productId: json_['productId'] as core.String?,
        purchaseOptionId: json_['purchaseOptionId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final latencyTolerance = this.latencyTolerance;
    final offerId = this.offerId;
    final packageName = this.packageName;
    final productId = this.productId;
    final purchaseOptionId = this.purchaseOptionId;
    return {
      'latencyTolerance': ?latencyTolerance,
      'offerId': ?offerId,
      'packageName': ?packageName,
      'productId': ?productId,
      'purchaseOptionId': ?purchaseOptionId,
    };
  }
}

/// Request message for UpdatePurchaseOptionState.
class ActivatePurchaseOptionRequest {
  /// The latency tolerance for the propagation of this product update.
  ///
  /// Defaults to latency-sensitive.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "PRODUCT_UPDATE_LATENCY_TOLERANCE_UNSPECIFIED" : Defaults to
  /// PRODUCT_UPDATE_LATENCY_TOLERANCE_LATENCY_SENSITIVE.
  /// - "PRODUCT_UPDATE_LATENCY_TOLERANCE_LATENCY_SENSITIVE" : The update will
  /// propagate to clients within several minutes on average and up to a few
  /// hours in rare cases. Throughput is limited to 7,200 updates per app per
  /// hour.
  /// - "PRODUCT_UPDATE_LATENCY_TOLERANCE_LATENCY_TOLERANT" : The update will
  /// propagate to clients within 24 hours. Supports high throughput of up to
  /// 720,000 updates per app per hour using batch modification methods.
  core.String? latencyTolerance;

  /// The parent app (package name) of the purchase option to activate.
  ///
  /// Required.
  core.String? packageName;

  /// The parent one-time product (ID) of the purchase option to activate.
  ///
  /// Required.
  core.String? productId;

  /// The purchase option ID of the purchase option to activate.
  ///
  /// Required.
  core.String? purchaseOptionId;

  ActivatePurchaseOptionRequest({
    this.latencyTolerance,
    this.packageName,
    this.productId,
    this.purchaseOptionId,
  });

  ActivatePurchaseOptionRequest.fromJson(core.Map json_)
    : this(
        latencyTolerance: json_['latencyTolerance'] as core.String?,
        packageName: json_['packageName'] as core.String?,
        productId: json_['productId'] as core.String?,
        purchaseOptionId: json_['purchaseOptionId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final latencyTolerance = this.latencyTolerance;
    final packageName = this.packageName;
    final productId = this.productId;
    final purchaseOptionId = this.purchaseOptionId;
    return {
      'latencyTolerance': ?latencyTolerance,
      'packageName': ?packageName,
      'productId': ?productId,
      'purchaseOptionId': ?purchaseOptionId,
    };
  }
}

/// Request message for ActivateSubscriptionOffer.
class ActivateSubscriptionOfferRequest {
  /// The parent base plan (ID) of the offer to activate.
  ///
  /// Required.
  core.String? basePlanId;

  /// The latency tolerance for the propagation of this product update.
  ///
  /// Defaults to latency-sensitive.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "PRODUCT_UPDATE_LATENCY_TOLERANCE_UNSPECIFIED" : Defaults to
  /// PRODUCT_UPDATE_LATENCY_TOLERANCE_LATENCY_SENSITIVE.
  /// - "PRODUCT_UPDATE_LATENCY_TOLERANCE_LATENCY_SENSITIVE" : The update will
  /// propagate to clients within several minutes on average and up to a few
  /// hours in rare cases. Throughput is limited to 7,200 updates per app per
  /// hour.
  /// - "PRODUCT_UPDATE_LATENCY_TOLERANCE_LATENCY_TOLERANT" : The update will
  /// propagate to clients within 24 hours. Supports high throughput of up to
  /// 720,000 updates per app per hour using batch modification methods.
  core.String? latencyTolerance;

  /// The unique offer ID of the offer to activate.
  ///
  /// Required.
  core.String? offerId;

  /// The parent app (package name) of the offer to activate.
  ///
  /// Required.
  core.String? packageName;

  /// The parent subscription (ID) of the offer to activate.
  ///
  /// Required.
  core.String? productId;

  ActivateSubscriptionOfferRequest({
    this.basePlanId,
    this.latencyTolerance,
    this.offerId,
    this.packageName,
    this.productId,
  });

  ActivateSubscriptionOfferRequest.fromJson(core.Map json_)
    : this(
        basePlanId: json_['basePlanId'] as core.String?,
        latencyTolerance: json_['latencyTolerance'] as core.String?,
        offerId: json_['offerId'] as core.String?,
        packageName: json_['packageName'] as core.String?,
        productId: json_['productId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final basePlanId = this.basePlanId;
    final latencyTolerance = this.latencyTolerance;
    final offerId = this.offerId;
    final packageName = this.packageName;
    final productId = this.productId;
    return {
      'basePlanId': ?basePlanId,
      'latencyTolerance': ?latencyTolerance,
      'offerId': ?offerId,
      'packageName': ?packageName,
      'productId': ?productId,
    };
  }
}

/// Request message for AddTargeting.
class AddTargetingRequest {
  /// Specifies targeting updates such as regions, android sdk versions etc.
  TargetingUpdate? targetingUpdate;

  AddTargetingRequest({this.targetingUpdate});

  AddTargetingRequest.fromJson(core.Map json_)
    : this(
        targetingUpdate: json_.containsKey('targetingUpdate')
            ? TargetingUpdate.fromJson(
                json_['targetingUpdate'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final targetingUpdate = this.targetingUpdate;
    return {'targetingUpdate': ?targetingUpdate};
  }
}

/// Response message for AddTargeting.
typedef AddTargetingResponse = $Empty;

/// Object representation to describe all set of users.
class AllUsers {
  /// Set to true if all set of users are needed.
  ///
  /// Required.
  core.bool? isAllUsersRequested;

  AllUsers({this.isAllUsersRequested});

  AllUsers.fromJson(core.Map json_)
    : this(isAllUsersRequested: json_['isAllUsersRequested'] as core.bool?);

  core.Map<core.String, core.dynamic> toJson() {
    final isAllUsersRequested = this.isAllUsersRequested;
    return {'isAllUsersRequested': ?isAllUsersRequested};
  }
}

/// Android api level targeting data for app recovery action targeting.
class AndroidSdks {
  /// Android api levels of devices targeted by recovery action.
  ///
  /// See
  /// https://developer.android.com/guide/topics/manifest/uses-sdk-element#ApiLevels
  /// for different api levels in android.
  core.List<core.String>? sdkLevels;

  AndroidSdks({this.sdkLevels});

  AndroidSdks.fromJson(core.Map json_)
    : this(
        sdkLevels: (json_['sdkLevels'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final sdkLevels = this.sdkLevels;
    return {'sdkLevels': ?sdkLevels};
  }
}

/// Information about an APK.
///
/// The resource for ApksService.
class Apk {
  /// Information about the binary payload of this APK.
  ApkBinary? binary;

  /// The version code of the APK, as specified in the manifest file.
  core.int? versionCode;

  Apk({this.binary, this.versionCode});

  Apk.fromJson(core.Map json_)
    : this(
        binary: json_.containsKey('binary')
            ? ApkBinary.fromJson(
                json_['binary'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        versionCode: json_['versionCode'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final binary = this.binary;
    final versionCode = this.versionCode;
    return {'binary': ?binary, 'versionCode': ?versionCode};
  }
}

/// Represents the binary payload of an APK.
class ApkBinary {
  /// A sha1 hash of the APK payload, encoded as a hex string and matching the
  /// output of the sha1sum command.
  core.String? sha1;

  /// A sha256 hash of the APK payload, encoded as a hex string and matching the
  /// output of the sha256sum command.
  core.String? sha256;

  ApkBinary({this.sha1, this.sha256});

  ApkBinary.fromJson(core.Map json_)
    : this(
        sha1: json_['sha1'] as core.String?,
        sha256: json_['sha256'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final sha1 = this.sha1;
    final sha256 = this.sha256;
    return {'sha1': ?sha1, 'sha256': ?sha256};
  }
}

/// Description of the created apks.
class ApkDescription {
  /// Set only for asset slices.
  SplitApkMetadata? assetSliceMetadata;

  /// Set only for Instant split APKs.
  SplitApkMetadata? instantApkMetadata;

  /// Path of the Apk, will be in the following format: .apk where DownloadId is
  /// the ID used to download the apk using GeneratedApks.Download API.
  core.String? path;

  /// Set only for Split APKs.
  SplitApkMetadata? splitApkMetadata;

  /// Set only for standalone APKs.
  StandaloneApkMetadata? standaloneApkMetadata;

  /// Apk-level targeting.
  ApkTargeting? targeting;

  ApkDescription({
    this.assetSliceMetadata,
    this.instantApkMetadata,
    this.path,
    this.splitApkMetadata,
    this.standaloneApkMetadata,
    this.targeting,
  });

  ApkDescription.fromJson(core.Map json_)
    : this(
        assetSliceMetadata: json_.containsKey('assetSliceMetadata')
            ? SplitApkMetadata.fromJson(
                json_['assetSliceMetadata']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        instantApkMetadata: json_.containsKey('instantApkMetadata')
            ? SplitApkMetadata.fromJson(
                json_['instantApkMetadata']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        path: json_['path'] as core.String?,
        splitApkMetadata: json_.containsKey('splitApkMetadata')
            ? SplitApkMetadata.fromJson(
                json_['splitApkMetadata']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        standaloneApkMetadata: json_.containsKey('standaloneApkMetadata')
            ? StandaloneApkMetadata.fromJson(
                json_['standaloneApkMetadata']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        targeting: json_.containsKey('targeting')
            ? ApkTargeting.fromJson(
                json_['targeting'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final assetSliceMetadata = this.assetSliceMetadata;
    final instantApkMetadata = this.instantApkMetadata;
    final path = this.path;
    final splitApkMetadata = this.splitApkMetadata;
    final standaloneApkMetadata = this.standaloneApkMetadata;
    final targeting = this.targeting;
    return {
      'assetSliceMetadata': ?assetSliceMetadata,
      'instantApkMetadata': ?instantApkMetadata,
      'path': ?path,
      'splitApkMetadata': ?splitApkMetadata,
      'standaloneApkMetadata': ?standaloneApkMetadata,
      'targeting': ?targeting,
    };
  }
}

/// A set of apks representing a module.
class ApkSet {
  /// Description of the generated apks.
  core.List<ApkDescription>? apkDescription;

  /// Metadata about the module represented by this ApkSet
  ModuleMetadata? moduleMetadata;

  ApkSet({this.apkDescription, this.moduleMetadata});

  ApkSet.fromJson(core.Map json_)
    : this(
        apkDescription: (json_['apkDescription'] as core.List?)
            ?.map(
              (value) => ApkDescription.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        moduleMetadata: json_.containsKey('moduleMetadata')
            ? ModuleMetadata.fromJson(
                json_['moduleMetadata'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final apkDescription = this.apkDescription;
    final moduleMetadata = this.moduleMetadata;
    return {
      'apkDescription': ?apkDescription,
      'moduleMetadata': ?moduleMetadata,
    };
  }
}

/// Represents a set of apk-level targetings.
class ApkTargeting {
  /// The abi that the apk targets
  AbiTargeting? abiTargeting;

  /// The language that the apk targets
  LanguageTargeting? languageTargeting;

  /// Multi-api-level targeting.
  MultiAbiTargeting? multiAbiTargeting;

  /// The screen density that this apk supports.
  ScreenDensityTargeting? screenDensityTargeting;

  /// The sdk version that the apk targets
  SdkVersionTargeting? sdkVersionTargeting;

  /// Texture-compression-format-level targeting
  TextureCompressionFormatTargeting? textureCompressionFormatTargeting;

  ApkTargeting({
    this.abiTargeting,
    this.languageTargeting,
    this.multiAbiTargeting,
    this.screenDensityTargeting,
    this.sdkVersionTargeting,
    this.textureCompressionFormatTargeting,
  });

  ApkTargeting.fromJson(core.Map json_)
    : this(
        abiTargeting: json_.containsKey('abiTargeting')
            ? AbiTargeting.fromJson(
                json_['abiTargeting'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        languageTargeting: json_.containsKey('languageTargeting')
            ? LanguageTargeting.fromJson(
                json_['languageTargeting']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        multiAbiTargeting: json_.containsKey('multiAbiTargeting')
            ? MultiAbiTargeting.fromJson(
                json_['multiAbiTargeting']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        screenDensityTargeting: json_.containsKey('screenDensityTargeting')
            ? ScreenDensityTargeting.fromJson(
                json_['screenDensityTargeting']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        sdkVersionTargeting: json_.containsKey('sdkVersionTargeting')
            ? SdkVersionTargeting.fromJson(
                json_['sdkVersionTargeting']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        textureCompressionFormatTargeting:
            json_.containsKey('textureCompressionFormatTargeting')
            ? TextureCompressionFormatTargeting.fromJson(
                json_['textureCompressionFormatTargeting']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final abiTargeting = this.abiTargeting;
    final languageTargeting = this.languageTargeting;
    final multiAbiTargeting = this.multiAbiTargeting;
    final screenDensityTargeting = this.screenDensityTargeting;
    final sdkVersionTargeting = this.sdkVersionTargeting;
    final textureCompressionFormatTargeting =
        this.textureCompressionFormatTargeting;
    return {
      'abiTargeting': ?abiTargeting,
      'languageTargeting': ?languageTargeting,
      'multiAbiTargeting': ?multiAbiTargeting,
      'screenDensityTargeting': ?screenDensityTargeting,
      'sdkVersionTargeting': ?sdkVersionTargeting,
      'textureCompressionFormatTargeting': ?textureCompressionFormatTargeting,
    };
  }
}

/// Request to create a new externally hosted APK.
class ApksAddExternallyHostedRequest {
  /// The definition of the externally-hosted APK and where it is located.
  ExternallyHostedApk? externallyHostedApk;

  ApksAddExternallyHostedRequest({this.externallyHostedApk});

  ApksAddExternallyHostedRequest.fromJson(core.Map json_)
    : this(
        externallyHostedApk: json_.containsKey('externallyHostedApk')
            ? ExternallyHostedApk.fromJson(
                json_['externallyHostedApk']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final externallyHostedApk = this.externallyHostedApk;
    return {'externallyHostedApk': ?externallyHostedApk};
  }
}

/// Response for creating a new externally hosted APK.
class ApksAddExternallyHostedResponse {
  /// The definition of the externally-hosted APK and where it is located.
  ExternallyHostedApk? externallyHostedApk;

  ApksAddExternallyHostedResponse({this.externallyHostedApk});

  ApksAddExternallyHostedResponse.fromJson(core.Map json_)
    : this(
        externallyHostedApk: json_.containsKey('externallyHostedApk')
            ? ExternallyHostedApk.fromJson(
                json_['externallyHostedApk']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final externallyHostedApk = this.externallyHostedApk;
    return {'externallyHostedApk': ?externallyHostedApk};
  }
}

/// Response listing all APKs.
class ApksListResponse {
  /// All APKs.
  core.List<Apk>? apks;

  /// The kind of this response ("androidpublisher#apksListResponse").
  core.String? kind;

  ApksListResponse({this.apks, this.kind});

  ApksListResponse.fromJson(core.Map json_)
    : this(
        apks: (json_['apks'] as core.List?)
            ?.map(
              (value) =>
                  Apk.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
        kind: json_['kind'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final apks = this.apks;
    final kind = this.kind;
    return {'apks': ?apks, 'kind': ?kind};
  }
}

/// The app details.
///
/// The resource for DetailsService.
class AppDetails {
  /// The user-visible support email for this app.
  core.String? contactEmail;

  /// The user-visible support telephone number for this app.
  core.String? contactPhone;

  /// The user-visible website for this app.
  core.String? contactWebsite;

  /// Default language code, in BCP 47 format (eg "en-US").
  core.String? defaultLanguage;

  AppDetails({
    this.contactEmail,
    this.contactPhone,
    this.contactWebsite,
    this.defaultLanguage,
  });

  AppDetails.fromJson(core.Map json_)
    : this(
        contactEmail: json_['contactEmail'] as core.String?,
        contactPhone: json_['contactPhone'] as core.String?,
        contactWebsite: json_['contactWebsite'] as core.String?,
        defaultLanguage: json_['defaultLanguage'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final contactEmail = this.contactEmail;
    final contactPhone = this.contactPhone;
    final contactWebsite = this.contactWebsite;
    final defaultLanguage = this.defaultLanguage;
    return {
      'contactEmail': ?contactEmail,
      'contactPhone': ?contactPhone,
      'contactWebsite': ?contactWebsite,
      'defaultLanguage': ?defaultLanguage,
    };
  }
}

/// An app edit.
///
/// The resource for EditsService.
class AppEdit {
  /// The time (as seconds since Epoch) at which the edit will expire and will
  /// be no longer valid for use.
  ///
  /// Output only.
  core.String? expiryTimeSeconds;

  /// Identifier of the edit.
  ///
  /// Can be used in subsequent API calls.
  ///
  /// Output only.
  core.String? id;

  AppEdit({this.expiryTimeSeconds, this.id});

  AppEdit.fromJson(core.Map json_)
    : this(
        expiryTimeSeconds: json_['expiryTimeSeconds'] as core.String?,
        id: json_['id'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final expiryTimeSeconds = this.expiryTimeSeconds;
    final id = this.id;
    return {'expiryTimeSeconds': ?expiryTimeSeconds, 'id': ?id};
  }
}

/// Information about an app recovery action.
class AppRecoveryAction {
  /// ID corresponding to the app recovery action.
  core.String? appRecoveryId;

  /// Timestamp of when the app recovery action is canceled by the developer.
  ///
  /// Only set if the recovery action has been canceled.
  core.String? cancelTime;

  /// Timestamp of when the app recovery action is created by the developer.
  ///
  /// It is always set after creation of the recovery action.
  core.String? createTime;

  /// Timestamp of when the app recovery action is deployed to the users.
  ///
  /// Only set if the recovery action has been deployed.
  core.String? deployTime;

  /// Timestamp of when the developer last updated recovery action.
  ///
  /// In case the action is cancelled, it corresponds to cancellation time. It
  /// is always set after creation of the recovery action.
  core.String? lastUpdateTime;

  /// Data about the remote in-app update action such as such as recovered user
  /// base, recoverable user base etc.
  ///
  /// Set only if the recovery action type is Remote In-App Update.
  RemoteInAppUpdateData? remoteInAppUpdateData;

  /// The status of the recovery action.
  /// Possible string values are:
  /// - "RECOVERY_STATUS_UNSPECIFIED" : RecoveryStatus is unspecified.
  /// - "RECOVERY_STATUS_ACTIVE" : The app recovery action has not been canceled
  /// since it has been created.
  /// - "RECOVERY_STATUS_CANCELED" : The recovery action has been canceled. The
  /// action cannot be resumed.
  /// - "RECOVERY_STATUS_DRAFT" : The recovery action is in the draft state and
  /// has not yet been deployed to users.
  /// - "RECOVERY_STATUS_GENERATION_IN_PROGRESS" : The recovery action is
  /// generating recovery apks.
  /// - "RECOVERY_STATUS_GENERATION_FAILED" : The app recovery action generation
  /// has failed.
  core.String? status;

  /// Specifies targeting criteria for the recovery action such as regions,
  /// android sdk versions, app versions etc.
  Targeting? targeting;

  AppRecoveryAction({
    this.appRecoveryId,
    this.cancelTime,
    this.createTime,
    this.deployTime,
    this.lastUpdateTime,
    this.remoteInAppUpdateData,
    this.status,
    this.targeting,
  });

  AppRecoveryAction.fromJson(core.Map json_)
    : this(
        appRecoveryId: json_['appRecoveryId'] as core.String?,
        cancelTime: json_['cancelTime'] as core.String?,
        createTime: json_['createTime'] as core.String?,
        deployTime: json_['deployTime'] as core.String?,
        lastUpdateTime: json_['lastUpdateTime'] as core.String?,
        remoteInAppUpdateData: json_.containsKey('remoteInAppUpdateData')
            ? RemoteInAppUpdateData.fromJson(
                json_['remoteInAppUpdateData']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        status: json_['status'] as core.String?,
        targeting: json_.containsKey('targeting')
            ? Targeting.fromJson(
                json_['targeting'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final appRecoveryId = this.appRecoveryId;
    final cancelTime = this.cancelTime;
    final createTime = this.createTime;
    final deployTime = this.deployTime;
    final lastUpdateTime = this.lastUpdateTime;
    final remoteInAppUpdateData = this.remoteInAppUpdateData;
    final status = this.status;
    final targeting = this.targeting;
    return {
      'appRecoveryId': ?appRecoveryId,
      'cancelTime': ?cancelTime,
      'createTime': ?createTime,
      'deployTime': ?deployTime,
      'lastUpdateTime': ?lastUpdateTime,
      'remoteInAppUpdateData': ?remoteInAppUpdateData,
      'status': ?status,
      'targeting': ?targeting,
    };
  }
}

/// Data format for a list of app versions.
class AppVersionList {
  /// List of app version codes.
  core.List<core.String>? versionCodes;

  AppVersionList({this.versionCodes});

  AppVersionList.fromJson(core.Map json_)
    : this(
        versionCodes: (json_['versionCodes'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final versionCodes = this.versionCodes;
    return {'versionCodes': ?versionCodes};
  }
}

/// Data format for a continuous range of app versions.
class AppVersionRange {
  /// Highest app version in the range, inclusive.
  core.String? versionCodeEnd;

  /// Lowest app version in the range, inclusive.
  core.String? versionCodeStart;

  AppVersionRange({this.versionCodeEnd, this.versionCodeStart});

  AppVersionRange.fromJson(core.Map json_)
    : this(
        versionCodeEnd: json_['versionCodeEnd'] as core.String?,
        versionCodeStart: json_['versionCodeStart'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final versionCodeEnd = this.versionCodeEnd;
    final versionCodeStart = this.versionCodeStart;
    return {
      'versionCodeEnd': ?versionCodeEnd,
      'versionCodeStart': ?versionCodeStart,
    };
  }
}

/// Deprecated: subscription archiving is not supported.
typedef ArchiveSubscriptionRequest = $Shared00;

/// Metadata of an asset module.
class AssetModuleMetadata {
  /// Indicates the delivery type for persistent install.
  /// Possible string values are:
  /// - "UNKNOWN_DELIVERY_TYPE" : Unspecified delivery type.
  /// - "INSTALL_TIME" : This module will always be downloaded as part of the
  /// initial install of the app.
  /// - "ON_DEMAND" : This module is requested on-demand, which means it will
  /// not be part of the initial install, and will only be sent when requested
  /// by the client.
  /// - "FAST_FOLLOW" : This module will be downloaded immediately after initial
  /// install finishes. The app can be opened before these modules are
  /// downloaded.
  core.String? deliveryType;

  /// Module name.
  core.String? name;

  AssetModuleMetadata({this.deliveryType, this.name});

  AssetModuleMetadata.fromJson(core.Map json_)
    : this(
        deliveryType: json_['deliveryType'] as core.String?,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final deliveryType = this.deliveryType;
    final name = this.name;
    return {'deliveryType': ?deliveryType, 'name': ?name};
  }
}

/// Set of asset slices belonging to a single asset module.
class AssetSliceSet {
  /// Asset slices.
  core.List<ApkDescription>? apkDescription;

  /// Module level metadata.
  AssetModuleMetadata? assetModuleMetadata;

  AssetSliceSet({this.apkDescription, this.assetModuleMetadata});

  AssetSliceSet.fromJson(core.Map json_)
    : this(
        apkDescription: (json_['apkDescription'] as core.List?)
            ?.map(
              (value) => ApkDescription.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        assetModuleMetadata: json_.containsKey('assetModuleMetadata')
            ? AssetModuleMetadata.fromJson(
                json_['assetModuleMetadata']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final apkDescription = this.apkDescription;
    final assetModuleMetadata = this.assetModuleMetadata;
    return {
      'apkDescription': ?apkDescription,
      'assetModuleMetadata': ?assetModuleMetadata,
    };
  }
}

/// Represents a base plan that automatically renews at the end of its
/// subscription period.
class AutoRenewingBasePlanType {
  /// Custom account hold period of the subscription, specified in ISO 8601
  /// format.
  ///
  /// Acceptable values must be in days and between P0D and P60D. An empty field
  /// represents a recommended account hold, calculated as 60 days minus grace
  /// period. The sum of gracePeriodDuration and accountHoldDuration must be
  /// between P30D and P60D days, inclusive.
  ///
  /// Optional.
  core.String? accountHoldDuration;

  /// Subscription period, specified in ISO 8601 format.
  ///
  /// For a list of acceptable billing periods, refer to the help center. The
  /// duration is immutable after the base plan is created.
  ///
  /// Required. Immutable.
  core.String? billingPeriodDuration;

  /// Grace period of the subscription, specified in ISO 8601 format.
  ///
  /// Acceptable values must be in days and between P0D and the lesser of 30D
  /// and base plan billing period. If not specified, a default value will be
  /// used based on the billing period. The sum of gracePeriodDuration and
  /// accountHoldDuration must be between P30D and P60D days, inclusive.
  core.String? gracePeriodDuration;

  /// Whether the renewing base plan is backward compatible.
  ///
  /// The backward compatible base plan is returned by the Google Play Billing
  /// Library deprecated method querySkuDetailsAsync(). Only one renewing base
  /// plan can be marked as legacy compatible for a given subscription.
  core.bool? legacyCompatible;

  /// Subscription offer id which is legacy compatible.
  ///
  /// The backward compatible subscription offer is returned by the Google Play
  /// Billing Library deprecated method querySkuDetailsAsync(). Only one
  /// subscription offer can be marked as legacy compatible for a given renewing
  /// base plan. To have no Subscription offer as legacy compatible set this
  /// field as empty string.
  core.String? legacyCompatibleSubscriptionOfferId;

  /// The proration mode for the base plan determines what happens when a user
  /// switches to this plan from another base plan.
  ///
  /// If unspecified, defaults to CHARGE_ON_NEXT_BILLING_DATE.
  /// Possible string values are:
  /// - "SUBSCRIPTION_PRORATION_MODE_UNSPECIFIED" : Unspecified mode.
  /// - "SUBSCRIPTION_PRORATION_MODE_CHARGE_ON_NEXT_BILLING_DATE" : Users will
  /// be charged for their new base plan at the end of their current billing
  /// period.
  /// - "SUBSCRIPTION_PRORATION_MODE_CHARGE_FULL_PRICE_IMMEDIATELY" : Users will
  /// be charged for their new base plan immediately and in full. Any remaining
  /// period of their existing subscription will be used to extend the duration
  /// of the new billing plan.
  core.String? prorationMode;

  /// Whether users should be able to resubscribe to this base plan in Google
  /// Play surfaces.
  ///
  /// Defaults to RESUBSCRIBE_STATE_ACTIVE if not specified.
  /// Possible string values are:
  /// - "RESUBSCRIBE_STATE_UNSPECIFIED" : Unspecified state.
  /// - "RESUBSCRIBE_STATE_ACTIVE" : Resubscribe is active.
  /// - "RESUBSCRIBE_STATE_INACTIVE" : Resubscribe is inactive.
  core.String? resubscribeState;

  AutoRenewingBasePlanType({
    this.accountHoldDuration,
    this.billingPeriodDuration,
    this.gracePeriodDuration,
    this.legacyCompatible,
    this.legacyCompatibleSubscriptionOfferId,
    this.prorationMode,
    this.resubscribeState,
  });

  AutoRenewingBasePlanType.fromJson(core.Map json_)
    : this(
        accountHoldDuration: json_['accountHoldDuration'] as core.String?,
        billingPeriodDuration: json_['billingPeriodDuration'] as core.String?,
        gracePeriodDuration: json_['gracePeriodDuration'] as core.String?,
        legacyCompatible: json_['legacyCompatible'] as core.bool?,
        legacyCompatibleSubscriptionOfferId:
            json_['legacyCompatibleSubscriptionOfferId'] as core.String?,
        prorationMode: json_['prorationMode'] as core.String?,
        resubscribeState: json_['resubscribeState'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final accountHoldDuration = this.accountHoldDuration;
    final billingPeriodDuration = this.billingPeriodDuration;
    final gracePeriodDuration = this.gracePeriodDuration;
    final legacyCompatible = this.legacyCompatible;
    final legacyCompatibleSubscriptionOfferId =
        this.legacyCompatibleSubscriptionOfferId;
    final prorationMode = this.prorationMode;
    final resubscribeState = this.resubscribeState;
    return {
      'accountHoldDuration': ?accountHoldDuration,
      'billingPeriodDuration': ?billingPeriodDuration,
      'gracePeriodDuration': ?gracePeriodDuration,
      'legacyCompatible': ?legacyCompatible,
      'legacyCompatibleSubscriptionOfferId':
          ?legacyCompatibleSubscriptionOfferId,
      'prorationMode': ?prorationMode,
      'resubscribeState': ?resubscribeState,
    };
  }
}

/// Information related to an auto renewing plan.
class AutoRenewingPlan {
  /// If the subscription is currently set to auto-renew, e.g. the user has not
  /// canceled the subscription
  core.bool? autoRenewEnabled;

  /// The installment plan commitment and state related info for the auto
  /// renewing plan.
  InstallmentPlan? installmentDetails;

  /// The information of the last price change for the item since subscription
  /// signup.
  SubscriptionItemPriceChangeDetails? priceChangeDetails;

  /// The information of the latest price step-up consent.
  PriceStepUpConsentDetails? priceStepUpConsentDetails;

  /// The current recurring price of the auto renewing plan.
  ///
  /// Note that the price does not take into account discounts and does not
  /// include taxes for tax-exclusive pricing, please call orders.get API
  /// instead if transaction details are needed.
  Money? recurringPrice;

  AutoRenewingPlan({
    this.autoRenewEnabled,
    this.installmentDetails,
    this.priceChangeDetails,
    this.priceStepUpConsentDetails,
    this.recurringPrice,
  });

  AutoRenewingPlan.fromJson(core.Map json_)
    : this(
        autoRenewEnabled: json_['autoRenewEnabled'] as core.bool?,
        installmentDetails: json_.containsKey('installmentDetails')
            ? InstallmentPlan.fromJson(
                json_['installmentDetails']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        priceChangeDetails: json_.containsKey('priceChangeDetails')
            ? SubscriptionItemPriceChangeDetails.fromJson(
                json_['priceChangeDetails']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        priceStepUpConsentDetails:
            json_.containsKey('priceStepUpConsentDetails')
            ? PriceStepUpConsentDetails.fromJson(
                json_['priceStepUpConsentDetails']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        recurringPrice: json_.containsKey('recurringPrice')
            ? Money.fromJson(
                json_['recurringPrice'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final autoRenewEnabled = this.autoRenewEnabled;
    final installmentDetails = this.installmentDetails;
    final priceChangeDetails = this.priceChangeDetails;
    final priceStepUpConsentDetails = this.priceStepUpConsentDetails;
    final recurringPrice = this.recurringPrice;
    return {
      'autoRenewEnabled': ?autoRenewEnabled,
      'installmentDetails': ?installmentDetails,
      'priceChangeDetails': ?priceChangeDetails,
      'priceStepUpConsentDetails': ?priceStepUpConsentDetails,
      'recurringPrice': ?recurringPrice,
    };
  }
}

/// Details of a base price pricing phase.
typedef BaseDetails = $Empty;

/// A single base plan for a subscription.
class BasePlan {
  /// Set when the base plan automatically renews at a regular interval.
  AutoRenewingBasePlanType? autoRenewingBasePlanType;

  /// The unique identifier of this base plan.
  ///
  /// Must be unique within the subscription, and conform with RFC-1034. That
  /// is, this ID can only contain lower-case letters (a-z), numbers (0-9), and
  /// hyphens (-), and be at most 63 characters.
  ///
  /// Required. Immutable.
  core.String? basePlanId;

  /// Set for installments base plans where a user is committed to a specified
  /// number of payments.
  InstallmentsBasePlanType? installmentsBasePlanType;

  /// List of up to 20 custom tags specified for this base plan, and returned to
  /// the app through the billing library.
  ///
  /// Subscription offers for this base plan will also receive these offer tags
  /// in the billing library.
  core.List<OfferTag>? offerTags;

  /// Pricing information for any new locations Play may launch in the future.
  ///
  /// If omitted, the BasePlan will not be automatically available any new
  /// locations Play may launch in the future.
  OtherRegionsBasePlanConfig? otherRegionsConfig;

  /// Set when the base plan does not automatically renew at the end of the
  /// billing period.
  PrepaidBasePlanType? prepaidBasePlanType;

  /// Region-specific information for this base plan.
  core.List<RegionalBasePlanConfig>? regionalConfigs;

  /// The state of the base plan, i.e. whether it's active.
  ///
  /// Draft and inactive base plans can be activated or deleted. Active base
  /// plans can be made inactive. Inactive base plans can be canceled. This
  /// field cannot be changed by updating the resource. Use the dedicated
  /// endpoints instead.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Unspecified state.
  /// - "DRAFT" : The base plan is currently in a draft state, and hasn't been
  /// activated. It can be safely deleted at this point.
  /// - "ACTIVE" : The base plan is active and available for new subscribers.
  /// - "INACTIVE" : The base plan is inactive and only available for existing
  /// subscribers.
  core.String? state;

  BasePlan({
    this.autoRenewingBasePlanType,
    this.basePlanId,
    this.installmentsBasePlanType,
    this.offerTags,
    this.otherRegionsConfig,
    this.prepaidBasePlanType,
    this.regionalConfigs,
    this.state,
  });

  BasePlan.fromJson(core.Map json_)
    : this(
        autoRenewingBasePlanType: json_.containsKey('autoRenewingBasePlanType')
            ? AutoRenewingBasePlanType.fromJson(
                json_['autoRenewingBasePlanType']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        basePlanId: json_['basePlanId'] as core.String?,
        installmentsBasePlanType: json_.containsKey('installmentsBasePlanType')
            ? InstallmentsBasePlanType.fromJson(
                json_['installmentsBasePlanType']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        offerTags: (json_['offerTags'] as core.List?)
            ?.map(
              (value) => OfferTag.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        otherRegionsConfig: json_.containsKey('otherRegionsConfig')
            ? OtherRegionsBasePlanConfig.fromJson(
                json_['otherRegionsConfig']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        prepaidBasePlanType: json_.containsKey('prepaidBasePlanType')
            ? PrepaidBasePlanType.fromJson(
                json_['prepaidBasePlanType']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        regionalConfigs: (json_['regionalConfigs'] as core.List?)
            ?.map(
              (value) => RegionalBasePlanConfig.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        state: json_['state'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final autoRenewingBasePlanType = this.autoRenewingBasePlanType;
    final basePlanId = this.basePlanId;
    final installmentsBasePlanType = this.installmentsBasePlanType;
    final offerTags = this.offerTags;
    final otherRegionsConfig = this.otherRegionsConfig;
    final prepaidBasePlanType = this.prepaidBasePlanType;
    final regionalConfigs = this.regionalConfigs;
    final state = this.state;
    return {
      'autoRenewingBasePlanType': ?autoRenewingBasePlanType,
      'basePlanId': ?basePlanId,
      'installmentsBasePlanType': ?installmentsBasePlanType,
      'offerTags': ?offerTags,
      'otherRegionsConfig': ?otherRegionsConfig,
      'prepaidBasePlanType': ?prepaidBasePlanType,
      'regionalConfigs': ?regionalConfigs,
      'state': ?state,
    };
  }
}

/// Details about base price offer phase.
typedef BasePriceOfferPhase = $Empty;

/// Request message for BatchDeleteOneTimeProductOffers.
class BatchDeleteOneTimeProductOffersRequest {
  /// A list of update requests of up to 100 elements.
  ///
  /// All requests must correspond to different offers.
  ///
  /// Required.
  core.List<DeleteOneTimeProductOfferRequest>? requests;

  BatchDeleteOneTimeProductOffersRequest({this.requests});

  BatchDeleteOneTimeProductOffersRequest.fromJson(core.Map json_)
    : this(
        requests: (json_['requests'] as core.List?)
            ?.map(
              (value) => DeleteOneTimeProductOfferRequest.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final requests = this.requests;
    return {'requests': ?requests};
  }
}

/// Request message for BatchDeleteOneTimeProduct.
class BatchDeleteOneTimeProductsRequest {
  /// A list of delete requests of up to 100 elements.
  ///
  /// All requests must delete different one-time products.
  ///
  /// Required.
  core.List<DeleteOneTimeProductRequest>? requests;

  BatchDeleteOneTimeProductsRequest({this.requests});

  BatchDeleteOneTimeProductsRequest.fromJson(core.Map json_)
    : this(
        requests: (json_['requests'] as core.List?)
            ?.map(
              (value) => DeleteOneTimeProductRequest.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final requests = this.requests;
    return {'requests': ?requests};
  }
}

/// Request message for BatchDeletePurchaseOption.
class BatchDeletePurchaseOptionsRequest {
  /// A list of delete requests of up to 100 elements.
  ///
  /// All requests must delete purchase options from different one-time
  /// products.
  ///
  /// Required.
  core.List<DeletePurchaseOptionRequest>? requests;

  BatchDeletePurchaseOptionsRequest({this.requests});

  BatchDeletePurchaseOptionsRequest.fromJson(core.Map json_)
    : this(
        requests: (json_['requests'] as core.List?)
            ?.map(
              (value) => DeletePurchaseOptionRequest.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final requests = this.requests;
    return {'requests': ?requests};
  }
}

/// Request message for the BatchGetOneTimeProductOffers endpoint.
class BatchGetOneTimeProductOffersRequest {
  /// A list of get requests of up to 100 elements.
  ///
  /// All requests must retrieve different offers.
  ///
  /// Required.
  core.List<GetOneTimeProductOfferRequest>? requests;

  BatchGetOneTimeProductOffersRequest({this.requests});

  BatchGetOneTimeProductOffersRequest.fromJson(core.Map json_)
    : this(
        requests: (json_['requests'] as core.List?)
            ?.map(
              (value) => GetOneTimeProductOfferRequest.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final requests = this.requests;
    return {'requests': ?requests};
  }
}

/// Response message for the BatchGetOneTimeProductOffers endpoint.
class BatchGetOneTimeProductOffersResponse {
  /// The list of updated one-time product offers, in the same order as the
  /// request.
  core.List<OneTimeProductOffer>? oneTimeProductOffers;

  BatchGetOneTimeProductOffersResponse({this.oneTimeProductOffers});

  BatchGetOneTimeProductOffersResponse.fromJson(core.Map json_)
    : this(
        oneTimeProductOffers: (json_['oneTimeProductOffers'] as core.List?)
            ?.map(
              (value) => OneTimeProductOffer.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final oneTimeProductOffers = this.oneTimeProductOffers;
    return {'oneTimeProductOffers': ?oneTimeProductOffers};
  }
}

/// Response message for the BatchGetOneTimeProducts endpoint.
class BatchGetOneTimeProductsResponse {
  /// The list of requested one-time products, in the same order as the request.
  core.List<OneTimeProduct>? oneTimeProducts;

  BatchGetOneTimeProductsResponse({this.oneTimeProducts});

  BatchGetOneTimeProductsResponse.fromJson(core.Map json_)
    : this(
        oneTimeProducts: (json_['oneTimeProducts'] as core.List?)
            ?.map(
              (value) => OneTimeProduct.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final oneTimeProducts = this.oneTimeProducts;
    return {'oneTimeProducts': ?oneTimeProducts};
  }
}

/// Response for the orders.batchGet API.
class BatchGetOrdersResponse {
  /// Details for the requested order IDs.
  core.List<Order>? orders;

  BatchGetOrdersResponse({this.orders});

  BatchGetOrdersResponse.fromJson(core.Map json_)
    : this(
        orders: (json_['orders'] as core.List?)
            ?.map(
              (value) =>
                  Order.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final orders = this.orders;
    return {'orders': ?orders};
  }
}

/// Request message for BatchGetSubscriptionOffers endpoint.
class BatchGetSubscriptionOffersRequest {
  /// A list of update requests of up to 100 elements.
  ///
  /// All requests must update different subscriptions.
  ///
  /// Required.
  core.List<GetSubscriptionOfferRequest>? requests;

  BatchGetSubscriptionOffersRequest({this.requests});

  BatchGetSubscriptionOffersRequest.fromJson(core.Map json_)
    : this(
        requests: (json_['requests'] as core.List?)
            ?.map(
              (value) => GetSubscriptionOfferRequest.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final requests = this.requests;
    return {'requests': ?requests};
  }
}

/// Response message for BatchGetSubscriptionOffers endpoint.
class BatchGetSubscriptionOffersResponse {
  core.List<SubscriptionOffer>? subscriptionOffers;

  BatchGetSubscriptionOffersResponse({this.subscriptionOffers});

  BatchGetSubscriptionOffersResponse.fromJson(core.Map json_)
    : this(
        subscriptionOffers: (json_['subscriptionOffers'] as core.List?)
            ?.map(
              (value) => SubscriptionOffer.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final subscriptionOffers = this.subscriptionOffers;
    return {'subscriptionOffers': ?subscriptionOffers};
  }
}

/// Response message for BatchGetSubscriptions endpoint.
class BatchGetSubscriptionsResponse {
  /// The list of requested subscriptions, in the same order as the request.
  core.List<Subscription>? subscriptions;

  BatchGetSubscriptionsResponse({this.subscriptions});

  BatchGetSubscriptionsResponse.fromJson(core.Map json_)
    : this(
        subscriptions: (json_['subscriptions'] as core.List?)
            ?.map(
              (value) => Subscription.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final subscriptions = this.subscriptions;
    return {'subscriptions': ?subscriptions};
  }
}

/// Request message for BatchMigrateBasePlanPrices.
class BatchMigrateBasePlanPricesRequest {
  /// Up to 100 price migration requests.
  ///
  /// All requests must update different base plans.
  ///
  /// Required.
  core.List<MigrateBasePlanPricesRequest>? requests;

  BatchMigrateBasePlanPricesRequest({this.requests});

  BatchMigrateBasePlanPricesRequest.fromJson(core.Map json_)
    : this(
        requests: (json_['requests'] as core.List?)
            ?.map(
              (value) => MigrateBasePlanPricesRequest.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final requests = this.requests;
    return {'requests': ?requests};
  }
}

/// Response message for BatchMigrateBasePlanPrices.
class BatchMigrateBasePlanPricesResponse {
  /// Contains one response per requested price migration, in the same order as
  /// the request.
  core.List<MigrateBasePlanPricesResponse>? responses;

  BatchMigrateBasePlanPricesResponse({this.responses});

  BatchMigrateBasePlanPricesResponse.fromJson(core.Map json_)
    : this(
        responses: (json_['responses'] as core.List?)
            ?.map(
              (value) => MigrateBasePlanPricesResponse.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final responses = this.responses;
    return {'responses': ?responses};
  }
}

/// Request message for BatchUpdateBasePlanStates.
class BatchUpdateBasePlanStatesRequest {
  /// The update request list of up to 100 elements.
  ///
  /// All requests must update different base plans.
  ///
  /// Required.
  core.List<UpdateBasePlanStateRequest>? requests;

  BatchUpdateBasePlanStatesRequest({this.requests});

  BatchUpdateBasePlanStatesRequest.fromJson(core.Map json_)
    : this(
        requests: (json_['requests'] as core.List?)
            ?.map(
              (value) => UpdateBasePlanStateRequest.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final requests = this.requests;
    return {'requests': ?requests};
  }
}

/// Response message for BatchUpdateBasePlanStates.
class BatchUpdateBasePlanStatesResponse {
  /// The list of updated subscriptions.
  ///
  /// This list will match the requests one to one, in the same order.
  core.List<Subscription>? subscriptions;

  BatchUpdateBasePlanStatesResponse({this.subscriptions});

  BatchUpdateBasePlanStatesResponse.fromJson(core.Map json_)
    : this(
        subscriptions: (json_['subscriptions'] as core.List?)
            ?.map(
              (value) => Subscription.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final subscriptions = this.subscriptions;
    return {'subscriptions': ?subscriptions};
  }
}

/// Request message for BatchUpdateOneTimeProductOfferStates.
class BatchUpdateOneTimeProductOfferStatesRequest {
  /// The update request list of up to 100 elements.
  ///
  /// All requests must update different offers.
  ///
  /// Required.
  core.List<UpdateOneTimeProductOfferStateRequest>? requests;

  BatchUpdateOneTimeProductOfferStatesRequest({this.requests});

  BatchUpdateOneTimeProductOfferStatesRequest.fromJson(core.Map json_)
    : this(
        requests: (json_['requests'] as core.List?)
            ?.map(
              (value) => UpdateOneTimeProductOfferStateRequest.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final requests = this.requests;
    return {'requests': ?requests};
  }
}

/// Response message for BatchUpdateOneTimeProductOfferStates.
class BatchUpdateOneTimeProductOfferStatesResponse {
  /// The updated one-time product offers list, in the same order as the
  /// request.
  core.List<OneTimeProductOffer>? oneTimeProductOffers;

  BatchUpdateOneTimeProductOfferStatesResponse({this.oneTimeProductOffers});

  BatchUpdateOneTimeProductOfferStatesResponse.fromJson(core.Map json_)
    : this(
        oneTimeProductOffers: (json_['oneTimeProductOffers'] as core.List?)
            ?.map(
              (value) => OneTimeProductOffer.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final oneTimeProductOffers = this.oneTimeProductOffers;
    return {'oneTimeProductOffers': ?oneTimeProductOffers};
  }
}

/// Request message for BatchUpdateOneTimeProductOffers.
class BatchUpdateOneTimeProductOffersRequest {
  /// A list of update requests of up to 100 elements.
  ///
  /// All requests must update different offers.
  ///
  /// Required.
  core.List<UpdateOneTimeProductOfferRequest>? requests;

  BatchUpdateOneTimeProductOffersRequest({this.requests});

  BatchUpdateOneTimeProductOffersRequest.fromJson(core.Map json_)
    : this(
        requests: (json_['requests'] as core.List?)
            ?.map(
              (value) => UpdateOneTimeProductOfferRequest.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final requests = this.requests;
    return {'requests': ?requests};
  }
}

/// Response message for BatchUpdateOneTimeProductOffers.
class BatchUpdateOneTimeProductOffersResponse {
  /// The list of updated one-time product offers, in the same order as the
  /// request.
  core.List<OneTimeProductOffer>? oneTimeProductOffers;

  BatchUpdateOneTimeProductOffersResponse({this.oneTimeProductOffers});

  BatchUpdateOneTimeProductOffersResponse.fromJson(core.Map json_)
    : this(
        oneTimeProductOffers: (json_['oneTimeProductOffers'] as core.List?)
            ?.map(
              (value) => OneTimeProductOffer.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final oneTimeProductOffers = this.oneTimeProductOffers;
    return {'oneTimeProductOffers': ?oneTimeProductOffers};
  }
}

/// Request message for BatchUpdateOneTimeProduct.
class BatchUpdateOneTimeProductsRequest {
  /// A list of update requests of up to 100 elements.
  ///
  /// All requests must update different one-time products.
  ///
  /// Required.
  core.List<UpdateOneTimeProductRequest>? requests;

  BatchUpdateOneTimeProductsRequest({this.requests});

  BatchUpdateOneTimeProductsRequest.fromJson(core.Map json_)
    : this(
        requests: (json_['requests'] as core.List?)
            ?.map(
              (value) => UpdateOneTimeProductRequest.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final requests = this.requests;
    return {'requests': ?requests};
  }
}

/// Response message for BatchUpdateOneTimeProduct.
class BatchUpdateOneTimeProductsResponse {
  /// The list of updated one-time products list, in the same order as the
  /// request.
  core.List<OneTimeProduct>? oneTimeProducts;

  BatchUpdateOneTimeProductsResponse({this.oneTimeProducts});

  BatchUpdateOneTimeProductsResponse.fromJson(core.Map json_)
    : this(
        oneTimeProducts: (json_['oneTimeProducts'] as core.List?)
            ?.map(
              (value) => OneTimeProduct.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final oneTimeProducts = this.oneTimeProducts;
    return {'oneTimeProducts': ?oneTimeProducts};
  }
}

/// Request message for BatchUpdatePurchaseOptionStates.
class BatchUpdatePurchaseOptionStatesRequest {
  /// The update request list of up to 100 elements.
  ///
  /// All requests must update different purchase options.
  ///
  /// Required.
  core.List<UpdatePurchaseOptionStateRequest>? requests;

  BatchUpdatePurchaseOptionStatesRequest({this.requests});

  BatchUpdatePurchaseOptionStatesRequest.fromJson(core.Map json_)
    : this(
        requests: (json_['requests'] as core.List?)
            ?.map(
              (value) => UpdatePurchaseOptionStateRequest.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final requests = this.requests;
    return {'requests': ?requests};
  }
}

/// Response message for BatchUpdatePurchaseOptionStates.
class BatchUpdatePurchaseOptionStatesResponse {
  /// The list of updated one-time products.
  ///
  /// This list will match the requests one to one, in the same order.
  core.List<OneTimeProduct>? oneTimeProducts;

  BatchUpdatePurchaseOptionStatesResponse({this.oneTimeProducts});

  BatchUpdatePurchaseOptionStatesResponse.fromJson(core.Map json_)
    : this(
        oneTimeProducts: (json_['oneTimeProducts'] as core.List?)
            ?.map(
              (value) => OneTimeProduct.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final oneTimeProducts = this.oneTimeProducts;
    return {'oneTimeProducts': ?oneTimeProducts};
  }
}

/// Request message for BatchUpdateSubscriptionOfferStates.
class BatchUpdateSubscriptionOfferStatesRequest {
  /// The update request list of up to 100 elements.
  ///
  /// All requests must update different offers.
  ///
  /// Required.
  core.List<UpdateSubscriptionOfferStateRequest>? requests;

  BatchUpdateSubscriptionOfferStatesRequest({this.requests});

  BatchUpdateSubscriptionOfferStatesRequest.fromJson(core.Map json_)
    : this(
        requests: (json_['requests'] as core.List?)
            ?.map(
              (value) => UpdateSubscriptionOfferStateRequest.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final requests = this.requests;
    return {'requests': ?requests};
  }
}

/// Response message for BatchUpdateSubscriptionOfferStates.
class BatchUpdateSubscriptionOfferStatesResponse {
  /// The updated subscription offers list.
  core.List<SubscriptionOffer>? subscriptionOffers;

  BatchUpdateSubscriptionOfferStatesResponse({this.subscriptionOffers});

  BatchUpdateSubscriptionOfferStatesResponse.fromJson(core.Map json_)
    : this(
        subscriptionOffers: (json_['subscriptionOffers'] as core.List?)
            ?.map(
              (value) => SubscriptionOffer.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final subscriptionOffers = this.subscriptionOffers;
    return {'subscriptionOffers': ?subscriptionOffers};
  }
}

/// Request message for BatchUpdateSubscriptionOffers.
class BatchUpdateSubscriptionOffersRequest {
  /// A list of update requests of up to 100 elements.
  ///
  /// All requests must update different subscription offers.
  ///
  /// Required.
  core.List<UpdateSubscriptionOfferRequest>? requests;

  BatchUpdateSubscriptionOffersRequest({this.requests});

  BatchUpdateSubscriptionOffersRequest.fromJson(core.Map json_)
    : this(
        requests: (json_['requests'] as core.List?)
            ?.map(
              (value) => UpdateSubscriptionOfferRequest.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final requests = this.requests;
    return {'requests': ?requests};
  }
}

/// Response message for BatchUpdateSubscriptionOffers.
class BatchUpdateSubscriptionOffersResponse {
  /// The updated subscription offers list.
  core.List<SubscriptionOffer>? subscriptionOffers;

  BatchUpdateSubscriptionOffersResponse({this.subscriptionOffers});

  BatchUpdateSubscriptionOffersResponse.fromJson(core.Map json_)
    : this(
        subscriptionOffers: (json_['subscriptionOffers'] as core.List?)
            ?.map(
              (value) => SubscriptionOffer.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final subscriptionOffers = this.subscriptionOffers;
    return {'subscriptionOffers': ?subscriptionOffers};
  }
}

/// Request message for BatchUpdateSubscription.
class BatchUpdateSubscriptionsRequest {
  /// A list of update requests of up to 100 elements.
  ///
  /// All requests must update different subscriptions.
  ///
  /// Required.
  core.List<UpdateSubscriptionRequest>? requests;

  BatchUpdateSubscriptionsRequest({this.requests});

  BatchUpdateSubscriptionsRequest.fromJson(core.Map json_)
    : this(
        requests: (json_['requests'] as core.List?)
            ?.map(
              (value) => UpdateSubscriptionRequest.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final requests = this.requests;
    return {'requests': ?requests};
  }
}

/// Response message for BatchUpdateSubscription.
class BatchUpdateSubscriptionsResponse {
  /// The updated subscriptions list.
  core.List<Subscription>? subscriptions;

  BatchUpdateSubscriptionsResponse({this.subscriptions});

  BatchUpdateSubscriptionsResponse.fromJson(core.Map json_)
    : this(
        subscriptions: (json_['subscriptions'] as core.List?)
            ?.map(
              (value) => Subscription.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final subscriptions = this.subscriptions;
    return {'subscriptions': ?subscriptions};
  }
}

/// Information about an app bundle.
///
/// The resource for BundlesService.
class Bundle {
  /// A sha1 hash of the upload payload, encoded as a hex string and matching
  /// the output of the sha1sum command.
  core.String? sha1;

  /// A sha256 hash of the upload payload, encoded as a hex string and matching
  /// the output of the sha256sum command.
  core.String? sha256;

  /// The version code of the Android App Bundle, as specified in the Android
  /// App Bundle's base module APK manifest file.
  core.int? versionCode;

  Bundle({this.sha1, this.sha256, this.versionCode});

  Bundle.fromJson(core.Map json_)
    : this(
        sha1: json_['sha1'] as core.String?,
        sha256: json_['sha256'] as core.String?,
        versionCode: json_['versionCode'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final sha1 = this.sha1;
    final sha256 = this.sha256;
    final versionCode = this.versionCode;
    return {'sha1': ?sha1, 'sha256': ?sha256, 'versionCode': ?versionCode};
  }
}

/// Response listing all app bundles.
class BundlesListResponse {
  /// All app bundles.
  core.List<Bundle>? bundles;

  /// The kind of this response ("androidpublisher#bundlesListResponse").
  core.String? kind;

  BundlesListResponse({this.bundles, this.kind});

  BundlesListResponse.fromJson(core.Map json_)
    : this(
        bundles: (json_['bundles'] as core.List?)
            ?.map(
              (value) =>
                  Bundle.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
        kind: json_['kind'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final bundles = this.bundles;
    final kind = this.kind;
    return {'bundles': ?bundles, 'kind': ?kind};
  }
}

/// Address information for the customer, for use in tax computation.
class BuyerAddress {
  /// Two letter country code based on ISO-3166-1 Alpha-2 (UN country codes).
  core.String? buyerCountry;

  /// Postal code of an address.
  ///
  /// When Google is the Merchant of Record for the order, this information is
  /// not included.
  core.String? buyerPostcode;

  /// Top-level administrative subdivision of the buyer address country.
  ///
  /// When Google is the Merchant of Record for the order, this information is
  /// not included.
  core.String? buyerState;

  BuyerAddress({this.buyerCountry, this.buyerPostcode, this.buyerState});

  BuyerAddress.fromJson(core.Map json_)
    : this(
        buyerCountry: json_['buyerCountry'] as core.String?,
        buyerPostcode: json_['buyerPostcode'] as core.String?,
        buyerState: json_['buyerState'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final buyerCountry = this.buyerCountry;
    final buyerPostcode = this.buyerPostcode;
    final buyerState = this.buyerState;
    return {
      'buyerCountry': ?buyerCountry,
      'buyerPostcode': ?buyerPostcode,
      'buyerState': ?buyerState,
    };
  }
}

/// Request message for CancelAppRecovery.
typedef CancelAppRecoveryRequest = $Empty;

/// Response message for CancelAppRecovery.
typedef CancelAppRecoveryResponse = $Empty;

/// Request message for CancelOneTimeProductOffer.
class CancelOneTimeProductOfferRequest {
  /// The latency tolerance for the propagation of this update.
  ///
  /// Defaults to latency-sensitive.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "PRODUCT_UPDATE_LATENCY_TOLERANCE_UNSPECIFIED" : Defaults to
  /// PRODUCT_UPDATE_LATENCY_TOLERANCE_LATENCY_SENSITIVE.
  /// - "PRODUCT_UPDATE_LATENCY_TOLERANCE_LATENCY_SENSITIVE" : The update will
  /// propagate to clients within several minutes on average and up to a few
  /// hours in rare cases. Throughput is limited to 7,200 updates per app per
  /// hour.
  /// - "PRODUCT_UPDATE_LATENCY_TOLERANCE_LATENCY_TOLERANT" : The update will
  /// propagate to clients within 24 hours. Supports high throughput of up to
  /// 720,000 updates per app per hour using batch modification methods.
  core.String? latencyTolerance;

  /// The offer ID of the offer to cancel.
  ///
  /// Required.
  core.String? offerId;

  /// The parent app (package name) of the offer to cancel.
  ///
  /// Required.
  core.String? packageName;

  /// The parent one-time product (ID) of the offer to cancel.
  ///
  /// Required.
  core.String? productId;

  /// The parent purchase option (ID) of the offer to cancel.
  ///
  /// Required.
  core.String? purchaseOptionId;

  CancelOneTimeProductOfferRequest({
    this.latencyTolerance,
    this.offerId,
    this.packageName,
    this.productId,
    this.purchaseOptionId,
  });

  CancelOneTimeProductOfferRequest.fromJson(core.Map json_)
    : this(
        latencyTolerance: json_['latencyTolerance'] as core.String?,
        offerId: json_['offerId'] as core.String?,
        packageName: json_['packageName'] as core.String?,
        productId: json_['productId'] as core.String?,
        purchaseOptionId: json_['purchaseOptionId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final latencyTolerance = this.latencyTolerance;
    final offerId = this.offerId;
    final packageName = this.packageName;
    final productId = this.productId;
    final purchaseOptionId = this.purchaseOptionId;
    return {
      'latencyTolerance': ?latencyTolerance,
      'offerId': ?offerId,
      'packageName': ?packageName,
      'productId': ?productId,
      'purchaseOptionId': ?purchaseOptionId,
    };
  }
}

/// Request for the purchases.subscriptionsv2.cancel API.
class CancelSubscriptionPurchaseRequest {
  /// Additional details around the subscription revocation.
  ///
  /// Required.
  CancellationContext? cancellationContext;

  CancelSubscriptionPurchaseRequest({this.cancellationContext});

  CancelSubscriptionPurchaseRequest.fromJson(core.Map json_)
    : this(
        cancellationContext: json_.containsKey('cancellationContext')
            ? CancellationContext.fromJson(
                json_['cancellationContext']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final cancellationContext = this.cancellationContext;
    return {'cancellationContext': ?cancellationContext};
  }
}

/// Response for the purchases.subscriptionsv2.cancel API.
typedef CancelSubscriptionPurchaseResponse = $Empty;

/// Result of the cancel survey when the subscription was canceled by the user.
class CancelSurveyResult {
  /// The reason the user selected in the cancel survey.
  /// Possible string values are:
  /// - "CANCEL_SURVEY_REASON_UNSPECIFIED" : Unspecified cancel survey reason.
  /// - "CANCEL_SURVEY_REASON_NOT_ENOUGH_USAGE" : Not enough usage of the
  /// subscription.
  /// - "CANCEL_SURVEY_REASON_TECHNICAL_ISSUES" : Technical issues while using
  /// the app.
  /// - "CANCEL_SURVEY_REASON_COST_RELATED" : Cost related issues.
  /// - "CANCEL_SURVEY_REASON_FOUND_BETTER_APP" : The user found a better app.
  /// - "CANCEL_SURVEY_REASON_OTHERS" : Other reasons.
  core.String? reason;

  /// Only set for CANCEL_SURVEY_REASON_OTHERS.
  ///
  /// This is the user's freeform response to the survey.
  core.String? reasonUserInput;

  CancelSurveyResult({this.reason, this.reasonUserInput});

  CancelSurveyResult.fromJson(core.Map json_)
    : this(
        reason: json_['reason'] as core.String?,
        reasonUserInput: json_['reasonUserInput'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final reason = this.reason;
    final reasonUserInput = this.reasonUserInput;
    return {'reason': ?reason, 'reasonUserInput': ?reasonUserInput};
  }
}

/// Information specific to a subscription in the SUBSCRIPTION_STATE_CANCELED or
/// SUBSCRIPTION_STATE_EXPIRED state.
class CanceledStateContext {
  /// Subscription was canceled by the developer.
  DeveloperInitiatedCancellation? developerInitiatedCancellation;

  /// Subscription was replaced by a new subscription.
  ReplacementCancellation? replacementCancellation;

  /// Subscription was canceled by the system, for example because of a billing
  /// problem.
  SystemInitiatedCancellation? systemInitiatedCancellation;

  /// Subscription was canceled by user.
  UserInitiatedCancellation? userInitiatedCancellation;

  CanceledStateContext({
    this.developerInitiatedCancellation,
    this.replacementCancellation,
    this.systemInitiatedCancellation,
    this.userInitiatedCancellation,
  });

  CanceledStateContext.fromJson(core.Map json_)
    : this(
        developerInitiatedCancellation:
            json_.containsKey('developerInitiatedCancellation')
            ? DeveloperInitiatedCancellation.fromJson(
                json_['developerInitiatedCancellation']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        replacementCancellation: json_.containsKey('replacementCancellation')
            ? ReplacementCancellation.fromJson(
                json_['replacementCancellation']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        systemInitiatedCancellation:
            json_.containsKey('systemInitiatedCancellation')
            ? SystemInitiatedCancellation.fromJson(
                json_['systemInitiatedCancellation']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        userInitiatedCancellation:
            json_.containsKey('userInitiatedCancellation')
            ? UserInitiatedCancellation.fromJson(
                json_['userInitiatedCancellation']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final developerInitiatedCancellation = this.developerInitiatedCancellation;
    final replacementCancellation = this.replacementCancellation;
    final systemInitiatedCancellation = this.systemInitiatedCancellation;
    final userInitiatedCancellation = this.userInitiatedCancellation;
    return {
      'developerInitiatedCancellation': ?developerInitiatedCancellation,
      'replacementCancellation': ?replacementCancellation,
      'systemInitiatedCancellation': ?systemInitiatedCancellation,
      'userInitiatedCancellation': ?userInitiatedCancellation,
    };
  }
}

/// Cancellation context of the purchases.subscriptionsv2.cancel API.
class CancellationContext {
  /// The type of cancellation for the purchased subscription.
  ///
  /// Required.
  /// Possible string values are:
  /// - "CANCELLATION_TYPE_UNSPECIFIED" : Cancellation type unspecified.
  /// - "USER_REQUESTED_STOP_RENEWALS" : Cancellation requested by the user, and
  /// the subscription can be restored. It only stops the subscription's next
  /// renewal. For an installment subscription, users still need to finish the
  /// commitment period. For more details on renewals and payments, see
  /// https://developer.android.com/google/play/billing/subscriptions#installments
  /// - "DEVELOPER_REQUESTED_STOP_PAYMENTS" : Cancellation requested by the
  /// developer, and the subscription cannot be restored. It stops the
  /// subscription's next payment. For an installment subscription, users will
  /// not need to pay the next payment and finish the commitment period. For
  /// more details on renewals and payments, see
  /// https://developer.android.com/google/play/billing/subscriptions#installments
  core.String? cancellationType;

  CancellationContext({this.cancellationType});

  CancellationContext.fromJson(core.Map json_)
    : this(cancellationType: json_['cancellationType'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final cancellationType = this.cancellationType;
    return {'cancellationType': ?cancellationType};
  }
}

/// Details of when the order was canceled.
class CancellationEvent {
  /// The time when the order was canceled.
  core.String? eventTime;

  CancellationEvent({this.eventTime});

  CancellationEvent.fromJson(core.Map json_)
    : this(eventTime: json_['eventTime'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final eventTime = this.eventTime;
    return {'eventTime': ?eventTime};
  }
}

/// An entry of conversation between user and developer.
class Comment {
  /// A comment from a developer.
  DeveloperComment? developerComment;

  /// A comment from a user.
  UserComment? userComment;

  Comment({this.developerComment, this.userComment});

  Comment.fromJson(core.Map json_)
    : this(
        developerComment: json_.containsKey('developerComment')
            ? DeveloperComment.fromJson(
                json_['developerComment']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        userComment: json_.containsKey('userComment')
            ? UserComment.fromJson(
                json_['userComment'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final developerComment = this.developerComment;
    final userComment = this.userComment;
    return {'developerComment': ?developerComment, 'userComment': ?userComment};
  }
}

/// Request message for ConvertRegionPrices.
class ConvertRegionPricesRequest {
  /// The intital price to convert other regions from.
  ///
  /// Tax exclusive.
  Money? price;

  /// Product tax category code in context.
  ///
  /// Product tax category determines the transaction tax rates applied to the
  /// product that will be factored into the price calculation. If not set, tax
  /// rates for the default product tax category will be used. Refer to the
  /// [Help Center article](https://support.google.com/googleplay/android-developer/answer/16408159)
  /// for more information.
  ///
  /// Optional.
  core.String? productTaxCategoryCode;

  ConvertRegionPricesRequest({this.price, this.productTaxCategoryCode});

  ConvertRegionPricesRequest.fromJson(core.Map json_)
    : this(
        price: json_.containsKey('price')
            ? Money.fromJson(
                json_['price'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        productTaxCategoryCode: json_['productTaxCategoryCode'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final price = this.price;
    final productTaxCategoryCode = this.productTaxCategoryCode;
    return {'price': ?price, 'productTaxCategoryCode': ?productTaxCategoryCode};
  }
}

/// Response message for ConvertRegionPrices.
class ConvertRegionPricesResponse {
  /// Converted other regions prices in USD and EUR, to use for countries where
  /// Play doesn't support a country's local currency.
  ConvertedOtherRegionsPrice? convertedOtherRegionsPrice;

  /// Map from region code to converted region price.
  core.Map<core.String, ConvertedRegionPrice>? convertedRegionPrices;

  /// The region version at which the prices were generated.
  RegionsVersion? regionVersion;

  ConvertRegionPricesResponse({
    this.convertedOtherRegionsPrice,
    this.convertedRegionPrices,
    this.regionVersion,
  });

  ConvertRegionPricesResponse.fromJson(core.Map json_)
    : this(
        convertedOtherRegionsPrice:
            json_.containsKey('convertedOtherRegionsPrice')
            ? ConvertedOtherRegionsPrice.fromJson(
                json_['convertedOtherRegionsPrice']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        convertedRegionPrices:
            (json_['convertedRegionPrices']
                    as core.Map<core.String, core.dynamic>?)
                ?.map(
                  (key, value) => core.MapEntry(
                    key,
                    ConvertedRegionPrice.fromJson(
                      value as core.Map<core.String, core.dynamic>,
                    ),
                  ),
                ),
        regionVersion: json_.containsKey('regionVersion')
            ? RegionsVersion.fromJson(
                json_['regionVersion'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final convertedOtherRegionsPrice = this.convertedOtherRegionsPrice;
    final convertedRegionPrices = this.convertedRegionPrices;
    final regionVersion = this.regionVersion;
    return {
      'convertedOtherRegionsPrice': ?convertedOtherRegionsPrice,
      'convertedRegionPrices': ?convertedRegionPrices,
      'regionVersion': ?regionVersion,
    };
  }
}

/// Converted other regions prices.
class ConvertedOtherRegionsPrice {
  /// Price in EUR to use for the "Other regions" location exclusive of taxes.
  Money? eurPrice;

  /// Price in USD to use for the "Other regions" location exclusive of taxes.
  Money? usdPrice;

  ConvertedOtherRegionsPrice({this.eurPrice, this.usdPrice});

  ConvertedOtherRegionsPrice.fromJson(core.Map json_)
    : this(
        eurPrice: json_.containsKey('eurPrice')
            ? Money.fromJson(
                json_['eurPrice'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        usdPrice: json_.containsKey('usdPrice')
            ? Money.fromJson(
                json_['usdPrice'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final eurPrice = this.eurPrice;
    final usdPrice = this.usdPrice;
    return {'eurPrice': ?eurPrice, 'usdPrice': ?usdPrice};
  }
}

/// A converted region price.
class ConvertedRegionPrice {
  /// The converted price tax inclusive.
  Money? price;

  /// The region code of the region.
  core.String? regionCode;

  /// The tax amount of the converted price.
  Money? taxAmount;

  ConvertedRegionPrice({this.price, this.regionCode, this.taxAmount});

  ConvertedRegionPrice.fromJson(core.Map json_)
    : this(
        price: json_.containsKey('price')
            ? Money.fromJson(
                json_['price'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        regionCode: json_['regionCode'] as core.String?,
        taxAmount: json_.containsKey('taxAmount')
            ? Money.fromJson(
                json_['taxAmount'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final price = this.price;
    final regionCode = this.regionCode;
    final taxAmount = this.taxAmount;
    return {
      'price': ?price,
      'regionCode': ?regionCode,
      'taxAmount': ?taxAmount,
    };
  }
}

/// Country targeting specification.
class CountryTargeting {
  /// Countries to target, specified as two letter
  /// [CLDR codes](https://unicode.org/cldr/charts/latest/supplemental/territory_containment_un_m_49.html).
  core.List<core.String>? countries;

  /// Include "rest of world" as well as explicitly targeted countries.
  core.bool? includeRestOfWorld;

  CountryTargeting({this.countries, this.includeRestOfWorld});

  CountryTargeting.fromJson(core.Map json_)
    : this(
        countries: (json_['countries'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        includeRestOfWorld: json_['includeRestOfWorld'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final countries = this.countries;
    final includeRestOfWorld = this.includeRestOfWorld;
    return {'countries': ?countries, 'includeRestOfWorld': ?includeRestOfWorld};
  }
}

/// Request message for CreateDraftAppRecovery.
class CreateDraftAppRecoveryRequest {
  /// Action type is remote in-app update.
  ///
  /// As a consequence of this action, a downloadable recovery module is also
  /// created for testing purposes.
  RemoteInAppUpdate? remoteInAppUpdate;

  /// Specifies targeting criteria for the recovery action such as regions,
  /// android sdk versions, app versions etc.
  Targeting? targeting;

  CreateDraftAppRecoveryRequest({this.remoteInAppUpdate, this.targeting});

  CreateDraftAppRecoveryRequest.fromJson(core.Map json_)
    : this(
        remoteInAppUpdate: json_.containsKey('remoteInAppUpdate')
            ? RemoteInAppUpdate.fromJson(
                json_['remoteInAppUpdate']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        targeting: json_.containsKey('targeting')
            ? Targeting.fromJson(
                json_['targeting'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final remoteInAppUpdate = this.remoteInAppUpdate;
    final targeting = this.targeting;
    return {'remoteInAppUpdate': ?remoteInAppUpdate, 'targeting': ?targeting};
  }
}

/// Request message for DeactivateBasePlan.
class DeactivateBasePlanRequest {
  /// The unique base plan ID of the base plan to deactivate.
  ///
  /// Required.
  core.String? basePlanId;

  /// The latency tolerance for the propagation of this product update.
  ///
  /// Defaults to latency-sensitive.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "PRODUCT_UPDATE_LATENCY_TOLERANCE_UNSPECIFIED" : Defaults to
  /// PRODUCT_UPDATE_LATENCY_TOLERANCE_LATENCY_SENSITIVE.
  /// - "PRODUCT_UPDATE_LATENCY_TOLERANCE_LATENCY_SENSITIVE" : The update will
  /// propagate to clients within several minutes on average and up to a few
  /// hours in rare cases. Throughput is limited to 7,200 updates per app per
  /// hour.
  /// - "PRODUCT_UPDATE_LATENCY_TOLERANCE_LATENCY_TOLERANT" : The update will
  /// propagate to clients within 24 hours. Supports high throughput of up to
  /// 720,000 updates per app per hour using batch modification methods.
  core.String? latencyTolerance;

  /// The parent app (package name) of the base plan to deactivate.
  ///
  /// Required.
  core.String? packageName;

  /// The parent subscription (ID) of the base plan to deactivate.
  ///
  /// Required.
  core.String? productId;

  DeactivateBasePlanRequest({
    this.basePlanId,
    this.latencyTolerance,
    this.packageName,
    this.productId,
  });

  DeactivateBasePlanRequest.fromJson(core.Map json_)
    : this(
        basePlanId: json_['basePlanId'] as core.String?,
        latencyTolerance: json_['latencyTolerance'] as core.String?,
        packageName: json_['packageName'] as core.String?,
        productId: json_['productId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final basePlanId = this.basePlanId;
    final latencyTolerance = this.latencyTolerance;
    final packageName = this.packageName;
    final productId = this.productId;
    return {
      'basePlanId': ?basePlanId,
      'latencyTolerance': ?latencyTolerance,
      'packageName': ?packageName,
      'productId': ?productId,
    };
  }
}

/// Request message for DeactivateOneTimeProductOffer.
class DeactivateOneTimeProductOfferRequest {
  /// The latency tolerance for the propagation of this update.
  ///
  /// Defaults to latency-sensitive.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "PRODUCT_UPDATE_LATENCY_TOLERANCE_UNSPECIFIED" : Defaults to
  /// PRODUCT_UPDATE_LATENCY_TOLERANCE_LATENCY_SENSITIVE.
  /// - "PRODUCT_UPDATE_LATENCY_TOLERANCE_LATENCY_SENSITIVE" : The update will
  /// propagate to clients within several minutes on average and up to a few
  /// hours in rare cases. Throughput is limited to 7,200 updates per app per
  /// hour.
  /// - "PRODUCT_UPDATE_LATENCY_TOLERANCE_LATENCY_TOLERANT" : The update will
  /// propagate to clients within 24 hours. Supports high throughput of up to
  /// 720,000 updates per app per hour using batch modification methods.
  core.String? latencyTolerance;

  /// The offer ID of the offer to deactivate.
  ///
  /// Required.
  core.String? offerId;

  /// The parent app (package name) of the offer to deactivate.
  ///
  /// Required.
  core.String? packageName;

  /// The parent one-time product (ID) of the offer to deactivate.
  ///
  /// Required.
  core.String? productId;

  /// The parent purchase option (ID) of the offer to deactivate.
  ///
  /// Required.
  core.String? purchaseOptionId;

  DeactivateOneTimeProductOfferRequest({
    this.latencyTolerance,
    this.offerId,
    this.packageName,
    this.productId,
    this.purchaseOptionId,
  });

  DeactivateOneTimeProductOfferRequest.fromJson(core.Map json_)
    : this(
        latencyTolerance: json_['latencyTolerance'] as core.String?,
        offerId: json_['offerId'] as core.String?,
        packageName: json_['packageName'] as core.String?,
        productId: json_['productId'] as core.String?,
        purchaseOptionId: json_['purchaseOptionId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final latencyTolerance = this.latencyTolerance;
    final offerId = this.offerId;
    final packageName = this.packageName;
    final productId = this.productId;
    final purchaseOptionId = this.purchaseOptionId;
    return {
      'latencyTolerance': ?latencyTolerance,
      'offerId': ?offerId,
      'packageName': ?packageName,
      'productId': ?productId,
      'purchaseOptionId': ?purchaseOptionId,
    };
  }
}

/// Request message for UpdatePurchaseOptionState.
class DeactivatePurchaseOptionRequest {
  /// The latency tolerance for the propagation of this product update.
  ///
  /// Defaults to latency-sensitive.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "PRODUCT_UPDATE_LATENCY_TOLERANCE_UNSPECIFIED" : Defaults to
  /// PRODUCT_UPDATE_LATENCY_TOLERANCE_LATENCY_SENSITIVE.
  /// - "PRODUCT_UPDATE_LATENCY_TOLERANCE_LATENCY_SENSITIVE" : The update will
  /// propagate to clients within several minutes on average and up to a few
  /// hours in rare cases. Throughput is limited to 7,200 updates per app per
  /// hour.
  /// - "PRODUCT_UPDATE_LATENCY_TOLERANCE_LATENCY_TOLERANT" : The update will
  /// propagate to clients within 24 hours. Supports high throughput of up to
  /// 720,000 updates per app per hour using batch modification methods.
  core.String? latencyTolerance;

  /// The parent app (package name) of the purchase option to deactivate.
  ///
  /// Required.
  core.String? packageName;

  /// The parent one-time product (ID) of the purchase option to deactivate.
  ///
  /// Required.
  core.String? productId;

  /// The purchase option ID of the purchase option to deactivate.
  ///
  /// Required.
  core.String? purchaseOptionId;

  DeactivatePurchaseOptionRequest({
    this.latencyTolerance,
    this.packageName,
    this.productId,
    this.purchaseOptionId,
  });

  DeactivatePurchaseOptionRequest.fromJson(core.Map json_)
    : this(
        latencyTolerance: json_['latencyTolerance'] as core.String?,
        packageName: json_['packageName'] as core.String?,
        productId: json_['productId'] as core.String?,
        purchaseOptionId: json_['purchaseOptionId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final latencyTolerance = this.latencyTolerance;
    final packageName = this.packageName;
    final productId = this.productId;
    final purchaseOptionId = this.purchaseOptionId;
    return {
      'latencyTolerance': ?latencyTolerance,
      'packageName': ?packageName,
      'productId': ?productId,
      'purchaseOptionId': ?purchaseOptionId,
    };
  }
}

/// Request message for DeactivateSubscriptionOffer.
class DeactivateSubscriptionOfferRequest {
  /// The parent base plan (ID) of the offer to deactivate.
  ///
  /// Required.
  core.String? basePlanId;

  /// The latency tolerance for the propagation of this product update.
  ///
  /// Defaults to latency-sensitive.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "PRODUCT_UPDATE_LATENCY_TOLERANCE_UNSPECIFIED" : Defaults to
  /// PRODUCT_UPDATE_LATENCY_TOLERANCE_LATENCY_SENSITIVE.
  /// - "PRODUCT_UPDATE_LATENCY_TOLERANCE_LATENCY_SENSITIVE" : The update will
  /// propagate to clients within several minutes on average and up to a few
  /// hours in rare cases. Throughput is limited to 7,200 updates per app per
  /// hour.
  /// - "PRODUCT_UPDATE_LATENCY_TOLERANCE_LATENCY_TOLERANT" : The update will
  /// propagate to clients within 24 hours. Supports high throughput of up to
  /// 720,000 updates per app per hour using batch modification methods.
  core.String? latencyTolerance;

  /// The unique offer ID of the offer to deactivate.
  ///
  /// Required.
  core.String? offerId;

  /// The parent app (package name) of the offer to deactivate.
  ///
  /// Required.
  core.String? packageName;

  /// The parent subscription (ID) of the offer to deactivate.
  ///
  /// Required.
  core.String? productId;

  DeactivateSubscriptionOfferRequest({
    this.basePlanId,
    this.latencyTolerance,
    this.offerId,
    this.packageName,
    this.productId,
  });

  DeactivateSubscriptionOfferRequest.fromJson(core.Map json_)
    : this(
        basePlanId: json_['basePlanId'] as core.String?,
        latencyTolerance: json_['latencyTolerance'] as core.String?,
        offerId: json_['offerId'] as core.String?,
        packageName: json_['packageName'] as core.String?,
        productId: json_['productId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final basePlanId = this.basePlanId;
    final latencyTolerance = this.latencyTolerance;
    final offerId = this.offerId;
    final packageName = this.packageName;
    final productId = this.productId;
    return {
      'basePlanId': ?basePlanId,
      'latencyTolerance': ?latencyTolerance,
      'offerId': ?offerId,
      'packageName': ?packageName,
      'productId': ?productId,
    };
  }
}

/// Request for the v2 purchases.subscriptions.defer API.
class DeferSubscriptionPurchaseRequest {
  /// Details about the subscription deferral.
  ///
  /// Required.
  DeferralContext? deferralContext;

  DeferSubscriptionPurchaseRequest({this.deferralContext});

  DeferSubscriptionPurchaseRequest.fromJson(core.Map json_)
    : this(
        deferralContext: json_.containsKey('deferralContext')
            ? DeferralContext.fromJson(
                json_['deferralContext'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final deferralContext = this.deferralContext;
    return {'deferralContext': ?deferralContext};
  }
}

/// Response for the v2 purchases.subscriptions.defer API.
class DeferSubscriptionPurchaseResponse {
  /// The new expiry time for each subscription items.
  core.List<ItemExpiryTimeDetails>? itemExpiryTimeDetails;

  DeferSubscriptionPurchaseResponse({this.itemExpiryTimeDetails});

  DeferSubscriptionPurchaseResponse.fromJson(core.Map json_)
    : this(
        itemExpiryTimeDetails: (json_['itemExpiryTimeDetails'] as core.List?)
            ?.map(
              (value) => ItemExpiryTimeDetails.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final itemExpiryTimeDetails = this.itemExpiryTimeDetails;
    return {'itemExpiryTimeDetails': ?itemExpiryTimeDetails};
  }
}

/// Deferral context of the purchases.subscriptionsv2.defer API.
class DeferralContext {
  /// The duration by which all subscription items should be deferred.
  ///
  /// Required.
  core.String? deferDuration;

  /// The API will fail if the etag does not match the latest etag for this
  /// subscription.
  ///
  /// The etag is retrieved from purchases.subscriptionsv2.get:
  /// https://developers.google.com/android-publisher/api-ref/rest/v3/purchases.subscriptionsv2/get
  ///
  /// Required.
  core.String? etag;

  /// If set to "true", the request is a dry run to validate the effect of
  /// Defer, the subscription would not be impacted.
  core.bool? validateOnly;

  DeferralContext({this.deferDuration, this.etag, this.validateOnly});

  DeferralContext.fromJson(core.Map json_)
    : this(
        deferDuration: json_['deferDuration'] as core.String?,
        etag: json_['etag'] as core.String?,
        validateOnly: json_['validateOnly'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final deferDuration = this.deferDuration;
    final etag = this.etag;
    final validateOnly = this.validateOnly;
    return {
      'deferDuration': ?deferDuration,
      'etag': ?etag,
      'validateOnly': ?validateOnly,
    };
  }
}

/// Information related to deferred item replacement.
typedef DeferredItemRemoval = $Empty;

/// Information related to deferred item replacement.
class DeferredItemReplacement {
  /// The product_id going to replace the existing product_id.
  core.String? productId;

  DeferredItemReplacement({this.productId});

  DeferredItemReplacement.fromJson(core.Map json_)
    : this(productId: json_['productId'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final productId = this.productId;
    return {'productId': ?productId};
  }
}

/// Request message for deleting an one-time product offer.
class DeleteOneTimeProductOfferRequest {
  /// The latency tolerance for the propagation of this product update.
  ///
  /// Defaults to latency-sensitive.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "PRODUCT_UPDATE_LATENCY_TOLERANCE_UNSPECIFIED" : Defaults to
  /// PRODUCT_UPDATE_LATENCY_TOLERANCE_LATENCY_SENSITIVE.
  /// - "PRODUCT_UPDATE_LATENCY_TOLERANCE_LATENCY_SENSITIVE" : The update will
  /// propagate to clients within several minutes on average and up to a few
  /// hours in rare cases. Throughput is limited to 7,200 updates per app per
  /// hour.
  /// - "PRODUCT_UPDATE_LATENCY_TOLERANCE_LATENCY_TOLERANT" : The update will
  /// propagate to clients within 24 hours. Supports high throughput of up to
  /// 720,000 updates per app per hour using batch modification methods.
  core.String? latencyTolerance;

  /// The unique offer ID of the offer to delete.
  ///
  /// Required.
  core.String? offerId;

  /// The parent app (package name) of the offer to delete.
  ///
  /// Required.
  core.String? packageName;

  /// The parent one-time product (ID) of the offer to delete.
  ///
  /// Required.
  core.String? productId;

  /// The parent purchase option (ID) of the offer to delete.
  ///
  /// Required.
  core.String? purchaseOptionId;

  DeleteOneTimeProductOfferRequest({
    this.latencyTolerance,
    this.offerId,
    this.packageName,
    this.productId,
    this.purchaseOptionId,
  });

  DeleteOneTimeProductOfferRequest.fromJson(core.Map json_)
    : this(
        latencyTolerance: json_['latencyTolerance'] as core.String?,
        offerId: json_['offerId'] as core.String?,
        packageName: json_['packageName'] as core.String?,
        productId: json_['productId'] as core.String?,
        purchaseOptionId: json_['purchaseOptionId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final latencyTolerance = this.latencyTolerance;
    final offerId = this.offerId;
    final packageName = this.packageName;
    final productId = this.productId;
    final purchaseOptionId = this.purchaseOptionId;
    return {
      'latencyTolerance': ?latencyTolerance,
      'offerId': ?offerId,
      'packageName': ?packageName,
      'productId': ?productId,
      'purchaseOptionId': ?purchaseOptionId,
    };
  }
}

/// Request message for deleting a one-time product.
class DeleteOneTimeProductRequest {
  /// The latency tolerance for the propagation of this product update.
  ///
  /// Defaults to latency-sensitive.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "PRODUCT_UPDATE_LATENCY_TOLERANCE_UNSPECIFIED" : Defaults to
  /// PRODUCT_UPDATE_LATENCY_TOLERANCE_LATENCY_SENSITIVE.
  /// - "PRODUCT_UPDATE_LATENCY_TOLERANCE_LATENCY_SENSITIVE" : The update will
  /// propagate to clients within several minutes on average and up to a few
  /// hours in rare cases. Throughput is limited to 7,200 updates per app per
  /// hour.
  /// - "PRODUCT_UPDATE_LATENCY_TOLERANCE_LATENCY_TOLERANT" : The update will
  /// propagate to clients within 24 hours. Supports high throughput of up to
  /// 720,000 updates per app per hour using batch modification methods.
  core.String? latencyTolerance;

  /// The parent app (package name) of the one-time product to delete.
  ///
  /// Required.
  core.String? packageName;

  /// The one-time product ID of the one-time product to delete.
  ///
  /// Required.
  core.String? productId;

  DeleteOneTimeProductRequest({
    this.latencyTolerance,
    this.packageName,
    this.productId,
  });

  DeleteOneTimeProductRequest.fromJson(core.Map json_)
    : this(
        latencyTolerance: json_['latencyTolerance'] as core.String?,
        packageName: json_['packageName'] as core.String?,
        productId: json_['productId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final latencyTolerance = this.latencyTolerance;
    final packageName = this.packageName;
    final productId = this.productId;
    return {
      'latencyTolerance': ?latencyTolerance,
      'packageName': ?packageName,
      'productId': ?productId,
    };
  }
}

/// Request message for deleting a purchase option.
class DeletePurchaseOptionRequest {
  /// This field has no effect for purchase options with no offers under them.
  ///
  /// For purchase options with associated offers: * If `force` is set to false
  /// (default), an error will be returned. * If `force` is set to true, any
  /// associated offers under the purchase option will be deleted.
  ///
  /// Optional.
  core.bool? force;

  /// The latency tolerance for the propagation of this product update.
  ///
  /// Defaults to latency-sensitive.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "PRODUCT_UPDATE_LATENCY_TOLERANCE_UNSPECIFIED" : Defaults to
  /// PRODUCT_UPDATE_LATENCY_TOLERANCE_LATENCY_SENSITIVE.
  /// - "PRODUCT_UPDATE_LATENCY_TOLERANCE_LATENCY_SENSITIVE" : The update will
  /// propagate to clients within several minutes on average and up to a few
  /// hours in rare cases. Throughput is limited to 7,200 updates per app per
  /// hour.
  /// - "PRODUCT_UPDATE_LATENCY_TOLERANCE_LATENCY_TOLERANT" : The update will
  /// propagate to clients within 24 hours. Supports high throughput of up to
  /// 720,000 updates per app per hour using batch modification methods.
  core.String? latencyTolerance;

  /// The parent app (package name) of the purchase option to delete.
  ///
  /// Required.
  core.String? packageName;

  /// The parent one-time product (ID) of the purchase option to delete.
  ///
  /// Required.
  core.String? productId;

  /// The purchase option ID of the purchase option to delete.
  ///
  /// Required.
  core.String? purchaseOptionId;

  DeletePurchaseOptionRequest({
    this.force,
    this.latencyTolerance,
    this.packageName,
    this.productId,
    this.purchaseOptionId,
  });

  DeletePurchaseOptionRequest.fromJson(core.Map json_)
    : this(
        force: json_['force'] as core.bool?,
        latencyTolerance: json_['latencyTolerance'] as core.String?,
        packageName: json_['packageName'] as core.String?,
        productId: json_['productId'] as core.String?,
        purchaseOptionId: json_['purchaseOptionId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final force = this.force;
    final latencyTolerance = this.latencyTolerance;
    final packageName = this.packageName;
    final productId = this.productId;
    final purchaseOptionId = this.purchaseOptionId;
    return {
      'force': ?force,
      'latencyTolerance': ?latencyTolerance,
      'packageName': ?packageName,
      'productId': ?productId,
      'purchaseOptionId': ?purchaseOptionId,
    };
  }
}

/// Represents a deobfuscation file.
class DeobfuscationFile {
  /// The type of the deobfuscation file.
  /// Possible string values are:
  /// - "deobfuscationFileTypeUnspecified" : Unspecified deobfuscation file
  /// type.
  /// - "proguard" : Proguard deobfuscation file type.
  /// - "nativeCode" : Native debugging symbols file type.
  core.String? symbolType;

  DeobfuscationFile({this.symbolType});

  DeobfuscationFile.fromJson(core.Map json_)
    : this(symbolType: json_['symbolType'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final symbolType = this.symbolType;
    return {'symbolType': ?symbolType};
  }
}

/// Responses for the upload.
class DeobfuscationFilesUploadResponse {
  /// The uploaded Deobfuscation File configuration.
  DeobfuscationFile? deobfuscationFile;

  DeobfuscationFilesUploadResponse({this.deobfuscationFile});

  DeobfuscationFilesUploadResponse.fromJson(core.Map json_)
    : this(
        deobfuscationFile: json_.containsKey('deobfuscationFile')
            ? DeobfuscationFile.fromJson(
                json_['deobfuscationFile']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final deobfuscationFile = this.deobfuscationFile;
    return {'deobfuscationFile': ?deobfuscationFile};
  }
}

/// Request message for DeployAppRecovery.
typedef DeployAppRecoveryRequest = $Empty;

/// Response message for DeployAppRecovery.
typedef DeployAppRecoveryResponse = $Empty;

/// Developer entry from conversation between user and developer.
class DeveloperComment {
  /// The last time at which this comment was updated.
  Timestamp? lastModified;

  /// The content of the comment, i.e. reply body.
  core.String? text;

  DeveloperComment({this.lastModified, this.text});

  DeveloperComment.fromJson(core.Map json_)
    : this(
        lastModified: json_.containsKey('lastModified')
            ? Timestamp.fromJson(
                json_['lastModified'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        text: json_['text'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final lastModified = this.lastModified;
    final text = this.text;
    return {'lastModified': ?lastModified, 'text': ?text};
  }
}

/// Information specific to cancellations initiated by developers.
typedef DeveloperInitiatedCancellation = $Empty;

/// Represents a device feature.
class DeviceFeature {
  /// Name of the feature.
  core.String? featureName;

  /// The feature version specified by android:glEsVersion or android:version in
  /// in the AndroidManifest.
  core.int? featureVersion;

  DeviceFeature({this.featureName, this.featureVersion});

  DeviceFeature.fromJson(core.Map json_)
    : this(
        featureName: json_['featureName'] as core.String?,
        featureVersion: json_['featureVersion'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final featureName = this.featureName;
    final featureVersion = this.featureVersion;
    return {'featureName': ?featureName, 'featureVersion': ?featureVersion};
  }
}

/// Targeting for a device feature.
class DeviceFeatureTargeting {
  /// Feature of the device.
  DeviceFeature? requiredFeature;

  DeviceFeatureTargeting({this.requiredFeature});

  DeviceFeatureTargeting.fromJson(core.Map json_)
    : this(
        requiredFeature: json_.containsKey('requiredFeature')
            ? DeviceFeature.fromJson(
                json_['requiredFeature'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final requiredFeature = this.requiredFeature;
    return {'requiredFeature': ?requiredFeature};
  }
}

/// A group of devices.
///
/// A group is defined by a set of device selectors. A device belongs to the
/// group if it matches any selector (logical OR).
class DeviceGroup {
  /// Device selectors for this group.
  ///
  /// A device matching any of the selectors is included in this group.
  core.List<DeviceSelector>? deviceSelectors;

  /// The name of the group.
  core.String? name;

  DeviceGroup({this.deviceSelectors, this.name});

  DeviceGroup.fromJson(core.Map json_)
    : this(
        deviceSelectors: (json_['deviceSelectors'] as core.List?)
            ?.map(
              (value) => DeviceSelector.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final deviceSelectors = this.deviceSelectors;
    final name = this.name;
    return {'deviceSelectors': ?deviceSelectors, 'name': ?name};
  }
}

/// Identifier of a device.
class DeviceId {
  /// Value of Build.BRAND.
  core.String? buildBrand;

  /// Value of Build.DEVICE.
  core.String? buildDevice;

  DeviceId({this.buildBrand, this.buildDevice});

  DeviceId.fromJson(core.Map json_)
    : this(
        buildBrand: json_['buildBrand'] as core.String?,
        buildDevice: json_['buildDevice'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final buildBrand = this.buildBrand;
    final buildDevice = this.buildDevice;
    return {'buildBrand': ?buildBrand, 'buildDevice': ?buildDevice};
  }
}

/// Characteristics of the user's device.
class DeviceMetadata {
  /// Device CPU make, e.g. "Qualcomm"
  core.String? cpuMake;

  /// Device CPU model, e.g. "MSM8974"
  core.String? cpuModel;

  /// Device class (e.g. tablet)
  core.String? deviceClass;

  /// OpenGL version
  core.int? glEsVersion;

  /// Device manufacturer (e.g. Motorola)
  core.String? manufacturer;

  /// Comma separated list of native platforms (e.g. "arm", "arm7")
  core.String? nativePlatform;

  /// Device model name (e.g. Droid)
  core.String? productName;

  /// Device RAM in Megabytes, e.g. "2048"
  core.int? ramMb;

  /// Screen density in DPI
  core.int? screenDensityDpi;

  /// Screen height in pixels
  core.int? screenHeightPx;

  /// Screen width in pixels
  core.int? screenWidthPx;

  DeviceMetadata({
    this.cpuMake,
    this.cpuModel,
    this.deviceClass,
    this.glEsVersion,
    this.manufacturer,
    this.nativePlatform,
    this.productName,
    this.ramMb,
    this.screenDensityDpi,
    this.screenHeightPx,
    this.screenWidthPx,
  });

  DeviceMetadata.fromJson(core.Map json_)
    : this(
        cpuMake: json_['cpuMake'] as core.String?,
        cpuModel: json_['cpuModel'] as core.String?,
        deviceClass: json_['deviceClass'] as core.String?,
        glEsVersion: json_['glEsVersion'] as core.int?,
        manufacturer: json_['manufacturer'] as core.String?,
        nativePlatform: json_['nativePlatform'] as core.String?,
        productName: json_['productName'] as core.String?,
        ramMb: json_['ramMb'] as core.int?,
        screenDensityDpi: json_['screenDensityDpi'] as core.int?,
        screenHeightPx: json_['screenHeightPx'] as core.int?,
        screenWidthPx: json_['screenWidthPx'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final cpuMake = this.cpuMake;
    final cpuModel = this.cpuModel;
    final deviceClass = this.deviceClass;
    final glEsVersion = this.glEsVersion;
    final manufacturer = this.manufacturer;
    final nativePlatform = this.nativePlatform;
    final productName = this.productName;
    final ramMb = this.ramMb;
    final screenDensityDpi = this.screenDensityDpi;
    final screenHeightPx = this.screenHeightPx;
    final screenWidthPx = this.screenWidthPx;
    return {
      'cpuMake': ?cpuMake,
      'cpuModel': ?cpuModel,
      'deviceClass': ?deviceClass,
      'glEsVersion': ?glEsVersion,
      'manufacturer': ?manufacturer,
      'nativePlatform': ?nativePlatform,
      'productName': ?productName,
      'ramMb': ?ramMb,
      'screenDensityDpi': ?screenDensityDpi,
      'screenHeightPx': ?screenHeightPx,
      'screenWidthPx': ?screenWidthPx,
    };
  }
}

/// Conditions about a device's RAM capabilities.
class DeviceRam {
  /// Maximum RAM in bytes (bound excluded).
  core.String? maxBytes;

  /// Minimum RAM in bytes (bound included).
  core.String? minBytes;

  DeviceRam({this.maxBytes, this.minBytes});

  DeviceRam.fromJson(core.Map json_)
    : this(
        maxBytes: json_['maxBytes'] as core.String?,
        minBytes: json_['minBytes'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final maxBytes = this.maxBytes;
    final minBytes = this.minBytes;
    return {'maxBytes': ?maxBytes, 'minBytes': ?minBytes};
  }
}

/// Selector for a device group.
///
/// A selector consists of a set of conditions on the device that should all
/// match (logical AND) to determine a device group eligibility. For instance,
/// if a selector specifies RAM conditions, device model inclusion and device
/// model exclusion, a device is considered to match if: device matches RAM
/// conditions AND device matches one of the included device models AND device
/// doesn't match excluded device models
class DeviceSelector {
  /// Conditions on the device's RAM.
  DeviceRam? deviceRam;

  /// Device models excluded by this selector, even if they match all other
  /// conditions.
  core.List<DeviceId>? excludedDeviceIds;

  /// A device that has any of these system features is excluded by this
  /// selector, even if it matches all other conditions.
  core.List<SystemFeature>? forbiddenSystemFeatures;

  /// Device models included by this selector.
  core.List<DeviceId>? includedDeviceIds;

  /// A device needs to have all these system features to be included by the
  /// selector.
  core.List<SystemFeature>? requiredSystemFeatures;

  /// The SoCs included by this selector.
  ///
  /// Only works for Android S+ devices.
  ///
  /// Optional.
  core.List<SystemOnChip>? systemOnChips;

  DeviceSelector({
    this.deviceRam,
    this.excludedDeviceIds,
    this.forbiddenSystemFeatures,
    this.includedDeviceIds,
    this.requiredSystemFeatures,
    this.systemOnChips,
  });

  DeviceSelector.fromJson(core.Map json_)
    : this(
        deviceRam: json_.containsKey('deviceRam')
            ? DeviceRam.fromJson(
                json_['deviceRam'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        excludedDeviceIds: (json_['excludedDeviceIds'] as core.List?)
            ?.map(
              (value) => DeviceId.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        forbiddenSystemFeatures:
            (json_['forbiddenSystemFeatures'] as core.List?)
                ?.map(
                  (value) => SystemFeature.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        includedDeviceIds: (json_['includedDeviceIds'] as core.List?)
            ?.map(
              (value) => DeviceId.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        requiredSystemFeatures: (json_['requiredSystemFeatures'] as core.List?)
            ?.map(
              (value) => SystemFeature.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        systemOnChips: (json_['systemOnChips'] as core.List?)
            ?.map(
              (value) => SystemOnChip.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final deviceRam = this.deviceRam;
    final excludedDeviceIds = this.excludedDeviceIds;
    final forbiddenSystemFeatures = this.forbiddenSystemFeatures;
    final includedDeviceIds = this.includedDeviceIds;
    final requiredSystemFeatures = this.requiredSystemFeatures;
    final systemOnChips = this.systemOnChips;
    return {
      'deviceRam': ?deviceRam,
      'excludedDeviceIds': ?excludedDeviceIds,
      'forbiddenSystemFeatures': ?forbiddenSystemFeatures,
      'includedDeviceIds': ?includedDeviceIds,
      'requiredSystemFeatures': ?requiredSystemFeatures,
      'systemOnChips': ?systemOnChips,
    };
  }
}

/// The device spec used to generate a system APK.
class DeviceSpec {
  /// Screen dpi.
  core.int? screenDensity;

  /// Supported ABI architectures in the order of preference.
  ///
  /// The values should be the string as reported by the platform, e.g.
  /// "armeabi-v7a", "x86_64".
  core.List<core.String>? supportedAbis;

  /// All installed locales represented as BCP-47 strings, e.g. "en-US".
  core.List<core.String>? supportedLocales;

  DeviceSpec({this.screenDensity, this.supportedAbis, this.supportedLocales});

  DeviceSpec.fromJson(core.Map json_)
    : this(
        screenDensity: json_['screenDensity'] as core.int?,
        supportedAbis: (json_['supportedAbis'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        supportedLocales: (json_['supportedLocales'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final screenDensity = this.screenDensity;
    final supportedAbis = this.supportedAbis;
    final supportedLocales = this.supportedLocales;
    return {
      'screenDensity': ?screenDensity,
      'supportedAbis': ?supportedAbis,
      'supportedLocales': ?supportedLocales,
    };
  }
}

/// A single device tier.
///
/// Devices matching any of the device groups in device_group_names are
/// considered to match the tier.
class DeviceTier {
  /// Groups of devices included in this tier.
  ///
  /// These groups must be defined explicitly under device_groups in this
  /// configuration.
  core.List<core.String>? deviceGroupNames;

  /// The priority level of the tier.
  ///
  /// Tiers are evaluated in descending order of level: the highest level tier
  /// has the highest priority. The highest tier matching a given device is
  /// selected for that device. You should use a contiguous range of levels for
  /// your tiers in a tier set; tier levels in a tier set must be unique. For
  /// instance, if your tier set has 4 tiers (including the global fallback),
  /// you should define tiers 1, 2 and 3 in this configuration. Note: tier 0 is
  /// implicitly defined as a global fallback and selected for devices that
  /// don't match any of the tiers explicitly defined here. You mustn't define
  /// level 0 explicitly in this configuration.
  core.int? level;

  DeviceTier({this.deviceGroupNames, this.level});

  DeviceTier.fromJson(core.Map json_)
    : this(
        deviceGroupNames: (json_['deviceGroupNames'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        level: json_['level'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final deviceGroupNames = this.deviceGroupNames;
    final level = this.level;
    return {'deviceGroupNames': ?deviceGroupNames, 'level': ?level};
  }
}

/// Configuration describing device targeting criteria for the content of an
/// app.
class DeviceTierConfig {
  /// Definition of device groups for the app.
  core.List<DeviceGroup>? deviceGroups;

  /// The device tier config ID.
  ///
  /// Output only.
  core.String? deviceTierConfigId;

  /// Definition of the set of device tiers for the app.
  DeviceTierSet? deviceTierSet;

  /// Definition of user country sets for the app.
  core.List<UserCountrySet>? userCountrySets;

  DeviceTierConfig({
    this.deviceGroups,
    this.deviceTierConfigId,
    this.deviceTierSet,
    this.userCountrySets,
  });

  DeviceTierConfig.fromJson(core.Map json_)
    : this(
        deviceGroups: (json_['deviceGroups'] as core.List?)
            ?.map(
              (value) => DeviceGroup.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        deviceTierConfigId: json_['deviceTierConfigId'] as core.String?,
        deviceTierSet: json_.containsKey('deviceTierSet')
            ? DeviceTierSet.fromJson(
                json_['deviceTierSet'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        userCountrySets: (json_['userCountrySets'] as core.List?)
            ?.map(
              (value) => UserCountrySet.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final deviceGroups = this.deviceGroups;
    final deviceTierConfigId = this.deviceTierConfigId;
    final deviceTierSet = this.deviceTierSet;
    final userCountrySets = this.userCountrySets;
    return {
      'deviceGroups': ?deviceGroups,
      'deviceTierConfigId': ?deviceTierConfigId,
      'deviceTierSet': ?deviceTierSet,
      'userCountrySets': ?userCountrySets,
    };
  }
}

/// A set of device tiers.
///
/// A tier set determines what variation of app content gets served to a
/// specific device, for device-targeted content. You should assign a priority
/// level to each tier, which determines the ordering by which they are
/// evaluated by Play. See the documentation of DeviceTier.level for more
/// details.
class DeviceTierSet {
  /// Device tiers belonging to the set.
  core.List<DeviceTier>? deviceTiers;

  DeviceTierSet({this.deviceTiers});

  DeviceTierSet.fromJson(core.Map json_)
    : this(
        deviceTiers: (json_['deviceTiers'] as core.List?)
            ?.map(
              (value) => DeviceTier.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final deviceTiers = this.deviceTiers;
    return {'deviceTiers': ?deviceTiers};
  }
}

/// An expansion file.
///
/// The resource for ExpansionFilesService.
class ExpansionFile {
  /// If set, this field indicates that this APK has an expansion file uploaded
  /// to it: this APK does not reference another APK's expansion file.
  ///
  /// The field's value is the size of the uploaded expansion file in bytes.
  core.String? fileSize;

  /// If set, this APK's expansion file references another APK's expansion file.
  ///
  /// The file_size field will not be set.
  core.int? referencesVersion;

  ExpansionFile({this.fileSize, this.referencesVersion});

  ExpansionFile.fromJson(core.Map json_)
    : this(
        fileSize: json_['fileSize'] as core.String?,
        referencesVersion: json_['referencesVersion'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final fileSize = this.fileSize;
    final referencesVersion = this.referencesVersion;
    return {'fileSize': ?fileSize, 'referencesVersion': ?referencesVersion};
  }
}

/// Response for uploading an expansion file.
class ExpansionFilesUploadResponse {
  /// The uploaded expansion file configuration.
  ExpansionFile? expansionFile;

  ExpansionFilesUploadResponse({this.expansionFile});

  ExpansionFilesUploadResponse.fromJson(core.Map json_)
    : this(
        expansionFile: json_.containsKey('expansionFile')
            ? ExpansionFile.fromJson(
                json_['expansionFile'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final expansionFile = this.expansionFile;
    return {'expansionFile': ?expansionFile};
  }
}

/// User account identifier in the third-party service.
class ExternalAccountIdentifiers {
  /// User account identifier in the third-party service.
  ///
  /// Only present if account linking happened as part of the subscription
  /// purchase flow.
  core.String? externalAccountId;

  /// An obfuscated version of the id that is uniquely associated with the
  /// user's account in your app.
  ///
  /// Present for the following purchases: * If account linking happened as part
  /// of the subscription purchase flow. * It was specified using
  /// https://developer.android.com/reference/com/android/billingclient/api/BillingFlowParams.Builder#setobfuscatedaccountid
  /// when the purchase was made.
  core.String? obfuscatedExternalAccountId;

  /// An obfuscated version of the id that is uniquely associated with the
  /// user's profile in your app.
  ///
  /// Only present if specified using
  /// https://developer.android.com/reference/com/android/billingclient/api/BillingFlowParams.Builder#setobfuscatedprofileid
  /// when the purchase was made.
  core.String? obfuscatedExternalProfileId;

  ExternalAccountIdentifiers({
    this.externalAccountId,
    this.obfuscatedExternalAccountId,
    this.obfuscatedExternalProfileId,
  });

  ExternalAccountIdentifiers.fromJson(core.Map json_)
    : this(
        externalAccountId: json_['externalAccountId'] as core.String?,
        obfuscatedExternalAccountId:
            json_['obfuscatedExternalAccountId'] as core.String?,
        obfuscatedExternalProfileId:
            json_['obfuscatedExternalProfileId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final externalAccountId = this.externalAccountId;
    final obfuscatedExternalAccountId = this.obfuscatedExternalAccountId;
    final obfuscatedExternalProfileId = this.obfuscatedExternalProfileId;
    return {
      'externalAccountId': ?externalAccountId,
      'obfuscatedExternalAccountId': ?obfuscatedExternalAccountId,
      'obfuscatedExternalProfileId': ?obfuscatedExternalProfileId,
    };
  }
}

/// User account identifier in your app.
class ExternalAccountIds {
  /// Specifies an optional obfuscated string that is uniquely associated with
  /// the purchaser's user account in your app.
  ///
  /// If you pass this value, Google Play can use it to detect irregular
  /// activity. Do not use this field to store any Personally Identifiable
  /// Information (PII) such as emails in cleartext. Attempting to store PII in
  /// this field will result in purchases being blocked. Google Play recommends
  /// that you use either encryption or a one-way hash to generate an obfuscated
  /// identifier to send to Google Play. This identifier is limited to 64
  /// characters. This field can only be set for resubscription purchases. See
  /// https://developer.android.com/reference/com/android/billingclient/api/BillingFlowParams.Builder#setobfuscatedaccountid
  /// to set this field for purchases made using the standard in-app billing
  /// flow.
  ///
  /// Optional.
  core.String? obfuscatedAccountId;

  /// Specifies an optional obfuscated string that is uniquely associated with
  /// the purchaser's user profile in your app.
  ///
  /// If you pass this value, Google Play can use it to detect irregular
  /// activity. Do not use this field to store any Personally Identifiable
  /// Information (PII) such as emails in cleartext. Attempting to store PII in
  /// this field will result in purchases being blocked. Google Play recommends
  /// that you use either encryption or a one-way hash to generate an obfuscated
  /// identifier to send to Google Play. This identifier is limited to 64
  /// characters. This field can only be set for resubscription purchases. See
  /// https://developer.android.com/reference/com/android/billingclient/api/BillingFlowParams.Builder#setobfuscatedprofileid
  /// to set this field for purchases made using the standard in-app billing
  /// flow.
  ///
  /// Optional.
  core.String? obfuscatedProfileId;

  ExternalAccountIds({this.obfuscatedAccountId, this.obfuscatedProfileId});

  ExternalAccountIds.fromJson(core.Map json_)
    : this(
        obfuscatedAccountId: json_['obfuscatedAccountId'] as core.String?,
        obfuscatedProfileId: json_['obfuscatedProfileId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final obfuscatedAccountId = this.obfuscatedAccountId;
    final obfuscatedProfileId = this.obfuscatedProfileId;
    return {
      'obfuscatedAccountId': ?obfuscatedAccountId,
      'obfuscatedProfileId': ?obfuscatedProfileId,
    };
  }
}

/// Reporting details unique to the external offers program.
class ExternalOfferDetails {
  /// The external transaction id associated with the app download event through
  /// an external link.
  ///
  /// Required when reporting transactions made in externally installed apps.
  ///
  /// Optional.
  core.String? appDownloadEventExternalTransactionId;

  /// The category of the downloaded app though this transaction.
  ///
  /// This must match the category provided in Play Console during the external
  /// app verification process. Only required for app downloads.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "EXTERNAL_OFFER_APP_CATEGORY_UNSPECIFIED" : Unspecified, do not use.
  /// - "APP" : The app is classified under the app category.
  /// - "GAME" : The app is classified under the game category.
  core.String? installedAppCategory;

  /// The package name of the app downloaded through this transaction.
  ///
  /// Required when link_type is LINK_TO_APP_DOWNLOAD.
  ///
  /// Optional.
  core.String? installedAppPackage;

  /// The type of content being reported by this transaction.
  ///
  /// Required when reporting app downloads or purchased digital content offers
  /// made in app installed through Google Play.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "EXTERNAL_OFFER_LINK_TYPE_UNSPECIFIED" : Unspecified, do not use.
  /// - "LINK_TO_DIGITAL_CONTENT_OFFER" : An offer to purchase digital content.
  /// - "LINK_TO_APP_DOWNLOAD" : An app install.
  core.String? linkType;

  ExternalOfferDetails({
    this.appDownloadEventExternalTransactionId,
    this.installedAppCategory,
    this.installedAppPackage,
    this.linkType,
  });

  ExternalOfferDetails.fromJson(core.Map json_)
    : this(
        appDownloadEventExternalTransactionId:
            json_['appDownloadEventExternalTransactionId'] as core.String?,
        installedAppCategory: json_['installedAppCategory'] as core.String?,
        installedAppPackage: json_['installedAppPackage'] as core.String?,
        linkType: json_['linkType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final appDownloadEventExternalTransactionId =
        this.appDownloadEventExternalTransactionId;
    final installedAppCategory = this.installedAppCategory;
    final installedAppPackage = this.installedAppPackage;
    final linkType = this.linkType;
    return {
      'appDownloadEventExternalTransactionId':
          ?appDownloadEventExternalTransactionId,
      'installedAppCategory': ?installedAppCategory,
      'installedAppPackage': ?installedAppPackage,
      'linkType': ?linkType,
    };
  }
}

/// Details of an external subscription.
class ExternalSubscription {
  /// The type of the external subscription.
  ///
  /// Required.
  /// Possible string values are:
  /// - "SUBSCRIPTION_TYPE_UNSPECIFIED" : Unspecified, do not use.
  /// - "RECURRING" : This is a recurring subscription where the user is charged
  /// every billing cycle.
  /// - "PREPAID" : This is a prepaid subscription where the user pays up front.
  core.String? subscriptionType;

  ExternalSubscription({this.subscriptionType});

  ExternalSubscription.fromJson(core.Map json_)
    : this(subscriptionType: json_['subscriptionType'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final subscriptionType = this.subscriptionType;
    return {'subscriptionType': ?subscriptionType};
  }
}

/// The details of an external transaction.
class ExternalTransaction {
  /// The time when this transaction was created.
  ///
  /// This is the time when Google was notified of the transaction.
  ///
  /// Output only.
  core.String? createTime;

  /// The current transaction amount before tax.
  ///
  /// This represents the current pre-tax amount including any refunds that may
  /// have been applied to this transaction.
  ///
  /// Output only.
  Price? currentPreTaxAmount;

  /// The current tax amount.
  ///
  /// This represents the current tax amount including any refunds that may have
  /// been applied to this transaction.
  ///
  /// Output only.
  Price? currentTaxAmount;

  /// Details necessary to accurately report external offers transactions.
  ///
  /// Optional.
  ExternalOfferDetails? externalOfferDetails;

  /// The id of this transaction.
  ///
  /// All transaction ids under the same package name must be unique. Set when
  /// creating the external transaction.
  ///
  /// Output only.
  core.String? externalTransactionId;

  /// This is a one-time transaction and not part of a subscription.
  OneTimeExternalTransaction? oneTimeTransaction;

  /// The original transaction amount before taxes.
  ///
  /// This represents the pre-tax amount originally notified to Google before
  /// any refunds were applied.
  ///
  /// Required.
  Price? originalPreTaxAmount;

  /// The original tax amount.
  ///
  /// This represents the tax amount originally notified to Google before any
  /// refunds were applied.
  ///
  /// Required.
  Price? originalTaxAmount;

  /// The resource name of the external transaction.
  ///
  /// The package name of the application the inapp products were sold (for
  /// example, 'com.some.app').
  ///
  /// Output only.
  core.String? packageName;

  /// This transaction is part of a recurring series of transactions.
  RecurringExternalTransaction? recurringTransaction;

  /// If set, this transaction was a test purchase.
  ///
  /// Google will not charge for a test transaction.
  ///
  /// Output only.
  ExternalTransactionTestPurchase? testPurchase;

  /// The transaction program code, used to help determine service fee for
  /// eligible apps participating in partner programs.
  ///
  /// Developers participating in the Play Media Experience Program
  /// (https://play.google.com/console/about/programs/mediaprogram/) must
  /// provide the program code when reporting alternative billing transactions.
  /// If you are an eligible developer, please contact your BDM for more
  /// information on how to set this field. Note: this field can not be used for
  /// external offers transactions.
  ///
  /// Optional.
  core.int? transactionProgramCode;

  /// The current state of the transaction.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "TRANSACTION_STATE_UNSPECIFIED" : Unspecified transaction state. Not
  /// used.
  /// - "TRANSACTION_REPORTED" : The transaction has been successfully reported
  /// to Google.
  /// - "TRANSACTION_CANCELED" : The transaction has been fully refunded.
  core.String? transactionState;

  /// The time when the transaction was completed.
  ///
  /// Required.
  core.String? transactionTime;

  /// User address for tax computation.
  ///
  /// Required.
  ExternalTransactionAddress? userTaxAddress;

  ExternalTransaction({
    this.createTime,
    this.currentPreTaxAmount,
    this.currentTaxAmount,
    this.externalOfferDetails,
    this.externalTransactionId,
    this.oneTimeTransaction,
    this.originalPreTaxAmount,
    this.originalTaxAmount,
    this.packageName,
    this.recurringTransaction,
    this.testPurchase,
    this.transactionProgramCode,
    this.transactionState,
    this.transactionTime,
    this.userTaxAddress,
  });

  ExternalTransaction.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        currentPreTaxAmount: json_.containsKey('currentPreTaxAmount')
            ? Price.fromJson(
                json_['currentPreTaxAmount']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        currentTaxAmount: json_.containsKey('currentTaxAmount')
            ? Price.fromJson(
                json_['currentTaxAmount']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        externalOfferDetails: json_.containsKey('externalOfferDetails')
            ? ExternalOfferDetails.fromJson(
                json_['externalOfferDetails']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        externalTransactionId: json_['externalTransactionId'] as core.String?,
        oneTimeTransaction: json_.containsKey('oneTimeTransaction')
            ? OneTimeExternalTransaction.fromJson(
                json_['oneTimeTransaction']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        originalPreTaxAmount: json_.containsKey('originalPreTaxAmount')
            ? Price.fromJson(
                json_['originalPreTaxAmount']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        originalTaxAmount: json_.containsKey('originalTaxAmount')
            ? Price.fromJson(
                json_['originalTaxAmount']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        packageName: json_['packageName'] as core.String?,
        recurringTransaction: json_.containsKey('recurringTransaction')
            ? RecurringExternalTransaction.fromJson(
                json_['recurringTransaction']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        testPurchase: json_.containsKey('testPurchase')
            ? ExternalTransactionTestPurchase.fromJson(
                json_['testPurchase'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        transactionProgramCode: json_['transactionProgramCode'] as core.int?,
        transactionState: json_['transactionState'] as core.String?,
        transactionTime: json_['transactionTime'] as core.String?,
        userTaxAddress: json_.containsKey('userTaxAddress')
            ? ExternalTransactionAddress.fromJson(
                json_['userTaxAddress'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final createTime = this.createTime;
    final currentPreTaxAmount = this.currentPreTaxAmount;
    final currentTaxAmount = this.currentTaxAmount;
    final externalOfferDetails = this.externalOfferDetails;
    final externalTransactionId = this.externalTransactionId;
    final oneTimeTransaction = this.oneTimeTransaction;
    final originalPreTaxAmount = this.originalPreTaxAmount;
    final originalTaxAmount = this.originalTaxAmount;
    final packageName = this.packageName;
    final recurringTransaction = this.recurringTransaction;
    final testPurchase = this.testPurchase;
    final transactionProgramCode = this.transactionProgramCode;
    final transactionState = this.transactionState;
    final transactionTime = this.transactionTime;
    final userTaxAddress = this.userTaxAddress;
    return {
      'createTime': ?createTime,
      'currentPreTaxAmount': ?currentPreTaxAmount,
      'currentTaxAmount': ?currentTaxAmount,
      'externalOfferDetails': ?externalOfferDetails,
      'externalTransactionId': ?externalTransactionId,
      'oneTimeTransaction': ?oneTimeTransaction,
      'originalPreTaxAmount': ?originalPreTaxAmount,
      'originalTaxAmount': ?originalTaxAmount,
      'packageName': ?packageName,
      'recurringTransaction': ?recurringTransaction,
      'testPurchase': ?testPurchase,
      'transactionProgramCode': ?transactionProgramCode,
      'transactionState': ?transactionState,
      'transactionTime': ?transactionTime,
      'userTaxAddress': ?userTaxAddress,
    };
  }
}

/// User's address for the external transaction.
class ExternalTransactionAddress {
  /// Top-level administrative subdivision of the country/region.
  ///
  /// Only required for transactions in India. Valid values are "ANDAMAN AND
  /// NICOBAR ISLANDS", "ANDHRA PRADESH", "ARUNACHAL PRADESH", "ASSAM", "BIHAR",
  /// "CHANDIGARH", "CHHATTISGARH", "DADRA AND NAGAR HAVELI", "DADRA AND NAGAR
  /// HAVELI AND DAMAN AND DIU", "DAMAN AND DIU", "DELHI", "GOA", "GUJARAT",
  /// "HARYANA", "HIMACHAL PRADESH", "JAMMU AND KASHMIR", "JHARKHAND",
  /// "KARNATAKA", "KERALA", "LADAKH", "LAKSHADWEEP", "MADHYA PRADESH",
  /// "MAHARASHTRA", "MANIPUR", "MEGHALAYA", "MIZORAM", "NAGALAND", "ODISHA",
  /// "PUDUCHERRY", "PUNJAB", "RAJASTHAN", "SIKKIM", "TAMIL NADU", "TELANGANA",
  /// "TRIPURA", "UTTAR PRADESH", "UTTARAKHAND", and "WEST BENGAL".
  ///
  /// Optional.
  core.String? administrativeArea;

  /// Two letter region code based on ISO-3166-1 Alpha-2 (UN region codes).
  ///
  /// Required.
  core.String? regionCode;

  ExternalTransactionAddress({this.administrativeArea, this.regionCode});

  ExternalTransactionAddress.fromJson(core.Map json_)
    : this(
        administrativeArea: json_['administrativeArea'] as core.String?,
        regionCode: json_['regionCode'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final administrativeArea = this.administrativeArea;
    final regionCode = this.regionCode;
    return {
      'administrativeArea': ?administrativeArea,
      'regionCode': ?regionCode,
    };
  }
}

/// Represents a transaction performed using a test account.
///
/// These transactions will not be charged by Google.
typedef ExternalTransactionTestPurchase = $Empty;

/// Defines an APK available for this application that is hosted externally and
/// not uploaded to Google Play.
///
/// This function is only available to organizations using Managed Play whose
/// application is configured to restrict distribution to the organizations.
class ExternallyHostedApk {
  /// The application label.
  core.String? applicationLabel;

  /// A certificate (or array of certificates if a certificate-chain is used)
  /// used to sign this APK, represented as a base64 encoded byte array.
  core.List<core.String>? certificateBase64s;

  /// The URL at which the APK is hosted.
  ///
  /// This must be an https URL.
  core.String? externallyHostedUrl;

  /// The sha1 checksum of this APK, represented as a base64 encoded byte array.
  core.String? fileSha1Base64;

  /// The sha256 checksum of this APK, represented as a base64 encoded byte
  /// array.
  core.String? fileSha256Base64;

  /// The file size in bytes of this APK.
  core.String? fileSize;

  /// The icon image from the APK, as a base64 encoded byte array.
  core.String? iconBase64;

  /// The maximum SDK supported by this APK (optional).
  core.int? maximumSdk;

  /// The minimum SDK targeted by this APK.
  core.int? minimumSdk;

  /// The native code environments supported by this APK (optional).
  core.List<core.String>? nativeCodes;

  /// The package name.
  core.String? packageName;

  /// The features required by this APK (optional).
  core.List<core.String>? usesFeatures;

  /// The permissions requested by this APK.
  core.List<UsesPermission>? usesPermissions;

  /// The version code of this APK.
  core.int? versionCode;

  /// The version name of this APK.
  core.String? versionName;

  ExternallyHostedApk({
    this.applicationLabel,
    this.certificateBase64s,
    this.externallyHostedUrl,
    this.fileSha1Base64,
    this.fileSha256Base64,
    this.fileSize,
    this.iconBase64,
    this.maximumSdk,
    this.minimumSdk,
    this.nativeCodes,
    this.packageName,
    this.usesFeatures,
    this.usesPermissions,
    this.versionCode,
    this.versionName,
  });

  ExternallyHostedApk.fromJson(core.Map json_)
    : this(
        applicationLabel: json_['applicationLabel'] as core.String?,
        certificateBase64s: (json_['certificateBase64s'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        externallyHostedUrl: json_['externallyHostedUrl'] as core.String?,
        fileSha1Base64: json_['fileSha1Base64'] as core.String?,
        fileSha256Base64: json_['fileSha256Base64'] as core.String?,
        fileSize: json_['fileSize'] as core.String?,
        iconBase64: json_['iconBase64'] as core.String?,
        maximumSdk: json_['maximumSdk'] as core.int?,
        minimumSdk: json_['minimumSdk'] as core.int?,
        nativeCodes: (json_['nativeCodes'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        packageName: json_['packageName'] as core.String?,
        usesFeatures: (json_['usesFeatures'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        usesPermissions: (json_['usesPermissions'] as core.List?)
            ?.map(
              (value) => UsesPermission.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        versionCode: json_['versionCode'] as core.int?,
        versionName: json_['versionName'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final applicationLabel = this.applicationLabel;
    final certificateBase64s = this.certificateBase64s;
    final externallyHostedUrl = this.externallyHostedUrl;
    final fileSha1Base64 = this.fileSha1Base64;
    final fileSha256Base64 = this.fileSha256Base64;
    final fileSize = this.fileSize;
    final iconBase64 = this.iconBase64;
    final maximumSdk = this.maximumSdk;
    final minimumSdk = this.minimumSdk;
    final nativeCodes = this.nativeCodes;
    final packageName = this.packageName;
    final usesFeatures = this.usesFeatures;
    final usesPermissions = this.usesPermissions;
    final versionCode = this.versionCode;
    final versionName = this.versionName;
    return {
      'applicationLabel': ?applicationLabel,
      'certificateBase64s': ?certificateBase64s,
      'externallyHostedUrl': ?externallyHostedUrl,
      'fileSha1Base64': ?fileSha1Base64,
      'fileSha256Base64': ?fileSha256Base64,
      'fileSize': ?fileSize,
      'iconBase64': ?iconBase64,
      'maximumSdk': ?maximumSdk,
      'minimumSdk': ?minimumSdk,
      'nativeCodes': ?nativeCodes,
      'packageName': ?packageName,
      'usesFeatures': ?usesFeatures,
      'usesPermissions': ?usesPermissions,
      'versionCode': ?versionCode,
      'versionName': ?versionName,
    };
  }
}

/// Details of a free trial pricing phase.
typedef FreeTrialDetails = $Empty;

/// Details about free trial offer phase.
typedef FreeTrialOfferPhase = $Empty;

/// A full refund of the remaining amount of a transaction.
typedef FullRefund = $Empty;

/// Response to list generated APKs.
class GeneratedApksListResponse {
  /// All generated APKs, grouped by the APK signing key.
  core.List<GeneratedApksPerSigningKey>? generatedApks;

  GeneratedApksListResponse({this.generatedApks});

  GeneratedApksListResponse.fromJson(core.Map json_)
    : this(
        generatedApks: (json_['generatedApks'] as core.List?)
            ?.map(
              (value) => GeneratedApksPerSigningKey.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final generatedApks = this.generatedApks;
    return {'generatedApks': ?generatedApks};
  }
}

/// Download metadata for split, standalone and universal APKs, as well as asset
/// pack slices, signed with a given key.
class GeneratedApksPerSigningKey {
  /// SHA256 hash of the APK signing public key certificate.
  core.String? certificateSha256Hash;

  /// List of asset pack slices which will be served for this app bundle, signed
  /// with a key corresponding to certificate_sha256_hash.
  core.List<GeneratedAssetPackSlice>? generatedAssetPackSlices;

  /// Generated recovery apks for recovery actions signed with a key
  /// corresponding to certificate_sha256_hash.
  ///
  /// This includes all generated recovery APKs, also those in draft or
  /// cancelled state. This field is not set if no recovery actions were created
  /// for this signing key.
  core.List<GeneratedRecoveryApk>? generatedRecoveryModules;

  /// List of generated split APKs, signed with a key corresponding to
  /// certificate_sha256_hash.
  core.List<GeneratedSplitApk>? generatedSplitApks;

  /// List of generated standalone APKs, signed with a key corresponding to
  /// certificate_sha256_hash.
  core.List<GeneratedStandaloneApk>? generatedStandaloneApks;

  /// Generated universal APK, signed with a key corresponding to
  /// certificate_sha256_hash.
  ///
  /// This field is not set if no universal APK was generated for this signing
  /// key.
  GeneratedUniversalApk? generatedUniversalApk;

  /// Contains targeting information about the generated apks.
  TargetingInfo? targetingInfo;

  GeneratedApksPerSigningKey({
    this.certificateSha256Hash,
    this.generatedAssetPackSlices,
    this.generatedRecoveryModules,
    this.generatedSplitApks,
    this.generatedStandaloneApks,
    this.generatedUniversalApk,
    this.targetingInfo,
  });

  GeneratedApksPerSigningKey.fromJson(core.Map json_)
    : this(
        certificateSha256Hash: json_['certificateSha256Hash'] as core.String?,
        generatedAssetPackSlices:
            (json_['generatedAssetPackSlices'] as core.List?)
                ?.map(
                  (value) => GeneratedAssetPackSlice.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        generatedRecoveryModules:
            (json_['generatedRecoveryModules'] as core.List?)
                ?.map(
                  (value) => GeneratedRecoveryApk.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        generatedSplitApks: (json_['generatedSplitApks'] as core.List?)
            ?.map(
              (value) => GeneratedSplitApk.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        generatedStandaloneApks:
            (json_['generatedStandaloneApks'] as core.List?)
                ?.map(
                  (value) => GeneratedStandaloneApk.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        generatedUniversalApk: json_.containsKey('generatedUniversalApk')
            ? GeneratedUniversalApk.fromJson(
                json_['generatedUniversalApk']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        targetingInfo: json_.containsKey('targetingInfo')
            ? TargetingInfo.fromJson(
                json_['targetingInfo'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final certificateSha256Hash = this.certificateSha256Hash;
    final generatedAssetPackSlices = this.generatedAssetPackSlices;
    final generatedRecoveryModules = this.generatedRecoveryModules;
    final generatedSplitApks = this.generatedSplitApks;
    final generatedStandaloneApks = this.generatedStandaloneApks;
    final generatedUniversalApk = this.generatedUniversalApk;
    final targetingInfo = this.targetingInfo;
    return {
      'certificateSha256Hash': ?certificateSha256Hash,
      'generatedAssetPackSlices': ?generatedAssetPackSlices,
      'generatedRecoveryModules': ?generatedRecoveryModules,
      'generatedSplitApks': ?generatedSplitApks,
      'generatedStandaloneApks': ?generatedStandaloneApks,
      'generatedUniversalApk': ?generatedUniversalApk,
      'targetingInfo': ?targetingInfo,
    };
  }
}

/// Download metadata for an asset pack slice.
class GeneratedAssetPackSlice {
  /// Download ID, which uniquely identifies the APK to download.
  ///
  /// Should be supplied to `generatedapks.download` method.
  core.String? downloadId;

  /// Name of the module that this asset slice belongs to.
  core.String? moduleName;

  /// Asset slice ID.
  core.String? sliceId;

  /// Asset module version.
  core.String? version;

  GeneratedAssetPackSlice({
    this.downloadId,
    this.moduleName,
    this.sliceId,
    this.version,
  });

  GeneratedAssetPackSlice.fromJson(core.Map json_)
    : this(
        downloadId: json_['downloadId'] as core.String?,
        moduleName: json_['moduleName'] as core.String?,
        sliceId: json_['sliceId'] as core.String?,
        version: json_['version'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final downloadId = this.downloadId;
    final moduleName = this.moduleName;
    final sliceId = this.sliceId;
    final version = this.version;
    return {
      'downloadId': ?downloadId,
      'moduleName': ?moduleName,
      'sliceId': ?sliceId,
      'version': ?version,
    };
  }
}

/// Download metadata for an app recovery module.
class GeneratedRecoveryApk {
  /// Download ID, which uniquely identifies the APK to download.
  ///
  /// Should be supplied to `generatedapks.download` method.
  core.String? downloadId;

  /// Name of the module which recovery apk belongs to.
  core.String? moduleName;

  /// ID of the recovery action.
  core.String? recoveryId;

  /// The status of the recovery action corresponding to the recovery apk.
  /// Possible string values are:
  /// - "RECOVERY_STATUS_UNSPECIFIED" : RecoveryStatus is unspecified.
  /// - "RECOVERY_STATUS_ACTIVE" : The app recovery action has not been canceled
  /// since it has been created.
  /// - "RECOVERY_STATUS_CANCELED" : The recovery action has been canceled. The
  /// action cannot be resumed.
  /// - "RECOVERY_STATUS_DRAFT" : The recovery action is in the draft state and
  /// has not yet been deployed to users.
  /// - "RECOVERY_STATUS_GENERATION_IN_PROGRESS" : The recovery action is
  /// generating recovery apks.
  /// - "RECOVERY_STATUS_GENERATION_FAILED" : The app recovery action generation
  /// has failed.
  core.String? recoveryStatus;

  GeneratedRecoveryApk({
    this.downloadId,
    this.moduleName,
    this.recoveryId,
    this.recoveryStatus,
  });

  GeneratedRecoveryApk.fromJson(core.Map json_)
    : this(
        downloadId: json_['downloadId'] as core.String?,
        moduleName: json_['moduleName'] as core.String?,
        recoveryId: json_['recoveryId'] as core.String?,
        recoveryStatus: json_['recoveryStatus'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final downloadId = this.downloadId;
    final moduleName = this.moduleName;
    final recoveryId = this.recoveryId;
    final recoveryStatus = this.recoveryStatus;
    return {
      'downloadId': ?downloadId,
      'moduleName': ?moduleName,
      'recoveryId': ?recoveryId,
      'recoveryStatus': ?recoveryStatus,
    };
  }
}

/// Download metadata for a split APK.
class GeneratedSplitApk {
  /// Download ID, which uniquely identifies the APK to download.
  ///
  /// Should be supplied to `generatedapks.download` method.
  core.String? downloadId;

  /// Name of the module that this APK belongs to.
  core.String? moduleName;

  /// Split ID.
  ///
  /// Empty for the main split of the base module.
  core.String? splitId;

  /// ID of the generated variant.
  core.int? variantId;

  GeneratedSplitApk({
    this.downloadId,
    this.moduleName,
    this.splitId,
    this.variantId,
  });

  GeneratedSplitApk.fromJson(core.Map json_)
    : this(
        downloadId: json_['downloadId'] as core.String?,
        moduleName: json_['moduleName'] as core.String?,
        splitId: json_['splitId'] as core.String?,
        variantId: json_['variantId'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final downloadId = this.downloadId;
    final moduleName = this.moduleName;
    final splitId = this.splitId;
    final variantId = this.variantId;
    return {
      'downloadId': ?downloadId,
      'moduleName': ?moduleName,
      'splitId': ?splitId,
      'variantId': ?variantId,
    };
  }
}

/// Download metadata for a standalone APK.
class GeneratedStandaloneApk {
  /// Download ID, which uniquely identifies the APK to download.
  ///
  /// Should be supplied to `generatedapks.download` method.
  core.String? downloadId;

  /// ID of the generated variant.
  core.int? variantId;

  GeneratedStandaloneApk({this.downloadId, this.variantId});

  GeneratedStandaloneApk.fromJson(core.Map json_)
    : this(
        downloadId: json_['downloadId'] as core.String?,
        variantId: json_['variantId'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final downloadId = this.downloadId;
    final variantId = this.variantId;
    return {'downloadId': ?downloadId, 'variantId': ?variantId};
  }
}

/// Download metadata for a universal APK.
class GeneratedUniversalApk {
  /// Download ID, which uniquely identifies the APK to download.
  ///
  /// Should be supplied to `generatedapks.download` method.
  core.String? downloadId;

  GeneratedUniversalApk({this.downloadId});

  GeneratedUniversalApk.fromJson(core.Map json_)
    : this(downloadId: json_['downloadId'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final downloadId = this.downloadId;
    return {'downloadId': ?downloadId};
  }
}

/// Request message for GetOneTimeProductOffers.
class GetOneTimeProductOfferRequest {
  /// The unique offer ID of the offer to get.
  ///
  /// Required.
  core.String? offerId;

  /// The parent app (package name) of the offer to get.
  ///
  /// Required.
  core.String? packageName;

  /// The parent one-time product (ID) of the offer to get.
  ///
  /// Required.
  core.String? productId;

  /// The parent purchase option (ID) of the offer to get.
  ///
  /// Required.
  core.String? purchaseOptionId;

  GetOneTimeProductOfferRequest({
    this.offerId,
    this.packageName,
    this.productId,
    this.purchaseOptionId,
  });

  GetOneTimeProductOfferRequest.fromJson(core.Map json_)
    : this(
        offerId: json_['offerId'] as core.String?,
        packageName: json_['packageName'] as core.String?,
        productId: json_['productId'] as core.String?,
        purchaseOptionId: json_['purchaseOptionId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final offerId = this.offerId;
    final packageName = this.packageName;
    final productId = this.productId;
    final purchaseOptionId = this.purchaseOptionId;
    return {
      'offerId': ?offerId,
      'packageName': ?packageName,
      'productId': ?productId,
      'purchaseOptionId': ?purchaseOptionId,
    };
  }
}

/// Request message for GetSubscriptionOffer.
class GetSubscriptionOfferRequest {
  /// The parent base plan (ID) of the offer to get.
  ///
  /// Required.
  core.String? basePlanId;

  /// The unique offer ID of the offer to get.
  ///
  /// Required.
  core.String? offerId;

  /// The parent app (package name) of the offer to get.
  ///
  /// Required.
  core.String? packageName;

  /// The parent subscription (ID) of the offer to get.
  ///
  /// Required.
  core.String? productId;

  GetSubscriptionOfferRequest({
    this.basePlanId,
    this.offerId,
    this.packageName,
    this.productId,
  });

  GetSubscriptionOfferRequest.fromJson(core.Map json_)
    : this(
        basePlanId: json_['basePlanId'] as core.String?,
        offerId: json_['offerId'] as core.String?,
        packageName: json_['packageName'] as core.String?,
        productId: json_['productId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final basePlanId = this.basePlanId;
    final offerId = this.offerId;
    final packageName = this.packageName;
    final productId = this.productId;
    return {
      'basePlanId': ?basePlanId,
      'offerId': ?offerId,
      'packageName': ?packageName,
      'productId': ?productId,
    };
  }
}

/// An access grant resource.
class Grant {
  /// The permissions granted to the user for this app.
  core.List<core.String>? appLevelPermissions;

  /// Resource name for this grant, following the pattern
  /// "developers/{developer}/users/{email}/grants/{package_name}".
  ///
  /// If this grant is for a draft app, the app ID will be used in this resource
  /// name instead of the package name.
  ///
  /// Required.
  core.String? name;

  /// The package name of the app.
  ///
  /// This will be empty for draft apps.
  ///
  /// Immutable.
  core.String? packageName;

  Grant({this.appLevelPermissions, this.name, this.packageName});

  Grant.fromJson(core.Map json_)
    : this(
        appLevelPermissions: (json_['appLevelPermissions'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        name: json_['name'] as core.String?,
        packageName: json_['packageName'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final appLevelPermissions = this.appLevelPermissions;
    final name = this.name;
    final packageName = this.packageName;
    return {
      'appLevelPermissions': ?appLevelPermissions,
      'name': ?name,
      'packageName': ?packageName,
    };
  }
}

/// An uploaded image.
///
/// The resource for ImagesService.
class Image {
  /// A unique id representing this image.
  core.String? id;

  /// A sha1 hash of the image.
  core.String? sha1;

  /// A sha256 hash of the image.
  core.String? sha256;

  /// A URL that will serve a preview of the image.
  core.String? url;

  Image({this.id, this.sha1, this.sha256, this.url});

  Image.fromJson(core.Map json_)
    : this(
        id: json_['id'] as core.String?,
        sha1: json_['sha1'] as core.String?,
        sha256: json_['sha256'] as core.String?,
        url: json_['url'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final id = this.id;
    final sha1 = this.sha1;
    final sha256 = this.sha256;
    final url = this.url;
    return {'id': ?id, 'sha1': ?sha1, 'sha256': ?sha256, 'url': ?url};
  }
}

/// Response for deleting all images.
class ImagesDeleteAllResponse {
  /// The deleted images.
  core.List<Image>? deleted;

  ImagesDeleteAllResponse({this.deleted});

  ImagesDeleteAllResponse.fromJson(core.Map json_)
    : this(
        deleted: (json_['deleted'] as core.List?)
            ?.map(
              (value) =>
                  Image.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final deleted = this.deleted;
    return {'deleted': ?deleted};
  }
}

/// Response listing all images.
class ImagesListResponse {
  /// All listed Images.
  core.List<Image>? images;

  ImagesListResponse({this.images});

  ImagesListResponse.fromJson(core.Map json_)
    : this(
        images: (json_['images'] as core.List?)
            ?.map(
              (value) =>
                  Image.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final images = this.images;
    return {'images': ?images};
  }
}

/// Response for uploading an image.
class ImagesUploadResponse {
  /// The uploaded image.
  Image? image;

  ImagesUploadResponse({this.image});

  ImagesUploadResponse.fromJson(core.Map json_)
    : this(
        image: json_.containsKey('image')
            ? Image.fromJson(
                json_['image'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final image = this.image;
    return {'image': ?image};
  }
}

/// An in-app product.
///
/// The resource for InappproductsService.
class InAppProduct {
  /// Default language of the localized data, as defined by BCP-47.
  ///
  /// e.g. "en-US".
  core.String? defaultLanguage;

  /// Default price.
  ///
  /// Cannot be zero, as in-app products are never free. Always in the
  /// developer's Checkout merchant currency.
  Price? defaultPrice;

  /// Grace period of the subscription, specified in ISO 8601 format.
  ///
  /// Allows developers to give their subscribers a grace period when the
  /// payment for the new recurrence period is declined. Acceptable values are
  /// P0D (zero days), P3D (three days), P7D (seven days), P14D (14 days), and
  /// P30D (30 days).
  core.String? gracePeriod;

  /// List of localized title and description data.
  ///
  /// Map key is the language of the localized data, as defined by BCP-47, e.g.
  /// "en-US".
  core.Map<core.String, InAppProductListing>? listings;

  /// Details about taxes and legal compliance.
  ///
  /// Only applicable to managed products.
  ManagedProductTaxAndComplianceSettings?
  managedProductTaxesAndComplianceSettings;

  /// Package name of the parent app.
  core.String? packageName;

  /// Prices per buyer region.
  ///
  /// None of these can be zero, as in-app products are never free. Map key is
  /// region code, as defined by ISO 3166-2.
  core.Map<core.String, Price>? prices;

  /// The type of the product, e.g. a recurring subscription.
  /// Possible string values are:
  /// - "purchaseTypeUnspecified" : Unspecified purchase type.
  /// - "managedUser" : The default product type - one time purchase.
  /// - "subscription" : In-app product with a recurring period.
  core.String? purchaseType;

  /// Stock-keeping-unit (SKU) of the product, unique within an app.
  core.String? sku;

  /// The status of the product, e.g. whether it's active.
  /// Possible string values are:
  /// - "statusUnspecified" : Unspecified status.
  /// - "active" : The product is published and active in the store.
  /// - "inactive" : The product is not published and therefore inactive in the
  /// store.
  core.String? status;

  /// Subscription period, specified in ISO 8601 format.
  ///
  /// Acceptable values are P1W (one week), P1M (one month), P3M (three months),
  /// P6M (six months), and P1Y (one year).
  core.String? subscriptionPeriod;

  /// Details about taxes and legal compliance.
  ///
  /// Only applicable to subscription products.
  SubscriptionTaxAndComplianceSettings? subscriptionTaxesAndComplianceSettings;

  /// Trial period, specified in ISO 8601 format.
  ///
  /// Acceptable values are anything between P7D (seven days) and P999D (999
  /// days).
  core.String? trialPeriod;

  InAppProduct({
    this.defaultLanguage,
    this.defaultPrice,
    this.gracePeriod,
    this.listings,
    this.managedProductTaxesAndComplianceSettings,
    this.packageName,
    this.prices,
    this.purchaseType,
    this.sku,
    this.status,
    this.subscriptionPeriod,
    this.subscriptionTaxesAndComplianceSettings,
    this.trialPeriod,
  });

  InAppProduct.fromJson(core.Map json_)
    : this(
        defaultLanguage: json_['defaultLanguage'] as core.String?,
        defaultPrice: json_.containsKey('defaultPrice')
            ? Price.fromJson(
                json_['defaultPrice'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        gracePeriod: json_['gracePeriod'] as core.String?,
        listings: (json_['listings'] as core.Map<core.String, core.dynamic>?)
            ?.map(
              (key, value) => core.MapEntry(
                key,
                InAppProductListing.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              ),
            ),
        managedProductTaxesAndComplianceSettings:
            json_.containsKey('managedProductTaxesAndComplianceSettings')
            ? ManagedProductTaxAndComplianceSettings.fromJson(
                json_['managedProductTaxesAndComplianceSettings']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        packageName: json_['packageName'] as core.String?,
        prices: (json_['prices'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(
            key,
            Price.fromJson(value as core.Map<core.String, core.dynamic>),
          ),
        ),
        purchaseType: json_['purchaseType'] as core.String?,
        sku: json_['sku'] as core.String?,
        status: json_['status'] as core.String?,
        subscriptionPeriod: json_['subscriptionPeriod'] as core.String?,
        subscriptionTaxesAndComplianceSettings:
            json_.containsKey('subscriptionTaxesAndComplianceSettings')
            ? SubscriptionTaxAndComplianceSettings.fromJson(
                json_['subscriptionTaxesAndComplianceSettings']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        trialPeriod: json_['trialPeriod'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final defaultLanguage = this.defaultLanguage;
    final defaultPrice = this.defaultPrice;
    final gracePeriod = this.gracePeriod;
    final listings = this.listings;
    final managedProductTaxesAndComplianceSettings =
        this.managedProductTaxesAndComplianceSettings;
    final packageName = this.packageName;
    final prices = this.prices;
    final purchaseType = this.purchaseType;
    final sku = this.sku;
    final status = this.status;
    final subscriptionPeriod = this.subscriptionPeriod;
    final subscriptionTaxesAndComplianceSettings =
        this.subscriptionTaxesAndComplianceSettings;
    final trialPeriod = this.trialPeriod;
    return {
      'defaultLanguage': ?defaultLanguage,
      'defaultPrice': ?defaultPrice,
      'gracePeriod': ?gracePeriod,
      'listings': ?listings,
      'managedProductTaxesAndComplianceSettings':
          ?managedProductTaxesAndComplianceSettings,
      'packageName': ?packageName,
      'prices': ?prices,
      'purchaseType': ?purchaseType,
      'sku': ?sku,
      'status': ?status,
      'subscriptionPeriod': ?subscriptionPeriod,
      'subscriptionTaxesAndComplianceSettings':
          ?subscriptionTaxesAndComplianceSettings,
      'trialPeriod': ?trialPeriod,
    };
  }
}

/// Store listing of a single in-app product.
class InAppProductListing {
  /// Localized entitlement benefits for a subscription.
  core.List<core.String>? benefits;

  /// Description for the store listing.
  core.String? description;

  /// Title for the store listing.
  core.String? title;

  InAppProductListing({this.benefits, this.description, this.title});

  InAppProductListing.fromJson(core.Map json_)
    : this(
        benefits: (json_['benefits'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        description: json_['description'] as core.String?,
        title: json_['title'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final benefits = this.benefits;
    final description = this.description;
    final title = this.title;
    return {
      'benefits': ?benefits,
      'description': ?description,
      'title': ?title,
    };
  }
}

/// Request to delete multiple in-app products.
class InappproductsBatchDeleteRequest {
  /// Individual delete requests.
  ///
  /// At least one request is required. Can contain up to 100 requests. All
  /// requests must correspond to different in-app products.
  core.List<InappproductsDeleteRequest>? requests;

  InappproductsBatchDeleteRequest({this.requests});

  InappproductsBatchDeleteRequest.fromJson(core.Map json_)
    : this(
        requests: (json_['requests'] as core.List?)
            ?.map(
              (value) => InappproductsDeleteRequest.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final requests = this.requests;
    return {'requests': ?requests};
  }
}

/// Response message for BatchGetSubscriptions endpoint.
class InappproductsBatchGetResponse {
  /// The list of requested in-app products, in the same order as the request.
  core.List<InAppProduct>? inappproduct;

  InappproductsBatchGetResponse({this.inappproduct});

  InappproductsBatchGetResponse.fromJson(core.Map json_)
    : this(
        inappproduct: (json_['inappproduct'] as core.List?)
            ?.map(
              (value) => InAppProduct.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final inappproduct = this.inappproduct;
    return {'inappproduct': ?inappproduct};
  }
}

/// Request to update or insert one or more in-app products.
class InappproductsBatchUpdateRequest {
  /// Individual update requests.
  ///
  /// At least one request is required. Can contain up to 100 requests. All
  /// requests must correspond to different in-app products.
  ///
  /// Required.
  core.List<InappproductsUpdateRequest>? requests;

  InappproductsBatchUpdateRequest({this.requests});

  InappproductsBatchUpdateRequest.fromJson(core.Map json_)
    : this(
        requests: (json_['requests'] as core.List?)
            ?.map(
              (value) => InappproductsUpdateRequest.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final requests = this.requests;
    return {'requests': ?requests};
  }
}

/// Response for a batch in-app product update.
class InappproductsBatchUpdateResponse {
  /// The updated or inserted in-app products.
  core.List<InAppProduct>? inappproducts;

  InappproductsBatchUpdateResponse({this.inappproducts});

  InappproductsBatchUpdateResponse.fromJson(core.Map json_)
    : this(
        inappproducts: (json_['inappproducts'] as core.List?)
            ?.map(
              (value) => InAppProduct.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final inappproducts = this.inappproducts;
    return {'inappproducts': ?inappproducts};
  }
}

/// Request to delete an in-app product.
class InappproductsDeleteRequest {
  /// The latency tolerance for the propagation of this product update.
  ///
  /// Defaults to latency-sensitive.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "PRODUCT_UPDATE_LATENCY_TOLERANCE_UNSPECIFIED" : Defaults to
  /// PRODUCT_UPDATE_LATENCY_TOLERANCE_LATENCY_SENSITIVE.
  /// - "PRODUCT_UPDATE_LATENCY_TOLERANCE_LATENCY_SENSITIVE" : The update will
  /// propagate to clients within several minutes on average and up to a few
  /// hours in rare cases. Throughput is limited to 7,200 updates per app per
  /// hour.
  /// - "PRODUCT_UPDATE_LATENCY_TOLERANCE_LATENCY_TOLERANT" : The update will
  /// propagate to clients within 24 hours. Supports high throughput of up to
  /// 720,000 updates per app per hour using batch modification methods.
  core.String? latencyTolerance;

  /// Package name of the app.
  core.String? packageName;

  /// Unique identifier for the in-app product.
  core.String? sku;

  InappproductsDeleteRequest({
    this.latencyTolerance,
    this.packageName,
    this.sku,
  });

  InappproductsDeleteRequest.fromJson(core.Map json_)
    : this(
        latencyTolerance: json_['latencyTolerance'] as core.String?,
        packageName: json_['packageName'] as core.String?,
        sku: json_['sku'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final latencyTolerance = this.latencyTolerance;
    final packageName = this.packageName;
    final sku = this.sku;
    return {
      'latencyTolerance': ?latencyTolerance,
      'packageName': ?packageName,
      'sku': ?sku,
    };
  }
}

/// Response listing all in-app products.
class InappproductsListResponse {
  /// All in-app products.
  core.List<InAppProduct>? inappproduct;

  /// The kind of this response ("androidpublisher#inappproductsListResponse").
  core.String? kind;

  /// Deprecated and unset.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  PageInfo? pageInfo;

  /// Pagination token, to handle a number of products that is over one page.
  TokenPagination? tokenPagination;

  InappproductsListResponse({
    this.inappproduct,
    this.kind,
    this.pageInfo,
    this.tokenPagination,
  });

  InappproductsListResponse.fromJson(core.Map json_)
    : this(
        inappproduct: (json_['inappproduct'] as core.List?)
            ?.map(
              (value) => InAppProduct.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        kind: json_['kind'] as core.String?,
        pageInfo: json_.containsKey('pageInfo')
            ? PageInfo.fromJson(
                json_['pageInfo'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        tokenPagination: json_.containsKey('tokenPagination')
            ? TokenPagination.fromJson(
                json_['tokenPagination'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final inappproduct = this.inappproduct;
    final kind = this.kind;
    final pageInfo = this.pageInfo;
    final tokenPagination = this.tokenPagination;
    return {
      'inappproduct': ?inappproduct,
      'kind': ?kind,
      'pageInfo': ?pageInfo,
      'tokenPagination': ?tokenPagination,
    };
  }
}

/// Request to update an in-app product.
class InappproductsUpdateRequest {
  /// If set to true, and the in-app product with the given package_name and sku
  /// doesn't exist, the in-app product will be created.
  core.bool? allowMissing;

  /// If true the prices for all regions targeted by the parent app that don't
  /// have a price specified for this in-app product will be auto converted to
  /// the target currency based on the default price.
  ///
  /// Defaults to false.
  core.bool? autoConvertMissingPrices;

  /// The new in-app product.
  InAppProduct? inappproduct;

  /// The latency tolerance for the propagation of this product update.
  ///
  /// Defaults to latency-sensitive.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "PRODUCT_UPDATE_LATENCY_TOLERANCE_UNSPECIFIED" : Defaults to
  /// PRODUCT_UPDATE_LATENCY_TOLERANCE_LATENCY_SENSITIVE.
  /// - "PRODUCT_UPDATE_LATENCY_TOLERANCE_LATENCY_SENSITIVE" : The update will
  /// propagate to clients within several minutes on average and up to a few
  /// hours in rare cases. Throughput is limited to 7,200 updates per app per
  /// hour.
  /// - "PRODUCT_UPDATE_LATENCY_TOLERANCE_LATENCY_TOLERANT" : The update will
  /// propagate to clients within 24 hours. Supports high throughput of up to
  /// 720,000 updates per app per hour using batch modification methods.
  core.String? latencyTolerance;

  /// Package name of the app.
  core.String? packageName;

  /// Unique identifier for the in-app product.
  core.String? sku;

  InappproductsUpdateRequest({
    this.allowMissing,
    this.autoConvertMissingPrices,
    this.inappproduct,
    this.latencyTolerance,
    this.packageName,
    this.sku,
  });

  InappproductsUpdateRequest.fromJson(core.Map json_)
    : this(
        allowMissing: json_['allowMissing'] as core.bool?,
        autoConvertMissingPrices:
            json_['autoConvertMissingPrices'] as core.bool?,
        inappproduct: json_.containsKey('inappproduct')
            ? InAppProduct.fromJson(
                json_['inappproduct'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        latencyTolerance: json_['latencyTolerance'] as core.String?,
        packageName: json_['packageName'] as core.String?,
        sku: json_['sku'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final allowMissing = this.allowMissing;
    final autoConvertMissingPrices = this.autoConvertMissingPrices;
    final inappproduct = this.inappproduct;
    final latencyTolerance = this.latencyTolerance;
    final packageName = this.packageName;
    final sku = this.sku;
    return {
      'allowMissing': ?allowMissing,
      'autoConvertMissingPrices': ?autoConvertMissingPrices,
      'inappproduct': ?inappproduct,
      'latencyTolerance': ?latencyTolerance,
      'packageName': ?packageName,
      'sku': ?sku,
    };
  }
}

/// Information to a installment plan.
class InstallmentPlan {
  /// Total number of payments the user is initially committed for.
  core.int? initialCommittedPaymentsCount;

  /// If present, this installment plan is pending to be canceled.
  ///
  /// The cancellation will happen only after the user finished all committed
  /// payments.
  PendingCancellation? pendingCancellation;

  /// Total number of committed payments remaining to be paid for in this
  /// renewal cycle.
  core.int? remainingCommittedPaymentsCount;

  /// Total number of payments the user will be committed for after each
  /// commitment period.
  ///
  /// Empty means the installment plan will fall back to a normal auto-renew
  /// subscription after initial commitment.
  core.int? subsequentCommittedPaymentsCount;

  InstallmentPlan({
    this.initialCommittedPaymentsCount,
    this.pendingCancellation,
    this.remainingCommittedPaymentsCount,
    this.subsequentCommittedPaymentsCount,
  });

  InstallmentPlan.fromJson(core.Map json_)
    : this(
        initialCommittedPaymentsCount:
            json_['initialCommittedPaymentsCount'] as core.int?,
        pendingCancellation: json_.containsKey('pendingCancellation')
            ? PendingCancellation.fromJson(
                json_['pendingCancellation']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        remainingCommittedPaymentsCount:
            json_['remainingCommittedPaymentsCount'] as core.int?,
        subsequentCommittedPaymentsCount:
            json_['subsequentCommittedPaymentsCount'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final initialCommittedPaymentsCount = this.initialCommittedPaymentsCount;
    final pendingCancellation = this.pendingCancellation;
    final remainingCommittedPaymentsCount =
        this.remainingCommittedPaymentsCount;
    final subsequentCommittedPaymentsCount =
        this.subsequentCommittedPaymentsCount;
    return {
      'initialCommittedPaymentsCount': ?initialCommittedPaymentsCount,
      'pendingCancellation': ?pendingCancellation,
      'remainingCommittedPaymentsCount': ?remainingCommittedPaymentsCount,
      'subsequentCommittedPaymentsCount': ?subsequentCommittedPaymentsCount,
    };
  }
}

/// Represents an installments base plan where a user commits to a specified
/// number of payments.
class InstallmentsBasePlanType {
  /// Custom account hold period of the subscription, specified in ISO 8601
  /// format.
  ///
  /// Acceptable values must be in days and between P0D and P60D. An empty field
  /// represents a recommended account hold, calculated as 60 days minus grace
  /// period. The sum of gracePeriodDuration and accountHoldDuration must be
  /// between P30D and P60D days, inclusive.
  ///
  /// Optional.
  core.String? accountHoldDuration;

  /// Subscription period, specified in ISO 8601 format.
  ///
  /// For a list of acceptable billing periods, refer to the help center. The
  /// duration is immutable after the base plan is created.
  ///
  /// Required. Immutable.
  core.String? billingPeriodDuration;

  /// The number of payments the user is committed to.
  ///
  /// It is immutable after the base plan is created.
  ///
  /// Required. Immutable.
  core.int? committedPaymentsCount;

  /// Grace period of the subscription, specified in ISO 8601 format.
  ///
  /// Acceptable values must be in days and between P0D and the lesser of 30D
  /// and base plan billing period. If not specified, a default value will be
  /// used based on the billing period. The sum of gracePeriodDuration and
  /// accountHoldDuration must be between P30D and P60D days, inclusive.
  core.String? gracePeriodDuration;

  /// The proration mode for the base plan determines what happens when a user
  /// switches to this plan from another base plan.
  ///
  /// If unspecified, defaults to CHARGE_ON_NEXT_BILLING_DATE.
  /// Possible string values are:
  /// - "SUBSCRIPTION_PRORATION_MODE_UNSPECIFIED" : Unspecified mode.
  /// - "SUBSCRIPTION_PRORATION_MODE_CHARGE_ON_NEXT_BILLING_DATE" : Users will
  /// be charged for their new base plan at the end of their current billing
  /// period.
  /// - "SUBSCRIPTION_PRORATION_MODE_CHARGE_FULL_PRICE_IMMEDIATELY" : Users will
  /// be charged for their new base plan immediately and in full. Any remaining
  /// period of their existing subscription will be used to extend the duration
  /// of the new billing plan.
  core.String? prorationMode;

  /// Installments base plan renewal type.
  ///
  /// Determines the behavior at the end of the initial commitment. The renewal
  /// type is immutable after the base plan is created.
  ///
  /// Required. Immutable.
  /// Possible string values are:
  /// - "RENEWAL_TYPE_UNSPECIFIED" : Unspecified state.
  /// - "RENEWAL_TYPE_RENEWS_WITHOUT_COMMITMENT" : Renews periodically for the
  /// billing period duration without commitment.
  /// - "RENEWAL_TYPE_RENEWS_WITH_COMMITMENT" : Renews with the commitment of
  /// the same duration as the initial one.
  core.String? renewalType;

  /// Whether users should be able to resubscribe to this base plan in Google
  /// Play surfaces.
  ///
  /// Defaults to RESUBSCRIBE_STATE_ACTIVE if not specified.
  /// Possible string values are:
  /// - "RESUBSCRIBE_STATE_UNSPECIFIED" : Unspecified state.
  /// - "RESUBSCRIBE_STATE_ACTIVE" : Resubscribe is active.
  /// - "RESUBSCRIBE_STATE_INACTIVE" : Resubscribe is inactive.
  core.String? resubscribeState;

  InstallmentsBasePlanType({
    this.accountHoldDuration,
    this.billingPeriodDuration,
    this.committedPaymentsCount,
    this.gracePeriodDuration,
    this.prorationMode,
    this.renewalType,
    this.resubscribeState,
  });

  InstallmentsBasePlanType.fromJson(core.Map json_)
    : this(
        accountHoldDuration: json_['accountHoldDuration'] as core.String?,
        billingPeriodDuration: json_['billingPeriodDuration'] as core.String?,
        committedPaymentsCount: json_['committedPaymentsCount'] as core.int?,
        gracePeriodDuration: json_['gracePeriodDuration'] as core.String?,
        prorationMode: json_['prorationMode'] as core.String?,
        renewalType: json_['renewalType'] as core.String?,
        resubscribeState: json_['resubscribeState'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final accountHoldDuration = this.accountHoldDuration;
    final billingPeriodDuration = this.billingPeriodDuration;
    final committedPaymentsCount = this.committedPaymentsCount;
    final gracePeriodDuration = this.gracePeriodDuration;
    final prorationMode = this.prorationMode;
    final renewalType = this.renewalType;
    final resubscribeState = this.resubscribeState;
    return {
      'accountHoldDuration': ?accountHoldDuration,
      'billingPeriodDuration': ?billingPeriodDuration,
      'committedPaymentsCount': ?committedPaymentsCount,
      'gracePeriodDuration': ?gracePeriodDuration,
      'prorationMode': ?prorationMode,
      'renewalType': ?renewalType,
      'resubscribeState': ?resubscribeState,
    };
  }
}

/// An artifact resource which gets created when uploading an APK or Android App
/// Bundle through internal app sharing.
class InternalAppSharingArtifact {
  /// The sha256 fingerprint of the certificate used to sign the generated
  /// artifact.
  core.String? certificateFingerprint;

  /// The download URL generated for the uploaded artifact.
  ///
  /// Users that are authorized to download can follow the link to the Play
  /// Store app to install it.
  core.String? downloadUrl;

  /// The sha256 hash of the artifact represented as a lowercase hexadecimal
  /// number, matching the output of the sha256sum command.
  core.String? sha256;

  InternalAppSharingArtifact({
    this.certificateFingerprint,
    this.downloadUrl,
    this.sha256,
  });

  InternalAppSharingArtifact.fromJson(core.Map json_)
    : this(
        certificateFingerprint: json_['certificateFingerprint'] as core.String?,
        downloadUrl: json_['downloadUrl'] as core.String?,
        sha256: json_['sha256'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final certificateFingerprint = this.certificateFingerprint;
    final downloadUrl = this.downloadUrl;
    final sha256 = this.sha256;
    return {
      'certificateFingerprint': ?certificateFingerprint,
      'downloadUrl': ?downloadUrl,
      'sha256': ?sha256,
    };
  }
}

/// Details of an introductory price pricing phase.
typedef IntroductoryPriceDetails = $Empty;

/// Contains the introductory price information for a subscription.
class IntroductoryPriceInfo {
  /// Introductory price of the subscription, not including tax.
  ///
  /// The currency is the same as price_currency_code. Price is expressed in
  /// micro-units, where 1,000,000 micro-units represents one unit of the
  /// currency. For example, if the subscription price is €1.99,
  /// price_amount_micros is 1990000.
  core.String? introductoryPriceAmountMicros;

  /// ISO 4217 currency code for the introductory subscription price.
  ///
  /// For example, if the price is specified in British pounds sterling,
  /// price_currency_code is "GBP".
  core.String? introductoryPriceCurrencyCode;

  /// The number of billing period to offer introductory pricing.
  core.int? introductoryPriceCycles;

  /// Introductory price period, specified in ISO 8601 format.
  ///
  /// Common values are (but not limited to) "P1W" (one week), "P1M" (one
  /// month), "P3M" (three months), "P6M" (six months), and "P1Y" (one year).
  core.String? introductoryPricePeriod;

  IntroductoryPriceInfo({
    this.introductoryPriceAmountMicros,
    this.introductoryPriceCurrencyCode,
    this.introductoryPriceCycles,
    this.introductoryPricePeriod,
  });

  IntroductoryPriceInfo.fromJson(core.Map json_)
    : this(
        introductoryPriceAmountMicros:
            json_['introductoryPriceAmountMicros'] as core.String?,
        introductoryPriceCurrencyCode:
            json_['introductoryPriceCurrencyCode'] as core.String?,
        introductoryPriceCycles: json_['introductoryPriceCycles'] as core.int?,
        introductoryPricePeriod:
            json_['introductoryPricePeriod'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final introductoryPriceAmountMicros = this.introductoryPriceAmountMicros;
    final introductoryPriceCurrencyCode = this.introductoryPriceCurrencyCode;
    final introductoryPriceCycles = this.introductoryPriceCycles;
    final introductoryPricePeriod = this.introductoryPricePeriod;
    return {
      'introductoryPriceAmountMicros': ?introductoryPriceAmountMicros,
      'introductoryPriceCurrencyCode': ?introductoryPriceCurrencyCode,
      'introductoryPriceCycles': ?introductoryPriceCycles,
      'introductoryPricePeriod': ?introductoryPricePeriod,
    };
  }
}

/// Details about introductory price offer phase.
typedef IntroductoryPriceOfferPhase = $Empty;

/// Expiry time details of a subscription item.
class ItemExpiryTimeDetails {
  /// The new expiry time for this subscription item.
  core.String? expiryTime;

  /// The product ID of the subscription item (for example, 'premium_plan').
  core.String? productId;

  ItemExpiryTimeDetails({this.expiryTime, this.productId});

  ItemExpiryTimeDetails.fromJson(core.Map json_)
    : this(
        expiryTime: json_['expiryTime'] as core.String?,
        productId: json_['productId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final expiryTime = this.expiryTime;
    final productId = this.productId;
    return {'expiryTime': ?expiryTime, 'productId': ?productId};
  }
}

/// Details about a subscription line item that is being replaced.
class ItemReplacement {
  /// The base plan ID of the subscription line item being replaced.
  core.String? basePlanId;

  /// The offer ID of the subscription line item being replaced, if applicable.
  core.String? offerId;

  /// The product ID of the subscription line item being replaced.
  core.String? productId;

  /// The replacement mode applied during the purchase.
  /// Possible string values are:
  /// - "REPLACEMENT_MODE_UNSPECIFIED" : Unspecified replacement mode.
  /// - "WITH_TIME_PRORATION" : The new plan will be prorated and credited from
  /// the old plan.
  /// - "CHARGE_PRORATED_PRICE" : The user will be charged a prorated price for
  /// the new plan.
  /// - "WITHOUT_PRORATION" : The new plan will replace the old one without
  /// prorating the time.
  /// - "CHARGE_FULL_PRICE" : The user will be charged the full price for the
  /// new plan.
  /// - "DEFERRED" : The old plan will be cancelled and the new plan will be
  /// effective after the old one expires.
  /// - "KEEP_EXISTING" : The plan will remain unchanged with this replacement.
  core.String? replacementMode;

  ItemReplacement({
    this.basePlanId,
    this.offerId,
    this.productId,
    this.replacementMode,
  });

  ItemReplacement.fromJson(core.Map json_)
    : this(
        basePlanId: json_['basePlanId'] as core.String?,
        offerId: json_['offerId'] as core.String?,
        productId: json_['productId'] as core.String?,
        replacementMode: json_['replacementMode'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final basePlanId = this.basePlanId;
    final offerId = this.offerId;
    final productId = this.productId;
    final replacementMode = this.replacementMode;
    return {
      'basePlanId': ?basePlanId,
      'offerId': ?offerId,
      'productId': ?productId,
      'replacementMode': ?replacementMode,
    };
  }
}

/// Targeting based on language.
class LanguageTargeting {
  /// Alternative languages.
  core.List<core.String>? alternatives;

  /// ISO-639: 2 or 3 letter language code.
  core.List<core.String>? value;

  LanguageTargeting({this.alternatives, this.value});

  LanguageTargeting.fromJson(core.Map json_)
    : this(
        alternatives: (json_['alternatives'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        value: (json_['value'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final alternatives = this.alternatives;
    final value = this.value;
    return {'alternatives': ?alternatives, 'value': ?value};
  }
}

/// Details of a line item.
class LineItem {
  /// Item's listed price on Play Store, this may or may not include tax.
  ///
  /// Excludes Google-funded discounts only.
  Money? listingPrice;

  /// Details of a one-time purchase.
  OneTimePurchaseDetails? oneTimePurchaseDetails;

  /// Details of a paid app purchase.
  PaidAppDetails? paidAppDetails;

  /// The purchased product ID or in-app SKU (for example, 'monthly001' or
  /// 'com.some.thing.inapp1').
  core.String? productId;

  /// Developer-specified name of the product.
  ///
  /// Displayed in buyer's locale. Example: coins, monthly subscription, etc.
  core.String? productTitle;

  /// Details of a subscription purchase.
  SubscriptionDetails? subscriptionDetails;

  /// The tax paid for this line item.
  Money? tax;

  /// The total amount paid by the user for this line item, taking into account
  /// discounts and tax.
  Money? total;

  LineItem({
    this.listingPrice,
    this.oneTimePurchaseDetails,
    this.paidAppDetails,
    this.productId,
    this.productTitle,
    this.subscriptionDetails,
    this.tax,
    this.total,
  });

  LineItem.fromJson(core.Map json_)
    : this(
        listingPrice: json_.containsKey('listingPrice')
            ? Money.fromJson(
                json_['listingPrice'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        oneTimePurchaseDetails: json_.containsKey('oneTimePurchaseDetails')
            ? OneTimePurchaseDetails.fromJson(
                json_['oneTimePurchaseDetails']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        paidAppDetails: json_.containsKey('paidAppDetails')
            ? PaidAppDetails.fromJson(
                json_['paidAppDetails'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        productId: json_['productId'] as core.String?,
        productTitle: json_['productTitle'] as core.String?,
        subscriptionDetails: json_.containsKey('subscriptionDetails')
            ? SubscriptionDetails.fromJson(
                json_['subscriptionDetails']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        tax: json_.containsKey('tax')
            ? Money.fromJson(
                json_['tax'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        total: json_.containsKey('total')
            ? Money.fromJson(
                json_['total'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final listingPrice = this.listingPrice;
    final oneTimePurchaseDetails = this.oneTimePurchaseDetails;
    final paidAppDetails = this.paidAppDetails;
    final productId = this.productId;
    final productTitle = this.productTitle;
    final subscriptionDetails = this.subscriptionDetails;
    final tax = this.tax;
    final total = this.total;
    return {
      'listingPrice': ?listingPrice,
      'oneTimePurchaseDetails': ?oneTimePurchaseDetails,
      'paidAppDetails': ?paidAppDetails,
      'productId': ?productId,
      'productTitle': ?productTitle,
      'subscriptionDetails': ?subscriptionDetails,
      'tax': ?tax,
      'total': ?total,
    };
  }
}

/// Response message for ListAppRecoveries.
///
/// -- api-linter: core::0158::response-next-page-token-field=disabled
class ListAppRecoveriesResponse {
  /// List of recovery actions associated with the requested package name.
  core.List<AppRecoveryAction>? recoveryActions;

  ListAppRecoveriesResponse({this.recoveryActions});

  ListAppRecoveriesResponse.fromJson(core.Map json_)
    : this(
        recoveryActions: (json_['recoveryActions'] as core.List?)
            ?.map(
              (value) => AppRecoveryAction.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final recoveryActions = this.recoveryActions;
    return {'recoveryActions': ?recoveryActions};
  }
}

/// Response listing existing device tier configs.
class ListDeviceTierConfigsResponse {
  /// Device tier configs created by the developer.
  core.List<DeviceTierConfig>? deviceTierConfigs;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  ListDeviceTierConfigsResponse({this.deviceTierConfigs, this.nextPageToken});

  ListDeviceTierConfigsResponse.fromJson(core.Map json_)
    : this(
        deviceTierConfigs: (json_['deviceTierConfigs'] as core.List?)
            ?.map(
              (value) => DeviceTierConfig.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final deviceTierConfigs = this.deviceTierConfigs;
    final nextPageToken = this.nextPageToken;
    return {
      'deviceTierConfigs': ?deviceTierConfigs,
      'nextPageToken': ?nextPageToken,
    };
  }
}

/// Response message for ListOneTimeProductOffers.
class ListOneTimeProductOffersResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// The one_time_product offers from the specified request.
  core.List<OneTimeProductOffer>? oneTimeProductOffers;

  ListOneTimeProductOffersResponse({
    this.nextPageToken,
    this.oneTimeProductOffers,
  });

  ListOneTimeProductOffersResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        oneTimeProductOffers: (json_['oneTimeProductOffers'] as core.List?)
            ?.map(
              (value) => OneTimeProductOffer.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final oneTimeProductOffers = this.oneTimeProductOffers;
    return {
      'nextPageToken': ?nextPageToken,
      'oneTimeProductOffers': ?oneTimeProductOffers,
    };
  }
}

/// Response message for ListOneTimeProducts.
class ListOneTimeProductsResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// The one-time products from the specified app.
  core.List<OneTimeProduct>? oneTimeProducts;

  ListOneTimeProductsResponse({this.nextPageToken, this.oneTimeProducts});

  ListOneTimeProductsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        oneTimeProducts: (json_['oneTimeProducts'] as core.List?)
            ?.map(
              (value) => OneTimeProduct.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final oneTimeProducts = this.oneTimeProducts;
    return {
      'nextPageToken': ?nextPageToken,
      'oneTimeProducts': ?oneTimeProducts,
    };
  }
}

/// Response message for ListSubscriptionOffers.
class ListSubscriptionOffersResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// The subscription offers from the specified subscription.
  core.List<SubscriptionOffer>? subscriptionOffers;

  ListSubscriptionOffersResponse({this.nextPageToken, this.subscriptionOffers});

  ListSubscriptionOffersResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        subscriptionOffers: (json_['subscriptionOffers'] as core.List?)
            ?.map(
              (value) => SubscriptionOffer.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final subscriptionOffers = this.subscriptionOffers;
    return {
      'nextPageToken': ?nextPageToken,
      'subscriptionOffers': ?subscriptionOffers,
    };
  }
}

/// Response message for ListSubscriptions.
class ListSubscriptionsResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// The subscriptions from the specified app.
  core.List<Subscription>? subscriptions;

  ListSubscriptionsResponse({this.nextPageToken, this.subscriptions});

  ListSubscriptionsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        subscriptions: (json_['subscriptions'] as core.List?)
            ?.map(
              (value) => Subscription.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final subscriptions = this.subscriptions;
    return {'nextPageToken': ?nextPageToken, 'subscriptions': ?subscriptions};
  }
}

/// A response containing one or more users with access to an account.
class ListUsersResponse {
  /// A token to pass to subsequent calls in order to retrieve subsequent
  /// results.
  ///
  /// This will not be set if there are no more results to return.
  core.String? nextPageToken;

  /// The resulting users.
  core.List<User>? users;

  ListUsersResponse({this.nextPageToken, this.users});

  ListUsersResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        users: (json_['users'] as core.List?)
            ?.map(
              (value) =>
                  User.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final users = this.users;
    return {'nextPageToken': ?nextPageToken, 'users': ?users};
  }
}

/// A localized store listing.
///
/// The resource for ListingsService.
class Listing {
  /// Full description of the app.
  core.String? fullDescription;

  /// Language localization code (a BCP-47 language tag; for example, "de-AT"
  /// for Austrian German).
  core.String? language;

  /// Short description of the app.
  core.String? shortDescription;

  /// Localized title of the app.
  core.String? title;

  /// URL of a promotional YouTube video for the app.
  core.String? video;

  Listing({
    this.fullDescription,
    this.language,
    this.shortDescription,
    this.title,
    this.video,
  });

  Listing.fromJson(core.Map json_)
    : this(
        fullDescription: json_['fullDescription'] as core.String?,
        language: json_['language'] as core.String?,
        shortDescription: json_['shortDescription'] as core.String?,
        title: json_['title'] as core.String?,
        video: json_['video'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final fullDescription = this.fullDescription;
    final language = this.language;
    final shortDescription = this.shortDescription;
    final title = this.title;
    final video = this.video;
    return {
      'fullDescription': ?fullDescription,
      'language': ?language,
      'shortDescription': ?shortDescription,
      'title': ?title,
      'video': ?video,
    };
  }
}

/// Response listing all localized listings.
class ListingsListResponse {
  /// The kind of this response ("androidpublisher#listingsListResponse").
  core.String? kind;

  /// All localized listings.
  core.List<Listing>? listings;

  ListingsListResponse({this.kind, this.listings});

  ListingsListResponse.fromJson(core.Map json_)
    : this(
        kind: json_['kind'] as core.String?,
        listings: (json_['listings'] as core.List?)
            ?.map(
              (value) => Listing.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final kind = this.kind;
    final listings = this.listings;
    return {'kind': ?kind, 'listings': ?listings};
  }
}

/// Localized text in given language.
class LocalizedText {
  /// Language localization code (a BCP-47 language tag; for example, "de-AT"
  /// for Austrian German).
  core.String? language;

  /// The text in the given language.
  core.String? text;

  LocalizedText({this.language, this.text});

  LocalizedText.fromJson(core.Map json_)
    : this(
        language: json_['language'] as core.String?,
        text: json_['text'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final language = this.language;
    final text = this.text;
    return {'language': ?language, 'text': ?text};
  }
}

/// Details about taxation and legal compliance for managed products.
class ManagedProductTaxAndComplianceSettings {
  /// Digital content or service classification for products distributed to
  /// users in the European Economic Area (EEA).
  ///
  /// The withdrawal regime under EEA consumer laws depends on this
  /// classification. Refer to the
  /// [Help Center article](https://support.google.com/googleplay/android-developer/answer/10463498)
  /// for more information.
  /// Possible string values are:
  /// - "WITHDRAWAL_RIGHT_TYPE_UNSPECIFIED"
  /// - "WITHDRAWAL_RIGHT_DIGITAL_CONTENT"
  /// - "WITHDRAWAL_RIGHT_SERVICE"
  core.String? eeaWithdrawalRightType;

  /// Whether this in-app product is declared as a product representing a
  /// tokenized digital asset.
  core.bool? isTokenizedDigitalAsset;

  /// Product tax category code to assign to the in-app product.
  ///
  /// Product tax category determines the transaction tax rates applied to the
  /// product. Refer to the
  /// [Help Center article](https://support.google.com/googleplay/android-developer/answer/16408159)
  /// for more information.
  core.String? productTaxCategoryCode;

  /// Regional age rating information.
  ///
  /// Currently this field is only supported for region code `US`.
  core.List<RegionalProductAgeRatingInfo>? regionalProductAgeRatingInfos;

  /// A mapping from region code to tax rate details.
  ///
  /// The keys are region codes as defined by Unicode's "CLDR".
  core.Map<core.String, RegionalTaxRateInfo>? taxRateInfoByRegionCode;

  ManagedProductTaxAndComplianceSettings({
    this.eeaWithdrawalRightType,
    this.isTokenizedDigitalAsset,
    this.productTaxCategoryCode,
    this.regionalProductAgeRatingInfos,
    this.taxRateInfoByRegionCode,
  });

  ManagedProductTaxAndComplianceSettings.fromJson(core.Map json_)
    : this(
        eeaWithdrawalRightType: json_['eeaWithdrawalRightType'] as core.String?,
        isTokenizedDigitalAsset: json_['isTokenizedDigitalAsset'] as core.bool?,
        productTaxCategoryCode: json_['productTaxCategoryCode'] as core.String?,
        regionalProductAgeRatingInfos:
            (json_['regionalProductAgeRatingInfos'] as core.List?)
                ?.map(
                  (value) => RegionalProductAgeRatingInfo.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        taxRateInfoByRegionCode:
            (json_['taxRateInfoByRegionCode']
                    as core.Map<core.String, core.dynamic>?)
                ?.map(
                  (key, value) => core.MapEntry(
                    key,
                    RegionalTaxRateInfo.fromJson(
                      value as core.Map<core.String, core.dynamic>,
                    ),
                  ),
                ),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final eeaWithdrawalRightType = this.eeaWithdrawalRightType;
    final isTokenizedDigitalAsset = this.isTokenizedDigitalAsset;
    final productTaxCategoryCode = this.productTaxCategoryCode;
    final regionalProductAgeRatingInfos = this.regionalProductAgeRatingInfos;
    final taxRateInfoByRegionCode = this.taxRateInfoByRegionCode;
    return {
      'eeaWithdrawalRightType': ?eeaWithdrawalRightType,
      'isTokenizedDigitalAsset': ?isTokenizedDigitalAsset,
      'productTaxCategoryCode': ?productTaxCategoryCode,
      'regionalProductAgeRatingInfos': ?regionalProductAgeRatingInfos,
      'taxRateInfoByRegionCode': ?taxRateInfoByRegionCode,
    };
  }
}

/// Request message for MigrateBasePlanPrices.
class MigrateBasePlanPricesRequest {
  /// The unique base plan ID of the base plan to update prices on.
  ///
  /// Required.
  core.String? basePlanId;

  /// The latency tolerance for the propagation of this product update.
  ///
  /// Defaults to latency-sensitive.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "PRODUCT_UPDATE_LATENCY_TOLERANCE_UNSPECIFIED" : Defaults to
  /// PRODUCT_UPDATE_LATENCY_TOLERANCE_LATENCY_SENSITIVE.
  /// - "PRODUCT_UPDATE_LATENCY_TOLERANCE_LATENCY_SENSITIVE" : The update will
  /// propagate to clients within several minutes on average and up to a few
  /// hours in rare cases. Throughput is limited to 7,200 updates per app per
  /// hour.
  /// - "PRODUCT_UPDATE_LATENCY_TOLERANCE_LATENCY_TOLERANT" : The update will
  /// propagate to clients within 24 hours. Supports high throughput of up to
  /// 720,000 updates per app per hour using batch modification methods.
  core.String? latencyTolerance;

  /// Package name of the parent app.
  ///
  /// Must be equal to the package_name field on the Subscription resource.
  ///
  /// Required.
  core.String? packageName;

  /// The ID of the subscription to update.
  ///
  /// Must be equal to the product_id field on the Subscription resource.
  ///
  /// Required.
  core.String? productId;

  /// The regional prices to update.
  ///
  /// Required.
  core.List<RegionalPriceMigrationConfig>? regionalPriceMigrations;

  /// The version of the available regions being used for the
  /// regional_price_migrations.
  ///
  /// Required.
  RegionsVersion? regionsVersion;

  MigrateBasePlanPricesRequest({
    this.basePlanId,
    this.latencyTolerance,
    this.packageName,
    this.productId,
    this.regionalPriceMigrations,
    this.regionsVersion,
  });

  MigrateBasePlanPricesRequest.fromJson(core.Map json_)
    : this(
        basePlanId: json_['basePlanId'] as core.String?,
        latencyTolerance: json_['latencyTolerance'] as core.String?,
        packageName: json_['packageName'] as core.String?,
        productId: json_['productId'] as core.String?,
        regionalPriceMigrations:
            (json_['regionalPriceMigrations'] as core.List?)
                ?.map(
                  (value) => RegionalPriceMigrationConfig.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        regionsVersion: json_.containsKey('regionsVersion')
            ? RegionsVersion.fromJson(
                json_['regionsVersion'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final basePlanId = this.basePlanId;
    final latencyTolerance = this.latencyTolerance;
    final packageName = this.packageName;
    final productId = this.productId;
    final regionalPriceMigrations = this.regionalPriceMigrations;
    final regionsVersion = this.regionsVersion;
    return {
      'basePlanId': ?basePlanId,
      'latencyTolerance': ?latencyTolerance,
      'packageName': ?packageName,
      'productId': ?productId,
      'regionalPriceMigrations': ?regionalPriceMigrations,
      'regionsVersion': ?regionsVersion,
    };
  }
}

/// Response message for MigrateBasePlanPrices.
typedef MigrateBasePlanPricesResponse = $Empty;

/// Metadata of a module.
class ModuleMetadata {
  /// Indicates the delivery type (e.g. on-demand) of the module.
  /// Possible string values are:
  /// - "UNKNOWN_DELIVERY_TYPE" : Unspecified delivery type.
  /// - "INSTALL_TIME" : This module will always be downloaded as part of the
  /// initial install of the app.
  /// - "ON_DEMAND" : This module is requested on-demand, which means it will
  /// not be part of the initial install, and will only be sent when requested
  /// by the client.
  /// - "FAST_FOLLOW" : This module will be downloaded immediately after initial
  /// install finishes. The app can be opened before these modules are
  /// downloaded.
  core.String? deliveryType;

  /// Names of the modules that this module directly depends on.
  ///
  /// Each module implicitly depends on the base module.
  core.List<core.String>? dependencies;

  /// Indicates the type of this feature module.
  /// Possible string values are:
  /// - "UNKNOWN_MODULE_TYPE" : Unknown feature module.
  /// - "FEATURE_MODULE" : Regular feature module.
  core.String? moduleType;

  /// Module name.
  core.String? name;

  /// The targeting that makes a conditional module installed.
  ///
  /// Relevant only for Split APKs.
  ModuleTargeting? targeting;

  ModuleMetadata({
    this.deliveryType,
    this.dependencies,
    this.moduleType,
    this.name,
    this.targeting,
  });

  ModuleMetadata.fromJson(core.Map json_)
    : this(
        deliveryType: json_['deliveryType'] as core.String?,
        dependencies: (json_['dependencies'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        moduleType: json_['moduleType'] as core.String?,
        name: json_['name'] as core.String?,
        targeting: json_.containsKey('targeting')
            ? ModuleTargeting.fromJson(
                json_['targeting'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final deliveryType = this.deliveryType;
    final dependencies = this.dependencies;
    final moduleType = this.moduleType;
    final name = this.name;
    final targeting = this.targeting;
    return {
      'deliveryType': ?deliveryType,
      'dependencies': ?dependencies,
      'moduleType': ?moduleType,
      'name': ?name,
      'targeting': ?targeting,
    };
  }
}

/// Targeting on the module level.
class ModuleTargeting {
  /// Targeting for device features.
  core.List<DeviceFeatureTargeting>? deviceFeatureTargeting;

  /// The sdk version that the variant targets
  SdkVersionTargeting? sdkVersionTargeting;

  /// Countries-level targeting
  UserCountriesTargeting? userCountriesTargeting;

  ModuleTargeting({
    this.deviceFeatureTargeting,
    this.sdkVersionTargeting,
    this.userCountriesTargeting,
  });

  ModuleTargeting.fromJson(core.Map json_)
    : this(
        deviceFeatureTargeting: (json_['deviceFeatureTargeting'] as core.List?)
            ?.map(
              (value) => DeviceFeatureTargeting.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        sdkVersionTargeting: json_.containsKey('sdkVersionTargeting')
            ? SdkVersionTargeting.fromJson(
                json_['sdkVersionTargeting']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        userCountriesTargeting: json_.containsKey('userCountriesTargeting')
            ? UserCountriesTargeting.fromJson(
                json_['userCountriesTargeting']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final deviceFeatureTargeting = this.deviceFeatureTargeting;
    final sdkVersionTargeting = this.sdkVersionTargeting;
    final userCountriesTargeting = this.userCountriesTargeting;
    return {
      'deviceFeatureTargeting': ?deviceFeatureTargeting,
      'sdkVersionTargeting': ?sdkVersionTargeting,
      'userCountriesTargeting': ?userCountriesTargeting,
    };
  }
}

/// Represents an amount of money with its currency type.
typedef Money = $Money;

/// Represents a list of ABIs.
class MultiAbi {
  /// A list of targeted ABIs, as represented by the Android Platform
  core.List<Abi>? abi;

  MultiAbi({this.abi});

  MultiAbi.fromJson(core.Map json_)
    : this(
        abi: (json_['abi'] as core.List?)
            ?.map(
              (value) =>
                  Abi.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final abi = this.abi;
    return {'abi': ?abi};
  }
}

/// Targeting based on multiple abis.
class MultiAbiTargeting {
  /// Targeting of other sibling directories that were in the Bundle.
  ///
  /// For main splits this is targeting of other main splits.
  core.List<MultiAbi>? alternatives;

  /// Value of a multi abi.
  core.List<MultiAbi>? value;

  MultiAbiTargeting({this.alternatives, this.value});

  MultiAbiTargeting.fromJson(core.Map json_)
    : this(
        alternatives: (json_['alternatives'] as core.List?)
            ?.map(
              (value) => MultiAbi.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        value: (json_['value'] as core.List?)
            ?.map(
              (value) => MultiAbi.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final alternatives = this.alternatives;
    final value = this.value;
    return {'alternatives': ?alternatives, 'value': ?value};
  }
}

/// Offer details information related to a purchase line item.
class OfferDetails {
  /// The base plan ID.
  ///
  /// Present for all base plan and offers.
  core.String? basePlanId;

  /// The offer ID.
  ///
  /// Only present for discounted offers.
  core.String? offerId;

  /// The latest offer tags associated with the offer.
  ///
  /// It includes tags inherited from the base plan.
  core.List<core.String>? offerTags;

  OfferDetails({this.basePlanId, this.offerId, this.offerTags});

  OfferDetails.fromJson(core.Map json_)
    : this(
        basePlanId: json_['basePlanId'] as core.String?,
        offerId: json_['offerId'] as core.String?,
        offerTags: (json_['offerTags'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final basePlanId = this.basePlanId;
    final offerId = this.offerId;
    final offerTags = this.offerTags;
    return {
      'basePlanId': ?basePlanId,
      'offerId': ?offerId,
      'offerTags': ?offerTags,
    };
  }
}

/// Offer phase details.
class OfferPhase {
  /// Set when the offer phase is a base plan pricing phase.
  BasePriceOfferPhase? basePrice;

  /// Set when the offer phase is a free trial.
  FreeTrialOfferPhase? freeTrial;

  /// Set when the offer phase is an introductory price offer phase.
  IntroductoryPriceOfferPhase? introductoryPrice;

  /// Set when the offer phase is a proration period.
  ProrationPeriodOfferPhase? prorationPeriod;

  OfferPhase({
    this.basePrice,
    this.freeTrial,
    this.introductoryPrice,
    this.prorationPeriod,
  });

  OfferPhase.fromJson(core.Map json_)
    : this(
        basePrice: json_.containsKey('basePrice')
            ? BasePriceOfferPhase.fromJson(
                json_['basePrice'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        freeTrial: json_.containsKey('freeTrial')
            ? FreeTrialOfferPhase.fromJson(
                json_['freeTrial'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        introductoryPrice: json_.containsKey('introductoryPrice')
            ? IntroductoryPriceOfferPhase.fromJson(
                json_['introductoryPrice']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        prorationPeriod: json_.containsKey('prorationPeriod')
            ? ProrationPeriodOfferPhase.fromJson(
                json_['prorationPeriod'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final basePrice = this.basePrice;
    final freeTrial = this.freeTrial;
    final introductoryPrice = this.introductoryPrice;
    final prorationPeriod = this.prorationPeriod;
    return {
      'basePrice': ?basePrice,
      'freeTrial': ?freeTrial,
      'introductoryPrice': ?introductoryPrice,
      'prorationPeriod': ?prorationPeriod,
    };
  }
}

/// Details of a pricing phase for the entitlement period funded by this order.
class OfferPhaseDetails {
  /// The order funds a base price period.
  BaseDetails? baseDetails;

  /// The order funds a free trial period.
  FreeTrialDetails? freeTrialDetails;

  /// The order funds an introductory pricing period.
  IntroductoryPriceDetails? introductoryPriceDetails;

  /// The order funds a proration period.
  ProrationPeriodDetails? prorationPeriodDetails;

  OfferPhaseDetails({
    this.baseDetails,
    this.freeTrialDetails,
    this.introductoryPriceDetails,
    this.prorationPeriodDetails,
  });

  OfferPhaseDetails.fromJson(core.Map json_)
    : this(
        baseDetails: json_.containsKey('baseDetails')
            ? BaseDetails.fromJson(
                json_['baseDetails'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        freeTrialDetails: json_.containsKey('freeTrialDetails')
            ? FreeTrialDetails.fromJson(
                json_['freeTrialDetails']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        introductoryPriceDetails: json_.containsKey('introductoryPriceDetails')
            ? IntroductoryPriceDetails.fromJson(
                json_['introductoryPriceDetails']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        prorationPeriodDetails: json_.containsKey('prorationPeriodDetails')
            ? ProrationPeriodDetails.fromJson(
                json_['prorationPeriodDetails']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final baseDetails = this.baseDetails;
    final freeTrialDetails = this.freeTrialDetails;
    final introductoryPriceDetails = this.introductoryPriceDetails;
    final prorationPeriodDetails = this.prorationPeriodDetails;
    return {
      'baseDetails': ?baseDetails,
      'freeTrialDetails': ?freeTrialDetails,
      'introductoryPriceDetails': ?introductoryPriceDetails,
      'prorationPeriodDetails': ?prorationPeriodDetails,
    };
  }
}

/// Represents a custom tag specified for a product offer.
class OfferTag {
  /// Must conform with RFC-1034.
  ///
  /// That is, this string can only contain lower-case letters (a-z), numbers
  /// (0-9), and hyphens (-), and be at most 20 characters.
  core.String? tag;

  OfferTag({this.tag});

  OfferTag.fromJson(core.Map json_) : this(tag: json_['tag'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final tag = this.tag;
    return {'tag': ?tag};
  }
}

/// A single use promotion code.
typedef OneTimeCode = $Empty;

/// Represents a one-time transaction.
class OneTimeExternalTransaction {
  /// Input only.
  ///
  /// Provided during the call to Create. Retrieved from the client when the
  /// alternative billing flow is launched.
  core.String? externalTransactionToken;

  OneTimeExternalTransaction({this.externalTransactionToken});

  OneTimeExternalTransaction.fromJson(core.Map json_)
    : this(
        externalTransactionToken:
            json_['externalTransactionToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final externalTransactionToken = this.externalTransactionToken;
    return {'externalTransactionToken': ?externalTransactionToken};
  }
}

/// A single one-time product for an app.
class OneTimeProduct {
  /// Set of localized title and description data.
  ///
  /// Must not have duplicate entries with the same language_code.
  ///
  /// Required.
  core.List<OneTimeProductListing>? listings;

  /// List of up to 20 custom tags specified for this one-time product, and
  /// returned to the app through the billing library.
  ///
  /// Purchase options and offers for this product will also receive these tags
  /// in the billing library.
  ///
  /// Optional.
  core.List<OfferTag>? offerTags;

  /// Package name of the parent app.
  ///
  /// Required. Immutable.
  core.String? packageName;

  /// Unique product ID of the product.
  ///
  /// Unique within the parent app. Product IDs must start with a number or
  /// lowercase letter, and can contain numbers (0-9), lowercase letters (a-z),
  /// underscores (_), and periods (.).
  ///
  /// Required. Immutable.
  core.String? productId;

  /// The set of purchase options for this one-time product.
  ///
  /// Required.
  core.List<OneTimeProductPurchaseOption>? purchaseOptions;

  /// The version of the regions configuration that was used to generate the
  /// one-time product.
  ///
  /// Output only.
  RegionsVersion? regionsVersion;

  /// Countries where the purchase of this one-time product is restricted to
  /// payment methods registered in the same country.
  ///
  /// If empty, no payment location restrictions are imposed.
  ///
  /// Optional.
  RestrictedPaymentCountries? restrictedPaymentCountries;

  /// Details about taxes and legal compliance.
  OneTimeProductTaxAndComplianceSettings? taxAndComplianceSettings;

  OneTimeProduct({
    this.listings,
    this.offerTags,
    this.packageName,
    this.productId,
    this.purchaseOptions,
    this.regionsVersion,
    this.restrictedPaymentCountries,
    this.taxAndComplianceSettings,
  });

  OneTimeProduct.fromJson(core.Map json_)
    : this(
        listings: (json_['listings'] as core.List?)
            ?.map(
              (value) => OneTimeProductListing.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        offerTags: (json_['offerTags'] as core.List?)
            ?.map(
              (value) => OfferTag.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        packageName: json_['packageName'] as core.String?,
        productId: json_['productId'] as core.String?,
        purchaseOptions: (json_['purchaseOptions'] as core.List?)
            ?.map(
              (value) => OneTimeProductPurchaseOption.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        regionsVersion: json_.containsKey('regionsVersion')
            ? RegionsVersion.fromJson(
                json_['regionsVersion'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        restrictedPaymentCountries:
            json_.containsKey('restrictedPaymentCountries')
            ? RestrictedPaymentCountries.fromJson(
                json_['restrictedPaymentCountries']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        taxAndComplianceSettings: json_.containsKey('taxAndComplianceSettings')
            ? OneTimeProductTaxAndComplianceSettings.fromJson(
                json_['taxAndComplianceSettings']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final listings = this.listings;
    final offerTags = this.offerTags;
    final packageName = this.packageName;
    final productId = this.productId;
    final purchaseOptions = this.purchaseOptions;
    final regionsVersion = this.regionsVersion;
    final restrictedPaymentCountries = this.restrictedPaymentCountries;
    final taxAndComplianceSettings = this.taxAndComplianceSettings;
    return {
      'listings': ?listings,
      'offerTags': ?offerTags,
      'packageName': ?packageName,
      'productId': ?productId,
      'purchaseOptions': ?purchaseOptions,
      'regionsVersion': ?regionsVersion,
      'restrictedPaymentCountries': ?restrictedPaymentCountries,
      'taxAndComplianceSettings': ?taxAndComplianceSettings,
    };
  }
}

/// A purchase option that can be bought.
class OneTimeProductBuyPurchaseOption {
  /// Whether this purchase option will be available in legacy PBL flows that do
  /// not support one-time products model.
  ///
  /// Up to one "buy" purchase option can be marked as backwards compatible.
  ///
  /// Optional.
  core.bool? legacyCompatible;

  /// Whether this purchase option allows multi-quantity.
  ///
  /// Multi-quantity allows buyer to purchase more than one item in a single
  /// checkout.
  ///
  /// Optional.
  core.bool? multiQuantityEnabled;

  OneTimeProductBuyPurchaseOption({
    this.legacyCompatible,
    this.multiQuantityEnabled,
  });

  OneTimeProductBuyPurchaseOption.fromJson(core.Map json_)
    : this(
        legacyCompatible: json_['legacyCompatible'] as core.bool?,
        multiQuantityEnabled: json_['multiQuantityEnabled'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final legacyCompatible = this.legacyCompatible;
    final multiQuantityEnabled = this.multiQuantityEnabled;
    return {
      'legacyCompatible': ?legacyCompatible,
      'multiQuantityEnabled': ?multiQuantityEnabled,
    };
  }
}

/// Configuration specific to discounted offers.
class OneTimeProductDiscountedOffer {
  /// Time when the offer will stop being available.
  core.String? endTime;

  /// The number of times this offer can be redeemed.
  ///
  /// If unset or set to 0, allows for unlimited offer redemptions. Otherwise
  /// must be a number between 1 and 50 inclusive.
  ///
  /// Optional.
  core.String? redemptionLimit;

  /// Time when the offer will start being available.
  core.String? startTime;

  OneTimeProductDiscountedOffer({
    this.endTime,
    this.redemptionLimit,
    this.startTime,
  });

  OneTimeProductDiscountedOffer.fromJson(core.Map json_)
    : this(
        endTime: json_['endTime'] as core.String?,
        redemptionLimit: json_['redemptionLimit'] as core.String?,
        startTime: json_['startTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final endTime = this.endTime;
    final redemptionLimit = this.redemptionLimit;
    final startTime = this.startTime;
    return {
      'endTime': ?endTime,
      'redemptionLimit': ?redemptionLimit,
      'startTime': ?startTime,
    };
  }
}

/// Regional store listing for a one-time product.
class OneTimeProductListing {
  /// The description of this product in the language of this listing.
  ///
  /// The maximum length is 200 characters.
  ///
  /// Required.
  core.String? description;

  /// The language of this listing, as defined by BCP-47, e.g., "en-US".
  ///
  /// Required.
  core.String? languageCode;

  /// The title of this product in the language of this listing.
  ///
  /// The maximum length is 55 characters.
  ///
  /// Required.
  core.String? title;

  OneTimeProductListing({this.description, this.languageCode, this.title});

  OneTimeProductListing.fromJson(core.Map json_)
    : this(
        description: json_['description'] as core.String?,
        languageCode: json_['languageCode'] as core.String?,
        title: json_['title'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final description = this.description;
    final languageCode = this.languageCode;
    final title = this.title;
    return {
      'description': ?description,
      'languageCode': ?languageCode,
      'title': ?title,
    };
  }
}

/// A single offer for a one-time product.
class OneTimeProductOffer {
  /// A discounted offer.
  OneTimeProductDiscountedOffer? discountedOffer;

  /// The ID of this product offer.
  ///
  /// Must be unique within the purchase option. It must start with a number or
  /// lower-case letter, and can only contain lower-case letters (a-z), numbers
  /// (0-9), and hyphens (-). The maximum length is 63 characters.
  ///
  /// Required. Immutable.
  core.String? offerId;

  /// List of up to 20 custom tags specified for this offer, and returned to the
  /// app through the billing library.
  ///
  /// Optional.
  core.List<OfferTag>? offerTags;

  /// The package name of the app the parent product belongs to.
  ///
  /// Required. Immutable.
  core.String? packageName;

  /// A pre-order offer.
  OneTimeProductPreOrderOffer? preOrderOffer;

  /// The ID of the parent product this offer belongs to.
  ///
  /// Required. Immutable.
  core.String? productId;

  /// The ID of the purchase option to which this offer is an extension.
  ///
  /// Required. Immutable.
  core.String? purchaseOptionId;

  /// Set of regional pricing and availability information for this offer.
  ///
  /// Must not have duplicate entries with the same region_code.
  core.List<OneTimeProductOfferRegionalPricingAndAvailabilityConfig>?
  regionalPricingAndAvailabilityConfigs;

  /// The version of the regions configuration that was used to generate the
  /// one-time product offer.
  ///
  /// Output only.
  RegionsVersion? regionsVersion;

  /// The current state of this offer.
  ///
  /// This field cannot be changed by updating the resource. Use the dedicated
  /// endpoints instead.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Default value, should never be used.
  /// - "DRAFT" : The offer is not and has never been available to users.
  /// - "ACTIVE" : The offer is available to users, as long as its conditions
  /// are met.
  /// - "CANCELLED" : This state is specific to pre-orders. The offer is
  /// cancelled and not available to users. All pending orders related to this
  /// offer were cancelled.
  /// - "INACTIVE" : This state is specific to discounted offers. The offer is
  /// no longer available to users.
  core.String? state;

  OneTimeProductOffer({
    this.discountedOffer,
    this.offerId,
    this.offerTags,
    this.packageName,
    this.preOrderOffer,
    this.productId,
    this.purchaseOptionId,
    this.regionalPricingAndAvailabilityConfigs,
    this.regionsVersion,
    this.state,
  });

  OneTimeProductOffer.fromJson(core.Map json_)
    : this(
        discountedOffer: json_.containsKey('discountedOffer')
            ? OneTimeProductDiscountedOffer.fromJson(
                json_['discountedOffer'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        offerId: json_['offerId'] as core.String?,
        offerTags: (json_['offerTags'] as core.List?)
            ?.map(
              (value) => OfferTag.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        packageName: json_['packageName'] as core.String?,
        preOrderOffer: json_.containsKey('preOrderOffer')
            ? OneTimeProductPreOrderOffer.fromJson(
                json_['preOrderOffer'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        productId: json_['productId'] as core.String?,
        purchaseOptionId: json_['purchaseOptionId'] as core.String?,
        regionalPricingAndAvailabilityConfigs:
            (json_['regionalPricingAndAvailabilityConfigs'] as core.List?)
                ?.map(
                  (value) =>
                      OneTimeProductOfferRegionalPricingAndAvailabilityConfig.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        regionsVersion: json_.containsKey('regionsVersion')
            ? RegionsVersion.fromJson(
                json_['regionsVersion'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        state: json_['state'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final discountedOffer = this.discountedOffer;
    final offerId = this.offerId;
    final offerTags = this.offerTags;
    final packageName = this.packageName;
    final preOrderOffer = this.preOrderOffer;
    final productId = this.productId;
    final purchaseOptionId = this.purchaseOptionId;
    final regionalPricingAndAvailabilityConfigs =
        this.regionalPricingAndAvailabilityConfigs;
    final regionsVersion = this.regionsVersion;
    final state = this.state;
    return {
      'discountedOffer': ?discountedOffer,
      'offerId': ?offerId,
      'offerTags': ?offerTags,
      'packageName': ?packageName,
      'preOrderOffer': ?preOrderOffer,
      'productId': ?productId,
      'purchaseOptionId': ?purchaseOptionId,
      'regionalPricingAndAvailabilityConfigs':
          ?regionalPricingAndAvailabilityConfigs,
      'regionsVersion': ?regionsVersion,
      'state': ?state,
    };
  }
}

/// Options for one-time product offers without a regional price override.
typedef OneTimeProductOfferNoPriceOverrideOptions = $Empty;

/// Regional pricing and availability configuration for a one-time product
/// offer.
class OneTimeProductOfferRegionalPricingAndAvailabilityConfig {
  /// The absolute value of the discount that is subtracted from the purchase
  /// option price.
  ///
  /// It should be between 0 and the purchase option price.
  Money? absoluteDiscount;

  /// The availability for this region.
  ///
  /// Required.
  /// Possible string values are:
  /// - "AVAILABILITY_UNSPECIFIED" : Unspecified availability. Must not be used.
  /// - "AVAILABLE" : The offer is available to users.
  /// - "NO_LONGER_AVAILABLE" : The offer is no longer available to users. This
  /// value can only be used if the availability was previously set as
  /// AVAILABLE.
  core.String? availability;

  /// The price defined in the purchase option for this region will be used.
  OneTimeProductOfferNoPriceOverrideOptions? noOverride;

  /// Region code this configuration applies to, as defined by ISO 3166-2, e.g.,
  /// "US".
  ///
  /// Required.
  core.String? regionCode;

  /// The fraction of the purchase option price that the user pays for this
  /// offer.
  ///
  /// For example, if the purchase option price for this region is $12, then a
  /// 50% discount would correspond to a price of $6. The discount must be
  /// specified as a fraction strictly larger than 0 and strictly smaller than
  /// 1. The resulting price will be rounded to the nearest billable unit (e.g.
  /// cents for USD). The relative discount is considered invalid if the
  /// discounted price ends up being smaller than the minimum price allowed in
  /// this region.
  core.double? relativeDiscount;

  OneTimeProductOfferRegionalPricingAndAvailabilityConfig({
    this.absoluteDiscount,
    this.availability,
    this.noOverride,
    this.regionCode,
    this.relativeDiscount,
  });

  OneTimeProductOfferRegionalPricingAndAvailabilityConfig.fromJson(
    core.Map json_,
  ) : this(
        absoluteDiscount: json_.containsKey('absoluteDiscount')
            ? Money.fromJson(
                json_['absoluteDiscount']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        availability: json_['availability'] as core.String?,
        noOverride: json_.containsKey('noOverride')
            ? OneTimeProductOfferNoPriceOverrideOptions.fromJson(
                json_['noOverride'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        regionCode: json_['regionCode'] as core.String?,
        relativeDiscount: (json_['relativeDiscount'] as core.num?)?.toDouble(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final absoluteDiscount = this.absoluteDiscount;
    final availability = this.availability;
    final noOverride = this.noOverride;
    final regionCode = this.regionCode;
    final relativeDiscount = this.relativeDiscount;
    return {
      'absoluteDiscount': ?absoluteDiscount,
      'availability': ?availability,
      'noOverride': ?noOverride,
      'regionCode': ?regionCode,
      'relativeDiscount': ?relativeDiscount,
    };
  }
}

/// Configuration specific to pre-order offers.
class OneTimeProductPreOrderOffer {
  /// Time when the pre-order will stop being available.
  ///
  /// Required.
  core.String? endTime;

  /// Specifies how price changes affect pre-existing pre-orders.
  ///
  /// Required. Immutable.
  /// Possible string values are:
  /// - "PRE_ORDER_PRICE_CHANGE_BEHAVIOR_UNSPECIFIED" : Unspecified price change
  /// behavior. Must not be used.
  /// - "PRE_ORDER_PRICE_CHANGE_BEHAVIOR_TWO_POINT_LOWEST" : The buyer gets
  /// charged the minimum between the initial price at the time of pre-order and
  /// the final offer price on the release date.
  /// - "PRE_ORDER_PRICE_CHANGE_BEHAVIOR_NEW_ORDERS_ONLY" : The buyer gets the
  /// same price as the one they pre-ordered, regardless of any price changes
  /// that may have happened after the pre-order.
  core.String? priceChangeBehavior;

  /// Time on which the product associated with the pre-order will be released
  /// and the pre-order orders fulfilled.
  ///
  /// Required.
  core.String? releaseTime;

  /// Time when the pre-order will start being available.
  ///
  /// Required.
  core.String? startTime;

  OneTimeProductPreOrderOffer({
    this.endTime,
    this.priceChangeBehavior,
    this.releaseTime,
    this.startTime,
  });

  OneTimeProductPreOrderOffer.fromJson(core.Map json_)
    : this(
        endTime: json_['endTime'] as core.String?,
        priceChangeBehavior: json_['priceChangeBehavior'] as core.String?,
        releaseTime: json_['releaseTime'] as core.String?,
        startTime: json_['startTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final endTime = this.endTime;
    final priceChangeBehavior = this.priceChangeBehavior;
    final releaseTime = this.releaseTime;
    final startTime = this.startTime;
    return {
      'endTime': ?endTime,
      'priceChangeBehavior': ?priceChangeBehavior,
      'releaseTime': ?releaseTime,
      'startTime': ?startTime,
    };
  }
}

/// A single purchase option for a one-time product.
class OneTimeProductPurchaseOption {
  /// A purchase option that can be bought.
  OneTimeProductBuyPurchaseOption? buyOption;

  /// Pricing information for any new locations Play may launch in the future.
  ///
  /// If omitted, the purchase option will not be automatically available in any
  /// new locations Play may launch in the future.
  OneTimeProductPurchaseOptionNewRegionsConfig? newRegionsConfig;

  /// List of up to 20 custom tags specified for this purchase option, and
  /// returned to the app through the billing library.
  ///
  /// Offers for this purchase option will also receive these tags in the
  /// billing library.
  ///
  /// Optional.
  core.List<OfferTag>? offerTags;

  /// The unique identifier of this purchase option.
  ///
  /// Must be unique within the one-time product. It must start with a number or
  /// lower-case letter, and can only contain lower-case letters (a-z), numbers
  /// (0-9), and hyphens (-). The maximum length is 63 characters.
  ///
  /// Required. Immutable.
  core.String? purchaseOptionId;

  /// Regional pricing and availability information for this purchase option.
  core.List<OneTimeProductPurchaseOptionRegionalPricingAndAvailabilityConfig>?
  regionalPricingAndAvailabilityConfigs;

  /// A purchase option that can be rented.
  OneTimeProductRentPurchaseOption? rentOption;

  /// The state of the purchase option, i.e., whether it's active.
  ///
  /// This field cannot be changed by updating the resource. Use the dedicated
  /// endpoints instead.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Default value, should never be used.
  /// - "DRAFT" : The purchase option is not and has never been available to
  /// users.
  /// - "ACTIVE" : The purchase option is available to users.
  /// - "INACTIVE" : The purchase option is not available to users anymore.
  /// - "INACTIVE_PUBLISHED" : The purchase option is not available for purchase
  /// anymore, but we continue to expose its offer via the Play Billing Library
  /// for backwards compatibility. Only automatically migrated purchase options
  /// can be in this state.
  core.String? state;

  /// Details about taxes and legal compliance.
  ///
  /// Optional.
  PurchaseOptionTaxAndComplianceSettings? taxAndComplianceSettings;

  OneTimeProductPurchaseOption({
    this.buyOption,
    this.newRegionsConfig,
    this.offerTags,
    this.purchaseOptionId,
    this.regionalPricingAndAvailabilityConfigs,
    this.rentOption,
    this.state,
    this.taxAndComplianceSettings,
  });

  OneTimeProductPurchaseOption.fromJson(core.Map json_)
    : this(
        buyOption: json_.containsKey('buyOption')
            ? OneTimeProductBuyPurchaseOption.fromJson(
                json_['buyOption'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        newRegionsConfig: json_.containsKey('newRegionsConfig')
            ? OneTimeProductPurchaseOptionNewRegionsConfig.fromJson(
                json_['newRegionsConfig']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        offerTags: (json_['offerTags'] as core.List?)
            ?.map(
              (value) => OfferTag.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        purchaseOptionId: json_['purchaseOptionId'] as core.String?,
        regionalPricingAndAvailabilityConfigs:
            (json_['regionalPricingAndAvailabilityConfigs'] as core.List?)
                ?.map(
                  (value) =>
                      OneTimeProductPurchaseOptionRegionalPricingAndAvailabilityConfig.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        rentOption: json_.containsKey('rentOption')
            ? OneTimeProductRentPurchaseOption.fromJson(
                json_['rentOption'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        state: json_['state'] as core.String?,
        taxAndComplianceSettings: json_.containsKey('taxAndComplianceSettings')
            ? PurchaseOptionTaxAndComplianceSettings.fromJson(
                json_['taxAndComplianceSettings']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final buyOption = this.buyOption;
    final newRegionsConfig = this.newRegionsConfig;
    final offerTags = this.offerTags;
    final purchaseOptionId = this.purchaseOptionId;
    final regionalPricingAndAvailabilityConfigs =
        this.regionalPricingAndAvailabilityConfigs;
    final rentOption = this.rentOption;
    final state = this.state;
    final taxAndComplianceSettings = this.taxAndComplianceSettings;
    return {
      'buyOption': ?buyOption,
      'newRegionsConfig': ?newRegionsConfig,
      'offerTags': ?offerTags,
      'purchaseOptionId': ?purchaseOptionId,
      'regionalPricingAndAvailabilityConfigs':
          ?regionalPricingAndAvailabilityConfigs,
      'rentOption': ?rentOption,
      'state': ?state,
      'taxAndComplianceSettings': ?taxAndComplianceSettings,
    };
  }
}

/// Pricing information for any new regions Play may launch in the future.
class OneTimeProductPurchaseOptionNewRegionsConfig {
  /// The regional availability for the new regions config.
  ///
  /// When set to AVAILABLE, the pricing information will be used for any new
  /// regions Play may launch in the future.
  ///
  /// Required.
  /// Possible string values are:
  /// - "AVAILABILITY_UNSPECIFIED" : Unspecified availability. Must not be used.
  /// - "AVAILABLE" : The config will be used for any new regions Play may
  /// launch in the future.
  /// - "NO_LONGER_AVAILABLE" : The config is not available anymore and will not
  /// be used for any new regions Play may launch in the future. This value can
  /// only be used if the availability was previously set as AVAILABLE.
  core.String? availability;

  /// Price in EUR to use for any new regions Play may launch in.
  ///
  /// Required.
  Money? eurPrice;

  /// Price in USD to use for any new regions Play may launch in.
  ///
  /// Required.
  Money? usdPrice;

  OneTimeProductPurchaseOptionNewRegionsConfig({
    this.availability,
    this.eurPrice,
    this.usdPrice,
  });

  OneTimeProductPurchaseOptionNewRegionsConfig.fromJson(core.Map json_)
    : this(
        availability: json_['availability'] as core.String?,
        eurPrice: json_.containsKey('eurPrice')
            ? Money.fromJson(
                json_['eurPrice'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        usdPrice: json_.containsKey('usdPrice')
            ? Money.fromJson(
                json_['usdPrice'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final availability = this.availability;
    final eurPrice = this.eurPrice;
    final usdPrice = this.usdPrice;
    return {
      'availability': ?availability,
      'eurPrice': ?eurPrice,
      'usdPrice': ?usdPrice,
    };
  }
}

/// Regional pricing and availability configuration for a purchase option.
class OneTimeProductPurchaseOptionRegionalPricingAndAvailabilityConfig {
  /// The availability of the purchase option.
  /// Possible string values are:
  /// - "AVAILABILITY_UNSPECIFIED" : Unspecified availability. Must not be used.
  /// - "AVAILABLE" : The purchase option is available to users.
  /// - "NO_LONGER_AVAILABLE" : The purchase option is no longer available to
  /// users. This value can only be used if the availability was previously set
  /// as AVAILABLE.
  /// - "AVAILABLE_IF_RELEASED" : The purchase option is initially unavailable,
  /// but made available via a released pre-order offer.
  /// - "AVAILABLE_FOR_OFFERS_ONLY" : The purchase option is unavailable but
  /// offers linked to it (i.e. Play Points offer) are available.
  core.String? availability;

  /// The price of the purchase option in the specified region.
  ///
  /// Must be set in the currency that is linked to the specified region.
  Money? price;

  /// Region code this configuration applies to, as defined by ISO 3166-2, e.g.,
  /// "US".
  ///
  /// Required.
  core.String? regionCode;

  OneTimeProductPurchaseOptionRegionalPricingAndAvailabilityConfig({
    this.availability,
    this.price,
    this.regionCode,
  });

  OneTimeProductPurchaseOptionRegionalPricingAndAvailabilityConfig.fromJson(
    core.Map json_,
  ) : this(
        availability: json_['availability'] as core.String?,
        price: json_.containsKey('price')
            ? Money.fromJson(
                json_['price'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        regionCode: json_['regionCode'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final availability = this.availability;
    final price = this.price;
    final regionCode = this.regionCode;
    return {
      'availability': ?availability,
      'price': ?price,
      'regionCode': ?regionCode,
    };
  }
}

/// A purchase option that can be rented.
class OneTimeProductRentPurchaseOption {
  /// The amount of time the user has after starting consuming the entitlement
  /// before it is revoked.
  ///
  /// Specified in ISO 8601 format.
  ///
  /// Optional.
  core.String? expirationPeriod;

  /// The amount of time a user has the entitlement for.
  ///
  /// Starts at purchase flow completion. Specified in ISO 8601 format.
  ///
  /// Required.
  core.String? rentalPeriod;

  OneTimeProductRentPurchaseOption({this.expirationPeriod, this.rentalPeriod});

  OneTimeProductRentPurchaseOption.fromJson(core.Map json_)
    : this(
        expirationPeriod: json_['expirationPeriod'] as core.String?,
        rentalPeriod: json_['rentalPeriod'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final expirationPeriod = this.expirationPeriod;
    final rentalPeriod = this.rentalPeriod;
    return {
      'expirationPeriod': ?expirationPeriod,
      'rentalPeriod': ?rentalPeriod,
    };
  }
}

/// Details about taxation, Google Play policy and legal compliance for one-time
/// products.
class OneTimeProductTaxAndComplianceSettings {
  /// Whether this one-time product is declared as a product representing a
  /// tokenized digital asset.
  core.bool? isTokenizedDigitalAsset;

  /// Product tax category code to assign to the one-time product.
  ///
  /// Product tax category determines the transaction tax rates applied to the
  /// product. Refer to the
  /// [Help Center article](https://support.google.com/googleplay/android-developer/answer/16408159)
  /// for more information.
  core.String? productTaxCategoryCode;

  /// Regional age rating information.
  ///
  /// Currently this field is only supported for region code `US`.
  core.List<RegionalProductAgeRatingInfo>? regionalProductAgeRatingInfos;

  /// Regional tax configuration.
  core.List<RegionalTaxConfig>? regionalTaxConfigs;

  OneTimeProductTaxAndComplianceSettings({
    this.isTokenizedDigitalAsset,
    this.productTaxCategoryCode,
    this.regionalProductAgeRatingInfos,
    this.regionalTaxConfigs,
  });

  OneTimeProductTaxAndComplianceSettings.fromJson(core.Map json_)
    : this(
        isTokenizedDigitalAsset: json_['isTokenizedDigitalAsset'] as core.bool?,
        productTaxCategoryCode: json_['productTaxCategoryCode'] as core.String?,
        regionalProductAgeRatingInfos:
            (json_['regionalProductAgeRatingInfos'] as core.List?)
                ?.map(
                  (value) => RegionalProductAgeRatingInfo.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        regionalTaxConfigs: (json_['regionalTaxConfigs'] as core.List?)
            ?.map(
              (value) => RegionalTaxConfig.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final isTokenizedDigitalAsset = this.isTokenizedDigitalAsset;
    final productTaxCategoryCode = this.productTaxCategoryCode;
    final regionalProductAgeRatingInfos = this.regionalProductAgeRatingInfos;
    final regionalTaxConfigs = this.regionalTaxConfigs;
    return {
      'isTokenizedDigitalAsset': ?isTokenizedDigitalAsset,
      'productTaxCategoryCode': ?productTaxCategoryCode,
      'regionalProductAgeRatingInfos': ?regionalProductAgeRatingInfos,
      'regionalTaxConfigs': ?regionalTaxConfigs,
    };
  }
}

/// Details of a one-time purchase.
class OneTimePurchaseDetails {
  /// The offer ID of the one-time purchase offer.
  core.String? offerId;

  /// The details of a pre-order purchase.
  ///
  /// Only set if it is a pre-order purchase. Note that this field will be set
  /// even after pre-order is fulfilled.
  PreorderDetails? preorderDetails;

  /// ID of the purchase option.
  ///
  /// This field is set for both purchase options and variant offers. For
  /// purchase options, this ID identifies the purchase option itself. For
  /// variant offers, this ID refers to the associated purchase option, and in
  /// conjunction with offer_id it identifies the variant offer.
  core.String? purchaseOptionId;

  /// The number of items purchased (for multi-quantity item purchases).
  core.int? quantity;

  /// The details of a rent purchase.
  ///
  /// Only set if it is a rent purchase.
  RentalDetails? rentalDetails;

  OneTimePurchaseDetails({
    this.offerId,
    this.preorderDetails,
    this.purchaseOptionId,
    this.quantity,
    this.rentalDetails,
  });

  OneTimePurchaseDetails.fromJson(core.Map json_)
    : this(
        offerId: json_['offerId'] as core.String?,
        preorderDetails: json_.containsKey('preorderDetails')
            ? PreorderDetails.fromJson(
                json_['preorderDetails'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        purchaseOptionId: json_['purchaseOptionId'] as core.String?,
        quantity: json_['quantity'] as core.int?,
        rentalDetails: json_.containsKey('rentalDetails')
            ? RentalDetails.fromJson(
                json_['rentalDetails'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final offerId = this.offerId;
    final preorderDetails = this.preorderDetails;
    final purchaseOptionId = this.purchaseOptionId;
    final quantity = this.quantity;
    final rentalDetails = this.rentalDetails;
    return {
      'offerId': ?offerId,
      'preorderDetails': ?preorderDetails,
      'purchaseOptionId': ?purchaseOptionId,
      'quantity': ?quantity,
      'rentalDetails': ?rentalDetails,
    };
  }
}

/// The Order resource encapsulates comprehensive information about a
/// transaction made on Google Play.
///
/// It includes a variety of attributes that provide details about the order
/// itself, the products purchased, and the history of events related to the
/// order. The Orders APIs provide real-time access to your order data within
/// the Google Play ecosystem. You can retrieve detailed information and
/// metadata for both one-time and recurring orders, including transaction
/// details like charges, taxes, and refunds, as well as metadata such as
/// pricing phases for subscriptions. The Orders APIs let you automate tasks
/// related to order management, reducing the need for manual checks via the
/// Play Developer Console. The following are some of the use cases for this
/// API: + Real-time order data retrieval - Get order details and metadata
/// immediately after a purchase using an order ID. + Order update
/// synchronization - Periodically sync order updates to maintain an up-to-date
/// record of order information. Note: + The Orders API calls count towards your
/// Play Developer API quota, which defaults to 200K daily, and may be
/// insufficient to sync extensive order histories. + A maximum of 1000 orders
/// can be retrieved per call. Using larger page sizes is recommended to
/// minimize quota usage. Check your quota in the Cloud Console and request more
/// if required.
class Order {
  /// Address information for the customer, for use in tax computation.
  ///
  /// When Google is the Merchant of Record for the order, only country is
  /// shown.
  BuyerAddress? buyerAddress;

  /// The time when the order was created.
  core.String? createTime;

  /// Your revenue for this order in the buyer's currency, including deductions
  /// of partial refunds, taxes and fees.
  ///
  /// Google deducts standard transaction and third party fees from each sale,
  /// including VAT in some regions.
  Money? developerRevenueInBuyerCurrency;

  /// The time of the last event that occurred on the order.
  core.String? lastEventTime;

  /// The individual line items making up this order.
  core.List<LineItem>? lineItems;

  /// Detailed information about the order at creation time.
  OrderDetails? orderDetails;

  /// Details about events which modified the order.
  OrderHistory? orderHistory;

  /// The order ID.
  core.String? orderId;

  /// Play points applied to the order, including offer information, discount
  /// rate and point values.
  PointsDetails? pointsDetails;

  /// The token provided to the user's device when the subscription or item was
  /// purchased.
  core.String? purchaseToken;

  /// The originating sales channel of the order.
  /// Possible string values are:
  /// - "SALES_CHANNEL_UNSPECIFIED" : Sales channel unspecified. This value is
  /// not used.
  /// - "IN_APP" : Standard orders that initiated from in-app.
  /// - "PC_EMULATOR" : Orders initiated from a PC emulator for in-app
  /// purchases.
  /// - "NATIVE_PC" : Orders initiated from a native PC app for in-app
  /// purchases.
  /// - "PLAY_STORE" : Orders initiated from the Google Play store.
  /// - "OUTSIDE_PLAY_STORE" : Orders initiated outside the Google Play store.
  core.String? salesChannel;

  /// The state of the order.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : State unspecified. This value is not used.
  /// - "PENDING" : Order has been created and is waiting to be processed.
  /// - "PROCESSED" : Order has been successfully processed.
  /// - "CANCELED" : Order was canceled before being processed.
  /// - "PENDING_REFUND" : Requested refund is waiting to be processed.
  /// - "PARTIALLY_REFUNDED" : Part of the order amount was refunded.
  /// - "REFUNDED" : The full order amount was refunded.
  core.String? state;

  /// The total tax paid as a part of this order.
  Money? tax;

  /// The final amount paid by the customer, taking into account discounts and
  /// taxes.
  Money? total;

  Order({
    this.buyerAddress,
    this.createTime,
    this.developerRevenueInBuyerCurrency,
    this.lastEventTime,
    this.lineItems,
    this.orderDetails,
    this.orderHistory,
    this.orderId,
    this.pointsDetails,
    this.purchaseToken,
    this.salesChannel,
    this.state,
    this.tax,
    this.total,
  });

  Order.fromJson(core.Map json_)
    : this(
        buyerAddress: json_.containsKey('buyerAddress')
            ? BuyerAddress.fromJson(
                json_['buyerAddress'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        createTime: json_['createTime'] as core.String?,
        developerRevenueInBuyerCurrency:
            json_.containsKey('developerRevenueInBuyerCurrency')
            ? Money.fromJson(
                json_['developerRevenueInBuyerCurrency']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        lastEventTime: json_['lastEventTime'] as core.String?,
        lineItems: (json_['lineItems'] as core.List?)
            ?.map(
              (value) => LineItem.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        orderDetails: json_.containsKey('orderDetails')
            ? OrderDetails.fromJson(
                json_['orderDetails'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        orderHistory: json_.containsKey('orderHistory')
            ? OrderHistory.fromJson(
                json_['orderHistory'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        orderId: json_['orderId'] as core.String?,
        pointsDetails: json_.containsKey('pointsDetails')
            ? PointsDetails.fromJson(
                json_['pointsDetails'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        purchaseToken: json_['purchaseToken'] as core.String?,
        salesChannel: json_['salesChannel'] as core.String?,
        state: json_['state'] as core.String?,
        tax: json_.containsKey('tax')
            ? Money.fromJson(
                json_['tax'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        total: json_.containsKey('total')
            ? Money.fromJson(
                json_['total'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final buyerAddress = this.buyerAddress;
    final createTime = this.createTime;
    final developerRevenueInBuyerCurrency =
        this.developerRevenueInBuyerCurrency;
    final lastEventTime = this.lastEventTime;
    final lineItems = this.lineItems;
    final orderDetails = this.orderDetails;
    final orderHistory = this.orderHistory;
    final orderId = this.orderId;
    final pointsDetails = this.pointsDetails;
    final purchaseToken = this.purchaseToken;
    final salesChannel = this.salesChannel;
    final state = this.state;
    final tax = this.tax;
    final total = this.total;
    return {
      'buyerAddress': ?buyerAddress,
      'createTime': ?createTime,
      'developerRevenueInBuyerCurrency': ?developerRevenueInBuyerCurrency,
      'lastEventTime': ?lastEventTime,
      'lineItems': ?lineItems,
      'orderDetails': ?orderDetails,
      'orderHistory': ?orderHistory,
      'orderId': ?orderId,
      'pointsDetails': ?pointsDetails,
      'purchaseToken': ?purchaseToken,
      'salesChannel': ?salesChannel,
      'state': ?state,
      'tax': ?tax,
      'total': ?total,
    };
  }
}

/// Detailed information about the order at creation time.
class OrderDetails {
  /// Indicates whether the listed price was tax inclusive or not.
  core.bool? taxInclusive;

  OrderDetails({this.taxInclusive});

  OrderDetails.fromJson(core.Map json_)
    : this(taxInclusive: json_['taxInclusive'] as core.bool?);

  core.Map<core.String, core.dynamic> toJson() {
    final taxInclusive = this.taxInclusive;
    return {'taxInclusive': ?taxInclusive};
  }
}

/// Details about events which modified the order.
class OrderHistory {
  /// Details of when the order was canceled.
  CancellationEvent? cancellationEvent;

  /// Details of the partial refund events for this order.
  core.List<PartialRefundEvent>? partialRefundEvents;

  /// Details of when the order was processed.
  ProcessedEvent? processedEvent;

  /// Details of when the order was fully refunded.
  RefundEvent? refundEvent;

  OrderHistory({
    this.cancellationEvent,
    this.partialRefundEvents,
    this.processedEvent,
    this.refundEvent,
  });

  OrderHistory.fromJson(core.Map json_)
    : this(
        cancellationEvent: json_.containsKey('cancellationEvent')
            ? CancellationEvent.fromJson(
                json_['cancellationEvent']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        partialRefundEvents: (json_['partialRefundEvents'] as core.List?)
            ?.map(
              (value) => PartialRefundEvent.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        processedEvent: json_.containsKey('processedEvent')
            ? ProcessedEvent.fromJson(
                json_['processedEvent'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        refundEvent: json_.containsKey('refundEvent')
            ? RefundEvent.fromJson(
                json_['refundEvent'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final cancellationEvent = this.cancellationEvent;
    final partialRefundEvents = this.partialRefundEvents;
    final processedEvent = this.processedEvent;
    final refundEvent = this.refundEvent;
    return {
      'cancellationEvent': ?cancellationEvent,
      'partialRefundEvents': ?partialRefundEvents,
      'processedEvent': ?processedEvent,
      'refundEvent': ?refundEvent,
    };
  }
}

/// Details of a recurring external transaction product which doesn't belong to
/// any other more specific category.
typedef OtherRecurringProduct = $Empty;

/// Pricing information for any new locations Play may launch in.
class OtherRegionsBasePlanConfig {
  /// Price in EUR to use for any new locations Play may launch in.
  ///
  /// Required.
  Money? eurPrice;

  /// Whether the base plan is available for new subscribers in any new
  /// locations Play may launch in.
  ///
  /// If not specified, this will default to false.
  core.bool? newSubscriberAvailability;

  /// Price in USD to use for any new locations Play may launch in.
  ///
  /// Required.
  Money? usdPrice;

  OtherRegionsBasePlanConfig({
    this.eurPrice,
    this.newSubscriberAvailability,
    this.usdPrice,
  });

  OtherRegionsBasePlanConfig.fromJson(core.Map json_)
    : this(
        eurPrice: json_.containsKey('eurPrice')
            ? Money.fromJson(
                json_['eurPrice'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        newSubscriberAvailability:
            json_['newSubscriberAvailability'] as core.bool?,
        usdPrice: json_.containsKey('usdPrice')
            ? Money.fromJson(
                json_['usdPrice'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final eurPrice = this.eurPrice;
    final newSubscriberAvailability = this.newSubscriberAvailability;
    final usdPrice = this.usdPrice;
    return {
      'eurPrice': ?eurPrice,
      'newSubscriberAvailability': ?newSubscriberAvailability,
      'usdPrice': ?usdPrice,
    };
  }
}

/// Configuration for any new locations Play may launch in specified on a
/// subscription offer.
class OtherRegionsSubscriptionOfferConfig {
  /// Whether the subscription offer in any new locations Play may launch in the
  /// future.
  ///
  /// If not specified, this will default to false.
  core.bool? otherRegionsNewSubscriberAvailability;

  OtherRegionsSubscriptionOfferConfig({
    this.otherRegionsNewSubscriberAvailability,
  });

  OtherRegionsSubscriptionOfferConfig.fromJson(core.Map json_)
    : this(
        otherRegionsNewSubscriberAvailability:
            json_['otherRegionsNewSubscriberAvailability'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final otherRegionsNewSubscriberAvailability =
        this.otherRegionsNewSubscriberAvailability;
    return {
      'otherRegionsNewSubscriberAvailability':
          ?otherRegionsNewSubscriberAvailability,
    };
  }
}

/// Configuration for any new locations Play may launch in for a single offer
/// phase.
class OtherRegionsSubscriptionOfferPhaseConfig {
  /// The absolute amount of money subtracted from the base plan price prorated
  /// over the phase duration that the user pays for this offer phase.
  ///
  /// For example, if the base plan price for this region is $12 for a period of
  /// 1 year, then a $1 absolute discount for a phase of a duration of 3 months
  /// would correspond to a price of $2. The resulting price may not be smaller
  /// than the minimum price allowed for any new locations Play may launch in.
  OtherRegionsSubscriptionOfferPhasePrices? absoluteDiscounts;

  /// Set to specify this offer is free to obtain.
  OtherRegionsSubscriptionOfferPhaseFreePriceOverride? free;

  /// The absolute price the user pays for this offer phase.
  ///
  /// The price must not be smaller than the minimum price allowed for any new
  /// locations Play may launch in.
  OtherRegionsSubscriptionOfferPhasePrices? otherRegionsPrices;

  /// The fraction of the base plan price prorated over the phase duration that
  /// the user pays for this offer phase.
  ///
  /// For example, if the base plan price for this region is $12 for a period of
  /// 1 year, then a 50% discount for a phase of a duration of 3 months would
  /// correspond to a price of $1.50. The discount must be specified as a
  /// fraction strictly larger than 0 and strictly smaller than 1. The resulting
  /// price will be rounded to the nearest billable unit (e.g. cents for USD).
  /// The relative discount is considered invalid if the discounted price ends
  /// up being smaller than the minimum price allowed in any new locations Play
  /// may launch in.
  core.double? relativeDiscount;

  OtherRegionsSubscriptionOfferPhaseConfig({
    this.absoluteDiscounts,
    this.free,
    this.otherRegionsPrices,
    this.relativeDiscount,
  });

  OtherRegionsSubscriptionOfferPhaseConfig.fromJson(core.Map json_)
    : this(
        absoluteDiscounts: json_.containsKey('absoluteDiscounts')
            ? OtherRegionsSubscriptionOfferPhasePrices.fromJson(
                json_['absoluteDiscounts']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        free: json_.containsKey('free')
            ? OtherRegionsSubscriptionOfferPhaseFreePriceOverride.fromJson(
                json_['free'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        otherRegionsPrices: json_.containsKey('otherRegionsPrices')
            ? OtherRegionsSubscriptionOfferPhasePrices.fromJson(
                json_['otherRegionsPrices']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        relativeDiscount: (json_['relativeDiscount'] as core.num?)?.toDouble(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final absoluteDiscounts = this.absoluteDiscounts;
    final free = this.free;
    final otherRegionsPrices = this.otherRegionsPrices;
    final relativeDiscount = this.relativeDiscount;
    return {
      'absoluteDiscounts': ?absoluteDiscounts,
      'free': ?free,
      'otherRegionsPrices': ?otherRegionsPrices,
      'relativeDiscount': ?relativeDiscount,
    };
  }
}

/// Represents the free price override configuration for any new locations Play
/// may launch for a single offer phase.
typedef OtherRegionsSubscriptionOfferPhaseFreePriceOverride = $Empty;

/// Pricing information for any new locations Play may launch in.
class OtherRegionsSubscriptionOfferPhasePrices {
  /// Price in EUR to use for any new locations Play may launch in.
  ///
  /// Required.
  Money? eurPrice;

  /// Price in USD to use for any new locations Play may launch in.
  ///
  /// Required.
  Money? usdPrice;

  OtherRegionsSubscriptionOfferPhasePrices({this.eurPrice, this.usdPrice});

  OtherRegionsSubscriptionOfferPhasePrices.fromJson(core.Map json_)
    : this(
        eurPrice: json_.containsKey('eurPrice')
            ? Money.fromJson(
                json_['eurPrice'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        usdPrice: json_.containsKey('usdPrice')
            ? Money.fromJson(
                json_['usdPrice'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final eurPrice = this.eurPrice;
    final usdPrice = this.usdPrice;
    return {'eurPrice': ?eurPrice, 'usdPrice': ?usdPrice};
  }
}

/// Information specific to an out of app purchase.
class OutOfAppPurchaseContext {
  /// User account identifier from the last expired subscription for this SKU.
  ExternalAccountIdentifiers? expiredExternalAccountIdentifiers;

  /// The purchase token of the last expired subscription.
  ///
  /// This purchase token must only be used to help identify the user if the
  /// link between the purchaseToken and user is stored in your database. This
  /// cannot be used to call the Google Developer API if it has been more than
  /// 60 days since expiry.
  core.String? expiredPurchaseToken;

  OutOfAppPurchaseContext({
    this.expiredExternalAccountIdentifiers,
    this.expiredPurchaseToken,
  });

  OutOfAppPurchaseContext.fromJson(core.Map json_)
    : this(
        expiredExternalAccountIdentifiers:
            json_.containsKey('expiredExternalAccountIdentifiers')
            ? ExternalAccountIdentifiers.fromJson(
                json_['expiredExternalAccountIdentifiers']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        expiredPurchaseToken: json_['expiredPurchaseToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final expiredExternalAccountIdentifiers =
        this.expiredExternalAccountIdentifiers;
    final expiredPurchaseToken = this.expiredPurchaseToken;
    return {
      'expiredExternalAccountIdentifiers': ?expiredExternalAccountIdentifiers,
      'expiredPurchaseToken': ?expiredPurchaseToken,
    };
  }
}

/// Information about the current page.
///
/// List operations that supports paging return only one "page" of results. This
/// protocol buffer message describes the page that has been returned.
typedef PageInfo = $PageInfo;

/// Details of a paid app purchase.
typedef PaidAppDetails = $Empty;

/// A partial refund of a transaction.
class PartialRefund {
  /// A unique id distinguishing this partial refund.
  ///
  /// If the refund is successful, subsequent refunds with the same id will
  /// fail. Must be unique across refunds for one individual transaction.
  ///
  /// Required.
  core.String? refundId;

  /// The pre-tax amount of the partial refund.
  ///
  /// Should be less than the remaining pre-tax amount of the transaction.
  ///
  /// Required.
  Price? refundPreTaxAmount;

  PartialRefund({this.refundId, this.refundPreTaxAmount});

  PartialRefund.fromJson(core.Map json_)
    : this(
        refundId: json_['refundId'] as core.String?,
        refundPreTaxAmount: json_.containsKey('refundPreTaxAmount')
            ? Price.fromJson(
                json_['refundPreTaxAmount']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final refundId = this.refundId;
    final refundPreTaxAmount = this.refundPreTaxAmount;
    return {'refundId': ?refundId, 'refundPreTaxAmount': ?refundPreTaxAmount};
  }
}

/// Details of the partial refund events for this order.
class PartialRefundEvent {
  /// The time when the partial refund was created.
  core.String? createTime;

  /// The time when the partial refund was processed.
  core.String? processTime;

  /// Details for the partial refund.
  RefundDetails? refundDetails;

  /// The state of the partial refund.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : State unspecified. This value is not used.
  /// - "PENDING" : The partial refund has been created, but not yet processed.
  /// - "PROCESSED_SUCCESSFULLY" : The partial refund was processed
  /// successfully.
  core.String? state;

  PartialRefundEvent({
    this.createTime,
    this.processTime,
    this.refundDetails,
    this.state,
  });

  PartialRefundEvent.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        processTime: json_['processTime'] as core.String?,
        refundDetails: json_.containsKey('refundDetails')
            ? RefundDetails.fromJson(
                json_['refundDetails'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        state: json_['state'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final createTime = this.createTime;
    final processTime = this.processTime;
    final refundDetails = this.refundDetails;
    final state = this.state;
    return {
      'createTime': ?createTime,
      'processTime': ?processTime,
      'refundDetails': ?refundDetails,
      'state': ?state,
    };
  }
}

/// Information specific to a subscription in paused state.
class PausedStateContext {
  /// Time at which the subscription will be automatically resumed.
  core.String? autoResumeTime;

  PausedStateContext({this.autoResumeTime});

  PausedStateContext.fromJson(core.Map json_)
    : this(autoResumeTime: json_['autoResumeTime'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final autoResumeTime = this.autoResumeTime;
    return {'autoResumeTime': ?autoResumeTime};
  }
}

/// This is an indicator of whether there is a pending cancellation on the
/// virtual installment plan.
///
/// The cancellation will happen only after the user finished all committed
/// payments.
typedef PendingCancellation = $Empty;

/// Details relating to any Play Points applied to an order.
class PointsDetails {
  /// The monetary value of a Play Points coupon.
  ///
  /// This is the discount the coupon provides, which may not be the total
  /// amount. Only set when Play Points coupons have been used. E.g. for a 100
  /// points for $2 coupon, this is $2.
  Money? pointsCouponValue;

  /// The percentage rate which the Play Points promotion reduces the cost by.
  ///
  /// E.g. for a 100 points for $2 coupon, this is 500,000. Since $2 has an
  /// estimate of 200 points, but the actual Points required, 100, is 50% of
  /// this, and 50% in micros is 500,000. Between 0 and 1,000,000.
  core.String? pointsDiscountRateMicros;

  /// ID unique to the play points offer in use for this order.
  core.String? pointsOfferId;

  /// The number of Play Points applied in this order.
  ///
  /// E.g. for a 100 points for $2 coupon, this is 100. For coupon stacked with
  /// base offer, this is the total points spent across both.
  core.String? pointsSpent;

  PointsDetails({
    this.pointsCouponValue,
    this.pointsDiscountRateMicros,
    this.pointsOfferId,
    this.pointsSpent,
  });

  PointsDetails.fromJson(core.Map json_)
    : this(
        pointsCouponValue: json_.containsKey('pointsCouponValue')
            ? Money.fromJson(
                json_['pointsCouponValue']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        pointsDiscountRateMicros:
            json_['pointsDiscountRateMicros'] as core.String?,
        pointsOfferId: json_['pointsOfferId'] as core.String?,
        pointsSpent: json_['pointsSpent'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final pointsCouponValue = this.pointsCouponValue;
    final pointsDiscountRateMicros = this.pointsDiscountRateMicros;
    final pointsOfferId = this.pointsOfferId;
    final pointsSpent = this.pointsSpent;
    return {
      'pointsCouponValue': ?pointsCouponValue,
      'pointsDiscountRateMicros': ?pointsDiscountRateMicros,
      'pointsOfferId': ?pointsOfferId,
      'pointsSpent': ?pointsSpent,
    };
  }
}

/// Details of a pre-order purchase.
typedef PreorderDetails = $Empty;

/// Offer details information related to a preorder line item.
class PreorderOfferDetails {
  /// The time when a preordered item is released for a preorder purchase.
  core.String? preorderReleaseTime;

  PreorderOfferDetails({this.preorderReleaseTime});

  PreorderOfferDetails.fromJson(core.Map json_)
    : this(preorderReleaseTime: json_['preorderReleaseTime'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final preorderReleaseTime = this.preorderReleaseTime;
    return {'preorderReleaseTime': ?preorderReleaseTime};
  }
}

/// Represents a base plan that does not automatically renew at the end of the
/// base plan, and must be manually renewed by the user.
class PrepaidBasePlanType {
  /// Subscription period, specified in ISO 8601 format.
  ///
  /// For a list of acceptable billing periods, refer to the help center. The
  /// duration is immutable after the base plan is created.
  ///
  /// Required. Immutable.
  core.String? billingPeriodDuration;

  /// Whether users should be able to extend this prepaid base plan in Google
  /// Play surfaces.
  ///
  /// Defaults to TIME_EXTENSION_ACTIVE if not specified.
  /// Possible string values are:
  /// - "TIME_EXTENSION_UNSPECIFIED" : Unspecified state.
  /// - "TIME_EXTENSION_ACTIVE" : Time extension is active. Users are allowed to
  /// top-up or extend their prepaid plan.
  /// - "TIME_EXTENSION_INACTIVE" : Time extension is inactive. Users cannot
  /// top-up or extend their prepaid plan.
  core.String? timeExtension;

  PrepaidBasePlanType({this.billingPeriodDuration, this.timeExtension});

  PrepaidBasePlanType.fromJson(core.Map json_)
    : this(
        billingPeriodDuration: json_['billingPeriodDuration'] as core.String?,
        timeExtension: json_['timeExtension'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final billingPeriodDuration = this.billingPeriodDuration;
    final timeExtension = this.timeExtension;
    return {
      'billingPeriodDuration': ?billingPeriodDuration,
      'timeExtension': ?timeExtension,
    };
  }
}

/// Information related to a prepaid plan.
class PrepaidPlan {
  /// If present, this is the time after which top up purchases are allowed for
  /// the prepaid plan.
  ///
  /// Will not be present for expired prepaid plans.
  core.String? allowExtendAfterTime;

  PrepaidPlan({this.allowExtendAfterTime});

  PrepaidPlan.fromJson(core.Map json_)
    : this(allowExtendAfterTime: json_['allowExtendAfterTime'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final allowExtendAfterTime = this.allowExtendAfterTime;
    return {'allowExtendAfterTime': ?allowExtendAfterTime};
  }
}

/// Definition of a price, i.e. currency and units.
class Price {
  /// 3 letter Currency code, as defined by ISO 4217.
  ///
  /// See java/com/google/common/money/CurrencyCode.java
  core.String? currency;

  /// Price in 1/million of the currency base unit, represented as a string.
  core.String? priceMicros;

  Price({this.currency, this.priceMicros});

  Price.fromJson(core.Map json_)
    : this(
        currency: json_['currency'] as core.String?,
        priceMicros: json_['priceMicros'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final currency = this.currency;
    final priceMicros = this.priceMicros;
    return {'currency': ?currency, 'priceMicros': ?priceMicros};
  }
}

/// Information related to a price step-up that requires user consent.
class PriceStepUpConsentDetails {
  /// The deadline by which the user must provide consent.
  ///
  /// If consent is not provided by this time, the subscription will be
  /// canceled.
  core.String? consentDeadlineTime;

  /// The new price which requires user consent.
  Money? newPrice;

  /// The state of the price step-up consent.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "CONSENT_STATE_UNSPECIFIED" : Unspecified consent state.
  /// - "PENDING" : The user has not yet provided consent.
  /// - "CONFIRMED" : The user has consented, and the new price is waiting to
  /// take effect.
  /// - "COMPLETED" : The user has consented, and the new price has taken
  /// effect.
  core.String? state;

  PriceStepUpConsentDetails({
    this.consentDeadlineTime,
    this.newPrice,
    this.state,
  });

  PriceStepUpConsentDetails.fromJson(core.Map json_)
    : this(
        consentDeadlineTime: json_['consentDeadlineTime'] as core.String?,
        newPrice: json_.containsKey('newPrice')
            ? Money.fromJson(
                json_['newPrice'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        state: json_['state'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final consentDeadlineTime = this.consentDeadlineTime;
    final newPrice = this.newPrice;
    final state = this.state;
    return {
      'consentDeadlineTime': ?consentDeadlineTime,
      'newPrice': ?newPrice,
      'state': ?state,
    };
  }
}

/// Details of when the order was processed.
class ProcessedEvent {
  /// The time when the order was processed.
  core.String? eventTime;

  ProcessedEvent({this.eventTime});

  ProcessedEvent.fromJson(core.Map json_)
    : this(eventTime: json_['eventTime'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final eventTime = this.eventTime;
    return {'eventTime': ?eventTime};
  }
}

/// Contains item-level info for a ProductPurchaseV2.
class ProductLineItem {
  /// The purchased product ID (for example, 'monthly001').
  core.String? productId;

  /// The offer details for this item.
  ProductOfferDetails? productOfferDetails;

  ProductLineItem({this.productId, this.productOfferDetails});

  ProductLineItem.fromJson(core.Map json_)
    : this(
        productId: json_['productId'] as core.String?,
        productOfferDetails: json_.containsKey('productOfferDetails')
            ? ProductOfferDetails.fromJson(
                json_['productOfferDetails']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final productId = this.productId;
    final productOfferDetails = this.productOfferDetails;
    return {
      'productId': ?productId,
      'productOfferDetails': ?productOfferDetails,
    };
  }
}

/// Offer details information related to a purchase line item.
class ProductOfferDetails {
  /// The consumption state of the purchase.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "CONSUMPTION_STATE_UNSPECIFIED" : Consumption state unspecified. This
  /// value should never be set.
  /// - "CONSUMPTION_STATE_YET_TO_BE_CONSUMED" : Yet to be consumed.
  /// - "CONSUMPTION_STATE_CONSUMED" : Consumed already.
  core.String? consumptionState;

  /// The offer ID.
  ///
  /// Only present for offers.
  core.String? offerId;

  /// The latest offer tags associated with the offer.
  ///
  /// It includes tags inherited from the purchase option.
  core.List<core.String>? offerTags;

  /// The per-transaction offer token used to make this purchase line item.
  core.String? offerToken;

  /// Offer details for a preorder offer.
  ///
  /// This will only be set for preorders.
  PreorderOfferDetails? preorderOfferDetails;

  /// The purchase option ID.
  core.String? purchaseOptionId;

  /// The quantity associated with the purchase of the inapp product.
  core.int? quantity;

  /// The quantity eligible for refund, i.e. quantity that hasn't been refunded.
  ///
  /// The value reflects quantity-based partial refunds and full refunds.
  core.int? refundableQuantity;

  /// Offer details about rent offers.
  ///
  /// This will only be set for rental line items.
  RentOfferDetails? rentOfferDetails;

  ProductOfferDetails({
    this.consumptionState,
    this.offerId,
    this.offerTags,
    this.offerToken,
    this.preorderOfferDetails,
    this.purchaseOptionId,
    this.quantity,
    this.refundableQuantity,
    this.rentOfferDetails,
  });

  ProductOfferDetails.fromJson(core.Map json_)
    : this(
        consumptionState: json_['consumptionState'] as core.String?,
        offerId: json_['offerId'] as core.String?,
        offerTags: (json_['offerTags'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        offerToken: json_['offerToken'] as core.String?,
        preorderOfferDetails: json_.containsKey('preorderOfferDetails')
            ? PreorderOfferDetails.fromJson(
                json_['preorderOfferDetails']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        purchaseOptionId: json_['purchaseOptionId'] as core.String?,
        quantity: json_['quantity'] as core.int?,
        refundableQuantity: json_['refundableQuantity'] as core.int?,
        rentOfferDetails: json_.containsKey('rentOfferDetails')
            ? RentOfferDetails.fromJson(
                json_['rentOfferDetails']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final consumptionState = this.consumptionState;
    final offerId = this.offerId;
    final offerTags = this.offerTags;
    final offerToken = this.offerToken;
    final preorderOfferDetails = this.preorderOfferDetails;
    final purchaseOptionId = this.purchaseOptionId;
    final quantity = this.quantity;
    final refundableQuantity = this.refundableQuantity;
    final rentOfferDetails = this.rentOfferDetails;
    return {
      'consumptionState': ?consumptionState,
      'offerId': ?offerId,
      'offerTags': ?offerTags,
      'offerToken': ?offerToken,
      'preorderOfferDetails': ?preorderOfferDetails,
      'purchaseOptionId': ?purchaseOptionId,
      'quantity': ?quantity,
      'refundableQuantity': ?refundableQuantity,
      'rentOfferDetails': ?rentOfferDetails,
    };
  }
}

/// A ProductPurchase resource indicates the status of a user's inapp product
/// purchase.
class ProductPurchase {
  /// The acknowledgement state of the inapp product.
  ///
  /// Possible values are: 0. Yet to be acknowledged 1. Acknowledged
  core.int? acknowledgementState;

  /// The consumption state of the inapp product.
  ///
  /// Possible values are: 0. Yet to be consumed 1. Consumed
  core.int? consumptionState;

  /// A developer-specified string that contains supplemental information about
  /// an order.
  core.String? developerPayload;

  /// This kind represents an inappPurchase object in the androidpublisher
  /// service.
  core.String? kind;

  /// An obfuscated version of the id that is uniquely associated with the
  /// user's account in your app.
  ///
  /// Only present if specified using
  /// https://developer.android.com/reference/com/android/billingclient/api/BillingFlowParams.Builder#setobfuscatedaccountid
  /// when the purchase was made.
  core.String? obfuscatedExternalAccountId;

  /// An obfuscated version of the id that is uniquely associated with the
  /// user's profile in your app.
  ///
  /// Only present if specified using
  /// https://developer.android.com/reference/com/android/billingclient/api/BillingFlowParams.Builder#setobfuscatedprofileid
  /// when the purchase was made.
  core.String? obfuscatedExternalProfileId;

  /// The order id associated with the purchase of the inapp product.
  core.String? orderId;

  /// The inapp product SKU.
  ///
  /// May not be present.
  core.String? productId;

  /// The purchase state of the order.
  ///
  /// Possible values are: 0. Purchased 1. Canceled 2. Pending
  core.int? purchaseState;

  /// The time the product was purchased, in milliseconds since the epoch (Jan
  /// 1, 1970).
  core.String? purchaseTimeMillis;

  /// The purchase token generated to identify this purchase.
  ///
  /// May not be present.
  core.String? purchaseToken;

  /// The type of purchase of the inapp product.
  ///
  /// This field is only set if this purchase was not made using the standard
  /// in-app billing flow. Possible values are: 0. Test (i.e. purchased from a
  /// license testing account) 1. Promo (i.e. purchased using a promo code).
  /// Does not include Play Points purchases. 2. Rewarded (i.e. from watching a
  /// video ad instead of paying)
  core.int? purchaseType;

  /// The quantity associated with the purchase of the inapp product.
  ///
  /// If not present, the quantity is 1.
  core.int? quantity;

  /// The quantity eligible for refund, i.e. quantity that hasn't been refunded.
  ///
  /// The value reflects quantity-based partial refunds and full refunds.
  core.int? refundableQuantity;

  /// ISO 3166-1 alpha-2 billing region code of the user at the time the product
  /// was granted.
  core.String? regionCode;

  ProductPurchase({
    this.acknowledgementState,
    this.consumptionState,
    this.developerPayload,
    this.kind,
    this.obfuscatedExternalAccountId,
    this.obfuscatedExternalProfileId,
    this.orderId,
    this.productId,
    this.purchaseState,
    this.purchaseTimeMillis,
    this.purchaseToken,
    this.purchaseType,
    this.quantity,
    this.refundableQuantity,
    this.regionCode,
  });

  ProductPurchase.fromJson(core.Map json_)
    : this(
        acknowledgementState: json_['acknowledgementState'] as core.int?,
        consumptionState: json_['consumptionState'] as core.int?,
        developerPayload: json_['developerPayload'] as core.String?,
        kind: json_['kind'] as core.String?,
        obfuscatedExternalAccountId:
            json_['obfuscatedExternalAccountId'] as core.String?,
        obfuscatedExternalProfileId:
            json_['obfuscatedExternalProfileId'] as core.String?,
        orderId: json_['orderId'] as core.String?,
        productId: json_['productId'] as core.String?,
        purchaseState: json_['purchaseState'] as core.int?,
        purchaseTimeMillis: json_['purchaseTimeMillis'] as core.String?,
        purchaseToken: json_['purchaseToken'] as core.String?,
        purchaseType: json_['purchaseType'] as core.int?,
        quantity: json_['quantity'] as core.int?,
        refundableQuantity: json_['refundableQuantity'] as core.int?,
        regionCode: json_['regionCode'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final acknowledgementState = this.acknowledgementState;
    final consumptionState = this.consumptionState;
    final developerPayload = this.developerPayload;
    final kind = this.kind;
    final obfuscatedExternalAccountId = this.obfuscatedExternalAccountId;
    final obfuscatedExternalProfileId = this.obfuscatedExternalProfileId;
    final orderId = this.orderId;
    final productId = this.productId;
    final purchaseState = this.purchaseState;
    final purchaseTimeMillis = this.purchaseTimeMillis;
    final purchaseToken = this.purchaseToken;
    final purchaseType = this.purchaseType;
    final quantity = this.quantity;
    final refundableQuantity = this.refundableQuantity;
    final regionCode = this.regionCode;
    return {
      'acknowledgementState': ?acknowledgementState,
      'consumptionState': ?consumptionState,
      'developerPayload': ?developerPayload,
      'kind': ?kind,
      'obfuscatedExternalAccountId': ?obfuscatedExternalAccountId,
      'obfuscatedExternalProfileId': ?obfuscatedExternalProfileId,
      'orderId': ?orderId,
      'productId': ?productId,
      'purchaseState': ?purchaseState,
      'purchaseTimeMillis': ?purchaseTimeMillis,
      'purchaseToken': ?purchaseToken,
      'purchaseType': ?purchaseType,
      'quantity': ?quantity,
      'refundableQuantity': ?refundableQuantity,
      'regionCode': ?regionCode,
    };
  }
}

/// A ProductPurchaseV2 resource indicates the status of a user's inapp product
/// purchase.
class ProductPurchaseV2 {
  /// The acknowledgement state of the purchase.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "ACKNOWLEDGEMENT_STATE_UNSPECIFIED" : Unspecified acknowledgement state.
  /// - "ACKNOWLEDGEMENT_STATE_PENDING" : The purchase is not acknowledged yet.
  /// - "ACKNOWLEDGEMENT_STATE_ACKNOWLEDGED" : The purchase is acknowledged.
  core.String? acknowledgementState;

  /// This kind represents a ProductPurchaseV2 object in the androidpublisher
  /// service.
  core.String? kind;

  /// An obfuscated version of the id that is uniquely associated with the
  /// user's account in your app.
  ///
  /// Only present if specified using
  /// https://developer.android.com/reference/com/android/billingclient/api/BillingFlowParams.Builder#setobfuscatedaccountid
  /// when the purchase was made.
  core.String? obfuscatedExternalAccountId;

  /// An obfuscated version of the id that is uniquely associated with the
  /// user's profile in your app.
  ///
  /// Only present if specified using
  /// https://developer.android.com/reference/com/android/billingclient/api/BillingFlowParams.Builder#setobfuscatedprofileid
  /// when the purchase was made.
  core.String? obfuscatedExternalProfileId;

  /// The order id associated with the purchase of the inapp product.
  ///
  /// May not be set if there is no order associated with the purchase.
  core.String? orderId;

  /// Contains item-level info for a ProductPurchaseV2.
  core.List<ProductLineItem>? productLineItem;

  /// The time when the purchase was successful, i.e., when the PurchaseState
  /// has changed to PURCHASED.
  ///
  /// This field will not be present until the payment is complete. For example,
  /// if the user initiated a pending transaction
  /// (https://developer.android.com/google/play/billing/integrate#pending),
  /// this field will not be populated until the user successfully completes the
  /// steps required to complete the transaction.
  core.String? purchaseCompletionTime;

  /// Information about the purchase state of the purchase.
  PurchaseStateContext? purchaseStateContext;

  /// ISO 3166-1 alpha-2 billing region code of the user at the time the product
  /// was granted.
  core.String? regionCode;

  /// Information related to test purchases.
  ///
  /// This will only be set for test purchases.
  TestPurchaseContext? testPurchaseContext;

  ProductPurchaseV2({
    this.acknowledgementState,
    this.kind,
    this.obfuscatedExternalAccountId,
    this.obfuscatedExternalProfileId,
    this.orderId,
    this.productLineItem,
    this.purchaseCompletionTime,
    this.purchaseStateContext,
    this.regionCode,
    this.testPurchaseContext,
  });

  ProductPurchaseV2.fromJson(core.Map json_)
    : this(
        acknowledgementState: json_['acknowledgementState'] as core.String?,
        kind: json_['kind'] as core.String?,
        obfuscatedExternalAccountId:
            json_['obfuscatedExternalAccountId'] as core.String?,
        obfuscatedExternalProfileId:
            json_['obfuscatedExternalProfileId'] as core.String?,
        orderId: json_['orderId'] as core.String?,
        productLineItem: (json_['productLineItem'] as core.List?)
            ?.map(
              (value) => ProductLineItem.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        purchaseCompletionTime: json_['purchaseCompletionTime'] as core.String?,
        purchaseStateContext: json_.containsKey('purchaseStateContext')
            ? PurchaseStateContext.fromJson(
                json_['purchaseStateContext']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        regionCode: json_['regionCode'] as core.String?,
        testPurchaseContext: json_.containsKey('testPurchaseContext')
            ? TestPurchaseContext.fromJson(
                json_['testPurchaseContext']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final acknowledgementState = this.acknowledgementState;
    final kind = this.kind;
    final obfuscatedExternalAccountId = this.obfuscatedExternalAccountId;
    final obfuscatedExternalProfileId = this.obfuscatedExternalProfileId;
    final orderId = this.orderId;
    final productLineItem = this.productLineItem;
    final purchaseCompletionTime = this.purchaseCompletionTime;
    final purchaseStateContext = this.purchaseStateContext;
    final regionCode = this.regionCode;
    final testPurchaseContext = this.testPurchaseContext;
    return {
      'acknowledgementState': ?acknowledgementState,
      'kind': ?kind,
      'obfuscatedExternalAccountId': ?obfuscatedExternalAccountId,
      'obfuscatedExternalProfileId': ?obfuscatedExternalProfileId,
      'orderId': ?orderId,
      'productLineItem': ?productLineItem,
      'purchaseCompletionTime': ?purchaseCompletionTime,
      'purchaseStateContext': ?purchaseStateContext,
      'regionCode': ?regionCode,
      'testPurchaseContext': ?testPurchaseContext,
    };
  }
}

/// Request for the product.purchases.acknowledge API.
class ProductPurchasesAcknowledgeRequest {
  /// Payload to attach to the purchase.
  core.String? developerPayload;

  ProductPurchasesAcknowledgeRequest({this.developerPayload});

  ProductPurchasesAcknowledgeRequest.fromJson(core.Map json_)
    : this(developerPayload: json_['developerPayload'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final developerPayload = this.developerPayload;
    return {'developerPayload': ?developerPayload};
  }
}

/// Details of a proration period.
///
/// A proration period can be a period calculated during a plan change to cover
/// existing entitlements (For more information, see
/// [Allow users to upgrade, downgrade, or change their subscription](https://developer.android.com/google/play/billing/subscriptions#allow-users-change),
/// or a prorated period to align add-on renewal dates with the base (For more
/// information, see
/// [Rules applicable for items in the purchase](https://developer.android.com/google/play/billing/subscription-with-addons#rules-base-addons)).
class ProrationPeriodDetails {
  /// Represent the original offer phase from the purchased the line item if the
  /// proration period contains any of them.
  ///
  /// For example, a proration period from CHARGE_FULL_PRICE plan change may
  /// merge the 1st offer phase of the subscription offer of the new product
  /// user purchased. In this case, the original offer phase will be set here.
  /// Possible string values are:
  /// - "OFFER_PHASE_UNSPECIFIED" : Offer phase unspecified. This value is not
  /// used.
  /// - "BASE" : The order funds a base price period.
  /// - "INTRODUCTORY" : The order funds an introductory pricing period.
  /// - "FREE_TRIAL" : The order funds a free trial period.
  core.String? originalOfferPhase;

  ProrationPeriodDetails({this.originalOfferPhase});

  ProrationPeriodDetails.fromJson(core.Map json_)
    : this(originalOfferPhase: json_['originalOfferPhase'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final originalOfferPhase = this.originalOfferPhase;
    return {'originalOfferPhase': ?originalOfferPhase};
  }
}

/// Details about proration period offer phase.
class ProrationPeriodOfferPhase {
  /// The original offer phase type before the proration period.
  ///
  /// Only set when the proration period is updated from an existing offer
  /// phase.
  /// Possible string values are:
  /// - "ORIGINAL_OFFER_PHASE_TYPE_UNSPECIFIED" : Unspecified original offer
  /// phase type.
  /// - "BASE" : The subscription is in the base pricing phase (e.g. full
  /// price).
  /// - "INTRODUCTORY" : The subscription is in an introductory pricing phase.
  /// - "FREE_TRIAL" : The subscription is in a free trial.
  core.String? originalOfferPhaseType;

  ProrationPeriodOfferPhase({this.originalOfferPhaseType});

  ProrationPeriodOfferPhase.fromJson(core.Map json_)
    : this(
        originalOfferPhaseType: json_['originalOfferPhaseType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final originalOfferPhaseType = this.originalOfferPhaseType;
    return {'originalOfferPhaseType': ?originalOfferPhaseType};
  }
}

/// Details about taxation, Google Play policy and legal compliance for one-time
/// product purchase options.
class PurchaseOptionTaxAndComplianceSettings {
  /// Digital content or service classification for products distributed to
  /// users in eligible regions.
  ///
  /// If unset, it defaults to `WITHDRAWAL_RIGHT_DIGITAL_CONTENT`. Refer to the
  /// [Help Center article](https://support.google.com/googleplay/android-developer/answer/10463498)
  /// for more information.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "WITHDRAWAL_RIGHT_TYPE_UNSPECIFIED"
  /// - "WITHDRAWAL_RIGHT_DIGITAL_CONTENT"
  /// - "WITHDRAWAL_RIGHT_SERVICE"
  core.String? withdrawalRightType;

  PurchaseOptionTaxAndComplianceSettings({this.withdrawalRightType});

  PurchaseOptionTaxAndComplianceSettings.fromJson(core.Map json_)
    : this(withdrawalRightType: json_['withdrawalRightType'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final withdrawalRightType = this.withdrawalRightType;
    return {'withdrawalRightType': ?withdrawalRightType};
  }
}

/// Context about the purchase state.
class PurchaseStateContext {
  /// The purchase state of the purchase.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "PURCHASE_STATE_UNSPECIFIED" : Purchase state unspecified. This value
  /// should never be set.
  /// - "PURCHASED" : Purchased successfully.
  /// - "CANCELLED" : Purchase canceled.
  /// - "PENDING" : The purchase is in a pending state and has not yet been
  /// completed. For more information on handling pending purchases, see
  /// https://developer.android.com/google/play/billing/integrate#pending.
  core.String? purchaseState;

  PurchaseStateContext({this.purchaseState});

  PurchaseStateContext.fromJson(core.Map json_)
    : this(purchaseState: json_['purchaseState'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final purchaseState = this.purchaseState;
    return {'purchaseState': ?purchaseState};
  }
}

/// Represents a transaction that is part of a recurring series of payments.
///
/// This can be a subscription or a one-time product with multiple payments
/// (such as preorder).
class RecurringExternalTransaction {
  /// Details of an external subscription.
  ExternalSubscription? externalSubscription;

  /// Input only.
  ///
  /// Provided during the call to Create. Retrieved from the client when the
  /// alternative billing flow is launched. Required only for the initial
  /// purchase.
  core.String? externalTransactionToken;

  /// The external transaction id of the first transaction of this recurring
  /// series of transactions.
  ///
  /// For example, for a subscription this would be the transaction id of the
  /// first payment. Required when creating recurring external transactions.
  core.String? initialExternalTransactionId;

  /// Input only.
  ///
  /// Provided during the call to Create. Must only be used when migrating a
  /// subscription from manual monthly reporting to automated reporting.
  /// Possible string values are:
  /// - "EXTERNAL_TRANSACTION_PROGRAM_UNSPECIFIED" : Unspecified transaction
  /// program. Not used.
  /// - "USER_CHOICE_BILLING" : User choice billing, where a user may choose
  /// between Google Play Billing developer-managed billing.
  /// - "ALTERNATIVE_BILLING_ONLY" : Alternative billing only, where users may
  /// only use developer-manager billing.
  core.String? migratedTransactionProgram;

  /// Details of a recurring external transaction product which doesn't belong
  /// to any other specific category.
  OtherRecurringProduct? otherRecurringProduct;

  RecurringExternalTransaction({
    this.externalSubscription,
    this.externalTransactionToken,
    this.initialExternalTransactionId,
    this.migratedTransactionProgram,
    this.otherRecurringProduct,
  });

  RecurringExternalTransaction.fromJson(core.Map json_)
    : this(
        externalSubscription: json_.containsKey('externalSubscription')
            ? ExternalSubscription.fromJson(
                json_['externalSubscription']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        externalTransactionToken:
            json_['externalTransactionToken'] as core.String?,
        initialExternalTransactionId:
            json_['initialExternalTransactionId'] as core.String?,
        migratedTransactionProgram:
            json_['migratedTransactionProgram'] as core.String?,
        otherRecurringProduct: json_.containsKey('otherRecurringProduct')
            ? OtherRecurringProduct.fromJson(
                json_['otherRecurringProduct']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final externalSubscription = this.externalSubscription;
    final externalTransactionToken = this.externalTransactionToken;
    final initialExternalTransactionId = this.initialExternalTransactionId;
    final migratedTransactionProgram = this.migratedTransactionProgram;
    final otherRecurringProduct = this.otherRecurringProduct;
    return {
      'externalSubscription': ?externalSubscription,
      'externalTransactionToken': ?externalTransactionToken,
      'initialExternalTransactionId': ?initialExternalTransactionId,
      'migratedTransactionProgram': ?migratedTransactionProgram,
      'otherRecurringProduct': ?otherRecurringProduct,
    };
  }
}

/// Details for a partial or full refund.
class RefundDetails {
  /// The amount of tax refunded.
  Money? tax;

  /// The total amount refunded, including tax.
  Money? total;

  RefundDetails({this.tax, this.total});

  RefundDetails.fromJson(core.Map json_)
    : this(
        tax: json_.containsKey('tax')
            ? Money.fromJson(
                json_['tax'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        total: json_.containsKey('total')
            ? Money.fromJson(
                json_['total'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final tax = this.tax;
    final total = this.total;
    return {'tax': ?tax, 'total': ?total};
  }
}

/// Details of when the order was fully refunded.
class RefundEvent {
  /// The time when the order was fully refunded.
  core.String? eventTime;

  /// Details for the full refund.
  RefundDetails? refundDetails;

  /// The reason the order was refunded.
  /// Possible string values are:
  /// - "REFUND_REASON_UNSPECIFIED" : Refund reason unspecified. This value is
  /// not used.
  /// - "OTHER" : The order was refunded for a reason other than the listed
  /// reasons here.
  /// - "CHARGEBACK" : The order was charged back.
  core.String? refundReason;

  RefundEvent({this.eventTime, this.refundDetails, this.refundReason});

  RefundEvent.fromJson(core.Map json_)
    : this(
        eventTime: json_['eventTime'] as core.String?,
        refundDetails: json_.containsKey('refundDetails')
            ? RefundDetails.fromJson(
                json_['refundDetails'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        refundReason: json_['refundReason'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final eventTime = this.eventTime;
    final refundDetails = this.refundDetails;
    final refundReason = this.refundReason;
    return {
      'eventTime': ?eventTime,
      'refundDetails': ?refundDetails,
      'refundReason': ?refundReason,
    };
  }
}

/// A request to refund an existing external transaction.
class RefundExternalTransactionRequest {
  /// A full-amount refund.
  FullRefund? fullRefund;

  /// A partial refund.
  PartialRefund? partialRefund;

  /// The time that the transaction was refunded.
  ///
  /// Required.
  core.String? refundTime;

  RefundExternalTransactionRequest({
    this.fullRefund,
    this.partialRefund,
    this.refundTime,
  });

  RefundExternalTransactionRequest.fromJson(core.Map json_)
    : this(
        fullRefund: json_.containsKey('fullRefund')
            ? FullRefund.fromJson(
                json_['fullRefund'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        partialRefund: json_.containsKey('partialRefund')
            ? PartialRefund.fromJson(
                json_['partialRefund'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        refundTime: json_['refundTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final fullRefund = this.fullRefund;
    final partialRefund = this.partialRefund;
    final refundTime = this.refundTime;
    return {
      'fullRefund': ?fullRefund,
      'partialRefund': ?partialRefund,
      'refundTime': ?refundTime,
    };
  }
}

/// Configuration for a base plan specific to a region.
class RegionalBasePlanConfig {
  /// Whether the base plan in the specified region is available for new
  /// subscribers.
  ///
  /// Existing subscribers will not have their subscription canceled if this
  /// value is set to false. If not specified, this will default to false.
  core.bool? newSubscriberAvailability;

  /// The price of the base plan in the specified region.
  ///
  /// Must be set if the base plan is available to new subscribers. Must be set
  /// in the currency that is linked to the specified region.
  Money? price;

  /// Region code this configuration applies to, as defined by ISO 3166-2, e.g.
  /// "US".
  ///
  /// Required.
  core.String? regionCode;

  RegionalBasePlanConfig({
    this.newSubscriberAvailability,
    this.price,
    this.regionCode,
  });

  RegionalBasePlanConfig.fromJson(core.Map json_)
    : this(
        newSubscriberAvailability:
            json_['newSubscriberAvailability'] as core.bool?,
        price: json_.containsKey('price')
            ? Money.fromJson(
                json_['price'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        regionCode: json_['regionCode'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final newSubscriberAvailability = this.newSubscriberAvailability;
    final price = this.price;
    final regionCode = this.regionCode;
    return {
      'newSubscriberAvailability': ?newSubscriberAvailability,
      'price': ?price,
      'regionCode': ?regionCode,
    };
  }
}

/// Configuration for migration of a legacy price cohort.
class RegionalPriceMigrationConfig {
  /// Subscribers in all legacy price cohorts before this time will be migrated
  /// to the current price.
  ///
  /// Subscribers in any newer price cohorts are unaffected. Affected
  /// subscribers will receive one or more notifications from Google Play about
  /// the price change. Price decreases occur at the subscriber's next billing
  /// date. Price increases occur at the subscriber's next billing date
  /// following a notification period that varies by region and price increase
  /// type.
  ///
  /// Required.
  core.String? oldestAllowedPriceVersionTime;

  /// The requested type of price increase
  ///
  /// Optional.
  /// Possible string values are:
  /// - "PRICE_INCREASE_TYPE_UNSPECIFIED" : Unspecified state.
  /// - "PRICE_INCREASE_TYPE_OPT_IN" : Subscribers must accept the price
  /// increase or their subscription is canceled.
  /// - "PRICE_INCREASE_TYPE_OPT_OUT" : Subscribers are notified but do not have
  /// to accept the price increase. Opt-out price increases not meeting
  /// regional, frequency, and amount limits will proceed as opt-in price
  /// increase. The first opt-out price increase for each app must be initiated
  /// in the Google Play Console.
  core.String? priceIncreaseType;

  /// Region code this configuration applies to, as defined by ISO 3166-2, e.g.
  /// "US".
  ///
  /// Required.
  core.String? regionCode;

  RegionalPriceMigrationConfig({
    this.oldestAllowedPriceVersionTime,
    this.priceIncreaseType,
    this.regionCode,
  });

  RegionalPriceMigrationConfig.fromJson(core.Map json_)
    : this(
        oldestAllowedPriceVersionTime:
            json_['oldestAllowedPriceVersionTime'] as core.String?,
        priceIncreaseType: json_['priceIncreaseType'] as core.String?,
        regionCode: json_['regionCode'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final oldestAllowedPriceVersionTime = this.oldestAllowedPriceVersionTime;
    final priceIncreaseType = this.priceIncreaseType;
    final regionCode = this.regionCode;
    return {
      'oldestAllowedPriceVersionTime': ?oldestAllowedPriceVersionTime,
      'priceIncreaseType': ?priceIncreaseType,
      'regionCode': ?regionCode,
    };
  }
}

/// Details about the age rating for a specific geographic region.
class RegionalProductAgeRatingInfo {
  /// The age rating tier of a product for the given region.
  /// Possible string values are:
  /// - "PRODUCT_AGE_RATING_TIER_UNKNOWN" : Unknown age rating tier.
  /// - "PRODUCT_AGE_RATING_TIER_EVERYONE" : Age rating tier for products that
  /// are appropriate for all ages.
  /// - "PRODUCT_AGE_RATING_TIER_THIRTEEN_AND_ABOVE" : Age rating tier for
  /// products that are appropriate for 13 years and above.
  /// - "PRODUCT_AGE_RATING_TIER_SIXTEEN_AND_ABOVE" : Age rating tier for
  /// products that are appropriate for 16 years and above.
  /// - "PRODUCT_AGE_RATING_TIER_EIGHTEEN_AND_ABOVE" : Age rating tier for
  /// products that are appropriate for 18 years and above.
  core.String? productAgeRatingTier;

  /// Region code this configuration applies to, as defined by ISO 3166-2, e.g.
  /// "US".
  core.String? regionCode;

  RegionalProductAgeRatingInfo({this.productAgeRatingTier, this.regionCode});

  RegionalProductAgeRatingInfo.fromJson(core.Map json_)
    : this(
        productAgeRatingTier: json_['productAgeRatingTier'] as core.String?,
        regionCode: json_['regionCode'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final productAgeRatingTier = this.productAgeRatingTier;
    final regionCode = this.regionCode;
    return {
      'productAgeRatingTier': ?productAgeRatingTier,
      'regionCode': ?regionCode,
    };
  }
}

/// Configuration for a subscription offer in a single region.
class RegionalSubscriptionOfferConfig {
  /// Whether the subscription offer in the specified region is available for
  /// new subscribers.
  ///
  /// Existing subscribers will not have their subscription cancelled if this
  /// value is set to false. If not specified, this will default to false.
  core.bool? newSubscriberAvailability;

  /// Region code this configuration applies to, as defined by ISO 3166-2, e.g.
  /// "US".
  ///
  /// Required. Immutable.
  core.String? regionCode;

  RegionalSubscriptionOfferConfig({
    this.newSubscriberAvailability,
    this.regionCode,
  });

  RegionalSubscriptionOfferConfig.fromJson(core.Map json_)
    : this(
        newSubscriberAvailability:
            json_['newSubscriberAvailability'] as core.bool?,
        regionCode: json_['regionCode'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final newSubscriberAvailability = this.newSubscriberAvailability;
    final regionCode = this.regionCode;
    return {
      'newSubscriberAvailability': ?newSubscriberAvailability,
      'regionCode': ?regionCode,
    };
  }
}

/// Configuration for a single phase of a subscription offer in a single region.
class RegionalSubscriptionOfferPhaseConfig {
  /// The absolute amount of money subtracted from the base plan price prorated
  /// over the phase duration that the user pays for this offer phase.
  ///
  /// For example, if the base plan price for this region is $12 for a period of
  /// 1 year, then a $1 absolute discount for a phase of a duration of 3 months
  /// would correspond to a price of $2. The resulting price may not be smaller
  /// than the minimum price allowed for this region.
  Money? absoluteDiscount;

  /// Set to specify this offer is free to obtain.
  RegionalSubscriptionOfferPhaseFreePriceOverride? free;

  /// The absolute price the user pays for this offer phase.
  ///
  /// The price must not be smaller than the minimum price allowed for this
  /// region.
  Money? price;

  /// The region to which this config applies.
  ///
  /// Required. Immutable.
  core.String? regionCode;

  /// The fraction of the base plan price prorated over the phase duration that
  /// the user pays for this offer phase.
  ///
  /// For example, if the base plan price for this region is $12 for a period of
  /// 1 year, then a 50% discount for a phase of a duration of 3 months would
  /// correspond to a price of $1.50. The discount must be specified as a
  /// fraction strictly larger than 0 and strictly smaller than 1. The resulting
  /// price will be rounded to the nearest billable unit (e.g. cents for USD).
  /// The relative discount is considered invalid if the discounted price ends
  /// up being smaller than the minimum price allowed in this region.
  core.double? relativeDiscount;

  RegionalSubscriptionOfferPhaseConfig({
    this.absoluteDiscount,
    this.free,
    this.price,
    this.regionCode,
    this.relativeDiscount,
  });

  RegionalSubscriptionOfferPhaseConfig.fromJson(core.Map json_)
    : this(
        absoluteDiscount: json_.containsKey('absoluteDiscount')
            ? Money.fromJson(
                json_['absoluteDiscount']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        free: json_.containsKey('free')
            ? RegionalSubscriptionOfferPhaseFreePriceOverride.fromJson(
                json_['free'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        price: json_.containsKey('price')
            ? Money.fromJson(
                json_['price'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        regionCode: json_['regionCode'] as core.String?,
        relativeDiscount: (json_['relativeDiscount'] as core.num?)?.toDouble(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final absoluteDiscount = this.absoluteDiscount;
    final free = this.free;
    final price = this.price;
    final regionCode = this.regionCode;
    final relativeDiscount = this.relativeDiscount;
    return {
      'absoluteDiscount': ?absoluteDiscount,
      'free': ?free,
      'price': ?price,
      'regionCode': ?regionCode,
      'relativeDiscount': ?relativeDiscount,
    };
  }
}

/// Represents the free price override configuration for a single phase of a
/// subscription offer
typedef RegionalSubscriptionOfferPhaseFreePriceOverride = $Empty;

/// Details about taxation in a given geographical region.
class RegionalTaxConfig {
  /// You must tell us if your app contains streaming products to correctly
  /// charge US state and local sales tax.
  ///
  /// Field only supported in the United States.
  core.bool? eligibleForStreamingServiceTaxRate;

  /// Region code this configuration applies to, as defined by ISO 3166-2, e.g.
  /// "US".
  ///
  /// Required.
  core.String? regionCode;

  /// To collect communications or amusement taxes in the United States, choose
  /// the appropriate tax category.
  ///
  /// [Learn more](https://support.google.com/googleplay/android-developer/answer/10463498#streaming_tax).
  /// Possible string values are:
  /// - "STREAMING_TAX_TYPE_UNSPECIFIED" : No telecommunications tax collected.
  /// - "STREAMING_TAX_TYPE_TELCO_VIDEO_RENTAL" : US-specific telecommunications
  /// tax tier for video streaming, on demand, rentals / subscriptions /
  /// pay-per-view.
  /// - "STREAMING_TAX_TYPE_TELCO_VIDEO_SALES" : US-specific telecommunications
  /// tax tier for video streaming of pre-recorded content like movies, tv
  /// shows.
  /// - "STREAMING_TAX_TYPE_TELCO_VIDEO_MULTI_CHANNEL" : US-specific
  /// telecommunications tax tier for video streaming of multi-channel
  /// programming.
  /// - "STREAMING_TAX_TYPE_TELCO_AUDIO_RENTAL" : US-specific telecommunications
  /// tax tier for audio streaming, rental / subscription.
  /// - "STREAMING_TAX_TYPE_TELCO_AUDIO_SALES" : US-specific telecommunications
  /// tax tier for audio streaming, sale / permanent download.
  /// - "STREAMING_TAX_TYPE_TELCO_AUDIO_MULTI_CHANNEL" : US-specific
  /// telecommunications tax tier for multi channel audio streaming like radio.
  core.String? streamingTaxType;

  /// Tax tier to specify reduced tax rate.
  ///
  /// Developers who sell digital news, magazines, newspapers, books, or
  /// audiobooks in various regions may be eligible for reduced tax rates.
  /// [Learn more](https://support.google.com/googleplay/android-developer/answer/10463498).
  /// Possible string values are:
  /// - "TAX_TIER_UNSPECIFIED"
  /// - "TAX_TIER_BOOKS_1"
  /// - "TAX_TIER_NEWS_1"
  /// - "TAX_TIER_NEWS_2"
  /// - "TAX_TIER_MUSIC_OR_AUDIO_1"
  /// - "TAX_TIER_LIVE_OR_BROADCAST_1"
  core.String? taxTier;

  RegionalTaxConfig({
    this.eligibleForStreamingServiceTaxRate,
    this.regionCode,
    this.streamingTaxType,
    this.taxTier,
  });

  RegionalTaxConfig.fromJson(core.Map json_)
    : this(
        eligibleForStreamingServiceTaxRate:
            json_['eligibleForStreamingServiceTaxRate'] as core.bool?,
        regionCode: json_['regionCode'] as core.String?,
        streamingTaxType: json_['streamingTaxType'] as core.String?,
        taxTier: json_['taxTier'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final eligibleForStreamingServiceTaxRate =
        this.eligibleForStreamingServiceTaxRate;
    final regionCode = this.regionCode;
    final streamingTaxType = this.streamingTaxType;
    final taxTier = this.taxTier;
    return {
      'eligibleForStreamingServiceTaxRate': ?eligibleForStreamingServiceTaxRate,
      'regionCode': ?regionCode,
      'streamingTaxType': ?streamingTaxType,
      'taxTier': ?taxTier,
    };
  }
}

/// Specified details about taxation in a given geographical region.
class RegionalTaxRateInfo {
  /// You must tell us if your app contains streaming products to correctly
  /// charge US state and local sales tax.
  ///
  /// Field only supported in the United States.
  core.bool? eligibleForStreamingServiceTaxRate;

  /// To collect communications or amusement taxes in the United States, choose
  /// the appropriate tax category.
  ///
  /// [Learn more](https://support.google.com/googleplay/android-developer/answer/10463498#streaming_tax).
  /// Possible string values are:
  /// - "STREAMING_TAX_TYPE_UNSPECIFIED" : No telecommunications tax collected.
  /// - "STREAMING_TAX_TYPE_TELCO_VIDEO_RENTAL" : US-specific telecommunications
  /// tax tier for video streaming, on demand, rentals / subscriptions /
  /// pay-per-view.
  /// - "STREAMING_TAX_TYPE_TELCO_VIDEO_SALES" : US-specific telecommunications
  /// tax tier for video streaming of pre-recorded content like movies, tv
  /// shows.
  /// - "STREAMING_TAX_TYPE_TELCO_VIDEO_MULTI_CHANNEL" : US-specific
  /// telecommunications tax tier for video streaming of multi-channel
  /// programming.
  /// - "STREAMING_TAX_TYPE_TELCO_AUDIO_RENTAL" : US-specific telecommunications
  /// tax tier for audio streaming, rental / subscription.
  /// - "STREAMING_TAX_TYPE_TELCO_AUDIO_SALES" : US-specific telecommunications
  /// tax tier for audio streaming, sale / permanent download.
  /// - "STREAMING_TAX_TYPE_TELCO_AUDIO_MULTI_CHANNEL" : US-specific
  /// telecommunications tax tier for multi channel audio streaming like radio.
  core.String? streamingTaxType;

  /// Tax tier to specify reduced tax rate.
  ///
  /// Developers who sell digital news, magazines, newspapers, books, or
  /// audiobooks in various regions may be eligible for reduced tax rates.
  /// [Learn more](https://support.google.com/googleplay/android-developer/answer/10463498).
  /// Possible string values are:
  /// - "TAX_TIER_UNSPECIFIED"
  /// - "TAX_TIER_BOOKS_1"
  /// - "TAX_TIER_NEWS_1"
  /// - "TAX_TIER_NEWS_2"
  /// - "TAX_TIER_MUSIC_OR_AUDIO_1"
  /// - "TAX_TIER_LIVE_OR_BROADCAST_1"
  core.String? taxTier;

  RegionalTaxRateInfo({
    this.eligibleForStreamingServiceTaxRate,
    this.streamingTaxType,
    this.taxTier,
  });

  RegionalTaxRateInfo.fromJson(core.Map json_)
    : this(
        eligibleForStreamingServiceTaxRate:
            json_['eligibleForStreamingServiceTaxRate'] as core.bool?,
        streamingTaxType: json_['streamingTaxType'] as core.String?,
        taxTier: json_['taxTier'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final eligibleForStreamingServiceTaxRate =
        this.eligibleForStreamingServiceTaxRate;
    final streamingTaxType = this.streamingTaxType;
    final taxTier = this.taxTier;
    return {
      'eligibleForStreamingServiceTaxRate': ?eligibleForStreamingServiceTaxRate,
      'streamingTaxType': ?streamingTaxType,
      'taxTier': ?taxTier,
    };
  }
}

/// Region targeting data for app recovery action targeting.
class Regions {
  /// Regions targeted by the recovery action.
  ///
  /// Region codes are ISO 3166 Alpha-2 country codes. For example, US stands
  /// for United States of America. See
  /// https://www.iso.org/iso-3166-country-codes.html for the complete list of
  /// country codes.
  core.List<core.String>? regionCode;

  Regions({this.regionCode});

  Regions.fromJson(core.Map json_)
    : this(
        regionCode: (json_['regionCode'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final regionCode = this.regionCode;
    return {'regionCode': ?regionCode};
  }
}

/// The version of the available regions being used for the specified resource.
class RegionsVersion {
  /// A string representing the version of available regions being used for the
  /// specified resource.
  ///
  /// Regional prices and latest supported version for the resource have to be
  /// specified according to the information published in
  /// [this article](https://support.google.com/googleplay/android-developer/answer/10532353).
  /// Each time the supported locations substantially change, the version will
  /// be incremented. Using this field will ensure that creating and updating
  /// the resource with an older region's version and set of regional prices and
  /// currencies will succeed even though a new version is available.
  ///
  /// Required.
  core.String? version;

  RegionsVersion({this.version});

  RegionsVersion.fromJson(core.Map json_)
    : this(version: json_['version'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final version = this.version;
    return {'version': ?version};
  }
}

/// Object representation for Remote in-app update action type.
class RemoteInAppUpdate {
  /// Set to true if Remote In-App Update action type is needed.
  ///
  /// Required.
  core.bool? isRemoteInAppUpdateRequested;

  RemoteInAppUpdate({this.isRemoteInAppUpdateRequested});

  RemoteInAppUpdate.fromJson(core.Map json_)
    : this(
        isRemoteInAppUpdateRequested:
            json_['isRemoteInAppUpdateRequested'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final isRemoteInAppUpdateRequested = this.isRemoteInAppUpdateRequested;
    return {'isRemoteInAppUpdateRequested': ?isRemoteInAppUpdateRequested};
  }
}

/// Data related to Remote In-App Update action such as recovered user count,
/// affected user count etc.
class RemoteInAppUpdateData {
  /// Data related to the recovery action at bundle level.
  core.List<RemoteInAppUpdateDataPerBundle>? remoteAppUpdateDataPerBundle;

  RemoteInAppUpdateData({this.remoteAppUpdateDataPerBundle});

  RemoteInAppUpdateData.fromJson(core.Map json_)
    : this(
        remoteAppUpdateDataPerBundle:
            (json_['remoteAppUpdateDataPerBundle'] as core.List?)
                ?.map(
                  (value) => RemoteInAppUpdateDataPerBundle.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final remoteAppUpdateDataPerBundle = this.remoteAppUpdateDataPerBundle;
    return {'remoteAppUpdateDataPerBundle': ?remoteAppUpdateDataPerBundle};
  }
}

/// Data related to the recovery action at bundle level.
class RemoteInAppUpdateDataPerBundle {
  /// Total number of devices which have been rescued.
  core.String? recoveredDeviceCount;

  /// Total number of devices affected by this recovery action associated with
  /// bundle of the app.
  core.String? totalDeviceCount;

  /// Version Code corresponding to the target bundle.
  core.String? versionCode;

  RemoteInAppUpdateDataPerBundle({
    this.recoveredDeviceCount,
    this.totalDeviceCount,
    this.versionCode,
  });

  RemoteInAppUpdateDataPerBundle.fromJson(core.Map json_)
    : this(
        recoveredDeviceCount: json_['recoveredDeviceCount'] as core.String?,
        totalDeviceCount: json_['totalDeviceCount'] as core.String?,
        versionCode: json_['versionCode'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final recoveredDeviceCount = this.recoveredDeviceCount;
    final totalDeviceCount = this.totalDeviceCount;
    final versionCode = this.versionCode;
    return {
      'recoveredDeviceCount': ?recoveredDeviceCount,
      'totalDeviceCount': ?totalDeviceCount,
      'versionCode': ?versionCode,
    };
  }
}

/// Offer details information related to a rental line item.
typedef RentOfferDetails = $Empty;

/// Details of a rental purchase.
typedef RentalDetails = $Empty;

/// Information specific to cancellations caused by subscription replacement.
typedef ReplacementCancellation = $Empty;

/// Countries where the purchase of this product is restricted to payment
/// methods registered in the same country.
///
/// If empty, no payment location restrictions are imposed.
class RestrictedPaymentCountries {
  /// Region codes to impose payment restrictions on, as defined by ISO 3166-2,
  /// e.g. "US".
  ///
  /// Required.
  core.List<core.String>? regionCodes;

  RestrictedPaymentCountries({this.regionCodes});

  RestrictedPaymentCountries.fromJson(core.Map json_)
    : this(
        regionCodes: (json_['regionCodes'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final regionCodes = this.regionCodes;
    return {'regionCodes': ?regionCodes};
  }
}

/// An Android app review.
class Review {
  /// The name of the user who wrote the review.
  core.String? authorName;

  /// A repeated field containing comments for the review.
  core.List<Comment>? comments;

  /// Unique identifier for this review.
  core.String? reviewId;

  Review({this.authorName, this.comments, this.reviewId});

  Review.fromJson(core.Map json_)
    : this(
        authorName: json_['authorName'] as core.String?,
        comments: (json_['comments'] as core.List?)
            ?.map(
              (value) => Comment.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        reviewId: json_['reviewId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final authorName = this.authorName;
    final comments = this.comments;
    final reviewId = this.reviewId;
    return {
      'authorName': ?authorName,
      'comments': ?comments,
      'reviewId': ?reviewId,
    };
  }
}

/// The result of replying/updating a reply to review.
class ReviewReplyResult {
  /// The time at which the reply took effect.
  Timestamp? lastEdited;

  /// The reply text that was applied.
  core.String? replyText;

  ReviewReplyResult({this.lastEdited, this.replyText});

  ReviewReplyResult.fromJson(core.Map json_)
    : this(
        lastEdited: json_.containsKey('lastEdited')
            ? Timestamp.fromJson(
                json_['lastEdited'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        replyText: json_['replyText'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final lastEdited = this.lastEdited;
    final replyText = this.replyText;
    return {'lastEdited': ?lastEdited, 'replyText': ?replyText};
  }
}

/// Response listing reviews.
class ReviewsListResponse {
  /// Information about the current page.
  PageInfo? pageInfo;

  /// List of reviews.
  core.List<Review>? reviews;

  /// Pagination token, to handle a number of products that is over one page.
  TokenPagination? tokenPagination;

  ReviewsListResponse({this.pageInfo, this.reviews, this.tokenPagination});

  ReviewsListResponse.fromJson(core.Map json_)
    : this(
        pageInfo: json_.containsKey('pageInfo')
            ? PageInfo.fromJson(
                json_['pageInfo'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        reviews: (json_['reviews'] as core.List?)
            ?.map(
              (value) =>
                  Review.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
        tokenPagination: json_.containsKey('tokenPagination')
            ? TokenPagination.fromJson(
                json_['tokenPagination'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final pageInfo = this.pageInfo;
    final reviews = this.reviews;
    final tokenPagination = this.tokenPagination;
    return {
      'pageInfo': ?pageInfo,
      'reviews': ?reviews,
      'tokenPagination': ?tokenPagination,
    };
  }
}

/// Request to reply to review or update existing reply.
class ReviewsReplyRequest {
  /// The text to set as the reply.
  ///
  /// Replies of more than approximately 350 characters will be rejected. HTML
  /// tags will be stripped.
  core.String? replyText;

  ReviewsReplyRequest({this.replyText});

  ReviewsReplyRequest.fromJson(core.Map json_)
    : this(replyText: json_['replyText'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final replyText = this.replyText;
    return {'replyText': ?replyText};
  }
}

/// Response on status of replying to a review.
class ReviewsReplyResponse {
  /// The result of replying/updating a reply to review.
  ReviewReplyResult? result;

  ReviewsReplyResponse({this.result});

  ReviewsReplyResponse.fromJson(core.Map json_)
    : this(
        result: json_.containsKey('result')
            ? ReviewReplyResult.fromJson(
                json_['result'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final result = this.result;
    return {'result': ?result};
  }
}

/// Revocation context of the purchases.subscriptionsv2.revoke API.
class RevocationContext {
  /// Used when users should be refunded the full amount of latest charge on
  /// each item in the subscription.
  ///
  /// Optional.
  RevocationContextFullRefund? fullRefund;

  /// Used when a specific item should be refunded in a subscription with add-on
  /// items.
  ///
  /// Optional.
  RevocationContextItemBasedRefund? itemBasedRefund;

  /// Used when users should be refunded a prorated amount they paid for their
  /// subscription based on the amount of time remaining in a subscription.
  ///
  /// Optional.
  RevocationContextProratedRefund? proratedRefund;

  RevocationContext({
    this.fullRefund,
    this.itemBasedRefund,
    this.proratedRefund,
  });

  RevocationContext.fromJson(core.Map json_)
    : this(
        fullRefund: json_.containsKey('fullRefund')
            ? RevocationContextFullRefund.fromJson(
                json_['fullRefund'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        itemBasedRefund: json_.containsKey('itemBasedRefund')
            ? RevocationContextItemBasedRefund.fromJson(
                json_['itemBasedRefund'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        proratedRefund: json_.containsKey('proratedRefund')
            ? RevocationContextProratedRefund.fromJson(
                json_['proratedRefund'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final fullRefund = this.fullRefund;
    final itemBasedRefund = this.itemBasedRefund;
    final proratedRefund = this.proratedRefund;
    return {
      'fullRefund': ?fullRefund,
      'itemBasedRefund': ?itemBasedRefund,
      'proratedRefund': ?proratedRefund,
    };
  }
}

/// Used to determine if the refund type in the RevocationContext is a full
/// refund.
typedef RevocationContextFullRefund = $Empty;

/// Used to determine what specific item to revoke in a subscription with
/// multiple items.
class RevocationContextItemBasedRefund {
  /// If the subscription is a subscription with add-ons, the product id of the
  /// subscription item to revoke.
  ///
  /// Required.
  core.String? productId;

  RevocationContextItemBasedRefund({this.productId});

  RevocationContextItemBasedRefund.fromJson(core.Map json_)
    : this(productId: json_['productId'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final productId = this.productId;
    return {'productId': ?productId};
  }
}

/// Used to determine if the refund type in the RevocationContext is a prorated
/// refund.
typedef RevocationContextProratedRefund = $Empty;

/// Request for the purchases.subscriptionsv2.revoke API.
class RevokeSubscriptionPurchaseRequest {
  /// Additional details around the subscription revocation.
  ///
  /// Required.
  RevocationContext? revocationContext;

  RevokeSubscriptionPurchaseRequest({this.revocationContext});

  RevokeSubscriptionPurchaseRequest.fromJson(core.Map json_)
    : this(
        revocationContext: json_.containsKey('revocationContext')
            ? RevocationContext.fromJson(
                json_['revocationContext']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final revocationContext = this.revocationContext;
    return {'revocationContext': ?revocationContext};
  }
}

/// Response for the purchases.subscriptionsv2.revoke API.
typedef RevokeSubscriptionPurchaseResponse = $Empty;

/// Request to update Safety Labels of an app.
class SafetyLabelsUpdateRequest {
  /// Contents of the CSV file containing Data Safety responses.
  ///
  /// For the format of this file, see the Help Center documentation at
  /// https://support.google.com/googleplay/android-developer/answer/10787469?#zippy=%2Cunderstand-the-csv-format
  /// To download an up to date template, follow the steps at
  /// https://support.google.com/googleplay/android-developer/answer/10787469?#zippy=%2Cexport-to-a-csv-file
  ///
  /// Required.
  core.String? safetyLabels;

  SafetyLabelsUpdateRequest({this.safetyLabels});

  SafetyLabelsUpdateRequest.fromJson(core.Map json_)
    : this(safetyLabels: json_['safetyLabels'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final safetyLabels = this.safetyLabels;
    return {'safetyLabels': ?safetyLabels};
  }
}

/// Response for SafetyLabelsUpdate rpc.
typedef SafetyLabelsUpdateResponse = $Empty;

/// Represents a screen density.
class ScreenDensity {
  /// Alias for a screen density.
  /// Possible string values are:
  /// - "DENSITY_UNSPECIFIED" : Unspecified screen density.
  /// - "NODPI" : NODPI screen density.
  /// - "LDPI" : LDPI screen density.
  /// - "MDPI" : MDPI screen density.
  /// - "TVDPI" : TVDPI screen density.
  /// - "HDPI" : HDPI screen density.
  /// - "XHDPI" : XHDPI screen density.
  /// - "XXHDPI" : XXHDPI screen density.
  /// - "XXXHDPI" : XXXHDPI screen density.
  core.String? densityAlias;

  /// Value for density dpi.
  core.int? densityDpi;

  ScreenDensity({this.densityAlias, this.densityDpi});

  ScreenDensity.fromJson(core.Map json_)
    : this(
        densityAlias: json_['densityAlias'] as core.String?,
        densityDpi: json_['densityDpi'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final densityAlias = this.densityAlias;
    final densityDpi = this.densityDpi;
    return {'densityAlias': ?densityAlias, 'densityDpi': ?densityDpi};
  }
}

/// Targeting based on screen density.
class ScreenDensityTargeting {
  /// Targeting of other sibling directories that were in the Bundle.
  ///
  /// For main splits this is targeting of other main splits.
  core.List<ScreenDensity>? alternatives;

  /// Value of a screen density.
  core.List<ScreenDensity>? value;

  ScreenDensityTargeting({this.alternatives, this.value});

  ScreenDensityTargeting.fromJson(core.Map json_)
    : this(
        alternatives: (json_['alternatives'] as core.List?)
            ?.map(
              (value) => ScreenDensity.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        value: (json_['value'] as core.List?)
            ?.map(
              (value) => ScreenDensity.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final alternatives = this.alternatives;
    final value = this.value;
    return {'alternatives': ?alternatives, 'value': ?value};
  }
}

/// Represents an sdk version.
class SdkVersion {
  /// Inclusive minimum value of an sdk version.
  core.int? min;

  SdkVersion({this.min});

  SdkVersion.fromJson(core.Map json_) : this(min: json_['min'] as core.int?);

  core.Map<core.String, core.dynamic> toJson() {
    final min = this.min;
    return {'min': ?min};
  }
}

/// Targeting based on sdk version.
class SdkVersionTargeting {
  /// Targeting of other sibling directories that were in the Bundle.
  ///
  /// For main splits this is targeting of other main splits.
  core.List<SdkVersion>? alternatives;

  /// Value of an sdk version.
  core.List<SdkVersion>? value;

  SdkVersionTargeting({this.alternatives, this.value});

  SdkVersionTargeting.fromJson(core.Map json_)
    : this(
        alternatives: (json_['alternatives'] as core.List?)
            ?.map(
              (value) => SdkVersion.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        value: (json_['value'] as core.List?)
            ?.map(
              (value) => SdkVersion.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final alternatives = this.alternatives;
    final value = this.value;
    return {'alternatives': ?alternatives, 'value': ?value};
  }
}

/// The promotion applied on this item when purchased.
class SignupPromotion {
  /// A one-time code was applied.
  OneTimeCode? oneTimeCode;

  /// A vanity code was applied.
  VanityCode? vanityCode;

  SignupPromotion({this.oneTimeCode, this.vanityCode});

  SignupPromotion.fromJson(core.Map json_)
    : this(
        oneTimeCode: json_.containsKey('oneTimeCode')
            ? OneTimeCode.fromJson(
                json_['oneTimeCode'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        vanityCode: json_.containsKey('vanityCode')
            ? VanityCode.fromJson(
                json_['vanityCode'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final oneTimeCode = this.oneTimeCode;
    final vanityCode = this.vanityCode;
    return {'oneTimeCode': ?oneTimeCode, 'vanityCode': ?vanityCode};
  }
}

/// Holds data specific to Split APKs.
class SplitApkMetadata {
  /// Indicates whether this APK is the main split of the module.
  core.bool? isMasterSplit;

  /// Id of the split.
  core.String? splitId;

  SplitApkMetadata({this.isMasterSplit, this.splitId});

  SplitApkMetadata.fromJson(core.Map json_)
    : this(
        isMasterSplit: json_['isMasterSplit'] as core.bool?,
        splitId: json_['splitId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final isMasterSplit = this.isMasterSplit;
    final splitId = this.splitId;
    return {'isMasterSplit': ?isMasterSplit, 'splitId': ?splitId};
  }
}

/// Variant is a group of APKs that covers a part of the device configuration
/// space.
///
/// APKs from multiple variants are never combined on one device.
class SplitApkVariant {
  /// Set of APKs, one set per module.
  core.List<ApkSet>? apkSet;

  /// Variant-level targeting.
  VariantTargeting? targeting;

  /// Number of the variant, starting at 0 (unless overridden).
  ///
  /// A device will receive APKs from the first variant that matches the device
  /// configuration, with higher variant numbers having priority over lower
  /// variant numbers.
  core.int? variantNumber;

  SplitApkVariant({this.apkSet, this.targeting, this.variantNumber});

  SplitApkVariant.fromJson(core.Map json_)
    : this(
        apkSet: (json_['apkSet'] as core.List?)
            ?.map(
              (value) =>
                  ApkSet.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
        targeting: json_.containsKey('targeting')
            ? VariantTargeting.fromJson(
                json_['targeting'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        variantNumber: json_['variantNumber'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final apkSet = this.apkSet;
    final targeting = this.targeting;
    final variantNumber = this.variantNumber;
    return {
      'apkSet': ?apkSet,
      'targeting': ?targeting,
      'variantNumber': ?variantNumber,
    };
  }
}

/// Holds data specific to Standalone APKs.
class StandaloneApkMetadata {
  /// Names of the modules fused in this standalone APK.
  core.List<core.String>? fusedModuleName;

  StandaloneApkMetadata({this.fusedModuleName});

  StandaloneApkMetadata.fromJson(core.Map json_)
    : this(
        fusedModuleName: (json_['fusedModuleName'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final fusedModuleName = this.fusedModuleName;
    return {'fusedModuleName': ?fusedModuleName};
  }
}

/// Information associated with purchases made with 'Subscribe with Google'.
class SubscribeWithGoogleInfo {
  /// The email address of the user when the subscription was purchased.
  core.String? emailAddress;

  /// The family name of the user when the subscription was purchased.
  core.String? familyName;

  /// The given name of the user when the subscription was purchased.
  core.String? givenName;

  /// The Google profile id of the user when the subscription was purchased.
  core.String? profileId;

  /// The profile name of the user when the subscription was purchased.
  core.String? profileName;

  SubscribeWithGoogleInfo({
    this.emailAddress,
    this.familyName,
    this.givenName,
    this.profileId,
    this.profileName,
  });

  SubscribeWithGoogleInfo.fromJson(core.Map json_)
    : this(
        emailAddress: json_['emailAddress'] as core.String?,
        familyName: json_['familyName'] as core.String?,
        givenName: json_['givenName'] as core.String?,
        profileId: json_['profileId'] as core.String?,
        profileName: json_['profileName'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final emailAddress = this.emailAddress;
    final familyName = this.familyName;
    final givenName = this.givenName;
    final profileId = this.profileId;
    final profileName = this.profileName;
    return {
      'emailAddress': ?emailAddress,
      'familyName': ?familyName,
      'givenName': ?givenName,
      'profileId': ?profileId,
      'profileName': ?profileName,
    };
  }
}

/// A single subscription for an app.
class Subscription {
  /// Deprecated: subscription archiving is not supported.
  ///
  /// Output only.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.bool? archived;

  /// The set of base plans for this subscription.
  ///
  /// Represents the prices and duration of the subscription if no other offers
  /// apply.
  core.List<BasePlan>? basePlans;

  /// List of localized listings for this subscription.
  ///
  /// Must contain at least an entry for the default language of the parent app.
  ///
  /// Required.
  core.List<SubscriptionListing>? listings;

  /// Package name of the parent app.
  ///
  /// Immutable.
  core.String? packageName;

  /// Unique product ID of the product.
  ///
  /// Unique within the parent app. Product IDs must be composed of lower-case
  /// letters (a-z), numbers (0-9), underscores (_) and dots (.). It must start
  /// with a lower-case letter or number, and be between 1 and 40 (inclusive)
  /// characters in length.
  ///
  /// Immutable.
  core.String? productId;

  /// Countries where the purchase of this subscription is restricted to payment
  /// methods registered in the same country.
  ///
  /// If empty, no payment location restrictions are imposed.
  ///
  /// Optional.
  RestrictedPaymentCountries? restrictedPaymentCountries;

  /// Details about taxes and legal compliance.
  SubscriptionTaxAndComplianceSettings? taxAndComplianceSettings;

  Subscription({
    this.archived,
    this.basePlans,
    this.listings,
    this.packageName,
    this.productId,
    this.restrictedPaymentCountries,
    this.taxAndComplianceSettings,
  });

  Subscription.fromJson(core.Map json_)
    : this(
        archived: json_['archived'] as core.bool?,
        basePlans: (json_['basePlans'] as core.List?)
            ?.map(
              (value) => BasePlan.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        listings: (json_['listings'] as core.List?)
            ?.map(
              (value) => SubscriptionListing.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        packageName: json_['packageName'] as core.String?,
        productId: json_['productId'] as core.String?,
        restrictedPaymentCountries:
            json_.containsKey('restrictedPaymentCountries')
            ? RestrictedPaymentCountries.fromJson(
                json_['restrictedPaymentCountries']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        taxAndComplianceSettings: json_.containsKey('taxAndComplianceSettings')
            ? SubscriptionTaxAndComplianceSettings.fromJson(
                json_['taxAndComplianceSettings']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final archived = this.archived;
    final basePlans = this.basePlans;
    final listings = this.listings;
    final packageName = this.packageName;
    final productId = this.productId;
    final restrictedPaymentCountries = this.restrictedPaymentCountries;
    final taxAndComplianceSettings = this.taxAndComplianceSettings;
    return {
      'archived': ?archived,
      'basePlans': ?basePlans,
      'listings': ?listings,
      'packageName': ?packageName,
      'productId': ?productId,
      'restrictedPaymentCountries': ?restrictedPaymentCountries,
      'taxAndComplianceSettings': ?taxAndComplianceSettings,
    };
  }
}

/// Information provided by the user when they complete the subscription
/// cancellation flow (cancellation reason survey).
class SubscriptionCancelSurveyResult {
  /// The cancellation reason the user chose in the survey.
  ///
  /// Possible values are: 0. Other 1. I don't use this service enough 2.
  /// Technical issues 3. Cost-related reasons 4. I found a better app
  core.int? cancelSurveyReason;

  /// The customized input cancel reason from the user.
  ///
  /// Only present when cancelReason is 0.
  core.String? userInputCancelReason;

  SubscriptionCancelSurveyResult({
    this.cancelSurveyReason,
    this.userInputCancelReason,
  });

  SubscriptionCancelSurveyResult.fromJson(core.Map json_)
    : this(
        cancelSurveyReason: json_['cancelSurveyReason'] as core.int?,
        userInputCancelReason: json_['userInputCancelReason'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final cancelSurveyReason = this.cancelSurveyReason;
    final userInputCancelReason = this.userInputCancelReason;
    return {
      'cancelSurveyReason': ?cancelSurveyReason,
      'userInputCancelReason': ?userInputCancelReason,
    };
  }
}

/// A SubscriptionDeferralInfo contains the data needed to defer a subscription
/// purchase to a future expiry time.
class SubscriptionDeferralInfo {
  /// The desired next expiry time to assign to the subscription, in
  /// milliseconds since the Epoch.
  ///
  /// The given time must be later/greater than the current expiry time for the
  /// subscription.
  core.String? desiredExpiryTimeMillis;

  /// The expected expiry time for the subscription.
  ///
  /// If the current expiry time for the subscription is not the value specified
  /// here, the deferral will not occur.
  core.String? expectedExpiryTimeMillis;

  SubscriptionDeferralInfo({
    this.desiredExpiryTimeMillis,
    this.expectedExpiryTimeMillis,
  });

  SubscriptionDeferralInfo.fromJson(core.Map json_)
    : this(
        desiredExpiryTimeMillis:
            json_['desiredExpiryTimeMillis'] as core.String?,
        expectedExpiryTimeMillis:
            json_['expectedExpiryTimeMillis'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final desiredExpiryTimeMillis = this.desiredExpiryTimeMillis;
    final expectedExpiryTimeMillis = this.expectedExpiryTimeMillis;
    return {
      'desiredExpiryTimeMillis': ?desiredExpiryTimeMillis,
      'expectedExpiryTimeMillis': ?expectedExpiryTimeMillis,
    };
  }
}

/// Details of a subscription purchase.
class SubscriptionDetails {
  /// The base plan ID of the subscription.
  core.String? basePlanId;

  /// The offer ID for the current subscription offer.
  core.String? offerId;

  /// The pricing phase for the billing period funded by this order.
  ///
  /// Deprecated. Use offer_phase_details instead.
  /// Possible string values are:
  /// - "OFFER_PHASE_UNSPECIFIED" : Offer phase unspecified. This value is not
  /// used.
  /// - "BASE" : The order funds a base price period.
  /// - "INTRODUCTORY" : The order funds an introductory pricing period.
  /// - "FREE_TRIAL" : The order funds a free trial period.
  core.String? offerPhase;

  /// The pricing phase details for the entitlement period funded by this order.
  OfferPhaseDetails? offerPhaseDetails;

  /// The end of the billing period funded by this order.
  ///
  /// This is a snapshot of the billing/service period end time at the moment
  /// the order was processed, and should be used only for accounting. To get
  /// the current end time of the subscription service period, use
  /// purchases.subscriptionsv2.get.
  core.String? servicePeriodEndTime;

  /// The start of the billing period funded by this order.
  ///
  /// This is a snapshot of the billing/service period start time at the moment
  /// the order was processed, and should be used only for accounting.
  core.String? servicePeriodStartTime;

  SubscriptionDetails({
    this.basePlanId,
    this.offerId,
    this.offerPhase,
    this.offerPhaseDetails,
    this.servicePeriodEndTime,
    this.servicePeriodStartTime,
  });

  SubscriptionDetails.fromJson(core.Map json_)
    : this(
        basePlanId: json_['basePlanId'] as core.String?,
        offerId: json_['offerId'] as core.String?,
        offerPhase: json_['offerPhase'] as core.String?,
        offerPhaseDetails: json_.containsKey('offerPhaseDetails')
            ? OfferPhaseDetails.fromJson(
                json_['offerPhaseDetails']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        servicePeriodEndTime: json_['servicePeriodEndTime'] as core.String?,
        servicePeriodStartTime: json_['servicePeriodStartTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final basePlanId = this.basePlanId;
    final offerId = this.offerId;
    final offerPhase = this.offerPhase;
    final offerPhaseDetails = this.offerPhaseDetails;
    final servicePeriodEndTime = this.servicePeriodEndTime;
    final servicePeriodStartTime = this.servicePeriodStartTime;
    return {
      'basePlanId': ?basePlanId,
      'offerId': ?offerId,
      'offerPhase': ?offerPhase,
      'offerPhaseDetails': ?offerPhaseDetails,
      'servicePeriodEndTime': ?servicePeriodEndTime,
      'servicePeriodStartTime': ?servicePeriodStartTime,
    };
  }
}

/// Price change related information of a subscription item.
class SubscriptionItemPriceChangeDetails {
  /// The renewal time at which the price change will become effective for the
  /// user.
  ///
  /// This is subject to change(to a future time) due to cases where the renewal
  /// time shifts like pause. This field is only populated if the price change
  /// has not taken effect.
  core.String? expectedNewPriceChargeTime;

  /// New recurring price for the subscription item.
  Money? newPrice;

  /// Price change mode specifies how the subscription item price is changing.
  /// Possible string values are:
  /// - "PRICE_CHANGE_MODE_UNSPECIFIED" : Price change mode unspecified. This
  /// value should never be set.
  /// - "PRICE_DECREASE" : If the subscription price is decreasing.
  /// - "PRICE_INCREASE" : If the subscription price is increasing and the user
  /// needs to accept it.
  /// - "OPT_OUT_PRICE_INCREASE" : If the subscription price is increasing with
  /// opt out mode.
  core.String? priceChangeMode;

  /// State the price change is currently in.
  /// Possible string values are:
  /// - "PRICE_CHANGE_STATE_UNSPECIFIED" : Price change state unspecified. This
  /// value should not be used.
  /// - "OUTSTANDING" : Waiting for the user to agree for the price change.
  /// - "CONFIRMED" : The price change is confirmed to happen for the user.
  /// - "APPLIED" : The price change is applied, i.e. the user has started being
  /// charged the new price.
  /// - "CANCELED" : The price change was canceled.
  core.String? priceChangeState;

  SubscriptionItemPriceChangeDetails({
    this.expectedNewPriceChargeTime,
    this.newPrice,
    this.priceChangeMode,
    this.priceChangeState,
  });

  SubscriptionItemPriceChangeDetails.fromJson(core.Map json_)
    : this(
        expectedNewPriceChargeTime:
            json_['expectedNewPriceChargeTime'] as core.String?,
        newPrice: json_.containsKey('newPrice')
            ? Money.fromJson(
                json_['newPrice'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        priceChangeMode: json_['priceChangeMode'] as core.String?,
        priceChangeState: json_['priceChangeState'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final expectedNewPriceChargeTime = this.expectedNewPriceChargeTime;
    final newPrice = this.newPrice;
    final priceChangeMode = this.priceChangeMode;
    final priceChangeState = this.priceChangeState;
    return {
      'expectedNewPriceChargeTime': ?expectedNewPriceChargeTime,
      'newPrice': ?newPrice,
      'priceChangeMode': ?priceChangeMode,
      'priceChangeState': ?priceChangeState,
    };
  }
}

/// The consumer-visible metadata of a subscription.
class SubscriptionListing {
  /// A list of benefits shown to the user on platforms such as the Play Store
  /// and in restoration flows in the language of this listing.
  ///
  /// Plain text. Ordered list of at most four benefits.
  core.List<core.String>? benefits;

  /// The description of this subscription in the language of this listing.
  ///
  /// Maximum length - 80 characters. Plain text.
  core.String? description;

  /// The language of this listing, as defined by BCP-47, e.g. "en-US".
  ///
  /// Required.
  core.String? languageCode;

  /// The title of this subscription in the language of this listing.
  ///
  /// Plain text.
  ///
  /// Required.
  core.String? title;

  SubscriptionListing({
    this.benefits,
    this.description,
    this.languageCode,
    this.title,
  });

  SubscriptionListing.fromJson(core.Map json_)
    : this(
        benefits: (json_['benefits'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        description: json_['description'] as core.String?,
        languageCode: json_['languageCode'] as core.String?,
        title: json_['title'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final benefits = this.benefits;
    final description = this.description;
    final languageCode = this.languageCode;
    final title = this.title;
    return {
      'benefits': ?benefits,
      'description': ?description,
      'languageCode': ?languageCode,
      'title': ?title,
    };
  }
}

/// A single, temporary offer
class SubscriptionOffer {
  /// The ID of the base plan to which this offer is an extension.
  ///
  /// Required. Immutable.
  core.String? basePlanId;

  /// Unique ID of this subscription offer.
  ///
  /// Must be unique within the base plan.
  ///
  /// Required. Immutable.
  core.String? offerId;

  /// List of up to 20 custom tags specified for this offer, and returned to the
  /// app through the billing library.
  core.List<OfferTag>? offerTags;

  /// The configuration for any new locations Play may launch in the future.
  OtherRegionsSubscriptionOfferConfig? otherRegionsConfig;

  /// The package name of the app the parent subscription belongs to.
  ///
  /// Required. Immutable.
  core.String? packageName;

  /// The phases of this subscription offer.
  ///
  /// Must contain at least one and at most two entries. Users will always
  /// receive all these phases in the specified order.
  ///
  /// Required.
  core.List<SubscriptionOfferPhase>? phases;

  /// The ID of the parent subscription this offer belongs to.
  ///
  /// Required. Immutable.
  core.String? productId;

  /// The region-specific configuration of this offer.
  ///
  /// Must contain at least one entry.
  ///
  /// Required.
  core.List<RegionalSubscriptionOfferConfig>? regionalConfigs;

  /// The current state of this offer.
  ///
  /// Can be changed using Activate and Deactivate actions. NB: the base plan
  /// state supersedes this state, so an active offer may not be available if
  /// the base plan is not active.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Default value, should never be used.
  /// - "DRAFT" : The subscription offer is not and has never been available to
  /// users.
  /// - "ACTIVE" : The subscription offer is available to new and existing
  /// users.
  /// - "INACTIVE" : The subscription offer is not available to new users.
  /// Existing users retain access.
  core.String? state;

  /// The requirements that users need to fulfil to be eligible for this offer.
  ///
  /// Represents the requirements that Play will evaluate to decide whether an
  /// offer should be returned. Developers may further filter these offers
  /// themselves.
  SubscriptionOfferTargeting? targeting;

  SubscriptionOffer({
    this.basePlanId,
    this.offerId,
    this.offerTags,
    this.otherRegionsConfig,
    this.packageName,
    this.phases,
    this.productId,
    this.regionalConfigs,
    this.state,
    this.targeting,
  });

  SubscriptionOffer.fromJson(core.Map json_)
    : this(
        basePlanId: json_['basePlanId'] as core.String?,
        offerId: json_['offerId'] as core.String?,
        offerTags: (json_['offerTags'] as core.List?)
            ?.map(
              (value) => OfferTag.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        otherRegionsConfig: json_.containsKey('otherRegionsConfig')
            ? OtherRegionsSubscriptionOfferConfig.fromJson(
                json_['otherRegionsConfig']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        packageName: json_['packageName'] as core.String?,
        phases: (json_['phases'] as core.List?)
            ?.map(
              (value) => SubscriptionOfferPhase.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        productId: json_['productId'] as core.String?,
        regionalConfigs: (json_['regionalConfigs'] as core.List?)
            ?.map(
              (value) => RegionalSubscriptionOfferConfig.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        state: json_['state'] as core.String?,
        targeting: json_.containsKey('targeting')
            ? SubscriptionOfferTargeting.fromJson(
                json_['targeting'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final basePlanId = this.basePlanId;
    final offerId = this.offerId;
    final offerTags = this.offerTags;
    final otherRegionsConfig = this.otherRegionsConfig;
    final packageName = this.packageName;
    final phases = this.phases;
    final productId = this.productId;
    final regionalConfigs = this.regionalConfigs;
    final state = this.state;
    final targeting = this.targeting;
    return {
      'basePlanId': ?basePlanId,
      'offerId': ?offerId,
      'offerTags': ?offerTags,
      'otherRegionsConfig': ?otherRegionsConfig,
      'packageName': ?packageName,
      'phases': ?phases,
      'productId': ?productId,
      'regionalConfigs': ?regionalConfigs,
      'state': ?state,
      'targeting': ?targeting,
    };
  }
}

/// A single phase of a subscription offer.
class SubscriptionOfferPhase {
  /// The duration of a single recurrence of this phase.
  ///
  /// Specified in ISO 8601 format.
  ///
  /// Required.
  core.String? duration;

  /// Pricing information for any new locations Play may launch in.
  OtherRegionsSubscriptionOfferPhaseConfig? otherRegionsConfig;

  /// The number of times this phase repeats.
  ///
  /// If this offer phase is not free, each recurrence charges the user the
  /// price of this offer phase.
  ///
  /// Required.
  core.int? recurrenceCount;

  /// The region-specific configuration of this offer phase.
  ///
  /// This list must contain exactly one entry for each region for which the
  /// subscription offer has a regional config.
  ///
  /// Required.
  core.List<RegionalSubscriptionOfferPhaseConfig>? regionalConfigs;

  SubscriptionOfferPhase({
    this.duration,
    this.otherRegionsConfig,
    this.recurrenceCount,
    this.regionalConfigs,
  });

  SubscriptionOfferPhase.fromJson(core.Map json_)
    : this(
        duration: json_['duration'] as core.String?,
        otherRegionsConfig: json_.containsKey('otherRegionsConfig')
            ? OtherRegionsSubscriptionOfferPhaseConfig.fromJson(
                json_['otherRegionsConfig']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        recurrenceCount: json_['recurrenceCount'] as core.int?,
        regionalConfigs: (json_['regionalConfigs'] as core.List?)
            ?.map(
              (value) => RegionalSubscriptionOfferPhaseConfig.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final duration = this.duration;
    final otherRegionsConfig = this.otherRegionsConfig;
    final recurrenceCount = this.recurrenceCount;
    final regionalConfigs = this.regionalConfigs;
    return {
      'duration': ?duration,
      'otherRegionsConfig': ?otherRegionsConfig,
      'recurrenceCount': ?recurrenceCount,
      'regionalConfigs': ?regionalConfigs,
    };
  }
}

/// Defines the rule a user needs to satisfy to receive this offer.
class SubscriptionOfferTargeting {
  /// Offer targeting rule for new user acquisition.
  AcquisitionTargetingRule? acquisitionRule;

  /// Offer targeting rule for upgrading users' existing plans.
  UpgradeTargetingRule? upgradeRule;

  SubscriptionOfferTargeting({this.acquisitionRule, this.upgradeRule});

  SubscriptionOfferTargeting.fromJson(core.Map json_)
    : this(
        acquisitionRule: json_.containsKey('acquisitionRule')
            ? AcquisitionTargetingRule.fromJson(
                json_['acquisitionRule'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        upgradeRule: json_.containsKey('upgradeRule')
            ? UpgradeTargetingRule.fromJson(
                json_['upgradeRule'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final acquisitionRule = this.acquisitionRule;
    final upgradeRule = this.upgradeRule;
    return {'acquisitionRule': ?acquisitionRule, 'upgradeRule': ?upgradeRule};
  }
}

/// Contains the price change information for a subscription that can be used to
/// control the user journey for the price change in the app.
///
/// This can be in the form of seeking confirmation from the user or tailoring
/// the experience for a successful conversion.
class SubscriptionPriceChange {
  /// The new price the subscription will renew with if the price change is
  /// accepted by the user.
  Price? newPrice;

  /// The current state of the price change.
  ///
  /// Possible values are: 0. Outstanding: State for a pending price change
  /// waiting for the user to agree. In this state, you can optionally seek
  /// confirmation from the user using the In-App API. 1. Accepted: State for an
  /// accepted price change that the subscription will renew with unless it's
  /// canceled. The price change takes effect on a future date when the
  /// subscription renews. Note that the change might not occur when the
  /// subscription is renewed next.
  core.int? state;

  SubscriptionPriceChange({this.newPrice, this.state});

  SubscriptionPriceChange.fromJson(core.Map json_)
    : this(
        newPrice: json_.containsKey('newPrice')
            ? Price.fromJson(
                json_['newPrice'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        state: json_['state'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final newPrice = this.newPrice;
    final state = this.state;
    return {'newPrice': ?newPrice, 'state': ?state};
  }
}

/// A SubscriptionPurchase resource indicates the status of a user's
/// subscription purchase.
class SubscriptionPurchase {
  /// The acknowledgement state of the subscription product.
  ///
  /// Possible values are: 0. Yet to be acknowledged 1. Acknowledged
  core.int? acknowledgementState;

  /// Whether the subscription will automatically be renewed when it reaches its
  /// current expiry time.
  core.bool? autoRenewing;

  /// Time at which the subscription will be automatically resumed, in
  /// milliseconds since the Epoch.
  ///
  /// Only present if the user has requested to pause the subscription.
  core.String? autoResumeTimeMillis;

  /// The reason why a subscription was canceled or is not auto-renewing.
  ///
  /// Possible values are: 0. User canceled the subscription 1. Subscription was
  /// canceled by the system, for example because of a billing problem 2.
  /// Subscription was replaced with a new subscription 3. Subscription was
  /// canceled by the developer
  core.int? cancelReason;

  /// Information provided by the user when they complete the subscription
  /// cancellation flow (cancellation reason survey).
  SubscriptionCancelSurveyResult? cancelSurveyResult;

  /// ISO 3166-1 alpha-2 billing country/region code of the user at the time the
  /// subscription was granted.
  core.String? countryCode;

  /// A developer-specified string that contains supplemental information about
  /// an order.
  core.String? developerPayload;

  /// The email address of the user when the subscription was purchased.
  ///
  /// Only present for purchases made with 'Subscribe with Google'.
  core.String? emailAddress;

  /// Time at which the subscription will expire, in milliseconds since the
  /// Epoch.
  core.String? expiryTimeMillis;

  /// User account identifier in the third-party service.
  ///
  /// Only present if account linking happened as part of the subscription
  /// purchase flow.
  core.String? externalAccountId;

  /// The family name of the user when the subscription was purchased.
  ///
  /// Only present for purchases made with 'Subscribe with Google'.
  core.String? familyName;

  /// The given name of the user when the subscription was purchased.
  ///
  /// Only present for purchases made with 'Subscribe with Google'.
  core.String? givenName;

  /// Introductory price information of the subscription.
  ///
  /// This is only present when the subscription was purchased with an
  /// introductory price. This field does not indicate the subscription is
  /// currently in introductory price period.
  IntroductoryPriceInfo? introductoryPriceInfo;

  /// This kind represents a subscriptionPurchase object in the androidpublisher
  /// service.
  core.String? kind;

  /// The purchase token of the originating purchase if this subscription is one
  /// of the following: 0.
  ///
  /// Re-signup of a canceled but non-lapsed subscription 1. Upgrade/downgrade
  /// from a previous subscription For example, suppose a user originally signs
  /// up and you receive purchase token X, then the user cancels and goes
  /// through the resignup flow (before their subscription lapses) and you
  /// receive purchase token Y, and finally the user upgrades their subscription
  /// and you receive purchase token Z. If you call this API with purchase token
  /// Z, this field will be set to Y. If you call this API with purchase token
  /// Y, this field will be set to X. If you call this API with purchase token
  /// X, this field will not be set.
  core.String? linkedPurchaseToken;

  /// An obfuscated version of the id that is uniquely associated with the
  /// user's account in your app.
  ///
  /// Present for the following purchases: * If account linking happened as part
  /// of the subscription purchase flow. * It was specified using
  /// https://developer.android.com/reference/com/android/billingclient/api/BillingFlowParams.Builder#setobfuscatedaccountid
  /// when the purchase was made.
  core.String? obfuscatedExternalAccountId;

  /// An obfuscated version of the id that is uniquely associated with the
  /// user's profile in your app.
  ///
  /// Only present if specified using
  /// https://developer.android.com/reference/com/android/billingclient/api/BillingFlowParams.Builder#setobfuscatedprofileid
  /// when the purchase was made.
  core.String? obfuscatedExternalProfileId;

  /// The order id of the latest recurring order associated with the purchase of
  /// the subscription.
  ///
  /// If the subscription was canceled because payment was declined, this will
  /// be the order id from the payment declined order.
  core.String? orderId;

  /// The payment state of the subscription.
  ///
  /// Possible values are: 0. Payment pending 1. Payment received 2. Free trial
  /// 3. Pending deferred upgrade/downgrade Not present for canceled, expired
  /// subscriptions.
  core.int? paymentState;

  /// Price of the subscription, For tax exclusive countries, the price doesn't
  /// include tax.
  ///
  /// For tax inclusive countries, the price includes tax. Price is expressed in
  /// micro-units, where 1,000,000 micro-units represents one unit of the
  /// currency. For example, if the subscription price is €1.99,
  /// price_amount_micros is 1990000.
  core.String? priceAmountMicros;

  /// The latest price change information available.
  ///
  /// This is present only when there is an upcoming price change for the
  /// subscription yet to be applied. Once the subscription renews with the new
  /// price or the subscription is canceled, no price change information will be
  /// returned.
  SubscriptionPriceChange? priceChange;

  /// ISO 4217 currency code for the subscription price.
  ///
  /// For example, if the price is specified in British pounds sterling,
  /// price_currency_code is "GBP".
  core.String? priceCurrencyCode;

  /// The Google profile id of the user when the subscription was purchased.
  ///
  /// Only present for purchases made with 'Subscribe with Google'.
  core.String? profileId;

  /// The profile name of the user when the subscription was purchased.
  ///
  /// Only present for purchases made with 'Subscribe with Google'.
  core.String? profileName;

  /// The promotion code applied on this purchase.
  ///
  /// This field is only set if a vanity code promotion is applied when the
  /// subscription was purchased.
  core.String? promotionCode;

  /// The type of promotion applied on this purchase.
  ///
  /// This field is only set if a promotion is applied when the subscription was
  /// purchased. Possible values are: 0. One time code 1. Vanity code
  core.int? promotionType;

  /// The type of purchase of the subscription.
  ///
  /// This field is only set if this purchase was not made using the standard
  /// in-app billing flow. Possible values are: 0. Test (i.e. purchased from a
  /// license testing account) 1. Promo (i.e. purchased using a promo code)
  core.int? purchaseType;

  /// Time at which the subscription was granted, in milliseconds since the
  /// Epoch.
  core.String? startTimeMillis;

  /// The time at which the subscription was canceled by the user, in
  /// milliseconds since the epoch.
  ///
  /// Only present if cancelReason is 0.
  core.String? userCancellationTimeMillis;

  SubscriptionPurchase({
    this.acknowledgementState,
    this.autoRenewing,
    this.autoResumeTimeMillis,
    this.cancelReason,
    this.cancelSurveyResult,
    this.countryCode,
    this.developerPayload,
    this.emailAddress,
    this.expiryTimeMillis,
    this.externalAccountId,
    this.familyName,
    this.givenName,
    this.introductoryPriceInfo,
    this.kind,
    this.linkedPurchaseToken,
    this.obfuscatedExternalAccountId,
    this.obfuscatedExternalProfileId,
    this.orderId,
    this.paymentState,
    this.priceAmountMicros,
    this.priceChange,
    this.priceCurrencyCode,
    this.profileId,
    this.profileName,
    this.promotionCode,
    this.promotionType,
    this.purchaseType,
    this.startTimeMillis,
    this.userCancellationTimeMillis,
  });

  SubscriptionPurchase.fromJson(core.Map json_)
    : this(
        acknowledgementState: json_['acknowledgementState'] as core.int?,
        autoRenewing: json_['autoRenewing'] as core.bool?,
        autoResumeTimeMillis: json_['autoResumeTimeMillis'] as core.String?,
        cancelReason: json_['cancelReason'] as core.int?,
        cancelSurveyResult: json_.containsKey('cancelSurveyResult')
            ? SubscriptionCancelSurveyResult.fromJson(
                json_['cancelSurveyResult']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        countryCode: json_['countryCode'] as core.String?,
        developerPayload: json_['developerPayload'] as core.String?,
        emailAddress: json_['emailAddress'] as core.String?,
        expiryTimeMillis: json_['expiryTimeMillis'] as core.String?,
        externalAccountId: json_['externalAccountId'] as core.String?,
        familyName: json_['familyName'] as core.String?,
        givenName: json_['givenName'] as core.String?,
        introductoryPriceInfo: json_.containsKey('introductoryPriceInfo')
            ? IntroductoryPriceInfo.fromJson(
                json_['introductoryPriceInfo']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        kind: json_['kind'] as core.String?,
        linkedPurchaseToken: json_['linkedPurchaseToken'] as core.String?,
        obfuscatedExternalAccountId:
            json_['obfuscatedExternalAccountId'] as core.String?,
        obfuscatedExternalProfileId:
            json_['obfuscatedExternalProfileId'] as core.String?,
        orderId: json_['orderId'] as core.String?,
        paymentState: json_['paymentState'] as core.int?,
        priceAmountMicros: json_['priceAmountMicros'] as core.String?,
        priceChange: json_.containsKey('priceChange')
            ? SubscriptionPriceChange.fromJson(
                json_['priceChange'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        priceCurrencyCode: json_['priceCurrencyCode'] as core.String?,
        profileId: json_['profileId'] as core.String?,
        profileName: json_['profileName'] as core.String?,
        promotionCode: json_['promotionCode'] as core.String?,
        promotionType: json_['promotionType'] as core.int?,
        purchaseType: json_['purchaseType'] as core.int?,
        startTimeMillis: json_['startTimeMillis'] as core.String?,
        userCancellationTimeMillis:
            json_['userCancellationTimeMillis'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final acknowledgementState = this.acknowledgementState;
    final autoRenewing = this.autoRenewing;
    final autoResumeTimeMillis = this.autoResumeTimeMillis;
    final cancelReason = this.cancelReason;
    final cancelSurveyResult = this.cancelSurveyResult;
    final countryCode = this.countryCode;
    final developerPayload = this.developerPayload;
    final emailAddress = this.emailAddress;
    final expiryTimeMillis = this.expiryTimeMillis;
    final externalAccountId = this.externalAccountId;
    final familyName = this.familyName;
    final givenName = this.givenName;
    final introductoryPriceInfo = this.introductoryPriceInfo;
    final kind = this.kind;
    final linkedPurchaseToken = this.linkedPurchaseToken;
    final obfuscatedExternalAccountId = this.obfuscatedExternalAccountId;
    final obfuscatedExternalProfileId = this.obfuscatedExternalProfileId;
    final orderId = this.orderId;
    final paymentState = this.paymentState;
    final priceAmountMicros = this.priceAmountMicros;
    final priceChange = this.priceChange;
    final priceCurrencyCode = this.priceCurrencyCode;
    final profileId = this.profileId;
    final profileName = this.profileName;
    final promotionCode = this.promotionCode;
    final promotionType = this.promotionType;
    final purchaseType = this.purchaseType;
    final startTimeMillis = this.startTimeMillis;
    final userCancellationTimeMillis = this.userCancellationTimeMillis;
    return {
      'acknowledgementState': ?acknowledgementState,
      'autoRenewing': ?autoRenewing,
      'autoResumeTimeMillis': ?autoResumeTimeMillis,
      'cancelReason': ?cancelReason,
      'cancelSurveyResult': ?cancelSurveyResult,
      'countryCode': ?countryCode,
      'developerPayload': ?developerPayload,
      'emailAddress': ?emailAddress,
      'expiryTimeMillis': ?expiryTimeMillis,
      'externalAccountId': ?externalAccountId,
      'familyName': ?familyName,
      'givenName': ?givenName,
      'introductoryPriceInfo': ?introductoryPriceInfo,
      'kind': ?kind,
      'linkedPurchaseToken': ?linkedPurchaseToken,
      'obfuscatedExternalAccountId': ?obfuscatedExternalAccountId,
      'obfuscatedExternalProfileId': ?obfuscatedExternalProfileId,
      'orderId': ?orderId,
      'paymentState': ?paymentState,
      'priceAmountMicros': ?priceAmountMicros,
      'priceChange': ?priceChange,
      'priceCurrencyCode': ?priceCurrencyCode,
      'profileId': ?profileId,
      'profileName': ?profileName,
      'promotionCode': ?promotionCode,
      'promotionType': ?promotionType,
      'purchaseType': ?purchaseType,
      'startTimeMillis': ?startTimeMillis,
      'userCancellationTimeMillis': ?userCancellationTimeMillis,
    };
  }
}

/// Item-level info for a subscription purchase.
class SubscriptionPurchaseLineItem {
  /// The item is auto renewing.
  AutoRenewingPlan? autoRenewingPlan;

  /// Information for deferred item removal.
  DeferredItemRemoval? deferredItemRemoval;

  /// Information for deferred item replacement.
  DeferredItemReplacement? deferredItemReplacement;

  /// Time at which the subscription expired or will expire unless the access is
  /// extended (ex.
  ///
  /// renews).
  core.String? expiryTime;

  /// Details of the item being replaced.
  ///
  /// This field is only populated if this item replaced another item in a
  /// previous subscription and is only available for 60 days after the purchase
  /// time.
  ItemReplacement? itemReplacement;

  /// The order id of the latest successful order associated with this item.
  ///
  /// Not present if the item is not owned by the user yet (e.g. the item being
  /// deferred replaced to).
  core.String? latestSuccessfulOrderId;

  /// The offer details for this item.
  OfferDetails? offerDetails;

  /// Current offer phase details for this item.
  OfferPhase? offerPhase;

  /// The item is prepaid.
  PrepaidPlan? prepaidPlan;

  /// The purchased product ID (for example, 'monthly001').
  core.String? productId;

  /// Promotion details about this item.
  ///
  /// Only set if a promotion was applied during signup.
  SignupPromotion? signupPromotion;

  SubscriptionPurchaseLineItem({
    this.autoRenewingPlan,
    this.deferredItemRemoval,
    this.deferredItemReplacement,
    this.expiryTime,
    this.itemReplacement,
    this.latestSuccessfulOrderId,
    this.offerDetails,
    this.offerPhase,
    this.prepaidPlan,
    this.productId,
    this.signupPromotion,
  });

  SubscriptionPurchaseLineItem.fromJson(core.Map json_)
    : this(
        autoRenewingPlan: json_.containsKey('autoRenewingPlan')
            ? AutoRenewingPlan.fromJson(
                json_['autoRenewingPlan']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        deferredItemRemoval: json_.containsKey('deferredItemRemoval')
            ? DeferredItemRemoval.fromJson(
                json_['deferredItemRemoval']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        deferredItemReplacement: json_.containsKey('deferredItemReplacement')
            ? DeferredItemReplacement.fromJson(
                json_['deferredItemReplacement']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        expiryTime: json_['expiryTime'] as core.String?,
        itemReplacement: json_.containsKey('itemReplacement')
            ? ItemReplacement.fromJson(
                json_['itemReplacement'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        latestSuccessfulOrderId:
            json_['latestSuccessfulOrderId'] as core.String?,
        offerDetails: json_.containsKey('offerDetails')
            ? OfferDetails.fromJson(
                json_['offerDetails'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        offerPhase: json_.containsKey('offerPhase')
            ? OfferPhase.fromJson(
                json_['offerPhase'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        prepaidPlan: json_.containsKey('prepaidPlan')
            ? PrepaidPlan.fromJson(
                json_['prepaidPlan'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        productId: json_['productId'] as core.String?,
        signupPromotion: json_.containsKey('signupPromotion')
            ? SignupPromotion.fromJson(
                json_['signupPromotion'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final autoRenewingPlan = this.autoRenewingPlan;
    final deferredItemRemoval = this.deferredItemRemoval;
    final deferredItemReplacement = this.deferredItemReplacement;
    final expiryTime = this.expiryTime;
    final itemReplacement = this.itemReplacement;
    final latestSuccessfulOrderId = this.latestSuccessfulOrderId;
    final offerDetails = this.offerDetails;
    final offerPhase = this.offerPhase;
    final prepaidPlan = this.prepaidPlan;
    final productId = this.productId;
    final signupPromotion = this.signupPromotion;
    return {
      'autoRenewingPlan': ?autoRenewingPlan,
      'deferredItemRemoval': ?deferredItemRemoval,
      'deferredItemReplacement': ?deferredItemReplacement,
      'expiryTime': ?expiryTime,
      'itemReplacement': ?itemReplacement,
      'latestSuccessfulOrderId': ?latestSuccessfulOrderId,
      'offerDetails': ?offerDetails,
      'offerPhase': ?offerPhase,
      'prepaidPlan': ?prepaidPlan,
      'productId': ?productId,
      'signupPromotion': ?signupPromotion,
    };
  }
}

/// Indicates the status of a user's subscription purchase.
class SubscriptionPurchaseV2 {
  /// The acknowledgement state of the subscription.
  /// Possible string values are:
  /// - "ACKNOWLEDGEMENT_STATE_UNSPECIFIED" : Unspecified acknowledgement state.
  /// - "ACKNOWLEDGEMENT_STATE_PENDING" : The subscription is not acknowledged
  /// yet.
  /// - "ACKNOWLEDGEMENT_STATE_ACKNOWLEDGED" : The subscription is acknowledged.
  core.String? acknowledgementState;

  /// Additional context around canceled subscriptions.
  ///
  /// Only present if the subscription currently has subscription_state
  /// SUBSCRIPTION_STATE_CANCELED or SUBSCRIPTION_STATE_EXPIRED.
  CanceledStateContext? canceledStateContext;

  /// Entity tag representing the current state of the subscription.
  ///
  /// The developer will provide this etag for subscription actions. This etag
  /// is always present for auto-renewing and prepaid subscriptions.
  core.String? etag;

  /// User account identifier in the third-party service.
  ExternalAccountIdentifiers? externalAccountIdentifiers;

  /// This kind represents a SubscriptionPurchaseV2 object in the
  /// androidpublisher service.
  core.String? kind;

  /// Deprecated: Use line_items.latest_successful_order_id instead.
  ///
  /// The order id of the latest order associated with the purchase of the
  /// subscription. For autoRenewing subscription, this is the order id of
  /// signup order if it is not renewed yet, or the last recurring order id
  /// (success, pending, or declined order). For prepaid subscription, this is
  /// the order id associated with the queried purchase token.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? latestOrderId;

  /// Item-level info for a subscription purchase.
  ///
  /// The items in the same purchase should be either all with AutoRenewingPlan
  /// or all with PrepaidPlan.
  core.List<SubscriptionPurchaseLineItem>? lineItems;

  /// The purchase token of the old subscription if this subscription is one of
  /// the following: * Re-signup of a canceled but non-lapsed subscription *
  /// Upgrade/downgrade from a previous subscription.
  ///
  /// * Convert from prepaid to auto renewing subscription. * Convert from an
  /// auto renewing subscription to prepaid. * Topup a prepaid subscription.
  core.String? linkedPurchaseToken;

  /// Additional context for out of app purchases.
  ///
  /// This information is only present for re-subscription purchases
  /// (subscription purchases made after the previous subscription of the same
  /// product has expired) made through the Google Play subscriptions center.
  /// This field will be removed after you acknowledge the subscription.
  OutOfAppPurchaseContext? outOfAppPurchaseContext;

  /// Additional context around paused subscriptions.
  ///
  /// Only present if the subscription currently has subscription_state
  /// SUBSCRIPTION_STATE_PAUSED.
  PausedStateContext? pausedStateContext;

  /// ISO 3166-1 alpha-2 billing country/region code of the user at the time the
  /// subscription was granted.
  core.String? regionCode;

  /// Time at which the subscription was granted.
  ///
  /// Not set for pending subscriptions (subscription was created but awaiting
  /// payment during signup).
  core.String? startTime;

  /// User profile associated with purchases made with 'Subscribe with Google'.
  SubscribeWithGoogleInfo? subscribeWithGoogleInfo;

  /// The current state of the subscription.
  /// Possible string values are:
  /// - "SUBSCRIPTION_STATE_UNSPECIFIED" : Unspecified subscription state.
  /// - "SUBSCRIPTION_STATE_PENDING" : Subscription was created but awaiting
  /// payment during signup. In this state, all items are awaiting payment.
  /// - "SUBSCRIPTION_STATE_ACTIVE" : Subscription is active. - (1) If the
  /// subscription is an auto renewing plan, at least one item is
  /// auto_renew_enabled and not expired. - (2) If the subscription is a prepaid
  /// plan, at least one item is not expired.
  /// - "SUBSCRIPTION_STATE_PAUSED" : Subscription is paused. The state is only
  /// available when the subscription is an auto renewing plan. In this state,
  /// all items are in paused state.
  /// - "SUBSCRIPTION_STATE_IN_GRACE_PERIOD" : Subscription is in grace period.
  /// The state is only available when the subscription is an auto renewing
  /// plan. In this state, all items are in grace period.
  /// - "SUBSCRIPTION_STATE_ON_HOLD" : Subscription is on hold (suspended). The
  /// state is only available when the subscription is an auto renewing plan. In
  /// this state, all items are on hold.
  /// - "SUBSCRIPTION_STATE_CANCELED" : Subscription is canceled but not expired
  /// yet. The state is only available when the subscription is an auto renewing
  /// plan. All items have auto_renew_enabled set to false.
  /// - "SUBSCRIPTION_STATE_EXPIRED" : Subscription is expired. All items have
  /// expiry_time in the past.
  /// - "SUBSCRIPTION_STATE_PENDING_PURCHASE_CANCELED" : Pending transaction for
  /// subscription is canceled. If this pending purchase was for an existing
  /// subscription, use linked_purchase_token to get the current state of that
  /// subscription.
  core.String? subscriptionState;

  /// Only present if this subscription purchase is a test purchase.
  TestPurchase? testPurchase;

  SubscriptionPurchaseV2({
    this.acknowledgementState,
    this.canceledStateContext,
    this.etag,
    this.externalAccountIdentifiers,
    this.kind,
    this.latestOrderId,
    this.lineItems,
    this.linkedPurchaseToken,
    this.outOfAppPurchaseContext,
    this.pausedStateContext,
    this.regionCode,
    this.startTime,
    this.subscribeWithGoogleInfo,
    this.subscriptionState,
    this.testPurchase,
  });

  SubscriptionPurchaseV2.fromJson(core.Map json_)
    : this(
        acknowledgementState: json_['acknowledgementState'] as core.String?,
        canceledStateContext: json_.containsKey('canceledStateContext')
            ? CanceledStateContext.fromJson(
                json_['canceledStateContext']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        etag: json_['etag'] as core.String?,
        externalAccountIdentifiers:
            json_.containsKey('externalAccountIdentifiers')
            ? ExternalAccountIdentifiers.fromJson(
                json_['externalAccountIdentifiers']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        kind: json_['kind'] as core.String?,
        latestOrderId: json_['latestOrderId'] as core.String?,
        lineItems: (json_['lineItems'] as core.List?)
            ?.map(
              (value) => SubscriptionPurchaseLineItem.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        linkedPurchaseToken: json_['linkedPurchaseToken'] as core.String?,
        outOfAppPurchaseContext: json_.containsKey('outOfAppPurchaseContext')
            ? OutOfAppPurchaseContext.fromJson(
                json_['outOfAppPurchaseContext']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        pausedStateContext: json_.containsKey('pausedStateContext')
            ? PausedStateContext.fromJson(
                json_['pausedStateContext']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        regionCode: json_['regionCode'] as core.String?,
        startTime: json_['startTime'] as core.String?,
        subscribeWithGoogleInfo: json_.containsKey('subscribeWithGoogleInfo')
            ? SubscribeWithGoogleInfo.fromJson(
                json_['subscribeWithGoogleInfo']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        subscriptionState: json_['subscriptionState'] as core.String?,
        testPurchase: json_.containsKey('testPurchase')
            ? TestPurchase.fromJson(
                json_['testPurchase'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final acknowledgementState = this.acknowledgementState;
    final canceledStateContext = this.canceledStateContext;
    final etag = this.etag;
    final externalAccountIdentifiers = this.externalAccountIdentifiers;
    final kind = this.kind;
    final latestOrderId = this.latestOrderId;
    final lineItems = this.lineItems;
    final linkedPurchaseToken = this.linkedPurchaseToken;
    final outOfAppPurchaseContext = this.outOfAppPurchaseContext;
    final pausedStateContext = this.pausedStateContext;
    final regionCode = this.regionCode;
    final startTime = this.startTime;
    final subscribeWithGoogleInfo = this.subscribeWithGoogleInfo;
    final subscriptionState = this.subscriptionState;
    final testPurchase = this.testPurchase;
    return {
      'acknowledgementState': ?acknowledgementState,
      'canceledStateContext': ?canceledStateContext,
      'etag': ?etag,
      'externalAccountIdentifiers': ?externalAccountIdentifiers,
      'kind': ?kind,
      'latestOrderId': ?latestOrderId,
      'lineItems': ?lineItems,
      'linkedPurchaseToken': ?linkedPurchaseToken,
      'outOfAppPurchaseContext': ?outOfAppPurchaseContext,
      'pausedStateContext': ?pausedStateContext,
      'regionCode': ?regionCode,
      'startTime': ?startTime,
      'subscribeWithGoogleInfo': ?subscribeWithGoogleInfo,
      'subscriptionState': ?subscriptionState,
      'testPurchase': ?testPurchase,
    };
  }
}

/// Request for the purchases.subscriptions.acknowledge API.
class SubscriptionPurchasesAcknowledgeRequest {
  /// Payload to attach to the purchase.
  core.String? developerPayload;

  /// User account identifier in your app.
  ///
  /// Optional.
  ExternalAccountIds? externalAccountIds;

  SubscriptionPurchasesAcknowledgeRequest({
    this.developerPayload,
    this.externalAccountIds,
  });

  SubscriptionPurchasesAcknowledgeRequest.fromJson(core.Map json_)
    : this(
        developerPayload: json_['developerPayload'] as core.String?,
        externalAccountIds: json_.containsKey('externalAccountIds')
            ? ExternalAccountIds.fromJson(
                json_['externalAccountIds']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final developerPayload = this.developerPayload;
    final externalAccountIds = this.externalAccountIds;
    return {
      'developerPayload': ?developerPayload,
      'externalAccountIds': ?externalAccountIds,
    };
  }
}

/// Request for the purchases.subscriptions.defer API.
class SubscriptionPurchasesDeferRequest {
  /// The information about the new desired expiry time for the subscription.
  SubscriptionDeferralInfo? deferralInfo;

  SubscriptionPurchasesDeferRequest({this.deferralInfo});

  SubscriptionPurchasesDeferRequest.fromJson(core.Map json_)
    : this(
        deferralInfo: json_.containsKey('deferralInfo')
            ? SubscriptionDeferralInfo.fromJson(
                json_['deferralInfo'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final deferralInfo = this.deferralInfo;
    return {'deferralInfo': ?deferralInfo};
  }
}

/// Response for the purchases.subscriptions.defer API.
class SubscriptionPurchasesDeferResponse {
  /// The new expiry time for the subscription in milliseconds since the Epoch.
  core.String? newExpiryTimeMillis;

  SubscriptionPurchasesDeferResponse({this.newExpiryTimeMillis});

  SubscriptionPurchasesDeferResponse.fromJson(core.Map json_)
    : this(newExpiryTimeMillis: json_['newExpiryTimeMillis'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final newExpiryTimeMillis = this.newExpiryTimeMillis;
    return {'newExpiryTimeMillis': ?newExpiryTimeMillis};
  }
}

/// Details about taxation, Google Play policy, and legal compliance for
/// subscription products.
class SubscriptionTaxAndComplianceSettings {
  /// Digital content or service classification for products distributed to
  /// users in the European Economic Area (EEA).
  ///
  /// The withdrawal regime under EEA consumer laws depends on this
  /// classification. Refer to the
  /// [Help Center article](https://support.google.com/googleplay/android-developer/answer/10463498)
  /// for more information.
  /// Possible string values are:
  /// - "WITHDRAWAL_RIGHT_TYPE_UNSPECIFIED"
  /// - "WITHDRAWAL_RIGHT_DIGITAL_CONTENT"
  /// - "WITHDRAWAL_RIGHT_SERVICE"
  core.String? eeaWithdrawalRightType;

  /// Whether this subscription is declared as a product representing a
  /// tokenized digital asset.
  core.bool? isTokenizedDigitalAsset;

  /// Product tax category code to assign to the subscription.
  ///
  /// Product tax category determines the transaction tax rates applied to the
  /// subscription. Refer to the
  /// [Help Center article](https://support.google.com/googleplay/android-developer/answer/16408159)
  /// for more information.
  core.String? productTaxCategoryCode;

  /// Regional age rating information.
  ///
  /// Currently this field is only supported for region code `US`.
  core.List<RegionalProductAgeRatingInfo>? regionalProductAgeRatingInfos;

  /// A mapping from region code to tax rate details.
  ///
  /// The keys are region codes as defined by Unicode's "CLDR".
  core.Map<core.String, RegionalTaxRateInfo>? taxRateInfoByRegionCode;

  SubscriptionTaxAndComplianceSettings({
    this.eeaWithdrawalRightType,
    this.isTokenizedDigitalAsset,
    this.productTaxCategoryCode,
    this.regionalProductAgeRatingInfos,
    this.taxRateInfoByRegionCode,
  });

  SubscriptionTaxAndComplianceSettings.fromJson(core.Map json_)
    : this(
        eeaWithdrawalRightType: json_['eeaWithdrawalRightType'] as core.String?,
        isTokenizedDigitalAsset: json_['isTokenizedDigitalAsset'] as core.bool?,
        productTaxCategoryCode: json_['productTaxCategoryCode'] as core.String?,
        regionalProductAgeRatingInfos:
            (json_['regionalProductAgeRatingInfos'] as core.List?)
                ?.map(
                  (value) => RegionalProductAgeRatingInfo.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        taxRateInfoByRegionCode:
            (json_['taxRateInfoByRegionCode']
                    as core.Map<core.String, core.dynamic>?)
                ?.map(
                  (key, value) => core.MapEntry(
                    key,
                    RegionalTaxRateInfo.fromJson(
                      value as core.Map<core.String, core.dynamic>,
                    ),
                  ),
                ),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final eeaWithdrawalRightType = this.eeaWithdrawalRightType;
    final isTokenizedDigitalAsset = this.isTokenizedDigitalAsset;
    final productTaxCategoryCode = this.productTaxCategoryCode;
    final regionalProductAgeRatingInfos = this.regionalProductAgeRatingInfos;
    final taxRateInfoByRegionCode = this.taxRateInfoByRegionCode;
    return {
      'eeaWithdrawalRightType': ?eeaWithdrawalRightType,
      'isTokenizedDigitalAsset': ?isTokenizedDigitalAsset,
      'productTaxCategoryCode': ?productTaxCategoryCode,
      'regionalProductAgeRatingInfos': ?regionalProductAgeRatingInfos,
      'taxRateInfoByRegionCode': ?taxRateInfoByRegionCode,
    };
  }
}

/// Options for system APKs.
class SystemApkOptions {
  /// Whether to use the rotated key for signing the system APK.
  core.bool? rotated;

  /// Whether system APK was generated with uncompressed dex files.
  core.bool? uncompressedDexFiles;

  /// Whether system APK was generated with uncompressed native libraries.
  core.bool? uncompressedNativeLibraries;

  SystemApkOptions({
    this.rotated,
    this.uncompressedDexFiles,
    this.uncompressedNativeLibraries,
  });

  SystemApkOptions.fromJson(core.Map json_)
    : this(
        rotated: json_['rotated'] as core.bool?,
        uncompressedDexFiles: json_['uncompressedDexFiles'] as core.bool?,
        uncompressedNativeLibraries:
            json_['uncompressedNativeLibraries'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final rotated = this.rotated;
    final uncompressedDexFiles = this.uncompressedDexFiles;
    final uncompressedNativeLibraries = this.uncompressedNativeLibraries;
    return {
      'rotated': ?rotated,
      'uncompressedDexFiles': ?uncompressedDexFiles,
      'uncompressedNativeLibraries': ?uncompressedNativeLibraries,
    };
  }
}

/// Response to list previously created system APK variants.
class SystemApksListResponse {
  /// All system APK variants created.
  core.List<Variant>? variants;

  SystemApksListResponse({this.variants});

  SystemApksListResponse.fromJson(core.Map json_)
    : this(
        variants: (json_['variants'] as core.List?)
            ?.map(
              (value) => Variant.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final variants = this.variants;
    return {'variants': ?variants};
  }
}

/// Representation of a system feature.
class SystemFeature {
  /// The name of the feature.
  core.String? name;

  SystemFeature({this.name});

  SystemFeature.fromJson(core.Map json_)
    : this(name: json_['name'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final name = this.name;
    return {'name': ?name};
  }
}

/// Information specific to cancellations initiated by Google system.
typedef SystemInitiatedCancellation = $Empty;

/// Representation of a System-on-Chip (SoC) of an Android device.
///
/// Can be used to target S+ devices.
class SystemOnChip {
  /// The designer of the SoC, eg.
  ///
  /// "Google" Value of build property "ro.soc.manufacturer"
  /// https://developer.android.com/reference/android/os/Build#SOC_MANUFACTURER
  /// Required.
  ///
  /// Required.
  core.String? manufacturer;

  /// The model of the SoC, eg.
  ///
  /// "Tensor" Value of build property "ro.soc.model"
  /// https://developer.android.com/reference/android/os/Build#SOC_MODEL
  /// Required.
  ///
  /// Required.
  core.String? model;

  SystemOnChip({this.manufacturer, this.model});

  SystemOnChip.fromJson(core.Map json_)
    : this(
        manufacturer: json_['manufacturer'] as core.String?,
        model: json_['model'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final manufacturer = this.manufacturer;
    final model = this.model;
    return {'manufacturer': ?manufacturer, 'model': ?model};
  }
}

/// Targeting details for a recovery action such as regions, android sdk levels,
/// app versions etc.
class Targeting {
  /// All users are targeted.
  AllUsers? allUsers;

  /// Targeting is based on android api levels of devices.
  AndroidSdks? androidSdks;

  /// Targeting is based on the user account region.
  Regions? regions;

  /// Target version codes as a list.
  AppVersionList? versionList;

  /// Target version codes as a range.
  AppVersionRange? versionRange;

  Targeting({
    this.allUsers,
    this.androidSdks,
    this.regions,
    this.versionList,
    this.versionRange,
  });

  Targeting.fromJson(core.Map json_)
    : this(
        allUsers: json_.containsKey('allUsers')
            ? AllUsers.fromJson(
                json_['allUsers'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        androidSdks: json_.containsKey('androidSdks')
            ? AndroidSdks.fromJson(
                json_['androidSdks'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        regions: json_.containsKey('regions')
            ? Regions.fromJson(
                json_['regions'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        versionList: json_.containsKey('versionList')
            ? AppVersionList.fromJson(
                json_['versionList'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        versionRange: json_.containsKey('versionRange')
            ? AppVersionRange.fromJson(
                json_['versionRange'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final allUsers = this.allUsers;
    final androidSdks = this.androidSdks;
    final regions = this.regions;
    final versionList = this.versionList;
    final versionRange = this.versionRange;
    return {
      'allUsers': ?allUsers,
      'androidSdks': ?androidSdks,
      'regions': ?regions,
      'versionList': ?versionList,
      'versionRange': ?versionRange,
    };
  }
}

/// Targeting information about the generated apks.
class TargetingInfo {
  /// List of created asset slices.
  core.List<AssetSliceSet>? assetSliceSet;

  /// The package name of this app.
  core.String? packageName;

  /// List of the created variants.
  core.List<SplitApkVariant>? variant;

  TargetingInfo({this.assetSliceSet, this.packageName, this.variant});

  TargetingInfo.fromJson(core.Map json_)
    : this(
        assetSliceSet: (json_['assetSliceSet'] as core.List?)
            ?.map(
              (value) => AssetSliceSet.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        packageName: json_['packageName'] as core.String?,
        variant: (json_['variant'] as core.List?)
            ?.map(
              (value) => SplitApkVariant.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final assetSliceSet = this.assetSliceSet;
    final packageName = this.packageName;
    final variant = this.variant;
    return {
      'assetSliceSet': ?assetSliceSet,
      'packageName': ?packageName,
      'variant': ?variant,
    };
  }
}

/// Defines the scope of subscriptions which a targeting rule can match to
/// target offers to users based on past or current entitlement.
class TargetingRuleScope {
  /// The scope of the current targeting rule is any subscription in the parent
  /// app.
  TargetingRuleScopeAnySubscriptionInApp? anySubscriptionInApp;

  /// The scope of the current targeting rule is the subscription with the
  /// specified subscription ID.
  ///
  /// Must be a subscription within the same parent app.
  core.String? specificSubscriptionInApp;

  /// The scope of the current targeting rule is the subscription in which this
  /// offer is defined.
  TargetingRuleScopeThisSubscription? thisSubscription;

  TargetingRuleScope({
    this.anySubscriptionInApp,
    this.specificSubscriptionInApp,
    this.thisSubscription,
  });

  TargetingRuleScope.fromJson(core.Map json_)
    : this(
        anySubscriptionInApp: json_.containsKey('anySubscriptionInApp')
            ? TargetingRuleScopeAnySubscriptionInApp.fromJson(
                json_['anySubscriptionInApp']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        specificSubscriptionInApp:
            json_['specificSubscriptionInApp'] as core.String?,
        thisSubscription: json_.containsKey('thisSubscription')
            ? TargetingRuleScopeThisSubscription.fromJson(
                json_['thisSubscription']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final anySubscriptionInApp = this.anySubscriptionInApp;
    final specificSubscriptionInApp = this.specificSubscriptionInApp;
    final thisSubscription = this.thisSubscription;
    return {
      'anySubscriptionInApp': ?anySubscriptionInApp,
      'specificSubscriptionInApp': ?specificSubscriptionInApp,
      'thisSubscription': ?thisSubscription,
    };
  }
}

/// Represents the targeting rule scope corresponding to any subscription in the
/// parent app.
typedef TargetingRuleScopeAnySubscriptionInApp = $Empty;

/// Represents the targeting rule scope corresponding to the subscriptions in
/// which this offer is defined.
typedef TargetingRuleScopeThisSubscription = $Empty;

/// Update type for targeting.
///
/// Note it is always a subset Targeting.
class TargetingUpdate {
  /// All users are targeted.
  AllUsers? allUsers;

  /// Additional android sdk levels are targeted by the recovery action.
  AndroidSdks? androidSdks;

  /// Additional regions are targeted by the recovery action.
  Regions? regions;

  TargetingUpdate({this.allUsers, this.androidSdks, this.regions});

  TargetingUpdate.fromJson(core.Map json_)
    : this(
        allUsers: json_.containsKey('allUsers')
            ? AllUsers.fromJson(
                json_['allUsers'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        androidSdks: json_.containsKey('androidSdks')
            ? AndroidSdks.fromJson(
                json_['androidSdks'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        regions: json_.containsKey('regions')
            ? Regions.fromJson(
                json_['regions'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final allUsers = this.allUsers;
    final androidSdks = this.androidSdks;
    final regions = this.regions;
    return {
      'allUsers': ?allUsers,
      'androidSdks': ?androidSdks,
      'regions': ?regions,
    };
  }
}

/// Whether this subscription purchase is a test purchase.
typedef TestPurchase = $Empty;

/// Context about a test purchase.
class TestPurchaseContext {
  /// The fop type of the test purchase.
  /// Possible string values are:
  /// - "FOP_TYPE_UNSPECIFIED" : Fop type unspecified. This value should never
  /// be set.
  /// - "TEST" : The purchase was made using a test card.
  core.String? fopType;

  TestPurchaseContext({this.fopType});

  TestPurchaseContext.fromJson(core.Map json_)
    : this(fopType: json_['fopType'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final fopType = this.fopType;
    return {'fopType': ?fopType};
  }
}

/// The testers of an app.
///
/// The resource for TestersService. Note: while it is possible in the Play
/// Console UI to add testers via email lists, email lists are not supported by
/// this resource.
class Testers {
  /// All testing Google Groups, as email addresses.
  core.List<core.String>? googleGroups;

  Testers({this.googleGroups});

  Testers.fromJson(core.Map json_)
    : this(
        googleGroups: (json_['googleGroups'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final googleGroups = this.googleGroups;
    return {'googleGroups': ?googleGroups};
  }
}

/// Represents texture compression format.
class TextureCompressionFormat {
  /// Alias for texture compression format.
  /// Possible string values are:
  /// - "UNSPECIFIED_TEXTURE_COMPRESSION_FORMAT" : Unspecified format.
  /// - "ETC1_RGB8" : ETC1_RGB8 format.
  /// - "PALETTED" : PALETTED format.
  /// - "THREE_DC" : THREE_DC format.
  /// - "ATC" : ATC format.
  /// - "LATC" : LATC format.
  /// - "DXT1" : DXT1 format.
  /// - "S3TC" : S3TC format.
  /// - "PVRTC" : PVRTC format.
  /// - "ASTC" : ASTC format.
  /// - "ETC2" : ETC2 format.
  core.String? alias;

  TextureCompressionFormat({this.alias});

  TextureCompressionFormat.fromJson(core.Map json_)
    : this(alias: json_['alias'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final alias = this.alias;
    return {'alias': ?alias};
  }
}

/// Targeting by a texture compression format.
class TextureCompressionFormatTargeting {
  /// List of alternative TCFs (TCFs targeted by the sibling splits).
  core.List<TextureCompressionFormat>? alternatives;

  /// The list of targeted TCFs.
  ///
  /// Should not be empty.
  core.List<TextureCompressionFormat>? value;

  TextureCompressionFormatTargeting({this.alternatives, this.value});

  TextureCompressionFormatTargeting.fromJson(core.Map json_)
    : this(
        alternatives: (json_['alternatives'] as core.List?)
            ?.map(
              (value) => TextureCompressionFormat.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        value: (json_['value'] as core.List?)
            ?.map(
              (value) => TextureCompressionFormat.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final alternatives = this.alternatives;
    final value = this.value;
    return {'alternatives': ?alternatives, 'value': ?value};
  }
}

/// A Timestamp represents a point in time independent of any time zone or local
/// calendar, encoded as a count of seconds and fractions of seconds at
/// nanosecond resolution.
///
/// The count is relative to an epoch at UTC midnight on January 1, 1970.
class Timestamp {
  /// Non-negative fractions of a second at nanosecond resolution.
  ///
  /// Must be from 0 to 999,999,999 inclusive.
  core.int? nanos;

  /// Represents seconds of UTC time since Unix epoch.
  core.String? seconds;

  Timestamp({this.nanos, this.seconds});

  Timestamp.fromJson(core.Map json_)
    : this(
        nanos: json_['nanos'] as core.int?,
        seconds: json_['seconds'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nanos = this.nanos;
    final seconds = this.seconds;
    return {'nanos': ?nanos, 'seconds': ?seconds};
  }
}

/// Pagination information returned by a List operation when token pagination is
/// enabled.
///
/// List operations that supports paging return only one "page" of results. This
/// protocol buffer message describes the page that has been returned. When
/// using token pagination, clients should use the next/previous token to get
/// another page of the result. The presence or absence of next/previous token
/// indicates whether a next/previous page is available and provides a mean of
/// accessing this page. ListRequest.page_token should be set to either
/// next_page_token or previous_page_token to access another page.
typedef TokenPagination = $TokenPagination;

/// A track configuration.
///
/// The resource for TracksService.
class Track {
  /// In a read request, represents all active releases in the track.
  ///
  /// In an update request, represents desired changes.
  core.List<TrackRelease>? releases;

  /// Identifier of the track.
  ///
  /// Form factor tracks have a special prefix as an identifier, for example
  /// `wear:production`, `automotive:production`.
  /// [More on track name](https://developers.google.com/android-publisher/tracks#ff-track-name)
  core.String? track;

  Track({this.releases, this.track});

  Track.fromJson(core.Map json_)
    : this(
        releases: (json_['releases'] as core.List?)
            ?.map(
              (value) => TrackRelease.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        track: json_['track'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final releases = this.releases;
    final track = this.track;
    return {'releases': ?releases, 'track': ?track};
  }
}

/// Configurations of the new track.
class TrackConfig {
  /// Form factor of the new track.
  ///
  /// Defaults to the default track.
  ///
  /// Required.
  /// Possible string values are:
  /// - "FORM_FACTOR_UNSPECIFIED" : Fallback value, do not use.
  /// - "DEFAULT" : Default track.
  /// - "WEAR" : Wear form factor track.
  /// - "AUTOMOTIVE" : Automotive form factor track.
  core.String? formFactor;

  /// Identifier of the new track.
  ///
  /// For default tracks, this field consists of the track alias only. Form
  /// factor tracks have a special prefix as an identifier, for example
  /// `wear:production`, `automotive:production`. This prefix must match the
  /// value of the `form_factor` field, if it is not a default track.
  /// [More on track name](https://developers.google.com/android-publisher/tracks#ff-track-name)
  ///
  /// Required.
  core.String? track;

  /// Type of the new track.
  ///
  /// Currently, the only supported value is closedTesting.
  ///
  /// Required.
  /// Possible string values are:
  /// - "TRACK_TYPE_UNSPECIFIED" : Fallback value, do not use.
  /// - "CLOSED_TESTING" : Closed testing track.
  core.String? type;

  TrackConfig({this.formFactor, this.track, this.type});

  TrackConfig.fromJson(core.Map json_)
    : this(
        formFactor: json_['formFactor'] as core.String?,
        track: json_['track'] as core.String?,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final formFactor = this.formFactor;
    final track = this.track;
    final type = this.type;
    return {'formFactor': ?formFactor, 'track': ?track, 'type': ?type};
  }
}

/// Resource for per-track country availability information.
class TrackCountryAvailability {
  /// A list of one or more countries where artifacts in this track are
  /// available.
  ///
  /// This list includes all countries that are targeted by the track, even if
  /// only specific carriers are targeted in that country.
  core.List<TrackTargetedCountry>? countries;

  /// Whether artifacts in this track are available to "rest of the world"
  /// countries.
  core.bool? restOfWorld;

  /// Whether this track's availability is synced with the default production
  /// track.
  ///
  /// See https://support.google.com/googleplay/android-developer/answer/7550024
  /// for more information on syncing country availability with production. Note
  /// that if this is true, the returned "countries" and "rest_of_world" fields
  /// will reflect the values for the default production track.
  core.bool? syncWithProduction;

  TrackCountryAvailability({
    this.countries,
    this.restOfWorld,
    this.syncWithProduction,
  });

  TrackCountryAvailability.fromJson(core.Map json_)
    : this(
        countries: (json_['countries'] as core.List?)
            ?.map(
              (value) => TrackTargetedCountry.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        restOfWorld: json_['restOfWorld'] as core.bool?,
        syncWithProduction: json_['syncWithProduction'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final countries = this.countries;
    final restOfWorld = this.restOfWorld;
    final syncWithProduction = this.syncWithProduction;
    return {
      'countries': ?countries,
      'restOfWorld': ?restOfWorld,
      'syncWithProduction': ?syncWithProduction,
    };
  }
}

/// A release within a track.
class TrackRelease {
  /// Restricts a release to a specific set of countries.
  ///
  /// Note this is only allowed to be set for inProgress releases in the
  /// production track.
  CountryTargeting? countryTargeting;

  /// In-app update priority of the release.
  ///
  /// All newly added APKs in the release will be considered at this priority.
  /// Can take values in the range \[0, 5\], with 5 the highest priority.
  /// Defaults to 0. in_app_update_priority can not be updated once the release
  /// is rolled out. See
  /// https://developer.android.com/guide/playcore/in-app-updates.
  core.int? inAppUpdatePriority;

  /// The release name.
  ///
  /// Not required to be unique. If not set, the name is generated from the
  /// APK's version_name. If the release contains multiple APKs, the name is
  /// generated from the date.
  core.String? name;

  /// A description of what is new in this release.
  core.List<LocalizedText>? releaseNotes;

  /// The status of the release.
  /// Possible string values are:
  /// - "statusUnspecified" : Unspecified status.
  /// - "draft" : The release's APKs are not being served to users.
  /// - "inProgress" : The release's APKs are being served to a fraction of
  /// users, determined by 'user_fraction'.
  /// - "halted" : The release's APKs will no longer be served to users. Users
  /// who already have these APKs are unaffected.
  /// - "completed" : The release will have no further changes. Its APKs are
  /// being served to all users, unless they are eligible to APKs of a more
  /// recent release.
  core.String? status;

  /// Fraction of users who are eligible for a staged release.
  ///
  /// 0 \< fraction \< 1. Can only be set when status is "inProgress" or
  /// "halted".
  core.double? userFraction;

  /// Version codes of all APKs in the release.
  ///
  /// Must include version codes to retain from previous releases.
  core.List<core.String>? versionCodes;

  TrackRelease({
    this.countryTargeting,
    this.inAppUpdatePriority,
    this.name,
    this.releaseNotes,
    this.status,
    this.userFraction,
    this.versionCodes,
  });

  TrackRelease.fromJson(core.Map json_)
    : this(
        countryTargeting: json_.containsKey('countryTargeting')
            ? CountryTargeting.fromJson(
                json_['countryTargeting']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        inAppUpdatePriority: json_['inAppUpdatePriority'] as core.int?,
        name: json_['name'] as core.String?,
        releaseNotes: (json_['releaseNotes'] as core.List?)
            ?.map(
              (value) => LocalizedText.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        status: json_['status'] as core.String?,
        userFraction: (json_['userFraction'] as core.num?)?.toDouble(),
        versionCodes: (json_['versionCodes'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final countryTargeting = this.countryTargeting;
    final inAppUpdatePriority = this.inAppUpdatePriority;
    final name = this.name;
    final releaseNotes = this.releaseNotes;
    final status = this.status;
    final userFraction = this.userFraction;
    final versionCodes = this.versionCodes;
    return {
      'countryTargeting': ?countryTargeting,
      'inAppUpdatePriority': ?inAppUpdatePriority,
      'name': ?name,
      'releaseNotes': ?releaseNotes,
      'status': ?status,
      'userFraction': ?userFraction,
      'versionCodes': ?versionCodes,
    };
  }
}

/// Representation of a single country where the contents of a track can be made
/// available.
class TrackTargetedCountry {
  /// The country that can be targeted, as a two-letter CLDR code.
  core.String? countryCode;

  TrackTargetedCountry({this.countryCode});

  TrackTargetedCountry.fromJson(core.Map json_)
    : this(countryCode: json_['countryCode'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final countryCode = this.countryCode;
    return {'countryCode': ?countryCode};
  }
}

/// Response listing all tracks.
class TracksListResponse {
  /// The kind of this response ("androidpublisher#tracksListResponse").
  core.String? kind;

  /// All tracks (including tracks with no releases).
  core.List<Track>? tracks;

  TracksListResponse({this.kind, this.tracks});

  TracksListResponse.fromJson(core.Map json_)
    : this(
        kind: json_['kind'] as core.String?,
        tracks: (json_['tracks'] as core.List?)
            ?.map(
              (value) =>
                  Track.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final kind = this.kind;
    final tracks = this.tracks;
    return {'kind': ?kind, 'tracks': ?tracks};
  }
}

/// Request message to update the state of a subscription base plan.
class UpdateBasePlanStateRequest {
  /// Activates a base plan.
  ///
  /// Once activated, base plans will be available to new subscribers.
  ActivateBasePlanRequest? activateBasePlanRequest;

  /// Deactivates a base plan.
  ///
  /// Once deactivated, the base plan will become unavailable to new
  /// subscribers, but existing subscribers will maintain their subscription
  DeactivateBasePlanRequest? deactivateBasePlanRequest;

  UpdateBasePlanStateRequest({
    this.activateBasePlanRequest,
    this.deactivateBasePlanRequest,
  });

  UpdateBasePlanStateRequest.fromJson(core.Map json_)
    : this(
        activateBasePlanRequest: json_.containsKey('activateBasePlanRequest')
            ? ActivateBasePlanRequest.fromJson(
                json_['activateBasePlanRequest']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        deactivateBasePlanRequest:
            json_.containsKey('deactivateBasePlanRequest')
            ? DeactivateBasePlanRequest.fromJson(
                json_['deactivateBasePlanRequest']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final activateBasePlanRequest = this.activateBasePlanRequest;
    final deactivateBasePlanRequest = this.deactivateBasePlanRequest;
    return {
      'activateBasePlanRequest': ?activateBasePlanRequest,
      'deactivateBasePlanRequest': ?deactivateBasePlanRequest,
    };
  }
}

/// Request message for UpdateOneTimeProductOffer.
class UpdateOneTimeProductOfferRequest {
  /// If set to true, and the offer with the given package_name, product_id,
  /// purchase_option_id and offer_id doesn't exist, an offer will be created.
  ///
  /// If a new offer is created, the update_mask is ignored.
  ///
  /// Optional.
  core.bool? allowMissing;

  /// The latency tolerance for the propagation of this offer update.
  ///
  /// Defaults to latency-sensitive.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "PRODUCT_UPDATE_LATENCY_TOLERANCE_UNSPECIFIED" : Defaults to
  /// PRODUCT_UPDATE_LATENCY_TOLERANCE_LATENCY_SENSITIVE.
  /// - "PRODUCT_UPDATE_LATENCY_TOLERANCE_LATENCY_SENSITIVE" : The update will
  /// propagate to clients within several minutes on average and up to a few
  /// hours in rare cases. Throughput is limited to 7,200 updates per app per
  /// hour.
  /// - "PRODUCT_UPDATE_LATENCY_TOLERANCE_LATENCY_TOLERANT" : The update will
  /// propagate to clients within 24 hours. Supports high throughput of up to
  /// 720,000 updates per app per hour using batch modification methods.
  core.String? latencyTolerance;

  /// The one-time product offer to update.
  ///
  /// Required.
  OneTimeProductOffer? oneTimeProductOffer;

  /// The version of the available regions being used for the offer.
  ///
  /// Required.
  RegionsVersion? regionsVersion;

  /// The list of fields to be updated.
  ///
  /// Required.
  core.String? updateMask;

  UpdateOneTimeProductOfferRequest({
    this.allowMissing,
    this.latencyTolerance,
    this.oneTimeProductOffer,
    this.regionsVersion,
    this.updateMask,
  });

  UpdateOneTimeProductOfferRequest.fromJson(core.Map json_)
    : this(
        allowMissing: json_['allowMissing'] as core.bool?,
        latencyTolerance: json_['latencyTolerance'] as core.String?,
        oneTimeProductOffer: json_.containsKey('oneTimeProductOffer')
            ? OneTimeProductOffer.fromJson(
                json_['oneTimeProductOffer']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        regionsVersion: json_.containsKey('regionsVersion')
            ? RegionsVersion.fromJson(
                json_['regionsVersion'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        updateMask: json_['updateMask'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final allowMissing = this.allowMissing;
    final latencyTolerance = this.latencyTolerance;
    final oneTimeProductOffer = this.oneTimeProductOffer;
    final regionsVersion = this.regionsVersion;
    final updateMask = this.updateMask;
    return {
      'allowMissing': ?allowMissing,
      'latencyTolerance': ?latencyTolerance,
      'oneTimeProductOffer': ?oneTimeProductOffer,
      'regionsVersion': ?regionsVersion,
      'updateMask': ?updateMask,
    };
  }
}

/// Request message to update the state of a one-time product offer.
class UpdateOneTimeProductOfferStateRequest {
  /// Activates an offer.
  ///
  /// Once activated, the offer is available to users, as long as its conditions
  /// are met.
  ActivateOneTimeProductOfferRequest? activateOneTimeProductOfferRequest;

  /// Cancels an offer.
  ///
  /// Once cancelled, the offer is not available to users. Any pending orders
  /// related to this offer will be cancelled. This state transition is specific
  /// to pre-orders.
  CancelOneTimeProductOfferRequest? cancelOneTimeProductOfferRequest;

  /// Deactivates an offer.
  ///
  /// Once deactivated, the offer is no longer available to users. This state
  /// transition is specific to discounted offers.
  DeactivateOneTimeProductOfferRequest? deactivateOneTimeProductOfferRequest;

  UpdateOneTimeProductOfferStateRequest({
    this.activateOneTimeProductOfferRequest,
    this.cancelOneTimeProductOfferRequest,
    this.deactivateOneTimeProductOfferRequest,
  });

  UpdateOneTimeProductOfferStateRequest.fromJson(core.Map json_)
    : this(
        activateOneTimeProductOfferRequest:
            json_.containsKey('activateOneTimeProductOfferRequest')
            ? ActivateOneTimeProductOfferRequest.fromJson(
                json_['activateOneTimeProductOfferRequest']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        cancelOneTimeProductOfferRequest:
            json_.containsKey('cancelOneTimeProductOfferRequest')
            ? CancelOneTimeProductOfferRequest.fromJson(
                json_['cancelOneTimeProductOfferRequest']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        deactivateOneTimeProductOfferRequest:
            json_.containsKey('deactivateOneTimeProductOfferRequest')
            ? DeactivateOneTimeProductOfferRequest.fromJson(
                json_['deactivateOneTimeProductOfferRequest']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final activateOneTimeProductOfferRequest =
        this.activateOneTimeProductOfferRequest;
    final cancelOneTimeProductOfferRequest =
        this.cancelOneTimeProductOfferRequest;
    final deactivateOneTimeProductOfferRequest =
        this.deactivateOneTimeProductOfferRequest;
    return {
      'activateOneTimeProductOfferRequest': ?activateOneTimeProductOfferRequest,
      'cancelOneTimeProductOfferRequest': ?cancelOneTimeProductOfferRequest,
      'deactivateOneTimeProductOfferRequest':
          ?deactivateOneTimeProductOfferRequest,
    };
  }
}

/// Request message for UpdateOneTimeProduct.
class UpdateOneTimeProductRequest {
  /// If set to true, and the one-time product with the given package_name and
  /// product_id doesn't exist, the one-time product will be created.
  ///
  /// If a new one-time product is created, update_mask is ignored.
  ///
  /// Optional.
  core.bool? allowMissing;

  /// The latency tolerance for the propagation of this product upsert.
  ///
  /// Defaults to latency-sensitive.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "PRODUCT_UPDATE_LATENCY_TOLERANCE_UNSPECIFIED" : Defaults to
  /// PRODUCT_UPDATE_LATENCY_TOLERANCE_LATENCY_SENSITIVE.
  /// - "PRODUCT_UPDATE_LATENCY_TOLERANCE_LATENCY_SENSITIVE" : The update will
  /// propagate to clients within several minutes on average and up to a few
  /// hours in rare cases. Throughput is limited to 7,200 updates per app per
  /// hour.
  /// - "PRODUCT_UPDATE_LATENCY_TOLERANCE_LATENCY_TOLERANT" : The update will
  /// propagate to clients within 24 hours. Supports high throughput of up to
  /// 720,000 updates per app per hour using batch modification methods.
  core.String? latencyTolerance;

  /// The one-time product to upsert.
  ///
  /// Required.
  OneTimeProduct? oneTimeProduct;

  /// The version of the available regions being used for the one-time product.
  ///
  /// Required.
  RegionsVersion? regionsVersion;

  /// The list of fields to be updated.
  ///
  /// Required.
  core.String? updateMask;

  UpdateOneTimeProductRequest({
    this.allowMissing,
    this.latencyTolerance,
    this.oneTimeProduct,
    this.regionsVersion,
    this.updateMask,
  });

  UpdateOneTimeProductRequest.fromJson(core.Map json_)
    : this(
        allowMissing: json_['allowMissing'] as core.bool?,
        latencyTolerance: json_['latencyTolerance'] as core.String?,
        oneTimeProduct: json_.containsKey('oneTimeProduct')
            ? OneTimeProduct.fromJson(
                json_['oneTimeProduct'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        regionsVersion: json_.containsKey('regionsVersion')
            ? RegionsVersion.fromJson(
                json_['regionsVersion'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        updateMask: json_['updateMask'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final allowMissing = this.allowMissing;
    final latencyTolerance = this.latencyTolerance;
    final oneTimeProduct = this.oneTimeProduct;
    final regionsVersion = this.regionsVersion;
    final updateMask = this.updateMask;
    return {
      'allowMissing': ?allowMissing,
      'latencyTolerance': ?latencyTolerance,
      'oneTimeProduct': ?oneTimeProduct,
      'regionsVersion': ?regionsVersion,
      'updateMask': ?updateMask,
    };
  }
}

/// Request message to update the state of a one-time product purchase option.
class UpdatePurchaseOptionStateRequest {
  /// Activates a purchase option.
  ///
  /// Once activated, the purchase option will be available.
  ActivatePurchaseOptionRequest? activatePurchaseOptionRequest;

  /// Deactivates a purchase option.
  ///
  /// Once deactivated, the purchase option will become unavailable.
  DeactivatePurchaseOptionRequest? deactivatePurchaseOptionRequest;

  UpdatePurchaseOptionStateRequest({
    this.activatePurchaseOptionRequest,
    this.deactivatePurchaseOptionRequest,
  });

  UpdatePurchaseOptionStateRequest.fromJson(core.Map json_)
    : this(
        activatePurchaseOptionRequest:
            json_.containsKey('activatePurchaseOptionRequest')
            ? ActivatePurchaseOptionRequest.fromJson(
                json_['activatePurchaseOptionRequest']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        deactivatePurchaseOptionRequest:
            json_.containsKey('deactivatePurchaseOptionRequest')
            ? DeactivatePurchaseOptionRequest.fromJson(
                json_['deactivatePurchaseOptionRequest']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final activatePurchaseOptionRequest = this.activatePurchaseOptionRequest;
    final deactivatePurchaseOptionRequest =
        this.deactivatePurchaseOptionRequest;
    return {
      'activatePurchaseOptionRequest': ?activatePurchaseOptionRequest,
      'deactivatePurchaseOptionRequest': ?deactivatePurchaseOptionRequest,
    };
  }
}

/// Request message for UpdateSubscriptionOffer.
class UpdateSubscriptionOfferRequest {
  /// If set to true, and the subscription offer with the given package_name,
  /// product_id, base_plan_id and offer_id doesn't exist, an offer will be
  /// created.
  ///
  /// If a new offer is created, update_mask is ignored.
  ///
  /// Optional.
  core.bool? allowMissing;

  /// The latency tolerance for the propagation of this product update.
  ///
  /// Defaults to latency-sensitive.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "PRODUCT_UPDATE_LATENCY_TOLERANCE_UNSPECIFIED" : Defaults to
  /// PRODUCT_UPDATE_LATENCY_TOLERANCE_LATENCY_SENSITIVE.
  /// - "PRODUCT_UPDATE_LATENCY_TOLERANCE_LATENCY_SENSITIVE" : The update will
  /// propagate to clients within several minutes on average and up to a few
  /// hours in rare cases. Throughput is limited to 7,200 updates per app per
  /// hour.
  /// - "PRODUCT_UPDATE_LATENCY_TOLERANCE_LATENCY_TOLERANT" : The update will
  /// propagate to clients within 24 hours. Supports high throughput of up to
  /// 720,000 updates per app per hour using batch modification methods.
  core.String? latencyTolerance;

  /// The version of the available regions being used for the
  /// subscription_offer.
  ///
  /// Required.
  RegionsVersion? regionsVersion;

  /// The subscription offer to update.
  ///
  /// Required.
  SubscriptionOffer? subscriptionOffer;

  /// The list of fields to be updated.
  ///
  /// Required.
  core.String? updateMask;

  UpdateSubscriptionOfferRequest({
    this.allowMissing,
    this.latencyTolerance,
    this.regionsVersion,
    this.subscriptionOffer,
    this.updateMask,
  });

  UpdateSubscriptionOfferRequest.fromJson(core.Map json_)
    : this(
        allowMissing: json_['allowMissing'] as core.bool?,
        latencyTolerance: json_['latencyTolerance'] as core.String?,
        regionsVersion: json_.containsKey('regionsVersion')
            ? RegionsVersion.fromJson(
                json_['regionsVersion'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        subscriptionOffer: json_.containsKey('subscriptionOffer')
            ? SubscriptionOffer.fromJson(
                json_['subscriptionOffer']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        updateMask: json_['updateMask'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final allowMissing = this.allowMissing;
    final latencyTolerance = this.latencyTolerance;
    final regionsVersion = this.regionsVersion;
    final subscriptionOffer = this.subscriptionOffer;
    final updateMask = this.updateMask;
    return {
      'allowMissing': ?allowMissing,
      'latencyTolerance': ?latencyTolerance,
      'regionsVersion': ?regionsVersion,
      'subscriptionOffer': ?subscriptionOffer,
      'updateMask': ?updateMask,
    };
  }
}

/// Request message to update the state of a subscription offer.
class UpdateSubscriptionOfferStateRequest {
  /// Activates an offer.
  ///
  /// Once activated, the offer will be available to new subscribers.
  ActivateSubscriptionOfferRequest? activateSubscriptionOfferRequest;

  /// Deactivates an offer.
  ///
  /// Once deactivated, the offer will become unavailable to new subscribers,
  /// but existing subscribers will maintain their subscription
  DeactivateSubscriptionOfferRequest? deactivateSubscriptionOfferRequest;

  UpdateSubscriptionOfferStateRequest({
    this.activateSubscriptionOfferRequest,
    this.deactivateSubscriptionOfferRequest,
  });

  UpdateSubscriptionOfferStateRequest.fromJson(core.Map json_)
    : this(
        activateSubscriptionOfferRequest:
            json_.containsKey('activateSubscriptionOfferRequest')
            ? ActivateSubscriptionOfferRequest.fromJson(
                json_['activateSubscriptionOfferRequest']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        deactivateSubscriptionOfferRequest:
            json_.containsKey('deactivateSubscriptionOfferRequest')
            ? DeactivateSubscriptionOfferRequest.fromJson(
                json_['deactivateSubscriptionOfferRequest']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final activateSubscriptionOfferRequest =
        this.activateSubscriptionOfferRequest;
    final deactivateSubscriptionOfferRequest =
        this.deactivateSubscriptionOfferRequest;
    return {
      'activateSubscriptionOfferRequest': ?activateSubscriptionOfferRequest,
      'deactivateSubscriptionOfferRequest': ?deactivateSubscriptionOfferRequest,
    };
  }
}

/// Request message for UpdateSubscription.
class UpdateSubscriptionRequest {
  /// If set to true, and the subscription with the given package_name and
  /// product_id doesn't exist, the subscription will be created.
  ///
  /// If a new subscription is created, update_mask is ignored.
  ///
  /// Optional.
  core.bool? allowMissing;

  /// The latency tolerance for the propagation of this product update.
  ///
  /// Defaults to latency-sensitive.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "PRODUCT_UPDATE_LATENCY_TOLERANCE_UNSPECIFIED" : Defaults to
  /// PRODUCT_UPDATE_LATENCY_TOLERANCE_LATENCY_SENSITIVE.
  /// - "PRODUCT_UPDATE_LATENCY_TOLERANCE_LATENCY_SENSITIVE" : The update will
  /// propagate to clients within several minutes on average and up to a few
  /// hours in rare cases. Throughput is limited to 7,200 updates per app per
  /// hour.
  /// - "PRODUCT_UPDATE_LATENCY_TOLERANCE_LATENCY_TOLERANT" : The update will
  /// propagate to clients within 24 hours. Supports high throughput of up to
  /// 720,000 updates per app per hour using batch modification methods.
  core.String? latencyTolerance;

  /// The version of the available regions being used for the subscription.
  ///
  /// Required.
  RegionsVersion? regionsVersion;

  /// The subscription to update.
  ///
  /// Required.
  Subscription? subscription;

  /// The list of fields to be updated.
  ///
  /// Required.
  core.String? updateMask;

  UpdateSubscriptionRequest({
    this.allowMissing,
    this.latencyTolerance,
    this.regionsVersion,
    this.subscription,
    this.updateMask,
  });

  UpdateSubscriptionRequest.fromJson(core.Map json_)
    : this(
        allowMissing: json_['allowMissing'] as core.bool?,
        latencyTolerance: json_['latencyTolerance'] as core.String?,
        regionsVersion: json_.containsKey('regionsVersion')
            ? RegionsVersion.fromJson(
                json_['regionsVersion'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        subscription: json_.containsKey('subscription')
            ? Subscription.fromJson(
                json_['subscription'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        updateMask: json_['updateMask'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final allowMissing = this.allowMissing;
    final latencyTolerance = this.latencyTolerance;
    final regionsVersion = this.regionsVersion;
    final subscription = this.subscription;
    final updateMask = this.updateMask;
    return {
      'allowMissing': ?allowMissing,
      'latencyTolerance': ?latencyTolerance,
      'regionsVersion': ?regionsVersion,
      'subscription': ?subscription,
      'updateMask': ?updateMask,
    };
  }
}

/// Represents a targeting rule of the form: User currently has {scope} \[with
/// billing period {billing_period}\].
class UpgradeTargetingRule {
  /// The specific billing period duration, specified in ISO 8601 format, that a
  /// user must be currently subscribed to to be eligible for this rule.
  ///
  /// If not specified, users subscribed to any billing period are matched.
  core.String? billingPeriodDuration;

  /// Limit this offer to only once per user.
  ///
  /// If set to true, a user can never be eligible for this offer again if they
  /// ever subscribed to this offer.
  core.bool? oncePerUser;

  /// The scope of subscriptions this rule considers.
  ///
  /// Only allows "this subscription" and "specific subscription in app".
  ///
  /// Required.
  TargetingRuleScope? scope;

  UpgradeTargetingRule({
    this.billingPeriodDuration,
    this.oncePerUser,
    this.scope,
  });

  UpgradeTargetingRule.fromJson(core.Map json_)
    : this(
        billingPeriodDuration: json_['billingPeriodDuration'] as core.String?,
        oncePerUser: json_['oncePerUser'] as core.bool?,
        scope: json_.containsKey('scope')
            ? TargetingRuleScope.fromJson(
                json_['scope'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final billingPeriodDuration = this.billingPeriodDuration;
    final oncePerUser = this.oncePerUser;
    final scope = this.scope;
    return {
      'billingPeriodDuration': ?billingPeriodDuration,
      'oncePerUser': ?oncePerUser,
      'scope': ?scope,
    };
  }
}

/// A user resource.
class User {
  /// The state of the user's access to the Play Console.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "ACCESS_STATE_UNSPECIFIED" : Unknown or unspecified access state.
  /// - "INVITED" : User is invited but has not yet accepted the invitation.
  /// - "INVITATION_EXPIRED" : Invitation has expired.
  /// - "ACCESS_GRANTED" : User has accepted an invitation and has access to the
  /// Play Console.
  /// - "ACCESS_EXPIRED" : Account access has expired.
  core.String? accessState;

  /// Permissions for the user which apply across the developer account.
  core.List<core.String>? developerAccountPermissions;

  /// The user's email address.
  ///
  /// Immutable.
  core.String? email;

  /// The time at which the user's access expires, if set.
  ///
  /// When setting this value, it must always be in the future.
  core.String? expirationTime;

  /// Per-app permissions for the user.
  ///
  /// Output only.
  core.List<Grant>? grants;

  /// Resource name for this user, following the pattern
  /// "developers/{developer}/users/{email}".
  ///
  /// Required.
  core.String? name;

  /// Whether there are more permissions for the user that are not represented
  /// here.
  ///
  /// This can happen if the caller does not have permission to manage all apps
  /// in the account. This is also `true` if this user is the account owner. If
  /// this field is `true`, it should be taken as a signal that this user cannot
  /// be fully managed via the API. That is, the API caller is not be able to
  /// manage all of the permissions this user holds, either because it doesn't
  /// know about them or because the user is the account owner.
  ///
  /// Output only.
  core.bool? partial;

  User({
    this.accessState,
    this.developerAccountPermissions,
    this.email,
    this.expirationTime,
    this.grants,
    this.name,
    this.partial,
  });

  User.fromJson(core.Map json_)
    : this(
        accessState: json_['accessState'] as core.String?,
        developerAccountPermissions:
            (json_['developerAccountPermissions'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        email: json_['email'] as core.String?,
        expirationTime: json_['expirationTime'] as core.String?,
        grants: (json_['grants'] as core.List?)
            ?.map(
              (value) =>
                  Grant.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
        name: json_['name'] as core.String?,
        partial: json_['partial'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final accessState = this.accessState;
    final developerAccountPermissions = this.developerAccountPermissions;
    final email = this.email;
    final expirationTime = this.expirationTime;
    final grants = this.grants;
    final name = this.name;
    final partial = this.partial;
    return {
      'accessState': ?accessState,
      'developerAccountPermissions': ?developerAccountPermissions,
      'email': ?email,
      'expirationTime': ?expirationTime,
      'grants': ?grants,
      'name': ?name,
      'partial': ?partial,
    };
  }
}

/// User entry from conversation between user and developer.
class UserComment {
  /// Integer Android SDK version of the user's device at the time the review
  /// was written, e.g. 23 is Marshmallow.
  ///
  /// May be absent.
  core.int? androidOsVersion;

  /// Integer version code of the app as installed at the time the review was
  /// written.
  ///
  /// May be absent.
  core.int? appVersionCode;

  /// String version name of the app as installed at the time the review was
  /// written.
  ///
  /// May be absent.
  core.String? appVersionName;

  /// Codename for the reviewer's device, e.g. klte, flounder.
  ///
  /// May be absent.
  core.String? device;

  /// Information about the characteristics of the user's device.
  DeviceMetadata? deviceMetadata;

  /// The last time at which this comment was updated.
  Timestamp? lastModified;

  /// Untranslated text of the review, where the review was translated.
  ///
  /// If the review was not translated this is left blank.
  core.String? originalText;

  /// Language code for the reviewer.
  ///
  /// This is taken from the device settings so is not guaranteed to match the
  /// language the review is written in. May be absent.
  core.String? reviewerLanguage;

  /// The star rating associated with the review, from 1 to 5.
  core.int? starRating;

  /// The content of the comment, i.e. review body.
  ///
  /// In some cases users have been able to write a review with separate title
  /// and body; in those cases the title and body are concatenated and separated
  /// by a tab character.
  core.String? text;

  /// Number of users who have given this review a thumbs down.
  core.int? thumbsDownCount;

  /// Number of users who have given this review a thumbs up.
  core.int? thumbsUpCount;

  UserComment({
    this.androidOsVersion,
    this.appVersionCode,
    this.appVersionName,
    this.device,
    this.deviceMetadata,
    this.lastModified,
    this.originalText,
    this.reviewerLanguage,
    this.starRating,
    this.text,
    this.thumbsDownCount,
    this.thumbsUpCount,
  });

  UserComment.fromJson(core.Map json_)
    : this(
        androidOsVersion: json_['androidOsVersion'] as core.int?,
        appVersionCode: json_['appVersionCode'] as core.int?,
        appVersionName: json_['appVersionName'] as core.String?,
        device: json_['device'] as core.String?,
        deviceMetadata: json_.containsKey('deviceMetadata')
            ? DeviceMetadata.fromJson(
                json_['deviceMetadata'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        lastModified: json_.containsKey('lastModified')
            ? Timestamp.fromJson(
                json_['lastModified'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        originalText: json_['originalText'] as core.String?,
        reviewerLanguage: json_['reviewerLanguage'] as core.String?,
        starRating: json_['starRating'] as core.int?,
        text: json_['text'] as core.String?,
        thumbsDownCount: json_['thumbsDownCount'] as core.int?,
        thumbsUpCount: json_['thumbsUpCount'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final androidOsVersion = this.androidOsVersion;
    final appVersionCode = this.appVersionCode;
    final appVersionName = this.appVersionName;
    final device = this.device;
    final deviceMetadata = this.deviceMetadata;
    final lastModified = this.lastModified;
    final originalText = this.originalText;
    final reviewerLanguage = this.reviewerLanguage;
    final starRating = this.starRating;
    final text = this.text;
    final thumbsDownCount = this.thumbsDownCount;
    final thumbsUpCount = this.thumbsUpCount;
    return {
      'androidOsVersion': ?androidOsVersion,
      'appVersionCode': ?appVersionCode,
      'appVersionName': ?appVersionName,
      'device': ?device,
      'deviceMetadata': ?deviceMetadata,
      'lastModified': ?lastModified,
      'originalText': ?originalText,
      'reviewerLanguage': ?reviewerLanguage,
      'starRating': ?starRating,
      'text': ?text,
      'thumbsDownCount': ?thumbsDownCount,
      'thumbsUpCount': ?thumbsUpCount,
    };
  }
}

/// Describes an inclusive/exclusive list of country codes that module targets.
class UserCountriesTargeting {
  /// List of country codes in the two-letter CLDR territory format.
  core.List<core.String>? countryCodes;

  /// Indicates if the list above is exclusive.
  core.bool? exclude;

  UserCountriesTargeting({this.countryCodes, this.exclude});

  UserCountriesTargeting.fromJson(core.Map json_)
    : this(
        countryCodes: (json_['countryCodes'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        exclude: json_['exclude'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final countryCodes = this.countryCodes;
    final exclude = this.exclude;
    return {'countryCodes': ?countryCodes, 'exclude': ?exclude};
  }
}

/// A set of user countries.
///
/// A country set determines what variation of app content gets served to a
/// specific location.
class UserCountrySet {
  /// List of country codes representing countries.
  ///
  /// A Country code is represented in ISO 3166 alpha-2 format. For Example:-
  /// "IT" for Italy, "GE" for Georgia.
  core.List<core.String>? countryCodes;

  /// Country set name.
  core.String? name;

  UserCountrySet({this.countryCodes, this.name});

  UserCountrySet.fromJson(core.Map json_)
    : this(
        countryCodes: (json_['countryCodes'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final countryCodes = this.countryCodes;
    final name = this.name;
    return {'countryCodes': ?countryCodes, 'name': ?name};
  }
}

/// Information specific to cancellations initiated by users.
class UserInitiatedCancellation {
  /// Information provided by the user when they complete the subscription
  /// cancellation flow (cancellation reason survey).
  CancelSurveyResult? cancelSurveyResult;

  /// The time at which the subscription was canceled by the user.
  ///
  /// The user might still have access to the subscription after this time. Use
  /// line_items.expiry_time to determine if a user still has access.
  core.String? cancelTime;

  UserInitiatedCancellation({this.cancelSurveyResult, this.cancelTime});

  UserInitiatedCancellation.fromJson(core.Map json_)
    : this(
        cancelSurveyResult: json_.containsKey('cancelSurveyResult')
            ? CancelSurveyResult.fromJson(
                json_['cancelSurveyResult']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        cancelTime: json_['cancelTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final cancelSurveyResult = this.cancelSurveyResult;
    final cancelTime = this.cancelTime;
    return {
      'cancelSurveyResult': ?cancelSurveyResult,
      'cancelTime': ?cancelTime,
    };
  }
}

/// A permission used by this APK.
class UsesPermission {
  /// Optionally, the maximum SDK version for which the permission is required.
  core.int? maxSdkVersion;

  /// The name of the permission requested.
  core.String? name;

  UsesPermission({this.maxSdkVersion, this.name});

  UsesPermission.fromJson(core.Map json_)
    : this(
        maxSdkVersion: json_['maxSdkVersion'] as core.int?,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final maxSdkVersion = this.maxSdkVersion;
    final name = this.name;
    return {'maxSdkVersion': ?maxSdkVersion, 'name': ?name};
  }
}

/// A multiple use, predefined promotion code.
class VanityCode {
  /// The promotion code.
  core.String? promotionCode;

  VanityCode({this.promotionCode});

  VanityCode.fromJson(core.Map json_)
    : this(promotionCode: json_['promotionCode'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final promotionCode = this.promotionCode;
    return {'promotionCode': ?promotionCode};
  }
}

/// APK that is suitable for inclusion in a system image.
///
/// The resource of SystemApksService.
class Variant {
  /// The device spec used to generate the APK.
  DeviceSpec? deviceSpec;

  /// Options applied to the generated APK.
  ///
  /// Optional.
  SystemApkOptions? options;

  /// The ID of a previously created system APK variant.
  ///
  /// Output only.
  core.int? variantId;

  Variant({this.deviceSpec, this.options, this.variantId});

  Variant.fromJson(core.Map json_)
    : this(
        deviceSpec: json_.containsKey('deviceSpec')
            ? DeviceSpec.fromJson(
                json_['deviceSpec'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        options: json_.containsKey('options')
            ? SystemApkOptions.fromJson(
                json_['options'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        variantId: json_['variantId'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final deviceSpec = this.deviceSpec;
    final options = this.options;
    final variantId = this.variantId;
    return {
      'deviceSpec': ?deviceSpec,
      'options': ?options,
      'variantId': ?variantId,
    };
  }
}

/// Targeting on the level of variants.
class VariantTargeting {
  /// The abi that the variant targets
  AbiTargeting? abiTargeting;

  /// Multi-api-level targeting
  MultiAbiTargeting? multiAbiTargeting;

  /// The screen densities that this variant supports
  ScreenDensityTargeting? screenDensityTargeting;

  /// The sdk version that the variant targets
  SdkVersionTargeting? sdkVersionTargeting;

  /// Texture-compression-format-level targeting
  TextureCompressionFormatTargeting? textureCompressionFormatTargeting;

  VariantTargeting({
    this.abiTargeting,
    this.multiAbiTargeting,
    this.screenDensityTargeting,
    this.sdkVersionTargeting,
    this.textureCompressionFormatTargeting,
  });

  VariantTargeting.fromJson(core.Map json_)
    : this(
        abiTargeting: json_.containsKey('abiTargeting')
            ? AbiTargeting.fromJson(
                json_['abiTargeting'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        multiAbiTargeting: json_.containsKey('multiAbiTargeting')
            ? MultiAbiTargeting.fromJson(
                json_['multiAbiTargeting']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        screenDensityTargeting: json_.containsKey('screenDensityTargeting')
            ? ScreenDensityTargeting.fromJson(
                json_['screenDensityTargeting']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        sdkVersionTargeting: json_.containsKey('sdkVersionTargeting')
            ? SdkVersionTargeting.fromJson(
                json_['sdkVersionTargeting']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        textureCompressionFormatTargeting:
            json_.containsKey('textureCompressionFormatTargeting')
            ? TextureCompressionFormatTargeting.fromJson(
                json_['textureCompressionFormatTargeting']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final abiTargeting = this.abiTargeting;
    final multiAbiTargeting = this.multiAbiTargeting;
    final screenDensityTargeting = this.screenDensityTargeting;
    final sdkVersionTargeting = this.sdkVersionTargeting;
    final textureCompressionFormatTargeting =
        this.textureCompressionFormatTargeting;
    return {
      'abiTargeting': ?abiTargeting,
      'multiAbiTargeting': ?multiAbiTargeting,
      'screenDensityTargeting': ?screenDensityTargeting,
      'sdkVersionTargeting': ?sdkVersionTargeting,
      'textureCompressionFormatTargeting': ?textureCompressionFormatTargeting,
    };
  }
}

/// A VoidedPurchase resource indicates a purchase that was either
/// canceled/refunded/charged-back.
class VoidedPurchase {
  /// This kind represents a voided purchase object in the androidpublisher
  /// service.
  core.String? kind;

  /// The order id which uniquely identifies a one-time purchase, subscription
  /// purchase, or subscription renewal.
  core.String? orderId;

  /// The time at which the purchase was made, in milliseconds since the epoch
  /// (Jan 1, 1970).
  core.String? purchaseTimeMillis;

  /// The token which uniquely identifies a one-time purchase or subscription.
  ///
  /// To uniquely identify subscription renewals use order_id (available
  /// starting from version 3 of the API).
  core.String? purchaseToken;

  /// The voided quantity as the result of a quantity-based partial refund.
  ///
  /// Voided purchases of quantity-based partial refunds may only be returned
  /// when includeQuantityBasedPartialRefund is set to true.
  core.int? voidedQuantity;

  /// The reason why the purchase was voided, possible values are: 0.
  ///
  /// Other 1. Remorse 2. Not_received 3. Defective 4. Accidental_purchase 5.
  /// Fraud 6. Friendly_fraud 7. Chargeback 8. Unacknowledged_purchase
  core.int? voidedReason;

  /// The initiator of voided purchase, possible values are: 0.
  ///
  /// User 1. Developer 2. Google
  core.int? voidedSource;

  /// The time at which the purchase was canceled/refunded/charged-back, in
  /// milliseconds since the epoch (Jan 1, 1970).
  core.String? voidedTimeMillis;

  VoidedPurchase({
    this.kind,
    this.orderId,
    this.purchaseTimeMillis,
    this.purchaseToken,
    this.voidedQuantity,
    this.voidedReason,
    this.voidedSource,
    this.voidedTimeMillis,
  });

  VoidedPurchase.fromJson(core.Map json_)
    : this(
        kind: json_['kind'] as core.String?,
        orderId: json_['orderId'] as core.String?,
        purchaseTimeMillis: json_['purchaseTimeMillis'] as core.String?,
        purchaseToken: json_['purchaseToken'] as core.String?,
        voidedQuantity: json_['voidedQuantity'] as core.int?,
        voidedReason: json_['voidedReason'] as core.int?,
        voidedSource: json_['voidedSource'] as core.int?,
        voidedTimeMillis: json_['voidedTimeMillis'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final kind = this.kind;
    final orderId = this.orderId;
    final purchaseTimeMillis = this.purchaseTimeMillis;
    final purchaseToken = this.purchaseToken;
    final voidedQuantity = this.voidedQuantity;
    final voidedReason = this.voidedReason;
    final voidedSource = this.voidedSource;
    final voidedTimeMillis = this.voidedTimeMillis;
    return {
      'kind': ?kind,
      'orderId': ?orderId,
      'purchaseTimeMillis': ?purchaseTimeMillis,
      'purchaseToken': ?purchaseToken,
      'voidedQuantity': ?voidedQuantity,
      'voidedReason': ?voidedReason,
      'voidedSource': ?voidedSource,
      'voidedTimeMillis': ?voidedTimeMillis,
    };
  }
}

/// Response for the voidedpurchases.list API.
class VoidedPurchasesListResponse {
  /// General pagination information.
  PageInfo? pageInfo;

  /// Pagination information for token pagination.
  TokenPagination? tokenPagination;
  core.List<VoidedPurchase>? voidedPurchases;

  VoidedPurchasesListResponse({
    this.pageInfo,
    this.tokenPagination,
    this.voidedPurchases,
  });

  VoidedPurchasesListResponse.fromJson(core.Map json_)
    : this(
        pageInfo: json_.containsKey('pageInfo')
            ? PageInfo.fromJson(
                json_['pageInfo'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        tokenPagination: json_.containsKey('tokenPagination')
            ? TokenPagination.fromJson(
                json_['tokenPagination'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        voidedPurchases: (json_['voidedPurchases'] as core.List?)
            ?.map(
              (value) => VoidedPurchase.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final pageInfo = this.pageInfo;
    final tokenPagination = this.tokenPagination;
    final voidedPurchases = this.voidedPurchases;
    return {
      'pageInfo': ?pageInfo,
      'tokenPagination': ?tokenPagination,
      'voidedPurchases': ?voidedPurchases,
    };
  }
}
