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

/// Google Play Android Developer API - v3
///
/// Lets Android application developers access their Google Play accounts.
///
/// For more information, see <https://developers.google.com/android-publisher>
///
/// Create an instance of [AndroidPublisherApi] to access these resources:
///
/// - [EditsResource]
///   - [EditsApksResource]
///   - [EditsBundlesResource]
///   - [EditsDeobfuscationfilesResource]
///   - [EditsDetailsResource]
///   - [EditsExpansionfilesResource]
///   - [EditsImagesResource]
///   - [EditsListingsResource]
///   - [EditsTestersResource]
///   - [EditsTracksResource]
/// - [GrantsResource]
/// - [InappproductsResource]
/// - [InternalappsharingartifactsResource]
/// - [MonetizationResource]
/// - [OrdersResource]
/// - [PurchasesResource]
///   - [PurchasesProductsResource]
///   - [PurchasesSubscriptionsResource]
///   - [PurchasesVoidedpurchasesResource]
/// - [ReviewsResource]
/// - [SystemapksResource]
///   - [SystemapksVariantsResource]
/// - [UsersResource]
library androidpublisher.v3;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

// ignore: deprecated_member_use_from_same_package
import '../shared.dart';
import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show
        ApiRequestError,
        DetailedApiRequestError,
        Media,
        UploadOptions,
        ResumableUploadOptions,
        DownloadOptions,
        PartialDownloadOptions,
        ByteRange;

/// Lets Android application developers access their Google Play accounts.
class AndroidPublisherApi {
  /// View and manage your Google Play Developer account
  static const androidpublisherScope =
      'https://www.googleapis.com/auth/androidpublisher';

  final commons.ApiRequester _requester;

  EditsResource get edits => EditsResource(_requester);
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

  AndroidPublisherApi(http.Client client,
      {core.String rootUrl = 'https://androidpublisher.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class EditsResource {
  final commons.ApiRequester _requester;

  EditsApksResource get apks => EditsApksResource(_requester);
  EditsBundlesResource get bundles => EditsBundlesResource(_requester);
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
  /// [changesNotSentForReview] - Indicates that the changes in this edit will
  /// not be reviewed until they are explicitly sent for review from the Google
  /// Play Console UI. These changes will be added to any other changes that are
  /// not yet sent for review.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (changesNotSentForReview != null)
        'changesNotSentForReview': ['${changesNotSentForReview}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/edits/' +
        commons.escapeVariable('$editId') +
        ':commit';

    final _response = await _requester.request(
      _url,
      'POST',
      queryParams: _queryParams,
    );
    return AppEdit.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/edits/' +
        commons.escapeVariable('$editId');

    await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/edits/' +
        commons.escapeVariable('$editId');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return AppEdit.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/edits';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return AppEdit.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/edits/' +
        commons.escapeVariable('$editId') +
        ':validate';

    final _response = await _requester.request(
      _url,
      'POST',
      queryParams: _queryParams,
    );
    return AppEdit.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/edits/' +
        commons.escapeVariable('$editId') +
        '/apks/externallyHosted';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return ApksAddExternallyHostedResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/edits/' +
        commons.escapeVariable('$editId') +
        '/apks';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ApksListResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    core.String _url;
    if (uploadMedia == null) {
      _url = 'androidpublisher/v3/applications/' +
          commons.escapeVariable('$packageName') +
          '/edits/' +
          commons.escapeVariable('$editId') +
          '/apks';
    } else if (uploadOptions is commons.ResumableUploadOptions) {
      _url = '/resumable/upload/androidpublisher/v3/applications/' +
          commons.escapeVariable('$packageName') +
          '/edits/' +
          commons.escapeVariable('$editId') +
          '/apks';
    } else {
      _url = '/upload/androidpublisher/v3/applications/' +
          commons.escapeVariable('$packageName') +
          '/edits/' +
          commons.escapeVariable('$editId') +
          '/apks';
    }

    final _response = await _requester.request(
      _url,
      'POST',
      queryParams: _queryParams,
      uploadMedia: uploadMedia,
      uploadOptions: uploadOptions,
    );
    return Apk.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/edits/' +
        commons.escapeVariable('$editId') +
        '/bundles';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return BundlesListResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
  /// [ackBundleInstallationWarning] - Must be set to true if the app bundle
  /// installation may trigger a warning on user devices (for example, if
  /// installation size may be over a threshold, typically 100 MB).
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
    core.String? $fields,
    commons.UploadOptions uploadOptions = commons.UploadOptions.defaultOptions,
    commons.Media? uploadMedia,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (ackBundleInstallationWarning != null)
        'ackBundleInstallationWarning': ['${ackBundleInstallationWarning}'],
      if ($fields != null) 'fields': [$fields],
    };

    core.String _url;
    if (uploadMedia == null) {
      _url = 'androidpublisher/v3/applications/' +
          commons.escapeVariable('$packageName') +
          '/edits/' +
          commons.escapeVariable('$editId') +
          '/bundles';
    } else if (uploadOptions is commons.ResumableUploadOptions) {
      _url = '/resumable/upload/androidpublisher/v3/applications/' +
          commons.escapeVariable('$packageName') +
          '/edits/' +
          commons.escapeVariable('$editId') +
          '/bundles';
    } else {
      _url = '/upload/androidpublisher/v3/applications/' +
          commons.escapeVariable('$packageName') +
          '/edits/' +
          commons.escapeVariable('$editId') +
          '/bundles';
    }

    final _response = await _requester.request(
      _url,
      'POST',
      queryParams: _queryParams,
      uploadMedia: uploadMedia,
      uploadOptions: uploadOptions,
    );
    return Bundle.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    core.String _url;
    if (uploadMedia == null) {
      _url = 'androidpublisher/v3/applications/' +
          commons.escapeVariable('$packageName') +
          '/edits/' +
          commons.escapeVariable('$editId') +
          '/apks/' +
          commons.escapeVariable('$apkVersionCode') +
          '/deobfuscationFiles/' +
          commons.escapeVariable('$deobfuscationFileType');
    } else if (uploadOptions is commons.ResumableUploadOptions) {
      _url = '/resumable/upload/androidpublisher/v3/applications/' +
          commons.escapeVariable('$packageName') +
          '/edits/' +
          commons.escapeVariable('$editId') +
          '/apks/' +
          commons.escapeVariable('$apkVersionCode') +
          '/deobfuscationFiles/' +
          commons.escapeVariable('$deobfuscationFileType');
    } else {
      _url = '/upload/androidpublisher/v3/applications/' +
          commons.escapeVariable('$packageName') +
          '/edits/' +
          commons.escapeVariable('$editId') +
          '/apks/' +
          commons.escapeVariable('$apkVersionCode') +
          '/deobfuscationFiles/' +
          commons.escapeVariable('$deobfuscationFileType');
    }

    final _response = await _requester.request(
      _url,
      'POST',
      queryParams: _queryParams,
      uploadMedia: uploadMedia,
      uploadOptions: uploadOptions,
    );
    return DeobfuscationFilesUploadResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/edits/' +
        commons.escapeVariable('$editId') +
        '/details';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return AppDetails.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/edits/' +
        commons.escapeVariable('$editId') +
        '/details';

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return AppDetails.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/edits/' +
        commons.escapeVariable('$editId') +
        '/details';

    final _response = await _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
    );
    return AppDetails.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/edits/' +
        commons.escapeVariable('$editId') +
        '/apks/' +
        commons.escapeVariable('$apkVersionCode') +
        '/expansionFiles/' +
        commons.escapeVariable('$expansionFileType');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ExpansionFile.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/edits/' +
        commons.escapeVariable('$editId') +
        '/apks/' +
        commons.escapeVariable('$apkVersionCode') +
        '/expansionFiles/' +
        commons.escapeVariable('$expansionFileType');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return ExpansionFile.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/edits/' +
        commons.escapeVariable('$editId') +
        '/apks/' +
        commons.escapeVariable('$apkVersionCode') +
        '/expansionFiles/' +
        commons.escapeVariable('$expansionFileType');

    final _response = await _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
    );
    return ExpansionFile.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    core.String _url;
    if (uploadMedia == null) {
      _url = 'androidpublisher/v3/applications/' +
          commons.escapeVariable('$packageName') +
          '/edits/' +
          commons.escapeVariable('$editId') +
          '/apks/' +
          commons.escapeVariable('$apkVersionCode') +
          '/expansionFiles/' +
          commons.escapeVariable('$expansionFileType');
    } else if (uploadOptions is commons.ResumableUploadOptions) {
      _url = '/resumable/upload/androidpublisher/v3/applications/' +
          commons.escapeVariable('$packageName') +
          '/edits/' +
          commons.escapeVariable('$editId') +
          '/apks/' +
          commons.escapeVariable('$apkVersionCode') +
          '/expansionFiles/' +
          commons.escapeVariable('$expansionFileType');
    } else {
      _url = '/upload/androidpublisher/v3/applications/' +
          commons.escapeVariable('$packageName') +
          '/edits/' +
          commons.escapeVariable('$editId') +
          '/apks/' +
          commons.escapeVariable('$apkVersionCode') +
          '/expansionFiles/' +
          commons.escapeVariable('$expansionFileType');
    }

    final _response = await _requester.request(
      _url,
      'POST',
      queryParams: _queryParams,
      uploadMedia: uploadMedia,
      uploadOptions: uploadOptions,
    );
    return ExpansionFilesUploadResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'androidpublisher/v3/applications/' +
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
      _url,
      'DELETE',
      queryParams: _queryParams,
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/edits/' +
        commons.escapeVariable('$editId') +
        '/listings/' +
        commons.escapeVariable('$language') +
        '/' +
        commons.escapeVariable('$imageType');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return ImagesDeleteAllResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/edits/' +
        commons.escapeVariable('$editId') +
        '/listings/' +
        commons.escapeVariable('$language') +
        '/' +
        commons.escapeVariable('$imageType');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ImagesListResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    core.String _url;
    if (uploadMedia == null) {
      _url = 'androidpublisher/v3/applications/' +
          commons.escapeVariable('$packageName') +
          '/edits/' +
          commons.escapeVariable('$editId') +
          '/listings/' +
          commons.escapeVariable('$language') +
          '/' +
          commons.escapeVariable('$imageType');
    } else if (uploadOptions is commons.ResumableUploadOptions) {
      _url = '/resumable/upload/androidpublisher/v3/applications/' +
          commons.escapeVariable('$packageName') +
          '/edits/' +
          commons.escapeVariable('$editId') +
          '/listings/' +
          commons.escapeVariable('$language') +
          '/' +
          commons.escapeVariable('$imageType');
    } else {
      _url = '/upload/androidpublisher/v3/applications/' +
          commons.escapeVariable('$packageName') +
          '/edits/' +
          commons.escapeVariable('$editId') +
          '/listings/' +
          commons.escapeVariable('$language') +
          '/' +
          commons.escapeVariable('$imageType');
    }

    final _response = await _requester.request(
      _url,
      'POST',
      queryParams: _queryParams,
      uploadMedia: uploadMedia,
      uploadOptions: uploadOptions,
    );
    return ImagesUploadResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/edits/' +
        commons.escapeVariable('$editId') +
        '/listings/' +
        commons.escapeVariable('$language');

    await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/edits/' +
        commons.escapeVariable('$editId') +
        '/listings';

    await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/edits/' +
        commons.escapeVariable('$editId') +
        '/listings/' +
        commons.escapeVariable('$language');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Listing.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/edits/' +
        commons.escapeVariable('$editId') +
        '/listings';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListingsListResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/edits/' +
        commons.escapeVariable('$editId') +
        '/listings/' +
        commons.escapeVariable('$language');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return Listing.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/edits/' +
        commons.escapeVariable('$editId') +
        '/listings/' +
        commons.escapeVariable('$language');

    final _response = await _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
    );
    return Listing.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class EditsTestersResource {
  final commons.ApiRequester _requester;

  EditsTestersResource(commons.ApiRequester client) : _requester = client;

  /// Gets testers.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/edits/' +
        commons.escapeVariable('$editId') +
        '/testers/' +
        commons.escapeVariable('$track');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Testers.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Patches testers.
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/edits/' +
        commons.escapeVariable('$editId') +
        '/testers/' +
        commons.escapeVariable('$track');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return Testers.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Updates testers.
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/edits/' +
        commons.escapeVariable('$editId') +
        '/testers/' +
        commons.escapeVariable('$track');

    final _response = await _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
    );
    return Testers.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class EditsTracksResource {
  final commons.ApiRequester _requester;

  EditsTracksResource(commons.ApiRequester client) : _requester = client;

  /// Gets a track.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Package name of the app.
  ///
  /// [editId] - Identifier of the edit.
  ///
  /// [track] - Identifier of the track.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/edits/' +
        commons.escapeVariable('$editId') +
        '/tracks/' +
        commons.escapeVariable('$track');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Track.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/edits/' +
        commons.escapeVariable('$editId') +
        '/tracks';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return TracksListResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/edits/' +
        commons.escapeVariable('$editId') +
        '/tracks/' +
        commons.escapeVariable('$track');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return Track.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/edits/' +
        commons.escapeVariable('$editId') +
        '/tracks/' +
        commons.escapeVariable('$track');

    final _response = await _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
    );
    return Track.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'androidpublisher/v3/' + core.Uri.encodeFull('$parent') + '/grants';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Grant.fromJson(_response as core.Map<core.String, core.dynamic>);
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
  async.Future<void> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'androidpublisher/v3/' + core.Uri.encodeFull('$name');

    await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
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
  /// "developers/{developer}/users/{email}/grants/{package_name}".
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'androidpublisher/v3/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return Grant.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class InappproductsResource {
  final commons.ApiRequester _requester;

  InappproductsResource(commons.ApiRequester client) : _requester = client;

  /// Deletes an in-app product (i.e. a managed product or a subscriptions).
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
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> delete(
    core.String packageName,
    core.String sku, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/inappproducts/' +
        commons.escapeVariable('$sku');

    await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
      downloadOptions: null,
    );
  }

  /// Gets an in-app product, which can be a managed product or a subscription.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/inappproducts/' +
        commons.escapeVariable('$sku');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return InAppProduct.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Creates an in-app product (i.e. a managed product or a subscriptions).
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (autoConvertMissingPrices != null)
        'autoConvertMissingPrices': ['${autoConvertMissingPrices}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/inappproducts';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return InAppProduct.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists all in-app products - both managed products and subscriptions.
  ///
  /// If an app has a large number of in-app products, the response may be
  /// paginated. In this case the response field `tokenPagination.nextPageToken`
  /// will be set and the caller should provide its value as a `token` request
  /// parameter to retrieve the next page.
  ///
  /// Request parameters:
  ///
  /// [packageName] - Package name of the app.
  ///
  /// [maxResults] - Deprecated and ignored. The page size is determined by the
  /// server.
  ///
  /// [startIndex] - Deprecated and ignored. Set the `token` parameter to
  /// rertieve the next page.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (startIndex != null) 'startIndex': ['${startIndex}'],
      if (token != null) 'token': [token],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/inappproducts';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return InappproductsListResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Patches an in-app product (i.e. a managed product or a subscriptions).
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
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (autoConvertMissingPrices != null)
        'autoConvertMissingPrices': ['${autoConvertMissingPrices}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/inappproducts/' +
        commons.escapeVariable('$sku');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return InAppProduct.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates an in-app product (i.e. a managed product or a subscriptions).
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
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (allowMissing != null) 'allowMissing': ['${allowMissing}'],
      if (autoConvertMissingPrices != null)
        'autoConvertMissingPrices': ['${autoConvertMissingPrices}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/inappproducts/' +
        commons.escapeVariable('$sku');

    final _response = await _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
    );
    return InAppProduct.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    core.String _url;
    if (uploadMedia == null) {
      _url = 'androidpublisher/v3/applications/internalappsharing/' +
          commons.escapeVariable('$packageName') +
          '/artifacts/apk';
    } else if (uploadOptions is commons.ResumableUploadOptions) {
      _url =
          '/resumable/upload/androidpublisher/v3/applications/internalappsharing/' +
              commons.escapeVariable('$packageName') +
              '/artifacts/apk';
    } else {
      _url = '/upload/androidpublisher/v3/applications/internalappsharing/' +
          commons.escapeVariable('$packageName') +
          '/artifacts/apk';
    }

    final _response = await _requester.request(
      _url,
      'POST',
      queryParams: _queryParams,
      uploadMedia: uploadMedia,
      uploadOptions: uploadOptions,
    );
    return InternalAppSharingArtifact.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    core.String _url;
    if (uploadMedia == null) {
      _url = 'androidpublisher/v3/applications/internalappsharing/' +
          commons.escapeVariable('$packageName') +
          '/artifacts/bundle';
    } else if (uploadOptions is commons.ResumableUploadOptions) {
      _url =
          '/resumable/upload/androidpublisher/v3/applications/internalappsharing/' +
              commons.escapeVariable('$packageName') +
              '/artifacts/bundle';
    } else {
      _url = '/upload/androidpublisher/v3/applications/internalappsharing/' +
          commons.escapeVariable('$packageName') +
          '/artifacts/bundle';
    }

    final _response = await _requester.request(
      _url,
      'POST',
      queryParams: _queryParams,
      uploadMedia: uploadMedia,
      uploadOptions: uploadOptions,
    );
    return InternalAppSharingArtifact.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class MonetizationResource {
  final commons.ApiRequester _requester;

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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/pricing:convertRegionPrices';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return ConvertRegionPricesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class OrdersResource {
  final commons.ApiRequester _requester;

  OrdersResource(commons.ApiRequester client) : _requester = client;

  /// Refunds a user's subscription or in-app purchase order.
  ///
  /// Orders older than 1 year cannot be refunded.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (revoke != null) 'revoke': ['${revoke}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/orders/' +
        commons.escapeVariable('$orderId') +
        ':refund';

    await _requester.request(
      _url,
      'POST',
      queryParams: _queryParams,
      downloadOptions: null,
    );
  }
}

class PurchasesResource {
  final commons.ApiRequester _requester;

  PurchasesProductsResource get products =>
      PurchasesProductsResource(_requester);
  PurchasesSubscriptionsResource get subscriptions =>
      PurchasesSubscriptionsResource(_requester);
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/purchases/products/' +
        commons.escapeVariable('$productId') +
        '/tokens/' +
        commons.escapeVariable('$token') +
        ':acknowledge';

    await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/purchases/products/' +
        commons.escapeVariable('$productId') +
        '/tokens/' +
        commons.escapeVariable('$token');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ProductPurchase.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
  async.Future<void> acknowledge(
    SubscriptionPurchasesAcknowledgeRequest request,
    core.String packageName,
    core.String subscriptionId,
    core.String token, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/purchases/subscriptions/' +
        commons.escapeVariable('$subscriptionId') +
        '/tokens/' +
        commons.escapeVariable('$token') +
        ':acknowledge';

    await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      downloadOptions: null,
    );
  }

  /// Cancels a user's subscription purchase.
  ///
  /// The subscription remains valid until its expiration time.
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
  async.Future<void> cancel(
    core.String packageName,
    core.String subscriptionId,
    core.String token, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/purchases/subscriptions/' +
        commons.escapeVariable('$subscriptionId') +
        '/tokens/' +
        commons.escapeVariable('$token') +
        ':cancel';

    await _requester.request(
      _url,
      'POST',
      queryParams: _queryParams,
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/purchases/subscriptions/' +
        commons.escapeVariable('$subscriptionId') +
        '/tokens/' +
        commons.escapeVariable('$token') +
        ':defer';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return SubscriptionPurchasesDeferResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

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
  async.Future<SubscriptionPurchase> get(
    core.String packageName,
    core.String subscriptionId,
    core.String token, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/purchases/subscriptions/' +
        commons.escapeVariable('$subscriptionId') +
        '/tokens/' +
        commons.escapeVariable('$token');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return SubscriptionPurchase.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

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
  async.Future<void> refund(
    core.String packageName,
    core.String subscriptionId,
    core.String token, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/purchases/subscriptions/' +
        commons.escapeVariable('$subscriptionId') +
        '/tokens/' +
        commons.escapeVariable('$token') +
        ':refund';

    await _requester.request(
      _url,
      'POST',
      queryParams: _queryParams,
      downloadOptions: null,
    );
  }

  /// Refunds and immediately revokes a user's subscription purchase.
  ///
  /// Access to the subscription will be terminated immediately and it will stop
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
  async.Future<void> revoke(
    core.String packageName,
    core.String subscriptionId,
    core.String token, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/purchases/subscriptions/' +
        commons.escapeVariable('$subscriptionId') +
        '/tokens/' +
        commons.escapeVariable('$token') +
        ':revoke';

    await _requester.request(
      _url,
      'POST',
      queryParams: _queryParams,
      downloadOptions: null,
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
    core.int? maxResults,
    core.int? startIndex,
    core.String? startTime,
    core.String? token,
    core.int? type,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (endTime != null) 'endTime': [endTime],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (startIndex != null) 'startIndex': ['${startIndex}'],
      if (startTime != null) 'startTime': [startTime],
      if (token != null) 'token': [token],
      if (type != null) 'type': ['${type}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/purchases/voidedpurchases';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return VoidedPurchasesListResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (translationLanguage != null)
        'translationLanguage': [translationLanguage],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/reviews/' +
        commons.escapeVariable('$reviewId');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Review.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (startIndex != null) 'startIndex': ['${startIndex}'],
      if (token != null) 'token': [token],
      if (translationLanguage != null)
        'translationLanguage': [translationLanguage],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/reviews';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ReviewsListResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/reviews/' +
        commons.escapeVariable('$reviewId') +
        ':reply';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return ReviewsReplyResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/systemApks/' +
        commons.escapeVariable('$versionCode') +
        '/variants';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Variant.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/systemApks/' +
        commons.escapeVariable('$versionCode') +
        '/variants/' +
        commons.escapeVariable('$variantId') +
        ':download';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
      downloadOptions: downloadOptions,
    );
    if (downloadOptions.isMetadataDownload) {
      return null;
    } else {
      return _response as commons.Media;
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/systemApks/' +
        commons.escapeVariable('$versionCode') +
        '/variants/' +
        commons.escapeVariable('$variantId');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Variant.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'androidpublisher/v3/applications/' +
        commons.escapeVariable('$packageName') +
        '/systemApks/' +
        commons.escapeVariable('$versionCode') +
        '/variants';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return SystemApksListResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'androidpublisher/v3/' + core.Uri.encodeFull('$parent') + '/users';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return User.fromJson(_response as core.Map<core.String, core.dynamic>);
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
  async.Future<void> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'androidpublisher/v3/' + core.Uri.encodeFull('$name');

    await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'androidpublisher/v3/' + core.Uri.encodeFull('$parent') + '/users';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListUsersResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'androidpublisher/v3/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return User.fromJson(_response as core.Map<core.String, core.dynamic>);
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

  Apk({
    this.binary,
    this.versionCode,
  });

  Apk.fromJson(core.Map _json)
      : this(
          binary: _json.containsKey('binary')
              ? ApkBinary.fromJson(
                  _json['binary'] as core.Map<core.String, core.dynamic>)
              : null,
          versionCode: _json.containsKey('versionCode')
              ? _json['versionCode'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (binary != null) 'binary': binary!,
        if (versionCode != null) 'versionCode': versionCode!,
      };
}

/// Represents the binary payload of an APK.
class ApkBinary {
  /// A sha1 hash of the APK payload, encoded as a hex string and matching the
  /// output of the sha1sum command.
  core.String? sha1;

  /// A sha256 hash of the APK payload, encoded as a hex string and matching the
  /// output of the sha256sum command.
  core.String? sha256;

  ApkBinary({
    this.sha1,
    this.sha256,
  });

  ApkBinary.fromJson(core.Map _json)
      : this(
          sha1: _json.containsKey('sha1') ? _json['sha1'] as core.String : null,
          sha256: _json.containsKey('sha256')
              ? _json['sha256'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (sha1 != null) 'sha1': sha1!,
        if (sha256 != null) 'sha256': sha256!,
      };
}

/// Request to create a new externally hosted APK.
class ApksAddExternallyHostedRequest {
  /// The definition of the externally-hosted APK and where it is located.
  ExternallyHostedApk? externallyHostedApk;

  ApksAddExternallyHostedRequest({
    this.externallyHostedApk,
  });

  ApksAddExternallyHostedRequest.fromJson(core.Map _json)
      : this(
          externallyHostedApk: _json.containsKey('externallyHostedApk')
              ? ExternallyHostedApk.fromJson(_json['externallyHostedApk']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (externallyHostedApk != null)
          'externallyHostedApk': externallyHostedApk!,
      };
}

/// Response for creating a new externally hosted APK.
class ApksAddExternallyHostedResponse {
  /// The definition of the externally-hosted APK and where it is located.
  ExternallyHostedApk? externallyHostedApk;

  ApksAddExternallyHostedResponse({
    this.externallyHostedApk,
  });

  ApksAddExternallyHostedResponse.fromJson(core.Map _json)
      : this(
          externallyHostedApk: _json.containsKey('externallyHostedApk')
              ? ExternallyHostedApk.fromJson(_json['externallyHostedApk']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (externallyHostedApk != null)
          'externallyHostedApk': externallyHostedApk!,
      };
}

/// Response listing all APKs.
class ApksListResponse {
  /// All APKs.
  core.List<Apk>? apks;

  /// The kind of this response ("androidpublisher#apksListResponse").
  core.String? kind;

  ApksListResponse({
    this.apks,
    this.kind,
  });

  ApksListResponse.fromJson(core.Map _json)
      : this(
          apks: _json.containsKey('apks')
              ? (_json['apks'] as core.List)
                  .map((value) => Apk.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (apks != null) 'apks': apks!,
        if (kind != null) 'kind': kind!,
      };
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

  AppDetails.fromJson(core.Map _json)
      : this(
          contactEmail: _json.containsKey('contactEmail')
              ? _json['contactEmail'] as core.String
              : null,
          contactPhone: _json.containsKey('contactPhone')
              ? _json['contactPhone'] as core.String
              : null,
          contactWebsite: _json.containsKey('contactWebsite')
              ? _json['contactWebsite'] as core.String
              : null,
          defaultLanguage: _json.containsKey('defaultLanguage')
              ? _json['defaultLanguage'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (contactEmail != null) 'contactEmail': contactEmail!,
        if (contactPhone != null) 'contactPhone': contactPhone!,
        if (contactWebsite != null) 'contactWebsite': contactWebsite!,
        if (defaultLanguage != null) 'defaultLanguage': defaultLanguage!,
      };
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

  AppEdit({
    this.expiryTimeSeconds,
    this.id,
  });

  AppEdit.fromJson(core.Map _json)
      : this(
          expiryTimeSeconds: _json.containsKey('expiryTimeSeconds')
              ? _json['expiryTimeSeconds'] as core.String
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (expiryTimeSeconds != null) 'expiryTimeSeconds': expiryTimeSeconds!,
        if (id != null) 'id': id!,
      };
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

  Bundle({
    this.sha1,
    this.sha256,
    this.versionCode,
  });

  Bundle.fromJson(core.Map _json)
      : this(
          sha1: _json.containsKey('sha1') ? _json['sha1'] as core.String : null,
          sha256: _json.containsKey('sha256')
              ? _json['sha256'] as core.String
              : null,
          versionCode: _json.containsKey('versionCode')
              ? _json['versionCode'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (sha1 != null) 'sha1': sha1!,
        if (sha256 != null) 'sha256': sha256!,
        if (versionCode != null) 'versionCode': versionCode!,
      };
}

/// Response listing all app bundles.
class BundlesListResponse {
  /// All app bundles.
  core.List<Bundle>? bundles;

  /// The kind of this response ("androidpublisher#bundlesListResponse").
  core.String? kind;

  BundlesListResponse({
    this.bundles,
    this.kind,
  });

  BundlesListResponse.fromJson(core.Map _json)
      : this(
          bundles: _json.containsKey('bundles')
              ? (_json['bundles'] as core.List)
                  .map((value) => Bundle.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bundles != null) 'bundles': bundles!,
        if (kind != null) 'kind': kind!,
      };
}

/// An entry of conversation between user and developer.
class Comment {
  /// A comment from a developer.
  DeveloperComment? developerComment;

  /// A comment from a user.
  UserComment? userComment;

  Comment({
    this.developerComment,
    this.userComment,
  });

  Comment.fromJson(core.Map _json)
      : this(
          developerComment: _json.containsKey('developerComment')
              ? DeveloperComment.fromJson(_json['developerComment']
                  as core.Map<core.String, core.dynamic>)
              : null,
          userComment: _json.containsKey('userComment')
              ? UserComment.fromJson(
                  _json['userComment'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (developerComment != null) 'developerComment': developerComment!,
        if (userComment != null) 'userComment': userComment!,
      };
}

/// Request message for ConvertRegionPrices.
class ConvertRegionPricesRequest {
  /// The intital price to convert other regions from.
  ///
  /// Tax exclusive.
  Money? price;

  ConvertRegionPricesRequest({
    this.price,
  });

  ConvertRegionPricesRequest.fromJson(core.Map _json)
      : this(
          price: _json.containsKey('price')
              ? Money.fromJson(
                  _json['price'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (price != null) 'price': price!,
      };
}

/// Response message for ConvertRegionPrices.
class ConvertRegionPricesResponse {
  /// Converted other regions prices in USD and EUR, to use for countries where
  /// Play doesn't support a country's local currency.
  ConvertedOtherRegionsPrice? convertedOtherRegionsPrice;

  /// Map from region code to converted region price.
  core.Map<core.String, ConvertedRegionPrice>? convertedRegionPrices;

  ConvertRegionPricesResponse({
    this.convertedOtherRegionsPrice,
    this.convertedRegionPrices,
  });

  ConvertRegionPricesResponse.fromJson(core.Map _json)
      : this(
          convertedOtherRegionsPrice:
              _json.containsKey('convertedOtherRegionsPrice')
                  ? ConvertedOtherRegionsPrice.fromJson(
                      _json['convertedOtherRegionsPrice']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          convertedRegionPrices: _json.containsKey('convertedRegionPrices')
              ? (_json['convertedRegionPrices']
                      as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    ConvertedRegionPrice.fromJson(
                        item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (convertedOtherRegionsPrice != null)
          'convertedOtherRegionsPrice': convertedOtherRegionsPrice!,
        if (convertedRegionPrices != null)
          'convertedRegionPrices': convertedRegionPrices!,
      };
}

/// Converted other regions prices.
class ConvertedOtherRegionsPrice {
  /// Price in EUR to use for the "Other regions" location exclusive of taxes.
  Money? eurPrice;

  /// Price in USD to use for the "Other regions" location exclusive of taxes.
  Money? usdPrice;

  ConvertedOtherRegionsPrice({
    this.eurPrice,
    this.usdPrice,
  });

  ConvertedOtherRegionsPrice.fromJson(core.Map _json)
      : this(
          eurPrice: _json.containsKey('eurPrice')
              ? Money.fromJson(
                  _json['eurPrice'] as core.Map<core.String, core.dynamic>)
              : null,
          usdPrice: _json.containsKey('usdPrice')
              ? Money.fromJson(
                  _json['usdPrice'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (eurPrice != null) 'eurPrice': eurPrice!,
        if (usdPrice != null) 'usdPrice': usdPrice!,
      };
}

/// A converted region price.
class ConvertedRegionPrice {
  /// The converted price tax inclusive.
  Money? price;

  /// The region code of the region.
  core.String? regionCode;

  /// The tax amount of the converted price.
  Money? taxAmount;

  ConvertedRegionPrice({
    this.price,
    this.regionCode,
    this.taxAmount,
  });

  ConvertedRegionPrice.fromJson(core.Map _json)
      : this(
          price: _json.containsKey('price')
              ? Money.fromJson(
                  _json['price'] as core.Map<core.String, core.dynamic>)
              : null,
          regionCode: _json.containsKey('regionCode')
              ? _json['regionCode'] as core.String
              : null,
          taxAmount: _json.containsKey('taxAmount')
              ? Money.fromJson(
                  _json['taxAmount'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (price != null) 'price': price!,
        if (regionCode != null) 'regionCode': regionCode!,
        if (taxAmount != null) 'taxAmount': taxAmount!,
      };
}

/// Country targeting specification.
class CountryTargeting {
  /// Countries to target, specified as two letter
  /// [CLDR codes](https://unicode.org/cldr/charts/latest/supplemental/territory_containment_un_m_49.html).
  core.List<core.String>? countries;

  /// Include "rest of world" as well as explicitly targeted countries.
  core.bool? includeRestOfWorld;

  CountryTargeting({
    this.countries,
    this.includeRestOfWorld,
  });

  CountryTargeting.fromJson(core.Map _json)
      : this(
          countries: _json.containsKey('countries')
              ? (_json['countries'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          includeRestOfWorld: _json.containsKey('includeRestOfWorld')
              ? _json['includeRestOfWorld'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (countries != null) 'countries': countries!,
        if (includeRestOfWorld != null)
          'includeRestOfWorld': includeRestOfWorld!,
      };
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

  DeobfuscationFile({
    this.symbolType,
  });

  DeobfuscationFile.fromJson(core.Map _json)
      : this(
          symbolType: _json.containsKey('symbolType')
              ? _json['symbolType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (symbolType != null) 'symbolType': symbolType!,
      };
}

/// Responses for the upload.
class DeobfuscationFilesUploadResponse {
  /// The uploaded Deobfuscation File configuration.
  DeobfuscationFile? deobfuscationFile;

  DeobfuscationFilesUploadResponse({
    this.deobfuscationFile,
  });

  DeobfuscationFilesUploadResponse.fromJson(core.Map _json)
      : this(
          deobfuscationFile: _json.containsKey('deobfuscationFile')
              ? DeobfuscationFile.fromJson(_json['deobfuscationFile']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (deobfuscationFile != null) 'deobfuscationFile': deobfuscationFile!,
      };
}

/// Developer entry from conversation between user and developer.
class DeveloperComment {
  /// The last time at which this comment was updated.
  Timestamp? lastModified;

  /// The content of the comment, i.e. reply body.
  core.String? text;

  DeveloperComment({
    this.lastModified,
    this.text,
  });

  DeveloperComment.fromJson(core.Map _json)
      : this(
          lastModified: _json.containsKey('lastModified')
              ? Timestamp.fromJson(
                  _json['lastModified'] as core.Map<core.String, core.dynamic>)
              : null,
          text: _json.containsKey('text') ? _json['text'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (lastModified != null) 'lastModified': lastModified!,
        if (text != null) 'text': text!,
      };
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

  DeviceMetadata.fromJson(core.Map _json)
      : this(
          cpuMake: _json.containsKey('cpuMake')
              ? _json['cpuMake'] as core.String
              : null,
          cpuModel: _json.containsKey('cpuModel')
              ? _json['cpuModel'] as core.String
              : null,
          deviceClass: _json.containsKey('deviceClass')
              ? _json['deviceClass'] as core.String
              : null,
          glEsVersion: _json.containsKey('glEsVersion')
              ? _json['glEsVersion'] as core.int
              : null,
          manufacturer: _json.containsKey('manufacturer')
              ? _json['manufacturer'] as core.String
              : null,
          nativePlatform: _json.containsKey('nativePlatform')
              ? _json['nativePlatform'] as core.String
              : null,
          productName: _json.containsKey('productName')
              ? _json['productName'] as core.String
              : null,
          ramMb: _json.containsKey('ramMb') ? _json['ramMb'] as core.int : null,
          screenDensityDpi: _json.containsKey('screenDensityDpi')
              ? _json['screenDensityDpi'] as core.int
              : null,
          screenHeightPx: _json.containsKey('screenHeightPx')
              ? _json['screenHeightPx'] as core.int
              : null,
          screenWidthPx: _json.containsKey('screenWidthPx')
              ? _json['screenWidthPx'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cpuMake != null) 'cpuMake': cpuMake!,
        if (cpuModel != null) 'cpuModel': cpuModel!,
        if (deviceClass != null) 'deviceClass': deviceClass!,
        if (glEsVersion != null) 'glEsVersion': glEsVersion!,
        if (manufacturer != null) 'manufacturer': manufacturer!,
        if (nativePlatform != null) 'nativePlatform': nativePlatform!,
        if (productName != null) 'productName': productName!,
        if (ramMb != null) 'ramMb': ramMb!,
        if (screenDensityDpi != null) 'screenDensityDpi': screenDensityDpi!,
        if (screenHeightPx != null) 'screenHeightPx': screenHeightPx!,
        if (screenWidthPx != null) 'screenWidthPx': screenWidthPx!,
      };
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

  DeviceSpec({
    this.screenDensity,
    this.supportedAbis,
    this.supportedLocales,
  });

  DeviceSpec.fromJson(core.Map _json)
      : this(
          screenDensity: _json.containsKey('screenDensity')
              ? _json['screenDensity'] as core.int
              : null,
          supportedAbis: _json.containsKey('supportedAbis')
              ? (_json['supportedAbis'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          supportedLocales: _json.containsKey('supportedLocales')
              ? (_json['supportedLocales'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (screenDensity != null) 'screenDensity': screenDensity!,
        if (supportedAbis != null) 'supportedAbis': supportedAbis!,
        if (supportedLocales != null) 'supportedLocales': supportedLocales!,
      };
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

  ExpansionFile({
    this.fileSize,
    this.referencesVersion,
  });

  ExpansionFile.fromJson(core.Map _json)
      : this(
          fileSize: _json.containsKey('fileSize')
              ? _json['fileSize'] as core.String
              : null,
          referencesVersion: _json.containsKey('referencesVersion')
              ? _json['referencesVersion'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fileSize != null) 'fileSize': fileSize!,
        if (referencesVersion != null) 'referencesVersion': referencesVersion!,
      };
}

/// Response for uploading an expansion file.
class ExpansionFilesUploadResponse {
  /// The uploaded expansion file configuration.
  ExpansionFile? expansionFile;

  ExpansionFilesUploadResponse({
    this.expansionFile,
  });

  ExpansionFilesUploadResponse.fromJson(core.Map _json)
      : this(
          expansionFile: _json.containsKey('expansionFile')
              ? ExpansionFile.fromJson(
                  _json['expansionFile'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (expansionFile != null) 'expansionFile': expansionFile!,
      };
}

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

  ExternallyHostedApk.fromJson(core.Map _json)
      : this(
          applicationLabel: _json.containsKey('applicationLabel')
              ? _json['applicationLabel'] as core.String
              : null,
          certificateBase64s: _json.containsKey('certificateBase64s')
              ? (_json['certificateBase64s'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          externallyHostedUrl: _json.containsKey('externallyHostedUrl')
              ? _json['externallyHostedUrl'] as core.String
              : null,
          fileSha1Base64: _json.containsKey('fileSha1Base64')
              ? _json['fileSha1Base64'] as core.String
              : null,
          fileSha256Base64: _json.containsKey('fileSha256Base64')
              ? _json['fileSha256Base64'] as core.String
              : null,
          fileSize: _json.containsKey('fileSize')
              ? _json['fileSize'] as core.String
              : null,
          iconBase64: _json.containsKey('iconBase64')
              ? _json['iconBase64'] as core.String
              : null,
          maximumSdk: _json.containsKey('maximumSdk')
              ? _json['maximumSdk'] as core.int
              : null,
          minimumSdk: _json.containsKey('minimumSdk')
              ? _json['minimumSdk'] as core.int
              : null,
          nativeCodes: _json.containsKey('nativeCodes')
              ? (_json['nativeCodes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          packageName: _json.containsKey('packageName')
              ? _json['packageName'] as core.String
              : null,
          usesFeatures: _json.containsKey('usesFeatures')
              ? (_json['usesFeatures'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          usesPermissions: _json.containsKey('usesPermissions')
              ? (_json['usesPermissions'] as core.List)
                  .map((value) => UsesPermission.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          versionCode: _json.containsKey('versionCode')
              ? _json['versionCode'] as core.int
              : null,
          versionName: _json.containsKey('versionName')
              ? _json['versionName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (applicationLabel != null) 'applicationLabel': applicationLabel!,
        if (certificateBase64s != null)
          'certificateBase64s': certificateBase64s!,
        if (externallyHostedUrl != null)
          'externallyHostedUrl': externallyHostedUrl!,
        if (fileSha1Base64 != null) 'fileSha1Base64': fileSha1Base64!,
        if (fileSha256Base64 != null) 'fileSha256Base64': fileSha256Base64!,
        if (fileSize != null) 'fileSize': fileSize!,
        if (iconBase64 != null) 'iconBase64': iconBase64!,
        if (maximumSdk != null) 'maximumSdk': maximumSdk!,
        if (minimumSdk != null) 'minimumSdk': minimumSdk!,
        if (nativeCodes != null) 'nativeCodes': nativeCodes!,
        if (packageName != null) 'packageName': packageName!,
        if (usesFeatures != null) 'usesFeatures': usesFeatures!,
        if (usesPermissions != null) 'usesPermissions': usesPermissions!,
        if (versionCode != null) 'versionCode': versionCode!,
        if (versionName != null) 'versionName': versionName!,
      };
}

/// An access grant resource.
class Grant {
  /// The permissions granted to the user for this app.
  core.List<core.String>? appLevelPermissions;

  /// Resource name for this grant, following the pattern
  /// "developers/{developer}/users/{email}/grants/{package_name}".
  ///
  /// Required.
  core.String? name;

  /// The package name of the app.
  ///
  /// Immutable.
  core.String? packageName;

  Grant({
    this.appLevelPermissions,
    this.name,
    this.packageName,
  });

  Grant.fromJson(core.Map _json)
      : this(
          appLevelPermissions: _json.containsKey('appLevelPermissions')
              ? (_json['appLevelPermissions'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          packageName: _json.containsKey('packageName')
              ? _json['packageName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (appLevelPermissions != null)
          'appLevelPermissions': appLevelPermissions!,
        if (name != null) 'name': name!,
        if (packageName != null) 'packageName': packageName!,
      };
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

  Image({
    this.id,
    this.sha1,
    this.sha256,
    this.url,
  });

  Image.fromJson(core.Map _json)
      : this(
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          sha1: _json.containsKey('sha1') ? _json['sha1'] as core.String : null,
          sha256: _json.containsKey('sha256')
              ? _json['sha256'] as core.String
              : null,
          url: _json.containsKey('url') ? _json['url'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
        if (sha1 != null) 'sha1': sha1!,
        if (sha256 != null) 'sha256': sha256!,
        if (url != null) 'url': url!,
      };
}

/// Response for deleting all images.
class ImagesDeleteAllResponse {
  /// The deleted images.
  core.List<Image>? deleted;

  ImagesDeleteAllResponse({
    this.deleted,
  });

  ImagesDeleteAllResponse.fromJson(core.Map _json)
      : this(
          deleted: _json.containsKey('deleted')
              ? (_json['deleted'] as core.List)
                  .map((value) => Image.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (deleted != null) 'deleted': deleted!,
      };
}

/// Response listing all images.
class ImagesListResponse {
  /// All listed Images.
  core.List<Image>? images;

  ImagesListResponse({
    this.images,
  });

  ImagesListResponse.fromJson(core.Map _json)
      : this(
          images: _json.containsKey('images')
              ? (_json['images'] as core.List)
                  .map((value) => Image.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (images != null) 'images': images!,
      };
}

/// Response for uploading an image.
class ImagesUploadResponse {
  /// The uploaded image.
  Image? image;

  ImagesUploadResponse({
    this.image,
  });

  ImagesUploadResponse.fromJson(core.Map _json)
      : this(
          image: _json.containsKey('image')
              ? Image.fromJson(
                  _json['image'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (image != null) 'image': image!,
      };
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
    this.packageName,
    this.prices,
    this.purchaseType,
    this.sku,
    this.status,
    this.subscriptionPeriod,
    this.trialPeriod,
  });

  InAppProduct.fromJson(core.Map _json)
      : this(
          defaultLanguage: _json.containsKey('defaultLanguage')
              ? _json['defaultLanguage'] as core.String
              : null,
          defaultPrice: _json.containsKey('defaultPrice')
              ? Price.fromJson(
                  _json['defaultPrice'] as core.Map<core.String, core.dynamic>)
              : null,
          gracePeriod: _json.containsKey('gracePeriod')
              ? _json['gracePeriod'] as core.String
              : null,
          listings: _json.containsKey('listings')
              ? (_json['listings'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    InAppProductListing.fromJson(
                        item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          packageName: _json.containsKey('packageName')
              ? _json['packageName'] as core.String
              : null,
          prices: _json.containsKey('prices')
              ? (_json['prices'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    Price.fromJson(item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          purchaseType: _json.containsKey('purchaseType')
              ? _json['purchaseType'] as core.String
              : null,
          sku: _json.containsKey('sku') ? _json['sku'] as core.String : null,
          status: _json.containsKey('status')
              ? _json['status'] as core.String
              : null,
          subscriptionPeriod: _json.containsKey('subscriptionPeriod')
              ? _json['subscriptionPeriod'] as core.String
              : null,
          trialPeriod: _json.containsKey('trialPeriod')
              ? _json['trialPeriod'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (defaultLanguage != null) 'defaultLanguage': defaultLanguage!,
        if (defaultPrice != null) 'defaultPrice': defaultPrice!,
        if (gracePeriod != null) 'gracePeriod': gracePeriod!,
        if (listings != null) 'listings': listings!,
        if (packageName != null) 'packageName': packageName!,
        if (prices != null) 'prices': prices!,
        if (purchaseType != null) 'purchaseType': purchaseType!,
        if (sku != null) 'sku': sku!,
        if (status != null) 'status': status!,
        if (subscriptionPeriod != null)
          'subscriptionPeriod': subscriptionPeriod!,
        if (trialPeriod != null) 'trialPeriod': trialPeriod!,
      };
}

/// Store listing of a single in-app product.
class InAppProductListing {
  /// Localized entitlement benefits for a subscription.
  core.List<core.String>? benefits;

  /// Description for the store listing.
  core.String? description;

  /// Title for the store listing.
  core.String? title;

  InAppProductListing({
    this.benefits,
    this.description,
    this.title,
  });

  InAppProductListing.fromJson(core.Map _json)
      : this(
          benefits: _json.containsKey('benefits')
              ? (_json['benefits'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          title:
              _json.containsKey('title') ? _json['title'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (benefits != null) 'benefits': benefits!,
        if (description != null) 'description': description!,
        if (title != null) 'title': title!,
      };
}

/// Response listing all in-app products.
class InappproductsListResponse {
  /// All in-app products.
  core.List<InAppProduct>? inappproduct;

  /// The kind of this response ("androidpublisher#inappproductsListResponse").
  core.String? kind;

  /// Deprecated and unset.
  PageInfo? pageInfo;

  /// Pagination token, to handle a number of products that is over one page.
  TokenPagination? tokenPagination;

  InappproductsListResponse({
    this.inappproduct,
    this.kind,
    this.pageInfo,
    this.tokenPagination,
  });

  InappproductsListResponse.fromJson(core.Map _json)
      : this(
          inappproduct: _json.containsKey('inappproduct')
              ? (_json['inappproduct'] as core.List)
                  .map((value) => InAppProduct.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          pageInfo: _json.containsKey('pageInfo')
              ? PageInfo.fromJson(
                  _json['pageInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          tokenPagination: _json.containsKey('tokenPagination')
              ? TokenPagination.fromJson(_json['tokenPagination']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (inappproduct != null) 'inappproduct': inappproduct!,
        if (kind != null) 'kind': kind!,
        if (pageInfo != null) 'pageInfo': pageInfo!,
        if (tokenPagination != null) 'tokenPagination': tokenPagination!,
      };
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

  InternalAppSharingArtifact.fromJson(core.Map _json)
      : this(
          certificateFingerprint: _json.containsKey('certificateFingerprint')
              ? _json['certificateFingerprint'] as core.String
              : null,
          downloadUrl: _json.containsKey('downloadUrl')
              ? _json['downloadUrl'] as core.String
              : null,
          sha256: _json.containsKey('sha256')
              ? _json['sha256'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (certificateFingerprint != null)
          'certificateFingerprint': certificateFingerprint!,
        if (downloadUrl != null) 'downloadUrl': downloadUrl!,
        if (sha256 != null) 'sha256': sha256!,
      };
}

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

  IntroductoryPriceInfo.fromJson(core.Map _json)
      : this(
          introductoryPriceAmountMicros:
              _json.containsKey('introductoryPriceAmountMicros')
                  ? _json['introductoryPriceAmountMicros'] as core.String
                  : null,
          introductoryPriceCurrencyCode:
              _json.containsKey('introductoryPriceCurrencyCode')
                  ? _json['introductoryPriceCurrencyCode'] as core.String
                  : null,
          introductoryPriceCycles: _json.containsKey('introductoryPriceCycles')
              ? _json['introductoryPriceCycles'] as core.int
              : null,
          introductoryPricePeriod: _json.containsKey('introductoryPricePeriod')
              ? _json['introductoryPricePeriod'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (introductoryPriceAmountMicros != null)
          'introductoryPriceAmountMicros': introductoryPriceAmountMicros!,
        if (introductoryPriceCurrencyCode != null)
          'introductoryPriceCurrencyCode': introductoryPriceCurrencyCode!,
        if (introductoryPriceCycles != null)
          'introductoryPriceCycles': introductoryPriceCycles!,
        if (introductoryPricePeriod != null)
          'introductoryPricePeriod': introductoryPricePeriod!,
      };
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

  ListUsersResponse({
    this.nextPageToken,
    this.users,
  });

  ListUsersResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          users: _json.containsKey('users')
              ? (_json['users'] as core.List)
                  .map((value) => User.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (users != null) 'users': users!,
      };
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

  Listing.fromJson(core.Map _json)
      : this(
          fullDescription: _json.containsKey('fullDescription')
              ? _json['fullDescription'] as core.String
              : null,
          language: _json.containsKey('language')
              ? _json['language'] as core.String
              : null,
          shortDescription: _json.containsKey('shortDescription')
              ? _json['shortDescription'] as core.String
              : null,
          title:
              _json.containsKey('title') ? _json['title'] as core.String : null,
          video:
              _json.containsKey('video') ? _json['video'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fullDescription != null) 'fullDescription': fullDescription!,
        if (language != null) 'language': language!,
        if (shortDescription != null) 'shortDescription': shortDescription!,
        if (title != null) 'title': title!,
        if (video != null) 'video': video!,
      };
}

/// Response listing all localized listings.
class ListingsListResponse {
  /// The kind of this response ("androidpublisher#listingsListResponse").
  core.String? kind;

  /// All localized listings.
  core.List<Listing>? listings;

  ListingsListResponse({
    this.kind,
    this.listings,
  });

  ListingsListResponse.fromJson(core.Map _json)
      : this(
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          listings: _json.containsKey('listings')
              ? (_json['listings'] as core.List)
                  .map((value) => Listing.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (listings != null) 'listings': listings!,
      };
}

/// Release notes specification, i.e. language and text.
class LocalizedText {
  /// Language localization code (a BCP-47 language tag; for example, "de-AT"
  /// for Austrian German).
  core.String? language;

  /// The text in the given language.
  core.String? text;

  LocalizedText({
    this.language,
    this.text,
  });

  LocalizedText.fromJson(core.Map _json)
      : this(
          language: _json.containsKey('language')
              ? _json['language'] as core.String
              : null,
          text: _json.containsKey('text') ? _json['text'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (language != null) 'language': language!,
        if (text != null) 'text': text!,
      };
}

/// Represents an amount of money with its currency type.
typedef Money = $Money;

/// Information about the current page.
///
/// List operations that supports paging return only one "page" of results. This
/// protocol buffer message describes the page that has been returned.
typedef PageInfo = $PageInfo;

/// Definition of a price, i.e. currency and units.
class Price {
  /// 3 letter Currency code, as defined by ISO 4217.
  ///
  /// See java/com/google/common/money/CurrencyCode.java
  core.String? currency;

  /// Price in 1/million of the currency base unit, represented as a string.
  core.String? priceMicros;

  Price({
    this.currency,
    this.priceMicros,
  });

  Price.fromJson(core.Map _json)
      : this(
          currency: _json.containsKey('currency')
              ? _json['currency'] as core.String
              : null,
          priceMicros: _json.containsKey('priceMicros')
              ? _json['priceMicros'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (currency != null) 'currency': currency!,
        if (priceMicros != null) 'priceMicros': priceMicros!,
      };
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
  core.String? productId;

  /// The purchase state of the order.
  ///
  /// Possible values are: 0. Purchased 1. Canceled 2. Pending
  core.int? purchaseState;

  /// The time the product was purchased, in milliseconds since the epoch (Jan
  /// 1, 1970).
  core.String? purchaseTimeMillis;

  /// The purchase token generated to identify this purchase.
  core.String? purchaseToken;

  /// The type of purchase of the inapp product.
  ///
  /// This field is only set if this purchase was not made using the standard
  /// in-app billing flow. Possible values are: 0. Test (i.e. purchased from a
  /// license testing account) 1. Promo (i.e. purchased using a promo code) 2.
  /// Rewarded (i.e. from watching a video ad instead of paying)
  core.int? purchaseType;

  /// The quantity associated with the purchase of the inapp product.
  core.int? quantity;

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
    this.regionCode,
  });

  ProductPurchase.fromJson(core.Map _json)
      : this(
          acknowledgementState: _json.containsKey('acknowledgementState')
              ? _json['acknowledgementState'] as core.int
              : null,
          consumptionState: _json.containsKey('consumptionState')
              ? _json['consumptionState'] as core.int
              : null,
          developerPayload: _json.containsKey('developerPayload')
              ? _json['developerPayload'] as core.String
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          obfuscatedExternalAccountId:
              _json.containsKey('obfuscatedExternalAccountId')
                  ? _json['obfuscatedExternalAccountId'] as core.String
                  : null,
          obfuscatedExternalProfileId:
              _json.containsKey('obfuscatedExternalProfileId')
                  ? _json['obfuscatedExternalProfileId'] as core.String
                  : null,
          orderId: _json.containsKey('orderId')
              ? _json['orderId'] as core.String
              : null,
          productId: _json.containsKey('productId')
              ? _json['productId'] as core.String
              : null,
          purchaseState: _json.containsKey('purchaseState')
              ? _json['purchaseState'] as core.int
              : null,
          purchaseTimeMillis: _json.containsKey('purchaseTimeMillis')
              ? _json['purchaseTimeMillis'] as core.String
              : null,
          purchaseToken: _json.containsKey('purchaseToken')
              ? _json['purchaseToken'] as core.String
              : null,
          purchaseType: _json.containsKey('purchaseType')
              ? _json['purchaseType'] as core.int
              : null,
          quantity: _json.containsKey('quantity')
              ? _json['quantity'] as core.int
              : null,
          regionCode: _json.containsKey('regionCode')
              ? _json['regionCode'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (acknowledgementState != null)
          'acknowledgementState': acknowledgementState!,
        if (consumptionState != null) 'consumptionState': consumptionState!,
        if (developerPayload != null) 'developerPayload': developerPayload!,
        if (kind != null) 'kind': kind!,
        if (obfuscatedExternalAccountId != null)
          'obfuscatedExternalAccountId': obfuscatedExternalAccountId!,
        if (obfuscatedExternalProfileId != null)
          'obfuscatedExternalProfileId': obfuscatedExternalProfileId!,
        if (orderId != null) 'orderId': orderId!,
        if (productId != null) 'productId': productId!,
        if (purchaseState != null) 'purchaseState': purchaseState!,
        if (purchaseTimeMillis != null)
          'purchaseTimeMillis': purchaseTimeMillis!,
        if (purchaseToken != null) 'purchaseToken': purchaseToken!,
        if (purchaseType != null) 'purchaseType': purchaseType!,
        if (quantity != null) 'quantity': quantity!,
        if (regionCode != null) 'regionCode': regionCode!,
      };
}

/// Request for the product.purchases.acknowledge API.
typedef ProductPurchasesAcknowledgeRequest = $PurchasesAcknowledgeRequest;

/// An Android app review.
class Review {
  /// The name of the user who wrote the review.
  core.String? authorName;

  /// A repeated field containing comments for the review.
  core.List<Comment>? comments;

  /// Unique identifier for this review.
  core.String? reviewId;

  Review({
    this.authorName,
    this.comments,
    this.reviewId,
  });

  Review.fromJson(core.Map _json)
      : this(
          authorName: _json.containsKey('authorName')
              ? _json['authorName'] as core.String
              : null,
          comments: _json.containsKey('comments')
              ? (_json['comments'] as core.List)
                  .map((value) => Comment.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          reviewId: _json.containsKey('reviewId')
              ? _json['reviewId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (authorName != null) 'authorName': authorName!,
        if (comments != null) 'comments': comments!,
        if (reviewId != null) 'reviewId': reviewId!,
      };
}

/// The result of replying/updating a reply to review.
class ReviewReplyResult {
  /// The time at which the reply took effect.
  Timestamp? lastEdited;

  /// The reply text that was applied.
  core.String? replyText;

  ReviewReplyResult({
    this.lastEdited,
    this.replyText,
  });

  ReviewReplyResult.fromJson(core.Map _json)
      : this(
          lastEdited: _json.containsKey('lastEdited')
              ? Timestamp.fromJson(
                  _json['lastEdited'] as core.Map<core.String, core.dynamic>)
              : null,
          replyText: _json.containsKey('replyText')
              ? _json['replyText'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (lastEdited != null) 'lastEdited': lastEdited!,
        if (replyText != null) 'replyText': replyText!,
      };
}

/// Response listing reviews.
class ReviewsListResponse {
  /// Information about the current page.
  PageInfo? pageInfo;

  /// List of reviews.
  core.List<Review>? reviews;

  /// Pagination token, to handle a number of products that is over one page.
  TokenPagination? tokenPagination;

  ReviewsListResponse({
    this.pageInfo,
    this.reviews,
    this.tokenPagination,
  });

  ReviewsListResponse.fromJson(core.Map _json)
      : this(
          pageInfo: _json.containsKey('pageInfo')
              ? PageInfo.fromJson(
                  _json['pageInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          reviews: _json.containsKey('reviews')
              ? (_json['reviews'] as core.List)
                  .map((value) => Review.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          tokenPagination: _json.containsKey('tokenPagination')
              ? TokenPagination.fromJson(_json['tokenPagination']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (pageInfo != null) 'pageInfo': pageInfo!,
        if (reviews != null) 'reviews': reviews!,
        if (tokenPagination != null) 'tokenPagination': tokenPagination!,
      };
}

/// Request to reply to review or update existing reply.
class ReviewsReplyRequest {
  /// The text to set as the reply.
  ///
  /// Replies of more than approximately 350 characters will be rejected. HTML
  /// tags will be stripped.
  core.String? replyText;

  ReviewsReplyRequest({
    this.replyText,
  });

  ReviewsReplyRequest.fromJson(core.Map _json)
      : this(
          replyText: _json.containsKey('replyText')
              ? _json['replyText'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (replyText != null) 'replyText': replyText!,
      };
}

/// Response on status of replying to a review.
class ReviewsReplyResponse {
  /// The result of replying/updating a reply to review.
  ReviewReplyResult? result;

  ReviewsReplyResponse({
    this.result,
  });

  ReviewsReplyResponse.fromJson(core.Map _json)
      : this(
          result: _json.containsKey('result')
              ? ReviewReplyResult.fromJson(
                  _json['result'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (result != null) 'result': result!,
      };
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

  SubscriptionCancelSurveyResult.fromJson(core.Map _json)
      : this(
          cancelSurveyReason: _json.containsKey('cancelSurveyReason')
              ? _json['cancelSurveyReason'] as core.int
              : null,
          userInputCancelReason: _json.containsKey('userInputCancelReason')
              ? _json['userInputCancelReason'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cancelSurveyReason != null)
          'cancelSurveyReason': cancelSurveyReason!,
        if (userInputCancelReason != null)
          'userInputCancelReason': userInputCancelReason!,
      };
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

  SubscriptionDeferralInfo.fromJson(core.Map _json)
      : this(
          desiredExpiryTimeMillis: _json.containsKey('desiredExpiryTimeMillis')
              ? _json['desiredExpiryTimeMillis'] as core.String
              : null,
          expectedExpiryTimeMillis:
              _json.containsKey('expectedExpiryTimeMillis')
                  ? _json['expectedExpiryTimeMillis'] as core.String
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (desiredExpiryTimeMillis != null)
          'desiredExpiryTimeMillis': desiredExpiryTimeMillis!,
        if (expectedExpiryTimeMillis != null)
          'expectedExpiryTimeMillis': expectedExpiryTimeMillis!,
      };
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

  SubscriptionPriceChange({
    this.newPrice,
    this.state,
  });

  SubscriptionPriceChange.fromJson(core.Map _json)
      : this(
          newPrice: _json.containsKey('newPrice')
              ? Price.fromJson(
                  _json['newPrice'] as core.Map<core.String, core.dynamic>)
              : null,
          state: _json.containsKey('state') ? _json['state'] as core.int : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (newPrice != null) 'newPrice': newPrice!,
        if (state != null) 'state': state!,
      };
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

  SubscriptionPurchase.fromJson(core.Map _json)
      : this(
          acknowledgementState: _json.containsKey('acknowledgementState')
              ? _json['acknowledgementState'] as core.int
              : null,
          autoRenewing: _json.containsKey('autoRenewing')
              ? _json['autoRenewing'] as core.bool
              : null,
          autoResumeTimeMillis: _json.containsKey('autoResumeTimeMillis')
              ? _json['autoResumeTimeMillis'] as core.String
              : null,
          cancelReason: _json.containsKey('cancelReason')
              ? _json['cancelReason'] as core.int
              : null,
          cancelSurveyResult: _json.containsKey('cancelSurveyResult')
              ? SubscriptionCancelSurveyResult.fromJson(
                  _json['cancelSurveyResult']
                      as core.Map<core.String, core.dynamic>)
              : null,
          countryCode: _json.containsKey('countryCode')
              ? _json['countryCode'] as core.String
              : null,
          developerPayload: _json.containsKey('developerPayload')
              ? _json['developerPayload'] as core.String
              : null,
          emailAddress: _json.containsKey('emailAddress')
              ? _json['emailAddress'] as core.String
              : null,
          expiryTimeMillis: _json.containsKey('expiryTimeMillis')
              ? _json['expiryTimeMillis'] as core.String
              : null,
          externalAccountId: _json.containsKey('externalAccountId')
              ? _json['externalAccountId'] as core.String
              : null,
          familyName: _json.containsKey('familyName')
              ? _json['familyName'] as core.String
              : null,
          givenName: _json.containsKey('givenName')
              ? _json['givenName'] as core.String
              : null,
          introductoryPriceInfo: _json.containsKey('introductoryPriceInfo')
              ? IntroductoryPriceInfo.fromJson(_json['introductoryPriceInfo']
                  as core.Map<core.String, core.dynamic>)
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          linkedPurchaseToken: _json.containsKey('linkedPurchaseToken')
              ? _json['linkedPurchaseToken'] as core.String
              : null,
          obfuscatedExternalAccountId:
              _json.containsKey('obfuscatedExternalAccountId')
                  ? _json['obfuscatedExternalAccountId'] as core.String
                  : null,
          obfuscatedExternalProfileId:
              _json.containsKey('obfuscatedExternalProfileId')
                  ? _json['obfuscatedExternalProfileId'] as core.String
                  : null,
          orderId: _json.containsKey('orderId')
              ? _json['orderId'] as core.String
              : null,
          paymentState: _json.containsKey('paymentState')
              ? _json['paymentState'] as core.int
              : null,
          priceAmountMicros: _json.containsKey('priceAmountMicros')
              ? _json['priceAmountMicros'] as core.String
              : null,
          priceChange: _json.containsKey('priceChange')
              ? SubscriptionPriceChange.fromJson(
                  _json['priceChange'] as core.Map<core.String, core.dynamic>)
              : null,
          priceCurrencyCode: _json.containsKey('priceCurrencyCode')
              ? _json['priceCurrencyCode'] as core.String
              : null,
          profileId: _json.containsKey('profileId')
              ? _json['profileId'] as core.String
              : null,
          profileName: _json.containsKey('profileName')
              ? _json['profileName'] as core.String
              : null,
          promotionCode: _json.containsKey('promotionCode')
              ? _json['promotionCode'] as core.String
              : null,
          promotionType: _json.containsKey('promotionType')
              ? _json['promotionType'] as core.int
              : null,
          purchaseType: _json.containsKey('purchaseType')
              ? _json['purchaseType'] as core.int
              : null,
          startTimeMillis: _json.containsKey('startTimeMillis')
              ? _json['startTimeMillis'] as core.String
              : null,
          userCancellationTimeMillis:
              _json.containsKey('userCancellationTimeMillis')
                  ? _json['userCancellationTimeMillis'] as core.String
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (acknowledgementState != null)
          'acknowledgementState': acknowledgementState!,
        if (autoRenewing != null) 'autoRenewing': autoRenewing!,
        if (autoResumeTimeMillis != null)
          'autoResumeTimeMillis': autoResumeTimeMillis!,
        if (cancelReason != null) 'cancelReason': cancelReason!,
        if (cancelSurveyResult != null)
          'cancelSurveyResult': cancelSurveyResult!,
        if (countryCode != null) 'countryCode': countryCode!,
        if (developerPayload != null) 'developerPayload': developerPayload!,
        if (emailAddress != null) 'emailAddress': emailAddress!,
        if (expiryTimeMillis != null) 'expiryTimeMillis': expiryTimeMillis!,
        if (externalAccountId != null) 'externalAccountId': externalAccountId!,
        if (familyName != null) 'familyName': familyName!,
        if (givenName != null) 'givenName': givenName!,
        if (introductoryPriceInfo != null)
          'introductoryPriceInfo': introductoryPriceInfo!,
        if (kind != null) 'kind': kind!,
        if (linkedPurchaseToken != null)
          'linkedPurchaseToken': linkedPurchaseToken!,
        if (obfuscatedExternalAccountId != null)
          'obfuscatedExternalAccountId': obfuscatedExternalAccountId!,
        if (obfuscatedExternalProfileId != null)
          'obfuscatedExternalProfileId': obfuscatedExternalProfileId!,
        if (orderId != null) 'orderId': orderId!,
        if (paymentState != null) 'paymentState': paymentState!,
        if (priceAmountMicros != null) 'priceAmountMicros': priceAmountMicros!,
        if (priceChange != null) 'priceChange': priceChange!,
        if (priceCurrencyCode != null) 'priceCurrencyCode': priceCurrencyCode!,
        if (profileId != null) 'profileId': profileId!,
        if (profileName != null) 'profileName': profileName!,
        if (promotionCode != null) 'promotionCode': promotionCode!,
        if (promotionType != null) 'promotionType': promotionType!,
        if (purchaseType != null) 'purchaseType': purchaseType!,
        if (startTimeMillis != null) 'startTimeMillis': startTimeMillis!,
        if (userCancellationTimeMillis != null)
          'userCancellationTimeMillis': userCancellationTimeMillis!,
      };
}

/// Request for the purchases.subscriptions.acknowledge API.
typedef SubscriptionPurchasesAcknowledgeRequest = $PurchasesAcknowledgeRequest;

/// Request for the purchases.subscriptions.defer API.
class SubscriptionPurchasesDeferRequest {
  /// The information about the new desired expiry time for the subscription.
  SubscriptionDeferralInfo? deferralInfo;

  SubscriptionPurchasesDeferRequest({
    this.deferralInfo,
  });

  SubscriptionPurchasesDeferRequest.fromJson(core.Map _json)
      : this(
          deferralInfo: _json.containsKey('deferralInfo')
              ? SubscriptionDeferralInfo.fromJson(
                  _json['deferralInfo'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (deferralInfo != null) 'deferralInfo': deferralInfo!,
      };
}

/// Response for the purchases.subscriptions.defer API.
class SubscriptionPurchasesDeferResponse {
  /// The new expiry time for the subscription in milliseconds since the Epoch.
  core.String? newExpiryTimeMillis;

  SubscriptionPurchasesDeferResponse({
    this.newExpiryTimeMillis,
  });

  SubscriptionPurchasesDeferResponse.fromJson(core.Map _json)
      : this(
          newExpiryTimeMillis: _json.containsKey('newExpiryTimeMillis')
              ? _json['newExpiryTimeMillis'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (newExpiryTimeMillis != null)
          'newExpiryTimeMillis': newExpiryTimeMillis!,
      };
}

/// Response to list previously created system APK variants.
class SystemApksListResponse {
  /// All system APK variants created.
  core.List<Variant>? variants;

  SystemApksListResponse({
    this.variants,
  });

  SystemApksListResponse.fromJson(core.Map _json)
      : this(
          variants: _json.containsKey('variants')
              ? (_json['variants'] as core.List)
                  .map((value) => Variant.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (variants != null) 'variants': variants!,
      };
}

/// The testers of an app.
///
/// The resource for TestersService.
class Testers {
  /// All testing Google Groups, as email addresses.
  core.List<core.String>? googleGroups;

  Testers({
    this.googleGroups,
  });

  Testers.fromJson(core.Map _json)
      : this(
          googleGroups: _json.containsKey('googleGroups')
              ? (_json['googleGroups'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (googleGroups != null) 'googleGroups': googleGroups!,
      };
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

  Timestamp({
    this.nanos,
    this.seconds,
  });

  Timestamp.fromJson(core.Map _json)
      : this(
          nanos: _json.containsKey('nanos') ? _json['nanos'] as core.int : null,
          seconds: _json.containsKey('seconds')
              ? _json['seconds'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nanos != null) 'nanos': nanos!,
        if (seconds != null) 'seconds': seconds!,
      };
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
  core.String? track;

  Track({
    this.releases,
    this.track,
  });

  Track.fromJson(core.Map _json)
      : this(
          releases: _json.containsKey('releases')
              ? (_json['releases'] as core.List)
                  .map((value) => TrackRelease.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          track:
              _json.containsKey('track') ? _json['track'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (releases != null) 'releases': releases!,
        if (track != null) 'track': track!,
      };
}

/// A release within a track.
class TrackRelease {
  /// Restricts a release to a specific set of countries.
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
  /// 0 < fraction < 1. Can only be set when status is "inProgress" or "halted".
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

  TrackRelease.fromJson(core.Map _json)
      : this(
          countryTargeting: _json.containsKey('countryTargeting')
              ? CountryTargeting.fromJson(_json['countryTargeting']
                  as core.Map<core.String, core.dynamic>)
              : null,
          inAppUpdatePriority: _json.containsKey('inAppUpdatePriority')
              ? _json['inAppUpdatePriority'] as core.int
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          releaseNotes: _json.containsKey('releaseNotes')
              ? (_json['releaseNotes'] as core.List)
                  .map((value) => LocalizedText.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          status: _json.containsKey('status')
              ? _json['status'] as core.String
              : null,
          userFraction: _json.containsKey('userFraction')
              ? (_json['userFraction'] as core.num).toDouble()
              : null,
          versionCodes: _json.containsKey('versionCodes')
              ? (_json['versionCodes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (countryTargeting != null) 'countryTargeting': countryTargeting!,
        if (inAppUpdatePriority != null)
          'inAppUpdatePriority': inAppUpdatePriority!,
        if (name != null) 'name': name!,
        if (releaseNotes != null) 'releaseNotes': releaseNotes!,
        if (status != null) 'status': status!,
        if (userFraction != null) 'userFraction': userFraction!,
        if (versionCodes != null) 'versionCodes': versionCodes!,
      };
}

/// Response listing all tracks.
class TracksListResponse {
  /// The kind of this response ("androidpublisher#tracksListResponse").
  core.String? kind;

  /// All tracks.
  core.List<Track>? tracks;

  TracksListResponse({
    this.kind,
    this.tracks,
  });

  TracksListResponse.fromJson(core.Map _json)
      : this(
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          tracks: _json.containsKey('tracks')
              ? (_json['tracks'] as core.List)
                  .map((value) => Track.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (tracks != null) 'tracks': tracks!,
      };
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

  User.fromJson(core.Map _json)
      : this(
          accessState: _json.containsKey('accessState')
              ? _json['accessState'] as core.String
              : null,
          developerAccountPermissions:
              _json.containsKey('developerAccountPermissions')
                  ? (_json['developerAccountPermissions'] as core.List)
                      .map((value) => value as core.String)
                      .toList()
                  : null,
          email:
              _json.containsKey('email') ? _json['email'] as core.String : null,
          expirationTime: _json.containsKey('expirationTime')
              ? _json['expirationTime'] as core.String
              : null,
          grants: _json.containsKey('grants')
              ? (_json['grants'] as core.List)
                  .map((value) => Grant.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          partial: _json.containsKey('partial')
              ? _json['partial'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accessState != null) 'accessState': accessState!,
        if (developerAccountPermissions != null)
          'developerAccountPermissions': developerAccountPermissions!,
        if (email != null) 'email': email!,
        if (expirationTime != null) 'expirationTime': expirationTime!,
        if (grants != null) 'grants': grants!,
        if (name != null) 'name': name!,
        if (partial != null) 'partial': partial!,
      };
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

  UserComment.fromJson(core.Map _json)
      : this(
          androidOsVersion: _json.containsKey('androidOsVersion')
              ? _json['androidOsVersion'] as core.int
              : null,
          appVersionCode: _json.containsKey('appVersionCode')
              ? _json['appVersionCode'] as core.int
              : null,
          appVersionName: _json.containsKey('appVersionName')
              ? _json['appVersionName'] as core.String
              : null,
          device: _json.containsKey('device')
              ? _json['device'] as core.String
              : null,
          deviceMetadata: _json.containsKey('deviceMetadata')
              ? DeviceMetadata.fromJson(_json['deviceMetadata']
                  as core.Map<core.String, core.dynamic>)
              : null,
          lastModified: _json.containsKey('lastModified')
              ? Timestamp.fromJson(
                  _json['lastModified'] as core.Map<core.String, core.dynamic>)
              : null,
          originalText: _json.containsKey('originalText')
              ? _json['originalText'] as core.String
              : null,
          reviewerLanguage: _json.containsKey('reviewerLanguage')
              ? _json['reviewerLanguage'] as core.String
              : null,
          starRating: _json.containsKey('starRating')
              ? _json['starRating'] as core.int
              : null,
          text: _json.containsKey('text') ? _json['text'] as core.String : null,
          thumbsDownCount: _json.containsKey('thumbsDownCount')
              ? _json['thumbsDownCount'] as core.int
              : null,
          thumbsUpCount: _json.containsKey('thumbsUpCount')
              ? _json['thumbsUpCount'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (androidOsVersion != null) 'androidOsVersion': androidOsVersion!,
        if (appVersionCode != null) 'appVersionCode': appVersionCode!,
        if (appVersionName != null) 'appVersionName': appVersionName!,
        if (device != null) 'device': device!,
        if (deviceMetadata != null) 'deviceMetadata': deviceMetadata!,
        if (lastModified != null) 'lastModified': lastModified!,
        if (originalText != null) 'originalText': originalText!,
        if (reviewerLanguage != null) 'reviewerLanguage': reviewerLanguage!,
        if (starRating != null) 'starRating': starRating!,
        if (text != null) 'text': text!,
        if (thumbsDownCount != null) 'thumbsDownCount': thumbsDownCount!,
        if (thumbsUpCount != null) 'thumbsUpCount': thumbsUpCount!,
      };
}

/// A permission used by this APK.
class UsesPermission {
  /// Optionally, the maximum SDK version for which the permission is required.
  core.int? maxSdkVersion;

  /// The name of the permission requested.
  core.String? name;

  UsesPermission({
    this.maxSdkVersion,
    this.name,
  });

  UsesPermission.fromJson(core.Map _json)
      : this(
          maxSdkVersion: _json.containsKey('maxSdkVersion')
              ? _json['maxSdkVersion'] as core.int
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (maxSdkVersion != null) 'maxSdkVersion': maxSdkVersion!,
        if (name != null) 'name': name!,
      };
}

/// APK that is suitable for inclusion in a system image.
///
/// The resource of SystemApksService.
class Variant {
  /// The device spec used to generate the APK.
  DeviceSpec? deviceSpec;

  /// The ID of a previously created system APK variant.
  ///
  /// Output only.
  core.int? variantId;

  Variant({
    this.deviceSpec,
    this.variantId,
  });

  Variant.fromJson(core.Map _json)
      : this(
          deviceSpec: _json.containsKey('deviceSpec')
              ? DeviceSpec.fromJson(
                  _json['deviceSpec'] as core.Map<core.String, core.dynamic>)
              : null,
          variantId: _json.containsKey('variantId')
              ? _json['variantId'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (deviceSpec != null) 'deviceSpec': deviceSpec!,
        if (variantId != null) 'variantId': variantId!,
      };
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

  /// The reason why the purchase was voided, possible values are: 0.
  ///
  /// Other 1. Remorse 2. Not_received 3. Defective 4. Accidental_purchase 5.
  /// Fraud 6. Friendly_fraud 7. Chargeback
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
    this.voidedReason,
    this.voidedSource,
    this.voidedTimeMillis,
  });

  VoidedPurchase.fromJson(core.Map _json)
      : this(
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          orderId: _json.containsKey('orderId')
              ? _json['orderId'] as core.String
              : null,
          purchaseTimeMillis: _json.containsKey('purchaseTimeMillis')
              ? _json['purchaseTimeMillis'] as core.String
              : null,
          purchaseToken: _json.containsKey('purchaseToken')
              ? _json['purchaseToken'] as core.String
              : null,
          voidedReason: _json.containsKey('voidedReason')
              ? _json['voidedReason'] as core.int
              : null,
          voidedSource: _json.containsKey('voidedSource')
              ? _json['voidedSource'] as core.int
              : null,
          voidedTimeMillis: _json.containsKey('voidedTimeMillis')
              ? _json['voidedTimeMillis'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (orderId != null) 'orderId': orderId!,
        if (purchaseTimeMillis != null)
          'purchaseTimeMillis': purchaseTimeMillis!,
        if (purchaseToken != null) 'purchaseToken': purchaseToken!,
        if (voidedReason != null) 'voidedReason': voidedReason!,
        if (voidedSource != null) 'voidedSource': voidedSource!,
        if (voidedTimeMillis != null) 'voidedTimeMillis': voidedTimeMillis!,
      };
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

  VoidedPurchasesListResponse.fromJson(core.Map _json)
      : this(
          pageInfo: _json.containsKey('pageInfo')
              ? PageInfo.fromJson(
                  _json['pageInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          tokenPagination: _json.containsKey('tokenPagination')
              ? TokenPagination.fromJson(_json['tokenPagination']
                  as core.Map<core.String, core.dynamic>)
              : null,
          voidedPurchases: _json.containsKey('voidedPurchases')
              ? (_json['voidedPurchases'] as core.List)
                  .map((value) => VoidedPurchase.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (pageInfo != null) 'pageInfo': pageInfo!,
        if (tokenPagination != null) 'tokenPagination': tokenPagination!,
        if (voidedPurchases != null) 'voidedPurchases': voidedPurchases!,
      };
}
