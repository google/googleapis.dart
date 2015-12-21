// This is a generated file (see the discoveryapis_generator project).

library googleapis.dataproc.v1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart' show
    ApiRequestError, DetailedApiRequestError, Media, UploadOptions,
    ResumableUploadOptions, DownloadOptions, PartialDownloadOptions,
    ByteRange;

const core.String USER_AGENT = 'dart-api-client dataproc/v1';

/**
 * An API for managing Hadoop-based clusters and jobs on Google Cloud Platform.
 */
class DataprocApi {
  /** View and manage your data across Google Cloud Platform services */
  static const CloudPlatformScope = "https://www.googleapis.com/auth/cloud-platform";

  /** Administrate log data for your projects */
  static const LoggingAdminScope = "https://www.googleapis.com/auth/logging.admin";

  /** View log data for your projects */
  static const LoggingReadScope = "https://www.googleapis.com/auth/logging.read";

  /** Submit log data for your projects */
  static const LoggingWriteScope = "https://www.googleapis.com/auth/logging.write";


  final commons.ApiRequester _requester;

  MediaResourceApi get media => new MediaResourceApi(_requester);

  DataprocApi(http.Client client, {core.String rootUrl: "https://dataproc.googleapis.com/", core.String servicePath: ""}) :
      _requester = new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}


class MediaResourceApi {
  final commons.ApiRequester _requester;

  MediaResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Method for media download. Download is supported on the URI
   * `/v1/media/{+name}?alt=media`.
   *
   * Request parameters:
   *
   * [resourceName] - Name of the media that is being downloaded. See
   * [][ByteStream.ReadRequest.resource_name].
   * Value must have pattern "^.*$".
   *
   * [downloadOptions] - Options for downloading. A download can be either a
   * Metadata (default) or Media download. Partial Media downloads are possible
   * as well.
   *
   * Completes with a
   *
   * - [Media] for Metadata downloads (see [downloadOptions]).
   *
   * - [commons.Media] for Media downloads (see [downloadOptions]).
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future download(core.String resourceName, {commons.DownloadOptions downloadOptions: commons.DownloadOptions.Metadata}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (resourceName == null) {
      throw new core.ArgumentError("Parameter resourceName is required.");
    }

    _downloadOptions = downloadOptions;

    _url = 'v1/media/' + commons.Escaper.ecapeVariableReserved('$resourceName');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    if (_downloadOptions == null ||
        _downloadOptions == commons.DownloadOptions.Metadata) {
      return _response.then((data) => new Media.fromJson(data));
    } else {
      return _response;
    }
  }

  /**
   * Method for media upload. Upload is supported on the URI
   * `/upload/v1/media/{+name}`.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [resourceName] - Name of the media that is being downloaded. See
   * [][ByteStream.ReadRequest.resource_name].
   * Value must have pattern "^.*$".
   *
   * [uploadMedia] - The media to upload.
   *
   * [uploadOptions] - Options for the media upload. Streaming Media without the
   * length being known ahead of time is only supported via resumable uploads.
   *
   * Completes with a [Media].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Media> upload(Media request, core.String resourceName, {commons.UploadOptions uploadOptions : commons.UploadOptions.Default, commons.Media uploadMedia}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (resourceName == null) {
      throw new core.ArgumentError("Parameter resourceName is required.");
    }

    _uploadMedia =  uploadMedia;
    _uploadOptions =  uploadOptions;

    if (_uploadMedia == null) {
      _url = 'v1/media/' + commons.Escaper.ecapeVariableReserved('$resourceName');
    } else if (_uploadOptions is commons.ResumableUploadOptions) {
      _url = '/resumable/upload/v1/media/' + commons.Escaper.ecapeVariableReserved('$resourceName');
    } else {
      _url = '/upload/v1/media/' + commons.Escaper.ecapeVariableReserved('$resourceName');
    }


    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Media.fromJson(data));
  }

}



/** The location where output from diagnostic command can be found. */
class DiagnoseClusterOutputLocation {
  /**
   * [Output-only] The Google Cloud Storage URI of the diagnostic output. This
   * will be a plain text file with summary of collected diagnostics.
   */
  core.String outputUri;

  DiagnoseClusterOutputLocation();

  DiagnoseClusterOutputLocation.fromJson(core.Map _json) {
    if (_json.containsKey("outputUri")) {
      outputUri = _json["outputUri"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (outputUri != null) {
      _json["outputUri"] = outputUri;
    }
    return _json;
  }
}

/** Media resource. */
class Media {
  /** Name of the media resource. */
  core.String resourceName;

  Media();

  Media.fromJson(core.Map _json) {
    if (_json.containsKey("resourceName")) {
      resourceName = _json["resourceName"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (resourceName != null) {
      _json["resourceName"] = resourceName;
    }
    return _json;
  }
}

/** Metadata describing the operation. */
class OperationMetadata {
  /** Name of the cluster for the operation. */
  core.String clusterName;
  /** Cluster UUId for the operation. */
  core.String clusterUuid;
  /** A message containing any operation metadata details. */
  core.String details;
  /** The time that the operation completed. */
  core.String endTime;
  /** A message containing the detailed operation state. */
  core.String innerState;
  /** The time that the operation was requested. */
  core.String insertTime;
  /** The time that the operation was started by the server. */
  core.String startTime;
  /**
   * A message containing the operation state.
   * Possible string values are:
   * - "UNKNOWN" : A UNKNOWN.
   * - "PENDING" : A PENDING.
   * - "RUNNING" : A RUNNING.
   * - "DONE" : A DONE.
   */
  core.String state;
  /** [Output-only] Current operation status. */
  OperationStatus status;
  /** [Output-only] Previous operation status. */
  core.List<OperationStatus> statusHistory;

  OperationMetadata();

  OperationMetadata.fromJson(core.Map _json) {
    if (_json.containsKey("clusterName")) {
      clusterName = _json["clusterName"];
    }
    if (_json.containsKey("clusterUuid")) {
      clusterUuid = _json["clusterUuid"];
    }
    if (_json.containsKey("details")) {
      details = _json["details"];
    }
    if (_json.containsKey("endTime")) {
      endTime = _json["endTime"];
    }
    if (_json.containsKey("innerState")) {
      innerState = _json["innerState"];
    }
    if (_json.containsKey("insertTime")) {
      insertTime = _json["insertTime"];
    }
    if (_json.containsKey("startTime")) {
      startTime = _json["startTime"];
    }
    if (_json.containsKey("state")) {
      state = _json["state"];
    }
    if (_json.containsKey("status")) {
      status = new OperationStatus.fromJson(_json["status"]);
    }
    if (_json.containsKey("statusHistory")) {
      statusHistory = _json["statusHistory"].map((value) => new OperationStatus.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (clusterName != null) {
      _json["clusterName"] = clusterName;
    }
    if (clusterUuid != null) {
      _json["clusterUuid"] = clusterUuid;
    }
    if (details != null) {
      _json["details"] = details;
    }
    if (endTime != null) {
      _json["endTime"] = endTime;
    }
    if (innerState != null) {
      _json["innerState"] = innerState;
    }
    if (insertTime != null) {
      _json["insertTime"] = insertTime;
    }
    if (startTime != null) {
      _json["startTime"] = startTime;
    }
    if (state != null) {
      _json["state"] = state;
    }
    if (status != null) {
      _json["status"] = (status).toJson();
    }
    if (statusHistory != null) {
      _json["statusHistory"] = statusHistory.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/** The status of the operation. */
class OperationStatus {
  /** A message containing any operation metadata details. */
  core.String details;
  /** A message containing the detailed operation state. */
  core.String innerState;
  /**
   * A message containing the operation state.
   * Possible string values are:
   * - "UNKNOWN" : A UNKNOWN.
   * - "PENDING" : A PENDING.
   * - "RUNNING" : A RUNNING.
   * - "DONE" : A DONE.
   */
  core.String state;
  /** The time this state was entered. */
  core.String stateStartTime;

  OperationStatus();

  OperationStatus.fromJson(core.Map _json) {
    if (_json.containsKey("details")) {
      details = _json["details"];
    }
    if (_json.containsKey("innerState")) {
      innerState = _json["innerState"];
    }
    if (_json.containsKey("state")) {
      state = _json["state"];
    }
    if (_json.containsKey("stateStartTime")) {
      stateStartTime = _json["stateStartTime"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (details != null) {
      _json["details"] = details;
    }
    if (innerState != null) {
      _json["innerState"] = innerState;
    }
    if (state != null) {
      _json["state"] = state;
    }
    if (stateStartTime != null) {
      _json["stateStartTime"] = stateStartTime;
    }
    return _json;
  }
}
