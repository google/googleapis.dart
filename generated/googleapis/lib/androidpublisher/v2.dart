library googleapis.androidpublisher.v2;

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

/** Lets Android application developers access their Google Play accounts. */
class AndroidpublisherApi {
  /** View and manage your Google Play Android Developer account */
  static const AndroidpublisherScope = "https://www.googleapis.com/auth/androidpublisher";


  final common_internal.ApiRequester _requester;

  EditsResourceApi get edits => new EditsResourceApi(_requester);
  InappproductsResourceApi get inappproducts => new InappproductsResourceApi(_requester);
  PurchasesResourceApi get purchases => new PurchasesResourceApi(_requester);

  AndroidpublisherApi(http.Client client) : 
      _requester = new common_internal.ApiRequester(client, "https://www.googleapis.com/", "androidpublisher/v2/applications/");
}


/** Not documented yet. */
class EditsResourceApi {
  final common_internal.ApiRequester _requester;

  EditsApklistingsResourceApi get apklistings => new EditsApklistingsResourceApi(_requester);
  EditsApksResourceApi get apks => new EditsApksResourceApi(_requester);
  EditsDetailsResourceApi get details => new EditsDetailsResourceApi(_requester);
  EditsExpansionfilesResourceApi get expansionfiles => new EditsExpansionfilesResourceApi(_requester);
  EditsImagesResourceApi get images => new EditsImagesResourceApi(_requester);
  EditsListingsResourceApi get listings => new EditsListingsResourceApi(_requester);
  EditsTestersResourceApi get testers => new EditsTestersResourceApi(_requester);
  EditsTracksResourceApi get tracks => new EditsTracksResourceApi(_requester);

  EditsResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Commits/applies the changes made in this edit back to the app.
   *
   * Request parameters:
   *
   * [packageName] - Unique identifier for the Android app that is being
   * updated; for example, "com.spiffygame".
   *
   * [editId] - Unique identifier for this edit.
   *
   * Completes with a [AppEdit].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<AppEdit> commit(core.String packageName, core.String editId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (packageName == null) {
      throw new core.ArgumentError("Parameter packageName is required.");
    }
    if (editId == null) {
      throw new core.ArgumentError("Parameter editId is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$packageName') + '/edits/' + common_internal.Escaper.ecapeVariable('$editId') + ':commit';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new AppEdit.fromJson(data));
  }

  /**
   * Deletes an edit for an app. Creating a new edit will automatically delete
   * any of your previous edits so this method need only be called if you want
   * to preemptively abandon an edit.
   *
   * Request parameters:
   *
   * [packageName] - Unique identifier for the Android app that is being
   * updated; for example, "com.spiffygame".
   *
   * [editId] - Unique identifier for this edit.
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future delete(core.String packageName, core.String editId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (packageName == null) {
      throw new core.ArgumentError("Parameter packageName is required.");
    }
    if (editId == null) {
      throw new core.ArgumentError("Parameter editId is required.");
    }

    _downloadOptions = null;

    _url = common_internal.Escaper.ecapeVariable('$packageName') + '/edits/' + common_internal.Escaper.ecapeVariable('$editId');

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
   * Returns information about the edit specified. Calls will fail if the edit
   * is no long active (e.g. has been deleted, superseded or expired).
   *
   * Request parameters:
   *
   * [packageName] - Unique identifier for the Android app that is being
   * updated; for example, "com.spiffygame".
   *
   * [editId] - Unique identifier for this edit.
   *
   * Completes with a [AppEdit].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<AppEdit> get(core.String packageName, core.String editId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (packageName == null) {
      throw new core.ArgumentError("Parameter packageName is required.");
    }
    if (editId == null) {
      throw new core.ArgumentError("Parameter editId is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$packageName') + '/edits/' + common_internal.Escaper.ecapeVariable('$editId');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new AppEdit.fromJson(data));
  }

  /**
   * Creates a new edit for an app, populated with the app's current state.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [packageName] - Unique identifier for the Android app that is being
   * updated; for example, "com.spiffygame".
   *
   * Completes with a [AppEdit].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<AppEdit> insert(AppEdit request, core.String packageName) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (packageName == null) {
      throw new core.ArgumentError("Parameter packageName is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$packageName') + '/edits';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new AppEdit.fromJson(data));
  }

  /**
   * Checks that the edit can be successfully committed. The edit's changes are
   * not applied to the live app.
   *
   * Request parameters:
   *
   * [packageName] - Unique identifier for the Android app that is being
   * updated; for example, "com.spiffygame".
   *
   * [editId] - Unique identifier for this edit.
   *
   * Completes with a [AppEdit].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<AppEdit> validate(core.String packageName, core.String editId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (packageName == null) {
      throw new core.ArgumentError("Parameter packageName is required.");
    }
    if (editId == null) {
      throw new core.ArgumentError("Parameter editId is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$packageName') + '/edits/' + common_internal.Escaper.ecapeVariable('$editId') + ':validate';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new AppEdit.fromJson(data));
  }

}


/** Not documented yet. */
class EditsApklistingsResourceApi {
  final common_internal.ApiRequester _requester;

  EditsApklistingsResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Deletes the APK-specific localized listing for a specified APK and language
   * code.
   *
   * Request parameters:
   *
   * [packageName] - Unique identifier for the Android app that is being
   * updated; for example, "com.spiffygame".
   *
   * [editId] - Unique identifier for this edit.
   *
   * [apkVersionCode] - The APK version code whose APK-specific listings should
   * be read or modified.
   *
   * [language] - The language code (a BCP-47 language tag) of the APK-specific
   * localized listing to read or modify. For example, to select Austrian
   * German, pass "de-AT".
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future delete(core.String packageName, core.String editId, core.int apkVersionCode, core.String language) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (packageName == null) {
      throw new core.ArgumentError("Parameter packageName is required.");
    }
    if (editId == null) {
      throw new core.ArgumentError("Parameter editId is required.");
    }
    if (apkVersionCode == null) {
      throw new core.ArgumentError("Parameter apkVersionCode is required.");
    }
    if (language == null) {
      throw new core.ArgumentError("Parameter language is required.");
    }

    _downloadOptions = null;

    _url = common_internal.Escaper.ecapeVariable('$packageName') + '/edits/' + common_internal.Escaper.ecapeVariable('$editId') + '/apks/' + common_internal.Escaper.ecapeVariable('$apkVersionCode') + '/listings/' + common_internal.Escaper.ecapeVariable('$language');

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
   * Deletes all the APK-specific localized listings for a specified APK.
   *
   * Request parameters:
   *
   * [packageName] - Unique identifier for the Android app that is being
   * updated; for example, "com.spiffygame".
   *
   * [editId] - Unique identifier for this edit.
   *
   * [apkVersionCode] - The APK version code whose APK-specific listings should
   * be read or modified.
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future deleteall(core.String packageName, core.String editId, core.int apkVersionCode) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (packageName == null) {
      throw new core.ArgumentError("Parameter packageName is required.");
    }
    if (editId == null) {
      throw new core.ArgumentError("Parameter editId is required.");
    }
    if (apkVersionCode == null) {
      throw new core.ArgumentError("Parameter apkVersionCode is required.");
    }

    _downloadOptions = null;

    _url = common_internal.Escaper.ecapeVariable('$packageName') + '/edits/' + common_internal.Escaper.ecapeVariable('$editId') + '/apks/' + common_internal.Escaper.ecapeVariable('$apkVersionCode') + '/listings';

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
   * Fetches the APK-specific localized listing for a specified APK and language
   * code.
   *
   * Request parameters:
   *
   * [packageName] - Unique identifier for the Android app that is being
   * updated; for example, "com.spiffygame".
   *
   * [editId] - Unique identifier for this edit.
   *
   * [apkVersionCode] - The APK version code whose APK-specific listings should
   * be read or modified.
   *
   * [language] - The language code (a BCP-47 language tag) of the APK-specific
   * localized listing to read or modify. For example, to select Austrian
   * German, pass "de-AT".
   *
   * Completes with a [ApkListing].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<ApkListing> get(core.String packageName, core.String editId, core.int apkVersionCode, core.String language) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (packageName == null) {
      throw new core.ArgumentError("Parameter packageName is required.");
    }
    if (editId == null) {
      throw new core.ArgumentError("Parameter editId is required.");
    }
    if (apkVersionCode == null) {
      throw new core.ArgumentError("Parameter apkVersionCode is required.");
    }
    if (language == null) {
      throw new core.ArgumentError("Parameter language is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$packageName') + '/edits/' + common_internal.Escaper.ecapeVariable('$editId') + '/apks/' + common_internal.Escaper.ecapeVariable('$apkVersionCode') + '/listings/' + common_internal.Escaper.ecapeVariable('$language');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ApkListing.fromJson(data));
  }

  /**
   * Lists all the APK-specific localized listings for a specified APK.
   *
   * Request parameters:
   *
   * [packageName] - Unique identifier for the Android app that is being
   * updated; for example, "com.spiffygame".
   *
   * [editId] - Unique identifier for this edit.
   *
   * [apkVersionCode] - The APK version code whose APK-specific listings should
   * be read or modified.
   *
   * Completes with a [ApkListingsListResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<ApkListingsListResponse> list(core.String packageName, core.String editId, core.int apkVersionCode) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (packageName == null) {
      throw new core.ArgumentError("Parameter packageName is required.");
    }
    if (editId == null) {
      throw new core.ArgumentError("Parameter editId is required.");
    }
    if (apkVersionCode == null) {
      throw new core.ArgumentError("Parameter apkVersionCode is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$packageName') + '/edits/' + common_internal.Escaper.ecapeVariable('$editId') + '/apks/' + common_internal.Escaper.ecapeVariable('$apkVersionCode') + '/listings';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ApkListingsListResponse.fromJson(data));
  }

  /**
   * Updates or creates the APK-specific localized listing for a specified APK
   * and language code. This method supports patch semantics.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [packageName] - Unique identifier for the Android app that is being
   * updated; for example, "com.spiffygame".
   *
   * [editId] - Unique identifier for this edit.
   *
   * [apkVersionCode] - The APK version code whose APK-specific listings should
   * be read or modified.
   *
   * [language] - The language code (a BCP-47 language tag) of the APK-specific
   * localized listing to read or modify. For example, to select Austrian
   * German, pass "de-AT".
   *
   * Completes with a [ApkListing].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<ApkListing> patch(ApkListing request, core.String packageName, core.String editId, core.int apkVersionCode, core.String language) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (packageName == null) {
      throw new core.ArgumentError("Parameter packageName is required.");
    }
    if (editId == null) {
      throw new core.ArgumentError("Parameter editId is required.");
    }
    if (apkVersionCode == null) {
      throw new core.ArgumentError("Parameter apkVersionCode is required.");
    }
    if (language == null) {
      throw new core.ArgumentError("Parameter language is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$packageName') + '/edits/' + common_internal.Escaper.ecapeVariable('$editId') + '/apks/' + common_internal.Escaper.ecapeVariable('$apkVersionCode') + '/listings/' + common_internal.Escaper.ecapeVariable('$language');

    var _response = _requester.request(_url,
                                       "PATCH",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ApkListing.fromJson(data));
  }

  /**
   * Updates or creates the APK-specific localized listing for a specified APK
   * and language code.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [packageName] - Unique identifier for the Android app that is being
   * updated; for example, "com.spiffygame".
   *
   * [editId] - Unique identifier for this edit.
   *
   * [apkVersionCode] - The APK version code whose APK-specific listings should
   * be read or modified.
   *
   * [language] - The language code (a BCP-47 language tag) of the APK-specific
   * localized listing to read or modify. For example, to select Austrian
   * German, pass "de-AT".
   *
   * Completes with a [ApkListing].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<ApkListing> update(ApkListing request, core.String packageName, core.String editId, core.int apkVersionCode, core.String language) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (packageName == null) {
      throw new core.ArgumentError("Parameter packageName is required.");
    }
    if (editId == null) {
      throw new core.ArgumentError("Parameter editId is required.");
    }
    if (apkVersionCode == null) {
      throw new core.ArgumentError("Parameter apkVersionCode is required.");
    }
    if (language == null) {
      throw new core.ArgumentError("Parameter language is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$packageName') + '/edits/' + common_internal.Escaper.ecapeVariable('$editId') + '/apks/' + common_internal.Escaper.ecapeVariable('$apkVersionCode') + '/listings/' + common_internal.Escaper.ecapeVariable('$language');

    var _response = _requester.request(_url,
                                       "PUT",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ApkListing.fromJson(data));
  }

}


/** Not documented yet. */
class EditsApksResourceApi {
  final common_internal.ApiRequester _requester;

  EditsApksResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Not documented yet.
   *
   * Request parameters:
   *
   * [packageName] - Unique identifier for the Android app that is being
   * updated; for example, "com.spiffygame".
   *
   * [editId] - Unique identifier for this edit.
   *
   * Completes with a [ApksListResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<ApksListResponse> list(core.String packageName, core.String editId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (packageName == null) {
      throw new core.ArgumentError("Parameter packageName is required.");
    }
    if (editId == null) {
      throw new core.ArgumentError("Parameter editId is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$packageName') + '/edits/' + common_internal.Escaper.ecapeVariable('$editId') + '/apks';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ApksListResponse.fromJson(data));
  }

  /**
   * Not documented yet.
   *
   * Request parameters:
   *
   * [packageName] - Unique identifier for the Android app that is being
   * updated; for example, "com.spiffygame".
   *
   * [editId] - Unique identifier for this edit.
   *
   * [uploadMedia] - The media to upload.
   *
   * [uploadOptions] - Options for the media upload. Streaming Media without the
   * length being known ahead of time is only supported via resumable uploads.
   *
   * Completes with a [Apk].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Apk> upload(core.String packageName, core.String editId, {common.UploadOptions uploadOptions : common.UploadOptions.Default, common.Media uploadMedia}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (packageName == null) {
      throw new core.ArgumentError("Parameter packageName is required.");
    }
    if (editId == null) {
      throw new core.ArgumentError("Parameter editId is required.");
    }

    _uploadMedia =  uploadMedia;
    _uploadOptions =  uploadOptions;

    if (_uploadMedia == null) {
      _url = common_internal.Escaper.ecapeVariable('$packageName') + '/edits/' + common_internal.Escaper.ecapeVariable('$editId') + '/apks';
    } else if (_uploadOptions is common.ResumableUploadOptions) {
      _url = '/resumable/upload/androidpublisher/v2/applications/' + common_internal.Escaper.ecapeVariable('$packageName') + '/edits/' + common_internal.Escaper.ecapeVariable('$editId') + '/apks';
    } else {
      _url = '/upload/androidpublisher/v2/applications/' + common_internal.Escaper.ecapeVariable('$packageName') + '/edits/' + common_internal.Escaper.ecapeVariable('$editId') + '/apks';
    }


    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Apk.fromJson(data));
  }

}


/** Not documented yet. */
class EditsDetailsResourceApi {
  final common_internal.ApiRequester _requester;

  EditsDetailsResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Fetches app details for this edit. This includes the default language and
   * developer support contact information.
   *
   * Request parameters:
   *
   * [packageName] - Unique identifier for the Android app that is being
   * updated; for example, "com.spiffygame".
   *
   * [editId] - Unique identifier for this edit.
   *
   * Completes with a [AppDetails].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<AppDetails> get(core.String packageName, core.String editId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (packageName == null) {
      throw new core.ArgumentError("Parameter packageName is required.");
    }
    if (editId == null) {
      throw new core.ArgumentError("Parameter editId is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$packageName') + '/edits/' + common_internal.Escaper.ecapeVariable('$editId') + '/details';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new AppDetails.fromJson(data));
  }

  /**
   * Updates app details for this edit. This method supports patch semantics.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [packageName] - Unique identifier for the Android app that is being
   * updated; for example, "com.spiffygame".
   *
   * [editId] - Unique identifier for this edit.
   *
   * Completes with a [AppDetails].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<AppDetails> patch(AppDetails request, core.String packageName, core.String editId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (packageName == null) {
      throw new core.ArgumentError("Parameter packageName is required.");
    }
    if (editId == null) {
      throw new core.ArgumentError("Parameter editId is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$packageName') + '/edits/' + common_internal.Escaper.ecapeVariable('$editId') + '/details';

    var _response = _requester.request(_url,
                                       "PATCH",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new AppDetails.fromJson(data));
  }

  /**
   * Updates app details for this edit.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [packageName] - Unique identifier for the Android app that is being
   * updated; for example, "com.spiffygame".
   *
   * [editId] - Unique identifier for this edit.
   *
   * Completes with a [AppDetails].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<AppDetails> update(AppDetails request, core.String packageName, core.String editId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (packageName == null) {
      throw new core.ArgumentError("Parameter packageName is required.");
    }
    if (editId == null) {
      throw new core.ArgumentError("Parameter editId is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$packageName') + '/edits/' + common_internal.Escaper.ecapeVariable('$editId') + '/details';

    var _response = _requester.request(_url,
                                       "PUT",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new AppDetails.fromJson(data));
  }

}


/** Not documented yet. */
class EditsExpansionfilesResourceApi {
  final common_internal.ApiRequester _requester;

  EditsExpansionfilesResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Fetches the Expansion File configuration for the APK specified.
   *
   * Request parameters:
   *
   * [packageName] - Unique identifier for the Android app that is being
   * updated; for example, "com.spiffygame".
   *
   * [editId] - Unique identifier for this edit.
   *
   * [apkVersionCode] - The version code of the APK whose Expansion File
   * configuration is being read or modified.
   *
   * [expansionFileType] - null
   * Possible string values are:
   * - "main"
   * - "patch"
   *
   * Completes with a [ExpansionFile].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<ExpansionFile> get(core.String packageName, core.String editId, core.int apkVersionCode, core.String expansionFileType) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (packageName == null) {
      throw new core.ArgumentError("Parameter packageName is required.");
    }
    if (editId == null) {
      throw new core.ArgumentError("Parameter editId is required.");
    }
    if (apkVersionCode == null) {
      throw new core.ArgumentError("Parameter apkVersionCode is required.");
    }
    if (expansionFileType == null) {
      throw new core.ArgumentError("Parameter expansionFileType is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$packageName') + '/edits/' + common_internal.Escaper.ecapeVariable('$editId') + '/apks/' + common_internal.Escaper.ecapeVariable('$apkVersionCode') + '/expansionFiles/' + common_internal.Escaper.ecapeVariable('$expansionFileType');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ExpansionFile.fromJson(data));
  }

  /**
   * Updates the APK's Expansion File configuration to reference another APK's
   * Expansion Files. To add a new Expansion File use the Upload method. This
   * method supports patch semantics.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [packageName] - Unique identifier for the Android app that is being
   * updated; for example, "com.spiffygame".
   *
   * [editId] - Unique identifier for this edit.
   *
   * [apkVersionCode] - The version code of the APK whose Expansion File
   * configuration is being read or modified.
   *
   * [expansionFileType] - null
   * Possible string values are:
   * - "main"
   * - "patch"
   *
   * Completes with a [ExpansionFile].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<ExpansionFile> patch(ExpansionFile request, core.String packageName, core.String editId, core.int apkVersionCode, core.String expansionFileType) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (packageName == null) {
      throw new core.ArgumentError("Parameter packageName is required.");
    }
    if (editId == null) {
      throw new core.ArgumentError("Parameter editId is required.");
    }
    if (apkVersionCode == null) {
      throw new core.ArgumentError("Parameter apkVersionCode is required.");
    }
    if (expansionFileType == null) {
      throw new core.ArgumentError("Parameter expansionFileType is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$packageName') + '/edits/' + common_internal.Escaper.ecapeVariable('$editId') + '/apks/' + common_internal.Escaper.ecapeVariable('$apkVersionCode') + '/expansionFiles/' + common_internal.Escaper.ecapeVariable('$expansionFileType');

    var _response = _requester.request(_url,
                                       "PATCH",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ExpansionFile.fromJson(data));
  }

  /**
   * Updates the APK's Expansion File configuration to reference another APK's
   * Expansion Files. To add a new Expansion File use the Upload method.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [packageName] - Unique identifier for the Android app that is being
   * updated; for example, "com.spiffygame".
   *
   * [editId] - Unique identifier for this edit.
   *
   * [apkVersionCode] - The version code of the APK whose Expansion File
   * configuration is being read or modified.
   *
   * [expansionFileType] - null
   * Possible string values are:
   * - "main"
   * - "patch"
   *
   * Completes with a [ExpansionFile].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<ExpansionFile> update(ExpansionFile request, core.String packageName, core.String editId, core.int apkVersionCode, core.String expansionFileType) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (packageName == null) {
      throw new core.ArgumentError("Parameter packageName is required.");
    }
    if (editId == null) {
      throw new core.ArgumentError("Parameter editId is required.");
    }
    if (apkVersionCode == null) {
      throw new core.ArgumentError("Parameter apkVersionCode is required.");
    }
    if (expansionFileType == null) {
      throw new core.ArgumentError("Parameter expansionFileType is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$packageName') + '/edits/' + common_internal.Escaper.ecapeVariable('$editId') + '/apks/' + common_internal.Escaper.ecapeVariable('$apkVersionCode') + '/expansionFiles/' + common_internal.Escaper.ecapeVariable('$expansionFileType');

    var _response = _requester.request(_url,
                                       "PUT",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ExpansionFile.fromJson(data));
  }

  /**
   * Uploads and attaches a new Expansion File to the APK specified.
   *
   * Request parameters:
   *
   * [packageName] - Unique identifier for the Android app that is being
   * updated; for example, "com.spiffygame".
   *
   * [editId] - Unique identifier for this edit.
   *
   * [apkVersionCode] - The version code of the APK whose Expansion File
   * configuration is being read or modified.
   *
   * [expansionFileType] - null
   * Possible string values are:
   * - "main"
   * - "patch"
   *
   * [uploadMedia] - The media to upload.
   *
   * [uploadOptions] - Options for the media upload. Streaming Media without the
   * length being known ahead of time is only supported via resumable uploads.
   *
   * Completes with a [ExpansionFilesUploadResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<ExpansionFilesUploadResponse> upload(core.String packageName, core.String editId, core.int apkVersionCode, core.String expansionFileType, {common.UploadOptions uploadOptions : common.UploadOptions.Default, common.Media uploadMedia}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (packageName == null) {
      throw new core.ArgumentError("Parameter packageName is required.");
    }
    if (editId == null) {
      throw new core.ArgumentError("Parameter editId is required.");
    }
    if (apkVersionCode == null) {
      throw new core.ArgumentError("Parameter apkVersionCode is required.");
    }
    if (expansionFileType == null) {
      throw new core.ArgumentError("Parameter expansionFileType is required.");
    }

    _uploadMedia =  uploadMedia;
    _uploadOptions =  uploadOptions;

    if (_uploadMedia == null) {
      _url = common_internal.Escaper.ecapeVariable('$packageName') + '/edits/' + common_internal.Escaper.ecapeVariable('$editId') + '/apks/' + common_internal.Escaper.ecapeVariable('$apkVersionCode') + '/expansionFiles/' + common_internal.Escaper.ecapeVariable('$expansionFileType');
    } else if (_uploadOptions is common.ResumableUploadOptions) {
      _url = '/resumable/upload/androidpublisher/v2/applications/' + common_internal.Escaper.ecapeVariable('$packageName') + '/edits/' + common_internal.Escaper.ecapeVariable('$editId') + '/apks/' + common_internal.Escaper.ecapeVariable('$apkVersionCode') + '/expansionFiles/' + common_internal.Escaper.ecapeVariable('$expansionFileType');
    } else {
      _url = '/upload/androidpublisher/v2/applications/' + common_internal.Escaper.ecapeVariable('$packageName') + '/edits/' + common_internal.Escaper.ecapeVariable('$editId') + '/apks/' + common_internal.Escaper.ecapeVariable('$apkVersionCode') + '/expansionFiles/' + common_internal.Escaper.ecapeVariable('$expansionFileType');
    }


    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ExpansionFilesUploadResponse.fromJson(data));
  }

}


/** Not documented yet. */
class EditsImagesResourceApi {
  final common_internal.ApiRequester _requester;

  EditsImagesResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Deletes the image (specified by id) from the edit.
   *
   * Request parameters:
   *
   * [packageName] - Unique identifier for the Android app that is being
   * updated; for example, "com.spiffygame".
   *
   * [editId] - Unique identifier for this edit.
   *
   * [language] - The language code (a BCP-47 language tag) of the localized
   * listing whose images are to read or modified. For example, to select
   * Austrian German, pass "de-AT".
   *
   * [imageType] - null
   * Possible string values are:
   * - "featureGraphic"
   * - "icon"
   * - "phoneScreenshots"
   * - "promoGraphic"
   * - "sevenInchScreenshots"
   * - "tenInchScreenshots"
   *
   * [imageId] - Unique identifier an image within the set of images attached to
   * this edit.
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future delete(core.String packageName, core.String editId, core.String language, core.String imageType, core.String imageId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (packageName == null) {
      throw new core.ArgumentError("Parameter packageName is required.");
    }
    if (editId == null) {
      throw new core.ArgumentError("Parameter editId is required.");
    }
    if (language == null) {
      throw new core.ArgumentError("Parameter language is required.");
    }
    if (imageType == null) {
      throw new core.ArgumentError("Parameter imageType is required.");
    }
    if (imageId == null) {
      throw new core.ArgumentError("Parameter imageId is required.");
    }

    _downloadOptions = null;

    _url = common_internal.Escaper.ecapeVariable('$packageName') + '/edits/' + common_internal.Escaper.ecapeVariable('$editId') + '/listings/' + common_internal.Escaper.ecapeVariable('$language') + '/' + common_internal.Escaper.ecapeVariable('$imageType') + '/' + common_internal.Escaper.ecapeVariable('$imageId');

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
   * Deletes all images for the specified language and image type.
   *
   * Request parameters:
   *
   * [packageName] - Unique identifier for the Android app that is being
   * updated; for example, "com.spiffygame".
   *
   * [editId] - Unique identifier for this edit.
   *
   * [language] - The language code (a BCP-47 language tag) of the localized
   * listing whose images are to read or modified. For example, to select
   * Austrian German, pass "de-AT".
   *
   * [imageType] - null
   * Possible string values are:
   * - "featureGraphic"
   * - "icon"
   * - "phoneScreenshots"
   * - "promoGraphic"
   * - "sevenInchScreenshots"
   * - "tenInchScreenshots"
   *
   * Completes with a [ImagesDeleteAllResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<ImagesDeleteAllResponse> deleteall(core.String packageName, core.String editId, core.String language, core.String imageType) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (packageName == null) {
      throw new core.ArgumentError("Parameter packageName is required.");
    }
    if (editId == null) {
      throw new core.ArgumentError("Parameter editId is required.");
    }
    if (language == null) {
      throw new core.ArgumentError("Parameter language is required.");
    }
    if (imageType == null) {
      throw new core.ArgumentError("Parameter imageType is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$packageName') + '/edits/' + common_internal.Escaper.ecapeVariable('$editId') + '/listings/' + common_internal.Escaper.ecapeVariable('$language') + '/' + common_internal.Escaper.ecapeVariable('$imageType');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ImagesDeleteAllResponse.fromJson(data));
  }

  /**
   * Lists all images for the specified language and image type.
   *
   * Request parameters:
   *
   * [packageName] - Unique identifier for the Android app that is being
   * updated; for example, "com.spiffygame".
   *
   * [editId] - Unique identifier for this edit.
   *
   * [language] - The language code (a BCP-47 language tag) of the localized
   * listing whose images are to read or modified. For example, to select
   * Austrian German, pass "de-AT".
   *
   * [imageType] - null
   * Possible string values are:
   * - "featureGraphic"
   * - "icon"
   * - "phoneScreenshots"
   * - "promoGraphic"
   * - "sevenInchScreenshots"
   * - "tenInchScreenshots"
   *
   * Completes with a [ImagesListResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<ImagesListResponse> list(core.String packageName, core.String editId, core.String language, core.String imageType) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (packageName == null) {
      throw new core.ArgumentError("Parameter packageName is required.");
    }
    if (editId == null) {
      throw new core.ArgumentError("Parameter editId is required.");
    }
    if (language == null) {
      throw new core.ArgumentError("Parameter language is required.");
    }
    if (imageType == null) {
      throw new core.ArgumentError("Parameter imageType is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$packageName') + '/edits/' + common_internal.Escaper.ecapeVariable('$editId') + '/listings/' + common_internal.Escaper.ecapeVariable('$language') + '/' + common_internal.Escaper.ecapeVariable('$imageType');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ImagesListResponse.fromJson(data));
  }

  /**
   * Uploads a new image and adds it to the list of images for the specified
   * language and image type.
   *
   * Request parameters:
   *
   * [packageName] - Unique identifier for the Android app that is being
   * updated; for example, "com.spiffygame".
   *
   * [editId] - Unique identifier for this edit.
   *
   * [language] - The language code (a BCP-47 language tag) of the localized
   * listing whose images are to read or modified. For example, to select
   * Austrian German, pass "de-AT".
   *
   * [imageType] - null
   * Possible string values are:
   * - "featureGraphic"
   * - "icon"
   * - "phoneScreenshots"
   * - "promoGraphic"
   * - "sevenInchScreenshots"
   * - "tenInchScreenshots"
   *
   * [uploadMedia] - The media to upload.
   *
   * [uploadOptions] - Options for the media upload. Streaming Media without the
   * length being known ahead of time is only supported via resumable uploads.
   *
   * Completes with a [ImagesUploadResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<ImagesUploadResponse> upload(core.String packageName, core.String editId, core.String language, core.String imageType, {common.UploadOptions uploadOptions : common.UploadOptions.Default, common.Media uploadMedia}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (packageName == null) {
      throw new core.ArgumentError("Parameter packageName is required.");
    }
    if (editId == null) {
      throw new core.ArgumentError("Parameter editId is required.");
    }
    if (language == null) {
      throw new core.ArgumentError("Parameter language is required.");
    }
    if (imageType == null) {
      throw new core.ArgumentError("Parameter imageType is required.");
    }

    _uploadMedia =  uploadMedia;
    _uploadOptions =  uploadOptions;

    if (_uploadMedia == null) {
      _url = common_internal.Escaper.ecapeVariable('$packageName') + '/edits/' + common_internal.Escaper.ecapeVariable('$editId') + '/listings/' + common_internal.Escaper.ecapeVariable('$language') + '/' + common_internal.Escaper.ecapeVariable('$imageType');
    } else if (_uploadOptions is common.ResumableUploadOptions) {
      _url = '/resumable/upload/androidpublisher/v2/applications/' + common_internal.Escaper.ecapeVariable('$packageName') + '/edits/' + common_internal.Escaper.ecapeVariable('$editId') + '/listings/' + common_internal.Escaper.ecapeVariable('$language') + '/' + common_internal.Escaper.ecapeVariable('$imageType');
    } else {
      _url = '/upload/androidpublisher/v2/applications/' + common_internal.Escaper.ecapeVariable('$packageName') + '/edits/' + common_internal.Escaper.ecapeVariable('$editId') + '/listings/' + common_internal.Escaper.ecapeVariable('$language') + '/' + common_internal.Escaper.ecapeVariable('$imageType');
    }


    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ImagesUploadResponse.fromJson(data));
  }

}


/** Not documented yet. */
class EditsListingsResourceApi {
  final common_internal.ApiRequester _requester;

  EditsListingsResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Deletes the specified localized store listing from an edit.
   *
   * Request parameters:
   *
   * [packageName] - Unique identifier for the Android app that is being
   * updated; for example, "com.spiffygame".
   *
   * [editId] - Unique identifier for this edit.
   *
   * [language] - The language code (a BCP-47 language tag) of the localized
   * listing to read or modify. For example, to select Austrian German, pass
   * "de-AT".
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future delete(core.String packageName, core.String editId, core.String language) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (packageName == null) {
      throw new core.ArgumentError("Parameter packageName is required.");
    }
    if (editId == null) {
      throw new core.ArgumentError("Parameter editId is required.");
    }
    if (language == null) {
      throw new core.ArgumentError("Parameter language is required.");
    }

    _downloadOptions = null;

    _url = common_internal.Escaper.ecapeVariable('$packageName') + '/edits/' + common_internal.Escaper.ecapeVariable('$editId') + '/listings/' + common_internal.Escaper.ecapeVariable('$language');

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
   * Deletes all localized listings from an edit.
   *
   * Request parameters:
   *
   * [packageName] - Unique identifier for the Android app that is being
   * updated; for example, "com.spiffygame".
   *
   * [editId] - Unique identifier for this edit.
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future deleteall(core.String packageName, core.String editId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (packageName == null) {
      throw new core.ArgumentError("Parameter packageName is required.");
    }
    if (editId == null) {
      throw new core.ArgumentError("Parameter editId is required.");
    }

    _downloadOptions = null;

    _url = common_internal.Escaper.ecapeVariable('$packageName') + '/edits/' + common_internal.Escaper.ecapeVariable('$editId') + '/listings';

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
   * Fetches information about a localized store listing.
   *
   * Request parameters:
   *
   * [packageName] - Unique identifier for the Android app that is being
   * updated; for example, "com.spiffygame".
   *
   * [editId] - Unique identifier for this edit.
   *
   * [language] - The language code (a BCP-47 language tag) of the localized
   * listing to read or modify. For example, to select Austrian German, pass
   * "de-AT".
   *
   * Completes with a [Listing].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Listing> get(core.String packageName, core.String editId, core.String language) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (packageName == null) {
      throw new core.ArgumentError("Parameter packageName is required.");
    }
    if (editId == null) {
      throw new core.ArgumentError("Parameter editId is required.");
    }
    if (language == null) {
      throw new core.ArgumentError("Parameter language is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$packageName') + '/edits/' + common_internal.Escaper.ecapeVariable('$editId') + '/listings/' + common_internal.Escaper.ecapeVariable('$language');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Listing.fromJson(data));
  }

  /**
   * Returns all of the localized store listings attached to this edit.
   *
   * Request parameters:
   *
   * [packageName] - Unique identifier for the Android app that is being
   * updated; for example, "com.spiffygame".
   *
   * [editId] - Unique identifier for this edit.
   *
   * Completes with a [ListingsListResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<ListingsListResponse> list(core.String packageName, core.String editId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (packageName == null) {
      throw new core.ArgumentError("Parameter packageName is required.");
    }
    if (editId == null) {
      throw new core.ArgumentError("Parameter editId is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$packageName') + '/edits/' + common_internal.Escaper.ecapeVariable('$editId') + '/listings';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ListingsListResponse.fromJson(data));
  }

  /**
   * Creates or updates a localized store listing. This method supports patch
   * semantics.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [packageName] - Unique identifier for the Android app that is being
   * updated; for example, "com.spiffygame".
   *
   * [editId] - Unique identifier for this edit.
   *
   * [language] - The language code (a BCP-47 language tag) of the localized
   * listing to read or modify. For example, to select Austrian German, pass
   * "de-AT".
   *
   * Completes with a [Listing].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Listing> patch(Listing request, core.String packageName, core.String editId, core.String language) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (packageName == null) {
      throw new core.ArgumentError("Parameter packageName is required.");
    }
    if (editId == null) {
      throw new core.ArgumentError("Parameter editId is required.");
    }
    if (language == null) {
      throw new core.ArgumentError("Parameter language is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$packageName') + '/edits/' + common_internal.Escaper.ecapeVariable('$editId') + '/listings/' + common_internal.Escaper.ecapeVariable('$language');

    var _response = _requester.request(_url,
                                       "PATCH",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Listing.fromJson(data));
  }

  /**
   * Creates or updates a localized store listing.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [packageName] - Unique identifier for the Android app that is being
   * updated; for example, "com.spiffygame".
   *
   * [editId] - Unique identifier for this edit.
   *
   * [language] - The language code (a BCP-47 language tag) of the localized
   * listing to read or modify. For example, to select Austrian German, pass
   * "de-AT".
   *
   * Completes with a [Listing].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Listing> update(Listing request, core.String packageName, core.String editId, core.String language) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (packageName == null) {
      throw new core.ArgumentError("Parameter packageName is required.");
    }
    if (editId == null) {
      throw new core.ArgumentError("Parameter editId is required.");
    }
    if (language == null) {
      throw new core.ArgumentError("Parameter language is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$packageName') + '/edits/' + common_internal.Escaper.ecapeVariable('$editId') + '/listings/' + common_internal.Escaper.ecapeVariable('$language');

    var _response = _requester.request(_url,
                                       "PUT",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Listing.fromJson(data));
  }

}


/** Not documented yet. */
class EditsTestersResourceApi {
  final common_internal.ApiRequester _requester;

  EditsTestersResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Not documented yet.
   *
   * Request parameters:
   *
   * [packageName] - Unique identifier for the Android app that is being
   * updated; for example, "com.spiffygame".
   *
   * [editId] - Unique identifier for this edit.
   *
   * [track] - null
   * Possible string values are:
   * - "alpha"
   * - "beta"
   * - "production"
   * - "rollout"
   *
   * Completes with a [Testers].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Testers> get(core.String packageName, core.String editId, core.String track) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (packageName == null) {
      throw new core.ArgumentError("Parameter packageName is required.");
    }
    if (editId == null) {
      throw new core.ArgumentError("Parameter editId is required.");
    }
    if (track == null) {
      throw new core.ArgumentError("Parameter track is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$packageName') + '/edits/' + common_internal.Escaper.ecapeVariable('$editId') + '/testers/' + common_internal.Escaper.ecapeVariable('$track');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Testers.fromJson(data));
  }

  /**
   * Not documented yet.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [packageName] - Unique identifier for the Android app that is being
   * updated; for example, "com.spiffygame".
   *
   * [editId] - Unique identifier for this edit.
   *
   * [track] - null
   * Possible string values are:
   * - "alpha"
   * - "beta"
   * - "production"
   * - "rollout"
   *
   * Completes with a [Testers].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Testers> patch(Testers request, core.String packageName, core.String editId, core.String track) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (packageName == null) {
      throw new core.ArgumentError("Parameter packageName is required.");
    }
    if (editId == null) {
      throw new core.ArgumentError("Parameter editId is required.");
    }
    if (track == null) {
      throw new core.ArgumentError("Parameter track is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$packageName') + '/edits/' + common_internal.Escaper.ecapeVariable('$editId') + '/testers/' + common_internal.Escaper.ecapeVariable('$track');

    var _response = _requester.request(_url,
                                       "PATCH",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Testers.fromJson(data));
  }

  /**
   * Not documented yet.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [packageName] - Unique identifier for the Android app that is being
   * updated; for example, "com.spiffygame".
   *
   * [editId] - Unique identifier for this edit.
   *
   * [track] - null
   * Possible string values are:
   * - "alpha"
   * - "beta"
   * - "production"
   * - "rollout"
   *
   * Completes with a [Testers].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Testers> update(Testers request, core.String packageName, core.String editId, core.String track) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (packageName == null) {
      throw new core.ArgumentError("Parameter packageName is required.");
    }
    if (editId == null) {
      throw new core.ArgumentError("Parameter editId is required.");
    }
    if (track == null) {
      throw new core.ArgumentError("Parameter track is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$packageName') + '/edits/' + common_internal.Escaper.ecapeVariable('$editId') + '/testers/' + common_internal.Escaper.ecapeVariable('$track');

    var _response = _requester.request(_url,
                                       "PUT",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Testers.fromJson(data));
  }

}


/** Not documented yet. */
class EditsTracksResourceApi {
  final common_internal.ApiRequester _requester;

  EditsTracksResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Fetches the track configuration for the specified track type. Includes the
   * APK version codes that are in this track.
   *
   * Request parameters:
   *
   * [packageName] - Unique identifier for the Android app that is being
   * updated; for example, "com.spiffygame".
   *
   * [editId] - Unique identifier for this edit.
   *
   * [track] - The track type to read or modify.
   * Possible string values are:
   * - "alpha"
   * - "beta"
   * - "production"
   * - "rollout"
   *
   * Completes with a [Track].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Track> get(core.String packageName, core.String editId, core.String track) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (packageName == null) {
      throw new core.ArgumentError("Parameter packageName is required.");
    }
    if (editId == null) {
      throw new core.ArgumentError("Parameter editId is required.");
    }
    if (track == null) {
      throw new core.ArgumentError("Parameter track is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$packageName') + '/edits/' + common_internal.Escaper.ecapeVariable('$editId') + '/tracks/' + common_internal.Escaper.ecapeVariable('$track');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Track.fromJson(data));
  }

  /**
   * Lists all the track configurations for this edit.
   *
   * Request parameters:
   *
   * [packageName] - Unique identifier for the Android app that is being
   * updated; for example, "com.spiffygame".
   *
   * [editId] - Unique identifier for this edit.
   *
   * Completes with a [TracksListResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<TracksListResponse> list(core.String packageName, core.String editId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (packageName == null) {
      throw new core.ArgumentError("Parameter packageName is required.");
    }
    if (editId == null) {
      throw new core.ArgumentError("Parameter editId is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$packageName') + '/edits/' + common_internal.Escaper.ecapeVariable('$editId') + '/tracks';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new TracksListResponse.fromJson(data));
  }

  /**
   * Updates the track configuration for the specified track type. This method
   * supports patch semantics.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [packageName] - Unique identifier for the Android app that is being
   * updated; for example, "com.spiffygame".
   *
   * [editId] - Unique identifier for this edit.
   *
   * [track] - The track type to read or modify.
   * Possible string values are:
   * - "alpha"
   * - "beta"
   * - "production"
   * - "rollout"
   *
   * Completes with a [Track].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Track> patch(Track request, core.String packageName, core.String editId, core.String track) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (packageName == null) {
      throw new core.ArgumentError("Parameter packageName is required.");
    }
    if (editId == null) {
      throw new core.ArgumentError("Parameter editId is required.");
    }
    if (track == null) {
      throw new core.ArgumentError("Parameter track is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$packageName') + '/edits/' + common_internal.Escaper.ecapeVariable('$editId') + '/tracks/' + common_internal.Escaper.ecapeVariable('$track');

    var _response = _requester.request(_url,
                                       "PATCH",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Track.fromJson(data));
  }

  /**
   * Updates the track configuration for the specified track type.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [packageName] - Unique identifier for the Android app that is being
   * updated; for example, "com.spiffygame".
   *
   * [editId] - Unique identifier for this edit.
   *
   * [track] - The track type to read or modify.
   * Possible string values are:
   * - "alpha"
   * - "beta"
   * - "production"
   * - "rollout"
   *
   * Completes with a [Track].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Track> update(Track request, core.String packageName, core.String editId, core.String track) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (packageName == null) {
      throw new core.ArgumentError("Parameter packageName is required.");
    }
    if (editId == null) {
      throw new core.ArgumentError("Parameter editId is required.");
    }
    if (track == null) {
      throw new core.ArgumentError("Parameter track is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$packageName') + '/edits/' + common_internal.Escaper.ecapeVariable('$editId') + '/tracks/' + common_internal.Escaper.ecapeVariable('$track');

    var _response = _requester.request(_url,
                                       "PUT",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Track.fromJson(data));
  }

}


/** Not documented yet. */
class InappproductsResourceApi {
  final common_internal.ApiRequester _requester;

  InappproductsResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Not documented yet.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * Completes with a [InappproductsBatchResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<InappproductsBatchResponse> batch(InappproductsBatchRequest request) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }


    _url = 'inappproducts/batch';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new InappproductsBatchResponse.fromJson(data));
  }

  /**
   * Delete an in-app product for an app.
   *
   * Request parameters:
   *
   * [packageName] - Unique identifier for the Android app with the in-app
   * product; for example, "com.spiffygame".
   *
   * [sku] - Unique identifier for the in-app product.
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future delete(core.String packageName, core.String sku) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (packageName == null) {
      throw new core.ArgumentError("Parameter packageName is required.");
    }
    if (sku == null) {
      throw new core.ArgumentError("Parameter sku is required.");
    }

    _downloadOptions = null;

    _url = common_internal.Escaper.ecapeVariable('$packageName') + '/inappproducts/' + common_internal.Escaper.ecapeVariable('$sku');

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
   * Returns information about the in-app product specified.
   *
   * Request parameters:
   *
   * [packageName] - null
   *
   * [sku] - Unique identifier for the in-app product.
   *
   * Completes with a [InAppProduct].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<InAppProduct> get(core.String packageName, core.String sku) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (packageName == null) {
      throw new core.ArgumentError("Parameter packageName is required.");
    }
    if (sku == null) {
      throw new core.ArgumentError("Parameter sku is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$packageName') + '/inappproducts/' + common_internal.Escaper.ecapeVariable('$sku');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new InAppProduct.fromJson(data));
  }

  /**
   * Creates a new in-app product for an app.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [packageName] - Unique identifier for the Android app; for example,
   * "com.spiffygame".
   *
   * [autoConvertMissingPrices] - If true the prices for all regions targeted by
   * the parent app that don't have a price specified for this in-app product
   * will be auto converted to the target currency based on the default price.
   * Defaults to false.
   *
   * Completes with a [InAppProduct].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<InAppProduct> insert(InAppProduct request, core.String packageName, {core.bool autoConvertMissingPrices}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (packageName == null) {
      throw new core.ArgumentError("Parameter packageName is required.");
    }
    if (autoConvertMissingPrices != null) {
      _queryParams["autoConvertMissingPrices"] = ["${autoConvertMissingPrices}"];
    }


    _url = common_internal.Escaper.ecapeVariable('$packageName') + '/inappproducts';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new InAppProduct.fromJson(data));
  }

  /**
   * List all the in-app products for an Android app, both subscriptions and
   * managed in-app products..
   *
   * Request parameters:
   *
   * [packageName] - Unique identifier for the Android app with in-app products;
   * for example, "com.spiffygame".
   *
   * [maxResults] - null
   *
   * [startIndex] - null
   *
   * [token] - null
   *
   * Completes with a [InappproductsListResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<InappproductsListResponse> list(core.String packageName, {core.int maxResults, core.int startIndex, core.String token}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (packageName == null) {
      throw new core.ArgumentError("Parameter packageName is required.");
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (startIndex != null) {
      _queryParams["startIndex"] = ["${startIndex}"];
    }
    if (token != null) {
      _queryParams["token"] = [token];
    }


    _url = common_internal.Escaper.ecapeVariable('$packageName') + '/inappproducts';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new InappproductsListResponse.fromJson(data));
  }

  /**
   * Updates the details of an in-app product. This method supports patch
   * semantics.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [packageName] - Unique identifier for the Android app with the in-app
   * product; for example, "com.spiffygame".
   *
   * [sku] - Unique identifier for the in-app product.
   *
   * [autoConvertMissingPrices] - If true the prices for all regions targeted by
   * the parent app that don't have a price specified for this in-app product
   * will be auto converted to the target currency based on the default price.
   * Defaults to false.
   *
   * Completes with a [InAppProduct].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<InAppProduct> patch(InAppProduct request, core.String packageName, core.String sku, {core.bool autoConvertMissingPrices}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (packageName == null) {
      throw new core.ArgumentError("Parameter packageName is required.");
    }
    if (sku == null) {
      throw new core.ArgumentError("Parameter sku is required.");
    }
    if (autoConvertMissingPrices != null) {
      _queryParams["autoConvertMissingPrices"] = ["${autoConvertMissingPrices}"];
    }


    _url = common_internal.Escaper.ecapeVariable('$packageName') + '/inappproducts/' + common_internal.Escaper.ecapeVariable('$sku');

    var _response = _requester.request(_url,
                                       "PATCH",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new InAppProduct.fromJson(data));
  }

  /**
   * Updates the details of an in-app product.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [packageName] - Unique identifier for the Android app with the in-app
   * product; for example, "com.spiffygame".
   *
   * [sku] - Unique identifier for the in-app product.
   *
   * [autoConvertMissingPrices] - If true the prices for all regions targeted by
   * the parent app that don't have a price specified for this in-app product
   * will be auto converted to the target currency based on the default price.
   * Defaults to false.
   *
   * Completes with a [InAppProduct].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<InAppProduct> update(InAppProduct request, core.String packageName, core.String sku, {core.bool autoConvertMissingPrices}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (packageName == null) {
      throw new core.ArgumentError("Parameter packageName is required.");
    }
    if (sku == null) {
      throw new core.ArgumentError("Parameter sku is required.");
    }
    if (autoConvertMissingPrices != null) {
      _queryParams["autoConvertMissingPrices"] = ["${autoConvertMissingPrices}"];
    }


    _url = common_internal.Escaper.ecapeVariable('$packageName') + '/inappproducts/' + common_internal.Escaper.ecapeVariable('$sku');

    var _response = _requester.request(_url,
                                       "PUT",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new InAppProduct.fromJson(data));
  }

}


/** Not documented yet. */
class PurchasesResourceApi {
  final common_internal.ApiRequester _requester;

  PurchasesProductsResourceApi get products => new PurchasesProductsResourceApi(_requester);
  PurchasesSubscriptionsResourceApi get subscriptions => new PurchasesSubscriptionsResourceApi(_requester);

  PurchasesResourceApi(common_internal.ApiRequester client) : 
      _requester = client;
}


/** Not documented yet. */
class PurchasesProductsResourceApi {
  final common_internal.ApiRequester _requester;

  PurchasesProductsResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Checks the purchase and consumption status of an inapp item.
   *
   * Request parameters:
   *
   * [packageName] - The package name of the application the inapp product was
   * sold in (for example, 'com.some.thing').
   *
   * [productId] - The inapp product SKU (for example, 'com.some.thing.inapp1').
   *
   * [token] - The token provided to the user's device when the inapp product
   * was purchased.
   *
   * Completes with a [ProductPurchase].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<ProductPurchase> get(core.String packageName, core.String productId, core.String token) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (packageName == null) {
      throw new core.ArgumentError("Parameter packageName is required.");
    }
    if (productId == null) {
      throw new core.ArgumentError("Parameter productId is required.");
    }
    if (token == null) {
      throw new core.ArgumentError("Parameter token is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$packageName') + '/purchases/products/' + common_internal.Escaper.ecapeVariable('$productId') + '/tokens/' + common_internal.Escaper.ecapeVariable('$token');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ProductPurchase.fromJson(data));
  }

}


/** Not documented yet. */
class PurchasesSubscriptionsResourceApi {
  final common_internal.ApiRequester _requester;

  PurchasesSubscriptionsResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Cancels a user's subscription purchase. The subscription remains valid
   * until its expiration time.
   *
   * Request parameters:
   *
   * [packageName] - The package name of the application for which this
   * subscription was purchased (for example, 'com.some.thing').
   *
   * [subscriptionId] - The purchased subscription ID (for example,
   * 'monthly001').
   *
   * [token] - The token provided to the user's device when the subscription was
   * purchased.
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future cancel(core.String packageName, core.String subscriptionId, core.String token) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (packageName == null) {
      throw new core.ArgumentError("Parameter packageName is required.");
    }
    if (subscriptionId == null) {
      throw new core.ArgumentError("Parameter subscriptionId is required.");
    }
    if (token == null) {
      throw new core.ArgumentError("Parameter token is required.");
    }

    _downloadOptions = null;

    _url = common_internal.Escaper.ecapeVariable('$packageName') + '/purchases/subscriptions/' + common_internal.Escaper.ecapeVariable('$subscriptionId') + '/tokens/' + common_internal.Escaper.ecapeVariable('$token') + ':cancel';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /**
   * Defers a user's subscription purchase until a specified future expiration
   * time.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [packageName] - The package name of the application for which this
   * subscription was purchased (for example, 'com.some.thing').
   *
   * [subscriptionId] - The purchased subscription ID (for example,
   * 'monthly001').
   *
   * [token] - The token provided to the user's device when the subscription was
   * purchased.
   *
   * Completes with a [SubscriptionPurchasesDeferResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<SubscriptionPurchasesDeferResponse> defer(SubscriptionPurchasesDeferRequest request, core.String packageName, core.String subscriptionId, core.String token) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (packageName == null) {
      throw new core.ArgumentError("Parameter packageName is required.");
    }
    if (subscriptionId == null) {
      throw new core.ArgumentError("Parameter subscriptionId is required.");
    }
    if (token == null) {
      throw new core.ArgumentError("Parameter token is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$packageName') + '/purchases/subscriptions/' + common_internal.Escaper.ecapeVariable('$subscriptionId') + '/tokens/' + common_internal.Escaper.ecapeVariable('$token') + ':defer';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new SubscriptionPurchasesDeferResponse.fromJson(data));
  }

  /**
   * Checks whether a user's subscription purchase is valid and returns its
   * expiry time.
   *
   * Request parameters:
   *
   * [packageName] - The package name of the application for which this
   * subscription was purchased (for example, 'com.some.thing').
   *
   * [subscriptionId] - The purchased subscription ID (for example,
   * 'monthly001').
   *
   * [token] - The token provided to the user's device when the subscription was
   * purchased.
   *
   * Completes with a [SubscriptionPurchase].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<SubscriptionPurchase> get(core.String packageName, core.String subscriptionId, core.String token) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (packageName == null) {
      throw new core.ArgumentError("Parameter packageName is required.");
    }
    if (subscriptionId == null) {
      throw new core.ArgumentError("Parameter subscriptionId is required.");
    }
    if (token == null) {
      throw new core.ArgumentError("Parameter token is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$packageName') + '/purchases/subscriptions/' + common_internal.Escaper.ecapeVariable('$subscriptionId') + '/tokens/' + common_internal.Escaper.ecapeVariable('$token');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new SubscriptionPurchase.fromJson(data));
  }

  /**
   * Refunds a user's subscription purchase, but the subscription remains valid
   * until its expiration time and it will continue to recur.
   *
   * Request parameters:
   *
   * [packageName] - The package name of the application for which this
   * subscription was purchased (for example, 'com.some.thing').
   *
   * [subscriptionId] - The purchased subscription ID (for example,
   * 'monthly001').
   *
   * [token] - The token provided to the user's device when the subscription was
   * purchased.
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future refund(core.String packageName, core.String subscriptionId, core.String token) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (packageName == null) {
      throw new core.ArgumentError("Parameter packageName is required.");
    }
    if (subscriptionId == null) {
      throw new core.ArgumentError("Parameter subscriptionId is required.");
    }
    if (token == null) {
      throw new core.ArgumentError("Parameter token is required.");
    }

    _downloadOptions = null;

    _url = common_internal.Escaper.ecapeVariable('$packageName') + '/purchases/subscriptions/' + common_internal.Escaper.ecapeVariable('$subscriptionId') + '/tokens/' + common_internal.Escaper.ecapeVariable('$token') + ':refund';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /**
   * Refunds and immediately revokes a user's subscription purchase. Access to
   * the subscription will be terminated immediately and it will stop recurring.
   *
   * Request parameters:
   *
   * [packageName] - The package name of the application for which this
   * subscription was purchased (for example, 'com.some.thing').
   *
   * [subscriptionId] - The purchased subscription ID (for example,
   * 'monthly001').
   *
   * [token] - The token provided to the user's device when the subscription was
   * purchased.
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future revoke(core.String packageName, core.String subscriptionId, core.String token) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (packageName == null) {
      throw new core.ArgumentError("Parameter packageName is required.");
    }
    if (subscriptionId == null) {
      throw new core.ArgumentError("Parameter subscriptionId is required.");
    }
    if (token == null) {
      throw new core.ArgumentError("Parameter token is required.");
    }

    _downloadOptions = null;

    _url = common_internal.Escaper.ecapeVariable('$packageName') + '/purchases/subscriptions/' + common_internal.Escaper.ecapeVariable('$subscriptionId') + '/tokens/' + common_internal.Escaper.ecapeVariable('$token') + ':revoke';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

}



/** Not documented yet. */
class Apk {
  /** Information about the binary payload of this APK. */
  ApkBinary binary;

  /** The version code of the APK, as specified in the APK's manifest file. */
  core.int versionCode;


  Apk();

  Apk.fromJson(core.Map _json) {
    if (_json.containsKey("binary")) {
      binary = new ApkBinary.fromJson(_json["binary"]);
    }
    if (_json.containsKey("versionCode")) {
      versionCode = _json["versionCode"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (binary != null) {
      _json["binary"] = (binary).toJson();
    }
    if (versionCode != null) {
      _json["versionCode"] = versionCode;
    }
    return _json;
  }
}


/** Represents the binary payload of an APK. */
class ApkBinary {
  /**
   * A sha1 hash of the APK payload, encoded as a hex string and matching the
   * output of the sha1sum command.
   */
  core.String sha1;


  ApkBinary();

  ApkBinary.fromJson(core.Map _json) {
    if (_json.containsKey("sha1")) {
      sha1 = _json["sha1"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (sha1 != null) {
      _json["sha1"] = sha1;
    }
    return _json;
  }
}


/** Not documented yet. */
class ApkListing {
  /** The language code, in BCP 47 format (eg "en-US"). */
  core.String language;

  /** Describe what's new in your APK. */
  core.String recentChanges;


  ApkListing();

  ApkListing.fromJson(core.Map _json) {
    if (_json.containsKey("language")) {
      language = _json["language"];
    }
    if (_json.containsKey("recentChanges")) {
      recentChanges = _json["recentChanges"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (language != null) {
      _json["language"] = language;
    }
    if (recentChanges != null) {
      _json["recentChanges"] = recentChanges;
    }
    return _json;
  }
}


/** Not documented yet. */
class ApkListingsListResponse {
  /**
   * Identifies what kind of resource this is. Value: the fixed string
   * "androidpublisher#apkListingsListResponse".
   */
  core.String kind;

  /** Not documented yet. */
  core.List<ApkListing> listings;


  ApkListingsListResponse();

  ApkListingsListResponse.fromJson(core.Map _json) {
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("listings")) {
      listings = _json["listings"].map((value) => new ApkListing.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (listings != null) {
      _json["listings"] = listings.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}


/** Not documented yet. */
class ApksListResponse {
  /** Not documented yet. */
  core.List<Apk> apks;

  /**
   * Identifies what kind of resource this is. Value: the fixed string
   * "androidpublisher#apksListResponse".
   */
  core.String kind;


  ApksListResponse();

  ApksListResponse.fromJson(core.Map _json) {
    if (_json.containsKey("apks")) {
      apks = _json["apks"].map((value) => new Apk.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (apks != null) {
      _json["apks"] = apks.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    return _json;
  }
}


/** Not documented yet. */
class AppDetails {
  /** The user-visible support email for this app. */
  core.String contactEmail;

  /** The user-visible support telephone number for this app. */
  core.String contactPhone;

  /** The user-visible website for this app. */
  core.String contactWebsite;

  /** Default language code, in BCP 47 format (eg "en-US"). */
  core.String defaultLanguage;


  AppDetails();

  AppDetails.fromJson(core.Map _json) {
    if (_json.containsKey("contactEmail")) {
      contactEmail = _json["contactEmail"];
    }
    if (_json.containsKey("contactPhone")) {
      contactPhone = _json["contactPhone"];
    }
    if (_json.containsKey("contactWebsite")) {
      contactWebsite = _json["contactWebsite"];
    }
    if (_json.containsKey("defaultLanguage")) {
      defaultLanguage = _json["defaultLanguage"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (contactEmail != null) {
      _json["contactEmail"] = contactEmail;
    }
    if (contactPhone != null) {
      _json["contactPhone"] = contactPhone;
    }
    if (contactWebsite != null) {
      _json["contactWebsite"] = contactWebsite;
    }
    if (defaultLanguage != null) {
      _json["defaultLanguage"] = defaultLanguage;
    }
    return _json;
  }
}


/**
 * Represents an edit of an app. An edit allows clients to make multiple changes
 * before committing them in one operation.
 */
class AppEdit {
  /**
   * The time at which the edit will expire and will be no longer valid for use
   * in any subsequent API calls (encoded as seconds since the Epoch).
   */
  core.String expiryTimeSeconds;

  /** The ID of the edit that can be used in subsequent API calls. */
  core.String id;


  AppEdit();

  AppEdit.fromJson(core.Map _json) {
    if (_json.containsKey("expiryTimeSeconds")) {
      expiryTimeSeconds = _json["expiryTimeSeconds"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (expiryTimeSeconds != null) {
      _json["expiryTimeSeconds"] = expiryTimeSeconds;
    }
    if (id != null) {
      _json["id"] = id;
    }
    return _json;
  }
}


/** Not documented yet. */
class ExpansionFile {
  /**
   * If set this field indicates that this APK has an Expansion File uploaded to
   * it: this APK does not reference another APK's Expansion File. The field's
   * value is the size of the uploaded Expansion File in bytes.
   */
  core.String fileSize;

  /**
   * If set this APK's Expansion File references another APK's Expansion File.
   * The file_size field will not be set.
   */
  core.int referencesVersion;


  ExpansionFile();

  ExpansionFile.fromJson(core.Map _json) {
    if (_json.containsKey("fileSize")) {
      fileSize = _json["fileSize"];
    }
    if (_json.containsKey("referencesVersion")) {
      referencesVersion = _json["referencesVersion"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (fileSize != null) {
      _json["fileSize"] = fileSize;
    }
    if (referencesVersion != null) {
      _json["referencesVersion"] = referencesVersion;
    }
    return _json;
  }
}


/** Not documented yet. */
class ExpansionFilesUploadResponse {
  /** Not documented yet. */
  ExpansionFile expansionFile;


  ExpansionFilesUploadResponse();

  ExpansionFilesUploadResponse.fromJson(core.Map _json) {
    if (_json.containsKey("expansionFile")) {
      expansionFile = new ExpansionFile.fromJson(_json["expansionFile"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (expansionFile != null) {
      _json["expansionFile"] = (expansionFile).toJson();
    }
    return _json;
  }
}


/** Not documented yet. */
class Image {
  /** A unique id representing this image. */
  core.String id;

  /** A sha1 hash of the image that was uploaded. */
  core.String sha1;

  /** A URL that will serve a preview of the image. */
  core.String url;


  Image();

  Image.fromJson(core.Map _json) {
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("sha1")) {
      sha1 = _json["sha1"];
    }
    if (_json.containsKey("url")) {
      url = _json["url"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (id != null) {
      _json["id"] = id;
    }
    if (sha1 != null) {
      _json["sha1"] = sha1;
    }
    if (url != null) {
      _json["url"] = url;
    }
    return _json;
  }
}


/** Not documented yet. */
class ImagesDeleteAllResponse {
  /** Not documented yet. */
  core.List<Image> deleted;


  ImagesDeleteAllResponse();

  ImagesDeleteAllResponse.fromJson(core.Map _json) {
    if (_json.containsKey("deleted")) {
      deleted = _json["deleted"].map((value) => new Image.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (deleted != null) {
      _json["deleted"] = deleted.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}


/** Not documented yet. */
class ImagesListResponse {
  /** Not documented yet. */
  core.List<Image> images;


  ImagesListResponse();

  ImagesListResponse.fromJson(core.Map _json) {
    if (_json.containsKey("images")) {
      images = _json["images"].map((value) => new Image.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (images != null) {
      _json["images"] = images.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}


/** Not documented yet. */
class ImagesUploadResponse {
  /** Not documented yet. */
  Image image;


  ImagesUploadResponse();

  ImagesUploadResponse.fromJson(core.Map _json) {
    if (_json.containsKey("image")) {
      image = new Image.fromJson(_json["image"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (image != null) {
      _json["image"] = (image).toJson();
    }
    return _json;
  }
}


/** Not documented yet. */
class InAppProduct {
  /**
   * The default language of the localized data, as defined by BCP 47. e.g.
   * "en-US", "en-GB".
   */
  core.String defaultLanguage;

  /**
   * Default price cannot be zero. In-app products can never be free. Default
   * price is always in the developer's Checkout merchant currency.
   */
  Price defaultPrice;

  /** List of localized title and description data. */
  core.Map<core.String, InAppProductListing> listings;

  /** The package name of the parent app. */
  core.String packageName;

  /**
   * Prices per buyer region. None of these prices should be zero. In-app
   * products can never be free.
   */
  core.Map<core.String, Price> prices;

  /** Purchase type enum value. Unmodifiable after creation. */
  core.String purchaseType;

  /**
   * Definition of a season for a seasonal subscription. Can be defined only for
   * yearly subscriptions.
   */
  Season season;

  /** The stock-keeping-unit (SKU) of the product, unique within an app. */
  core.String sku;

  /** Not documented yet. */
  core.String status;

  /**
   * The period of the subscription (if any), i.e. period at which payments must
   * happen. Defined as ISO 8601 duration, i.e. "P1M" for 1 month period.
   */
  core.String subscriptionPeriod;

  /**
   * Trial duration (if any) of the subscription, defined as ISO 8601. i.e.
   * "P10D" means an initial period of 10 days during which ownership is granted
   * prior to any payment. Acceptable values are between "P7D" and "P999D".
   * Seasonal subscriptions cannot have a trial period.
   */
  core.String trialPeriod;


  InAppProduct();

  InAppProduct.fromJson(core.Map _json) {
    if (_json.containsKey("defaultLanguage")) {
      defaultLanguage = _json["defaultLanguage"];
    }
    if (_json.containsKey("defaultPrice")) {
      defaultPrice = new Price.fromJson(_json["defaultPrice"]);
    }
    if (_json.containsKey("listings")) {
      listings = common_internal.mapMap(_json["listings"], (item) => new InAppProductListing.fromJson(item));
    }
    if (_json.containsKey("packageName")) {
      packageName = _json["packageName"];
    }
    if (_json.containsKey("prices")) {
      prices = common_internal.mapMap(_json["prices"], (item) => new Price.fromJson(item));
    }
    if (_json.containsKey("purchaseType")) {
      purchaseType = _json["purchaseType"];
    }
    if (_json.containsKey("season")) {
      season = new Season.fromJson(_json["season"]);
    }
    if (_json.containsKey("sku")) {
      sku = _json["sku"];
    }
    if (_json.containsKey("status")) {
      status = _json["status"];
    }
    if (_json.containsKey("subscriptionPeriod")) {
      subscriptionPeriod = _json["subscriptionPeriod"];
    }
    if (_json.containsKey("trialPeriod")) {
      trialPeriod = _json["trialPeriod"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (defaultLanguage != null) {
      _json["defaultLanguage"] = defaultLanguage;
    }
    if (defaultPrice != null) {
      _json["defaultPrice"] = (defaultPrice).toJson();
    }
    if (listings != null) {
      _json["listings"] = common_internal.mapMap(listings, (item) => (item).toJson());
    }
    if (packageName != null) {
      _json["packageName"] = packageName;
    }
    if (prices != null) {
      _json["prices"] = common_internal.mapMap(prices, (item) => (item).toJson());
    }
    if (purchaseType != null) {
      _json["purchaseType"] = purchaseType;
    }
    if (season != null) {
      _json["season"] = (season).toJson();
    }
    if (sku != null) {
      _json["sku"] = sku;
    }
    if (status != null) {
      _json["status"] = status;
    }
    if (subscriptionPeriod != null) {
      _json["subscriptionPeriod"] = subscriptionPeriod;
    }
    if (trialPeriod != null) {
      _json["trialPeriod"] = trialPeriod;
    }
    return _json;
  }
}


/** Not documented yet. */
class InAppProductListing {
  /** Not documented yet. */
  core.String description;

  /** Not documented yet. */
  core.String title;


  InAppProductListing();

  InAppProductListing.fromJson(core.Map _json) {
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("title")) {
      title = _json["title"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (description != null) {
      _json["description"] = description;
    }
    if (title != null) {
      _json["title"] = title;
    }
    return _json;
  }
}


/** Not documented yet. */
class InappproductsBatchRequest {
  /** Not documented yet. */
  core.List<InappproductsBatchRequestEntry> entrys;


  InappproductsBatchRequest();

  InappproductsBatchRequest.fromJson(core.Map _json) {
    if (_json.containsKey("entrys")) {
      entrys = _json["entrys"].map((value) => new InappproductsBatchRequestEntry.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (entrys != null) {
      _json["entrys"] = entrys.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}


/** Not documented yet. */
class InappproductsBatchRequestEntry {
  /** Not documented yet. */
  core.int batchId;

  /** Not documented yet. */
  InappproductsInsertRequest inappproductsinsertrequest;

  /** Not documented yet. */
  InappproductsUpdateRequest inappproductsupdaterequest;

  /** Not documented yet. */
  core.String methodName;


  InappproductsBatchRequestEntry();

  InappproductsBatchRequestEntry.fromJson(core.Map _json) {
    if (_json.containsKey("batchId")) {
      batchId = _json["batchId"];
    }
    if (_json.containsKey("inappproductsinsertrequest")) {
      inappproductsinsertrequest = new InappproductsInsertRequest.fromJson(_json["inappproductsinsertrequest"]);
    }
    if (_json.containsKey("inappproductsupdaterequest")) {
      inappproductsupdaterequest = new InappproductsUpdateRequest.fromJson(_json["inappproductsupdaterequest"]);
    }
    if (_json.containsKey("methodName")) {
      methodName = _json["methodName"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (batchId != null) {
      _json["batchId"] = batchId;
    }
    if (inappproductsinsertrequest != null) {
      _json["inappproductsinsertrequest"] = (inappproductsinsertrequest).toJson();
    }
    if (inappproductsupdaterequest != null) {
      _json["inappproductsupdaterequest"] = (inappproductsupdaterequest).toJson();
    }
    if (methodName != null) {
      _json["methodName"] = methodName;
    }
    return _json;
  }
}


/** Not documented yet. */
class InappproductsBatchResponse {
  /** Not documented yet. */
  core.List<InappproductsBatchResponseEntry> entrys;

  /**
   * Identifies what kind of resource this is. Value: the fixed string
   * "androidpublisher#inappproductsBatchResponse".
   */
  core.String kind;


  InappproductsBatchResponse();

  InappproductsBatchResponse.fromJson(core.Map _json) {
    if (_json.containsKey("entrys")) {
      entrys = _json["entrys"].map((value) => new InappproductsBatchResponseEntry.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (entrys != null) {
      _json["entrys"] = entrys.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    return _json;
  }
}


/** Not documented yet. */
class InappproductsBatchResponseEntry {
  /** Not documented yet. */
  core.int batchId;

  /** Not documented yet. */
  InappproductsInsertResponse inappproductsinsertresponse;

  /** Not documented yet. */
  InappproductsUpdateResponse inappproductsupdateresponse;


  InappproductsBatchResponseEntry();

  InappproductsBatchResponseEntry.fromJson(core.Map _json) {
    if (_json.containsKey("batchId")) {
      batchId = _json["batchId"];
    }
    if (_json.containsKey("inappproductsinsertresponse")) {
      inappproductsinsertresponse = new InappproductsInsertResponse.fromJson(_json["inappproductsinsertresponse"]);
    }
    if (_json.containsKey("inappproductsupdateresponse")) {
      inappproductsupdateresponse = new InappproductsUpdateResponse.fromJson(_json["inappproductsupdateresponse"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (batchId != null) {
      _json["batchId"] = batchId;
    }
    if (inappproductsinsertresponse != null) {
      _json["inappproductsinsertresponse"] = (inappproductsinsertresponse).toJson();
    }
    if (inappproductsupdateresponse != null) {
      _json["inappproductsupdateresponse"] = (inappproductsupdateresponse).toJson();
    }
    return _json;
  }
}


/** Not documented yet. */
class InappproductsInsertRequest {
  /** Not documented yet. */
  InAppProduct inappproduct;


  InappproductsInsertRequest();

  InappproductsInsertRequest.fromJson(core.Map _json) {
    if (_json.containsKey("inappproduct")) {
      inappproduct = new InAppProduct.fromJson(_json["inappproduct"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (inappproduct != null) {
      _json["inappproduct"] = (inappproduct).toJson();
    }
    return _json;
  }
}


/** Not documented yet. */
class InappproductsInsertResponse {
  /** Not documented yet. */
  InAppProduct inappproduct;


  InappproductsInsertResponse();

  InappproductsInsertResponse.fromJson(core.Map _json) {
    if (_json.containsKey("inappproduct")) {
      inappproduct = new InAppProduct.fromJson(_json["inappproduct"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (inappproduct != null) {
      _json["inappproduct"] = (inappproduct).toJson();
    }
    return _json;
  }
}


/** Not documented yet. */
class InappproductsListResponse {
  /** Not documented yet. */
  core.List<InAppProduct> inappproduct;

  /**
   * Identifies what kind of resource this is. Value: the fixed string
   * "androidpublisher#inappproductsListResponse".
   */
  core.String kind;

  /** Not documented yet. */
  PageInfo pageInfo;

  /** Not documented yet. */
  TokenPagination tokenPagination;


  InappproductsListResponse();

  InappproductsListResponse.fromJson(core.Map _json) {
    if (_json.containsKey("inappproduct")) {
      inappproduct = _json["inappproduct"].map((value) => new InAppProduct.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("pageInfo")) {
      pageInfo = new PageInfo.fromJson(_json["pageInfo"]);
    }
    if (_json.containsKey("tokenPagination")) {
      tokenPagination = new TokenPagination.fromJson(_json["tokenPagination"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (inappproduct != null) {
      _json["inappproduct"] = inappproduct.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (pageInfo != null) {
      _json["pageInfo"] = (pageInfo).toJson();
    }
    if (tokenPagination != null) {
      _json["tokenPagination"] = (tokenPagination).toJson();
    }
    return _json;
  }
}


/** Not documented yet. */
class InappproductsUpdateRequest {
  /** Not documented yet. */
  InAppProduct inappproduct;


  InappproductsUpdateRequest();

  InappproductsUpdateRequest.fromJson(core.Map _json) {
    if (_json.containsKey("inappproduct")) {
      inappproduct = new InAppProduct.fromJson(_json["inappproduct"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (inappproduct != null) {
      _json["inappproduct"] = (inappproduct).toJson();
    }
    return _json;
  }
}


/** Not documented yet. */
class InappproductsUpdateResponse {
  /** Not documented yet. */
  InAppProduct inappproduct;


  InappproductsUpdateResponse();

  InappproductsUpdateResponse.fromJson(core.Map _json) {
    if (_json.containsKey("inappproduct")) {
      inappproduct = new InAppProduct.fromJson(_json["inappproduct"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (inappproduct != null) {
      _json["inappproduct"] = (inappproduct).toJson();
    }
    return _json;
  }
}


/** Not documented yet. */
class Listing {
  /**
   * Full description of the app; this may be up to 4000 characters in length.
   */
  core.String fullDescription;

  /** Language localization code (for example, "de-AT" for Austrian German). */
  core.String language;

  /**
   * Short description of the app (previously known as promo text); this may be
   * up to 80 characters in length.
   */
  core.String shortDescription;

  /** App's localized title. */
  core.String title;

  /** URL of a promotional YouTube video for the app. */
  core.String video;


  Listing();

  Listing.fromJson(core.Map _json) {
    if (_json.containsKey("fullDescription")) {
      fullDescription = _json["fullDescription"];
    }
    if (_json.containsKey("language")) {
      language = _json["language"];
    }
    if (_json.containsKey("shortDescription")) {
      shortDescription = _json["shortDescription"];
    }
    if (_json.containsKey("title")) {
      title = _json["title"];
    }
    if (_json.containsKey("video")) {
      video = _json["video"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (fullDescription != null) {
      _json["fullDescription"] = fullDescription;
    }
    if (language != null) {
      _json["language"] = language;
    }
    if (shortDescription != null) {
      _json["shortDescription"] = shortDescription;
    }
    if (title != null) {
      _json["title"] = title;
    }
    if (video != null) {
      _json["video"] = video;
    }
    return _json;
  }
}


/** Not documented yet. */
class ListingsListResponse {
  /**
   * Identifies what kind of resource this is. Value: the fixed string
   * "androidpublisher#listingsListResponse".
   */
  core.String kind;

  /** Not documented yet. */
  core.List<Listing> listings;


  ListingsListResponse();

  ListingsListResponse.fromJson(core.Map _json) {
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("listings")) {
      listings = _json["listings"].map((value) => new Listing.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (listings != null) {
      _json["listings"] = listings.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}


/** Not documented yet. */
class MonthDay {
  /**
   * Day of a month, value in [1, 31] range. Valid range depends on the
   * specified month.
   */
  core.int day;

  /** Month of a year. e.g. 1 = JAN, 2 = FEB etc. */
  core.int month;


  MonthDay();

  MonthDay.fromJson(core.Map _json) {
    if (_json.containsKey("day")) {
      day = _json["day"];
    }
    if (_json.containsKey("month")) {
      month = _json["month"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (day != null) {
      _json["day"] = day;
    }
    if (month != null) {
      _json["month"] = month;
    }
    return _json;
  }
}


/** Not documented yet. */
class PageInfo {
  /** Not documented yet. */
  core.int resultPerPage;

  /** Not documented yet. */
  core.int startIndex;

  /** Not documented yet. */
  core.int totalResults;


  PageInfo();

  PageInfo.fromJson(core.Map _json) {
    if (_json.containsKey("resultPerPage")) {
      resultPerPage = _json["resultPerPage"];
    }
    if (_json.containsKey("startIndex")) {
      startIndex = _json["startIndex"];
    }
    if (_json.containsKey("totalResults")) {
      totalResults = _json["totalResults"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (resultPerPage != null) {
      _json["resultPerPage"] = resultPerPage;
    }
    if (startIndex != null) {
      _json["startIndex"] = startIndex;
    }
    if (totalResults != null) {
      _json["totalResults"] = totalResults;
    }
    return _json;
  }
}


/** Not documented yet. */
class Price {
  /** 3 letter Currency code, as defined by ISO 4217. */
  core.String currency;

  /**
   * The price in millionths of the currency base unit represented as a string.
   */
  core.String priceMicros;


  Price();

  Price.fromJson(core.Map _json) {
    if (_json.containsKey("currency")) {
      currency = _json["currency"];
    }
    if (_json.containsKey("priceMicros")) {
      priceMicros = _json["priceMicros"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (currency != null) {
      _json["currency"] = currency;
    }
    if (priceMicros != null) {
      _json["priceMicros"] = priceMicros;
    }
    return _json;
  }
}


/**
 * A ProductPurchase resource indicates the status of a user's inapp product
 * purchase.
 */
class ProductPurchase {
  /**
   * The consumption state of the inapp product. Possible values are:
   * - Yet to be consumed
   * - Consumed
   */
  core.int consumptionState;

  /**
   * A developer-specified string that contains supplemental information about
   * an order.
   */
  core.String developerPayload;

  /**
   * This kind represents an inappPurchase object in the androidpublisher
   * service.
   */
  core.String kind;

  /**
   * The purchase state of the order. Possible values are:
   * - Purchased
   * - Cancelled
   */
  core.int purchaseState;

  /**
   * The time the product was purchased, in milliseconds since the epoch (Jan 1,
   * 1970).
   */
  core.String purchaseTimeMillis;


  ProductPurchase();

  ProductPurchase.fromJson(core.Map _json) {
    if (_json.containsKey("consumptionState")) {
      consumptionState = _json["consumptionState"];
    }
    if (_json.containsKey("developerPayload")) {
      developerPayload = _json["developerPayload"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("purchaseState")) {
      purchaseState = _json["purchaseState"];
    }
    if (_json.containsKey("purchaseTimeMillis")) {
      purchaseTimeMillis = _json["purchaseTimeMillis"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (consumptionState != null) {
      _json["consumptionState"] = consumptionState;
    }
    if (developerPayload != null) {
      _json["developerPayload"] = developerPayload;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (purchaseState != null) {
      _json["purchaseState"] = purchaseState;
    }
    if (purchaseTimeMillis != null) {
      _json["purchaseTimeMillis"] = purchaseTimeMillis;
    }
    return _json;
  }
}


/** Not documented yet. */
class Season {
  /** Inclusive end date of the recurrence period. */
  MonthDay end;

  /** Inclusive start date of the recurrence period. */
  MonthDay start;


  Season();

  Season.fromJson(core.Map _json) {
    if (_json.containsKey("end")) {
      end = new MonthDay.fromJson(_json["end"]);
    }
    if (_json.containsKey("start")) {
      start = new MonthDay.fromJson(_json["start"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (end != null) {
      _json["end"] = (end).toJson();
    }
    if (start != null) {
      _json["start"] = (start).toJson();
    }
    return _json;
  }
}


/**
 * A SubscriptionDeferralInfo contains the data needed to defer a subscription
 * purchase to a future expiry time.
 */
class SubscriptionDeferralInfo {
  /**
   * The desired next expiry time for the subscription in milliseconds since
   * Epoch. The given time must be after the current expiry time for the
   * subscription.
   */
  core.String desiredExpiryTimeMillis;

  /**
   * The expected expiry time for the subscription. If the current expiry time
   * for the subscription is not the value specified here, the deferral will not
   * occur.
   */
  core.String expectedExpiryTimeMillis;


  SubscriptionDeferralInfo();

  SubscriptionDeferralInfo.fromJson(core.Map _json) {
    if (_json.containsKey("desiredExpiryTimeMillis")) {
      desiredExpiryTimeMillis = _json["desiredExpiryTimeMillis"];
    }
    if (_json.containsKey("expectedExpiryTimeMillis")) {
      expectedExpiryTimeMillis = _json["expectedExpiryTimeMillis"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (desiredExpiryTimeMillis != null) {
      _json["desiredExpiryTimeMillis"] = desiredExpiryTimeMillis;
    }
    if (expectedExpiryTimeMillis != null) {
      _json["expectedExpiryTimeMillis"] = expectedExpiryTimeMillis;
    }
    return _json;
  }
}


/**
 * A SubscriptionPurchase resource indicates the status of a user's subscription
 * purchase.
 */
class SubscriptionPurchase {
  /**
   * Whether the subscription will automatically be renewed when it reaches its
   * current expiry time.
   */
  core.bool autoRenewing;

  /**
   * Time at which the subscription will expire, in milliseconds since Epoch.
   */
  core.String expiryTimeMillis;

  /**
   * This kind represents a subscriptionPurchase object in the androidpublisher
   * service.
   */
  core.String kind;

  /**
   * Time at which the subscription was granted, in milliseconds since Epoch.
   */
  core.String startTimeMillis;


  SubscriptionPurchase();

  SubscriptionPurchase.fromJson(core.Map _json) {
    if (_json.containsKey("autoRenewing")) {
      autoRenewing = _json["autoRenewing"];
    }
    if (_json.containsKey("expiryTimeMillis")) {
      expiryTimeMillis = _json["expiryTimeMillis"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("startTimeMillis")) {
      startTimeMillis = _json["startTimeMillis"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (autoRenewing != null) {
      _json["autoRenewing"] = autoRenewing;
    }
    if (expiryTimeMillis != null) {
      _json["expiryTimeMillis"] = expiryTimeMillis;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (startTimeMillis != null) {
      _json["startTimeMillis"] = startTimeMillis;
    }
    return _json;
  }
}


/** Not documented yet. */
class SubscriptionPurchasesDeferRequest {
  /**
   * The information about the new desired expiry time for the subscription.
   */
  SubscriptionDeferralInfo deferralInfo;


  SubscriptionPurchasesDeferRequest();

  SubscriptionPurchasesDeferRequest.fromJson(core.Map _json) {
    if (_json.containsKey("deferralInfo")) {
      deferralInfo = new SubscriptionDeferralInfo.fromJson(_json["deferralInfo"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (deferralInfo != null) {
      _json["deferralInfo"] = (deferralInfo).toJson();
    }
    return _json;
  }
}


/** Not documented yet. */
class SubscriptionPurchasesDeferResponse {
  /**
   * The new expiry time for the subscription in milliseconds since the Epoch.
   */
  core.String newExpiryTimeMillis;


  SubscriptionPurchasesDeferResponse();

  SubscriptionPurchasesDeferResponse.fromJson(core.Map _json) {
    if (_json.containsKey("newExpiryTimeMillis")) {
      newExpiryTimeMillis = _json["newExpiryTimeMillis"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (newExpiryTimeMillis != null) {
      _json["newExpiryTimeMillis"] = newExpiryTimeMillis;
    }
    return _json;
  }
}


/** Not documented yet. */
class Testers {
  /** Not documented yet. */
  core.List<core.String> googleGroups;

  /** Not documented yet. */
  core.List<core.String> googlePlusCommunities;


  Testers();

  Testers.fromJson(core.Map _json) {
    if (_json.containsKey("googleGroups")) {
      googleGroups = _json["googleGroups"];
    }
    if (_json.containsKey("googlePlusCommunities")) {
      googlePlusCommunities = _json["googlePlusCommunities"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (googleGroups != null) {
      _json["googleGroups"] = googleGroups;
    }
    if (googlePlusCommunities != null) {
      _json["googlePlusCommunities"] = googlePlusCommunities;
    }
    return _json;
  }
}


/** Not documented yet. */
class TokenPagination {
  /** Not documented yet. */
  core.String nextPageToken;

  /** Not documented yet. */
  core.String previousPageToken;


  TokenPagination();

  TokenPagination.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("previousPageToken")) {
      previousPageToken = _json["previousPageToken"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (previousPageToken != null) {
      _json["previousPageToken"] = previousPageToken;
    }
    return _json;
  }
}


/** Not documented yet. */
class Track {
  /** Not documented yet. */
  core.String track;

  /** Not documented yet. */
  core.double userFraction;

  /** Not documented yet. */
  core.List<core.int> versionCodes;


  Track();

  Track.fromJson(core.Map _json) {
    if (_json.containsKey("track")) {
      track = _json["track"];
    }
    if (_json.containsKey("userFraction")) {
      userFraction = _json["userFraction"];
    }
    if (_json.containsKey("versionCodes")) {
      versionCodes = _json["versionCodes"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (track != null) {
      _json["track"] = track;
    }
    if (userFraction != null) {
      _json["userFraction"] = userFraction;
    }
    if (versionCodes != null) {
      _json["versionCodes"] = versionCodes;
    }
    return _json;
  }
}


/** Not documented yet. */
class TracksListResponse {
  /**
   * Identifies what kind of resource this is. Value: the fixed string
   * "androidpublisher#tracksListResponse".
   */
  core.String kind;

  /** Not documented yet. */
  core.List<Track> tracks;


  TracksListResponse();

  TracksListResponse.fromJson(core.Map _json) {
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("tracks")) {
      tracks = _json["tracks"].map((value) => new Track.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (tracks != null) {
      _json["tracks"] = tracks.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}


