// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: directives_ordering
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: omit_local_variable_types
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations

library googleapis.osconfig.v1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client osconfig/v1';

/// OS management tools that can be used for patch management, patch compliance,
/// and configuration management on VM instances.
class OsconfigApi {
  /// View and manage your data across Google Cloud Platform services
  static const CloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResourceApi get projects => ProjectsResourceApi(_requester);

  OsconfigApi(http.Client client,
      {core.String rootUrl = 'https://osconfig.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}

class ProjectsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsPatchDeploymentsResourceApi get patchDeployments =>
      ProjectsPatchDeploymentsResourceApi(_requester);
  ProjectsPatchJobsResourceApi get patchJobs =>
      ProjectsPatchJobsResourceApi(_requester);

  ProjectsResourceApi(commons.ApiRequester client) : _requester = client;
}

class ProjectsPatchDeploymentsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsPatchDeploymentsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Create an OS Config patch deployment.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project to apply this patch deployment to in the
  /// form `projects / * `.
  /// Value must have pattern "^projects/[^/]+$".
  ///
  /// [patchDeploymentId] - Required. A name for the patch deployment in the
  /// project. When creating a name the following rules apply: * Must contain
  /// only lowercase letters, numbers, and hyphens. * Must start with a letter.
  /// * Must be between 1-63 characters. * Must end with a number or a letter. *
  /// Must be unique within the project.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PatchDeployment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PatchDeployment> create(
    PatchDeployment request,
    core.String parent, {
    core.String patchDeploymentId,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (patchDeploymentId != null) {
      _queryParams['patchDeploymentId'] = [patchDeploymentId];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/patchDeployments';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => PatchDeployment.fromJson(data));
  }

  /// Delete an OS Config patch deployment.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the patch deployment in the form
  /// `projects / * /patchDeployments / * `.
  /// Value must have pattern "^projects/[^/]+/patchDeployments/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Empty.fromJson(data));
  }

  /// Get an OS Config patch deployment.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the patch deployment in the form
  /// `projects / * /patchDeployments / * `.
  /// Value must have pattern "^projects/[^/]+/patchDeployments/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PatchDeployment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PatchDeployment> get(
    core.String name, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => PatchDeployment.fromJson(data));
  }

  /// Get a page of OS Config patch deployments.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the parent in the form `projects
  /// / * `.
  /// Value must have pattern "^projects/[^/]+$".
  ///
  /// [pageSize] - Optional. The maximum number of patch deployments to return.
  /// Default is 100.
  ///
  /// [pageToken] - Optional. A pagination token returned from a previous call
  /// to ListPatchDeployments that indicates where this listing should continue
  /// from.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListPatchDeploymentsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListPatchDeploymentsResponse> list(
    core.String parent, {
    core.int pageSize,
    core.String pageToken,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/patchDeployments';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => ListPatchDeploymentsResponse.fromJson(data));
  }
}

class ProjectsPatchJobsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsPatchJobsInstanceDetailsResourceApi get instanceDetails =>
      ProjectsPatchJobsInstanceDetailsResourceApi(_requester);

  ProjectsPatchJobsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Cancel a patch job. The patch job must be active. Canceled patch jobs
  /// cannot be restarted.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the patch in the form `projects / * /patchJobs
  /// / * `
  /// Value must have pattern "^projects/[^/]+/patchJobs/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PatchJob].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PatchJob> cancel(
    CancelPatchJobRequest request,
    core.String name, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name') + ':cancel';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => PatchJob.fromJson(data));
  }

  /// Patch VM instances by creating and running a patch job.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project in which to run this patch in the form
  /// `projects / * `
  /// Value must have pattern "^projects/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PatchJob].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PatchJob> execute(
    ExecutePatchJobRequest request,
    core.String parent, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/patchJobs:execute';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => PatchJob.fromJson(data));
  }

  /// Get the patch job. This can be used to track the progress of an ongoing
  /// patch job or review the details of completed jobs.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the patch in the form `projects / * /patchJobs
  /// / * `
  /// Value must have pattern "^projects/[^/]+/patchJobs/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PatchJob].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PatchJob> get(
    core.String name, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => PatchJob.fromJson(data));
  }

  /// Get a list of patch jobs.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. In the form of `projects / * `
  /// Value must have pattern "^projects/[^/]+$".
  ///
  /// [pageSize] - The maximum number of instance status to return.
  ///
  /// [pageToken] - A pagination token returned from a previous call that
  /// indicates where this listing should continue from.
  ///
  /// [filter] - If provided, this field specifies the criteria that must be met
  /// by patch jobs to be included in the response. Currently, filtering is only
  /// available on the patch_deployment field.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListPatchJobsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListPatchJobsResponse> list(
    core.String parent, {
    core.int pageSize,
    core.String pageToken,
    core.String filter,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if (filter != null) {
      _queryParams['filter'] = [filter];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url =
        'v1/' + commons.Escaper.ecapeVariableReserved('$parent') + '/patchJobs';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => ListPatchJobsResponse.fromJson(data));
  }
}

class ProjectsPatchJobsInstanceDetailsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsPatchJobsInstanceDetailsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Get a list of instance details for a given patch job.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent for the instances are in the form of
  /// `projects / * /patchJobs / * `.
  /// Value must have pattern "^projects/[^/]+/patchJobs/[^/]+$".
  ///
  /// [filter] - A filter expression that filters results listed in the
  /// response. This field supports filtering results by instance zone, name,
  /// state, or `failure_reason`.
  ///
  /// [pageSize] - The maximum number of instance details records to return.
  /// Default is 100.
  ///
  /// [pageToken] - A pagination token returned from a previous call that
  /// indicates where this listing should continue from.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListPatchJobInstanceDetailsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListPatchJobInstanceDetailsResponse> list(
    core.String parent, {
    core.String filter,
    core.int pageSize,
    core.String pageToken,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (filter != null) {
      _queryParams['filter'] = [filter];
    }
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/instanceDetails';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => ListPatchJobInstanceDetailsResponse.fromJson(data));
  }
}

/// Apt patching is completed by executing `apt-get update && apt-get upgrade`.
/// Additional options can be set to control how this is executed.
class AptSettings {
  /// List of packages to exclude from update. These packages will be excluded
  core.List<core.String> excludes;

  /// An exclusive list of packages to be updated. These are the only packages
  /// that will be updated. If these packages are not installed, they will be
  /// ignored. This field cannot be specified with any other patch configuration
  /// fields.
  core.List<core.String> exclusivePackages;

  /// By changing the type to DIST, the patching is performed using `apt-get
  /// dist-upgrade` instead.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : By default, upgrade will be performed.
  /// - "DIST" : Runs `apt-get dist-upgrade`.
  /// - "UPGRADE" : Runs `apt-get upgrade`.
  core.String type;

  AptSettings();

  AptSettings.fromJson(core.Map _json) {
    if (_json.containsKey('excludes')) {
      excludes = (_json['excludes'] as core.List).cast<core.String>();
    }
    if (_json.containsKey('exclusivePackages')) {
      exclusivePackages =
          (_json['exclusivePackages'] as core.List).cast<core.String>();
    }
    if (_json.containsKey('type')) {
      type = _json['type'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (excludes != null) {
      _json['excludes'] = excludes;
    }
    if (exclusivePackages != null) {
      _json['exclusivePackages'] = exclusivePackages;
    }
    if (type != null) {
      _json['type'] = type;
    }
    return _json;
  }
}

/// Message for canceling a patch job.
class CancelPatchJobRequest {
  CancelPatchJobRequest();

  CancelPatchJobRequest.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    return _json;
  }
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs. A typical example is to use it as the request
/// or the response type of an API method. For instance: service Foo { rpc
/// Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } The JSON
/// representation for `Empty` is empty JSON object `{}`.
class Empty {
  Empty();

  Empty.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    return _json;
  }
}

/// A step that runs an executable for a PatchJob.
class ExecStep {
  /// The ExecStepConfig for all Linux VMs targeted by the PatchJob.
  ExecStepConfig linuxExecStepConfig;

  /// The ExecStepConfig for all Windows VMs targeted by the PatchJob.
  ExecStepConfig windowsExecStepConfig;

  ExecStep();

  ExecStep.fromJson(core.Map _json) {
    if (_json.containsKey('linuxExecStepConfig')) {
      linuxExecStepConfig =
          ExecStepConfig.fromJson(_json['linuxExecStepConfig']);
    }
    if (_json.containsKey('windowsExecStepConfig')) {
      windowsExecStepConfig =
          ExecStepConfig.fromJson(_json['windowsExecStepConfig']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (linuxExecStepConfig != null) {
      _json['linuxExecStepConfig'] = linuxExecStepConfig.toJson();
    }
    if (windowsExecStepConfig != null) {
      _json['windowsExecStepConfig'] = windowsExecStepConfig.toJson();
    }
    return _json;
  }
}

/// Common configurations for an ExecStep.
class ExecStepConfig {
  /// Defaults to [0]. A list of possible return values that the execution can
  /// return to indicate a success.
  core.List<core.int> allowedSuccessCodes;

  /// A Cloud Storage object containing the executable.
  GcsObject gcsObject;

  /// The script interpreter to use to run the script. If no interpreter is
  /// specified the script will be executed directly, which will likely only
  /// succeed for scripts with [shebang lines]
  /// (https://en.wikipedia.org/wiki/Shebang_\(Unix\)).
  /// Possible string values are:
  /// - "INTERPRETER_UNSPECIFIED" : Invalid for a Windows ExecStepConfig. For a
  /// Linux ExecStepConfig, the interpreter will be parsed from the shebang line
  /// of the script if unspecified.
  /// - "SHELL" : Indicates that the script is run with `/bin/sh` on Linux and
  /// `cmd` on Windows.
  /// - "POWERSHELL" : Indicates that the file is run with PowerShell flags
  /// `-NonInteractive`, `-NoProfile`, and `-ExecutionPolicy Bypass`.
  core.String interpreter;

  /// An absolute path to the executable on the VM.
  core.String localPath;

  ExecStepConfig();

  ExecStepConfig.fromJson(core.Map _json) {
    if (_json.containsKey('allowedSuccessCodes')) {
      allowedSuccessCodes =
          (_json['allowedSuccessCodes'] as core.List).cast<core.int>();
    }
    if (_json.containsKey('gcsObject')) {
      gcsObject = GcsObject.fromJson(_json['gcsObject']);
    }
    if (_json.containsKey('interpreter')) {
      interpreter = _json['interpreter'];
    }
    if (_json.containsKey('localPath')) {
      localPath = _json['localPath'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (allowedSuccessCodes != null) {
      _json['allowedSuccessCodes'] = allowedSuccessCodes;
    }
    if (gcsObject != null) {
      _json['gcsObject'] = gcsObject.toJson();
    }
    if (interpreter != null) {
      _json['interpreter'] = interpreter;
    }
    if (localPath != null) {
      _json['localPath'] = localPath;
    }
    return _json;
  }
}

/// A request message to initiate patching across Compute Engine instances.
class ExecutePatchJobRequest {
  /// Description of the patch job. Length of the description is limited to 1024
  /// characters.
  core.String description;

  /// Display name for this patch job. This does not have to be unique.
  core.String displayName;

  /// If this patch is a dry-run only, instances are contacted but will do
  /// nothing.
  core.bool dryRun;

  /// Duration of the patch job. After the duration ends, the patch job times
  /// out.
  core.String duration;

  /// Required. Instances to patch, either explicitly or filtered by some
  /// criteria such as zone or labels.
  PatchInstanceFilter instanceFilter;

  /// Patch configuration being applied. If omitted, instances are patched using
  /// the default configurations.
  PatchConfig patchConfig;

  /// Rollout strategy of the patch job.
  PatchRollout rollout;

  ExecutePatchJobRequest();

  ExecutePatchJobRequest.fromJson(core.Map _json) {
    if (_json.containsKey('description')) {
      description = _json['description'];
    }
    if (_json.containsKey('displayName')) {
      displayName = _json['displayName'];
    }
    if (_json.containsKey('dryRun')) {
      dryRun = _json['dryRun'];
    }
    if (_json.containsKey('duration')) {
      duration = _json['duration'];
    }
    if (_json.containsKey('instanceFilter')) {
      instanceFilter = PatchInstanceFilter.fromJson(_json['instanceFilter']);
    }
    if (_json.containsKey('patchConfig')) {
      patchConfig = PatchConfig.fromJson(_json['patchConfig']);
    }
    if (_json.containsKey('rollout')) {
      rollout = PatchRollout.fromJson(_json['rollout']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (description != null) {
      _json['description'] = description;
    }
    if (displayName != null) {
      _json['displayName'] = displayName;
    }
    if (dryRun != null) {
      _json['dryRun'] = dryRun;
    }
    if (duration != null) {
      _json['duration'] = duration;
    }
    if (instanceFilter != null) {
      _json['instanceFilter'] = instanceFilter.toJson();
    }
    if (patchConfig != null) {
      _json['patchConfig'] = patchConfig.toJson();
    }
    if (rollout != null) {
      _json['rollout'] = rollout.toJson();
    }
    return _json;
  }
}

/// Message encapsulating a value that can be either absolute ("fixed") or
/// relative ("percent") to a value.
class FixedOrPercent {
  /// Specifies a fixed value.
  core.int fixed;

  /// Specifies the relative value defined as a percentage, which will be
  /// multiplied by a reference value.
  core.int percent;

  FixedOrPercent();

  FixedOrPercent.fromJson(core.Map _json) {
    if (_json.containsKey('fixed')) {
      fixed = _json['fixed'];
    }
    if (_json.containsKey('percent')) {
      percent = _json['percent'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (fixed != null) {
      _json['fixed'] = fixed;
    }
    if (percent != null) {
      _json['percent'] = percent;
    }
    return _json;
  }
}

/// Cloud Storage object representation.
class GcsObject {
  /// Required. Bucket of the Cloud Storage object.
  core.String bucket;

  /// Required. Generation number of the Cloud Storage object. This is used to
  /// ensure that the ExecStep specified by this PatchJob does not change.
  core.String generationNumber;

  /// Required. Name of the Cloud Storage object.
  core.String object;

  GcsObject();

  GcsObject.fromJson(core.Map _json) {
    if (_json.containsKey('bucket')) {
      bucket = _json['bucket'];
    }
    if (_json.containsKey('generationNumber')) {
      generationNumber = _json['generationNumber'];
    }
    if (_json.containsKey('object')) {
      object = _json['object'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (bucket != null) {
      _json['bucket'] = bucket;
    }
    if (generationNumber != null) {
      _json['generationNumber'] = generationNumber;
    }
    if (object != null) {
      _json['object'] = object;
    }
    return _json;
  }
}

/// Googet patching is performed by running `googet update`.
class GooSettings {
  GooSettings();

  GooSettings.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    return _json;
  }
}

/// A response message for listing patch deployments.
class ListPatchDeploymentsResponse {
  /// A pagination token that can be used to get the next page of patch
  /// deployments.
  core.String nextPageToken;

  /// The list of patch deployments.
  core.List<PatchDeployment> patchDeployments;

  ListPatchDeploymentsResponse();

  ListPatchDeploymentsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'];
    }
    if (_json.containsKey('patchDeployments')) {
      patchDeployments = (_json['patchDeployments'] as core.List)
          .map<PatchDeployment>((value) => PatchDeployment.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    if (patchDeployments != null) {
      _json['patchDeployments'] =
          patchDeployments.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// A response message for listing the instances details for a patch job.
class ListPatchJobInstanceDetailsResponse {
  /// A pagination token that can be used to get the next page of results.
  core.String nextPageToken;

  /// A list of instance status.
  core.List<PatchJobInstanceDetails> patchJobInstanceDetails;

  ListPatchJobInstanceDetailsResponse();

  ListPatchJobInstanceDetailsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'];
    }
    if (_json.containsKey('patchJobInstanceDetails')) {
      patchJobInstanceDetails = (_json['patchJobInstanceDetails'] as core.List)
          .map<PatchJobInstanceDetails>(
              (value) => PatchJobInstanceDetails.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    if (patchJobInstanceDetails != null) {
      _json['patchJobInstanceDetails'] =
          patchJobInstanceDetails.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// A response message for listing patch jobs.
class ListPatchJobsResponse {
  /// A pagination token that can be used to get the next page of results.
  core.String nextPageToken;

  /// The list of patch jobs.
  core.List<PatchJob> patchJobs;

  ListPatchJobsResponse();

  ListPatchJobsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'];
    }
    if (_json.containsKey('patchJobs')) {
      patchJobs = (_json['patchJobs'] as core.List)
          .map<PatchJob>((value) => PatchJob.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    if (patchJobs != null) {
      _json['patchJobs'] = patchJobs.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// Represents a monthly schedule. An example of a valid monthly schedule is "on
/// the third Tuesday of the month" or "on the 15th of the month".
class MonthlySchedule {
  /// Required. One day of the month. 1-31 indicates the 1st to the 31st day. -1
  /// indicates the last day of the month. Months without the target day will be
  /// skipped. For example, a schedule to run "every month on the 31st" will not
  /// run in February, April, June, etc.
  core.int monthDay;

  /// Required. Week day in a month.
  WeekDayOfMonth weekDayOfMonth;

  MonthlySchedule();

  MonthlySchedule.fromJson(core.Map _json) {
    if (_json.containsKey('monthDay')) {
      monthDay = _json['monthDay'];
    }
    if (_json.containsKey('weekDayOfMonth')) {
      weekDayOfMonth = WeekDayOfMonth.fromJson(_json['weekDayOfMonth']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (monthDay != null) {
      _json['monthDay'] = monthDay;
    }
    if (weekDayOfMonth != null) {
      _json['weekDayOfMonth'] = weekDayOfMonth.toJson();
    }
    return _json;
  }
}

/// Sets the time for a one time patch deployment. Timestamp is in
/// [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) text format.
class OneTimeSchedule {
  /// Required. The desired patch job execution time.
  core.String executeTime;

  OneTimeSchedule();

  OneTimeSchedule.fromJson(core.Map _json) {
    if (_json.containsKey('executeTime')) {
      executeTime = _json['executeTime'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (executeTime != null) {
      _json['executeTime'] = executeTime;
    }
    return _json;
  }
}

/// Patch configuration specifications. Contains details on how to apply the
/// patch(es) to a VM instance.
class PatchConfig {
  /// Apt update settings. Use this setting to override the default `apt` patch
  /// rules.
  AptSettings apt;

  /// Goo update settings. Use this setting to override the default `goo` patch
  /// rules.
  GooSettings goo;

  /// The `ExecStep` to run after the patch update.
  ExecStep postStep;

  /// The `ExecStep` to run before the patch update.
  ExecStep preStep;

  /// Post-patch reboot settings.
  /// Possible string values are:
  /// - "REBOOT_CONFIG_UNSPECIFIED" : The default behavior is DEFAULT.
  /// - "DEFAULT" : The agent decides if a reboot is necessary by checking
  /// signals such as registry keys on Windows or `/var/run/reboot-required` on
  /// APT based systems. On RPM based systems, a set of core system package
  /// install times are compared with system boot time.
  /// - "ALWAYS" : Always reboot the machine after the update completes.
  /// - "NEVER" : Never reboot the machine after the update completes.
  core.String rebootConfig;

  /// Windows update settings. Use this override the default windows patch
  /// rules.
  WindowsUpdateSettings windowsUpdate;

  /// Yum update settings. Use this setting to override the default `yum` patch
  /// rules.
  YumSettings yum;

  /// Zypper update settings. Use this setting to override the default `zypper`
  /// patch rules.
  ZypperSettings zypper;

  PatchConfig();

  PatchConfig.fromJson(core.Map _json) {
    if (_json.containsKey('apt')) {
      apt = AptSettings.fromJson(_json['apt']);
    }
    if (_json.containsKey('goo')) {
      goo = GooSettings.fromJson(_json['goo']);
    }
    if (_json.containsKey('postStep')) {
      postStep = ExecStep.fromJson(_json['postStep']);
    }
    if (_json.containsKey('preStep')) {
      preStep = ExecStep.fromJson(_json['preStep']);
    }
    if (_json.containsKey('rebootConfig')) {
      rebootConfig = _json['rebootConfig'];
    }
    if (_json.containsKey('windowsUpdate')) {
      windowsUpdate = WindowsUpdateSettings.fromJson(_json['windowsUpdate']);
    }
    if (_json.containsKey('yum')) {
      yum = YumSettings.fromJson(_json['yum']);
    }
    if (_json.containsKey('zypper')) {
      zypper = ZypperSettings.fromJson(_json['zypper']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (apt != null) {
      _json['apt'] = apt.toJson();
    }
    if (goo != null) {
      _json['goo'] = goo.toJson();
    }
    if (postStep != null) {
      _json['postStep'] = postStep.toJson();
    }
    if (preStep != null) {
      _json['preStep'] = preStep.toJson();
    }
    if (rebootConfig != null) {
      _json['rebootConfig'] = rebootConfig;
    }
    if (windowsUpdate != null) {
      _json['windowsUpdate'] = windowsUpdate.toJson();
    }
    if (yum != null) {
      _json['yum'] = yum.toJson();
    }
    if (zypper != null) {
      _json['zypper'] = zypper.toJson();
    }
    return _json;
  }
}

/// Patch deployments are configurations that individual patch jobs use to
/// complete a patch. These configurations include instance filter, package
/// repository settings, and a schedule. For more information about creating and
/// managing patch deployments, see [Scheduling patch
/// jobs](https://cloud.google.com/compute/docs/os-patch-management/schedule-patch-jobs).
class PatchDeployment {
  /// Output only. Time the patch deployment was created. Timestamp is in
  /// [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) text format.
  core.String createTime;

  /// Optional. Description of the patch deployment. Length of the description
  /// is limited to 1024 characters.
  core.String description;

  /// Optional. Duration of the patch. After the duration ends, the patch times
  /// out.
  core.String duration;

  /// Required. VM instances to patch.
  PatchInstanceFilter instanceFilter;

  /// Output only. The last time a patch job was started by this deployment.
  /// Timestamp is in [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) text
  /// format.
  core.String lastExecuteTime;

  /// Unique name for the patch deployment resource in a project. The patch
  /// deployment name is in the form:
  /// `projects/{project_id}/patchDeployments/{patch_deployment_id}`. This field
  /// is ignored when you create a new patch deployment.
  core.String name;

  /// Required. Schedule a one-time execution.
  OneTimeSchedule oneTimeSchedule;

  /// Optional. Patch configuration that is applied.
  PatchConfig patchConfig;

  /// Required. Schedule recurring executions.
  RecurringSchedule recurringSchedule;

  /// Optional. Rollout strategy of the patch job.
  PatchRollout rollout;

  /// Output only. Time the patch deployment was last updated. Timestamp is in
  /// [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) text format.
  core.String updateTime;

  PatchDeployment();

  PatchDeployment.fromJson(core.Map _json) {
    if (_json.containsKey('createTime')) {
      createTime = _json['createTime'];
    }
    if (_json.containsKey('description')) {
      description = _json['description'];
    }
    if (_json.containsKey('duration')) {
      duration = _json['duration'];
    }
    if (_json.containsKey('instanceFilter')) {
      instanceFilter = PatchInstanceFilter.fromJson(_json['instanceFilter']);
    }
    if (_json.containsKey('lastExecuteTime')) {
      lastExecuteTime = _json['lastExecuteTime'];
    }
    if (_json.containsKey('name')) {
      name = _json['name'];
    }
    if (_json.containsKey('oneTimeSchedule')) {
      oneTimeSchedule = OneTimeSchedule.fromJson(_json['oneTimeSchedule']);
    }
    if (_json.containsKey('patchConfig')) {
      patchConfig = PatchConfig.fromJson(_json['patchConfig']);
    }
    if (_json.containsKey('recurringSchedule')) {
      recurringSchedule =
          RecurringSchedule.fromJson(_json['recurringSchedule']);
    }
    if (_json.containsKey('rollout')) {
      rollout = PatchRollout.fromJson(_json['rollout']);
    }
    if (_json.containsKey('updateTime')) {
      updateTime = _json['updateTime'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (createTime != null) {
      _json['createTime'] = createTime;
    }
    if (description != null) {
      _json['description'] = description;
    }
    if (duration != null) {
      _json['duration'] = duration;
    }
    if (instanceFilter != null) {
      _json['instanceFilter'] = instanceFilter.toJson();
    }
    if (lastExecuteTime != null) {
      _json['lastExecuteTime'] = lastExecuteTime;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (oneTimeSchedule != null) {
      _json['oneTimeSchedule'] = oneTimeSchedule.toJson();
    }
    if (patchConfig != null) {
      _json['patchConfig'] = patchConfig.toJson();
    }
    if (recurringSchedule != null) {
      _json['recurringSchedule'] = recurringSchedule.toJson();
    }
    if (rollout != null) {
      _json['rollout'] = rollout.toJson();
    }
    if (updateTime != null) {
      _json['updateTime'] = updateTime;
    }
    return _json;
  }
}

/// A filter to target VM instances for patching. The targeted VMs must meet all
/// criteria specified. So if both labels and zones are specified, the patch job
/// targets only VMs with those labels and in those zones.
class PatchInstanceFilter {
  /// Target all VM instances in the project. If true, no other criteria is
  /// permitted.
  core.bool all;

  /// Targets VM instances matching ANY of these GroupLabels. This allows
  /// targeting of disparate groups of VM instances.
  core.List<PatchInstanceFilterGroupLabel> groupLabels;

  /// Targets VMs whose name starts with one of these prefixes. Similar to
  /// labels, this is another way to group VMs when targeting configs, for
  /// example prefix="prod-".
  core.List<core.String> instanceNamePrefixes;

  /// Targets any of the VM instances specified. Instances are specified by
  /// their URI in the form `zones/[ZONE]/instances/[INSTANCE_NAME]`,
  /// `projects/[PROJECT_ID]/zones/[ZONE]/instances/[INSTANCE_NAME]`, or
  /// `https://www.googleapis.com/compute/v1/projects/[PROJECT_ID]/zones/[ZONE]/instances/[INSTANCE_NAME]`
  core.List<core.String> instances;

  /// Targets VM instances in ANY of these zones. Leave empty to target VM
  /// instances in any zone.
  core.List<core.String> zones;

  PatchInstanceFilter();

  PatchInstanceFilter.fromJson(core.Map _json) {
    if (_json.containsKey('all')) {
      all = _json['all'];
    }
    if (_json.containsKey('groupLabels')) {
      groupLabels = (_json['groupLabels'] as core.List)
          .map<PatchInstanceFilterGroupLabel>(
              (value) => PatchInstanceFilterGroupLabel.fromJson(value))
          .toList();
    }
    if (_json.containsKey('instanceNamePrefixes')) {
      instanceNamePrefixes =
          (_json['instanceNamePrefixes'] as core.List).cast<core.String>();
    }
    if (_json.containsKey('instances')) {
      instances = (_json['instances'] as core.List).cast<core.String>();
    }
    if (_json.containsKey('zones')) {
      zones = (_json['zones'] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (all != null) {
      _json['all'] = all;
    }
    if (groupLabels != null) {
      _json['groupLabels'] =
          groupLabels.map((value) => value.toJson()).toList();
    }
    if (instanceNamePrefixes != null) {
      _json['instanceNamePrefixes'] = instanceNamePrefixes;
    }
    if (instances != null) {
      _json['instances'] = instances;
    }
    if (zones != null) {
      _json['zones'] = zones;
    }
    return _json;
  }
}

/// Targets a group of VM instances by using their [assigned
/// labels](https://cloud.google.com/compute/docs/labeling-resources). Labels
/// are key-value pairs. A `GroupLabel` is a combination of labels that is used
/// to target VMs for a patch job. For example, a patch job can target VMs that
/// have the following `GroupLabel`: `{"env":"test", "app":"web"}`. This means
/// that the patch job is applied to VMs that have both the labels `env=test`
/// and `app=web`.
class PatchInstanceFilterGroupLabel {
  /// Compute Engine instance labels that must be present for a VM instance to
  /// be targeted by this filter.
  core.Map<core.String, core.String> labels;

  PatchInstanceFilterGroupLabel();

  PatchInstanceFilterGroupLabel.fromJson(core.Map _json) {
    if (_json.containsKey('labels')) {
      labels = (_json['labels'] as core.Map).cast<core.String, core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (labels != null) {
      _json['labels'] = labels;
    }
    return _json;
  }
}

/// A high level representation of a patch job that is either in progress or has
/// completed. Instance details are not included in the job. To paginate through
/// instance details, use ListPatchJobInstanceDetails. For more information
/// about patch jobs, see [Creating patch
/// jobs](https://cloud.google.com/compute/docs/os-patch-management/create-patch-job).
class PatchJob {
  /// Time this patch job was created.
  core.String createTime;

  /// Description of the patch job. Length of the description is limited to 1024
  /// characters.
  core.String description;

  /// Display name for this patch job. This is not a unique identifier.
  core.String displayName;

  /// If this patch job is a dry run, the agent reports that it has finished
  /// without running any updates on the VM instance.
  core.bool dryRun;

  /// Duration of the patch job. After the duration ends, the patch job times
  /// out.
  core.String duration;

  /// If this patch job failed, this message provides information about the
  /// failure.
  core.String errorMessage;

  /// Summary of instance details.
  PatchJobInstanceDetailsSummary instanceDetailsSummary;

  /// Instances to patch.
  PatchInstanceFilter instanceFilter;

  /// Unique identifier for this patch job in the form `projects / * /patchJobs
  /// / * `
  core.String name;

  /// Patch configuration being applied.
  PatchConfig patchConfig;

  /// Output only. Name of the patch deployment that created this patch job.
  core.String patchDeployment;

  /// Reflects the overall progress of the patch job in the range of 0.0 being
  /// no progress to 100.0 being complete.
  core.double percentComplete;

  /// Rollout strategy being applied.
  PatchRollout rollout;

  /// The current state of the PatchJob.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : State must be specified.
  /// - "STARTED" : The patch job was successfully initiated.
  /// - "INSTANCE_LOOKUP" : The patch job is looking up instances to run the
  /// patch on.
  /// - "PATCHING" : Instances are being patched.
  /// - "SUCCEEDED" : Patch job completed successfully.
  /// - "COMPLETED_WITH_ERRORS" : Patch job completed but there were errors.
  /// - "CANCELED" : The patch job was canceled.
  /// - "TIMED_OUT" : The patch job timed out.
  core.String state;

  /// Last time this patch job was updated.
  core.String updateTime;

  PatchJob();

  PatchJob.fromJson(core.Map _json) {
    if (_json.containsKey('createTime')) {
      createTime = _json['createTime'];
    }
    if (_json.containsKey('description')) {
      description = _json['description'];
    }
    if (_json.containsKey('displayName')) {
      displayName = _json['displayName'];
    }
    if (_json.containsKey('dryRun')) {
      dryRun = _json['dryRun'];
    }
    if (_json.containsKey('duration')) {
      duration = _json['duration'];
    }
    if (_json.containsKey('errorMessage')) {
      errorMessage = _json['errorMessage'];
    }
    if (_json.containsKey('instanceDetailsSummary')) {
      instanceDetailsSummary = PatchJobInstanceDetailsSummary.fromJson(
          _json['instanceDetailsSummary']);
    }
    if (_json.containsKey('instanceFilter')) {
      instanceFilter = PatchInstanceFilter.fromJson(_json['instanceFilter']);
    }
    if (_json.containsKey('name')) {
      name = _json['name'];
    }
    if (_json.containsKey('patchConfig')) {
      patchConfig = PatchConfig.fromJson(_json['patchConfig']);
    }
    if (_json.containsKey('patchDeployment')) {
      patchDeployment = _json['patchDeployment'];
    }
    if (_json.containsKey('percentComplete')) {
      percentComplete = _json['percentComplete'].toDouble();
    }
    if (_json.containsKey('rollout')) {
      rollout = PatchRollout.fromJson(_json['rollout']);
    }
    if (_json.containsKey('state')) {
      state = _json['state'];
    }
    if (_json.containsKey('updateTime')) {
      updateTime = _json['updateTime'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (createTime != null) {
      _json['createTime'] = createTime;
    }
    if (description != null) {
      _json['description'] = description;
    }
    if (displayName != null) {
      _json['displayName'] = displayName;
    }
    if (dryRun != null) {
      _json['dryRun'] = dryRun;
    }
    if (duration != null) {
      _json['duration'] = duration;
    }
    if (errorMessage != null) {
      _json['errorMessage'] = errorMessage;
    }
    if (instanceDetailsSummary != null) {
      _json['instanceDetailsSummary'] = instanceDetailsSummary.toJson();
    }
    if (instanceFilter != null) {
      _json['instanceFilter'] = instanceFilter.toJson();
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (patchConfig != null) {
      _json['patchConfig'] = patchConfig.toJson();
    }
    if (patchDeployment != null) {
      _json['patchDeployment'] = patchDeployment;
    }
    if (percentComplete != null) {
      _json['percentComplete'] = percentComplete;
    }
    if (rollout != null) {
      _json['rollout'] = rollout.toJson();
    }
    if (state != null) {
      _json['state'] = state;
    }
    if (updateTime != null) {
      _json['updateTime'] = updateTime;
    }
    return _json;
  }
}

/// Patch details for a VM instance. For more information about reviewing VM
/// instance details, see [Listing all VM instance details for a specific patch
/// job](https://cloud.google.com/compute/docs/os-patch-management/manage-patch-jobs#list-instance-details).
class PatchJobInstanceDetails {
  /// The number of times the agent that the agent attempts to apply the patch.
  core.String attemptCount;

  /// If the patch fails, this field provides the reason.
  core.String failureReason;

  /// The unique identifier for the instance. This identifier is defined by the
  /// server.
  core.String instanceSystemId;

  /// The instance name in the form `projects / * /zones / * /instances / * `
  core.String name;

  /// Current state of instance patch.
  /// Possible string values are:
  /// - "PATCH_STATE_UNSPECIFIED" : Unspecified.
  /// - "PENDING" : The instance is not yet notified.
  /// - "INACTIVE" : Instance is inactive and cannot be patched.
  /// - "NOTIFIED" : The instance is notified that it should be patched.
  /// - "STARTED" : The instance has started the patching process.
  /// - "DOWNLOADING_PATCHES" : The instance is downloading patches.
  /// - "APPLYING_PATCHES" : The instance is applying patches.
  /// - "REBOOTING" : The instance is rebooting.
  /// - "SUCCEEDED" : The instance has completed applying patches.
  /// - "SUCCEEDED_REBOOT_REQUIRED" : The instance has completed applying
  /// patches but a reboot is required.
  /// - "FAILED" : The instance has failed to apply the patch.
  /// - "ACKED" : The instance acked the notification and will start shortly.
  /// - "TIMED_OUT" : The instance exceeded the time out while applying the
  /// patch.
  /// - "RUNNING_PRE_PATCH_STEP" : The instance is running the pre-patch step.
  /// - "RUNNING_POST_PATCH_STEP" : The instance is running the post-patch step.
  /// - "NO_AGENT_DETECTED" : The service could not detect the presence of the
  /// agent. Check to ensure that the agent is installed, running, and able to
  /// communicate with the service.
  core.String state;

  PatchJobInstanceDetails();

  PatchJobInstanceDetails.fromJson(core.Map _json) {
    if (_json.containsKey('attemptCount')) {
      attemptCount = _json['attemptCount'];
    }
    if (_json.containsKey('failureReason')) {
      failureReason = _json['failureReason'];
    }
    if (_json.containsKey('instanceSystemId')) {
      instanceSystemId = _json['instanceSystemId'];
    }
    if (_json.containsKey('name')) {
      name = _json['name'];
    }
    if (_json.containsKey('state')) {
      state = _json['state'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (attemptCount != null) {
      _json['attemptCount'] = attemptCount;
    }
    if (failureReason != null) {
      _json['failureReason'] = failureReason;
    }
    if (instanceSystemId != null) {
      _json['instanceSystemId'] = instanceSystemId;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (state != null) {
      _json['state'] = state;
    }
    return _json;
  }
}

/// A summary of the current patch state across all instances that this patch
/// job affects. Contains counts of instances in different states. These states
/// map to `InstancePatchState`. List patch job instance details to see the
/// specific states of each instance.
class PatchJobInstanceDetailsSummary {
  /// Number of instances that have acked and will start shortly.
  core.String ackedInstanceCount;

  /// Number of instances that are applying patches.
  core.String applyingPatchesInstanceCount;

  /// Number of instances that are downloading patches.
  core.String downloadingPatchesInstanceCount;

  /// Number of instances that failed.
  core.String failedInstanceCount;

  /// Number of instances that are inactive.
  core.String inactiveInstanceCount;

  /// Number of instances that do not appear to be running the agent. Check to
  /// ensure that the agent is installed, running, and able to communicate with
  /// the service.
  core.String noAgentDetectedInstanceCount;

  /// Number of instances notified about patch job.
  core.String notifiedInstanceCount;

  /// Number of instances pending patch job.
  core.String pendingInstanceCount;

  /// Number of instances that are running the post-patch step.
  core.String postPatchStepInstanceCount;

  /// Number of instances that are running the pre-patch step.
  core.String prePatchStepInstanceCount;

  /// Number of instances rebooting.
  core.String rebootingInstanceCount;

  /// Number of instances that have started.
  core.String startedInstanceCount;

  /// Number of instances that have completed successfully.
  core.String succeededInstanceCount;

  /// Number of instances that require reboot.
  core.String succeededRebootRequiredInstanceCount;

  /// Number of instances that exceeded the time out while applying the patch.
  core.String timedOutInstanceCount;

  PatchJobInstanceDetailsSummary();

  PatchJobInstanceDetailsSummary.fromJson(core.Map _json) {
    if (_json.containsKey('ackedInstanceCount')) {
      ackedInstanceCount = _json['ackedInstanceCount'];
    }
    if (_json.containsKey('applyingPatchesInstanceCount')) {
      applyingPatchesInstanceCount = _json['applyingPatchesInstanceCount'];
    }
    if (_json.containsKey('downloadingPatchesInstanceCount')) {
      downloadingPatchesInstanceCount =
          _json['downloadingPatchesInstanceCount'];
    }
    if (_json.containsKey('failedInstanceCount')) {
      failedInstanceCount = _json['failedInstanceCount'];
    }
    if (_json.containsKey('inactiveInstanceCount')) {
      inactiveInstanceCount = _json['inactiveInstanceCount'];
    }
    if (_json.containsKey('noAgentDetectedInstanceCount')) {
      noAgentDetectedInstanceCount = _json['noAgentDetectedInstanceCount'];
    }
    if (_json.containsKey('notifiedInstanceCount')) {
      notifiedInstanceCount = _json['notifiedInstanceCount'];
    }
    if (_json.containsKey('pendingInstanceCount')) {
      pendingInstanceCount = _json['pendingInstanceCount'];
    }
    if (_json.containsKey('postPatchStepInstanceCount')) {
      postPatchStepInstanceCount = _json['postPatchStepInstanceCount'];
    }
    if (_json.containsKey('prePatchStepInstanceCount')) {
      prePatchStepInstanceCount = _json['prePatchStepInstanceCount'];
    }
    if (_json.containsKey('rebootingInstanceCount')) {
      rebootingInstanceCount = _json['rebootingInstanceCount'];
    }
    if (_json.containsKey('startedInstanceCount')) {
      startedInstanceCount = _json['startedInstanceCount'];
    }
    if (_json.containsKey('succeededInstanceCount')) {
      succeededInstanceCount = _json['succeededInstanceCount'];
    }
    if (_json.containsKey('succeededRebootRequiredInstanceCount')) {
      succeededRebootRequiredInstanceCount =
          _json['succeededRebootRequiredInstanceCount'];
    }
    if (_json.containsKey('timedOutInstanceCount')) {
      timedOutInstanceCount = _json['timedOutInstanceCount'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (ackedInstanceCount != null) {
      _json['ackedInstanceCount'] = ackedInstanceCount;
    }
    if (applyingPatchesInstanceCount != null) {
      _json['applyingPatchesInstanceCount'] = applyingPatchesInstanceCount;
    }
    if (downloadingPatchesInstanceCount != null) {
      _json['downloadingPatchesInstanceCount'] =
          downloadingPatchesInstanceCount;
    }
    if (failedInstanceCount != null) {
      _json['failedInstanceCount'] = failedInstanceCount;
    }
    if (inactiveInstanceCount != null) {
      _json['inactiveInstanceCount'] = inactiveInstanceCount;
    }
    if (noAgentDetectedInstanceCount != null) {
      _json['noAgentDetectedInstanceCount'] = noAgentDetectedInstanceCount;
    }
    if (notifiedInstanceCount != null) {
      _json['notifiedInstanceCount'] = notifiedInstanceCount;
    }
    if (pendingInstanceCount != null) {
      _json['pendingInstanceCount'] = pendingInstanceCount;
    }
    if (postPatchStepInstanceCount != null) {
      _json['postPatchStepInstanceCount'] = postPatchStepInstanceCount;
    }
    if (prePatchStepInstanceCount != null) {
      _json['prePatchStepInstanceCount'] = prePatchStepInstanceCount;
    }
    if (rebootingInstanceCount != null) {
      _json['rebootingInstanceCount'] = rebootingInstanceCount;
    }
    if (startedInstanceCount != null) {
      _json['startedInstanceCount'] = startedInstanceCount;
    }
    if (succeededInstanceCount != null) {
      _json['succeededInstanceCount'] = succeededInstanceCount;
    }
    if (succeededRebootRequiredInstanceCount != null) {
      _json['succeededRebootRequiredInstanceCount'] =
          succeededRebootRequiredInstanceCount;
    }
    if (timedOutInstanceCount != null) {
      _json['timedOutInstanceCount'] = timedOutInstanceCount;
    }
    return _json;
  }
}

/// Patch rollout configuration specifications. Contains details on the
/// concurrency control when applying patch(es) to all targeted VMs.
class PatchRollout {
  /// The maximum number (or percentage) of VMs per zone to disrupt at any given
  /// moment. The number of VMs calculated from multiplying the percentage by
  /// the total number of VMs in a zone is rounded up. During patching, a VM is
  /// considered disrupted from the time the agent is notified to begin until
  /// patching has completed. This disruption time includes the time to complete
  /// reboot and any post-patch steps. A VM contributes to the disruption budget
  /// if its patching operation fails either when applying the patches, running
  /// pre or post patch steps, or if it fails to respond with a success
  /// notification before timing out. VMs that are not running or do not have an
  /// active agent do not count toward this disruption budget. For zone-by-zone
  /// rollouts, if the disruption budget in a zone is exceeded, the patch job
  /// stops, because continuing to the next zone requires completion of the
  /// patch process in the previous zone. For example, if the disruption budget
  /// has a fixed value of `10`, and 8 VMs fail to patch in the current zone,
  /// the patch job continues to patch 2 VMs at a time until the zone is
  /// completed. When that zone is completed successfully, patching begins with
  /// 10 VMs at a time in the next zone. If 10 VMs in the next zone fail to
  /// patch, the patch job stops.
  FixedOrPercent disruptionBudget;

  /// Mode of the patch rollout.
  /// Possible string values are:
  /// - "MODE_UNSPECIFIED" : Mode must be specified.
  /// - "ZONE_BY_ZONE" : Patches are applied one zone at a time. The patch job
  /// begins in the region with the lowest number of targeted VMs. Within the
  /// region, patching begins in the zone with the lowest number of targeted
  /// VMs. If multiple regions (or zones within a region) have the same number
  /// of targeted VMs, a tie-breaker is achieved by sorting the regions or zones
  /// in alphabetical order.
  /// - "CONCURRENT_ZONES" : Patches are applied to VMs in all zones at the same
  /// time.
  core.String mode;

  PatchRollout();

  PatchRollout.fromJson(core.Map _json) {
    if (_json.containsKey('disruptionBudget')) {
      disruptionBudget = FixedOrPercent.fromJson(_json['disruptionBudget']);
    }
    if (_json.containsKey('mode')) {
      mode = _json['mode'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (disruptionBudget != null) {
      _json['disruptionBudget'] = disruptionBudget.toJson();
    }
    if (mode != null) {
      _json['mode'] = mode;
    }
    return _json;
  }
}

/// Sets the time for recurring patch deployments.
class RecurringSchedule {
  /// Optional. The end time at which a recurring patch deployment schedule is
  /// no longer active.
  core.String endTime;

  /// Required. The frequency unit of this recurring schedule.
  /// Possible string values are:
  /// - "FREQUENCY_UNSPECIFIED" : Invalid. A frequency must be specified.
  /// - "WEEKLY" : Indicates that the frequency should be expressed in terms of
  /// weeks.
  /// - "MONTHLY" : Indicates that the frequency should be expressed in terms of
  /// months.
  core.String frequency;

  /// Output only. The time the last patch job ran successfully.
  core.String lastExecuteTime;

  /// Required. Schedule with monthly executions.
  MonthlySchedule monthly;

  /// Output only. The time the next patch job is scheduled to run.
  core.String nextExecuteTime;

  /// Optional. The time that the recurring schedule becomes effective. Defaults
  /// to `create_time` of the patch deployment.
  core.String startTime;

  /// Required. Time of the day to run a recurring deployment.
  TimeOfDay timeOfDay;

  /// Required. Defines the time zone that `time_of_day` is relative to. The
  /// rules for daylight saving time are determined by the chosen time zone.
  TimeZone timeZone;

  /// Required. Schedule with weekly executions.
  WeeklySchedule weekly;

  RecurringSchedule();

  RecurringSchedule.fromJson(core.Map _json) {
    if (_json.containsKey('endTime')) {
      endTime = _json['endTime'];
    }
    if (_json.containsKey('frequency')) {
      frequency = _json['frequency'];
    }
    if (_json.containsKey('lastExecuteTime')) {
      lastExecuteTime = _json['lastExecuteTime'];
    }
    if (_json.containsKey('monthly')) {
      monthly = MonthlySchedule.fromJson(_json['monthly']);
    }
    if (_json.containsKey('nextExecuteTime')) {
      nextExecuteTime = _json['nextExecuteTime'];
    }
    if (_json.containsKey('startTime')) {
      startTime = _json['startTime'];
    }
    if (_json.containsKey('timeOfDay')) {
      timeOfDay = TimeOfDay.fromJson(_json['timeOfDay']);
    }
    if (_json.containsKey('timeZone')) {
      timeZone = TimeZone.fromJson(_json['timeZone']);
    }
    if (_json.containsKey('weekly')) {
      weekly = WeeklySchedule.fromJson(_json['weekly']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (endTime != null) {
      _json['endTime'] = endTime;
    }
    if (frequency != null) {
      _json['frequency'] = frequency;
    }
    if (lastExecuteTime != null) {
      _json['lastExecuteTime'] = lastExecuteTime;
    }
    if (monthly != null) {
      _json['monthly'] = monthly.toJson();
    }
    if (nextExecuteTime != null) {
      _json['nextExecuteTime'] = nextExecuteTime;
    }
    if (startTime != null) {
      _json['startTime'] = startTime;
    }
    if (timeOfDay != null) {
      _json['timeOfDay'] = timeOfDay.toJson();
    }
    if (timeZone != null) {
      _json['timeZone'] = timeZone.toJson();
    }
    if (weekly != null) {
      _json['weekly'] = weekly.toJson();
    }
    return _json;
  }
}

/// Represents a time of day. The date and time zone are either not significant
/// or are specified elsewhere. An API may choose to allow leap seconds. Related
/// types are google.type.Date and `google.protobuf.Timestamp`.
class TimeOfDay {
  /// Hours of day in 24 hour format. Should be from 0 to 23. An API may choose
  /// to allow the value "24:00:00" for scenarios like business closing time.
  core.int hours;

  /// Minutes of hour of day. Must be from 0 to 59.
  core.int minutes;

  /// Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999.
  core.int nanos;

  /// Seconds of minutes of the time. Must normally be from 0 to 59. An API may
  /// allow the value 60 if it allows leap-seconds.
  core.int seconds;

  TimeOfDay();

  TimeOfDay.fromJson(core.Map _json) {
    if (_json.containsKey('hours')) {
      hours = _json['hours'];
    }
    if (_json.containsKey('minutes')) {
      minutes = _json['minutes'];
    }
    if (_json.containsKey('nanos')) {
      nanos = _json['nanos'];
    }
    if (_json.containsKey('seconds')) {
      seconds = _json['seconds'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (hours != null) {
      _json['hours'] = hours;
    }
    if (minutes != null) {
      _json['minutes'] = minutes;
    }
    if (nanos != null) {
      _json['nanos'] = nanos;
    }
    if (seconds != null) {
      _json['seconds'] = seconds;
    }
    return _json;
  }
}

/// Represents a time zone from the [IANA Time Zone
/// Database](https://www.iana.org/time-zones).
class TimeZone {
  /// IANA Time Zone Database time zone, e.g. "America/New_York".
  core.String id;

  /// Optional. IANA Time Zone Database version number, e.g. "2019a".
  core.String version;

  TimeZone();

  TimeZone.fromJson(core.Map _json) {
    if (_json.containsKey('id')) {
      id = _json['id'];
    }
    if (_json.containsKey('version')) {
      version = _json['version'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (id != null) {
      _json['id'] = id;
    }
    if (version != null) {
      _json['version'] = version;
    }
    return _json;
  }
}

/// Represents one week day in a month. An example is "the 4th Sunday".
class WeekDayOfMonth {
  /// Required. A day of the week.
  /// Possible string values are:
  /// - "DAY_OF_WEEK_UNSPECIFIED" : The day of the week is unspecified.
  /// - "MONDAY" : Monday
  /// - "TUESDAY" : Tuesday
  /// - "WEDNESDAY" : Wednesday
  /// - "THURSDAY" : Thursday
  /// - "FRIDAY" : Friday
  /// - "SATURDAY" : Saturday
  /// - "SUNDAY" : Sunday
  core.String dayOfWeek;

  /// Required. Week number in a month. 1-4 indicates the 1st to 4th week of the
  /// month. -1 indicates the last week of the month.
  core.int weekOrdinal;

  WeekDayOfMonth();

  WeekDayOfMonth.fromJson(core.Map _json) {
    if (_json.containsKey('dayOfWeek')) {
      dayOfWeek = _json['dayOfWeek'];
    }
    if (_json.containsKey('weekOrdinal')) {
      weekOrdinal = _json['weekOrdinal'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (dayOfWeek != null) {
      _json['dayOfWeek'] = dayOfWeek;
    }
    if (weekOrdinal != null) {
      _json['weekOrdinal'] = weekOrdinal;
    }
    return _json;
  }
}

/// Represents a weekly schedule.
class WeeklySchedule {
  /// Required. Day of the week.
  /// Possible string values are:
  /// - "DAY_OF_WEEK_UNSPECIFIED" : The day of the week is unspecified.
  /// - "MONDAY" : Monday
  /// - "TUESDAY" : Tuesday
  /// - "WEDNESDAY" : Wednesday
  /// - "THURSDAY" : Thursday
  /// - "FRIDAY" : Friday
  /// - "SATURDAY" : Saturday
  /// - "SUNDAY" : Sunday
  core.String dayOfWeek;

  WeeklySchedule();

  WeeklySchedule.fromJson(core.Map _json) {
    if (_json.containsKey('dayOfWeek')) {
      dayOfWeek = _json['dayOfWeek'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (dayOfWeek != null) {
      _json['dayOfWeek'] = dayOfWeek;
    }
    return _json;
  }
}

/// Windows patching is performed using the Windows Update Agent.
class WindowsUpdateSettings {
  /// Only apply updates of these windows update classifications. If empty, all
  /// updates are applied.
  core.List<core.String> classifications;

  /// List of KBs to exclude from update.
  core.List<core.String> excludes;

  /// An exclusive list of kbs to be updated. These are the only patches that
  /// will be updated. This field must not be used with other patch
  /// configurations.
  core.List<core.String> exclusivePatches;

  WindowsUpdateSettings();

  WindowsUpdateSettings.fromJson(core.Map _json) {
    if (_json.containsKey('classifications')) {
      classifications =
          (_json['classifications'] as core.List).cast<core.String>();
    }
    if (_json.containsKey('excludes')) {
      excludes = (_json['excludes'] as core.List).cast<core.String>();
    }
    if (_json.containsKey('exclusivePatches')) {
      exclusivePatches =
          (_json['exclusivePatches'] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (classifications != null) {
      _json['classifications'] = classifications;
    }
    if (excludes != null) {
      _json['excludes'] = excludes;
    }
    if (exclusivePatches != null) {
      _json['exclusivePatches'] = exclusivePatches;
    }
    return _json;
  }
}

/// Yum patching is performed by executing `yum update`. Additional options can
/// be set to control how this is executed. Note that not all settings are
/// supported on all platforms.
class YumSettings {
  /// List of packages to exclude from update. These packages are excluded by
  /// using the yum `--exclude` flag.
  core.List<core.String> excludes;

  /// An exclusive list of packages to be updated. These are the only packages
  /// that will be updated. If these packages are not installed, they will be
  /// ignored. This field must not be specified with any other patch
  /// configuration fields.
  core.List<core.String> exclusivePackages;

  /// Will cause patch to run `yum update-minimal` instead.
  core.bool minimal;

  /// Adds the `--security` flag to `yum update`. Not supported on all
  /// platforms.
  core.bool security;

  YumSettings();

  YumSettings.fromJson(core.Map _json) {
    if (_json.containsKey('excludes')) {
      excludes = (_json['excludes'] as core.List).cast<core.String>();
    }
    if (_json.containsKey('exclusivePackages')) {
      exclusivePackages =
          (_json['exclusivePackages'] as core.List).cast<core.String>();
    }
    if (_json.containsKey('minimal')) {
      minimal = _json['minimal'];
    }
    if (_json.containsKey('security')) {
      security = _json['security'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (excludes != null) {
      _json['excludes'] = excludes;
    }
    if (exclusivePackages != null) {
      _json['exclusivePackages'] = exclusivePackages;
    }
    if (minimal != null) {
      _json['minimal'] = minimal;
    }
    if (security != null) {
      _json['security'] = security;
    }
    return _json;
  }
}

/// Zypper patching is performed by running `zypper patch`. See also
/// https://en.opensuse.org/SDB:Zypper_manual.
class ZypperSettings {
  /// Install only patches with these categories. Common categories include
  /// security, recommended, and feature.
  core.List<core.String> categories;

  /// List of patches to exclude from update.
  core.List<core.String> excludes;

  /// An exclusive list of patches to be updated. These are the only patches
  /// that will be installed using 'zypper patch patch:' command. This field
  /// must not be used with any other patch configuration fields.
  core.List<core.String> exclusivePatches;

  /// Install only patches with these severities. Common severities include
  /// critical, important, moderate, and low.
  core.List<core.String> severities;

  /// Adds the `--with-optional` flag to `zypper patch`.
  core.bool withOptional;

  /// Adds the `--with-update` flag, to `zypper patch`.
  core.bool withUpdate;

  ZypperSettings();

  ZypperSettings.fromJson(core.Map _json) {
    if (_json.containsKey('categories')) {
      categories = (_json['categories'] as core.List).cast<core.String>();
    }
    if (_json.containsKey('excludes')) {
      excludes = (_json['excludes'] as core.List).cast<core.String>();
    }
    if (_json.containsKey('exclusivePatches')) {
      exclusivePatches =
          (_json['exclusivePatches'] as core.List).cast<core.String>();
    }
    if (_json.containsKey('severities')) {
      severities = (_json['severities'] as core.List).cast<core.String>();
    }
    if (_json.containsKey('withOptional')) {
      withOptional = _json['withOptional'];
    }
    if (_json.containsKey('withUpdate')) {
      withUpdate = _json['withUpdate'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (categories != null) {
      _json['categories'] = categories;
    }
    if (excludes != null) {
      _json['excludes'] = excludes;
    }
    if (exclusivePatches != null) {
      _json['exclusivePatches'] = exclusivePatches;
    }
    if (severities != null) {
      _json['severities'] = severities;
    }
    if (withOptional != null) {
      _json['withOptional'] = withOptional;
    }
    if (withUpdate != null) {
      _json['withUpdate'] = withUpdate;
    }
    return _json;
  }
}
