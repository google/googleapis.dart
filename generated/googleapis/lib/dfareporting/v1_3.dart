library googleapis.dfareporting.v1_3;

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

/** Lets you create, run and download reports. */
class DfareportingApi {
  /** View and manage DoubleClick for Advertisers reports */
  static const DfareportingScope = "https://www.googleapis.com/auth/dfareporting";


  final common_internal.ApiRequester _requester;

  DimensionValuesResourceApi get dimensionValues => new DimensionValuesResourceApi(_requester);
  FilesResourceApi get files => new FilesResourceApi(_requester);
  ReportsResourceApi get reports => new ReportsResourceApi(_requester);
  UserProfilesResourceApi get userProfiles => new UserProfilesResourceApi(_requester);

  DfareportingApi(http.Client client, {core.String rootUrl: "https://www.googleapis.com/", core.String servicePath: "dfareporting/v1.3/"}) :
      _requester = new common_internal.ApiRequester(client, rootUrl, servicePath);
}


/** Not documented yet. */
class DimensionValuesResourceApi {
  final common_internal.ApiRequester _requester;

  DimensionValuesResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Retrieves list of report dimension values for a list of filters.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [profileId] - The DFA user profile ID.
   *
   * [maxResults] - Maximum number of results to return.
   * Value must be between "0" and "100".
   *
   * [pageToken] - The value of the nextToken from the previous result page.
   *
   * Completes with a [DimensionValueList].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<DimensionValueList> query(DimensionValueRequest request, core.String profileId, {core.int maxResults, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (profileId == null) {
      throw new core.ArgumentError("Parameter profileId is required.");
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }


    _url = 'userprofiles/' + common_internal.Escaper.ecapeVariable('$profileId') + '/dimensionvalues/query';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new DimensionValueList.fromJson(data));
  }

}


/** Not documented yet. */
class FilesResourceApi {
  final common_internal.ApiRequester _requester;

  FilesResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Retrieves a report file by its report ID and file ID.
   *
   * Request parameters:
   *
   * [reportId] - The ID of the report.
   *
   * [fileId] - The ID of the report file.
   *
   * [downloadOptions] - Options for downloading. A download can be either a
   * Metadata (default) or Media download. Partial Media downloads are possible
   * as well.
   *
   * Completes with a
   *
   * - [File] for Metadata downloads (see [downloadOptions]).
   *
   * - [common.Media] for Media downloads (see [downloadOptions]).
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future get(core.String reportId, core.String fileId, {common.DownloadOptions downloadOptions: common.DownloadOptions.Metadata}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (reportId == null) {
      throw new core.ArgumentError("Parameter reportId is required.");
    }
    if (fileId == null) {
      throw new core.ArgumentError("Parameter fileId is required.");
    }

    _downloadOptions = downloadOptions;

    _url = 'reports/' + common_internal.Escaper.ecapeVariable('$reportId') + '/files/' + common_internal.Escaper.ecapeVariable('$fileId');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    if (_downloadOptions == null ||
        _downloadOptions == common.DownloadOptions.Metadata) {
      return _response.then((data) => new File.fromJson(data));
    } else {
      return _response;
    }
  }

  /**
   * Lists files for a user profile.
   *
   * Request parameters:
   *
   * [profileId] - The DFA profile ID.
   *
   * [maxResults] - Maximum number of results to return.
   * Value must be between "0" and "10".
   *
   * [pageToken] - The value of the nextToken from the previous result page.
   *
   * [scope] - The scope that defines which results are returned, default is
   * 'MINE'.
   * Possible string values are:
   * - "ALL" : All files in account.
   * - "MINE" : My files.
   * - "SHARED_WITH_ME" : Files shared with me.
   *
   * [sortField] - The field by which to sort the list.
   * Possible string values are:
   * - "ID" : Sort by file ID.
   * - "LAST_MODIFIED_TIME" : Sort by 'lastmodifiedAt' field.
   *
   * [sortOrder] - Order of sorted results, default is 'DESCENDING'.
   * Possible string values are:
   * - "ASCENDING" : Ascending order.
   * - "DESCENDING" : Descending order.
   *
   * Completes with a [FileList].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<FileList> list(core.String profileId, {core.int maxResults, core.String pageToken, core.String scope, core.String sortField, core.String sortOrder}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (profileId == null) {
      throw new core.ArgumentError("Parameter profileId is required.");
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (scope != null) {
      _queryParams["scope"] = [scope];
    }
    if (sortField != null) {
      _queryParams["sortField"] = [sortField];
    }
    if (sortOrder != null) {
      _queryParams["sortOrder"] = [sortOrder];
    }


    _url = 'userprofiles/' + common_internal.Escaper.ecapeVariable('$profileId') + '/files';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new FileList.fromJson(data));
  }

}


/** Not documented yet. */
class ReportsResourceApi {
  final common_internal.ApiRequester _requester;

  ReportsCompatibleFieldsResourceApi get compatibleFields => new ReportsCompatibleFieldsResourceApi(_requester);
  ReportsFilesResourceApi get files => new ReportsFilesResourceApi(_requester);

  ReportsResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Deletes a report by its ID.
   *
   * Request parameters:
   *
   * [profileId] - The DFA user profile ID.
   *
   * [reportId] - The ID of the report.
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future delete(core.String profileId, core.String reportId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (profileId == null) {
      throw new core.ArgumentError("Parameter profileId is required.");
    }
    if (reportId == null) {
      throw new core.ArgumentError("Parameter reportId is required.");
    }

    _downloadOptions = null;

    _url = 'userprofiles/' + common_internal.Escaper.ecapeVariable('$profileId') + '/reports/' + common_internal.Escaper.ecapeVariable('$reportId');

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
   * Retrieves a report by its ID.
   *
   * Request parameters:
   *
   * [profileId] - The DFA user profile ID.
   *
   * [reportId] - The ID of the report.
   *
   * Completes with a [Report].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Report> get(core.String profileId, core.String reportId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (profileId == null) {
      throw new core.ArgumentError("Parameter profileId is required.");
    }
    if (reportId == null) {
      throw new core.ArgumentError("Parameter reportId is required.");
    }


    _url = 'userprofiles/' + common_internal.Escaper.ecapeVariable('$profileId') + '/reports/' + common_internal.Escaper.ecapeVariable('$reportId');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Report.fromJson(data));
  }

  /**
   * Creates a report.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [profileId] - The DFA user profile ID.
   *
   * Completes with a [Report].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Report> insert(Report request, core.String profileId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (profileId == null) {
      throw new core.ArgumentError("Parameter profileId is required.");
    }


    _url = 'userprofiles/' + common_internal.Escaper.ecapeVariable('$profileId') + '/reports';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Report.fromJson(data));
  }

  /**
   * Retrieves list of reports.
   *
   * Request parameters:
   *
   * [profileId] - The DFA user profile ID.
   *
   * [maxResults] - Maximum number of results to return.
   * Value must be between "0" and "10".
   *
   * [pageToken] - The value of the nextToken from the previous result page.
   *
   * [scope] - The scope that defines which results are returned, default is
   * 'MINE'.
   * Possible string values are:
   * - "ALL" : All reports in account.
   * - "MINE" : My reports.
   *
   * [sortField] - The field by which to sort the list.
   * Possible string values are:
   * - "ID" : Sort by report ID.
   * - "LAST_MODIFIED_TIME" : Sort by 'lastModifiedTime' field.
   * - "NAME" : Sort by name of reports.
   *
   * [sortOrder] - Order of sorted results, default is 'DESCENDING'.
   * Possible string values are:
   * - "ASCENDING" : Ascending order.
   * - "DESCENDING" : Descending order.
   *
   * Completes with a [ReportList].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<ReportList> list(core.String profileId, {core.int maxResults, core.String pageToken, core.String scope, core.String sortField, core.String sortOrder}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (profileId == null) {
      throw new core.ArgumentError("Parameter profileId is required.");
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (scope != null) {
      _queryParams["scope"] = [scope];
    }
    if (sortField != null) {
      _queryParams["sortField"] = [sortField];
    }
    if (sortOrder != null) {
      _queryParams["sortOrder"] = [sortOrder];
    }


    _url = 'userprofiles/' + common_internal.Escaper.ecapeVariable('$profileId') + '/reports';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ReportList.fromJson(data));
  }

  /**
   * Updates a report. This method supports patch semantics.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [profileId] - The DFA user profile ID.
   *
   * [reportId] - The ID of the report.
   *
   * Completes with a [Report].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Report> patch(Report request, core.String profileId, core.String reportId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (profileId == null) {
      throw new core.ArgumentError("Parameter profileId is required.");
    }
    if (reportId == null) {
      throw new core.ArgumentError("Parameter reportId is required.");
    }


    _url = 'userprofiles/' + common_internal.Escaper.ecapeVariable('$profileId') + '/reports/' + common_internal.Escaper.ecapeVariable('$reportId');

    var _response = _requester.request(_url,
                                       "PATCH",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Report.fromJson(data));
  }

  /**
   * Runs a report.
   *
   * Request parameters:
   *
   * [profileId] - The DFA profile ID.
   *
   * [reportId] - The ID of the report.
   *
   * [synchronous] - If set and true, tries to run the report synchronously.
   *
   * Completes with a [File].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<File> run(core.String profileId, core.String reportId, {core.bool synchronous}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (profileId == null) {
      throw new core.ArgumentError("Parameter profileId is required.");
    }
    if (reportId == null) {
      throw new core.ArgumentError("Parameter reportId is required.");
    }
    if (synchronous != null) {
      _queryParams["synchronous"] = ["${synchronous}"];
    }


    _url = 'userprofiles/' + common_internal.Escaper.ecapeVariable('$profileId') + '/reports/' + common_internal.Escaper.ecapeVariable('$reportId') + '/run';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new File.fromJson(data));
  }

  /**
   * Updates a report.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [profileId] - The DFA user profile ID.
   *
   * [reportId] - The ID of the report.
   *
   * Completes with a [Report].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Report> update(Report request, core.String profileId, core.String reportId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (profileId == null) {
      throw new core.ArgumentError("Parameter profileId is required.");
    }
    if (reportId == null) {
      throw new core.ArgumentError("Parameter reportId is required.");
    }


    _url = 'userprofiles/' + common_internal.Escaper.ecapeVariable('$profileId') + '/reports/' + common_internal.Escaper.ecapeVariable('$reportId');

    var _response = _requester.request(_url,
                                       "PUT",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Report.fromJson(data));
  }

}


/** Not documented yet. */
class ReportsCompatibleFieldsResourceApi {
  final common_internal.ApiRequester _requester;

  ReportsCompatibleFieldsResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Returns the fields that are compatible to be selected in the respective
   * sections of a report criteria, given the fields already selected in the
   * input report and user permissions.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [profileId] - The DFA user profile ID.
   *
   * Completes with a [CompatibleFields].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<CompatibleFields> query(Report request, core.String profileId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (profileId == null) {
      throw new core.ArgumentError("Parameter profileId is required.");
    }


    _url = 'userprofiles/' + common_internal.Escaper.ecapeVariable('$profileId') + '/reports/compatiblefields/query';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new CompatibleFields.fromJson(data));
  }

}


/** Not documented yet. */
class ReportsFilesResourceApi {
  final common_internal.ApiRequester _requester;

  ReportsFilesResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Retrieves a report file.
   *
   * Request parameters:
   *
   * [profileId] - The DFA profile ID.
   *
   * [reportId] - The ID of the report.
   *
   * [fileId] - The ID of the report file.
   *
   * [downloadOptions] - Options for downloading. A download can be either a
   * Metadata (default) or Media download. Partial Media downloads are possible
   * as well.
   *
   * Completes with a
   *
   * - [File] for Metadata downloads (see [downloadOptions]).
   *
   * - [common.Media] for Media downloads (see [downloadOptions]).
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future get(core.String profileId, core.String reportId, core.String fileId, {common.DownloadOptions downloadOptions: common.DownloadOptions.Metadata}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (profileId == null) {
      throw new core.ArgumentError("Parameter profileId is required.");
    }
    if (reportId == null) {
      throw new core.ArgumentError("Parameter reportId is required.");
    }
    if (fileId == null) {
      throw new core.ArgumentError("Parameter fileId is required.");
    }

    _downloadOptions = downloadOptions;

    _url = 'userprofiles/' + common_internal.Escaper.ecapeVariable('$profileId') + '/reports/' + common_internal.Escaper.ecapeVariable('$reportId') + '/files/' + common_internal.Escaper.ecapeVariable('$fileId');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    if (_downloadOptions == null ||
        _downloadOptions == common.DownloadOptions.Metadata) {
      return _response.then((data) => new File.fromJson(data));
    } else {
      return _response;
    }
  }

  /**
   * Lists files for a report.
   *
   * Request parameters:
   *
   * [profileId] - The DFA profile ID.
   *
   * [reportId] - The ID of the parent report.
   *
   * [maxResults] - Maximum number of results to return.
   * Value must be between "0" and "10".
   *
   * [pageToken] - The value of the nextToken from the previous result page.
   *
   * [sortField] - The field by which to sort the list.
   * Possible string values are:
   * - "ID" : Sort by file ID.
   * - "LAST_MODIFIED_TIME" : Sort by 'lastmodifiedAt' field.
   *
   * [sortOrder] - Order of sorted results, default is 'DESCENDING'.
   * Possible string values are:
   * - "ASCENDING" : Ascending order.
   * - "DESCENDING" : Descending order.
   *
   * Completes with a [FileList].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<FileList> list(core.String profileId, core.String reportId, {core.int maxResults, core.String pageToken, core.String sortField, core.String sortOrder}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (profileId == null) {
      throw new core.ArgumentError("Parameter profileId is required.");
    }
    if (reportId == null) {
      throw new core.ArgumentError("Parameter reportId is required.");
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (sortField != null) {
      _queryParams["sortField"] = [sortField];
    }
    if (sortOrder != null) {
      _queryParams["sortOrder"] = [sortOrder];
    }


    _url = 'userprofiles/' + common_internal.Escaper.ecapeVariable('$profileId') + '/reports/' + common_internal.Escaper.ecapeVariable('$reportId') + '/files';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new FileList.fromJson(data));
  }

}


/** Not documented yet. */
class UserProfilesResourceApi {
  final common_internal.ApiRequester _requester;

  UserProfilesResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Gets one user profile by ID.
   *
   * Request parameters:
   *
   * [profileId] - The user profile ID.
   *
   * Completes with a [UserProfile].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<UserProfile> get(core.String profileId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (profileId == null) {
      throw new core.ArgumentError("Parameter profileId is required.");
    }


    _url = 'userprofiles/' + common_internal.Escaper.ecapeVariable('$profileId');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new UserProfile.fromJson(data));
  }

  /**
   * Retrieves list of user profiles for a user.
   *
   * Request parameters:
   *
   * Completes with a [UserProfileList].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<UserProfileList> list() {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;



    _url = 'userprofiles';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new UserProfileList.fromJson(data));
  }

}



/** Represents an activity group. */
class Activities {
  /**
   * List of activity filters. The dimension values need to be all either of
   * type "dfa:activity" or "dfa:activityGroup".
   */
  core.List<DimensionValue> filters;

  /** The kind of resource this is, in this case dfareporting#activities. */
  core.String kind;

  /** List of names of floodlight activity metrics. */
  core.List<core.String> metricNames;


  Activities();

  Activities.fromJson(core.Map _json) {
    if (_json.containsKey("filters")) {
      filters = _json["filters"].map((value) => new DimensionValue.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("metricNames")) {
      metricNames = _json["metricNames"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (filters != null) {
      _json["filters"] = filters.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (metricNames != null) {
      _json["metricNames"] = metricNames;
    }
    return _json;
  }
}


/** Represents a response to the queryCompatibleFields method. */
class CompatibleFields {
  /**
   * Contains items that are compatible to be selected for a report of type
   * "CROSS_DIMENSION_REACH".
   */
  CrossDimensionReachReportCompatibleFields crossDimensionReachReportCompatibleFields;

  /**
   * Contains items that are compatible to be selected for a report of type
   * "FLOODLIGHT".
   */
  FloodlightReportCompatibleFields floodlightReportCompatibleFields;

  /**
   * The kind of resource this is, in this case dfareporting#compatibleFields.
   */
  core.String kind;

  /**
   * Contains items that are compatible to be selected for a report of type
   * "PATH_TO_CONVERSION".
   */
  PathToConversionReportCompatibleFields pathToConversionReportCompatibleFields;

  /**
   * Contains items that are compatible to be selected for a report of type
   * "REACH".
   */
  ReachReportCompatibleFields reachReportCompatibleFields;

  /**
   * Contains items that are compatible to be selected for a report of type
   * "STANDARD".
   */
  ReportCompatibleFields reportCompatibleFields;


  CompatibleFields();

  CompatibleFields.fromJson(core.Map _json) {
    if (_json.containsKey("crossDimensionReachReportCompatibleFields")) {
      crossDimensionReachReportCompatibleFields = new CrossDimensionReachReportCompatibleFields.fromJson(_json["crossDimensionReachReportCompatibleFields"]);
    }
    if (_json.containsKey("floodlightReportCompatibleFields")) {
      floodlightReportCompatibleFields = new FloodlightReportCompatibleFields.fromJson(_json["floodlightReportCompatibleFields"]);
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("pathToConversionReportCompatibleFields")) {
      pathToConversionReportCompatibleFields = new PathToConversionReportCompatibleFields.fromJson(_json["pathToConversionReportCompatibleFields"]);
    }
    if (_json.containsKey("reachReportCompatibleFields")) {
      reachReportCompatibleFields = new ReachReportCompatibleFields.fromJson(_json["reachReportCompatibleFields"]);
    }
    if (_json.containsKey("reportCompatibleFields")) {
      reportCompatibleFields = new ReportCompatibleFields.fromJson(_json["reportCompatibleFields"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (crossDimensionReachReportCompatibleFields != null) {
      _json["crossDimensionReachReportCompatibleFields"] = (crossDimensionReachReportCompatibleFields).toJson();
    }
    if (floodlightReportCompatibleFields != null) {
      _json["floodlightReportCompatibleFields"] = (floodlightReportCompatibleFields).toJson();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (pathToConversionReportCompatibleFields != null) {
      _json["pathToConversionReportCompatibleFields"] = (pathToConversionReportCompatibleFields).toJson();
    }
    if (reachReportCompatibleFields != null) {
      _json["reachReportCompatibleFields"] = (reachReportCompatibleFields).toJson();
    }
    if (reportCompatibleFields != null) {
      _json["reportCompatibleFields"] = (reportCompatibleFields).toJson();
    }
    return _json;
  }
}


/**
 * Represents fields that are compatible to be selected for a report of type
 * "CROSS_DIMENSION_REACH".
 */
class CrossDimensionReachReportCompatibleFields {
  /**
   * Dimensions which are compatible to be selected in the "breakdown" section
   * of the report.
   */
  core.List<Dimension> breakdown;

  /**
   * Dimensions which are compatible to be selected in the "dimensionFilters"
   * section of the report.
   */
  core.List<Dimension> dimensionFilters;

  /**
   * The kind of resource this is, in this case
   * dfareporting#crossDimensionReachReportCompatibleFields.
   */
  core.String kind;

  /**
   * Metrics which are compatible to be selected in the "metricNames" section of
   * the report.
   */
  core.List<Metric> metrics;

  /**
   * Metrics which are compatible to be selected in the "overlapMetricNames"
   * section of the report.
   */
  core.List<Metric> overlapMetrics;


  CrossDimensionReachReportCompatibleFields();

  CrossDimensionReachReportCompatibleFields.fromJson(core.Map _json) {
    if (_json.containsKey("breakdown")) {
      breakdown = _json["breakdown"].map((value) => new Dimension.fromJson(value)).toList();
    }
    if (_json.containsKey("dimensionFilters")) {
      dimensionFilters = _json["dimensionFilters"].map((value) => new Dimension.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("metrics")) {
      metrics = _json["metrics"].map((value) => new Metric.fromJson(value)).toList();
    }
    if (_json.containsKey("overlapMetrics")) {
      overlapMetrics = _json["overlapMetrics"].map((value) => new Metric.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (breakdown != null) {
      _json["breakdown"] = breakdown.map((value) => (value).toJson()).toList();
    }
    if (dimensionFilters != null) {
      _json["dimensionFilters"] = dimensionFilters.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (metrics != null) {
      _json["metrics"] = metrics.map((value) => (value).toJson()).toList();
    }
    if (overlapMetrics != null) {
      _json["overlapMetrics"] = overlapMetrics.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}


/** Represents a Custom Rich Media Events group. */
class CustomRichMediaEvents {
  /**
   * List of custom rich media event IDs. Dimension values must be all of type
   * dfa:richMediaEventTypeIdAndName.
   */
  core.List<DimensionValue> filteredEventIds;

  /**
   * The kind of resource this is, in this case
   * dfareporting#customRichMediaEvents.
   */
  core.String kind;


  CustomRichMediaEvents();

  CustomRichMediaEvents.fromJson(core.Map _json) {
    if (_json.containsKey("filteredEventIds")) {
      filteredEventIds = _json["filteredEventIds"].map((value) => new DimensionValue.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (filteredEventIds != null) {
      _json["filteredEventIds"] = filteredEventIds.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    return _json;
  }
}


/** Represents a date range. */
class DateRange {
  /**
   * The end date of the date range, inclusive. A string of the format:
   * "yyyy-MM-dd".
   */
  core.DateTime endDate;

  /** The kind of resource this is, in this case dfareporting#dateRange. */
  core.String kind;

  /**
   * The date range relative to the date of when the report is run, one of:
   * - "TODAY"
   * - "YESTERDAY"
   * - "WEEK_TO_DATE"
   * - "MONTH_TO_DATE"
   * - "QUARTER_TO_DATE"
   * - "YEAR_TO_DATE"
   * - "PREVIOUS_WEEK"
   * - "PREVIOUS_MONTH"
   * - "PREVIOUS_QUARTER"
   * - "PREVIOUS_YEAR"
   * - "LAST_7_DAYS"
   * - "LAST_30_DAYS"
   * - "LAST_90_DAYS"
   * - "LAST_365_DAYS"
   * - "LAST_24_MONTHS"
   */
  core.String relativeDateRange;

  /**
   * The start date of the date range, inclusive. A string of the format:
   * "yyyy-MM-dd".
   */
  core.DateTime startDate;


  DateRange();

  DateRange.fromJson(core.Map _json) {
    if (_json.containsKey("endDate")) {
      endDate = core.DateTime.parse(_json["endDate"]);
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("relativeDateRange")) {
      relativeDateRange = _json["relativeDateRange"];
    }
    if (_json.containsKey("startDate")) {
      startDate = core.DateTime.parse(_json["startDate"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (endDate != null) {
      _json["endDate"] = "${(endDate).year.toString().padLeft(4, '0')}-${(endDate).month.toString().padLeft(2, '0')}-${(endDate).day.toString().padLeft(2, '0')}";
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (relativeDateRange != null) {
      _json["relativeDateRange"] = relativeDateRange;
    }
    if (startDate != null) {
      _json["startDate"] = "${(startDate).year.toString().padLeft(4, '0')}-${(startDate).month.toString().padLeft(2, '0')}-${(startDate).day.toString().padLeft(2, '0')}";
    }
    return _json;
  }
}


/** Represents a dimension. */
class Dimension {
  /** The kind of resource this is, in this case dfareporting#dimension. */
  core.String kind;

  /** The dimension name, e.g. dfa:advertiser */
  core.String name;


  Dimension();

  Dimension.fromJson(core.Map _json) {
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (name != null) {
      _json["name"] = name;
    }
    return _json;
  }
}


/** Represents a dimension filter. */
class DimensionFilter {
  /** The name of the dimension to filter. */
  core.String dimensionName;

  /**
   * The kind of resource this is, in this case dfareporting#dimensionFilter.
   */
  core.String kind;

  /** The value of the dimension to filter. */
  core.String value;


  DimensionFilter();

  DimensionFilter.fromJson(core.Map _json) {
    if (_json.containsKey("dimensionName")) {
      dimensionName = _json["dimensionName"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (dimensionName != null) {
      _json["dimensionName"] = dimensionName;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}


/** Represents a DimensionValue resource. */
class DimensionValue {
  /** The name of the dimension. */
  core.String dimensionName;

  /** The eTag of this response for caching purposes. */
  core.String etag;

  /** The ID associated with the value if available. */
  core.String id;

  /**
   * The kind of resource this is, in this case dfareporting#dimensionValue.
   */
  core.String kind;

  /**
   * Determines how the 'value' field is matched when filtering. One of:
   * - EXACT (default if not specified)
   * - CONTAINS
   * - BEGINS_WITH
   * - WILDCARD_EXPRESSION (allowing '*' as a placeholder for variable length
   * character sequences, it can be escaped with a backslash.)  Note, only paid
   * search dimensions ('dfa:paidSearch*') allow a matchType other than EXACT.
   */
  core.String matchType;

  /** The value of the dimension. */
  core.String value;


  DimensionValue();

  DimensionValue.fromJson(core.Map _json) {
    if (_json.containsKey("dimensionName")) {
      dimensionName = _json["dimensionName"];
    }
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("matchType")) {
      matchType = _json["matchType"];
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (dimensionName != null) {
      _json["dimensionName"] = dimensionName;
    }
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (matchType != null) {
      _json["matchType"] = matchType;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}


/** Represents the list of DimensionValue resources. */
class DimensionValueList {
  /** The eTag of this response for caching purposes. */
  core.String etag;

  /** The dimension values returned in this response. */
  core.List<DimensionValue> items;

  /**
   * The kind of list this is, in this case dfareporting#dimensionValueList.
   */
  core.String kind;

  /**
   * Continuation token used to page through dimension values. To retrieve the
   * next page of results, set the next request's "pageToken" to the value of
   * this field. The page token is only valid for a limited amount of time and
   * should not be persisted.
   */
  core.String nextPageToken;


  DimensionValueList();

  DimensionValueList.fromJson(core.Map _json) {
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("items")) {
      items = _json["items"].map((value) => new DimensionValue.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}


/** Represents a DimensionValuesRequest. */
class DimensionValueRequest {
  /** The name of the dimension for which values should be requested. */
  core.String dimensionName;

  /**
   * The end date of the date range for which to retrieve dimension values. A
   * string of the format: "yyyy-MM-dd".
   */
  core.DateTime endDate;

  /** The list of filters by which to filter values. The filters are ANDed. */
  core.List<DimensionFilter> filters;

  /**
   * The kind of request this is, in this case
   * dfareporting#dimensionValueRequest.
   */
  core.String kind;

  /**
   * The start date of the date range for which to retrieve dimension values. A
   * string of the format: "yyyy-MM-dd".
   */
  core.DateTime startDate;


  DimensionValueRequest();

  DimensionValueRequest.fromJson(core.Map _json) {
    if (_json.containsKey("dimensionName")) {
      dimensionName = _json["dimensionName"];
    }
    if (_json.containsKey("endDate")) {
      endDate = core.DateTime.parse(_json["endDate"]);
    }
    if (_json.containsKey("filters")) {
      filters = _json["filters"].map((value) => new DimensionFilter.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("startDate")) {
      startDate = core.DateTime.parse(_json["startDate"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (dimensionName != null) {
      _json["dimensionName"] = dimensionName;
    }
    if (endDate != null) {
      _json["endDate"] = "${(endDate).year.toString().padLeft(4, '0')}-${(endDate).month.toString().padLeft(2, '0')}-${(endDate).day.toString().padLeft(2, '0')}";
    }
    if (filters != null) {
      _json["filters"] = filters.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (startDate != null) {
      _json["startDate"] = "${(startDate).year.toString().padLeft(4, '0')}-${(startDate).month.toString().padLeft(2, '0')}-${(startDate).day.toString().padLeft(2, '0')}";
    }
    return _json;
  }
}


/** The urls where the completed report file can be downloaded. */
class FileUrls {
  /** The url for downloading the report data through the API. */
  core.String apiUrl;

  /** The url for downloading the report data through a browser. */
  core.String browserUrl;


  FileUrls();

  FileUrls.fromJson(core.Map _json) {
    if (_json.containsKey("apiUrl")) {
      apiUrl = _json["apiUrl"];
    }
    if (_json.containsKey("browserUrl")) {
      browserUrl = _json["browserUrl"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (apiUrl != null) {
      _json["apiUrl"] = apiUrl;
    }
    if (browserUrl != null) {
      _json["browserUrl"] = browserUrl;
    }
    return _json;
  }
}


/**
 * Represents a File resource. A File contains the meta-data for a report run.
 * It shows the status of the run and holds the urls to the generated report
 * data if the run is finished and the status is "REPORT_AVAILABLE".
 */
class File {
  /**
   * The date range for which the file has report data. The date range will
   * always be the absolute date range for which the report is run.
   */
  DateRange dateRange;

  /** The eTag of this response for caching purposes. */
  core.String etag;

  /** The file name of the file. */
  core.String fileName;

  /**
   * The output format of the report. Only available once the file is available.
   */
  core.String format;

  /** The unique ID of this report file. */
  core.String id;

  /** The kind of resource this is, in this case dfareporting#file. */
  core.String kind;

  /**
   * The timestamp in milliseconds since epoch when this file was last modified.
   */
  core.String lastModifiedTime;

  /** The ID of the report this file was generated from. */
  core.String reportId;

  /**
   * The status of the report file, one of:
   * - "PROCESSING"
   * - "REPORT_AVAILABLE"
   * - "FAILED"
   * - "CANCELLED"
   */
  core.String status;

  /** The urls where the completed report file can be downloaded. */
  FileUrls urls;


  File();

  File.fromJson(core.Map _json) {
    if (_json.containsKey("dateRange")) {
      dateRange = new DateRange.fromJson(_json["dateRange"]);
    }
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("fileName")) {
      fileName = _json["fileName"];
    }
    if (_json.containsKey("format")) {
      format = _json["format"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("lastModifiedTime")) {
      lastModifiedTime = _json["lastModifiedTime"];
    }
    if (_json.containsKey("reportId")) {
      reportId = _json["reportId"];
    }
    if (_json.containsKey("status")) {
      status = _json["status"];
    }
    if (_json.containsKey("urls")) {
      urls = new FileUrls.fromJson(_json["urls"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (dateRange != null) {
      _json["dateRange"] = (dateRange).toJson();
    }
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (fileName != null) {
      _json["fileName"] = fileName;
    }
    if (format != null) {
      _json["format"] = format;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (lastModifiedTime != null) {
      _json["lastModifiedTime"] = lastModifiedTime;
    }
    if (reportId != null) {
      _json["reportId"] = reportId;
    }
    if (status != null) {
      _json["status"] = status;
    }
    if (urls != null) {
      _json["urls"] = (urls).toJson();
    }
    return _json;
  }
}


/** Represents the list of File resources. */
class FileList {
  /** The eTag of this response for caching purposes. */
  core.String etag;

  /** The files returned in this response. */
  core.List<File> items;

  /** The kind of list this is, in this case dfareporting#fileList. */
  core.String kind;

  /**
   * Continuation token used to page through files. To retrieve the next page of
   * results, set the next request's "pageToken" to the value of this field. The
   * page token is only valid for a limited amount of time and should not be
   * persisted.
   */
  core.String nextPageToken;


  FileList();

  FileList.fromJson(core.Map _json) {
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("items")) {
      items = _json["items"].map((value) => new File.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}


/**
 * Represents fields that are compatible to be selected for a report of type
 * "FlOODLIGHT".
 */
class FloodlightReportCompatibleFields {
  /**
   * Dimensions which are compatible to be selected in the "dimensionFilters"
   * section of the report.
   */
  core.List<Dimension> dimensionFilters;

  /**
   * Dimensions which are compatible to be selected in the "dimensions" section
   * of the report.
   */
  core.List<Dimension> dimensions;

  /**
   * The kind of resource this is, in this case
   * dfareporting#floodlightReportCompatibleFields.
   */
  core.String kind;

  /**
   * Metrics which are compatible to be selected in the "metricNames" section of
   * the report.
   */
  core.List<Metric> metrics;


  FloodlightReportCompatibleFields();

  FloodlightReportCompatibleFields.fromJson(core.Map _json) {
    if (_json.containsKey("dimensionFilters")) {
      dimensionFilters = _json["dimensionFilters"].map((value) => new Dimension.fromJson(value)).toList();
    }
    if (_json.containsKey("dimensions")) {
      dimensions = _json["dimensions"].map((value) => new Dimension.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("metrics")) {
      metrics = _json["metrics"].map((value) => new Metric.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (dimensionFilters != null) {
      _json["dimensionFilters"] = dimensionFilters.map((value) => (value).toJson()).toList();
    }
    if (dimensions != null) {
      _json["dimensions"] = dimensions.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (metrics != null) {
      _json["metrics"] = metrics.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}


/** Represents a metric. */
class Metric {
  /** The kind of resource this is, in this case dfareporting#metric. */
  core.String kind;

  /** The metric name, e.g. dfa:impressions */
  core.String name;


  Metric();

  Metric.fromJson(core.Map _json) {
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (name != null) {
      _json["name"] = name;
    }
    return _json;
  }
}


/**
 * Represents fields that are compatible to be selected for a report of type
 * "PATH_TO_CONVERSION".
 */
class PathToConversionReportCompatibleFields {
  /**
   * Conversion dimensions which are compatible to be selected in the
   * "conversionDimensions" section of the report.
   */
  core.List<Dimension> conversionDimensions;

  /**
   * Custom floodlight variables which are compatible to be selected in the
   * "customFloodlightVariables" section of the report.
   */
  core.List<Dimension> customFloodlightVariables;

  /**
   * The kind of resource this is, in this case
   * dfareporting#pathToConversionReportCompatibleFields.
   */
  core.String kind;

  /**
   * Metrics which are compatible to be selected in the "metricNames" section of
   * the report.
   */
  core.List<Metric> metrics;

  /**
   * Per-interaction dimensions which are compatible to be selected in the
   * "perInteractionDimensions" section of the report.
   */
  core.List<Dimension> perInteractionDimensions;


  PathToConversionReportCompatibleFields();

  PathToConversionReportCompatibleFields.fromJson(core.Map _json) {
    if (_json.containsKey("conversionDimensions")) {
      conversionDimensions = _json["conversionDimensions"].map((value) => new Dimension.fromJson(value)).toList();
    }
    if (_json.containsKey("customFloodlightVariables")) {
      customFloodlightVariables = _json["customFloodlightVariables"].map((value) => new Dimension.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("metrics")) {
      metrics = _json["metrics"].map((value) => new Metric.fromJson(value)).toList();
    }
    if (_json.containsKey("perInteractionDimensions")) {
      perInteractionDimensions = _json["perInteractionDimensions"].map((value) => new Dimension.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (conversionDimensions != null) {
      _json["conversionDimensions"] = conversionDimensions.map((value) => (value).toJson()).toList();
    }
    if (customFloodlightVariables != null) {
      _json["customFloodlightVariables"] = customFloodlightVariables.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (metrics != null) {
      _json["metrics"] = metrics.map((value) => (value).toJson()).toList();
    }
    if (perInteractionDimensions != null) {
      _json["perInteractionDimensions"] = perInteractionDimensions.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}


/**
 * Represents fields that are compatible to be selected for a report of type
 * "REACH".
 */
class ReachReportCompatibleFields {
  /**
   * Dimensions which are compatible to be selected in the "dimensionFilters"
   * section of the report.
   */
  core.List<Dimension> dimensionFilters;

  /**
   * Dimensions which are compatible to be selected in the "dimensions" section
   * of the report.
   */
  core.List<Dimension> dimensions;

  /**
   * The kind of resource this is, in this case
   * dfareporting#reachReportCompatibleFields.
   */
  core.String kind;

  /**
   * Metrics which are compatible to be selected in the "metricNames" section of
   * the report.
   */
  core.List<Metric> metrics;

  /**
   * Metrics which are compatible to be selected as activity metrics to pivot on
   * in the "activities" section of the report.
   */
  core.List<Metric> pivotedActivityMetrics;

  /**
   * Metrics which are compatible to be selected in the
   * "reachByFrequencyMetricNames" section of the report.
   */
  core.List<Metric> reachByFrequencyMetrics;


  ReachReportCompatibleFields();

  ReachReportCompatibleFields.fromJson(core.Map _json) {
    if (_json.containsKey("dimensionFilters")) {
      dimensionFilters = _json["dimensionFilters"].map((value) => new Dimension.fromJson(value)).toList();
    }
    if (_json.containsKey("dimensions")) {
      dimensions = _json["dimensions"].map((value) => new Dimension.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("metrics")) {
      metrics = _json["metrics"].map((value) => new Metric.fromJson(value)).toList();
    }
    if (_json.containsKey("pivotedActivityMetrics")) {
      pivotedActivityMetrics = _json["pivotedActivityMetrics"].map((value) => new Metric.fromJson(value)).toList();
    }
    if (_json.containsKey("reachByFrequencyMetrics")) {
      reachByFrequencyMetrics = _json["reachByFrequencyMetrics"].map((value) => new Metric.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (dimensionFilters != null) {
      _json["dimensionFilters"] = dimensionFilters.map((value) => (value).toJson()).toList();
    }
    if (dimensions != null) {
      _json["dimensions"] = dimensions.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (metrics != null) {
      _json["metrics"] = metrics.map((value) => (value).toJson()).toList();
    }
    if (pivotedActivityMetrics != null) {
      _json["pivotedActivityMetrics"] = pivotedActivityMetrics.map((value) => (value).toJson()).toList();
    }
    if (reachByFrequencyMetrics != null) {
      _json["reachByFrequencyMetrics"] = reachByFrequencyMetrics.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}


/** Represents a recipient. */
class Recipient {
  /**
   * The delivery type for the recipient, one of:
   * - "ATTACHMENT"
   * - "LINK"
   */
  core.String deliveryType;

  /** The email address of the recipient. */
  core.String email;

  /** The kind of resource this is, in this case dfareporting#recipient. */
  core.String kind;


  Recipient();

  Recipient.fromJson(core.Map _json) {
    if (_json.containsKey("deliveryType")) {
      deliveryType = _json["deliveryType"];
    }
    if (_json.containsKey("email")) {
      email = _json["email"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (deliveryType != null) {
      _json["deliveryType"] = deliveryType;
    }
    if (email != null) {
      _json["email"] = email;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    return _json;
  }
}


/** The report criteria for a report of type "ACTIVE_GRP". */
class ReportActiveGrpCriteria {
  /** The date range this report should be run for. */
  DateRange dateRange;

  /**
   * The list of filters on which dimensions are filtered.
   * Filters for different dimensions are ANDed, filters for the same dimension
   * are grouped together and ORed.
   * A valid active GRP report needs to have exactly one DimensionValue for the
   * United States in addition to any advertiser or campaign dimension values.
   */
  core.List<DimensionValue> dimensionFilters;

  /** The list of dimensions the report should include. */
  core.List<SortedDimension> dimensions;

  /** The list of names of metrics the report should include. */
  core.List<core.String> metricNames;


  ReportActiveGrpCriteria();

  ReportActiveGrpCriteria.fromJson(core.Map _json) {
    if (_json.containsKey("dateRange")) {
      dateRange = new DateRange.fromJson(_json["dateRange"]);
    }
    if (_json.containsKey("dimensionFilters")) {
      dimensionFilters = _json["dimensionFilters"].map((value) => new DimensionValue.fromJson(value)).toList();
    }
    if (_json.containsKey("dimensions")) {
      dimensions = _json["dimensions"].map((value) => new SortedDimension.fromJson(value)).toList();
    }
    if (_json.containsKey("metricNames")) {
      metricNames = _json["metricNames"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (dateRange != null) {
      _json["dateRange"] = (dateRange).toJson();
    }
    if (dimensionFilters != null) {
      _json["dimensionFilters"] = dimensionFilters.map((value) => (value).toJson()).toList();
    }
    if (dimensions != null) {
      _json["dimensions"] = dimensions.map((value) => (value).toJson()).toList();
    }
    if (metricNames != null) {
      _json["metricNames"] = metricNames;
    }
    return _json;
  }
}


/** The report criteria for a report of type "STANDARD". */
class ReportCriteria {
  /** Activity group. */
  Activities activities;

  /** Custom Rich Media Events group. */
  CustomRichMediaEvents customRichMediaEvents;

  /** The date range for which this report should be run. */
  DateRange dateRange;

  /**
   * The list of filters on which dimensions are filtered.
   * Filters for different dimensions are ANDed, filters for the same dimension
   * are grouped together and ORed.
   */
  core.List<DimensionValue> dimensionFilters;

  /** The list of standard dimensions the report should include. */
  core.List<SortedDimension> dimensions;

  /** The list of names of metrics the report should include. */
  core.List<core.String> metricNames;


  ReportCriteria();

  ReportCriteria.fromJson(core.Map _json) {
    if (_json.containsKey("activities")) {
      activities = new Activities.fromJson(_json["activities"]);
    }
    if (_json.containsKey("customRichMediaEvents")) {
      customRichMediaEvents = new CustomRichMediaEvents.fromJson(_json["customRichMediaEvents"]);
    }
    if (_json.containsKey("dateRange")) {
      dateRange = new DateRange.fromJson(_json["dateRange"]);
    }
    if (_json.containsKey("dimensionFilters")) {
      dimensionFilters = _json["dimensionFilters"].map((value) => new DimensionValue.fromJson(value)).toList();
    }
    if (_json.containsKey("dimensions")) {
      dimensions = _json["dimensions"].map((value) => new SortedDimension.fromJson(value)).toList();
    }
    if (_json.containsKey("metricNames")) {
      metricNames = _json["metricNames"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (activities != null) {
      _json["activities"] = (activities).toJson();
    }
    if (customRichMediaEvents != null) {
      _json["customRichMediaEvents"] = (customRichMediaEvents).toJson();
    }
    if (dateRange != null) {
      _json["dateRange"] = (dateRange).toJson();
    }
    if (dimensionFilters != null) {
      _json["dimensionFilters"] = dimensionFilters.map((value) => (value).toJson()).toList();
    }
    if (dimensions != null) {
      _json["dimensions"] = dimensions.map((value) => (value).toJson()).toList();
    }
    if (metricNames != null) {
      _json["metricNames"] = metricNames;
    }
    return _json;
  }
}


/** The report criteria for a report of type "CROSS_DIMENSION_REACH". */
class ReportCrossDimensionReachCriteria {
  /** The list of dimensions the report should include. */
  core.List<SortedDimension> breakdown;

  /** The date range this report should be run for. */
  DateRange dateRange;

  /**
   * The dimension option, one of:
   * - "ADVERTISER"
   * - "CAMPAIGN"
   * - "SITE_BY_ADVERTISER"
   * - "SITE_BY_CAMPAIGN"
   */
  core.String dimension;

  /** The list of filters on which dimensions are filtered. */
  core.List<DimensionValue> dimensionFilters;

  /** The list of names of metrics the report should include. */
  core.List<core.String> metricNames;

  /** The list of names of overlap metrics the report should include. */
  core.List<core.String> overlapMetricNames;

  /** Whether the report is pivoted or not. Defaults to true. */
  core.bool pivoted;


  ReportCrossDimensionReachCriteria();

  ReportCrossDimensionReachCriteria.fromJson(core.Map _json) {
    if (_json.containsKey("breakdown")) {
      breakdown = _json["breakdown"].map((value) => new SortedDimension.fromJson(value)).toList();
    }
    if (_json.containsKey("dateRange")) {
      dateRange = new DateRange.fromJson(_json["dateRange"]);
    }
    if (_json.containsKey("dimension")) {
      dimension = _json["dimension"];
    }
    if (_json.containsKey("dimensionFilters")) {
      dimensionFilters = _json["dimensionFilters"].map((value) => new DimensionValue.fromJson(value)).toList();
    }
    if (_json.containsKey("metricNames")) {
      metricNames = _json["metricNames"];
    }
    if (_json.containsKey("overlapMetricNames")) {
      overlapMetricNames = _json["overlapMetricNames"];
    }
    if (_json.containsKey("pivoted")) {
      pivoted = _json["pivoted"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (breakdown != null) {
      _json["breakdown"] = breakdown.map((value) => (value).toJson()).toList();
    }
    if (dateRange != null) {
      _json["dateRange"] = (dateRange).toJson();
    }
    if (dimension != null) {
      _json["dimension"] = dimension;
    }
    if (dimensionFilters != null) {
      _json["dimensionFilters"] = dimensionFilters.map((value) => (value).toJson()).toList();
    }
    if (metricNames != null) {
      _json["metricNames"] = metricNames;
    }
    if (overlapMetricNames != null) {
      _json["overlapMetricNames"] = overlapMetricNames;
    }
    if (pivoted != null) {
      _json["pivoted"] = pivoted;
    }
    return _json;
  }
}


/** The report's email delivery settings. */
class ReportDelivery {
  /** Whether the report should be emailed to the report owner. */
  core.bool emailOwner;

  /**
   * The type of delivery for the owner to receive, if enabled. One of:
   * - "ATTACHMENT"
   * - "LINK"
   */
  core.String emailOwnerDeliveryType;

  /** The message to be sent with each email. */
  core.String message;

  /** The list of recipients to which to email the report. */
  core.List<Recipient> recipients;


  ReportDelivery();

  ReportDelivery.fromJson(core.Map _json) {
    if (_json.containsKey("emailOwner")) {
      emailOwner = _json["emailOwner"];
    }
    if (_json.containsKey("emailOwnerDeliveryType")) {
      emailOwnerDeliveryType = _json["emailOwnerDeliveryType"];
    }
    if (_json.containsKey("message")) {
      message = _json["message"];
    }
    if (_json.containsKey("recipients")) {
      recipients = _json["recipients"].map((value) => new Recipient.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (emailOwner != null) {
      _json["emailOwner"] = emailOwner;
    }
    if (emailOwnerDeliveryType != null) {
      _json["emailOwnerDeliveryType"] = emailOwnerDeliveryType;
    }
    if (message != null) {
      _json["message"] = message;
    }
    if (recipients != null) {
      _json["recipients"] = recipients.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}


/** The properties of the report. */
class ReportFloodlightCriteriaReportProperties {
  /** Include conversions that have no cookie, but do have an exposure path. */
  core.bool includeAttributedIPConversions;

  /**
   * Include conversions of users with a DoubleClick cookie but without an
   * exposure. That means the user did not click or see an ad from the
   * advertiser within the Floodlight group, or that the interaction happened
   * outside the lookback window.
   */
  core.bool includeUnattributedCookieConversions;

  /**
   * Include conversions that have no associated cookies and no exposures. It’s
   * therefore impossible to know how the user was exposed to your ads during
   * the lookback window prior to a conversion.
   */
  core.bool includeUnattributedIPConversions;


  ReportFloodlightCriteriaReportProperties();

  ReportFloodlightCriteriaReportProperties.fromJson(core.Map _json) {
    if (_json.containsKey("includeAttributedIPConversions")) {
      includeAttributedIPConversions = _json["includeAttributedIPConversions"];
    }
    if (_json.containsKey("includeUnattributedCookieConversions")) {
      includeUnattributedCookieConversions = _json["includeUnattributedCookieConversions"];
    }
    if (_json.containsKey("includeUnattributedIPConversions")) {
      includeUnattributedIPConversions = _json["includeUnattributedIPConversions"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (includeAttributedIPConversions != null) {
      _json["includeAttributedIPConversions"] = includeAttributedIPConversions;
    }
    if (includeUnattributedCookieConversions != null) {
      _json["includeUnattributedCookieConversions"] = includeUnattributedCookieConversions;
    }
    if (includeUnattributedIPConversions != null) {
      _json["includeUnattributedIPConversions"] = includeUnattributedIPConversions;
    }
    return _json;
  }
}


/** The report criteria for a report of type "FLOODLIGHT". */
class ReportFloodlightCriteria {
  /** The list of custom rich media events to include. */
  core.List<DimensionValue> customRichMediaEvents;

  /** The date range this report should be run for. */
  DateRange dateRange;

  /**
   * The list of filters on which dimensions are filtered.
   * Filters for different dimensions are ANDed, filters for the same dimension
   * are grouped together and ORed.
   */
  core.List<DimensionValue> dimensionFilters;

  /** The list of dimensions the report should include. */
  core.List<SortedDimension> dimensions;

  /**
   * The floodlight ID for which to show data in this report. All advertisers
   * associated with that ID will automatically be added. The dimension of the
   * value needs to be 'dfa:floodlightConfigId'.
   */
  DimensionValue floodlightConfigId;

  /** The list of names of metrics the report should include. */
  core.List<core.String> metricNames;

  /** The properties of the report. */
  ReportFloodlightCriteriaReportProperties reportProperties;


  ReportFloodlightCriteria();

  ReportFloodlightCriteria.fromJson(core.Map _json) {
    if (_json.containsKey("customRichMediaEvents")) {
      customRichMediaEvents = _json["customRichMediaEvents"].map((value) => new DimensionValue.fromJson(value)).toList();
    }
    if (_json.containsKey("dateRange")) {
      dateRange = new DateRange.fromJson(_json["dateRange"]);
    }
    if (_json.containsKey("dimensionFilters")) {
      dimensionFilters = _json["dimensionFilters"].map((value) => new DimensionValue.fromJson(value)).toList();
    }
    if (_json.containsKey("dimensions")) {
      dimensions = _json["dimensions"].map((value) => new SortedDimension.fromJson(value)).toList();
    }
    if (_json.containsKey("floodlightConfigId")) {
      floodlightConfigId = new DimensionValue.fromJson(_json["floodlightConfigId"]);
    }
    if (_json.containsKey("metricNames")) {
      metricNames = _json["metricNames"];
    }
    if (_json.containsKey("reportProperties")) {
      reportProperties = new ReportFloodlightCriteriaReportProperties.fromJson(_json["reportProperties"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (customRichMediaEvents != null) {
      _json["customRichMediaEvents"] = customRichMediaEvents.map((value) => (value).toJson()).toList();
    }
    if (dateRange != null) {
      _json["dateRange"] = (dateRange).toJson();
    }
    if (dimensionFilters != null) {
      _json["dimensionFilters"] = dimensionFilters.map((value) => (value).toJson()).toList();
    }
    if (dimensions != null) {
      _json["dimensions"] = dimensions.map((value) => (value).toJson()).toList();
    }
    if (floodlightConfigId != null) {
      _json["floodlightConfigId"] = (floodlightConfigId).toJson();
    }
    if (metricNames != null) {
      _json["metricNames"] = metricNames;
    }
    if (reportProperties != null) {
      _json["reportProperties"] = (reportProperties).toJson();
    }
    return _json;
  }
}


/** The properties of the report. */
class ReportPathToConversionCriteriaReportProperties {
  /**
   * DFA checks to see if a click interaction occurred within the specified
   * period of time before a conversion. By default the value is pulled from
   * Floodlight or you can manually enter a custom value. Valid values: 1-90.
   */
  core.int clicksLookbackWindow;

  /**
   * DFA checks to see if an impression interaction occurred within the
   * specified period of time before a conversion. By default the value is
   * pulled from Floodlight or you can manually enter a custom value. Valid
   * values: 1-90.
   */
  core.int impressionsLookbackWindow;

  /** Deprecated: has no effect. */
  core.bool includeAttributedIPConversions;

  /**
   * Include conversions of users with a DoubleClick cookie but without an
   * exposure. That means the user did not click or see an ad from the
   * advertiser within the Floodlight group, or that the interaction happened
   * outside the lookback window.
   */
  core.bool includeUnattributedCookieConversions;

  /**
   * Include conversions that have no associated cookies and no exposures. It’s
   * therefore impossible to know how the user was exposed to your ads during
   * the lookback window prior to a conversion.
   */
  core.bool includeUnattributedIPConversions;

  /**
   * The maximum number of click interactions to include in the report.
   * Advertisers currently paying for E2C reports get up to 200 (100 clicks, 100
   * impressions). If another advertiser in your network is paying for E2C, you
   * can have up to 5 total exposures per report.
   */
  core.int maximumClickInteractions;

  /**
   * The maximum number of click interactions to include in the report.
   * Advertisers currently paying for E2C reports get up to 200 (100 clicks, 100
   * impressions). If another advertiser in your network is paying for E2C, you
   * can have up to 5 total exposures per report.
   */
  core.int maximumImpressionInteractions;

  /**
   * The maximum amount of time that can take place between interactions (clicks
   * or impressions) by the same user. Valid values: 1-90.
   */
  core.int maximumInteractionGap;

  /** Enable pivoting on interaction path. */
  core.bool pivotOnInteractionPath;


  ReportPathToConversionCriteriaReportProperties();

  ReportPathToConversionCriteriaReportProperties.fromJson(core.Map _json) {
    if (_json.containsKey("clicksLookbackWindow")) {
      clicksLookbackWindow = _json["clicksLookbackWindow"];
    }
    if (_json.containsKey("impressionsLookbackWindow")) {
      impressionsLookbackWindow = _json["impressionsLookbackWindow"];
    }
    if (_json.containsKey("includeAttributedIPConversions")) {
      includeAttributedIPConversions = _json["includeAttributedIPConversions"];
    }
    if (_json.containsKey("includeUnattributedCookieConversions")) {
      includeUnattributedCookieConversions = _json["includeUnattributedCookieConversions"];
    }
    if (_json.containsKey("includeUnattributedIPConversions")) {
      includeUnattributedIPConversions = _json["includeUnattributedIPConversions"];
    }
    if (_json.containsKey("maximumClickInteractions")) {
      maximumClickInteractions = _json["maximumClickInteractions"];
    }
    if (_json.containsKey("maximumImpressionInteractions")) {
      maximumImpressionInteractions = _json["maximumImpressionInteractions"];
    }
    if (_json.containsKey("maximumInteractionGap")) {
      maximumInteractionGap = _json["maximumInteractionGap"];
    }
    if (_json.containsKey("pivotOnInteractionPath")) {
      pivotOnInteractionPath = _json["pivotOnInteractionPath"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (clicksLookbackWindow != null) {
      _json["clicksLookbackWindow"] = clicksLookbackWindow;
    }
    if (impressionsLookbackWindow != null) {
      _json["impressionsLookbackWindow"] = impressionsLookbackWindow;
    }
    if (includeAttributedIPConversions != null) {
      _json["includeAttributedIPConversions"] = includeAttributedIPConversions;
    }
    if (includeUnattributedCookieConversions != null) {
      _json["includeUnattributedCookieConversions"] = includeUnattributedCookieConversions;
    }
    if (includeUnattributedIPConversions != null) {
      _json["includeUnattributedIPConversions"] = includeUnattributedIPConversions;
    }
    if (maximumClickInteractions != null) {
      _json["maximumClickInteractions"] = maximumClickInteractions;
    }
    if (maximumImpressionInteractions != null) {
      _json["maximumImpressionInteractions"] = maximumImpressionInteractions;
    }
    if (maximumInteractionGap != null) {
      _json["maximumInteractionGap"] = maximumInteractionGap;
    }
    if (pivotOnInteractionPath != null) {
      _json["pivotOnInteractionPath"] = pivotOnInteractionPath;
    }
    return _json;
  }
}


/** The report criteria for a report of type "PATH_TO_CONVERSION". */
class ReportPathToConversionCriteria {
  /** The list of 'dfa:activity' values to filter on. */
  core.List<DimensionValue> activityFilters;

  /** The list of conversion dimensions the report should include. */
  core.List<SortedDimension> conversionDimensions;

  /** The list of custom floodlight variables the report should include. */
  core.List<SortedDimension> customFloodlightVariables;

  /** The list of custom rich media events to include. */
  core.List<DimensionValue> customRichMediaEvents;

  /** The date range this report should be run for. */
  DateRange dateRange;

  /**
   * The floodlight ID for which to show data in this report. All advertisers
   * associated with that ID will automatically be added. The dimension of the
   * value needs to be 'dfa:floodlightConfigId'.
   */
  DimensionValue floodlightConfigId;

  /** The list of names of metrics the report should include. */
  core.List<core.String> metricNames;

  /** The list of per interaction dimensions the report should include. */
  core.List<SortedDimension> perInteractionDimensions;

  /** The properties of the report. */
  ReportPathToConversionCriteriaReportProperties reportProperties;


  ReportPathToConversionCriteria();

  ReportPathToConversionCriteria.fromJson(core.Map _json) {
    if (_json.containsKey("activityFilters")) {
      activityFilters = _json["activityFilters"].map((value) => new DimensionValue.fromJson(value)).toList();
    }
    if (_json.containsKey("conversionDimensions")) {
      conversionDimensions = _json["conversionDimensions"].map((value) => new SortedDimension.fromJson(value)).toList();
    }
    if (_json.containsKey("customFloodlightVariables")) {
      customFloodlightVariables = _json["customFloodlightVariables"].map((value) => new SortedDimension.fromJson(value)).toList();
    }
    if (_json.containsKey("customRichMediaEvents")) {
      customRichMediaEvents = _json["customRichMediaEvents"].map((value) => new DimensionValue.fromJson(value)).toList();
    }
    if (_json.containsKey("dateRange")) {
      dateRange = new DateRange.fromJson(_json["dateRange"]);
    }
    if (_json.containsKey("floodlightConfigId")) {
      floodlightConfigId = new DimensionValue.fromJson(_json["floodlightConfigId"]);
    }
    if (_json.containsKey("metricNames")) {
      metricNames = _json["metricNames"];
    }
    if (_json.containsKey("perInteractionDimensions")) {
      perInteractionDimensions = _json["perInteractionDimensions"].map((value) => new SortedDimension.fromJson(value)).toList();
    }
    if (_json.containsKey("reportProperties")) {
      reportProperties = new ReportPathToConversionCriteriaReportProperties.fromJson(_json["reportProperties"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (activityFilters != null) {
      _json["activityFilters"] = activityFilters.map((value) => (value).toJson()).toList();
    }
    if (conversionDimensions != null) {
      _json["conversionDimensions"] = conversionDimensions.map((value) => (value).toJson()).toList();
    }
    if (customFloodlightVariables != null) {
      _json["customFloodlightVariables"] = customFloodlightVariables.map((value) => (value).toJson()).toList();
    }
    if (customRichMediaEvents != null) {
      _json["customRichMediaEvents"] = customRichMediaEvents.map((value) => (value).toJson()).toList();
    }
    if (dateRange != null) {
      _json["dateRange"] = (dateRange).toJson();
    }
    if (floodlightConfigId != null) {
      _json["floodlightConfigId"] = (floodlightConfigId).toJson();
    }
    if (metricNames != null) {
      _json["metricNames"] = metricNames;
    }
    if (perInteractionDimensions != null) {
      _json["perInteractionDimensions"] = perInteractionDimensions.map((value) => (value).toJson()).toList();
    }
    if (reportProperties != null) {
      _json["reportProperties"] = (reportProperties).toJson();
    }
    return _json;
  }
}


/** The report criteria for a report of type "REACH". */
class ReportReachCriteria {
  /** Activity group. */
  Activities activities;

  /** Custom Rich Media Events group. */
  CustomRichMediaEvents customRichMediaEvents;

  /** The date range this report should be run for. */
  DateRange dateRange;

  /**
   * The list of filters on which dimensions are filtered.
   * Filters for different dimensions are ANDed, filters for the same dimension
   * are grouped together and ORed.
   */
  core.List<DimensionValue> dimensionFilters;

  /** The list of dimensions the report should include. */
  core.List<SortedDimension> dimensions;

  /** The list of names of metrics the report should include. */
  core.List<core.String> metricNames;

  /**
   * The list of names of  Reach By Frequency metrics the report should include.
   */
  core.List<core.String> reachByFrequencyMetricNames;


  ReportReachCriteria();

  ReportReachCriteria.fromJson(core.Map _json) {
    if (_json.containsKey("activities")) {
      activities = new Activities.fromJson(_json["activities"]);
    }
    if (_json.containsKey("customRichMediaEvents")) {
      customRichMediaEvents = new CustomRichMediaEvents.fromJson(_json["customRichMediaEvents"]);
    }
    if (_json.containsKey("dateRange")) {
      dateRange = new DateRange.fromJson(_json["dateRange"]);
    }
    if (_json.containsKey("dimensionFilters")) {
      dimensionFilters = _json["dimensionFilters"].map((value) => new DimensionValue.fromJson(value)).toList();
    }
    if (_json.containsKey("dimensions")) {
      dimensions = _json["dimensions"].map((value) => new SortedDimension.fromJson(value)).toList();
    }
    if (_json.containsKey("metricNames")) {
      metricNames = _json["metricNames"];
    }
    if (_json.containsKey("reachByFrequencyMetricNames")) {
      reachByFrequencyMetricNames = _json["reachByFrequencyMetricNames"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (activities != null) {
      _json["activities"] = (activities).toJson();
    }
    if (customRichMediaEvents != null) {
      _json["customRichMediaEvents"] = (customRichMediaEvents).toJson();
    }
    if (dateRange != null) {
      _json["dateRange"] = (dateRange).toJson();
    }
    if (dimensionFilters != null) {
      _json["dimensionFilters"] = dimensionFilters.map((value) => (value).toJson()).toList();
    }
    if (dimensions != null) {
      _json["dimensions"] = dimensions.map((value) => (value).toJson()).toList();
    }
    if (metricNames != null) {
      _json["metricNames"] = metricNames;
    }
    if (reachByFrequencyMetricNames != null) {
      _json["reachByFrequencyMetricNames"] = reachByFrequencyMetricNames;
    }
    return _json;
  }
}


/**
 * The report's schedule. Can only be set if the report's 'dateRange' is a
 * relative date range and the relative date range is not "TODAY".
 */
class ReportSchedule {
  /**
   * Whether the schedule is active or not. Must be set to either true or false.
   */
  core.bool active;

  /**
   * Defines every how many days, weeks or months the report should be run.
   * Needs to be set when "repeats" is either "DAILY", "WEEKLY" or "MONTHLY".
   */
  core.int every;

  /** The expiration date when the scheduled report stops running. */
  core.DateTime expirationDate;

  /**
   * The interval for which the report is repeated, one of:
   * - "DAILY", also requires field "every" to be set.
   * - "WEEKLY", also requires fields "every" and "repeatsOnWeekDays" to be set.
   * - "TWICE_A_MONTH"
   * - "MONTHLY", also requires fields "every" and "runsOnDayOfMonth" to be set.
   * - "QUARTERLY"
   * - "YEARLY"
   */
  core.String repeats;

  /** List of week days "WEEKLY" on which scheduled reports should run. */
  core.List<core.String> repeatsOnWeekDays;

  /**
   * Enum to define for "MONTHLY" scheduled reports whether reports should be
   * repeated on the same day of the month as "startDate" or the same day of the
   * week of the month. Possible values are:
   * - DAY_OF_MONTH
   * - WEEK_OF_MONTH
   * Example: If 'startDate' is Monday, April 2nd 2012 (2012-04-02),
   * "DAY_OF_MONTH" would run subsequent reports on the 2nd of every Month, and
   * "WEEK_OF_MONTH" would run subsequent reports on the first Monday of the
   * month.
   */
  core.String runsOnDayOfMonth;

  /** Start date of date range for which scheduled reports should be run. */
  core.DateTime startDate;


  ReportSchedule();

  ReportSchedule.fromJson(core.Map _json) {
    if (_json.containsKey("active")) {
      active = _json["active"];
    }
    if (_json.containsKey("every")) {
      every = _json["every"];
    }
    if (_json.containsKey("expirationDate")) {
      expirationDate = core.DateTime.parse(_json["expirationDate"]);
    }
    if (_json.containsKey("repeats")) {
      repeats = _json["repeats"];
    }
    if (_json.containsKey("repeatsOnWeekDays")) {
      repeatsOnWeekDays = _json["repeatsOnWeekDays"];
    }
    if (_json.containsKey("runsOnDayOfMonth")) {
      runsOnDayOfMonth = _json["runsOnDayOfMonth"];
    }
    if (_json.containsKey("startDate")) {
      startDate = core.DateTime.parse(_json["startDate"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (active != null) {
      _json["active"] = active;
    }
    if (every != null) {
      _json["every"] = every;
    }
    if (expirationDate != null) {
      _json["expirationDate"] = "${(expirationDate).year.toString().padLeft(4, '0')}-${(expirationDate).month.toString().padLeft(2, '0')}-${(expirationDate).day.toString().padLeft(2, '0')}";
    }
    if (repeats != null) {
      _json["repeats"] = repeats;
    }
    if (repeatsOnWeekDays != null) {
      _json["repeatsOnWeekDays"] = repeatsOnWeekDays;
    }
    if (runsOnDayOfMonth != null) {
      _json["runsOnDayOfMonth"] = runsOnDayOfMonth;
    }
    if (startDate != null) {
      _json["startDate"] = "${(startDate).year.toString().padLeft(4, '0')}-${(startDate).month.toString().padLeft(2, '0')}-${(startDate).day.toString().padLeft(2, '0')}";
    }
    return _json;
  }
}


/** Represents a Report resource. */
class Report {
  /** The account ID to which this report belongs. */
  core.String accountId;

  /** The report criteria for a report of type "ACTIVE_GRP". */
  ReportActiveGrpCriteria activeGrpCriteria;

  /** The report criteria for a report of type "STANDARD". */
  ReportCriteria criteria;

  /** The report criteria for a report of type "CROSS_DIMENSION_REACH". */
  ReportCrossDimensionReachCriteria crossDimensionReachCriteria;

  /** The report's email delivery settings. */
  ReportDelivery delivery;

  /** The eTag of this response for caching purposes. */
  core.String etag;

  /** The file name used when generating report files for this report. */
  core.String fileName;

  /** The report criteria for a report of type "FLOODLIGHT". */
  ReportFloodlightCriteria floodlightCriteria;

  /**
   * The output format of the report, one of:
   * - "CSV"
   * - "EXCEL"  If not specified, default format is "CSV". Note that the actual
   * format in the completed report file might differ if for instance the
   * report's size exceeds the format's capabilities. "CSV" will then be the
   * fallback format.
   */
  core.String format;

  /** The unique ID identifying this report resource. */
  core.String id;

  /** The kind of resource this is, in this case dfareporting#report. */
  core.String kind;

  /**
   * The timestamp (in milliseconds since epoch) of when this report was last
   * modified.
   */
  core.String lastModifiedTime;

  /** The name of the report. */
  core.String name;

  /** The user profile id of the owner of this report. */
  core.String ownerProfileId;

  /** The report criteria for a report of type "PATH_TO_CONVERSION". */
  ReportPathToConversionCriteria pathToConversionCriteria;

  /** The report criteria for a report of type "REACH". */
  ReportReachCriteria reachCriteria;

  /**
   * The report's schedule. Can only be set if the report's 'dateRange' is a
   * relative date range and the relative date range is not "TODAY".
   */
  ReportSchedule schedule;

  /** The subbaccount ID to which this report belongs if applicable. */
  core.String subAccountId;

  /**
   * The type of the report, one of:
   * - STANDARD
   * - REACH
   * - ACTIVE_GRP
   * - PATH_TO_CONVERSION
   * - FLOODLIGHT
   * - CROSS_DIMENSION_REACH
   */
  core.String type;


  Report();

  Report.fromJson(core.Map _json) {
    if (_json.containsKey("accountId")) {
      accountId = _json["accountId"];
    }
    if (_json.containsKey("activeGrpCriteria")) {
      activeGrpCriteria = new ReportActiveGrpCriteria.fromJson(_json["activeGrpCriteria"]);
    }
    if (_json.containsKey("criteria")) {
      criteria = new ReportCriteria.fromJson(_json["criteria"]);
    }
    if (_json.containsKey("crossDimensionReachCriteria")) {
      crossDimensionReachCriteria = new ReportCrossDimensionReachCriteria.fromJson(_json["crossDimensionReachCriteria"]);
    }
    if (_json.containsKey("delivery")) {
      delivery = new ReportDelivery.fromJson(_json["delivery"]);
    }
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("fileName")) {
      fileName = _json["fileName"];
    }
    if (_json.containsKey("floodlightCriteria")) {
      floodlightCriteria = new ReportFloodlightCriteria.fromJson(_json["floodlightCriteria"]);
    }
    if (_json.containsKey("format")) {
      format = _json["format"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("lastModifiedTime")) {
      lastModifiedTime = _json["lastModifiedTime"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("ownerProfileId")) {
      ownerProfileId = _json["ownerProfileId"];
    }
    if (_json.containsKey("pathToConversionCriteria")) {
      pathToConversionCriteria = new ReportPathToConversionCriteria.fromJson(_json["pathToConversionCriteria"]);
    }
    if (_json.containsKey("reachCriteria")) {
      reachCriteria = new ReportReachCriteria.fromJson(_json["reachCriteria"]);
    }
    if (_json.containsKey("schedule")) {
      schedule = new ReportSchedule.fromJson(_json["schedule"]);
    }
    if (_json.containsKey("subAccountId")) {
      subAccountId = _json["subAccountId"];
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
    if (activeGrpCriteria != null) {
      _json["activeGrpCriteria"] = (activeGrpCriteria).toJson();
    }
    if (criteria != null) {
      _json["criteria"] = (criteria).toJson();
    }
    if (crossDimensionReachCriteria != null) {
      _json["crossDimensionReachCriteria"] = (crossDimensionReachCriteria).toJson();
    }
    if (delivery != null) {
      _json["delivery"] = (delivery).toJson();
    }
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (fileName != null) {
      _json["fileName"] = fileName;
    }
    if (floodlightCriteria != null) {
      _json["floodlightCriteria"] = (floodlightCriteria).toJson();
    }
    if (format != null) {
      _json["format"] = format;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (lastModifiedTime != null) {
      _json["lastModifiedTime"] = lastModifiedTime;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (ownerProfileId != null) {
      _json["ownerProfileId"] = ownerProfileId;
    }
    if (pathToConversionCriteria != null) {
      _json["pathToConversionCriteria"] = (pathToConversionCriteria).toJson();
    }
    if (reachCriteria != null) {
      _json["reachCriteria"] = (reachCriteria).toJson();
    }
    if (schedule != null) {
      _json["schedule"] = (schedule).toJson();
    }
    if (subAccountId != null) {
      _json["subAccountId"] = subAccountId;
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}


/**
 * Represents fields that are compatible to be selected for a report of type
 * "STANDARD".
 */
class ReportCompatibleFields {
  /**
   * Dimensions which are compatible to be selected in the "dimensionFilters"
   * section of the report.
   */
  core.List<Dimension> dimensionFilters;

  /**
   * Dimensions which are compatible to be selected in the "dimensions" section
   * of the report.
   */
  core.List<Dimension> dimensions;

  /**
   * The kind of resource this is, in this case
   * dfareporting#reportCompatibleFields.
   */
  core.String kind;

  /**
   * Metrics which are compatible to be selected in the "metricNames" section of
   * the report.
   */
  core.List<Metric> metrics;

  /**
   * Metrics which are compatible to be selected as activity metrics to pivot on
   * in the "activities" section of the report.
   */
  core.List<Metric> pivotedActivityMetrics;


  ReportCompatibleFields();

  ReportCompatibleFields.fromJson(core.Map _json) {
    if (_json.containsKey("dimensionFilters")) {
      dimensionFilters = _json["dimensionFilters"].map((value) => new Dimension.fromJson(value)).toList();
    }
    if (_json.containsKey("dimensions")) {
      dimensions = _json["dimensions"].map((value) => new Dimension.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("metrics")) {
      metrics = _json["metrics"].map((value) => new Metric.fromJson(value)).toList();
    }
    if (_json.containsKey("pivotedActivityMetrics")) {
      pivotedActivityMetrics = _json["pivotedActivityMetrics"].map((value) => new Metric.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (dimensionFilters != null) {
      _json["dimensionFilters"] = dimensionFilters.map((value) => (value).toJson()).toList();
    }
    if (dimensions != null) {
      _json["dimensions"] = dimensions.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (metrics != null) {
      _json["metrics"] = metrics.map((value) => (value).toJson()).toList();
    }
    if (pivotedActivityMetrics != null) {
      _json["pivotedActivityMetrics"] = pivotedActivityMetrics.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}


/** Represents the list of reports. */
class ReportList {
  /** The eTag of this response for caching purposes. */
  core.String etag;

  /** The reports returned in this response. */
  core.List<Report> items;

  /** The kind of list this is, in this case dfareporting#reportList. */
  core.String kind;

  /**
   * Continuation token used to page through reports. To retrieve the next page
   * of results, set the next request's "pageToken" to the value of this field.
   * The page token is only valid for a limited amount of time and should not be
   * persisted.
   */
  core.String nextPageToken;


  ReportList();

  ReportList.fromJson(core.Map _json) {
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("items")) {
      items = _json["items"].map((value) => new Report.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}


/** Represents a sorted dimension. */
class SortedDimension {
  /**
   * The kind of resource this is, in this case dfareporting#sortedDimension.
   */
  core.String kind;

  /** The name of the dimension. */
  core.String name;

  /**
   * An optional sort order for the dimension column, one of:
   * - "ASCENDING"
   * - "DESCENDING"
   */
  core.String sortOrder;


  SortedDimension();

  SortedDimension.fromJson(core.Map _json) {
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("sortOrder")) {
      sortOrder = _json["sortOrder"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (sortOrder != null) {
      _json["sortOrder"] = sortOrder;
    }
    return _json;
  }
}


/** Represents a UserProfile resource. */
class UserProfile {
  /** The account ID to which this profile belongs. */
  core.String accountId;

  /** The account name this profile belongs to. */
  core.String accountName;

  /** The eTag of this response for caching purposes. */
  core.String etag;

  /** The kind of resource this is, in this case dfareporting#userProfile. */
  core.String kind;

  /** The unique ID of the user profile. */
  core.String profileId;

  /** The sub account ID this profile belongs to if applicable. */
  core.String subAccountId;

  /** The sub account name this profile belongs to if applicable. */
  core.String subAccountName;

  /** The user name. */
  core.String userName;


  UserProfile();

  UserProfile.fromJson(core.Map _json) {
    if (_json.containsKey("accountId")) {
      accountId = _json["accountId"];
    }
    if (_json.containsKey("accountName")) {
      accountName = _json["accountName"];
    }
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("profileId")) {
      profileId = _json["profileId"];
    }
    if (_json.containsKey("subAccountId")) {
      subAccountId = _json["subAccountId"];
    }
    if (_json.containsKey("subAccountName")) {
      subAccountName = _json["subAccountName"];
    }
    if (_json.containsKey("userName")) {
      userName = _json["userName"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (accountId != null) {
      _json["accountId"] = accountId;
    }
    if (accountName != null) {
      _json["accountName"] = accountName;
    }
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (profileId != null) {
      _json["profileId"] = profileId;
    }
    if (subAccountId != null) {
      _json["subAccountId"] = subAccountId;
    }
    if (subAccountName != null) {
      _json["subAccountName"] = subAccountName;
    }
    if (userName != null) {
      _json["userName"] = userName;
    }
    return _json;
  }
}


/** Represents the list of user profiles. */
class UserProfileList {
  /** The eTag of this response for caching purposes. */
  core.String etag;

  /** The user profiles returned in this response. */
  core.List<UserProfile> items;

  /** The kind of list this is, in this case dfareporting#userProfileList. */
  core.String kind;


  UserProfileList();

  UserProfileList.fromJson(core.Map _json) {
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("items")) {
      items = _json["items"].map((value) => new UserProfile.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    return _json;
  }
}


