// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: unnecessary_cast

library googleapis_beta.healthcare.v1beta1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client healthcare/v1beta1';

/// Manage, store, and access healthcare data in Google Cloud Platform.
class HealthcareApi {
  /// View and manage your data across Google Cloud Platform services
  static const CloudPlatformScope =
      "https://www.googleapis.com/auth/cloud-platform";

  final commons.ApiRequester _requester;

  ProjectsResourceApi get projects => new ProjectsResourceApi(_requester);

  HealthcareApi(http.Client client,
      {core.String rootUrl = "https://healthcare.googleapis.com/",
      core.String servicePath = ""})
      : _requester =
            new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}

class ProjectsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLocationsResourceApi get locations =>
      new ProjectsLocationsResourceApi(_requester);

  ProjectsResourceApi(commons.ApiRequester client) : _requester = client;
}

class ProjectsLocationsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLocationsDatasetsResourceApi get datasets =>
      new ProjectsLocationsDatasetsResourceApi(_requester);

  ProjectsLocationsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Gets information about a location.
  ///
  /// Request parameters:
  ///
  /// [name] - Resource name for the location.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Location].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Location> get(core.String name, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Location.fromJson(data));
  }

  /// Lists information about the supported locations for this service.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource that owns the locations collection, if applicable.
  /// Value must have pattern "^projects/[^/]+$".
  ///
  /// [filter] - The standard list filter.
  ///
  /// [pageToken] - The standard list page token.
  ///
  /// [pageSize] - The standard list page size.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListLocationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListLocationsResponse> list(core.String name,
      {core.String filter,
      core.String pageToken,
      core.int pageSize,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        '/locations';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListLocationsResponse.fromJson(data));
  }
}

class ProjectsLocationsDatasetsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLocationsDatasetsDicomStoresResourceApi get dicomStores =>
      new ProjectsLocationsDatasetsDicomStoresResourceApi(_requester);
  ProjectsLocationsDatasetsFhirStoresResourceApi get fhirStores =>
      new ProjectsLocationsDatasetsFhirStoresResourceApi(_requester);
  ProjectsLocationsDatasetsHl7V2StoresResourceApi get hl7V2Stores =>
      new ProjectsLocationsDatasetsHl7V2StoresResourceApi(_requester);
  ProjectsLocationsDatasetsOperationsResourceApi get operations =>
      new ProjectsLocationsDatasetsOperationsResourceApi(_requester);

  ProjectsLocationsDatasetsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new health dataset. Results are returned through the
  /// Operation interface which returns either an
  /// `Operation.response` which contains a Dataset or
  /// `Operation.error`. The metadata
  /// field type is OperationMetadata.
  /// A Google Cloud Platform project can contain up to 500 datasets across all
  /// regions.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the project in which the dataset should be created
  /// (e.g.,
  /// `projects/{project_id}/locations/{location_id}`).
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+$".
  ///
  /// [datasetId] - The ID of the dataset that is being created.
  /// The string must match the following regex: `[\p{L}\p{N}_\-\.]{1,256}`.
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
  async.Future<Operation> create(Dataset request, core.String parent,
      {core.String datasetId, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (datasetId != null) {
      _queryParams["datasetId"] = [datasetId];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/datasets';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Creates a new dataset containing de-identified data from the source
  /// dataset. The metadata field type
  /// is OperationMetadata.
  /// If the request is successful, the
  /// response field type is
  /// DeidentifySummary.
  /// If errors occur,
  /// details field type is
  /// DeidentifyErrorDetails.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [sourceDataset] - Source dataset resource name. (e.g.,
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}`).
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+/datasets/[^/]+$".
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
  async.Future<Operation> deidentify(
      DeidentifyDatasetRequest request, core.String sourceDataset,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (sourceDataset == null) {
      throw new core.ArgumentError("Parameter sourceDataset is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$sourceDataset') +
        ':deidentify';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Deletes the specified health dataset and all data contained in the
  /// dataset.
  /// Deleting a dataset does not affect the sources from which the dataset was
  /// imported (if any).
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the dataset to delete (e.g.,
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}`).
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+/datasets/[^/]+$".
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
  async.Future<Empty> delete(core.String name, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /// Gets any metadata associated with a dataset.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the dataset to read (e.g.,
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}`).
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+/datasets/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Dataset].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Dataset> get(core.String name, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Dataset.fromJson(data));
  }

  /// Gets the access control policy for a resource.
  /// Returns an empty policy if the resource exists and does not have a policy
  /// set.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested.
  /// See the operation documentation for the appropriate value for this field.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+/datasets/[^/]+$".
  ///
  /// [options_requestedPolicyVersion] - Optional. The policy format version to
  /// be returned.
  /// Acceptable values are 0 and 1.
  /// If the value is 0, or the field is omitted, policy format version 1 will
  /// be
  /// returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Policy> getIamPolicy(core.String resource,
      {core.int options_requestedPolicyVersion, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (resource == null) {
      throw new core.ArgumentError("Parameter resource is required.");
    }
    if (options_requestedPolicyVersion != null) {
      _queryParams["options.requestedPolicyVersion"] = [
        "${options_requestedPolicyVersion}"
      ];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':getIamPolicy';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Policy.fromJson(data));
  }

  /// Lists the health datasets in the current project.
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the project whose datasets should be listed (e.g.,
  /// `projects/{project_id}/locations/{location_id}`).
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+$".
  ///
  /// [pageToken] - The next_page_token value returned from a previous List
  /// request, if any.
  ///
  /// [pageSize] - The maximum number of items to return. Capped to 100 if not
  /// specified.
  /// May not be larger than 1000.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListDatasetsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListDatasetsResponse> list(core.String parent,
      {core.String pageToken, core.int pageSize, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/datasets';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListDatasetsResponse.fromJson(data));
  }

  /// Updates dataset metadata.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. Resource name of the dataset, of the form
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}`.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+/datasets/[^/]+$".
  ///
  /// [updateMask] - The update mask applies to the resource. For the
  /// `FieldMask` definition,
  /// see
  /// https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Dataset].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Dataset> patch(Dataset request, core.String name,
      {core.String updateMask, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (updateMask != null) {
      _queryParams["updateMask"] = [updateMask];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Dataset.fromJson(data));
  }

  /// Sets the access control policy on the specified resource. Replaces any
  /// existing policy.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified.
  /// See the operation documentation for the appropriate value for this field.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+/datasets/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Policy> setIamPolicy(
      SetIamPolicyRequest request, core.String resource,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (resource == null) {
      throw new core.ArgumentError("Parameter resource is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':setIamPolicy';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Policy.fromJson(data));
  }

  /// Returns permissions that a caller has on the specified resource.
  /// If the resource does not exist, this will return an empty set of
  /// permissions, not a NOT_FOUND error.
  ///
  /// Note: This operation is designed to be used for building permission-aware
  /// UIs and command-line tools, not for authorization checking. This operation
  /// may "fail open" without warning.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested.
  /// See the operation documentation for the appropriate value for this field.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+/datasets/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TestIamPermissionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TestIamPermissionsResponse> testIamPermissions(
      TestIamPermissionsRequest request, core.String resource,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (resource == null) {
      throw new core.ArgumentError("Parameter resource is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':testIamPermissions';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new TestIamPermissionsResponse.fromJson(data));
  }
}

class ProjectsLocationsDatasetsDicomStoresResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLocationsDatasetsDicomStoresStudiesResourceApi get studies =>
      new ProjectsLocationsDatasetsDicomStoresStudiesResourceApi(_requester);

  ProjectsLocationsDatasetsDicomStoresResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new DICOM store within the parent dataset.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the dataset this DICOM store belongs to.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+/datasets/[^/]+$".
  ///
  /// [dicomStoreId] - The ID of the DICOM store that is being created.
  /// Any string value up to 256 characters in length.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DicomStore].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DicomStore> create(DicomStore request, core.String parent,
      {core.String dicomStoreId, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (dicomStoreId != null) {
      _queryParams["dicomStoreId"] = [dicomStoreId];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/dicomStores';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new DicomStore.fromJson(data));
  }

  /// Deletes the specified DICOM store and removes all images that are
  /// contained
  /// within it.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the DICOM store to delete.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/dicomStores/[^/]+$".
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
  async.Future<Empty> delete(core.String name, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /// Exports data to the specified destination by copying it from the DICOM
  /// store.
  /// The metadata field type is
  /// OperationMetadata.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The DICOM store resource name from which the data should be
  /// exported (e.g.,
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}`).
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/dicomStores/[^/]+$".
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
  async.Future<Operation> export(
      ExportDicomDataRequest request, core.String name,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url =
        'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name') + ':export';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Gets the specified DICOM store.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the DICOM store to get.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/dicomStores/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DicomStore].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DicomStore> get(core.String name, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new DicomStore.fromJson(data));
  }

  /// Gets the access control policy for a resource.
  /// Returns an empty policy if the resource exists and does not have a policy
  /// set.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested.
  /// See the operation documentation for the appropriate value for this field.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/dicomStores/[^/]+$".
  ///
  /// [options_requestedPolicyVersion] - Optional. The policy format version to
  /// be returned.
  /// Acceptable values are 0 and 1.
  /// If the value is 0, or the field is omitted, policy format version 1 will
  /// be
  /// returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Policy> getIamPolicy(core.String resource,
      {core.int options_requestedPolicyVersion, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (resource == null) {
      throw new core.ArgumentError("Parameter resource is required.");
    }
    if (options_requestedPolicyVersion != null) {
      _queryParams["options.requestedPolicyVersion"] = [
        "${options_requestedPolicyVersion}"
      ];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':getIamPolicy';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Policy.fromJson(data));
  }

  /// Imports data into the DICOM store by copying it from the specified source.
  /// For errors, the Operation will be populated with error details (in the
  /// form
  /// of ImportDicomDataErrorDetails in error.details), which will hold
  /// finer-grained error information.
  /// The metadata field type is
  /// OperationMetadata.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the DICOM store resource into which the data is
  /// imported (e.g.,
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}`).
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/dicomStores/[^/]+$".
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
  async.Future<Operation> import(
      ImportDicomDataRequest request, core.String name,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url =
        'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name') + ':import';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Lists the DICOM stores in the given dataset.
  ///
  /// Request parameters:
  ///
  /// [parent] - Name of the dataset.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+/datasets/[^/]+$".
  ///
  /// [filter] - Restricts stores returned to those matching a filter. Syntax:
  /// https://cloud.google.com/appengine/docs/standard/python/search/query_strings
  /// Only filtering on labels is supported, for example `labels.key=value`.
  ///
  /// [pageToken] - The next_page_token value returned from the previous List
  /// request, if any.
  ///
  /// [pageSize] - Limit on the number of DICOM stores to return in a single
  /// response.
  /// If zero the default page size of 100 is used.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListDicomStoresResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListDicomStoresResponse> list(core.String parent,
      {core.String filter,
      core.String pageToken,
      core.int pageSize,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/dicomStores';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListDicomStoresResponse.fromJson(data));
  }

  /// Updates the specified DICOM store.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. Resource name of the DICOM store, of the form
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}`.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/dicomStores/[^/]+$".
  ///
  /// [updateMask] - The update mask applies to the resource. For the
  /// `FieldMask` definition,
  /// see
  /// https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DicomStore].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DicomStore> patch(DicomStore request, core.String name,
      {core.String updateMask, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (updateMask != null) {
      _queryParams["updateMask"] = [updateMask];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new DicomStore.fromJson(data));
  }

  /// SearchForInstances returns a list of matching instances. See
  /// http://dicom.nema.org/medical/dicom/current/output/html/part18.html#sect_10.6.
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the DICOM store that is being accessed (e.g.,
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}`).
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/dicomStores/[^/]+$".
  ///
  /// [dicomWebPath] - The path of the SearchForInstancesRequest DICOMweb
  /// request (e.g.,
  /// `instances` or `series/{series_uid}/instances` or
  /// `studies/{study_uid}/instances`).
  /// Value must have pattern "^instances$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [HttpBody].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<HttpBody> searchForInstances(
      core.String parent, core.String dicomWebPath,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (dicomWebPath == null) {
      throw new core.ArgumentError("Parameter dicomWebPath is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/dicomWeb/' +
        commons.Escaper.ecapeVariableReserved('$dicomWebPath');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new HttpBody.fromJson(data));
  }

  /// SearchForSeries returns a list of matching series. See
  /// http://dicom.nema.org/medical/dicom/current/output/html/part18.html#sect_10.6.
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the DICOM store that is being accessed (e.g.,
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}`).
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/dicomStores/[^/]+$".
  ///
  /// [dicomWebPath] - The path of the SearchForSeries DICOMweb request(e.g.,
  /// `series` or
  /// `studies/{study_uid}/series`).
  /// Value must have pattern "^series$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [HttpBody].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<HttpBody> searchForSeries(
      core.String parent, core.String dicomWebPath,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (dicomWebPath == null) {
      throw new core.ArgumentError("Parameter dicomWebPath is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/dicomWeb/' +
        commons.Escaper.ecapeVariableReserved('$dicomWebPath');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new HttpBody.fromJson(data));
  }

  /// SearchForStudies returns a list of matching studies. See
  /// http://dicom.nema.org/medical/dicom/current/output/html/part18.html#sect_10.6.
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the DICOM store that is being accessed (e.g.,
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}`).
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/dicomStores/[^/]+$".
  ///
  /// [dicomWebPath] - The path of the SearchForStudies DICOMweb request (e.g.,
  /// `studies`).
  /// Value must have pattern "^studies$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [HttpBody].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<HttpBody> searchForStudies(
      core.String parent, core.String dicomWebPath,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (dicomWebPath == null) {
      throw new core.ArgumentError("Parameter dicomWebPath is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/dicomWeb/' +
        commons.Escaper.ecapeVariableReserved('$dicomWebPath');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new HttpBody.fromJson(data));
  }

  /// Sets the access control policy on the specified resource. Replaces any
  /// existing policy.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified.
  /// See the operation documentation for the appropriate value for this field.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/dicomStores/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Policy> setIamPolicy(
      SetIamPolicyRequest request, core.String resource,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (resource == null) {
      throw new core.ArgumentError("Parameter resource is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':setIamPolicy';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Policy.fromJson(data));
  }

  /// StoreInstances stores DICOM instances associated with study instance
  /// unique
  /// identifiers (SUID). See
  /// http://dicom.nema.org/medical/dicom/current/output/html/part18.html#sect_10.5.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the DICOM store that is being accessed (e.g.,
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}`).
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/dicomStores/[^/]+$".
  ///
  /// [dicomWebPath] - The path of the StoreInstances DICOMweb request (e.g.,
  /// `studies/[{study_id}]`). Note that the `study_uid` is optional.
  /// Value must have pattern "^studies$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [HttpBody].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<HttpBody> storeInstances(
      HttpBody request, core.String parent, core.String dicomWebPath,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (dicomWebPath == null) {
      throw new core.ArgumentError("Parameter dicomWebPath is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/dicomWeb/' +
        commons.Escaper.ecapeVariableReserved('$dicomWebPath');

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new HttpBody.fromJson(data));
  }

  /// Returns permissions that a caller has on the specified resource.
  /// If the resource does not exist, this will return an empty set of
  /// permissions, not a NOT_FOUND error.
  ///
  /// Note: This operation is designed to be used for building permission-aware
  /// UIs and command-line tools, not for authorization checking. This operation
  /// may "fail open" without warning.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested.
  /// See the operation documentation for the appropriate value for this field.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/dicomStores/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TestIamPermissionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TestIamPermissionsResponse> testIamPermissions(
      TestIamPermissionsRequest request, core.String resource,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (resource == null) {
      throw new core.ArgumentError("Parameter resource is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':testIamPermissions';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new TestIamPermissionsResponse.fromJson(data));
  }
}

class ProjectsLocationsDatasetsDicomStoresStudiesResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLocationsDatasetsDicomStoresStudiesSeriesResourceApi get series =>
      new ProjectsLocationsDatasetsDicomStoresStudiesSeriesResourceApi(
          _requester);

  ProjectsLocationsDatasetsDicomStoresStudiesResourceApi(
      commons.ApiRequester client)
      : _requester = client;

  /// DeleteStudy deletes all instances within the given study. Delete requests
  /// are equivalent to the GET requests specified in the WADO-RS standard.
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the DICOM store that is being accessed (e.g.,
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}`).
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/dicomStores/[^/]+$".
  ///
  /// [dicomWebPath] - The path of the DeleteStudy request (e.g.,
  /// `studies/{study_id}`).
  /// Value must have pattern "^studies/[^/]+$".
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
  async.Future<Empty> delete(core.String parent, core.String dicomWebPath,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (dicomWebPath == null) {
      throw new core.ArgumentError("Parameter dicomWebPath is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/dicomWeb/' +
        commons.Escaper.ecapeVariableReserved('$dicomWebPath');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /// RetrieveStudyMetadata returns instance associated with the given study
  /// presented as metadata with the bulk data removed. See
  /// http://dicom.nema.org/medical/dicom/current/output/html/part18.html#sect_10.4.
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the DICOM store that is being accessed (e.g.,
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}`).
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/dicomStores/[^/]+$".
  ///
  /// [dicomWebPath] - The path of the RetrieveStudyMetadata DICOMweb request
  /// (e.g.,
  /// `studies/{study_id}/metadata`).
  /// Value must have pattern "^studies/[^/]+/metadata$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [HttpBody].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<HttpBody> retrieveMetadata(
      core.String parent, core.String dicomWebPath,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (dicomWebPath == null) {
      throw new core.ArgumentError("Parameter dicomWebPath is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/dicomWeb/' +
        commons.Escaper.ecapeVariableReserved('$dicomWebPath');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new HttpBody.fromJson(data));
  }

  /// RetrieveStudy returns all instances within the given study. See
  /// http://dicom.nema.org/medical/dicom/current/output/html/part18.html#sect_10.4.
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the DICOM store that is being accessed (e.g.,
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}`).
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/dicomStores/[^/]+$".
  ///
  /// [dicomWebPath] - The path of the RetrieveStudy DICOMweb request (e.g.,
  /// `studies/{study_id}`).
  /// Value must have pattern "^studies/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [HttpBody].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<HttpBody> retrieveStudy(
      core.String parent, core.String dicomWebPath,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (dicomWebPath == null) {
      throw new core.ArgumentError("Parameter dicomWebPath is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/dicomWeb/' +
        commons.Escaper.ecapeVariableReserved('$dicomWebPath');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new HttpBody.fromJson(data));
  }

  /// SearchForInstances returns a list of matching instances. See
  /// http://dicom.nema.org/medical/dicom/current/output/html/part18.html#sect_10.6.
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the DICOM store that is being accessed (e.g.,
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}`).
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/dicomStores/[^/]+$".
  ///
  /// [dicomWebPath] - The path of the SearchForInstancesRequest DICOMweb
  /// request (e.g.,
  /// `instances` or `series/{series_uid}/instances` or
  /// `studies/{study_uid}/instances`).
  /// Value must have pattern "^studies/[^/]+/instances$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [HttpBody].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<HttpBody> searchForInstances(
      core.String parent, core.String dicomWebPath,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (dicomWebPath == null) {
      throw new core.ArgumentError("Parameter dicomWebPath is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/dicomWeb/' +
        commons.Escaper.ecapeVariableReserved('$dicomWebPath');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new HttpBody.fromJson(data));
  }

  /// SearchForSeries returns a list of matching series. See
  /// http://dicom.nema.org/medical/dicom/current/output/html/part18.html#sect_10.6.
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the DICOM store that is being accessed (e.g.,
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}`).
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/dicomStores/[^/]+$".
  ///
  /// [dicomWebPath] - The path of the SearchForSeries DICOMweb request(e.g.,
  /// `series` or
  /// `studies/{study_uid}/series`).
  /// Value must have pattern "^studies/[^/]+/series$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [HttpBody].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<HttpBody> searchForSeries(
      core.String parent, core.String dicomWebPath,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (dicomWebPath == null) {
      throw new core.ArgumentError("Parameter dicomWebPath is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/dicomWeb/' +
        commons.Escaper.ecapeVariableReserved('$dicomWebPath');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new HttpBody.fromJson(data));
  }

  /// StoreInstances stores DICOM instances associated with study instance
  /// unique
  /// identifiers (SUID). See
  /// http://dicom.nema.org/medical/dicom/current/output/html/part18.html#sect_10.5.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the DICOM store that is being accessed (e.g.,
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}`).
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/dicomStores/[^/]+$".
  ///
  /// [dicomWebPath] - The path of the StoreInstances DICOMweb request (e.g.,
  /// `studies/[{study_id}]`). Note that the `study_uid` is optional.
  /// Value must have pattern "^studies/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [HttpBody].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<HttpBody> storeInstances(
      HttpBody request, core.String parent, core.String dicomWebPath,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (dicomWebPath == null) {
      throw new core.ArgumentError("Parameter dicomWebPath is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/dicomWeb/' +
        commons.Escaper.ecapeVariableReserved('$dicomWebPath');

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new HttpBody.fromJson(data));
  }
}

class ProjectsLocationsDatasetsDicomStoresStudiesSeriesResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesResourceApi
      get instances =>
          new ProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesResourceApi(
              _requester);

  ProjectsLocationsDatasetsDicomStoresStudiesSeriesResourceApi(
      commons.ApiRequester client)
      : _requester = client;

  /// DeleteSeries deletes all instances within the given study and series.
  /// Delete requests are equivalent to the GET requests specified in the
  /// WADO-RS
  /// standard.
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the DICOM store that is being accessed (e.g.,
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}`).
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/dicomStores/[^/]+$".
  ///
  /// [dicomWebPath] - The path of the DeleteSeries request (e.g.,
  /// `studies/{study_id}/series/{series_id}`).
  /// Value must have pattern "^studies/[^/]+/series/[^/]+$".
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
  async.Future<Empty> delete(core.String parent, core.String dicomWebPath,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (dicomWebPath == null) {
      throw new core.ArgumentError("Parameter dicomWebPath is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/dicomWeb/' +
        commons.Escaper.ecapeVariableReserved('$dicomWebPath');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /// RetrieveSeriesMetadata returns instance associated with the given study
  /// and
  /// series, presented as metadata with the bulk data removed. See
  /// http://dicom.nema.org/medical/dicom/current/output/html/part18.html#sect_10.4.
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the DICOM store that is being accessed (e.g.,
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}`).
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/dicomStores/[^/]+$".
  ///
  /// [dicomWebPath] - The path of the RetrieveSeriesMetadata DICOMweb request
  /// (e.g.,
  /// `studies/{study_id}/series/{series_id}/metadata`).
  /// Value must have pattern "^studies/[^/]+/series/[^/]+/metadata$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [HttpBody].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<HttpBody> retrieveMetadata(
      core.String parent, core.String dicomWebPath,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (dicomWebPath == null) {
      throw new core.ArgumentError("Parameter dicomWebPath is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/dicomWeb/' +
        commons.Escaper.ecapeVariableReserved('$dicomWebPath');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new HttpBody.fromJson(data));
  }

  /// RetrieveSeries returns all instances within the given study and series.
  /// See
  /// http://dicom.nema.org/medical/dicom/current/output/html/part18.html#sect_10.4.
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the DICOM store that is being accessed (e.g.,
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}`).
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/dicomStores/[^/]+$".
  ///
  /// [dicomWebPath] - The path of the RetrieveSeries DICOMweb request (e.g.,
  /// `studies/{study_id}/series/{series_id}`).
  /// Value must have pattern "^studies/[^/]+/series/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [HttpBody].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<HttpBody> retrieveSeries(
      core.String parent, core.String dicomWebPath,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (dicomWebPath == null) {
      throw new core.ArgumentError("Parameter dicomWebPath is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/dicomWeb/' +
        commons.Escaper.ecapeVariableReserved('$dicomWebPath');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new HttpBody.fromJson(data));
  }

  /// SearchForInstances returns a list of matching instances. See
  /// http://dicom.nema.org/medical/dicom/current/output/html/part18.html#sect_10.6.
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the DICOM store that is being accessed (e.g.,
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}`).
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/dicomStores/[^/]+$".
  ///
  /// [dicomWebPath] - The path of the SearchForInstancesRequest DICOMweb
  /// request (e.g.,
  /// `instances` or `series/{series_uid}/instances` or
  /// `studies/{study_uid}/instances`).
  /// Value must have pattern "^studies/[^/]+/series/[^/]+/instances$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [HttpBody].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<HttpBody> searchForInstances(
      core.String parent, core.String dicomWebPath,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (dicomWebPath == null) {
      throw new core.ArgumentError("Parameter dicomWebPath is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/dicomWeb/' +
        commons.Escaper.ecapeVariableReserved('$dicomWebPath');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new HttpBody.fromJson(data));
  }
}

class ProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesFramesResourceApi
      get frames =>
          new ProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesFramesResourceApi(
              _requester);

  ProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesResourceApi(
      commons.ApiRequester client)
      : _requester = client;

  /// DeleteInstance deletes an instance associated with the given study,
  /// series,
  /// and SOP Instance UID. Delete requests are equivalent to the GET requests
  /// specified in the WADO-RS standard.
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the DICOM store that is being accessed (e.g.,
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}`).
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/dicomStores/[^/]+$".
  ///
  /// [dicomWebPath] - The path of the DeleteInstance request (e.g.,
  /// `studies/{study_id}/series/{series_id}/instances/{instance_id}`).
  /// Value must have pattern "^studies/[^/]+/series/[^/]+/instances/[^/]+$".
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
  async.Future<Empty> delete(core.String parent, core.String dicomWebPath,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (dicomWebPath == null) {
      throw new core.ArgumentError("Parameter dicomWebPath is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/dicomWeb/' +
        commons.Escaper.ecapeVariableReserved('$dicomWebPath');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /// RetrieveInstance returns instance associated with the given study, series,
  /// and SOP Instance UID. See
  /// http://dicom.nema.org/medical/dicom/current/output/html/part18.html#sect_10.4.
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the DICOM store that is being accessed (e.g.,
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}`).
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/dicomStores/[^/]+$".
  ///
  /// [dicomWebPath] - The path of the RetrieveInstance DICOMweb request (e.g.,
  /// `studies/{study_id}/series/{series_id}/instances/{instance_id}`).
  /// Value must have pattern "^studies/[^/]+/series/[^/]+/instances/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [HttpBody].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<HttpBody> retrieveInstance(
      core.String parent, core.String dicomWebPath,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (dicomWebPath == null) {
      throw new core.ArgumentError("Parameter dicomWebPath is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/dicomWeb/' +
        commons.Escaper.ecapeVariableReserved('$dicomWebPath');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new HttpBody.fromJson(data));
  }

  /// RetrieveInstanceMetadata returns instance associated with the given study,
  /// series, and SOP Instance UID presented as metadata with the bulk data
  /// removed. See
  /// http://dicom.nema.org/medical/dicom/current/output/html/part18.html#sect_10.4.
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the DICOM store that is being accessed (e.g.,
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}`).
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/dicomStores/[^/]+$".
  ///
  /// [dicomWebPath] - The path of the RetrieveInstanceMetadata DICOMweb request
  /// (e.g.,
  /// `studies/{study_id}/series/{series_id}/instances/{instance_id}/metadata`).
  /// Value must have pattern
  /// "^studies/[^/]+/series/[^/]+/instances/[^/]+/metadata$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [HttpBody].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<HttpBody> retrieveMetadata(
      core.String parent, core.String dicomWebPath,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (dicomWebPath == null) {
      throw new core.ArgumentError("Parameter dicomWebPath is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/dicomWeb/' +
        commons.Escaper.ecapeVariableReserved('$dicomWebPath');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new HttpBody.fromJson(data));
  }

  /// RetrieveRenderedInstance returns instance associated with the given study,
  /// series, and SOP Instance UID in an acceptable Rendered Media Type. See
  /// http://dicom.nema.org/medical/dicom/current/output/html/part18.html#sect_10.4.
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the DICOM store that is being accessed (e.g.,
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}`).
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/dicomStores/[^/]+$".
  ///
  /// [dicomWebPath] - The path of the RetrieveRenderedInstance DICOMweb request
  /// (e.g.,
  /// `studies/{study_id}/series/{series_id}/instances/{instance_id}/rendered`).
  /// Value must have pattern
  /// "^studies/[^/]+/series/[^/]+/instances/[^/]+/rendered$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [HttpBody].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<HttpBody> retrieveRendered(
      core.String parent, core.String dicomWebPath,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (dicomWebPath == null) {
      throw new core.ArgumentError("Parameter dicomWebPath is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/dicomWeb/' +
        commons.Escaper.ecapeVariableReserved('$dicomWebPath');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new HttpBody.fromJson(data));
  }
}

class ProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesFramesResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesFramesResourceApi(
      commons.ApiRequester client)
      : _requester = client;

  /// RetrieveFrames returns instances associated with the given study, series,
  /// SOP Instance UID and frame numbers. See
  /// http://dicom.nema.org/medical/dicom/current/output/html/part18.html#sect_10.4.
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the DICOM store that is being accessed (e.g.,
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}`).
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/dicomStores/[^/]+$".
  ///
  /// [dicomWebPath] - The path of the RetrieveFrames DICOMweb request (e.g.,
  /// `studies/{study_id}/series/{series_id}/instances/{instance_id}/frames/{frame_list}`).
  /// Value must have pattern
  /// "^studies/[^/]+/series/[^/]+/instances/[^/]+/frames/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [HttpBody].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<HttpBody> retrieveFrames(
      core.String parent, core.String dicomWebPath,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (dicomWebPath == null) {
      throw new core.ArgumentError("Parameter dicomWebPath is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/dicomWeb/' +
        commons.Escaper.ecapeVariableReserved('$dicomWebPath');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new HttpBody.fromJson(data));
  }

  /// RetrieveRenderedFrames returns instances associated with the given study,
  /// series, SOP Instance UID and frame numbers in an acceptable Rendered Media
  /// Type. See
  /// http://dicom.nema.org/medical/dicom/current/output/html/part18.html#sect_10.4.
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the DICOM store that is being accessed (e.g.,
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}`).
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/dicomStores/[^/]+$".
  ///
  /// [dicomWebPath] - The path of the RetrieveRenderedFrames DICOMweb request
  /// (e.g.,
  /// `studies/{study_id}/series/{series_id}/instances/{instance_id}/frames/{frame_list}/rendered`).
  /// Value must have pattern
  /// "^studies/[^/]+/series/[^/]+/instances/[^/]+/frames/[^/]+/rendered$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [HttpBody].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<HttpBody> retrieveRendered(
      core.String parent, core.String dicomWebPath,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (dicomWebPath == null) {
      throw new core.ArgumentError("Parameter dicomWebPath is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/dicomWeb/' +
        commons.Escaper.ecapeVariableReserved('$dicomWebPath');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new HttpBody.fromJson(data));
  }
}

class ProjectsLocationsDatasetsFhirStoresResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLocationsDatasetsFhirStoresFhirResourceApi get fhir =>
      new ProjectsLocationsDatasetsFhirStoresFhirResourceApi(_requester);

  ProjectsLocationsDatasetsFhirStoresResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new FHIR store within the parent dataset.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the dataset this FHIR store belongs to.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+/datasets/[^/]+$".
  ///
  /// [fhirStoreId] - The ID of the FHIR store that is being created.
  /// The string must match the following regex: `[\p{L}\p{N}_\-\.]{1,256}`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FhirStore].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FhirStore> create(FhirStore request, core.String parent,
      {core.String fhirStoreId, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (fhirStoreId != null) {
      _queryParams["fhirStoreId"] = [fhirStoreId];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/fhirStores';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new FhirStore.fromJson(data));
  }

  /// Deletes the specified FHIR store and removes all resources within it.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the FHIR store to delete.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/fhirStores/[^/]+$".
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
  async.Future<Empty> delete(core.String name, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /// Export resources from the FHIR store to the specified destination.
  ///
  /// This method returns an Operation that can
  /// be used to track the status of the export by calling
  /// GetOperation.
  ///
  /// Immediate fatal errors appear in the
  /// error field.
  /// Otherwise, when the operation finishes, a detailed response of type
  /// ExportResourcesResponse is returned in the
  /// response field.
  /// The metadata field type for this
  /// operation is OperationMetadata.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the FHIR store to export resource from. The name
  /// should be in
  /// the format of
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/fhirStores/{fhir_store_id}`.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/fhirStores/[^/]+$".
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
  async.Future<Operation> export(
      ExportResourcesRequest request, core.String name,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url =
        'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name') + ':export';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Gets the configuration of the specified FHIR store.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the FHIR store to get.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/fhirStores/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FhirStore].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FhirStore> get(core.String name, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new FhirStore.fromJson(data));
  }

  /// Gets the access control policy for a resource.
  /// Returns an empty policy if the resource exists and does not have a policy
  /// set.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested.
  /// See the operation documentation for the appropriate value for this field.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/fhirStores/[^/]+$".
  ///
  /// [options_requestedPolicyVersion] - Optional. The policy format version to
  /// be returned.
  /// Acceptable values are 0 and 1.
  /// If the value is 0, or the field is omitted, policy format version 1 will
  /// be
  /// returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Policy> getIamPolicy(core.String resource,
      {core.int options_requestedPolicyVersion, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (resource == null) {
      throw new core.ArgumentError("Parameter resource is required.");
    }
    if (options_requestedPolicyVersion != null) {
      _queryParams["options.requestedPolicyVersion"] = [
        "${options_requestedPolicyVersion}"
      ];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':getIamPolicy';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Policy.fromJson(data));
  }

  /// Import resources to the FHIR store by loading data from the specified
  /// sources. Each resource must have a client-supplied ID, which is retained
  /// by the server.
  ///
  /// The import operation is idempotent. Upon retry, the most recent data
  /// (matching the client-supplied ID) is overwritten, without creating a new
  /// resource version. If partial failures occur during the import, successful
  /// changes are not rolled back.
  ///
  /// If history imports are enabled
  /// (enable_history_import is set in the
  /// FHIR store's configuration), you can import historical versions of a
  /// resource by supplying a bundle of type `history`. The historical versions
  /// in the bundle must have `lastUpdated` timestamps. If a current or
  /// historical version with the supplied resource ID already exists, the
  /// bundle is rejected.
  ///
  /// This method returns an Operation that can
  /// be used to track the status of the import by calling
  /// GetOperation.
  ///
  /// Immediate fatal errors appear in the
  /// error field.
  /// Otherwise, when the operation finishes, a detailed response of type
  /// ImportResourcesResponse is returned in the
  /// response field.
  /// The metadata field type for this
  /// operation is OperationMetadata.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the FHIR store to import FHIR resources to. The name
  /// should be
  /// in the format of
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/fhirStores/{fhir_store_id}`.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/fhirStores/[^/]+$".
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
  async.Future<Operation> import(
      ImportResourcesRequest request, core.String name,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url =
        'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name') + ':import';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Lists the FHIR stores in the given dataset.
  ///
  /// Request parameters:
  ///
  /// [parent] - Name of the dataset.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+/datasets/[^/]+$".
  ///
  /// [filter] - Restricts stores returned to those matching a filter. Syntax:
  /// https://cloud.google.com/appengine/docs/standard/python/search/query_strings
  /// Only filtering on labels is supported, for example `labels.key=value`.
  ///
  /// [pageToken] - The next_page_token value returned from the previous List
  /// request, if any.
  ///
  /// [pageSize] - Limit on the number of FHIR stores to return in a single
  /// response.  If zero
  /// the default page size of 100 is used.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListFhirStoresResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListFhirStoresResponse> list(core.String parent,
      {core.String filter,
      core.String pageToken,
      core.int pageSize,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/fhirStores';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListFhirStoresResponse.fromJson(data));
  }

  /// Updates the configuration of the specified FHIR store.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. Resource name of the FHIR store, of the form
  /// `projects/{project_id}/datasets/{dataset_id}/fhirStores/{fhir_store_id}`.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/fhirStores/[^/]+$".
  ///
  /// [updateMask] - The update mask applies to the resource. For the
  /// `FieldMask` definition,
  /// see
  /// https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FhirStore].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FhirStore> patch(FhirStore request, core.String name,
      {core.String updateMask, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (updateMask != null) {
      _queryParams["updateMask"] = [updateMask];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new FhirStore.fromJson(data));
  }

  /// Sets the access control policy on the specified resource. Replaces any
  /// existing policy.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified.
  /// See the operation documentation for the appropriate value for this field.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/fhirStores/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Policy> setIamPolicy(
      SetIamPolicyRequest request, core.String resource,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (resource == null) {
      throw new core.ArgumentError("Parameter resource is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':setIamPolicy';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Policy.fromJson(data));
  }

  /// Returns permissions that a caller has on the specified resource.
  /// If the resource does not exist, this will return an empty set of
  /// permissions, not a NOT_FOUND error.
  ///
  /// Note: This operation is designed to be used for building permission-aware
  /// UIs and command-line tools, not for authorization checking. This operation
  /// may "fail open" without warning.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested.
  /// See the operation documentation for the appropriate value for this field.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/fhirStores/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TestIamPermissionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TestIamPermissionsResponse> testIamPermissions(
      TestIamPermissionsRequest request, core.String resource,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (resource == null) {
      throw new core.ArgumentError("Parameter resource is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':testIamPermissions';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new TestIamPermissionsResponse.fromJson(data));
  }
}

class ProjectsLocationsDatasetsFhirStoresFhirResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLocationsDatasetsFhirStoresFhirResourceApi(
      commons.ApiRequester client)
      : _requester = client;

  /// Retrieves the N most recent `Observation` resources for a subject matching
  /// search criteria specified as query parameters, grouped by
  /// `Observation.code`, sorted from most recent to oldest.
  ///
  /// Implements the FHIR extended operation
  /// [Observation-lastn](http://hl7.org/implement/standards/fhir/STU3/observation-operations.html#lastn).
  ///
  /// Search terms are provided as query parameters following the same pattern
  /// as
  /// the search method. This operation accepts an additional
  /// query parameter `max`, which specifies N, the maximum number of
  /// Observations to return from each group, with a default of 1.
  ///
  /// On success, the response body will contain a JSON-encoded representation
  /// of a `Bundle` resource of type `searchset`, containing the results of the
  /// operation.
  /// Errors generated by the FHIR store will contain a JSON-encoded
  /// `OperationOutcome` resource describing the reason for the error. If the
  /// request cannot be mapped to a valid API method on a FHIR store, a generic
  /// GCP error might be returned instead.
  ///
  /// Request parameters:
  ///
  /// [parent] - Name of the FHIR store to retrieve resources from.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/fhirStores/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [HttpBody].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<HttpBody> Observation_lastn(core.String parent,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/fhir/Observation/\$lastn';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new HttpBody.fromJson(data));
  }

  /// Retrieves all the resources in the patient compartment for a `Patient`
  /// resource.
  ///
  /// Implements the FHIR extended operation
  /// [Patient-everything](http://hl7.org/implement/standards/fhir/STU3/patient-operations.html#everything).
  ///
  /// On success, the response body will contain a JSON-encoded representation
  /// of a `Bundle` resource of type `searchset`, containing the results of the
  /// operation.
  /// Errors generated by the FHIR store will contain a JSON-encoded
  /// `OperationOutcome` resource describing the reason for the error. If the
  /// request cannot be mapped to a valid API method on a FHIR store, a generic
  /// GCP error might be returned instead.
  ///
  /// Request parameters:
  ///
  /// [name] - Name of the `Patient` resource for which the information is
  /// required.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/fhirStores/[^/]+/fhir/Patient/[^/]+$".
  ///
  /// [start] - The response includes records subsequent to the start date. If
  /// no start
  /// date is provided, all records prior to the end date are in scope.
  ///
  /// [end] - The response includes records prior to the end date. If no end
  /// date is
  /// provided, all records subsequent to the start date are in scope.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [HttpBody].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<HttpBody> Patient_everything(core.String name,
      {core.String start, core.String end, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (start != null) {
      _queryParams["start"] = [start];
    }
    if (end != null) {
      _queryParams["end"] = [end];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        '/\$everything';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new HttpBody.fromJson(data));
  }

  /// Deletes all the historical versions of a resource (excluding the current
  /// version) from the FHIR store. To remove all versions of a resource, first
  /// delete the current version and then call this method.
  ///
  /// This is not a FHIR standard operation.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the resource to purge.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/fhirStores/[^/]+/fhir/[^/]+/[^/]+$".
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
  async.Future<Empty> Resource_purge(core.String name, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        '/\$purge';

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /// Gets the FHIR [capability
  /// statement](http://hl7.org/implement/standards/fhir/STU3/capabilitystatement.html)
  /// for the store, which contains a description of functionality supported by
  /// the server.
  ///
  /// Implements the FHIR standard [capabilities
  /// interaction](http://hl7.org/implement/standards/fhir/STU3/http.html#capabilities).
  ///
  /// On success, the response body will contain a JSON-encoded representation
  /// of a `CapabilityStatement` resource.
  ///
  /// Request parameters:
  ///
  /// [name] - Name of the FHIR store to retrieve the capabilities for.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/fhirStores/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [HttpBody].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<HttpBody> capabilities(core.String name, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        '/fhir/metadata';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new HttpBody.fromJson(data));
  }

  /// Deletes FHIR resources that match a search query.
  ///
  /// Implements the FHIR standard [conditional delete
  /// interaction](http://hl7.org/implement/standards/fhir/STU3/http.html#2.21.0.13.1).
  /// If multiple resources match, all of them will be deleted.
  ///
  /// Search terms are provided as query parameters following the same pattern
  /// as
  /// the search method.
  ///
  /// Note: Unless resource versioning is disabled by setting the
  /// disable_resource_versioning flag
  /// on the FHIR store, the deleted resources will be moved to a history
  /// repository that can still be retrieved through vread
  /// and related methods, unless they are removed by the
  /// purge method.
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the FHIR store this resource belongs to.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/fhirStores/[^/]+$".
  ///
  /// [type] - The FHIR resource type to delete, such as Patient or Observation.
  /// For a
  /// complete list, see the [FHIR Resource
  /// Index](http://hl7.org/implement/standards/fhir/STU3/resourcelist.html).
  /// Value must have pattern "^[^/]+$".
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
  async.Future<Empty> conditionalDelete(core.String parent, core.String type,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (type == null) {
      throw new core.ArgumentError("Parameter type is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/fhir/' +
        commons.Escaper.ecapeVariableReserved('$type');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /// If a resource is found based on the search criteria specified in the query
  /// parameters, updates part of that resource by applying the operations
  /// specified in a [JSON Patch](http://jsonpatch.com/) document.
  ///
  /// Implements the FHIR standard [conditional patch
  /// interaction](http://hl7.org/implement/standards/fhir/STU3/http.html#patch).
  ///
  /// Search terms are provided as query parameters following the same pattern
  /// as
  /// the search method.
  ///
  /// If the search criteria identify more than one match, the request will
  /// return a `412 Precondition Failed` error.
  ///
  /// The request body must contain a JSON Patch document, and the request
  /// headers must contain `Content-Type: application/json-patch+json`.
  ///
  /// On success, the response body will contain a JSON-encoded representation
  /// of the updated resource, including the server-assigned version ID.
  /// Errors generated by the FHIR store will contain a JSON-encoded
  /// `OperationOutcome` resource describing the reason for the error. If the
  /// request cannot be mapped to a valid API method on a FHIR store, a generic
  /// GCP error might be returned instead.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the FHIR store this resource belongs to.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/fhirStores/[^/]+$".
  ///
  /// [type] - The FHIR resource type to update, such as Patient or Observation.
  /// For a
  /// complete list, see the [FHIR Resource
  /// Index](http://hl7.org/implement/standards/fhir/STU3/resourcelist.html).
  /// Value must have pattern "^[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [HttpBody].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<HttpBody> conditionalPatch(
      HttpBody request, core.String parent, core.String type,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (type == null) {
      throw new core.ArgumentError("Parameter type is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/fhir/' +
        commons.Escaper.ecapeVariableReserved('$type');

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new HttpBody.fromJson(data));
  }

  /// If a resource is found based on the search criteria specified in the query
  /// parameters, updates the entire contents of that resource.
  ///
  /// Implements the FHIR standard [conditional update
  /// interaction](http://hl7.org/implement/standards/fhir/STU3/http.html#cond-update).
  ///
  /// Search terms are provided as query parameters following the same pattern
  /// as
  /// the search method.
  ///
  /// If the search criteria identify more than one match, the request will
  /// return a `412 Precondition Failed` error.
  /// If the search criteria identify zero matches, and the supplied resource
  /// body contains an `id`, and the FHIR store has
  /// enable_update_create set, creates the
  /// resource with the client-specified ID. If the search criteria identify
  /// zero
  /// matches, and the supplied resource body does not contain an `id`, the
  /// resource will be created with a server-assigned ID as per the
  /// create method.
  ///
  /// The request body must contain a JSON-encoded FHIR resource, and the
  /// request
  /// headers must contain `Content-Type: application/fhir+json`.
  ///
  /// On success, the response body will contain a JSON-encoded representation
  /// of the updated resource, including the server-assigned version ID.
  /// Errors generated by the FHIR store will contain a JSON-encoded
  /// `OperationOutcome` resource describing the reason for the error. If the
  /// request cannot be mapped to a valid API method on a FHIR store, a generic
  /// GCP error might be returned instead.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the FHIR store this resource belongs to.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/fhirStores/[^/]+$".
  ///
  /// [type] - The FHIR resource type to update, such as Patient or Observation.
  /// For a
  /// complete list, see the [FHIR Resource
  /// Index](http://hl7.org/implement/standards/fhir/STU3/resourcelist.html).
  /// Must match the resource type in the provided content.
  /// Value must have pattern "^[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [HttpBody].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<HttpBody> conditionalUpdate(
      HttpBody request, core.String parent, core.String type,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (type == null) {
      throw new core.ArgumentError("Parameter type is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/fhir/' +
        commons.Escaper.ecapeVariableReserved('$type');

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new HttpBody.fromJson(data));
  }

  /// Creates a FHIR resource.
  ///
  /// Implements the FHIR standard [create
  /// interaction](http://hl7.org/implement/standards/fhir/STU3/http.html#create),
  /// which creates a new resource with a server-assigned resource ID.
  ///
  /// Also supports the FHIR standard [conditional create
  /// interaction](http://hl7.org/implement/standards/fhir/STU3/http.html#ccreate),
  /// specified by supplying an `If-None-Exist` header containing a FHIR search
  /// query. If no resources match this search query, the server processes the
  /// create operation as normal.
  ///
  /// The request body must contain a JSON-encoded FHIR resource, and the
  /// request
  /// headers must contain `Content-Type: application/fhir+json`.
  ///
  /// On success, the response body will contain a JSON-encoded representation
  /// of the resource as it was created on the server, including the
  /// server-assigned resource ID and version ID.
  /// Errors generated by the FHIR store will contain a JSON-encoded
  /// `OperationOutcome` resource describing the reason for the error. If the
  /// request cannot be mapped to a valid API method on a FHIR store, a generic
  /// GCP error might be returned instead.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the FHIR store this resource belongs to.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/fhirStores/[^/]+$".
  ///
  /// [type] - The FHIR resource type to create, such as Patient or Observation.
  /// For a
  /// complete list, see the [FHIR Resource
  /// Index](http://hl7.org/implement/standards/fhir/STU3/resourcelist.html).
  /// Must match the resource type in the provided content.
  /// Value must have pattern "^[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [HttpBody].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<HttpBody> create(
      HttpBody request, core.String parent, core.String type,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (type == null) {
      throw new core.ArgumentError("Parameter type is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/fhir/' +
        commons.Escaper.ecapeVariableReserved('$type');

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new HttpBody.fromJson(data));
  }

  /// Deletes a FHIR resource.
  ///
  /// Implements the FHIR standard [delete
  /// interaction](http://hl7.org/implement/standards/fhir/STU3/http.html#delete).
  ///
  /// Note: Unless resource versioning is disabled by setting the
  /// disable_resource_versioning flag
  /// on the FHIR store, the deleted resources will be moved to a history
  /// repository that can still be retrieved through vread
  /// and related methods, unless they are removed by the
  /// purge method.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the resource to delete.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/fhirStores/[^/]+/fhir/[^/]+/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [HttpBody].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<HttpBody> delete(core.String name, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new HttpBody.fromJson(data));
  }

  /// Executes all the requests in the given Bundle.
  ///
  /// Implements the FHIR standard [batch/transaction
  /// interaction](http://hl7.org/implement/standards/fhir/STU3/http.html#transaction).
  ///
  /// Supports all interactions within a bundle, except search. This method
  /// accepts Bundles of type `batch` and `transaction`, processing them
  /// according to the [batch processing
  /// rules](http://hl7.org/implement/standards/fhir/STU3/http.html#2.21.0.17.1)
  /// and [transaction processing
  /// rules](http://hl7.org/implement/standards/fhir/STU3/http.html#2.21.0.17.2).
  ///
  /// The request body must contain a JSON-encoded FHIR `Bundle` resource, and
  /// the request headers must contain `Content-Type: application/fhir+json`.
  ///
  /// For a batch bundle or a successful transaction the response body will
  /// contain a JSON-encoded representation of a `Bundle` resource of type
  /// `batch-response` or `transaction-response` containing one entry for each
  /// entry in the request, with the outcome of processing the entry. In the
  /// case of an error for a transaction bundle, the response body will contain
  /// a JSON-encoded `OperationOutcome` resource describing the reason for the
  /// error. If the request cannot be mapped to a valid API method on a FHIR
  /// store, a generic GCP error might be returned instead.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Name of the FHIR store in which this bundle will be executed.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/fhirStores/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [HttpBody].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<HttpBody> executeBundle(HttpBody request, core.String parent,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url =
        'v1beta1/' + commons.Escaper.ecapeVariableReserved('$parent') + '/fhir';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new HttpBody.fromJson(data));
  }

  /// Lists all the versions of a resource (including the current version and
  /// deleted versions) from the FHIR store.
  ///
  /// Implements the per-resource form of the FHIR standard [history
  /// interaction](http://hl7.org/implement/standards/fhir/STU3/http.html#history).
  ///
  /// On success, the response body will contain a JSON-encoded representation
  /// of a `Bundle` resource of type `history`, containing the version history
  /// sorted from most recent to oldest versions.
  /// Errors generated by the FHIR store will contain a JSON-encoded
  /// `OperationOutcome` resource describing the reason for the error. If the
  /// request cannot be mapped to a valid API method on a FHIR store, a generic
  /// GCP error might be returned instead.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the resource to retrieve.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/fhirStores/[^/]+/fhir/[^/]+/[^/]+$".
  ///
  /// [page] - Used to retrieve the first, previous, next, or last page of
  /// resource
  /// versions when using pagination. Value should be set to the value of the
  /// `link.url` field returned in the response to the previous request, where
  /// `link.relation` is "first", "previous", "next" or "last".
  ///
  /// Omit `page` if no previous request has been made.
  ///
  /// [at] - Only include resource versions that were current at some point
  /// during the
  /// time period specified in the date time value. The date parameter format is
  /// yyyy-mm-ddThh:mm:ss[Z|(+|-)hh:mm]
  ///
  /// Clients may specify any of the following:
  ///
  /// *  An entire year: `_at=2019`
  /// *  An entire month: `_at=2019-01`
  /// *  A specific day: `_at=2019-01-20`
  /// *  A specific second: `_at=2018-12-31T23:59:58Z`
  ///
  /// [count] - The maximum number of search results on a page. Defaults to
  /// 1000.
  ///
  /// [since] - Only include resource versions that were created at or after the
  /// given
  /// instant in time. The instant in time uses the format
  /// YYYY-MM-DDThh:mm:ss.sss+zz:zz (for example 2015-02-07T13:28:17.239+02:00
  /// or
  /// 2017-01-01T00:00:00Z). The time must be specified to the second and
  /// include a time zone.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [HttpBody].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<HttpBody> history(core.String name,
      {core.String page,
      core.String at,
      core.int count,
      core.String since,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (page != null) {
      _queryParams["page"] = [page];
    }
    if (at != null) {
      _queryParams["at"] = [at];
    }
    if (count != null) {
      _queryParams["count"] = ["${count}"];
    }
    if (since != null) {
      _queryParams["since"] = [since];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        '/_history';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new HttpBody.fromJson(data));
  }

  /// Updates part of an existing resource by applying the operations specified
  /// in a [JSON Patch](http://jsonpatch.com/) document.
  ///
  /// Implements the FHIR standard [patch
  /// interaction](http://hl7.org/implement/standards/fhir/STU3/http.html#patch).
  ///
  /// The request body must contain a JSON Patch document, and the request
  /// headers must contain `Content-Type: application/json-patch+json`.
  ///
  /// On success, the response body will contain a JSON-encoded representation
  /// of the updated resource, including the server-assigned version ID.
  /// Errors generated by the FHIR store will contain a JSON-encoded
  /// `OperationOutcome` resource describing the reason for the error. If the
  /// request cannot be mapped to a valid API method on a FHIR store, a generic
  /// GCP error might be returned instead.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the resource to update.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/fhirStores/[^/]+/fhir/[^/]+/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [HttpBody].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<HttpBody> patch(HttpBody request, core.String name,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new HttpBody.fromJson(data));
  }

  /// Gets the contents of a FHIR resource.
  ///
  /// Implements the FHIR standard [read
  /// interaction](http://hl7.org/implement/standards/fhir/STU3/http.html#read).
  ///
  /// Also supports the FHIR standard [conditional read
  /// interaction](http://hl7.org/implement/standards/fhir/STU3/http.html#cread)
  /// specified by supplying an `If-Modified-Since` header with a date/time
  /// value
  /// or an `If-None-Match` header with an ETag value.
  ///
  /// On success, the response body will contain a JSON-encoded representation
  /// of the resource.
  /// Errors generated by the FHIR store will contain a JSON-encoded
  /// `OperationOutcome` resource describing the reason for the error. If the
  /// request cannot be mapped to a valid API method on a FHIR store, a generic
  /// GCP error might be returned instead.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the resource to retrieve.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/fhirStores/[^/]+/fhir/[^/]+/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [HttpBody].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<HttpBody> read(core.String name, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new HttpBody.fromJson(data));
  }

  /// Searches for resources in the given FHIR store according to criteria
  /// specified as query parameters.
  ///
  /// Implements the FHIR standard [search
  /// interaction](http://hl7.org/implement/standards/fhir/STU3/http.html#search)
  /// using the search semantics described in the [FHIR Search
  /// specification](http://hl7.org/implement/standards/fhir/STU3/search.html).
  ///
  /// Supports three methods of search defined by the specification:
  ///
  /// *  `GET [base]?[parameters]` to search across all resources.
  /// *  `GET [base]/[type]?[parameters]` to search resources of a specified
  /// type.
  /// *  `POST [base]/[type]/_search?[parameters]` as an alternate form having
  /// the same semantics as the `GET` method.
  ///
  /// The `GET` methods do not support compartment searches. The `POST` method
  /// does not support `application/x-www-form-urlencoded` search parameters.
  ///
  /// On success, the response body will contain a JSON-encoded representation
  /// of a `Bundle` resource of type `searchset`, containing the results of the
  /// search.
  /// Errors generated by the FHIR store will contain a JSON-encoded
  /// `OperationOutcome` resource describing the reason for the error. If the
  /// request cannot be mapped to a valid API method on a FHIR store, a generic
  /// GCP error might be returned instead.
  ///
  /// The server's capability statement, retrieved through
  /// capabilities, indicates what search parameters
  /// are supported on each FHIR resource. A list of all search parameters
  /// defined by the specification can be found in the [FHIR Search Parameter
  /// Registry](http://hl7.org/implement/standards/fhir/STU3/searchparameter-registry.html).
  ///
  /// Supported search modifiers: `:missing`, `:exact`, `:contains`, `:text`,
  /// `:in`, `:not-in`, `:above`, `:below`, `:[type]`, `:not`, and `:recurse`.
  ///
  /// Supported search result parameters: `_sort`, `_count`, `_include`,
  /// `_revinclude`, `_summary=text`, `_summary=data`, and `_elements`.
  ///
  /// The maximum number of search results returned defaults to 100, which can
  /// be overridden by the `_count` parameter up to a maximum limit of 1000. If
  /// there are additional results, the returned `Bundle` will contain
  /// pagination links.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Name of the FHIR store to retrieve resources from.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/fhirStores/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [HttpBody].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<HttpBody> search(
      SearchResourcesRequest request, core.String parent,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/fhir/_search';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new HttpBody.fromJson(data));
  }

  /// Updates the entire contents of a resource.
  ///
  /// Implements the FHIR standard [update
  /// interaction](http://hl7.org/implement/standards/fhir/STU3/http.html#update).
  ///
  /// If the specified resource does
  /// not exist and the FHIR store has
  /// enable_update_create set, creates the
  /// resource with the client-specified ID.
  ///
  /// The request body must contain a JSON-encoded FHIR resource, and the
  /// request
  /// headers must contain `Content-Type: application/fhir+json`. The resource
  /// must contain an `id` element having an identical value to the ID in the
  /// REST path of the request.
  ///
  /// On success, the response body will contain a JSON-encoded representation
  /// of the updated resource, including the server-assigned version ID.
  /// Errors generated by the FHIR store will contain a JSON-encoded
  /// `OperationOutcome` resource describing the reason for the error. If the
  /// request cannot be mapped to a valid API method on a FHIR store, a generic
  /// GCP error might be returned instead.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the resource to update.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/fhirStores/[^/]+/fhir/[^/]+/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [HttpBody].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<HttpBody> update(HttpBody request, core.String name,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new HttpBody.fromJson(data));
  }

  /// Gets the contents of a version (current or historical) of a FHIR resource
  /// by version ID.
  ///
  /// Implements the FHIR standard [vread
  /// interaction](http://hl7.org/implement/standards/fhir/STU3/http.html#vread).
  ///
  /// On success, the response body will contain a JSON-encoded representation
  /// of the resource.
  /// Errors generated by the FHIR store will contain a JSON-encoded
  /// `OperationOutcome` resource describing the reason for the error. If the
  /// request cannot be mapped to a valid API method on a FHIR store, a generic
  /// GCP error might be returned instead.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the resource version to retrieve.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/fhirStores/[^/]+/fhir/[^/]+/[^/]+/_history/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [HttpBody].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<HttpBody> vread(core.String name, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new HttpBody.fromJson(data));
  }
}

class ProjectsLocationsDatasetsHl7V2StoresResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLocationsDatasetsHl7V2StoresMessagesResourceApi get messages =>
      new ProjectsLocationsDatasetsHl7V2StoresMessagesResourceApi(_requester);

  ProjectsLocationsDatasetsHl7V2StoresResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new HL7v2 store within the parent dataset.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the dataset this HL7v2 store belongs to.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+/datasets/[^/]+$".
  ///
  /// [hl7V2StoreId] - The ID of the HL7v2 store that is being created.
  /// The string must match the following regex: `[\p{L}\p{N}_\-\.]{1,256}`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Hl7V2Store].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Hl7V2Store> create(Hl7V2Store request, core.String parent,
      {core.String hl7V2StoreId, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (hl7V2StoreId != null) {
      _queryParams["hl7V2StoreId"] = [hl7V2StoreId];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/hl7V2Stores';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Hl7V2Store.fromJson(data));
  }

  /// Deletes the specified HL7v2 store and removes all messages that are
  /// contained within it.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the HL7v2 store to delete.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/hl7V2Stores/[^/]+$".
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
  async.Future<Empty> delete(core.String name, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /// Gets the specified HL7v2 store.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the HL7v2 store to get.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/hl7V2Stores/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Hl7V2Store].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Hl7V2Store> get(core.String name, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Hl7V2Store.fromJson(data));
  }

  /// Gets the access control policy for a resource.
  /// Returns an empty policy if the resource exists and does not have a policy
  /// set.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested.
  /// See the operation documentation for the appropriate value for this field.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/hl7V2Stores/[^/]+$".
  ///
  /// [options_requestedPolicyVersion] - Optional. The policy format version to
  /// be returned.
  /// Acceptable values are 0 and 1.
  /// If the value is 0, or the field is omitted, policy format version 1 will
  /// be
  /// returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Policy> getIamPolicy(core.String resource,
      {core.int options_requestedPolicyVersion, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (resource == null) {
      throw new core.ArgumentError("Parameter resource is required.");
    }
    if (options_requestedPolicyVersion != null) {
      _queryParams["options.requestedPolicyVersion"] = [
        "${options_requestedPolicyVersion}"
      ];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':getIamPolicy';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Policy.fromJson(data));
  }

  /// Lists the HL7v2 stores in the given dataset.
  ///
  /// Request parameters:
  ///
  /// [parent] - Name of the dataset.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+/datasets/[^/]+$".
  ///
  /// [filter] - Restricts stores returned to those matching a filter. Syntax:
  /// https://cloud.google.com/appengine/docs/standard/python/search/query_strings
  /// Only filtering on labels is supported, for example `labels.key=value`.
  ///
  /// [pageToken] - The next_page_token value returned from the previous List
  /// request, if any.
  ///
  /// [pageSize] - Limit on the number of HL7v2 stores to return in a single
  /// response.
  /// If zero the default page size of 100 is used.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListHl7V2StoresResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListHl7V2StoresResponse> list(core.String parent,
      {core.String filter,
      core.String pageToken,
      core.int pageSize,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/hl7V2Stores';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListHl7V2StoresResponse.fromJson(data));
  }

  /// Updates the HL7v2 store.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. Resource name of the HL7v2 store, of the form
  /// `projects/{project_id}/datasets/{dataset_id}/hl7V2Stores/{hl7v2_store_id}`.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/hl7V2Stores/[^/]+$".
  ///
  /// [updateMask] - The update mask applies to the resource. For the
  /// `FieldMask` definition,
  /// see
  /// https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Hl7V2Store].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Hl7V2Store> patch(Hl7V2Store request, core.String name,
      {core.String updateMask, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (updateMask != null) {
      _queryParams["updateMask"] = [updateMask];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Hl7V2Store.fromJson(data));
  }

  /// Sets the access control policy on the specified resource. Replaces any
  /// existing policy.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified.
  /// See the operation documentation for the appropriate value for this field.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/hl7V2Stores/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Policy> setIamPolicy(
      SetIamPolicyRequest request, core.String resource,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (resource == null) {
      throw new core.ArgumentError("Parameter resource is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':setIamPolicy';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Policy.fromJson(data));
  }

  /// Returns permissions that a caller has on the specified resource.
  /// If the resource does not exist, this will return an empty set of
  /// permissions, not a NOT_FOUND error.
  ///
  /// Note: This operation is designed to be used for building permission-aware
  /// UIs and command-line tools, not for authorization checking. This operation
  /// may "fail open" without warning.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested.
  /// See the operation documentation for the appropriate value for this field.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/hl7V2Stores/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TestIamPermissionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TestIamPermissionsResponse> testIamPermissions(
      TestIamPermissionsRequest request, core.String resource,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (resource == null) {
      throw new core.ArgumentError("Parameter resource is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':testIamPermissions';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new TestIamPermissionsResponse.fromJson(data));
  }
}

class ProjectsLocationsDatasetsHl7V2StoresMessagesResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLocationsDatasetsHl7V2StoresMessagesResourceApi(
      commons.ApiRequester client)
      : _requester = client;

  /// Creates a message and sends a notification to the Cloud Pub/Sub topic. If
  /// configured, the MLLP adapter listens to messages created by this method
  /// and
  /// sends those back to the hospital. A successful response indicates the
  /// message has been persisted to storage and a Cloud Pub/Sub notification has
  /// been sent. Sending to the hospital by the MLLP adapter happens
  /// asynchronously.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the dataset this message belongs to.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/hl7V2Stores/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Message].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Message> create(CreateMessageRequest request, core.String parent,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/messages';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Message.fromJson(data));
  }

  /// Deletes an HL7v2 message.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the HL7v2 message to delete.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/hl7V2Stores/[^/]+/messages/[^/]+$".
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
  async.Future<Empty> delete(core.String name, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /// Gets an HL7v2 message.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the HL7v2 message to retrieve.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/hl7V2Stores/[^/]+/messages/[^/]+$".
  ///
  /// [view] - Specifies which parts of the Message resource should be returned
  /// in the response.
  /// Possible string values are:
  /// - "MESSAGE_VIEW_UNSPECIFIED" : A MESSAGE_VIEW_UNSPECIFIED.
  /// - "RAW_ONLY" : A RAW_ONLY.
  /// - "PARSED_ONLY" : A PARSED_ONLY.
  /// - "FULL" : A FULL.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Message].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Message> get(core.String name,
      {core.String view, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (view != null) {
      _queryParams["view"] = [view];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Message.fromJson(data));
  }

  /// Ingests a new HL7v2 message from the hospital and sends a notification to
  /// the Cloud Pub/Sub topic. Return is an HL7v2 ACK message if the message was
  /// successfully stored. Otherwise an error is returned.  If an identical
  /// HL7v2 message is created twice only one resource is created on the server
  /// and no error is reported.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the HL7v2 store this message belongs to.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/hl7V2Stores/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [IngestMessageResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<IngestMessageResponse> ingest(
      IngestMessageRequest request, core.String parent,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/messages:ingest';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new IngestMessageResponse.fromJson(data));
  }

  /// Lists all the messages in the given HL7v2 store with support for
  /// filtering.
  ///
  /// Request parameters:
  ///
  /// [parent] - Name of the HL7v2 store to retrieve messages from.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/hl7V2Stores/[^/]+$".
  ///
  /// [filter] - Restricts messages returned to those matching a filter. Syntax:
  /// https://cloud.google.com/appengine/docs/standard/python/search/query_strings
  ///
  /// Fields/functions available for filtering are:
  ///
  /// *  `message_type`, from the MSH-9 segment; for example
  /// `NOT message_type = "ADT"`
  /// *  `send_date` or `sendDate`, the YYYY-MM-DD date the message was sent in
  /// the dataset's time_zone, from the MSH-7 segment; for example
  /// `send_date < "2017-01-02"`
  /// *  `send_time`, the timestamp of when the message was sent, using the
  /// RFC3339 time format for comparisons, from the MSH-7 segment; for example
  /// `send_time < "2017-01-02T00:00:00-05:00"`
  /// *  `send_facility`, the care center that the message came from, from the
  /// MSH-4 segment; for example `send_facility = "ABC"`
  /// *  `HL7RegExp(expr)`, which does regular expression matching of `expr`
  /// against the message payload using re2 (http://code.google.com/p/re2/)
  /// syntax; for example `HL7RegExp("^.*\|.*\|EMERG")`
  /// *  `PatientId(value, type)`, which matches if the message lists a patient
  /// having an ID of the given value and type in the PID-2, PID-3, or PID-4
  /// segments; for example `PatientId("123456", "MRN")`
  /// *  `labels.x`, a string value of the label with key `x` as set using the
  /// Message.labels
  /// map, for example `labels."priority"="high"`. The operator `:*` can be used
  /// to assert the existence of a label, for example `labels."priority":*`.
  ///
  /// Limitations on conjunctions:
  ///
  /// *  Negation on the patient ID function or the labels field is not
  /// supported, for example these queries are invalid:
  /// `NOT PatientId("123456", "MRN")`, `NOT labels."tag1":*`,
  /// `NOT labels."tag2"="val2"`.
  /// *  Conjunction of multiple patient ID functions is not supported, for
  /// example this query is invalid:
  /// `PatientId("123456", "MRN") AND PatientId("456789", "MRN")`.
  /// *  Conjunction of multiple labels fields is also not supported, for
  /// example this query is invalid: `labels."tag1":* AND labels."tag2"="val2"`.
  /// *  Conjunction of one patient ID function, one labels field and conditions
  /// on other fields is supported, for example this query is valid:
  /// `PatientId("123456", "MRN") AND labels."tag1":* AND message_type = "ADT"`.
  ///
  /// [pageToken] - The next_page_token value returned from the previous List
  /// request, if any.
  ///
  /// [orderBy] - Orders messages returned by the specified order_by clause.
  /// Syntax: https://cloud.google.com/apis/design/design_patterns#sorting_order
  ///
  /// Fields available for ordering are:
  ///
  /// *  `send_time`
  ///
  /// [pageSize] - Limit on the number of messages to return in a single
  /// response.
  /// If zero the default page size of 100 is used.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListMessagesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListMessagesResponse> list(core.String parent,
      {core.String filter,
      core.String pageToken,
      core.String orderBy,
      core.int pageSize,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (orderBy != null) {
      _queryParams["orderBy"] = [orderBy];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/messages';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListMessagesResponse.fromJson(data));
  }

  /// Update the message.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Resource name of the Message, of the form
  /// `projects/{project_id}/datasets/{dataset_id}/hl7V2Stores/{hl7_v2_store_id}/messages/{message_id}`.
  /// Assigned by the server.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/hl7V2Stores/[^/]+/messages/[^/]+$".
  ///
  /// [updateMask] - The update mask applies to the resource. For the
  /// `FieldMask` definition,
  /// see
  /// https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask
  /// Only the `labels` field is allowed to be updated.
  /// The labels in the request will be merged with the existing set of labels.
  /// Existing labels with the same keys will be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Message].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Message> patch(Message request, core.String name,
      {core.String updateMask, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (updateMask != null) {
      _queryParams["updateMask"] = [updateMask];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Message.fromJson(data));
  }
}

class ProjectsLocationsDatasetsOperationsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLocationsDatasetsOperationsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Gets the latest state of a long-running operation.  Clients can use this
  /// method to poll the operation result at intervals as recommended by the API
  /// service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/datasets/[^/]+/operations/[^/]+$".
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
  async.Future<Operation> get(core.String name, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Lists operations that match the specified filter in the request. If the
  /// server doesn't support this method, it returns `UNIMPLEMENTED`.
  ///
  /// NOTE: the `name` binding allows API services to override the binding
  /// to use different resource name schemes, such as `users / * /operations`.
  /// To
  /// override the binding, API services can add a binding such as
  /// `"/v1/{name=users / * }/operations"` to their service configuration.
  /// For backwards compatibility, the default name includes the operations
  /// collection id, however overriding users must ensure the name binding
  /// is the parent resource, without the operations collection id.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation's parent resource.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+/datasets/[^/]+$".
  ///
  /// [pageToken] - The standard list page token.
  ///
  /// [pageSize] - The standard list page size.
  ///
  /// [filter] - The standard list filter.
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
  async.Future<ListOperationsResponse> list(core.String name,
      {core.String pageToken,
      core.int pageSize,
      core.String filter,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        '/operations';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListOperationsResponse.fromJson(data));
  }
}

/// Specifies the audit configuration for a service.
/// The configuration determines which permission types are logged, and what
/// identities, if any, are exempted from logging.
/// An AuditConfig must have one or more AuditLogConfigs.
///
/// If there are AuditConfigs for both `allServices` and a specific service,
/// the union of the two AuditConfigs is used for that service: the log_types
/// specified in each AuditConfig are enabled, and the exempted_members in each
/// AuditLogConfig are exempted.
///
/// Example Policy with multiple AuditConfigs:
///
///     {
///       "audit_configs": [
///         {
///           "service": "allServices"
///           "audit_log_configs": [
///             {
///               "log_type": "DATA_READ",
///               "exempted_members": [
///                 "user:foo@gmail.com"
///               ]
///             },
///             {
///               "log_type": "DATA_WRITE",
///             },
///             {
///               "log_type": "ADMIN_READ",
///             }
///           ]
///         },
///         {
///           "service": "fooservice.googleapis.com"
///           "audit_log_configs": [
///             {
///               "log_type": "DATA_READ",
///             },
///             {
///               "log_type": "DATA_WRITE",
///               "exempted_members": [
///                 "user:bar@gmail.com"
///               ]
///             }
///           ]
///         }
///       ]
///     }
///
/// For fooservice, this policy enables DATA_READ, DATA_WRITE and ADMIN_READ
/// logging. It also exempts foo@gmail.com from DATA_READ logging, and
/// bar@gmail.com from DATA_WRITE logging.
class AuditConfig {
  /// The configuration for logging of each type of permission.
  core.List<AuditLogConfig> auditLogConfigs;

  /// Specifies a service that will be enabled for audit logging.
  /// For example, `storage.googleapis.com`, `cloudsql.googleapis.com`.
  /// `allServices` is a special value that covers all services.
  core.String service;

  AuditConfig();

  AuditConfig.fromJson(core.Map _json) {
    if (_json.containsKey("auditLogConfigs")) {
      auditLogConfigs = (_json["auditLogConfigs"] as core.List)
          .map<AuditLogConfig>((value) => new AuditLogConfig.fromJson(value))
          .toList();
    }
    if (_json.containsKey("service")) {
      service = _json["service"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (auditLogConfigs != null) {
      _json["auditLogConfigs"] =
          auditLogConfigs.map((value) => (value).toJson()).toList();
    }
    if (service != null) {
      _json["service"] = service;
    }
    return _json;
  }
}

/// Provides the configuration for logging a type of permissions.
/// Example:
///
///     {
///       "audit_log_configs": [
///         {
///           "log_type": "DATA_READ",
///           "exempted_members": [
///             "user:foo@gmail.com"
///           ]
///         },
///         {
///           "log_type": "DATA_WRITE",
///         }
///       ]
///     }
///
/// This enables 'DATA_READ' and 'DATA_WRITE' logging, while exempting
/// foo@gmail.com from DATA_READ logging.
class AuditLogConfig {
  /// Specifies the identities that do not cause logging for this type of
  /// permission.
  /// Follows the same format of Binding.members.
  core.List<core.String> exemptedMembers;

  /// The log type that this config enables.
  /// Possible string values are:
  /// - "LOG_TYPE_UNSPECIFIED" : Default case. Should never be this.
  /// - "ADMIN_READ" : Admin reads. Example: CloudIAM getIamPolicy
  /// - "DATA_WRITE" : Data writes. Example: CloudSQL Users create
  /// - "DATA_READ" : Data reads. Example: CloudSQL Users list
  core.String logType;

  AuditLogConfig();

  AuditLogConfig.fromJson(core.Map _json) {
    if (_json.containsKey("exemptedMembers")) {
      exemptedMembers =
          (_json["exemptedMembers"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("logType")) {
      logType = _json["logType"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (exemptedMembers != null) {
      _json["exemptedMembers"] = exemptedMembers;
    }
    if (logType != null) {
      _json["logType"] = logType;
    }
    return _json;
  }
}

/// Associates `members` with a `role`.
class Binding {
  /// The condition that is associated with this binding.
  /// NOTE: An unsatisfied condition will not allow user access via current
  /// binding. Different bindings, including their conditions, are examined
  /// independently.
  Expr condition;

  /// Specifies the identities requesting access for a Cloud Platform resource.
  /// `members` can have the following values:
  ///
  /// * `allUsers`: A special identifier that represents anyone who is
  ///    on the internet; with or without a Google account.
  ///
  /// * `allAuthenticatedUsers`: A special identifier that represents anyone
  ///    who is authenticated with a Google account or a service account.
  ///
  /// * `user:{emailid}`: An email address that represents a specific Google
  ///    account. For example, `alice@gmail.com` .
  ///
  ///
  /// * `serviceAccount:{emailid}`: An email address that represents a service
  ///    account. For example, `my-other-app@appspot.gserviceaccount.com`.
  ///
  /// * `group:{emailid}`: An email address that represents a Google group.
  ///    For example, `admins@example.com`.
  ///
  ///
  /// * `domain:{domain}`: The G Suite domain (primary) that represents all the
  ///    users of that domain. For example, `google.com` or `example.com`.
  core.List<core.String> members;

  /// Role that is assigned to `members`.
  /// For example, `roles/viewer`, `roles/editor`, or `roles/owner`.
  core.String role;

  Binding();

  Binding.fromJson(core.Map _json) {
    if (_json.containsKey("condition")) {
      condition = new Expr.fromJson(_json["condition"]);
    }
    if (_json.containsKey("members")) {
      members = (_json["members"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("role")) {
      role = _json["role"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (condition != null) {
      _json["condition"] = (condition).toJson();
    }
    if (members != null) {
      _json["members"] = members;
    }
    if (role != null) {
      _json["role"] = role;
    }
    return _json;
  }
}

/// Mask a string by replacing its characters with a fixed character.
class CharacterMaskConfig {
  /// Character to mask the sensitive values. If not supplied, defaults to "*".
  core.String maskingCharacter;

  CharacterMaskConfig();

  CharacterMaskConfig.fromJson(core.Map _json) {
    if (_json.containsKey("maskingCharacter")) {
      maskingCharacter = _json["maskingCharacter"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (maskingCharacter != null) {
      _json["maskingCharacter"] = maskingCharacter;
    }
    return _json;
  }
}

/// Creates a new message.
class CreateMessageRequest {
  /// HL7v2 message.
  Message message;

  CreateMessageRequest();

  CreateMessageRequest.fromJson(core.Map _json) {
    if (_json.containsKey("message")) {
      message = new Message.fromJson(_json["message"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (message != null) {
      _json["message"] = (message).toJson();
    }
    return _json;
  }
}

/// Pseudonymization method that generates surrogates via cryptographic hashing.
/// Uses SHA-256.
/// Outputs a base64-encoded representation of the hashed output
/// (for example, `L7k0BHmF1ha5U3NfGykjro4xWi1MPVQPjhMAZbSV9mM=`).
class CryptoHashConfig {
  /// An AES 128/192/256 bit key. Causes the hash to be computed based on this
  /// key. A default key is generated for each DeidentifyDataset operation and
  /// is
  /// used wherever crypto_key is not specified.
  core.String cryptoKey;
  core.List<core.int> get cryptoKeyAsBytes {
    return convert.base64.decode(cryptoKey);
  }

  set cryptoKeyAsBytes(core.List<core.int> _bytes) {
    cryptoKey =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  CryptoHashConfig();

  CryptoHashConfig.fromJson(core.Map _json) {
    if (_json.containsKey("cryptoKey")) {
      cryptoKey = _json["cryptoKey"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (cryptoKey != null) {
      _json["cryptoKey"] = cryptoKey;
    }
    return _json;
  }
}

/// A message representing a health dataset.
///
/// A health dataset represents a collection of healthcare data pertaining to
/// one
/// or more patients. This may include multiple modalities of healthcare data,
/// such as electronic medical records or medical imaging data.
class Dataset {
  /// Output only. Resource name of the dataset, of the form
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}`.
  core.String name;

  /// The default timezone used by this dataset. Must be a either a valid IANA
  /// time zone name such as "America/New_York" or empty, which defaults to UTC.
  /// This is used for parsing times in resources (e.g., HL7 messages) where no
  /// explicit timezone is specified.
  core.String timeZone;

  Dataset();

  Dataset.fromJson(core.Map _json) {
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("timeZone")) {
      timeZone = _json["timeZone"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (name != null) {
      _json["name"] = name;
    }
    if (timeZone != null) {
      _json["timeZone"] = timeZone;
    }
    return _json;
  }
}

/// Shift a date forward or backward in time by a random amount which is
/// consistent for a given patient and crypto key combination.
class DateShiftConfig {
  /// An AES 128/192/256 bit key. Causes the shift to be computed based on this
  /// key and the patient ID. A default key is generated for each
  /// DeidentifyDataset operation and is used wherever crypto_key is not
  /// specified.
  core.String cryptoKey;
  core.List<core.int> get cryptoKeyAsBytes {
    return convert.base64.decode(cryptoKey);
  }

  set cryptoKeyAsBytes(core.List<core.int> _bytes) {
    cryptoKey =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  DateShiftConfig();

  DateShiftConfig.fromJson(core.Map _json) {
    if (_json.containsKey("cryptoKey")) {
      cryptoKey = _json["cryptoKey"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (cryptoKey != null) {
      _json["cryptoKey"] = cryptoKey;
    }
    return _json;
  }
}

/// Configures de-id options specific to different types of content.
/// Each submessage customizes the handling of an
/// https://tools.ietf.org/html/rfc6838 media type or subtype. Configs are
/// applied in a nested manner at runtime.
class DeidentifyConfig {
  /// Configures de-id of application/DICOM content.
  DicomConfig dicom;

  /// Configures de-id of application/FHIR content.
  FhirConfig fhir;

  /// Configures de-identification of image pixels wherever they are found in
  /// the
  /// source_dataset.
  ImageConfig image;

  /// Configures de-identification of text wherever it is found in the
  /// source_dataset.
  TextConfig text;

  DeidentifyConfig();

  DeidentifyConfig.fromJson(core.Map _json) {
    if (_json.containsKey("dicom")) {
      dicom = new DicomConfig.fromJson(_json["dicom"]);
    }
    if (_json.containsKey("fhir")) {
      fhir = new FhirConfig.fromJson(_json["fhir"]);
    }
    if (_json.containsKey("image")) {
      image = new ImageConfig.fromJson(_json["image"]);
    }
    if (_json.containsKey("text")) {
      text = new TextConfig.fromJson(_json["text"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (dicom != null) {
      _json["dicom"] = (dicom).toJson();
    }
    if (fhir != null) {
      _json["fhir"] = (fhir).toJson();
    }
    if (image != null) {
      _json["image"] = (image).toJson();
    }
    if (text != null) {
      _json["text"] = (text).toJson();
    }
    return _json;
  }
}

/// Redacts identifying information from the specified dataset.
class DeidentifyDatasetRequest {
  /// Deidentify configuration.
  DeidentifyConfig config;

  /// The name of the dataset resource to create and write the redacted data to
  /// (e.g.,
  ///
  ///  * The destination dataset must not exist.
  ///  * The destination dataset must be in the same project as the source
  /// dataset. De-identifying data across multiple projects is not supported.
  core.String destinationDataset;

  DeidentifyDatasetRequest();

  DeidentifyDatasetRequest.fromJson(core.Map _json) {
    if (_json.containsKey("config")) {
      config = new DeidentifyConfig.fromJson(_json["config"]);
    }
    if (_json.containsKey("destinationDataset")) {
      destinationDataset = _json["destinationDataset"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (config != null) {
      _json["config"] = (config).toJson();
    }
    if (destinationDataset != null) {
      _json["destinationDataset"] = destinationDataset;
    }
    return _json;
  }
}

/// Contains the status of the Deidentify operation.
class DeidentifyErrorDetails {
  /// Number of resources failed to process.
  core.String failureResourceCount;

  /// Number of stores failed to process.
  core.String failureStoreCount;

  /// Number of resources successfully processed.
  core.String successResourceCount;

  /// Number of stores successfully processed.
  core.String successStoreCount;

  DeidentifyErrorDetails();

  DeidentifyErrorDetails.fromJson(core.Map _json) {
    if (_json.containsKey("failureResourceCount")) {
      failureResourceCount = _json["failureResourceCount"];
    }
    if (_json.containsKey("failureStoreCount")) {
      failureStoreCount = _json["failureStoreCount"];
    }
    if (_json.containsKey("successResourceCount")) {
      successResourceCount = _json["successResourceCount"];
    }
    if (_json.containsKey("successStoreCount")) {
      successStoreCount = _json["successStoreCount"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (failureResourceCount != null) {
      _json["failureResourceCount"] = failureResourceCount;
    }
    if (failureStoreCount != null) {
      _json["failureStoreCount"] = failureStoreCount;
    }
    if (successResourceCount != null) {
      _json["successResourceCount"] = successResourceCount;
    }
    if (successStoreCount != null) {
      _json["successStoreCount"] = successStoreCount;
    }
    return _json;
  }
}

/// Contains a detailed summary of the Deidentify operation.
class DeidentifySummary {
  /// Number of resources successfully processed.
  core.String successResourceCount;

  /// Number of stores successfully processed.
  core.String successStoreCount;

  DeidentifySummary();

  DeidentifySummary.fromJson(core.Map _json) {
    if (_json.containsKey("successResourceCount")) {
      successResourceCount = _json["successResourceCount"];
    }
    if (_json.containsKey("successStoreCount")) {
      successStoreCount = _json["successStoreCount"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (successResourceCount != null) {
      _json["successResourceCount"] = successResourceCount;
    }
    if (successStoreCount != null) {
      _json["successStoreCount"] = successStoreCount;
    }
    return _json;
  }
}

/// Specifies the parameters needed for de-identification of DICOM stores.
class DicomConfig {
  /// Tag filtering profile that determines which tags to keep/remove.
  /// Possible string values are:
  /// - "TAG_FILTER_PROFILE_UNSPECIFIED" : No tag filtration profile provided.
  /// Same as KEEP_ALL_PROFILE.
  /// - "MINIMAL_KEEP_LIST_PROFILE" : Keep only tags required to produce valid
  /// DICOM.
  /// - "ATTRIBUTE_CONFIDENTIALITY_BASIC_PROFILE" : Remove tags based on DICOM
  /// Standard's Attribute Confidentiality Basic
  /// Profile (DICOM Standard Edition 2018e)
  /// http://dicom.nema.org/medical/dicom/2018e/output/chtml/part15/chapter_E.html.
  /// - "KEEP_ALL_PROFILE" : Keep all tags.
  /// - "DEIDENTIFY_TAG_CONTENTS" : Inspects within tag contents and replaces
  /// sensitive text. The process
  /// can be configured using the TextConfig.
  /// Applies to all tags with the following Value Representation names:
  /// AE, LO, LT, PN, SH, ST, UC, UT, DA, DT, AS
  core.String filterProfile;

  /// List of tags to keep. Remove all other tags.
  TagFilterList keepList;

  /// List of tags to remove. Keep all other tags.
  TagFilterList removeList;

  DicomConfig();

  DicomConfig.fromJson(core.Map _json) {
    if (_json.containsKey("filterProfile")) {
      filterProfile = _json["filterProfile"];
    }
    if (_json.containsKey("keepList")) {
      keepList = new TagFilterList.fromJson(_json["keepList"]);
    }
    if (_json.containsKey("removeList")) {
      removeList = new TagFilterList.fromJson(_json["removeList"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (filterProfile != null) {
      _json["filterProfile"] = filterProfile;
    }
    if (keepList != null) {
      _json["keepList"] = (keepList).toJson();
    }
    if (removeList != null) {
      _json["removeList"] = (removeList).toJson();
    }
    return _json;
  }
}

/// Represents a DICOM store.
class DicomStore {
  /// User-supplied key-value pairs used to organize DICOM stores.
  ///
  /// Label keys must be between 1 and 63 characters long, have a UTF-8 encoding
  /// of maximum 128 bytes, and must conform to the
  /// following PCRE regular expression:
  /// \p{Ll}\p{Lo}{0,62}
  ///
  /// Label values are optional, must be between 1 and 63 characters long, have
  /// a UTF-8 encoding of maximum 128 bytes, and must conform to the
  /// following PCRE regular expression: [\p{Ll}\p{Lo}\p{N}_-]{0,63}
  ///
  /// No more than 64 labels can be associated with a given store.
  core.Map<core.String, core.String> labels;

  /// Output only. Resource name of the DICOM store, of the form
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}`.
  core.String name;

  /// Notification destination for new DICOM instances.
  /// Supplied by the client.
  NotificationConfig notificationConfig;

  DicomStore();

  DicomStore.fromJson(core.Map _json) {
    if (_json.containsKey("labels")) {
      labels = (_json["labels"] as core.Map).cast<core.String, core.String>();
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("notificationConfig")) {
      notificationConfig =
          new NotificationConfig.fromJson(_json["notificationConfig"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (labels != null) {
      _json["labels"] = labels;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (notificationConfig != null) {
      _json["notificationConfig"] = (notificationConfig).toJson();
    }
    return _json;
  }
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs. A typical example is to use it as the request
/// or the response type of an API method. For instance:
///
///     service Foo {
///       rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty);
///     }
///
/// The JSON representation for `Empty` is empty JSON object `{}`.
class Empty {
  Empty();

  Empty.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    return _json;
  }
}

/// Structure to describe the error encountered during batch operation on one
/// resource. This is used both for sample errors in operation response, and
/// for format of errors in error reports.
class ErrorDetail {
  /// The status of the error.
  Status error;

  /// The identifier of the resource.
  core.String resource;

  ErrorDetail();

  ErrorDetail.fromJson(core.Map _json) {
    if (_json.containsKey("error")) {
      error = new Status.fromJson(_json["error"]);
    }
    if (_json.containsKey("resource")) {
      resource = _json["resource"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (error != null) {
      _json["error"] = (error).toJson();
    }
    if (resource != null) {
      _json["resource"] = resource;
    }
    return _json;
  }
}

/// Exports data from the specified DICOM store.
/// If a given resource (e.g., a DICOM object with the same SOPInstance UID)
/// already exists in the output, it is overwritten with the version
/// in the source dataset.
/// Exported DICOM data will persist when the DICOM store from which it was
/// exported is deleted.
class ExportDicomDataRequest {
  /// The BigQuery output destination.
  ///
  /// You can only export to a BigQuery dataset that's in the same project as
  /// the DICOM store you're exporting from.
  ///
  /// The BigQuery location requires two IAM roles:
  /// `roles/bigquery.dataEditor` and `roles/bigquery.jobUser`.
  GoogleCloudHealthcareV1beta1DicomBigQueryDestination bigqueryDestination;

  /// The Cloud Storage output destination.
  ///
  /// The Cloud Storage location requires the `roles/storage.objectAdmin` Cloud
  /// IAM role.
  GoogleCloudHealthcareV1beta1DicomGcsDestination gcsDestination;

  ExportDicomDataRequest();

  ExportDicomDataRequest.fromJson(core.Map _json) {
    if (_json.containsKey("bigqueryDestination")) {
      bigqueryDestination =
          new GoogleCloudHealthcareV1beta1DicomBigQueryDestination.fromJson(
              _json["bigqueryDestination"]);
    }
    if (_json.containsKey("gcsDestination")) {
      gcsDestination =
          new GoogleCloudHealthcareV1beta1DicomGcsDestination.fromJson(
              _json["gcsDestination"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (bigqueryDestination != null) {
      _json["bigqueryDestination"] = (bigqueryDestination).toJson();
    }
    if (gcsDestination != null) {
      _json["gcsDestination"] = (gcsDestination).toJson();
    }
    return _json;
  }
}

/// Request to export resources.
class ExportResourcesRequest {
  /// The BigQuery output destination.
  ///
  /// The BigQuery location requires two IAM roles:
  /// `roles/bigquery.dataEditor` and `roles/bigquery.jobUser`.
  ///
  /// The output will be one BigQuery table per resource type.
  GoogleCloudHealthcareV1beta1FhirBigQueryDestination bigqueryDestination;

  /// The Cloud Storage output destination.
  ///
  /// The Cloud Storage location requires the `roles/storage.objectAdmin` Cloud
  /// IAM role.
  ///
  /// The exported outputs are
  /// organized by FHIR resource types. The server will create one object per
  /// resource type. Each object contains newline delimited JSON, and each line
  /// is a FHIR resource.
  GoogleCloudHealthcareV1beta1FhirRestGcsDestination gcsDestination;

  ExportResourcesRequest();

  ExportResourcesRequest.fromJson(core.Map _json) {
    if (_json.containsKey("bigqueryDestination")) {
      bigqueryDestination =
          new GoogleCloudHealthcareV1beta1FhirBigQueryDestination.fromJson(
              _json["bigqueryDestination"]);
    }
    if (_json.containsKey("gcsDestination")) {
      gcsDestination =
          new GoogleCloudHealthcareV1beta1FhirRestGcsDestination.fromJson(
              _json["gcsDestination"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (bigqueryDestination != null) {
      _json["bigqueryDestination"] = (bigqueryDestination).toJson();
    }
    if (gcsDestination != null) {
      _json["gcsDestination"] = (gcsDestination).toJson();
    }
    return _json;
  }
}

/// Represents an expression text. Example:
///
///     title: "User account presence"
///     description: "Determines whether the request has a user account"
///     expression: "size(request.user) > 0"
class Expr {
  /// An optional description of the expression. This is a longer text which
  /// describes the expression, e.g. when hovered over it in a UI.
  core.String description;

  /// Textual representation of an expression in
  /// Common Expression Language syntax.
  ///
  /// The application context of the containing message determines which
  /// well-known feature set of CEL is supported.
  core.String expression;

  /// An optional string indicating the location of the expression for error
  /// reporting, e.g. a file name and a position in the file.
  core.String location;

  /// An optional title for the expression, i.e. a short string describing
  /// its purpose. This can be used e.g. in UIs which allow to enter the
  /// expression.
  core.String title;

  Expr();

  Expr.fromJson(core.Map _json) {
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("expression")) {
      expression = _json["expression"];
    }
    if (_json.containsKey("location")) {
      location = _json["location"];
    }
    if (_json.containsKey("title")) {
      title = _json["title"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (description != null) {
      _json["description"] = description;
    }
    if (expression != null) {
      _json["expression"] = expression;
    }
    if (location != null) {
      _json["location"] = location;
    }
    if (title != null) {
      _json["title"] = title;
    }
    return _json;
  }
}

/// Specifies how de-identification of a FHIR store should be handled.
class FhirConfig {
  /// Specifies FHIR paths to match and how to transform them. Any field that
  /// is not matched by a FieldMetadata will be passed through to the output
  /// dataset unmodified. All extensions are removed in the output.
  core.List<FieldMetadata> fieldMetadataList;

  FhirConfig();

  FhirConfig.fromJson(core.Map _json) {
    if (_json.containsKey("fieldMetadataList")) {
      fieldMetadataList = (_json["fieldMetadataList"] as core.List)
          .map<FieldMetadata>((value) => new FieldMetadata.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (fieldMetadataList != null) {
      _json["fieldMetadataList"] =
          fieldMetadataList.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Represents a FHIR store.
class FhirStore {
  /// Whether to disable referential integrity in this FHIR store. This field is
  /// immutable after FHIR store creation.
  /// The default value is false, meaning that the API will enforce referential
  /// integrity and fail the requests that will result in inconsistent state in
  /// the FHIR store.
  /// When this field is set to true, the API will skip referential integrity
  /// check. Consequently, operations that rely on references, such as
  /// GetPatientEverything, will not return all the results if broken references
  /// exist.
  core.bool disableReferentialIntegrity;

  /// Whether to disable resource versioning for this FHIR store. This field can
  /// not be changed after the creation of FHIR store.
  /// If set to false, which is the default behavior, all write operations will
  /// cause historical versions to be recorded automatically. The historical
  /// versions can be fetched through the history APIs, but cannot be updated.
  /// If set to true, no historical versions will be kept. The server will send
  /// back errors for attempts to read the historical versions.
  core.bool disableResourceVersioning;

  /// Whether to allow the bulk import API to accept history bundles and
  /// directly
  /// insert historical resource versions into the FHIR store. Importing
  /// resource
  /// histories creates resource interactions that appear to have occurred in
  /// the
  /// past, which clients may not want to allow. If set to false, history
  /// bundles
  /// within an import will fail with an error.
  core.bool enableHistoryImport;

  /// Whether this FHIR store has the [updateCreate
  /// capability](https://www.hl7.org/fhir/capabilitystatement-definitions.html#CapabilityStatement.rest.resource.updateCreate).
  /// This determines if the client can use an Update operation to create a new
  /// resource with a client-specified ID. If false, all IDs are server-assigned
  /// through the Create operation and attempts to Update a non-existent
  /// resource
  /// will return errors. Please treat the audit logs with appropriate levels of
  /// care if client-specified resource IDs contain sensitive data such as
  /// patient identifiers, those IDs will be part of the FHIR resource path
  /// recorded in Cloud audit logs and Cloud Pub/Sub notifications.
  core.bool enableUpdateCreate;

  /// User-supplied key-value pairs used to organize FHIR stores.
  ///
  /// Label keys must be between 1 and 63 characters long, have a UTF-8 encoding
  /// of maximum 128 bytes, and must conform to the
  /// following PCRE regular expression:
  /// \p{Ll}\p{Lo}{0,62}
  ///
  /// Label values are optional, must be between 1 and 63 characters long, have
  /// a UTF-8 encoding of maximum 128 bytes, and must conform to the
  /// following PCRE regular expression: [\p{Ll}\p{Lo}\p{N}_-]{0,63}
  ///
  /// No more than 64 labels can be associated with a given store.
  core.Map<core.String, core.String> labels;

  /// Output only. Resource name of the FHIR store, of the form
  /// `projects/{project_id}/datasets/{dataset_id}/fhirStores/{fhir_store_id}`.
  core.String name;

  /// If non-empty, publish all resource modifications of this FHIR store to
  /// this destination. The Cloud Pub/Sub message attributes will contain a map
  /// with a string describing the action that has triggered the notification,
  /// e.g. "action":"CreateResource".
  NotificationConfig notificationConfig;

  FhirStore();

  FhirStore.fromJson(core.Map _json) {
    if (_json.containsKey("disableReferentialIntegrity")) {
      disableReferentialIntegrity = _json["disableReferentialIntegrity"];
    }
    if (_json.containsKey("disableResourceVersioning")) {
      disableResourceVersioning = _json["disableResourceVersioning"];
    }
    if (_json.containsKey("enableHistoryImport")) {
      enableHistoryImport = _json["enableHistoryImport"];
    }
    if (_json.containsKey("enableUpdateCreate")) {
      enableUpdateCreate = _json["enableUpdateCreate"];
    }
    if (_json.containsKey("labels")) {
      labels = (_json["labels"] as core.Map).cast<core.String, core.String>();
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("notificationConfig")) {
      notificationConfig =
          new NotificationConfig.fromJson(_json["notificationConfig"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (disableReferentialIntegrity != null) {
      _json["disableReferentialIntegrity"] = disableReferentialIntegrity;
    }
    if (disableResourceVersioning != null) {
      _json["disableResourceVersioning"] = disableResourceVersioning;
    }
    if (enableHistoryImport != null) {
      _json["enableHistoryImport"] = enableHistoryImport;
    }
    if (enableUpdateCreate != null) {
      _json["enableUpdateCreate"] = enableUpdateCreate;
    }
    if (labels != null) {
      _json["labels"] = labels;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (notificationConfig != null) {
      _json["notificationConfig"] = (notificationConfig).toJson();
    }
    return _json;
  }
}

/// Specifies FHIR paths to match, and how to handle de-identification of
/// matching fields.
class FieldMetadata {
  /// Deidentify action for one field.
  /// Possible string values are:
  /// - "ACTION_UNSPECIFIED" : No action specified.
  /// - "TRANSFORM" : Transform the entire field.
  /// - "INSPECT_AND_TRANSFORM" : Inspect and transform any found PHI.
  /// - "DO_NOT_TRANSFORM" : Do not transform.
  core.String action;

  /// List of paths to FHIR fields to be redacted. Each path is a
  /// period-separated list where each component is either a field name or
  /// FHIR type name, for example: Patient, HumanName.
  /// For "choice" types (those defined in the FHIR spec with the form:
  /// field[x]) we use two separate components. e.g. "deceasedAge.unit" is
  /// matched by "Deceased.Age.unit".
  /// Supported types are: AdministrativeGenderCode, Code, Date, DateTime,
  /// Decimal, HumanName, Id, LanguageCode, Markdown, MimeTypeCode, Oid,
  /// String, Uri, Uuid, Xhtml.
  core.List<core.String> paths;

  FieldMetadata();

  FieldMetadata.fromJson(core.Map _json) {
    if (_json.containsKey("action")) {
      action = _json["action"];
    }
    if (_json.containsKey("paths")) {
      paths = (_json["paths"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (action != null) {
      _json["action"] = action;
    }
    if (paths != null) {
      _json["paths"] = paths;
    }
    return _json;
  }
}

/// The BigQuery table where the output should be written.
class GoogleCloudHealthcareV1beta1DicomBigQueryDestination {
  /// If the destination table already exists and this flag is `TRUE`, the table
  /// will be overwritten by the contents of the DICOM store. If the flag is not
  /// set and the destination table already exists, the export call returns an
  /// error.
  core.bool force;

  /// BigQuery URI to a table, up to 2000 characters long, in the format
  /// `bq://projectId.bqDatasetId.tableId`
  core.String tableUri;

  GoogleCloudHealthcareV1beta1DicomBigQueryDestination();

  GoogleCloudHealthcareV1beta1DicomBigQueryDestination.fromJson(
      core.Map _json) {
    if (_json.containsKey("force")) {
      force = _json["force"];
    }
    if (_json.containsKey("tableUri")) {
      tableUri = _json["tableUri"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (force != null) {
      _json["force"] = force;
    }
    if (tableUri != null) {
      _json["tableUri"] = tableUri;
    }
    return _json;
  }
}

/// The Cloud Storage location where the output should be written, and the
/// export
/// configuration.
class GoogleCloudHealthcareV1beta1DicomGcsDestination {
  /// MIME types supported by DICOM spec.
  /// Each file will be written in the following format:
  /// `.../{study_id}/{series_id}/{instance_id}[/{frame_number}].{extension}`
  /// The frame_number component will exist only for multi-frame instances.
  ///
  /// Refer to the DICOM conformance statement for permissible MIME types:
  /// https://cloud.google.com/healthcare/docs/dicom#wado-rs
  ///
  /// The following extensions will be used for output files:
  ///   application/dicom -> .dcm
  ///   image/jpeg -> .jpg
  ///   image/png -> .png
  ///
  /// If unspecified, the instances will be exported in their original
  /// DICOM format.
  core.String mimeType;

  /// The Cloud Storage destination to export to.
  ///
  /// URI for a Cloud Storage directory where result files should be written (in
  /// the format `gs://{bucket-id}/{path/to/destination/dir}`). If there is no
  /// trailing slash, the service will append one when composing the object
  /// path.
  /// The user is responsible for creating the Cloud Storage bucket referenced
  /// in
  /// `uri_prefix`.
  core.String uriPrefix;

  GoogleCloudHealthcareV1beta1DicomGcsDestination();

  GoogleCloudHealthcareV1beta1DicomGcsDestination.fromJson(core.Map _json) {
    if (_json.containsKey("mimeType")) {
      mimeType = _json["mimeType"];
    }
    if (_json.containsKey("uriPrefix")) {
      uriPrefix = _json["uriPrefix"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (mimeType != null) {
      _json["mimeType"] = mimeType;
    }
    if (uriPrefix != null) {
      _json["uriPrefix"] = uriPrefix;
    }
    return _json;
  }
}

/// Specifies the configuration for importing data from Cloud Storage.
class GoogleCloudHealthcareV1beta1DicomGcsSource {
  /// Points to a Cloud Storage URI containing file(s) with
  /// content only. The URI must be in the following format:
  /// `gs://{bucket_id}/{object_id}`. The URI can include wildcards in
  /// `object_id` and thus identify multiple files. Supported wildcards:
  ///  '*' to match 0 or more non-separator characters
  /// '**' to match 0 or more characters (including separators). Must be used at
  ///       the end of a path and with no other wildcards in the
  ///       path. Can also be used with a file extension (such as .dcm), which
  ///       imports all files with the extension in the specified directory and
  ///       its sub-directories. For example,
  ///       `gs://my-bucket/my-directory / * *.dcm` imports all files with .dcm
  ///       extensions in `my-directory/` and its sub-directories.
  ///  '?' to match 1 character
  /// All other URI formats are invalid.
  /// Files matching the wildcard are expected to contain content only, no
  /// metadata.
  core.String uri;

  GoogleCloudHealthcareV1beta1DicomGcsSource();

  GoogleCloudHealthcareV1beta1DicomGcsSource.fromJson(core.Map _json) {
    if (_json.containsKey("uri")) {
      uri = _json["uri"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (uri != null) {
      _json["uri"] = uri;
    }
    return _json;
  }
}

/// The configuration for exporting to BigQuery.
class GoogleCloudHealthcareV1beta1FhirBigQueryDestination {
  /// BigQuery URI to a dataset, up to 2000 characters long, in the format
  /// `bq://projectId.bqDatasetId`
  core.String datasetUri;

  /// The configuration for the exported BigQuery schema.
  SchemaConfig schemaConfig;

  GoogleCloudHealthcareV1beta1FhirBigQueryDestination();

  GoogleCloudHealthcareV1beta1FhirBigQueryDestination.fromJson(core.Map _json) {
    if (_json.containsKey("datasetUri")) {
      datasetUri = _json["datasetUri"];
    }
    if (_json.containsKey("schemaConfig")) {
      schemaConfig = new SchemaConfig.fromJson(_json["schemaConfig"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (datasetUri != null) {
      _json["datasetUri"] = datasetUri;
    }
    if (schemaConfig != null) {
      _json["schemaConfig"] = (schemaConfig).toJson();
    }
    return _json;
  }
}

/// Final response of exporting resources.
/// This structure will be included in the
/// response to describe the detailed
/// outcome. It will only be included when the operation finishes.
class GoogleCloudHealthcareV1beta1FhirRestExportResourcesResponse {
  /// The name of the FHIR store where resources have been exported, in the
  /// format
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/fhirStores/{fhir_store_id}`.
  core.String fhirStore;

  /// The total number of resources exported from the requested FHIR store.
  core.String resourceCount;

  GoogleCloudHealthcareV1beta1FhirRestExportResourcesResponse();

  GoogleCloudHealthcareV1beta1FhirRestExportResourcesResponse.fromJson(
      core.Map _json) {
    if (_json.containsKey("fhirStore")) {
      fhirStore = _json["fhirStore"];
    }
    if (_json.containsKey("resourceCount")) {
      resourceCount = _json["resourceCount"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (fhirStore != null) {
      _json["fhirStore"] = fhirStore;
    }
    if (resourceCount != null) {
      _json["resourceCount"] = resourceCount;
    }
    return _json;
  }
}

/// The configuration for exporting to Cloud Storage.
class GoogleCloudHealthcareV1beta1FhirRestGcsDestination {
  /// URI for a Cloud Storage directory where result files should be written (in
  /// the format `gs://{bucket-id}/{path/to/destination/dir}`). If there is no
  /// trailing slash, the service will append one when composing the object
  /// path.
  /// The user is responsible for creating the Cloud Storage bucket referenced
  /// in
  /// `uri_prefix`.
  core.String uriPrefix;

  GoogleCloudHealthcareV1beta1FhirRestGcsDestination();

  GoogleCloudHealthcareV1beta1FhirRestGcsDestination.fromJson(core.Map _json) {
    if (_json.containsKey("uriPrefix")) {
      uriPrefix = _json["uriPrefix"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (uriPrefix != null) {
      _json["uriPrefix"] = uriPrefix;
    }
    return _json;
  }
}

/// Specifies the configuration for importing data from Cloud Storage.
class GoogleCloudHealthcareV1beta1FhirRestGcsSource {
  /// Points to a Cloud Storage URI containing file(s) to import.
  ///
  /// The URI must be in the following format: `gs://{bucket_id}/{object_id}`.
  /// The URI can include wildcards in `object_id` and thus identify multiple
  /// files. Supported wildcards:
  ///
  /// *  `*` to match 0 or more non-separator characters
  /// *  `**` to match 0 or more characters (including separators). Must be used
  /// at the end of a path and with no other wildcards in the
  /// path. Can also be used with a file extension (such as .ndjson), which
  /// imports all files with the extension in the specified directory and
  /// its sub-directories. For example, `gs://my-bucket/my-directory / *
  /// *.ndjson`
  /// imports all files with `.ndjson` extensions in `my-directory/` and its
  /// sub-directories.
  /// *  `?` to match 1 character
  ///
  /// Files matching the wildcard are expected to contain content only, no
  /// metadata.
  core.String uri;

  GoogleCloudHealthcareV1beta1FhirRestGcsSource();

  GoogleCloudHealthcareV1beta1FhirRestGcsSource.fromJson(core.Map _json) {
    if (_json.containsKey("uri")) {
      uri = _json["uri"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (uri != null) {
      _json["uri"] = uri;
    }
    return _json;
  }
}

/// Error response of importing resources.
/// This structure will be included in the
/// error details to describe the
/// detailed error. It will only be included when the operation finishes with
/// some failure.
class GoogleCloudHealthcareV1beta1FhirRestImportResourcesErrorDetails {
  /// The number of resources that had errors.
  core.String errorCount;

  /// The name of the FHIR store where resources have been imported, in the
  /// format
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/fhirStores/{fhir_store_id}`.
  core.String fhirStore;

  /// The total number of resources included in the source data. This is the sum
  /// of the success and error counts.
  core.String inputSize;

  /// The number of resources that have been imported.
  core.String successCount;

  GoogleCloudHealthcareV1beta1FhirRestImportResourcesErrorDetails();

  GoogleCloudHealthcareV1beta1FhirRestImportResourcesErrorDetails.fromJson(
      core.Map _json) {
    if (_json.containsKey("errorCount")) {
      errorCount = _json["errorCount"];
    }
    if (_json.containsKey("fhirStore")) {
      fhirStore = _json["fhirStore"];
    }
    if (_json.containsKey("inputSize")) {
      inputSize = _json["inputSize"];
    }
    if (_json.containsKey("successCount")) {
      successCount = _json["successCount"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (errorCount != null) {
      _json["errorCount"] = errorCount;
    }
    if (fhirStore != null) {
      _json["fhirStore"] = fhirStore;
    }
    if (inputSize != null) {
      _json["inputSize"] = inputSize;
    }
    if (successCount != null) {
      _json["successCount"] = successCount;
    }
    return _json;
  }
}

/// Final response of importing resources.
/// This structure will be included in the
/// response to describe the detailed
/// outcome. It will only be included when the operation finishes successfully.
class GoogleCloudHealthcareV1beta1FhirRestImportResourcesResponse {
  /// The name of the FHIR store where the resources have been imported, in the
  /// format
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/fhirStores/{fhir_store_id}`.
  core.String fhirStore;

  /// The total number of resources included in the source data.
  core.String inputSize;

  GoogleCloudHealthcareV1beta1FhirRestImportResourcesResponse();

  GoogleCloudHealthcareV1beta1FhirRestImportResourcesResponse.fromJson(
      core.Map _json) {
    if (_json.containsKey("fhirStore")) {
      fhirStore = _json["fhirStore"];
    }
    if (_json.containsKey("inputSize")) {
      inputSize = _json["inputSize"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (fhirStore != null) {
      _json["fhirStore"] = fhirStore;
    }
    if (inputSize != null) {
      _json["inputSize"] = inputSize;
    }
    return _json;
  }
}

/// Represents an HL7v2 store.
class Hl7V2Store {
  /// User-supplied key-value pairs used to organize HL7v2 stores.
  ///
  /// Label keys must be between 1 and 63 characters long, have a UTF-8 encoding
  /// of maximum 128 bytes, and must conform to the
  /// following PCRE regular expression:
  /// \p{Ll}\p{Lo}{0,62}
  ///
  /// Label values are optional, must be between 1 and 63 characters long, have
  /// a UTF-8 encoding of maximum 128 bytes, and must conform to the
  /// following PCRE regular expression: [\p{Ll}\p{Lo}\p{N}_-]{0,63}
  ///
  /// No more than 64 labels can be associated with a given store.
  core.Map<core.String, core.String> labels;

  /// Output only. Resource name of the HL7v2 store, of the form
  /// `projects/{project_id}/datasets/{dataset_id}/hl7V2Stores/{hl7v2_store_id}`.
  core.String name;

  /// The notification destination all messages (both Ingest & Create) are
  /// published on. Only the message name is sent as part of the notification.
  /// If
  /// this is unset, no notifications will be sent. Supplied by the client.
  NotificationConfig notificationConfig;

  /// The configuration for the parser. It determines how the server parses the
  /// messages.
  ParserConfig parserConfig;

  Hl7V2Store();

  Hl7V2Store.fromJson(core.Map _json) {
    if (_json.containsKey("labels")) {
      labels = (_json["labels"] as core.Map).cast<core.String, core.String>();
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("notificationConfig")) {
      notificationConfig =
          new NotificationConfig.fromJson(_json["notificationConfig"]);
    }
    if (_json.containsKey("parserConfig")) {
      parserConfig = new ParserConfig.fromJson(_json["parserConfig"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (labels != null) {
      _json["labels"] = labels;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (notificationConfig != null) {
      _json["notificationConfig"] = (notificationConfig).toJson();
    }
    if (parserConfig != null) {
      _json["parserConfig"] = (parserConfig).toJson();
    }
    return _json;
  }
}

/// Message that represents an arbitrary HTTP body. It should only be used for
/// payload formats that can't be represented as JSON, such as raw binary or
/// an HTML page.
///
///
/// This message can be used both in streaming and non-streaming API methods in
/// the request as well as the response.
///
/// It can be used as a top-level request field, which is convenient if one
/// wants to extract parameters from either the URL or HTTP template into the
/// request fields and also want access to the raw HTTP body.
///
/// Example:
///
///     message GetResourceRequest {
///       // A unique request id.
///       string request_id = 1;
///
///       // The raw HTTP body is bound to this field.
///       google.api.HttpBody http_body = 2;
///     }
///
///     service ResourceService {
///       rpc GetResource(GetResourceRequest) returns (google.api.HttpBody);
///       rpc UpdateResource(google.api.HttpBody) returns
///       (google.protobuf.Empty);
///     }
///
/// Example with streaming methods:
///
///     service CaldavService {
///       rpc GetCalendar(stream google.api.HttpBody)
///         returns (stream google.api.HttpBody);
///       rpc UpdateCalendar(stream google.api.HttpBody)
///         returns (stream google.api.HttpBody);
///     }
///
/// Use of this type only changes how the request and response bodies are
/// handled, all other features will continue to work unchanged.
class HttpBody {
  /// The HTTP Content-Type header value specifying the content type of the
  /// body.
  core.String contentType;

  /// The HTTP request/response body as raw binary.
  core.String data;
  core.List<core.int> get dataAsBytes {
    return convert.base64.decode(data);
  }

  set dataAsBytes(core.List<core.int> _bytes) {
    data =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  /// Application specific response metadata. Must be set in the first response
  /// for streaming APIs.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Map<core.String, core.Object>> extensions;

  HttpBody();

  HttpBody.fromJson(core.Map _json) {
    if (_json.containsKey("contentType")) {
      contentType = _json["contentType"];
    }
    if (_json.containsKey("data")) {
      data = _json["data"];
    }
    if (_json.containsKey("extensions")) {
      extensions = (_json["extensions"] as core.List)
          .map<core.Map<core.String, core.Object>>(
              (value) => (value as core.Map).cast<core.String, core.Object>())
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (contentType != null) {
      _json["contentType"] = contentType;
    }
    if (data != null) {
      _json["data"] = data;
    }
    if (extensions != null) {
      _json["extensions"] = extensions;
    }
    return _json;
  }
}

/// Specifies how de-identification of image pixel should be handled.
class ImageConfig {
  /// Determines how to redact text from image.
  /// Possible string values are:
  /// - "TEXT_REDACTION_MODE_UNSPECIFIED" : No text redaction specified. Same as
  /// REDACT_NO_TEXT.
  /// - "REDACT_ALL_TEXT" : Redact all text.
  /// - "REDACT_SENSITIVE_TEXT" : Redact sensitive text.
  /// - "REDACT_NO_TEXT" : Do not redact text.
  core.String textRedactionMode;

  ImageConfig();

  ImageConfig.fromJson(core.Map _json) {
    if (_json.containsKey("textRedactionMode")) {
      textRedactionMode = _json["textRedactionMode"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (textRedactionMode != null) {
      _json["textRedactionMode"] = textRedactionMode;
    }
    return _json;
  }
}

/// Returns the errors encountered during DICOM store import.
class ImportDicomDataErrorDetails {
  /// Deprecated. Use only for debugging purposes.
  ///
  /// Contains sample errors encountered in imports of individual resources
  /// (for example, a Cloud Storage object).
  core.List<ErrorDetail> sampleErrors;

  ImportDicomDataErrorDetails();

  ImportDicomDataErrorDetails.fromJson(core.Map _json) {
    if (_json.containsKey("sampleErrors")) {
      sampleErrors = (_json["sampleErrors"] as core.List)
          .map<ErrorDetail>((value) => new ErrorDetail.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (sampleErrors != null) {
      _json["sampleErrors"] =
          sampleErrors.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Imports data into the specified DICOM store.
/// Returns an error if any of the files to import are not DICOM files. This
/// API will accept duplicate DICOM instances, by simply ignoring the newly
/// pushed instance (it will not overwrite).
class ImportDicomDataRequest {
  /// Cloud Storage source data location and import configuration.
  ///
  /// The Cloud Storage location requires the `roles/storage.objectViewer`
  /// Cloud IAM role.
  GoogleCloudHealthcareV1beta1DicomGcsSource gcsSource;

  ImportDicomDataRequest();

  ImportDicomDataRequest.fromJson(core.Map _json) {
    if (_json.containsKey("gcsSource")) {
      gcsSource = new GoogleCloudHealthcareV1beta1DicomGcsSource.fromJson(
          _json["gcsSource"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (gcsSource != null) {
      _json["gcsSource"] = (gcsSource).toJson();
    }
    return _json;
  }
}

/// Request to import resources.
class ImportResourcesRequest {
  /// The content structure in the source location. If not specified, the server
  /// treats the input source files as BUNDLE.
  /// Possible string values are:
  /// - "CONTENT_STRUCTURE_UNSPECIFIED"
  /// - "BUNDLE" : The source file contains one or more lines of
  /// newline-delimited JSON
  /// (ndjson). Each line is a bundle, which contains one or more resources.
  /// Set the bundle type to `history` to import resource versions.
  /// - "RESOURCE" : The source file contains one or more lines of
  /// newline-delimited JSON
  /// (ndjson). Each line is a single resource.
  core.String contentStructure;

  /// Cloud Storage source data location and import configuration.
  ///
  /// The Cloud Storage location requires the `roles/storage.objectViewer`
  /// Cloud IAM role.
  ///
  /// Each Cloud Storage object should be a text file that contains the format
  /// specified in ContentStructure.
  GoogleCloudHealthcareV1beta1FhirRestGcsSource gcsSource;

  ImportResourcesRequest();

  ImportResourcesRequest.fromJson(core.Map _json) {
    if (_json.containsKey("contentStructure")) {
      contentStructure = _json["contentStructure"];
    }
    if (_json.containsKey("gcsSource")) {
      gcsSource = new GoogleCloudHealthcareV1beta1FhirRestGcsSource.fromJson(
          _json["gcsSource"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (contentStructure != null) {
      _json["contentStructure"] = contentStructure;
    }
    if (gcsSource != null) {
      _json["gcsSource"] = (gcsSource).toJson();
    }
    return _json;
  }
}

/// A transformation to apply to text that is identified as a specific
/// info_type.
class InfoTypeTransformation {
  /// Config for character mask.
  CharacterMaskConfig characterMaskConfig;

  /// Config for crypto hash.
  CryptoHashConfig cryptoHashConfig;

  /// Config for date shift.
  DateShiftConfig dateShiftConfig;

  /// InfoTypes to apply this transformation to. If this is not specified, the
  /// transformation applies to any info_type.
  core.List<core.String> infoTypes;

  /// Config for text redaction.
  RedactConfig redactConfig;

  /// Config for replace with InfoType.
  ReplaceWithInfoTypeConfig replaceWithInfoTypeConfig;

  InfoTypeTransformation();

  InfoTypeTransformation.fromJson(core.Map _json) {
    if (_json.containsKey("characterMaskConfig")) {
      characterMaskConfig =
          new CharacterMaskConfig.fromJson(_json["characterMaskConfig"]);
    }
    if (_json.containsKey("cryptoHashConfig")) {
      cryptoHashConfig =
          new CryptoHashConfig.fromJson(_json["cryptoHashConfig"]);
    }
    if (_json.containsKey("dateShiftConfig")) {
      dateShiftConfig = new DateShiftConfig.fromJson(_json["dateShiftConfig"]);
    }
    if (_json.containsKey("infoTypes")) {
      infoTypes = (_json["infoTypes"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("redactConfig")) {
      redactConfig = new RedactConfig.fromJson(_json["redactConfig"]);
    }
    if (_json.containsKey("replaceWithInfoTypeConfig")) {
      replaceWithInfoTypeConfig = new ReplaceWithInfoTypeConfig.fromJson(
          _json["replaceWithInfoTypeConfig"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (characterMaskConfig != null) {
      _json["characterMaskConfig"] = (characterMaskConfig).toJson();
    }
    if (cryptoHashConfig != null) {
      _json["cryptoHashConfig"] = (cryptoHashConfig).toJson();
    }
    if (dateShiftConfig != null) {
      _json["dateShiftConfig"] = (dateShiftConfig).toJson();
    }
    if (infoTypes != null) {
      _json["infoTypes"] = infoTypes;
    }
    if (redactConfig != null) {
      _json["redactConfig"] = (redactConfig).toJson();
    }
    if (replaceWithInfoTypeConfig != null) {
      _json["replaceWithInfoTypeConfig"] = (replaceWithInfoTypeConfig).toJson();
    }
    return _json;
  }
}

/// Ingests a message into the specified HL7v2 store.
class IngestMessageRequest {
  /// HL7v2 message to ingest.
  Message message;

  IngestMessageRequest();

  IngestMessageRequest.fromJson(core.Map _json) {
    if (_json.containsKey("message")) {
      message = new Message.fromJson(_json["message"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (message != null) {
      _json["message"] = (message).toJson();
    }
    return _json;
  }
}

/// Acknowledges that a message has been ingested into the specified
/// HL7v2 store.
class IngestMessageResponse {
  /// HL7v2 ACK message.
  core.String hl7Ack;
  core.List<core.int> get hl7AckAsBytes {
    return convert.base64.decode(hl7Ack);
  }

  set hl7AckAsBytes(core.List<core.int> _bytes) {
    hl7Ack =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  /// Created message resource.
  Message message;

  IngestMessageResponse();

  IngestMessageResponse.fromJson(core.Map _json) {
    if (_json.containsKey("hl7Ack")) {
      hl7Ack = _json["hl7Ack"];
    }
    if (_json.containsKey("message")) {
      message = new Message.fromJson(_json["message"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (hl7Ack != null) {
      _json["hl7Ack"] = hl7Ack;
    }
    if (message != null) {
      _json["message"] = (message).toJson();
    }
    return _json;
  }
}

/// Lists the available datasets.
class ListDatasetsResponse {
  /// The first page of datasets.
  core.List<Dataset> datasets;

  /// Token to retrieve the next page of results, or empty if there are no
  /// more results in the list.
  core.String nextPageToken;

  ListDatasetsResponse();

  ListDatasetsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("datasets")) {
      datasets = (_json["datasets"] as core.List)
          .map<Dataset>((value) => new Dataset.fromJson(value))
          .toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (datasets != null) {
      _json["datasets"] = datasets.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/// Lists the DICOM stores in the given dataset.
class ListDicomStoresResponse {
  /// The returned DICOM stores. Won't be more DICOM stores than the value of
  /// page_size in the request.
  core.List<DicomStore> dicomStores;

  /// Token to retrieve the next page of results or empty if there are no more
  /// results in the list.
  core.String nextPageToken;

  ListDicomStoresResponse();

  ListDicomStoresResponse.fromJson(core.Map _json) {
    if (_json.containsKey("dicomStores")) {
      dicomStores = (_json["dicomStores"] as core.List)
          .map<DicomStore>((value) => new DicomStore.fromJson(value))
          .toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (dicomStores != null) {
      _json["dicomStores"] =
          dicomStores.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/// Lists the FHIR stores in the given dataset.
class ListFhirStoresResponse {
  /// The returned FHIR stores. Won't be more FHIR stores than the value of
  /// page_size in the request.
  core.List<FhirStore> fhirStores;

  /// Token to retrieve the next page of results or empty if there are no more
  /// results in the list.
  core.String nextPageToken;

  ListFhirStoresResponse();

  ListFhirStoresResponse.fromJson(core.Map _json) {
    if (_json.containsKey("fhirStores")) {
      fhirStores = (_json["fhirStores"] as core.List)
          .map<FhirStore>((value) => new FhirStore.fromJson(value))
          .toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (fhirStores != null) {
      _json["fhirStores"] =
          fhirStores.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/// Lists the HL7v2 stores in the given dataset.
class ListHl7V2StoresResponse {
  /// The returned HL7v2 stores. Won't be more HL7v2 stores than the value of
  /// page_size in the request.
  core.List<Hl7V2Store> hl7V2Stores;

  /// Token to retrieve the next page of results or empty if there are no more
  /// results in the list.
  core.String nextPageToken;

  ListHl7V2StoresResponse();

  ListHl7V2StoresResponse.fromJson(core.Map _json) {
    if (_json.containsKey("hl7V2Stores")) {
      hl7V2Stores = (_json["hl7V2Stores"] as core.List)
          .map<Hl7V2Store>((value) => new Hl7V2Store.fromJson(value))
          .toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (hl7V2Stores != null) {
      _json["hl7V2Stores"] =
          hl7V2Stores.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/// The response message for Locations.ListLocations.
class ListLocationsResponse {
  /// A list of locations that matches the specified filter in the request.
  core.List<Location> locations;

  /// The standard List next-page token.
  core.String nextPageToken;

  ListLocationsResponse();

  ListLocationsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("locations")) {
      locations = (_json["locations"] as core.List)
          .map<Location>((value) => new Location.fromJson(value))
          .toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (locations != null) {
      _json["locations"] = locations.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/// Lists the messages in the specified HL7v2 store.
class ListMessagesResponse {
  /// The returned message names. Won't be more values than the value of
  /// page_size in the request.
  core.List<core.String> messages;

  /// Token to retrieve the next page of results or empty if there are no more
  /// results in the list.
  core.String nextPageToken;

  ListMessagesResponse();

  ListMessagesResponse.fromJson(core.Map _json) {
    if (_json.containsKey("messages")) {
      messages = (_json["messages"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (messages != null) {
      _json["messages"] = messages;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/// The response message for Operations.ListOperations.
class ListOperationsResponse {
  /// The standard List next-page token.
  core.String nextPageToken;

  /// A list of operations that matches the specified filter in the request.
  core.List<Operation> operations;

  ListOperationsResponse();

  ListOperationsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("operations")) {
      operations = (_json["operations"] as core.List)
          .map<Operation>((value) => new Operation.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (operations != null) {
      _json["operations"] =
          operations.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// A resource that represents Google Cloud Platform location.
class Location {
  /// The friendly name for this location, typically a nearby city name.
  /// For example, "Tokyo".
  core.String displayName;

  /// Cross-service attributes for the location. For example
  ///
  ///     {"cloud.googleapis.com/region": "us-east1"}
  core.Map<core.String, core.String> labels;

  /// The canonical id for this location. For example: `"us-east1"`.
  core.String locationId;

  /// Service-specific metadata. For example the available capacity at the given
  /// location.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> metadata;

  /// Resource name for the location, which may vary between implementations.
  /// For example: `"projects/example-project/locations/us-east1"`
  core.String name;

  Location();

  Location.fromJson(core.Map _json) {
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("labels")) {
      labels = (_json["labels"] as core.Map).cast<core.String, core.String>();
    }
    if (_json.containsKey("locationId")) {
      locationId = _json["locationId"];
    }
    if (_json.containsKey("metadata")) {
      metadata =
          (_json["metadata"] as core.Map).cast<core.String, core.Object>();
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    if (labels != null) {
      _json["labels"] = labels;
    }
    if (locationId != null) {
      _json["locationId"] = locationId;
    }
    if (metadata != null) {
      _json["metadata"] = metadata;
    }
    if (name != null) {
      _json["name"] = name;
    }
    return _json;
  }
}

/// A complete HL7v2 message.
/// See http://www.hl7.org/implement/standards/index.cfm?ref=common for details
/// on the standard.
class Message {
  /// Output only. The datetime when the message was created. Set by the server.
  core.String createTime;

  /// Raw message bytes.
  core.String data;
  core.List<core.int> get dataAsBytes {
    return convert.base64.decode(data);
  }

  set dataAsBytes(core.List<core.int> _bytes) {
    data =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  /// User-supplied key-value pairs used to organize HL7v2 stores.
  ///
  /// Label keys must be between 1 and 63 characters long, have a UTF-8 encoding
  /// of maximum 128 bytes, and must conform to the
  /// following PCRE regular expression:
  /// \p{Ll}\p{Lo}{0,62}
  ///
  /// Label values are optional, must be between 1 and 63 characters long, have
  /// a UTF-8 encoding of maximum 128 bytes, and must conform to the
  /// following PCRE regular expression: [\p{Ll}\p{Lo}\p{N}_-]{0,63}
  ///
  /// No more than 64 labels can be associated with a given store.
  core.Map<core.String, core.String> labels;

  /// The message type and trigger event for this message. MSH-9.
  core.String messageType;

  /// Resource name of the Message, of the form
  /// `projects/{project_id}/datasets/{dataset_id}/hl7V2Stores/{hl7_v2_store_id}/messages/{message_id}`.
  /// Assigned by the server.
  core.String name;

  /// Output only. The parsed version of the raw message data.
  ParsedData parsedData;

  /// All patient IDs listed in the PID-2, PID-3, and PID-4 segments of this
  /// message.
  core.List<PatientId> patientIds;

  /// The hospital that this message came from. MSH-4.
  core.String sendFacility;

  /// The datetime the sending application sent this message. MSH-7.
  core.String sendTime;

  Message();

  Message.fromJson(core.Map _json) {
    if (_json.containsKey("createTime")) {
      createTime = _json["createTime"];
    }
    if (_json.containsKey("data")) {
      data = _json["data"];
    }
    if (_json.containsKey("labels")) {
      labels = (_json["labels"] as core.Map).cast<core.String, core.String>();
    }
    if (_json.containsKey("messageType")) {
      messageType = _json["messageType"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("parsedData")) {
      parsedData = new ParsedData.fromJson(_json["parsedData"]);
    }
    if (_json.containsKey("patientIds")) {
      patientIds = (_json["patientIds"] as core.List)
          .map<PatientId>((value) => new PatientId.fromJson(value))
          .toList();
    }
    if (_json.containsKey("sendFacility")) {
      sendFacility = _json["sendFacility"];
    }
    if (_json.containsKey("sendTime")) {
      sendTime = _json["sendTime"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (createTime != null) {
      _json["createTime"] = createTime;
    }
    if (data != null) {
      _json["data"] = data;
    }
    if (labels != null) {
      _json["labels"] = labels;
    }
    if (messageType != null) {
      _json["messageType"] = messageType;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (parsedData != null) {
      _json["parsedData"] = (parsedData).toJson();
    }
    if (patientIds != null) {
      _json["patientIds"] =
          patientIds.map((value) => (value).toJson()).toList();
    }
    if (sendFacility != null) {
      _json["sendFacility"] = sendFacility;
    }
    if (sendTime != null) {
      _json["sendTime"] = sendTime;
    }
    return _json;
  }
}

/// Specifies where notifications should be sent upon changes to a data store.
class NotificationConfig {
  /// The [Cloud Pub/Sub](https://cloud.google.com/pubsub/docs/) topic that
  /// notifications of changes are published on. Supplied by the client.
  /// PubsubMessage.Data will contain the resource name.
  /// PubsubMessage.MessageId is the ID of this message. It is guaranteed to be
  /// unique within the topic.
  /// PubsubMessage.PublishTime is the time at which the message was published.
  /// Notifications are only sent if the topic is
  /// non-empty. [Topic
  /// names](https://cloud.google.com/pubsub/docs/overview#names) must be scoped
  /// to a project. cloud-healthcare@system.gserviceaccount.com must have
  /// publisher permissions on the given Cloud Pub/Sub topic. Not having
  /// adequate
  /// permissions will cause the calls that send notifications to fail.
  core.String pubsubTopic;

  NotificationConfig();

  NotificationConfig.fromJson(core.Map _json) {
    if (_json.containsKey("pubsubTopic")) {
      pubsubTopic = _json["pubsubTopic"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (pubsubTopic != null) {
      _json["pubsubTopic"] = pubsubTopic;
    }
    return _json;
  }
}

/// This resource represents a long-running operation that is the result of a
/// network API call.
class Operation {
  /// If the value is `false`, it means the operation is still in progress.
  /// If `true`, the operation is completed, and either `error` or `response` is
  /// available.
  core.bool done;

  /// The error result of the operation in case of failure or cancellation.
  Status error;

  /// Service-specific metadata associated with the operation.  It typically
  /// contains progress information and common metadata such as create time.
  /// Some services might not provide such metadata.  Any method that returns a
  /// long-running operation should document the metadata type, if any.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> metadata;

  /// The server-assigned name, which is only unique within the same service
  /// that
  /// originally returns it. If you use the default HTTP mapping, the
  /// `name` should be a resource name ending with `operations/{unique_id}`.
  core.String name;

  /// The normal response of the operation in case of success.  If the original
  /// method returns no data on success, such as `Delete`, the response is
  /// `google.protobuf.Empty`.  If the original method is standard
  /// `Get`/`Create`/`Update`, the response should be the resource.  For other
  /// methods, the response should have the type `XxxResponse`, where `Xxx`
  /// is the original method name.  For example, if the original method name
  /// is `TakeSnapshot()`, the inferred response type is
  /// `TakeSnapshotResponse`.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> response;

  Operation();

  Operation.fromJson(core.Map _json) {
    if (_json.containsKey("done")) {
      done = _json["done"];
    }
    if (_json.containsKey("error")) {
      error = new Status.fromJson(_json["error"]);
    }
    if (_json.containsKey("metadata")) {
      metadata =
          (_json["metadata"] as core.Map).cast<core.String, core.Object>();
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("response")) {
      response =
          (_json["response"] as core.Map).cast<core.String, core.Object>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (done != null) {
      _json["done"] = done;
    }
    if (error != null) {
      _json["error"] = (error).toJson();
    }
    if (metadata != null) {
      _json["metadata"] = metadata;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (response != null) {
      _json["response"] = response;
    }
    return _json;
  }
}

/// OperationMetadata provides information about the operation execution.
/// Returned in the long-running operation's metadata field.
class OperationMetadata {
  /// The name of the API method that initiated the operation.
  core.String apiMethodName;
  ProgressCounter counter;

  /// The time at which the operation was created by the API.
  core.String createTime;

  /// The time at which execution was completed.
  core.String endTime;

  OperationMetadata();

  OperationMetadata.fromJson(core.Map _json) {
    if (_json.containsKey("apiMethodName")) {
      apiMethodName = _json["apiMethodName"];
    }
    if (_json.containsKey("counter")) {
      counter = new ProgressCounter.fromJson(_json["counter"]);
    }
    if (_json.containsKey("createTime")) {
      createTime = _json["createTime"];
    }
    if (_json.containsKey("endTime")) {
      endTime = _json["endTime"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (apiMethodName != null) {
      _json["apiMethodName"] = apiMethodName;
    }
    if (counter != null) {
      _json["counter"] = (counter).toJson();
    }
    if (createTime != null) {
      _json["createTime"] = createTime;
    }
    if (endTime != null) {
      _json["endTime"] = endTime;
    }
    return _json;
  }
}

/// The content of a HL7v2 message in a structured format.
class ParsedData {
  core.List<Segment> segments;

  ParsedData();

  ParsedData.fromJson(core.Map _json) {
    if (_json.containsKey("segments")) {
      segments = (_json["segments"] as core.List)
          .map<Segment>((value) => new Segment.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (segments != null) {
      _json["segments"] = segments.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// The configuration for the parser. It determines how the server parses the
/// messages.
class ParserConfig {
  /// Determines whether messages with no header are allowed.
  core.bool allowNullHeader;

  /// Byte(s) to be used as the segment terminator. If this is unset, '\r' will
  /// be used as segment terminator.
  core.String segmentTerminator;
  core.List<core.int> get segmentTerminatorAsBytes {
    return convert.base64.decode(segmentTerminator);
  }

  set segmentTerminatorAsBytes(core.List<core.int> _bytes) {
    segmentTerminator =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  ParserConfig();

  ParserConfig.fromJson(core.Map _json) {
    if (_json.containsKey("allowNullHeader")) {
      allowNullHeader = _json["allowNullHeader"];
    }
    if (_json.containsKey("segmentTerminator")) {
      segmentTerminator = _json["segmentTerminator"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (allowNullHeader != null) {
      _json["allowNullHeader"] = allowNullHeader;
    }
    if (segmentTerminator != null) {
      _json["segmentTerminator"] = segmentTerminator;
    }
    return _json;
  }
}

/// A patient identifier and associated type.
class PatientId {
  /// ID type, e.g. MRN or NHS.
  core.String type;

  /// The patient's unique identifier.
  core.String value;

  PatientId();

  PatientId.fromJson(core.Map _json) {
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (type != null) {
      _json["type"] = type;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}

/// Defines an Identity and Access Management (IAM) policy. It is used to
/// specify access control policies for Cloud Platform resources.
///
///
/// A `Policy` consists of a list of `bindings`. A `binding` binds a list of
/// `members` to a `role`, where the members can be user accounts, Google
/// groups,
/// Google domains, and service accounts. A `role` is a named list of
/// permissions
/// defined by IAM.
///
/// **JSON Example**
///
///     {
///       "bindings": [
///         {
///           "role": "roles/owner",
///           "members": [
///             "user:mike@example.com",
///             "group:admins@example.com",
///             "domain:google.com",
///             "serviceAccount:my-other-app@appspot.gserviceaccount.com"
///           ]
///         },
///         {
///           "role": "roles/viewer",
///           "members": ["user:sean@example.com"]
///         }
///       ]
///     }
///
/// **YAML Example**
///
///     bindings:
///     - members:
///       - user:mike@example.com
///       - group:admins@example.com
///       - domain:google.com
///       - serviceAccount:my-other-app@appspot.gserviceaccount.com
///       role: roles/owner
///     - members:
///       - user:sean@example.com
///       role: roles/viewer
///
///
/// For a description of IAM and its features, see the
/// [IAM developer's guide](https://cloud.google.com/iam/docs).
class Policy {
  /// Specifies cloud audit logging configuration for this policy.
  core.List<AuditConfig> auditConfigs;

  /// Associates a list of `members` to a `role`.
  /// `bindings` with no members will result in an error.
  core.List<Binding> bindings;

  /// `etag` is used for optimistic concurrency control as a way to help
  /// prevent simultaneous updates of a policy from overwriting each other.
  /// It is strongly suggested that systems make use of the `etag` in the
  /// read-modify-write cycle to perform policy updates in order to avoid race
  /// conditions: An `etag` is returned in the response to `getIamPolicy`, and
  /// systems are expected to put that etag in the request to `setIamPolicy` to
  /// ensure that their change will be applied to the same version of the
  /// policy.
  ///
  /// If no `etag` is provided in the call to `setIamPolicy`, then the existing
  /// policy is overwritten blindly.
  core.String etag;
  core.List<core.int> get etagAsBytes {
    return convert.base64.decode(etag);
  }

  set etagAsBytes(core.List<core.int> _bytes) {
    etag =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  /// Deprecated.
  core.int version;

  Policy();

  Policy.fromJson(core.Map _json) {
    if (_json.containsKey("auditConfigs")) {
      auditConfigs = (_json["auditConfigs"] as core.List)
          .map<AuditConfig>((value) => new AuditConfig.fromJson(value))
          .toList();
    }
    if (_json.containsKey("bindings")) {
      bindings = (_json["bindings"] as core.List)
          .map<Binding>((value) => new Binding.fromJson(value))
          .toList();
    }
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("version")) {
      version = _json["version"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (auditConfigs != null) {
      _json["auditConfigs"] =
          auditConfigs.map((value) => (value).toJson()).toList();
    }
    if (bindings != null) {
      _json["bindings"] = bindings.map((value) => (value).toJson()).toList();
    }
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (version != null) {
      _json["version"] = version;
    }
    return _json;
  }
}

/// ProgressCounter provides counters to describe an operation's progress.
class ProgressCounter {
  /// The number of units that failed in the operation.
  core.String failure;

  /// The number of units that are pending in the operation.
  core.String pending;

  /// The number of units that succeeded in the operation.
  core.String success;

  ProgressCounter();

  ProgressCounter.fromJson(core.Map _json) {
    if (_json.containsKey("failure")) {
      failure = _json["failure"];
    }
    if (_json.containsKey("pending")) {
      pending = _json["pending"];
    }
    if (_json.containsKey("success")) {
      success = _json["success"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (failure != null) {
      _json["failure"] = failure;
    }
    if (pending != null) {
      _json["pending"] = pending;
    }
    if (success != null) {
      _json["success"] = success;
    }
    return _json;
  }
}

/// Define how to redact sensitive values. Default behaviour is erase,
/// e.g. "My name is Jake." becomes "My name is ."
class RedactConfig {
  RedactConfig();

  RedactConfig.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    return _json;
  }
}

/// When using the INSPECT_AND_TRANSFORM action, each match is replaced with
/// the name of the info_type. For example, "My name is Jake" becomes "My name
/// is
/// [PERSON_NAME]." The TRANSFORM action is equivalent to redacting.
class ReplaceWithInfoTypeConfig {
  ReplaceWithInfoTypeConfig();

  ReplaceWithInfoTypeConfig.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    return _json;
  }
}

/// Configuration for the FHIR BigQuery schema. Determines how the server
/// generates the schema.
class SchemaConfig {
  /// The depth for all recursive structures in the output analytics
  /// schema. For example, `concept` in the CodeSystem resource is a recursive
  /// structure; when the depth is 2, the CodeSystem table will have a column
  /// called `concept.concept` but not `concept.concept.concept`. If not
  /// specified or set to 0, the server will use the default value 2.
  core.String recursiveStructureDepth;

  /// Specifies the output schema type. If unspecified, the default is
  /// `LOSSLESS`.
  /// Possible string values are:
  /// - "SCHEMA_TYPE_UNSPECIFIED" : No schema type specified. Same as
  /// `LOSSLESS`.
  /// - "LOSSLESS" : A data-driven schema generated from the fields present in
  /// the FHIR data
  /// being exported, with no additional simplification.
  /// - "ANALYTICS" : Analytics schema defined by the FHIR community.
  /// See https://github.com/FHIR/sql-on-fhir/blob/master/sql-on-fhir.md.
  core.String schemaType;

  SchemaConfig();

  SchemaConfig.fromJson(core.Map _json) {
    if (_json.containsKey("recursiveStructureDepth")) {
      recursiveStructureDepth = _json["recursiveStructureDepth"];
    }
    if (_json.containsKey("schemaType")) {
      schemaType = _json["schemaType"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (recursiveStructureDepth != null) {
      _json["recursiveStructureDepth"] = recursiveStructureDepth;
    }
    if (schemaType != null) {
      _json["schemaType"] = schemaType;
    }
    return _json;
  }
}

/// Request to search the resources in the specified FHIR store.
class SearchResourcesRequest {
  /// The FHIR resource type to search, such as Patient or Observation. For a
  /// complete list, see the [FHIR Resource
  /// Index](http://hl7.org/implement/standards/fhir/STU3/resourcelist.html).
  core.String resourceType;

  SearchResourcesRequest();

  SearchResourcesRequest.fromJson(core.Map _json) {
    if (_json.containsKey("resourceType")) {
      resourceType = _json["resourceType"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (resourceType != null) {
      _json["resourceType"] = resourceType;
    }
    return _json;
  }
}

/// A segment in a structured format.
class Segment {
  /// A mapping from the positional location to the value.
  /// The key string uses zero-based indexes separated by dots to identify
  /// Fields, components and sub-components. A bracket notation is also used to
  /// identify different instances of a repeated field.
  /// Regex for key: (\d+)(\[\d+\])?(.\d+)?(.\d+)?
  ///
  /// Examples of (key, value) pairs:
  /// - (0.1, "foo"): Component 1 of Field 0 has the value "foo".
  /// - (1.1.2, "bar"): Sub-component 2 of Component 1 of field 1 has the value
  /// "bar".
  /// - (1[2].1, "baz"): Component 1 of Instance 2 of Field 1, which is
  /// repeated,
  /// has the value "baz".
  core.Map<core.String, core.String> fields;

  /// A string that indicates the type of segment, e.g., EVN, PID.
  core.String segmentId;

  /// Set ID for segments that can be in a set. This can be empty if it is
  /// missing or it is not applicable.
  core.String setId;

  Segment();

  Segment.fromJson(core.Map _json) {
    if (_json.containsKey("fields")) {
      fields = (_json["fields"] as core.Map).cast<core.String, core.String>();
    }
    if (_json.containsKey("segmentId")) {
      segmentId = _json["segmentId"];
    }
    if (_json.containsKey("setId")) {
      setId = _json["setId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (fields != null) {
      _json["fields"] = fields;
    }
    if (segmentId != null) {
      _json["segmentId"] = segmentId;
    }
    if (setId != null) {
      _json["setId"] = setId;
    }
    return _json;
  }
}

/// Request message for `SetIamPolicy` method.
class SetIamPolicyRequest {
  /// REQUIRED: The complete policy to be applied to the `resource`. The size of
  /// the policy is limited to a few 10s of KB. An empty policy is a
  /// valid policy but certain Cloud Platform services (such as Projects)
  /// might reject them.
  Policy policy;

  /// OPTIONAL: A FieldMask specifying which fields of the policy to modify.
  /// Only
  /// the fields in the mask will be modified. If no mask is provided, the
  /// following default mask is used:
  /// paths: "bindings, etag"
  /// This field is only used by Cloud IAM.
  core.String updateMask;

  SetIamPolicyRequest();

  SetIamPolicyRequest.fromJson(core.Map _json) {
    if (_json.containsKey("policy")) {
      policy = new Policy.fromJson(_json["policy"]);
    }
    if (_json.containsKey("updateMask")) {
      updateMask = _json["updateMask"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (policy != null) {
      _json["policy"] = (policy).toJson();
    }
    if (updateMask != null) {
      _json["updateMask"] = updateMask;
    }
    return _json;
  }
}

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs. It is
/// used by [gRPC](https://github.com/grpc). Each `Status` message contains
/// three pieces of data: error code, error message, and error details.
///
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
class Status {
  /// The status code, which should be an enum value of google.rpc.Code.
  core.int code;

  /// A list of messages that carry the error details.  There is a common set of
  /// message types for APIs to use.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Map<core.String, core.Object>> details;

  /// A developer-facing error message, which should be in English. Any
  /// user-facing error message should be localized and sent in the
  /// google.rpc.Status.details field, or localized by the client.
  core.String message;

  Status();

  Status.fromJson(core.Map _json) {
    if (_json.containsKey("code")) {
      code = _json["code"];
    }
    if (_json.containsKey("details")) {
      details = (_json["details"] as core.List)
          .map<core.Map<core.String, core.Object>>(
              (value) => (value as core.Map).cast<core.String, core.Object>())
          .toList();
    }
    if (_json.containsKey("message")) {
      message = _json["message"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (code != null) {
      _json["code"] = code;
    }
    if (details != null) {
      _json["details"] = details;
    }
    if (message != null) {
      _json["message"] = message;
    }
    return _json;
  }
}

/// List of tags to be filtered.
class TagFilterList {
  /// Tags to be filtered. Tags must be DICOM Data Elements, File Meta
  /// Elements, or Directory Structuring Elements, as defined at:
  /// http://dicom.nema.org/medical/dicom/current/output/html/part06.html#table_6-1,.
  /// They may be provided by "Keyword" or "Tag". For example "PatientID",
  /// "00100010".
  core.List<core.String> tags;

  TagFilterList();

  TagFilterList.fromJson(core.Map _json) {
    if (_json.containsKey("tags")) {
      tags = (_json["tags"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (tags != null) {
      _json["tags"] = tags;
    }
    return _json;
  }
}

/// Request message for `TestIamPermissions` method.
class TestIamPermissionsRequest {
  /// The set of permissions to check for the `resource`. Permissions with
  /// wildcards (such as '*' or 'storage.*') are not allowed. For more
  /// information see
  /// [IAM Overview](https://cloud.google.com/iam/docs/overview#permissions).
  core.List<core.String> permissions;

  TestIamPermissionsRequest();

  TestIamPermissionsRequest.fromJson(core.Map _json) {
    if (_json.containsKey("permissions")) {
      permissions = (_json["permissions"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (permissions != null) {
      _json["permissions"] = permissions;
    }
    return _json;
  }
}

/// Response message for `TestIamPermissions` method.
class TestIamPermissionsResponse {
  /// A subset of `TestPermissionsRequest.permissions` that the caller is
  /// allowed.
  core.List<core.String> permissions;

  TestIamPermissionsResponse();

  TestIamPermissionsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("permissions")) {
      permissions = (_json["permissions"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (permissions != null) {
      _json["permissions"] = permissions;
    }
    return _json;
  }
}

class TextConfig {
  /// The transformations to apply to the detected data.
  core.List<InfoTypeTransformation> transformations;

  TextConfig();

  TextConfig.fromJson(core.Map _json) {
    if (_json.containsKey("transformations")) {
      transformations = (_json["transformations"] as core.List)
          .map<InfoTypeTransformation>(
              (value) => new InfoTypeTransformation.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (transformations != null) {
      _json["transformations"] =
          transformations.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}
