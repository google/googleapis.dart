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
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations

/// Cloud Healthcare API - v1
///
/// Manage, store, and access healthcare data in Google Cloud Platform.
///
/// For more information, see <https://cloud.google.com/healthcare>
///
/// Create an instance of [CloudHealthcareApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsDatasetsResource]
///       - [ProjectsLocationsDatasetsConsentStoresResource]
///       - [ProjectsLocationsDatasetsDicomStoresResource]
///         - [ProjectsLocationsDatasetsDicomStoresStudiesResource]
///           - [ProjectsLocationsDatasetsDicomStoresStudiesSeriesResource]
/// - [ProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesResource]
/// - [ProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesFramesResource]
///       - [ProjectsLocationsDatasetsFhirStoresResource]
///         - [ProjectsLocationsDatasetsFhirStoresFhirResource]
///       - [ProjectsLocationsDatasetsHl7V2StoresResource]
///         - [ProjectsLocationsDatasetsHl7V2StoresMessagesResource]
///       - [ProjectsLocationsDatasetsOperationsResource]
library healthcare.v1;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// Manage, store, and access healthcare data in Google Cloud Platform.
class CloudHealthcareApi {
  /// View and manage your data across Google Cloud Platform services
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  CloudHealthcareApi(http.Client client,
      {core.String rootUrl = 'https://healthcare.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, userAgent);
}

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsResource get locations =>
      ProjectsLocationsResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsLocationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsDatasetsResource get datasets =>
      ProjectsLocationsDatasetsResource(_requester);

  ProjectsLocationsResource(commons.ApiRequester client) : _requester = client;

  /// Gets information about a location.
  ///
  /// Request parameters:
  ///
  /// [name] - Resource name for the location.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
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
  async.Future<Location> get(
    core.String name, {
    core.String $fields,
  }) async {
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Location.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists information about the supported locations for this service.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource that owns the locations collection, if applicable.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [filter] - The standard list filter.
  ///
  /// [pageSize] - The standard list page size.
  ///
  /// [pageToken] - The standard list page token.
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
  async.Future<ListLocationsResponse> list(
    core.String name, {
    core.String filter,
    core.int pageSize,
    core.String pageToken,
    core.String $fields,
  }) async {
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/' + commons.Escaper.ecapeVariableReserved('$name') + '/locations';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListLocationsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsDatasetsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsDatasetsConsentStoresResource get consentStores =>
      ProjectsLocationsDatasetsConsentStoresResource(_requester);
  ProjectsLocationsDatasetsDicomStoresResource get dicomStores =>
      ProjectsLocationsDatasetsDicomStoresResource(_requester);
  ProjectsLocationsDatasetsFhirStoresResource get fhirStores =>
      ProjectsLocationsDatasetsFhirStoresResource(_requester);
  ProjectsLocationsDatasetsHl7V2StoresResource get hl7V2Stores =>
      ProjectsLocationsDatasetsHl7V2StoresResource(_requester);
  ProjectsLocationsDatasetsOperationsResource get operations =>
      ProjectsLocationsDatasetsOperationsResource(_requester);

  ProjectsLocationsDatasetsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new health dataset.
  ///
  /// Results are returned through the Operation interface which returns either
  /// an `Operation.response` which contains a Dataset or `Operation.error`. The
  /// metadata field type is OperationMetadata.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the project where the server creates the dataset.
  /// For example, `projects/{project_id}/locations/{location_id}`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [datasetId] - The ID of the dataset that is being created. The string must
  /// match the following regex: `[\p{L}\p{N}_\-\.]{1,256}`.
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
  async.Future<Operation> create(
    Dataset request,
    core.String parent, {
    core.String datasetId,
    core.String $fields,
  }) async {
    final _body =
        request == null ? null : convert.json.encode(request.toJson());
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if (datasetId != null) 'datasetId': [datasetId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/' + commons.Escaper.ecapeVariableReserved('$parent') + '/datasets';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Creates a new dataset containing de-identified data from the source
  /// dataset.
  ///
  /// The metadata field type is OperationMetadata. If the request is
  /// successful, the response field type is DeidentifySummary. If errors occur,
  /// error is set. The LRO result may still be successful if de-identification
  /// fails for some DICOM instances. The new de-identified dataset will not
  /// contain these failed resources. Failed resource totals are tracked in
  /// Operation.metadata. Error details are also logged to Cloud Logging. For
  /// more information, see \[Viewing logs\](/healthcare/docs/how-tos/logging).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [sourceDataset] - Source dataset resource name. For example,
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+$`.
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
    DeidentifyDatasetRequest request,
    core.String sourceDataset, {
    core.String $fields,
  }) async {
    final _body =
        request == null ? null : convert.json.encode(request.toJson());
    if (sourceDataset == null) {
      throw core.ArgumentError('Parameter sourceDataset is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$sourceDataset') +
        ':deidentify';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the specified health dataset and all data contained in the
  /// dataset.
  ///
  /// Deleting a dataset does not affect the sources from which the dataset was
  /// imported (if any).
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the dataset to delete. For example,
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+$`.
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
  }) async {
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Empty.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Gets any metadata associated with a dataset.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the dataset to read. For example,
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+$`.
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
  async.Future<Dataset> get(
    core.String name, {
    core.String $fields,
  }) async {
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Dataset.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Gets the access control policy for a resource.
  ///
  /// Returns an empty policy if the resource exists and does not have a policy
  /// set.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+$`.
  ///
  /// [options_requestedPolicyVersion] - Optional. The policy format version to
  /// be returned. Valid values are 0, 1, and 3. Requests specifying an invalid
  /// value will be rejected. Requests for policies with any conditional
  /// bindings must specify version 3. Policies without any conditional bindings
  /// may specify any valid value or leave the field unset. To learn which
  /// resources support conditions in their IAM policies, see the
  /// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
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
  async.Future<Policy> getIamPolicy(
    core.String resource, {
    core.int options_requestedPolicyVersion,
    core.String $fields,
  }) async {
    if (resource == null) {
      throw core.ArgumentError('Parameter resource is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if (options_requestedPolicyVersion != null)
        'options.requestedPolicyVersion': ['${options_requestedPolicyVersion}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':getIamPolicy';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Policy.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists the health datasets in the current project.
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the project whose datasets should be listed. For
  /// example, `projects/{project_id}/locations/{location_id}`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of items to return. If not specified, 100
  /// is used. May not be larger than 1000.
  ///
  /// [pageToken] - The next_page_token value returned from a previous List
  /// request, if any.
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
  async.Future<ListDatasetsResponse> list(
    core.String parent, {
    core.int pageSize,
    core.String pageToken,
    core.String $fields,
  }) async {
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/' + commons.Escaper.ecapeVariableReserved('$parent') + '/datasets';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListDatasetsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates dataset metadata.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Resource name of the dataset, of the form
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+$`.
  ///
  /// [updateMask] - The update mask applies to the resource. For the
  /// `FieldMask` definition, see
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
  async.Future<Dataset> patch(
    Dataset request,
    core.String name, {
    core.String updateMask,
    core.String $fields,
  }) async {
    final _body =
        request == null ? null : convert.json.encode(request.toJson());
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return Dataset.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Sets the access control policy on the specified resource.
  ///
  /// Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`,
  /// and `PERMISSION_DENIED` errors.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+$`.
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
    SetIamPolicyRequest request,
    core.String resource, {
    core.String $fields,
  }) async {
    final _body =
        request == null ? null : convert.json.encode(request.toJson());
    if (resource == null) {
      throw core.ArgumentError('Parameter resource is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':setIamPolicy';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Policy.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Returns permissions that a caller has on the specified resource.
  ///
  /// If the resource does not exist, this will return an empty set of
  /// permissions, not a `NOT_FOUND` error. Note: This operation is designed to
  /// be used for building permission-aware UIs and command-line tools, not for
  /// authorization checking. This operation may "fail open" without warning.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+$`.
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
    TestIamPermissionsRequest request,
    core.String resource, {
    core.String $fields,
  }) async {
    final _body =
        request == null ? null : convert.json.encode(request.toJson());
    if (resource == null) {
      throw core.ArgumentError('Parameter resource is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':testIamPermissions';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return TestIamPermissionsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsDatasetsConsentStoresResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsDatasetsConsentStoresResource(commons.ApiRequester client)
      : _requester = client;

  /// Gets the access control policy for a resource.
  ///
  /// Returns an empty policy if the resource exists and does not have a policy
  /// set.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/consentStores/\[^/\]+$`.
  ///
  /// [options_requestedPolicyVersion] - Optional. The policy format version to
  /// be returned. Valid values are 0, 1, and 3. Requests specifying an invalid
  /// value will be rejected. Requests for policies with any conditional
  /// bindings must specify version 3. Policies without any conditional bindings
  /// may specify any valid value or leave the field unset. To learn which
  /// resources support conditions in their IAM policies, see the
  /// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
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
  async.Future<Policy> getIamPolicy(
    core.String resource, {
    core.int options_requestedPolicyVersion,
    core.String $fields,
  }) async {
    if (resource == null) {
      throw core.ArgumentError('Parameter resource is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if (options_requestedPolicyVersion != null)
        'options.requestedPolicyVersion': ['${options_requestedPolicyVersion}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':getIamPolicy';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Policy.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Sets the access control policy on the specified resource.
  ///
  /// Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`,
  /// and `PERMISSION_DENIED` errors.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/consentStores/\[^/\]+$`.
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
    SetIamPolicyRequest request,
    core.String resource, {
    core.String $fields,
  }) async {
    final _body =
        request == null ? null : convert.json.encode(request.toJson());
    if (resource == null) {
      throw core.ArgumentError('Parameter resource is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':setIamPolicy';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Policy.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Returns permissions that a caller has on the specified resource.
  ///
  /// If the resource does not exist, this will return an empty set of
  /// permissions, not a `NOT_FOUND` error. Note: This operation is designed to
  /// be used for building permission-aware UIs and command-line tools, not for
  /// authorization checking. This operation may "fail open" without warning.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/consentStores/\[^/\]+$`.
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
    TestIamPermissionsRequest request,
    core.String resource, {
    core.String $fields,
  }) async {
    final _body =
        request == null ? null : convert.json.encode(request.toJson());
    if (resource == null) {
      throw core.ArgumentError('Parameter resource is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':testIamPermissions';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return TestIamPermissionsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsDatasetsDicomStoresResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsDatasetsDicomStoresStudiesResource get studies =>
      ProjectsLocationsDatasetsDicomStoresStudiesResource(_requester);

  ProjectsLocationsDatasetsDicomStoresResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new DICOM store within the parent dataset.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the dataset this DICOM store belongs to.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+$`.
  ///
  /// [dicomStoreId] - The ID of the DICOM store that is being created. Any
  /// string value up to 256 characters in length.
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
  async.Future<DicomStore> create(
    DicomStore request,
    core.String parent, {
    core.String dicomStoreId,
    core.String $fields,
  }) async {
    final _body =
        request == null ? null : convert.json.encode(request.toJson());
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if (dicomStoreId != null) 'dicomStoreId': [dicomStoreId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/dicomStores';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return DicomStore.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// De-identifies data from the source store and writes it to the destination
  /// store.
  ///
  /// The metadata field type is OperationMetadata. If the request is
  /// successful, the response field type is DeidentifyDicomStoreSummary. If
  /// errors occur, error is set. The LRO result may still be successful if
  /// de-identification fails for some DICOM instances. The output DICOM store
  /// will not contain these failed resources. Failed resource totals are
  /// tracked in Operation.metadata. Error details are also logged to Cloud
  /// Logging (see \[Viewing logs\](/healthcare/docs/how-tos/logging)).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [sourceStore] - Source DICOM store resource name. For example,
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/dicomStores/\[^/\]+$`.
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
    DeidentifyDicomStoreRequest request,
    core.String sourceStore, {
    core.String $fields,
  }) async {
    final _body =
        request == null ? null : convert.json.encode(request.toJson());
    if (sourceStore == null) {
      throw core.ArgumentError('Parameter sourceStore is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$sourceStore') +
        ':deidentify';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the specified DICOM store and removes all images that are
  /// contained within it.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the DICOM store to delete.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/dicomStores/\[^/\]+$`.
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
  }) async {
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Empty.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Exports data to the specified destination by copying it from the DICOM
  /// store.
  ///
  /// Errors are also logged to Cloud Logging. For more information, see
  /// \[Viewing logs\](/healthcare/docs/how-tos/logging). The metadata field
  /// type is OperationMetadata.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The DICOM store resource name from which to export the data. For
  /// example,
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/dicomStores/\[^/\]+$`.
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
    ExportDicomDataRequest request,
    core.String name, {
    core.String $fields,
  }) async {
    final _body =
        request == null ? null : convert.json.encode(request.toJson());
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/' + commons.Escaper.ecapeVariableReserved('$name') + ':export';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Gets the specified DICOM store.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the DICOM store to get.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/dicomStores/\[^/\]+$`.
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
  async.Future<DicomStore> get(
    core.String name, {
    core.String $fields,
  }) async {
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return DicomStore.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Gets the access control policy for a resource.
  ///
  /// Returns an empty policy if the resource exists and does not have a policy
  /// set.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/dicomStores/\[^/\]+$`.
  ///
  /// [options_requestedPolicyVersion] - Optional. The policy format version to
  /// be returned. Valid values are 0, 1, and 3. Requests specifying an invalid
  /// value will be rejected. Requests for policies with any conditional
  /// bindings must specify version 3. Policies without any conditional bindings
  /// may specify any valid value or leave the field unset. To learn which
  /// resources support conditions in their IAM policies, see the
  /// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
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
  async.Future<Policy> getIamPolicy(
    core.String resource, {
    core.int options_requestedPolicyVersion,
    core.String $fields,
  }) async {
    if (resource == null) {
      throw core.ArgumentError('Parameter resource is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if (options_requestedPolicyVersion != null)
        'options.requestedPolicyVersion': ['${options_requestedPolicyVersion}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':getIamPolicy';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Policy.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Imports data into the DICOM store by copying it from the specified source.
  ///
  /// Errors are logged to Cloud Logging. For more information, see \[Viewing
  /// logs\](/healthcare/docs/how-tos/logging). The metadata field type is
  /// OperationMetadata.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the DICOM store resource into which the data is
  /// imported. For example,
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/dicomStores/\[^/\]+$`.
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
    ImportDicomDataRequest request,
    core.String name, {
    core.String $fields,
  }) async {
    final _body =
        request == null ? null : convert.json.encode(request.toJson());
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/' + commons.Escaper.ecapeVariableReserved('$name') + ':import';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists the DICOM stores in the given dataset.
  ///
  /// Request parameters:
  ///
  /// [parent] - Name of the dataset.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+$`.
  ///
  /// [filter] - Restricts stores returned to those matching a filter. The
  /// following syntax is available: * A string field value can be written as
  /// text inside quotation marks, for example `"query text"`. The only valid
  /// relational operation for text fields is equality (`=`), where text is
  /// searched within the field, rather than having the field be equal to the
  /// text. For example, `"Comment = great"` returns messages with `great` in
  /// the comment field. * A number field value can be written as an integer, a
  /// decimal, or an exponential. The valid relational operators for number
  /// fields are the equality operator (`=`), along with the less than/greater
  /// than operators (`<`, `<=`, `>`, `>=`). Note that there is no inequality
  /// (`!=`) operator. You can prepend the `NOT` operator to an expression to
  /// negate it. * A date field value must be written in `yyyy-mm-dd` form.
  /// Fields with date and time use the RFC3339 time format. Leading zeros are
  /// required for one-digit months and days. The valid relational operators for
  /// date fields are the equality operator (`=`) , along with the less
  /// than/greater than operators (`<`, `<=`, `>`, `>=`). Note that there is no
  /// inequality (`!=`) operator. You can prepend the `NOT` operator to an
  /// expression to negate it. * Multiple field query expressions can be
  /// combined in one query by adding `AND` or `OR` operators between the
  /// expressions. If a boolean operator appears within a quoted string, it is
  /// not treated as special, it's just another part of the character string to
  /// be matched. You can prepend the `NOT` operator to an expression to negate
  /// it. Only filtering on labels is supported. For example,
  /// `labels.key=value`.
  ///
  /// [pageSize] - Limit on the number of DICOM stores to return in a single
  /// response. If not specified, 100 is used. May not be larger than 1000.
  ///
  /// [pageToken] - The next_page_token value returned from the previous List
  /// request, if any.
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
  async.Future<ListDicomStoresResponse> list(
    core.String parent, {
    core.String filter,
    core.int pageSize,
    core.String pageToken,
    core.String $fields,
  }) async {
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/dicomStores';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListDicomStoresResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates the specified DICOM store.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Resource name of the DICOM store, of the form
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/dicomStores/\[^/\]+$`.
  ///
  /// [updateMask] - The update mask applies to the resource. For the
  /// `FieldMask` definition, see
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
  async.Future<DicomStore> patch(
    DicomStore request,
    core.String name, {
    core.String updateMask,
    core.String $fields,
  }) async {
    final _body =
        request == null ? null : convert.json.encode(request.toJson());
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return DicomStore.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// SearchForInstances returns a list of matching instances.
  ///
  /// See
  /// [Search Transaction](http://dicom.nema.org/medical/dicom/current/output/html/part18.html#sect_10.6).
  /// For details on the implementation of SearchForInstances, see
  /// [Search transaction](https://cloud.google.com/healthcare/docs/dicom#search_transaction)
  /// in the Cloud Healthcare API conformance statement. For samples that show
  /// how to call SearchForInstances, see
  /// [Searching for studies, series, instances, and frames](https://cloud.google.com/healthcare/docs/how-tos/dicomweb#searching_for_studies_series_instances_and_frames).
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the DICOM store that is being accessed. For
  /// example,
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/dicomStores/\[^/\]+$`.
  ///
  /// [dicomWebPath] - The path of the SearchForInstancesRequest DICOMweb
  /// request. For example, `instances`, `series/{series_uid}/instances`, or
  /// `studies/{study_uid}/instances`.
  /// Value must have pattern `^instances$`.
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
    core.String parent,
    core.String dicomWebPath, {
    core.String $fields,
  }) async {
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (dicomWebPath == null) {
      throw core.ArgumentError('Parameter dicomWebPath is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/dicomWeb/' +
        commons.Escaper.ecapeVariableReserved('$dicomWebPath');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return HttpBody.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// SearchForSeries returns a list of matching series.
  ///
  /// See
  /// [Search Transaction](http://dicom.nema.org/medical/dicom/current/output/html/part18.html#sect_10.6).
  /// For details on the implementation of SearchForSeries, see
  /// [Search transaction](https://cloud.google.com/healthcare/docs/dicom#search_transaction)
  /// in the Cloud Healthcare API conformance statement. For samples that show
  /// how to call SearchForSeries, see
  /// [Searching for studies, series, instances, and frames](https://cloud.google.com/healthcare/docs/how-tos/dicomweb#searching_for_studies_series_instances_and_frames).
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the DICOM store that is being accessed. For
  /// example,
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/dicomStores/\[^/\]+$`.
  ///
  /// [dicomWebPath] - The path of the SearchForSeries DICOMweb request. For
  /// example, `series` or `studies/{study_uid}/series`.
  /// Value must have pattern `^series$`.
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
    core.String parent,
    core.String dicomWebPath, {
    core.String $fields,
  }) async {
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (dicomWebPath == null) {
      throw core.ArgumentError('Parameter dicomWebPath is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/dicomWeb/' +
        commons.Escaper.ecapeVariableReserved('$dicomWebPath');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return HttpBody.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// SearchForStudies returns a list of matching studies.
  ///
  /// See
  /// [Search Transaction](http://dicom.nema.org/medical/dicom/current/output/html/part18.html#sect_10.6).
  /// For details on the implementation of SearchForStudies, see
  /// [Search transaction](https://cloud.google.com/healthcare/docs/dicom#search_transaction)
  /// in the Cloud Healthcare API conformance statement. For samples that show
  /// how to call SearchForStudies, see
  /// [Searching for studies, series, instances, and frames](https://cloud.google.com/healthcare/docs/how-tos/dicomweb#searching_for_studies_series_instances_and_frames).
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the DICOM store that is being accessed. For
  /// example,
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/dicomStores/\[^/\]+$`.
  ///
  /// [dicomWebPath] - The path of the SearchForStudies DICOMweb request. For
  /// example, `studies`.
  /// Value must have pattern `^studies$`.
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
    core.String parent,
    core.String dicomWebPath, {
    core.String $fields,
  }) async {
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (dicomWebPath == null) {
      throw core.ArgumentError('Parameter dicomWebPath is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/dicomWeb/' +
        commons.Escaper.ecapeVariableReserved('$dicomWebPath');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return HttpBody.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Sets the access control policy on the specified resource.
  ///
  /// Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`,
  /// and `PERMISSION_DENIED` errors.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/dicomStores/\[^/\]+$`.
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
    SetIamPolicyRequest request,
    core.String resource, {
    core.String $fields,
  }) async {
    final _body =
        request == null ? null : convert.json.encode(request.toJson());
    if (resource == null) {
      throw core.ArgumentError('Parameter resource is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':setIamPolicy';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Policy.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// StoreInstances stores DICOM instances associated with study instance
  /// unique identifiers (SUID).
  ///
  /// See
  /// [Store Transaction](http://dicom.nema.org/medical/dicom/current/output/html/part18.html#sect_10.5).
  /// For details on the implementation of StoreInstances, see
  /// [Store transaction](https://cloud.google.com/healthcare/docs/dicom#store_transaction)
  /// in the Cloud Healthcare API conformance statement. For samples that show
  /// how to call StoreInstances, see
  /// [Storing DICOM data](https://cloud.google.com/healthcare/docs/how-tos/dicomweb#storing_dicom_data).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the DICOM store that is being accessed. For
  /// example,
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/dicomStores/\[^/\]+$`.
  ///
  /// [dicomWebPath] - The path of the StoreInstances DICOMweb request. For
  /// example, `studies/[{study_uid}]`. Note that the `study_uid` is optional.
  /// Value must have pattern `^studies$`.
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
    HttpBody request,
    core.String parent,
    core.String dicomWebPath, {
    core.String $fields,
  }) async {
    final _body =
        request == null ? null : convert.json.encode(request.toJson());
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (dicomWebPath == null) {
      throw core.ArgumentError('Parameter dicomWebPath is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/dicomWeb/' +
        commons.Escaper.ecapeVariableReserved('$dicomWebPath');

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return HttpBody.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Returns permissions that a caller has on the specified resource.
  ///
  /// If the resource does not exist, this will return an empty set of
  /// permissions, not a `NOT_FOUND` error. Note: This operation is designed to
  /// be used for building permission-aware UIs and command-line tools, not for
  /// authorization checking. This operation may "fail open" without warning.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/dicomStores/\[^/\]+$`.
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
    TestIamPermissionsRequest request,
    core.String resource, {
    core.String $fields,
  }) async {
    final _body =
        request == null ? null : convert.json.encode(request.toJson());
    if (resource == null) {
      throw core.ArgumentError('Parameter resource is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':testIamPermissions';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return TestIamPermissionsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsDatasetsDicomStoresStudiesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsDatasetsDicomStoresStudiesSeriesResource get series =>
      ProjectsLocationsDatasetsDicomStoresStudiesSeriesResource(_requester);

  ProjectsLocationsDatasetsDicomStoresStudiesResource(
      commons.ApiRequester client)
      : _requester = client;

  /// DeleteStudy deletes all instances within the given study.
  ///
  /// Delete requests are equivalent to the GET requests specified in the
  /// Retrieve transaction. The method returns an Operation which will be marked
  /// successful when the deletion is complete. Warning: Inserting instances
  /// into a study while a delete operation is running for that study could
  /// result in the new instances not appearing in search results until the
  /// deletion operation finishes. For samples that show how to call
  /// DeleteStudy, see
  /// [Deleting a study, series, or instance](https://cloud.google.com/healthcare/docs/how-tos/dicomweb#deleting_a_study_series_or_instance).
  ///
  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/dicomStores/\[^/\]+$`.
  ///
  /// [dicomWebPath] - The path of the DeleteStudy request. For example,
  /// `studies/{study_uid}`.
  /// Value must have pattern `^studies/\[^/\]+$`.
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
  async.Future<Operation> delete(
    core.String parent,
    core.String dicomWebPath, {
    core.String $fields,
  }) async {
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (dicomWebPath == null) {
      throw core.ArgumentError('Parameter dicomWebPath is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/dicomWeb/' +
        commons.Escaper.ecapeVariableReserved('$dicomWebPath');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// RetrieveStudyMetadata returns instance associated with the given study
  /// presented as metadata with the bulk data removed.
  ///
  /// See
  /// [RetrieveTransaction](http://dicom.nema.org/medical/dicom/current/output/html/part18.html#sect_10.4).
  /// For details on the implementation of RetrieveStudyMetadata, see
  /// [Metadata resources](https://cloud.google.com/healthcare/docs/dicom#metadata_resources)
  /// in the Cloud Healthcare API conformance statement. For samples that show
  /// how to call RetrieveStudyMetadata, see
  /// [Retrieving metadata](https://cloud.google.com/healthcare/docs/how-tos/dicomweb#retrieving_metadata).
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the DICOM store that is being accessed. For
  /// example,
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/dicomStores/\[^/\]+$`.
  ///
  /// [dicomWebPath] - The path of the RetrieveStudyMetadata DICOMweb request.
  /// For example, `studies/{study_uid}/metadata`.
  /// Value must have pattern `^studies/\[^/\]+/metadata$`.
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
    core.String parent,
    core.String dicomWebPath, {
    core.String $fields,
  }) async {
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (dicomWebPath == null) {
      throw core.ArgumentError('Parameter dicomWebPath is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/dicomWeb/' +
        commons.Escaper.ecapeVariableReserved('$dicomWebPath');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return HttpBody.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// RetrieveStudy returns all instances within the given study.
  ///
  /// See
  /// [RetrieveTransaction](http://dicom.nema.org/medical/dicom/current/output/html/part18.html#sect_10.4).
  /// For details on the implementation of RetrieveStudy, see
  /// [DICOM study/series/instances](https://cloud.google.com/healthcare/docs/dicom#dicom_studyseriesinstances)
  /// in the Cloud Healthcare API conformance statement. For samples that show
  /// how to call RetrieveStudy, see
  /// [Retrieving DICOM data](https://cloud.google.com/healthcare/docs/how-tos/dicomweb#retrieving_dicom_data).
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the DICOM store that is being accessed. For
  /// example,
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/dicomStores/\[^/\]+$`.
  ///
  /// [dicomWebPath] - The path of the RetrieveStudy DICOMweb request. For
  /// example, `studies/{study_uid}`.
  /// Value must have pattern `^studies/\[^/\]+$`.
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
    core.String parent,
    core.String dicomWebPath, {
    core.String $fields,
  }) async {
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (dicomWebPath == null) {
      throw core.ArgumentError('Parameter dicomWebPath is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/dicomWeb/' +
        commons.Escaper.ecapeVariableReserved('$dicomWebPath');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return HttpBody.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// SearchForInstances returns a list of matching instances.
  ///
  /// See
  /// [Search Transaction](http://dicom.nema.org/medical/dicom/current/output/html/part18.html#sect_10.6).
  /// For details on the implementation of SearchForInstances, see
  /// [Search transaction](https://cloud.google.com/healthcare/docs/dicom#search_transaction)
  /// in the Cloud Healthcare API conformance statement. For samples that show
  /// how to call SearchForInstances, see
  /// [Searching for studies, series, instances, and frames](https://cloud.google.com/healthcare/docs/how-tos/dicomweb#searching_for_studies_series_instances_and_frames).
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the DICOM store that is being accessed. For
  /// example,
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/dicomStores/\[^/\]+$`.
  ///
  /// [dicomWebPath] - The path of the SearchForInstancesRequest DICOMweb
  /// request. For example, `instances`, `series/{series_uid}/instances`, or
  /// `studies/{study_uid}/instances`.
  /// Value must have pattern `^studies/\[^/\]+/instances$`.
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
    core.String parent,
    core.String dicomWebPath, {
    core.String $fields,
  }) async {
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (dicomWebPath == null) {
      throw core.ArgumentError('Parameter dicomWebPath is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/dicomWeb/' +
        commons.Escaper.ecapeVariableReserved('$dicomWebPath');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return HttpBody.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// SearchForSeries returns a list of matching series.
  ///
  /// See
  /// [Search Transaction](http://dicom.nema.org/medical/dicom/current/output/html/part18.html#sect_10.6).
  /// For details on the implementation of SearchForSeries, see
  /// [Search transaction](https://cloud.google.com/healthcare/docs/dicom#search_transaction)
  /// in the Cloud Healthcare API conformance statement. For samples that show
  /// how to call SearchForSeries, see
  /// [Searching for studies, series, instances, and frames](https://cloud.google.com/healthcare/docs/how-tos/dicomweb#searching_for_studies_series_instances_and_frames).
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the DICOM store that is being accessed. For
  /// example,
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/dicomStores/\[^/\]+$`.
  ///
  /// [dicomWebPath] - The path of the SearchForSeries DICOMweb request. For
  /// example, `series` or `studies/{study_uid}/series`.
  /// Value must have pattern `^studies/\[^/\]+/series$`.
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
    core.String parent,
    core.String dicomWebPath, {
    core.String $fields,
  }) async {
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (dicomWebPath == null) {
      throw core.ArgumentError('Parameter dicomWebPath is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/dicomWeb/' +
        commons.Escaper.ecapeVariableReserved('$dicomWebPath');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return HttpBody.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// StoreInstances stores DICOM instances associated with study instance
  /// unique identifiers (SUID).
  ///
  /// See
  /// [Store Transaction](http://dicom.nema.org/medical/dicom/current/output/html/part18.html#sect_10.5).
  /// For details on the implementation of StoreInstances, see
  /// [Store transaction](https://cloud.google.com/healthcare/docs/dicom#store_transaction)
  /// in the Cloud Healthcare API conformance statement. For samples that show
  /// how to call StoreInstances, see
  /// [Storing DICOM data](https://cloud.google.com/healthcare/docs/how-tos/dicomweb#storing_dicom_data).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the DICOM store that is being accessed. For
  /// example,
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/dicomStores/\[^/\]+$`.
  ///
  /// [dicomWebPath] - The path of the StoreInstances DICOMweb request. For
  /// example, `studies/[{study_uid}]`. Note that the `study_uid` is optional.
  /// Value must have pattern `^studies/\[^/\]+$`.
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
    HttpBody request,
    core.String parent,
    core.String dicomWebPath, {
    core.String $fields,
  }) async {
    final _body =
        request == null ? null : convert.json.encode(request.toJson());
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (dicomWebPath == null) {
      throw core.ArgumentError('Parameter dicomWebPath is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/dicomWeb/' +
        commons.Escaper.ecapeVariableReserved('$dicomWebPath');

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return HttpBody.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsDatasetsDicomStoresStudiesSeriesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesResource
      get instances =>
          ProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesResource(
              _requester);

  ProjectsLocationsDatasetsDicomStoresStudiesSeriesResource(
      commons.ApiRequester client)
      : _requester = client;

  /// DeleteSeries deletes all instances within the given study and series.
  ///
  /// Delete requests are equivalent to the GET requests specified in the
  /// Retrieve transaction. The method returns an Operation which will be marked
  /// successful when the deletion is complete. Warning: Inserting instances
  /// into a series while a delete operation is running for that series could
  /// result in the new instances not appearing in search results until the
  /// deletion operation finishes. For samples that show how to call
  /// DeleteSeries, see
  /// [Deleting a study, series, or instance](https://cloud.google.com/healthcare/docs/how-tos/dicomweb#deleting_a_study_series_or_instance).
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the DICOM store that is being accessed. For
  /// example,
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/dicomStores/\[^/\]+$`.
  ///
  /// [dicomWebPath] - The path of the DeleteSeries request. For example,
  /// `studies/{study_uid}/series/{series_uid}`.
  /// Value must have pattern `^studies/\[^/\]+/series/\[^/\]+$`.
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
  async.Future<Operation> delete(
    core.String parent,
    core.String dicomWebPath, {
    core.String $fields,
  }) async {
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (dicomWebPath == null) {
      throw core.ArgumentError('Parameter dicomWebPath is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/dicomWeb/' +
        commons.Escaper.ecapeVariableReserved('$dicomWebPath');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// RetrieveSeriesMetadata returns instance associated with the given study
  /// and series, presented as metadata with the bulk data removed.
  ///
  /// See
  /// [RetrieveTransaction](http://dicom.nema.org/medical/dicom/current/output/html/part18.html#sect_10.4).
  /// For details on the implementation of RetrieveSeriesMetadata, see
  /// [Metadata resources](https://cloud.google.com/healthcare/docs/dicom#metadata_resources)
  /// in the Cloud Healthcare API conformance statement. For samples that show
  /// how to call RetrieveSeriesMetadata, see
  /// [Retrieving metadata](https://cloud.google.com/healthcare/docs/how-tos/dicomweb#retrieving_metadata).
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the DICOM store that is being accessed. For
  /// example,
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/dicomStores/\[^/\]+$`.
  ///
  /// [dicomWebPath] - The path of the RetrieveSeriesMetadata DICOMweb request.
  /// For example, `studies/{study_uid}/series/{series_uid}/metadata`.
  /// Value must have pattern `^studies/\[^/\]+/series/\[^/\]+/metadata$`.
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
    core.String parent,
    core.String dicomWebPath, {
    core.String $fields,
  }) async {
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (dicomWebPath == null) {
      throw core.ArgumentError('Parameter dicomWebPath is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/dicomWeb/' +
        commons.Escaper.ecapeVariableReserved('$dicomWebPath');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return HttpBody.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// RetrieveSeries returns all instances within the given study and series.
  ///
  /// See
  /// [RetrieveTransaction](http://dicom.nema.org/medical/dicom/current/output/html/part18.html#sect_10.4).
  /// For details on the implementation of RetrieveSeries, see
  /// [DICOM study/series/instances](https://cloud.google.com/healthcare/docs/dicom#dicom_studyseriesinstances)
  /// in the Cloud Healthcare API conformance statement. For samples that show
  /// how to call RetrieveSeries, see
  /// [Retrieving DICOM data](https://cloud.google.com/healthcare/docs/how-tos/dicomweb#retrieving_dicom_data).
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the DICOM store that is being accessed. For
  /// example,
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/dicomStores/\[^/\]+$`.
  ///
  /// [dicomWebPath] - The path of the RetrieveSeries DICOMweb request. For
  /// example, `studies/{study_uid}/series/{series_uid}`.
  /// Value must have pattern `^studies/\[^/\]+/series/\[^/\]+$`.
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
    core.String parent,
    core.String dicomWebPath, {
    core.String $fields,
  }) async {
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (dicomWebPath == null) {
      throw core.ArgumentError('Parameter dicomWebPath is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/dicomWeb/' +
        commons.Escaper.ecapeVariableReserved('$dicomWebPath');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return HttpBody.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// SearchForInstances returns a list of matching instances.
  ///
  /// See
  /// [Search Transaction](http://dicom.nema.org/medical/dicom/current/output/html/part18.html#sect_10.6).
  /// For details on the implementation of SearchForInstances, see
  /// [Search transaction](https://cloud.google.com/healthcare/docs/dicom#search_transaction)
  /// in the Cloud Healthcare API conformance statement. For samples that show
  /// how to call SearchForInstances, see
  /// [Searching for studies, series, instances, and frames](https://cloud.google.com/healthcare/docs/how-tos/dicomweb#searching_for_studies_series_instances_and_frames).
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the DICOM store that is being accessed. For
  /// example,
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/dicomStores/\[^/\]+$`.
  ///
  /// [dicomWebPath] - The path of the SearchForInstancesRequest DICOMweb
  /// request. For example, `instances`, `series/{series_uid}/instances`, or
  /// `studies/{study_uid}/instances`.
  /// Value must have pattern `^studies/\[^/\]+/series/\[^/\]+/instances$`.
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
    core.String parent,
    core.String dicomWebPath, {
    core.String $fields,
  }) async {
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (dicomWebPath == null) {
      throw core.ArgumentError('Parameter dicomWebPath is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/dicomWeb/' +
        commons.Escaper.ecapeVariableReserved('$dicomWebPath');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return HttpBody.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesFramesResource
      get frames =>
          ProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesFramesResource(
              _requester);

  ProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesResource(
      commons.ApiRequester client)
      : _requester = client;

  /// DeleteInstance deletes an instance associated with the given study,
  /// series, and SOP Instance UID.
  ///
  /// Delete requests are equivalent to the GET requests specified in the
  /// Retrieve transaction. Study and series search results can take a few
  /// seconds to be updated after an instance is deleted using DeleteInstance.
  /// For samples that show how to call DeleteInstance, see
  /// [Deleting a study, series, or instance](https://cloud.google.com/healthcare/docs/how-tos/dicomweb#deleting_a_study_series_or_instance).
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the DICOM store that is being accessed. For
  /// example,
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/dicomStores/\[^/\]+$`.
  ///
  /// [dicomWebPath] - The path of the DeleteInstance request. For example,
  /// `studies/{study_uid}/series/{series_uid}/instances/{instance_uid}`.
  /// Value must have pattern
  /// `^studies/\[^/\]+/series/\[^/\]+/instances/\[^/\]+$`.
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
    core.String parent,
    core.String dicomWebPath, {
    core.String $fields,
  }) async {
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (dicomWebPath == null) {
      throw core.ArgumentError('Parameter dicomWebPath is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/dicomWeb/' +
        commons.Escaper.ecapeVariableReserved('$dicomWebPath');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Empty.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// RetrieveInstance returns instance associated with the given study, series,
  /// and SOP Instance UID.
  ///
  /// See
  /// [RetrieveTransaction](http://dicom.nema.org/medical/dicom/current/output/html/part18.html#sect_10.4).
  /// For details on the implementation of RetrieveInstance, see
  /// [DICOM study/series/instances](https://cloud.google.com/healthcare/docs/dicom#dicom_studyseriesinstances)
  /// and
  /// [DICOM instances](https://cloud.google.com/healthcare/docs/dicom#dicom_instances)
  /// in the Cloud Healthcare API conformance statement. For samples that show
  /// how to call RetrieveInstance, see
  /// [Retrieving an instance](https://cloud.google.com/healthcare/docs/how-tos/dicomweb#retrieving_an_instance).
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the DICOM store that is being accessed. For
  /// example,
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/dicomStores/\[^/\]+$`.
  ///
  /// [dicomWebPath] - The path of the RetrieveInstance DICOMweb request. For
  /// example,
  /// `studies/{study_uid}/series/{series_uid}/instances/{instance_uid}`.
  /// Value must have pattern
  /// `^studies/\[^/\]+/series/\[^/\]+/instances/\[^/\]+$`.
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
    core.String parent,
    core.String dicomWebPath, {
    core.String $fields,
  }) async {
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (dicomWebPath == null) {
      throw core.ArgumentError('Parameter dicomWebPath is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/dicomWeb/' +
        commons.Escaper.ecapeVariableReserved('$dicomWebPath');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return HttpBody.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// RetrieveInstanceMetadata returns instance associated with the given study,
  /// series, and SOP Instance UID presented as metadata with the bulk data
  /// removed.
  ///
  /// See
  /// [RetrieveTransaction](http://dicom.nema.org/medical/dicom/current/output/html/part18.html#sect_10.4).
  /// For details on the implementation of RetrieveInstanceMetadata, see
  /// [Metadata resources](https://cloud.google.com/healthcare/docs/dicom#metadata_resources)
  /// in the Cloud Healthcare API conformance statement. For samples that show
  /// how to call RetrieveInstanceMetadata, see
  /// [Retrieving metadata](https://cloud.google.com/healthcare/docs/how-tos/dicomweb#retrieving_metadata).
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the DICOM store that is being accessed. For
  /// example,
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/dicomStores/\[^/\]+$`.
  ///
  /// [dicomWebPath] - The path of the RetrieveInstanceMetadata DICOMweb
  /// request. For example,
  /// `studies/{study_uid}/series/{series_uid}/instances/{instance_uid}/metadata`.
  /// Value must have pattern
  /// `^studies/\[^/\]+/series/\[^/\]+/instances/\[^/\]+/metadata$`.
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
    core.String parent,
    core.String dicomWebPath, {
    core.String $fields,
  }) async {
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (dicomWebPath == null) {
      throw core.ArgumentError('Parameter dicomWebPath is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/dicomWeb/' +
        commons.Escaper.ecapeVariableReserved('$dicomWebPath');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return HttpBody.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// RetrieveRenderedInstance returns instance associated with the given study,
  /// series, and SOP Instance UID in an acceptable Rendered Media Type.
  ///
  /// See
  /// [RetrieveTransaction](http://dicom.nema.org/medical/dicom/current/output/html/part18.html#sect_10.4).
  /// For details on the implementation of RetrieveRenderedInstance, see
  /// [Rendered resources](https://cloud.google.com/healthcare/docs/dicom#rendered_resources)
  /// in the Cloud Healthcare API conformance statement. For samples that show
  /// how to call RetrieveRenderedInstance, see
  /// [Retrieving consumer image formats](https://cloud.google.com/healthcare/docs/how-tos/dicomweb#retrieving_consumer_image_formats).
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the DICOM store that is being accessed. For
  /// example,
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/dicomStores/\[^/\]+$`.
  ///
  /// [dicomWebPath] - The path of the RetrieveRenderedInstance DICOMweb
  /// request. For example,
  /// `studies/{study_uid}/series/{series_uid}/instances/{instance_uid}/rendered`.
  /// Value must have pattern
  /// `^studies/\[^/\]+/series/\[^/\]+/instances/\[^/\]+/rendered$`.
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
    core.String parent,
    core.String dicomWebPath, {
    core.String $fields,
  }) async {
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (dicomWebPath == null) {
      throw core.ArgumentError('Parameter dicomWebPath is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/dicomWeb/' +
        commons.Escaper.ecapeVariableReserved('$dicomWebPath');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return HttpBody.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesFramesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesFramesResource(
      commons.ApiRequester client)
      : _requester = client;

  /// RetrieveFrames returns instances associated with the given study, series,
  /// SOP Instance UID and frame numbers.
  ///
  /// See
  /// \[RetrieveTransaction\](http://dicom.nema.org/medical/dicom/current/output/html/part18.html#sect_10.4}.
  /// For details on the implementation of RetrieveFrames, see
  /// [DICOM frames](https://cloud.google.com/healthcare/docs/dicom#dicom_frames)
  /// in the Cloud Healthcare API conformance statement. For samples that show
  /// how to call RetrieveFrames, see
  /// [Retrieving DICOM data](https://cloud.google.com/healthcare/docs/how-tos/dicomweb#retrieving_dicom_data).
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the DICOM store that is being accessed. For
  /// example,
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/dicomStores/\[^/\]+$`.
  ///
  /// [dicomWebPath] - The path of the RetrieveFrames DICOMweb request. For
  /// example,
  /// `studies/{study_uid}/series/{series_uid}/instances/{instance_uid}/frames/{frame_list}`.
  /// Value must have pattern
  /// `^studies/\[^/\]+/series/\[^/\]+/instances/\[^/\]+/frames/\[^/\]+$`.
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
    core.String parent,
    core.String dicomWebPath, {
    core.String $fields,
  }) async {
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (dicomWebPath == null) {
      throw core.ArgumentError('Parameter dicomWebPath is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/dicomWeb/' +
        commons.Escaper.ecapeVariableReserved('$dicomWebPath');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return HttpBody.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// RetrieveRenderedFrames returns instances associated with the given study,
  /// series, SOP Instance UID and frame numbers in an acceptable Rendered Media
  /// Type.
  ///
  /// See
  /// [RetrieveTransaction](http://dicom.nema.org/medical/dicom/current/output/html/part18.html#sect_10.4).
  /// For details on the implementation of RetrieveRenderedFrames, see
  /// [Rendered resources](https://cloud.google.com/healthcare/docs/dicom#rendered_resources)
  /// in the Cloud Healthcare API conformance statement. For samples that show
  /// how to call RetrieveRenderedFrames, see
  /// [Retrieving consumer image formats](https://cloud.google.com/healthcare/docs/how-tos/dicomweb#retrieving_consumer_image_formats).
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the DICOM store that is being accessed. For
  /// example,
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/dicomStores/\[^/\]+$`.
  ///
  /// [dicomWebPath] - The path of the RetrieveRenderedFrames DICOMweb request.
  /// For example,
  /// `studies/{study_uid}/series/{series_uid}/instances/{instance_uid}/frames/{frame_list}/rendered`.
  /// Value must have pattern
  /// `^studies/\[^/\]+/series/\[^/\]+/instances/\[^/\]+/frames/\[^/\]+/rendered$`.
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
    core.String parent,
    core.String dicomWebPath, {
    core.String $fields,
  }) async {
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (dicomWebPath == null) {
      throw core.ArgumentError('Parameter dicomWebPath is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/dicomWeb/' +
        commons.Escaper.ecapeVariableReserved('$dicomWebPath');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return HttpBody.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsDatasetsFhirStoresResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsDatasetsFhirStoresFhirResource get fhir =>
      ProjectsLocationsDatasetsFhirStoresFhirResource(_requester);

  ProjectsLocationsDatasetsFhirStoresResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new FHIR store within the parent dataset.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the dataset this FHIR store belongs to.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+$`.
  ///
  /// [fhirStoreId] - The ID of the FHIR store that is being created. The string
  /// must match the following regex: `[\p{L}\p{N}_\-\.]{1,256}`.
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
  async.Future<FhirStore> create(
    FhirStore request,
    core.String parent, {
    core.String fhirStoreId,
    core.String $fields,
  }) async {
    final _body =
        request == null ? null : convert.json.encode(request.toJson());
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if (fhirStoreId != null) 'fhirStoreId': [fhirStoreId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/fhirStores';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return FhirStore.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// De-identifies data from the source store and writes it to the destination
  /// store.
  ///
  /// The metadata field type is OperationMetadata. If the request is
  /// successful, the response field type is DeidentifyFhirStoreSummary. If
  /// errors occur, error is set. Error details are also logged to Cloud Logging
  /// (see \[Viewing logs\](/healthcare/docs/how-tos/logging)).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [sourceStore] - Source FHIR store resource name. For example,
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/fhirStores/{fhir_store_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/fhirStores/\[^/\]+$`.
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
    DeidentifyFhirStoreRequest request,
    core.String sourceStore, {
    core.String $fields,
  }) async {
    final _body =
        request == null ? null : convert.json.encode(request.toJson());
    if (sourceStore == null) {
      throw core.ArgumentError('Parameter sourceStore is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$sourceStore') +
        ':deidentify';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the specified FHIR store and removes all resources within it.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the FHIR store to delete.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/fhirStores/\[^/\]+$`.
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
  }) async {
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Empty.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Export resources from the FHIR store to the specified destination.
  ///
  /// This method returns an Operation that can be used to track the status of
  /// the export by calling GetOperation. Immediate fatal errors appear in the
  /// error field, errors are also logged to Cloud Logging (see \[Viewing
  /// logs\](/healthcare/docs/how-tos/logging)). Otherwise, when the operation
  /// finishes, a detailed response of type ExportResourcesResponse is returned
  /// in the response field. The metadata field type for this operation is
  /// OperationMetadata.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the FHIR store to export resource from, in the format
  /// of
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/fhirStores/{fhir_store_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/fhirStores/\[^/\]+$`.
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
    ExportResourcesRequest request,
    core.String name, {
    core.String $fields,
  }) async {
    final _body =
        request == null ? null : convert.json.encode(request.toJson());
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/' + commons.Escaper.ecapeVariableReserved('$name') + ':export';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Gets the configuration of the specified FHIR store.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the FHIR store to get.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/fhirStores/\[^/\]+$`.
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
  async.Future<FhirStore> get(
    core.String name, {
    core.String $fields,
  }) async {
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return FhirStore.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Gets the access control policy for a resource.
  ///
  /// Returns an empty policy if the resource exists and does not have a policy
  /// set.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/fhirStores/\[^/\]+$`.
  ///
  /// [options_requestedPolicyVersion] - Optional. The policy format version to
  /// be returned. Valid values are 0, 1, and 3. Requests specifying an invalid
  /// value will be rejected. Requests for policies with any conditional
  /// bindings must specify version 3. Policies without any conditional bindings
  /// may specify any valid value or leave the field unset. To learn which
  /// resources support conditions in their IAM policies, see the
  /// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
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
  async.Future<Policy> getIamPolicy(
    core.String resource, {
    core.int options_requestedPolicyVersion,
    core.String $fields,
  }) async {
    if (resource == null) {
      throw core.ArgumentError('Parameter resource is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if (options_requestedPolicyVersion != null)
        'options.requestedPolicyVersion': ['${options_requestedPolicyVersion}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':getIamPolicy';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Policy.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Imports resources to the FHIR store by loading data from the specified
  /// sources.
  ///
  /// This method is optimized to load large quantities of data using import
  /// semantics that ignore some FHIR store configuration options and are not
  /// suitable for all use cases. It is primarily intended to load data into an
  /// empty FHIR store that is not being used by other clients. In cases where
  /// this method is not appropriate, consider using ExecuteBundle to load data.
  /// Every resource in the input must contain a client-supplied ID. Each
  /// resource is stored using the supplied ID regardless of the
  /// enable_update_create setting on the FHIR store. It is strongly advised not
  /// to include or encode any sensitive data such as patient identifiers in
  /// client-specified resource IDs. Those IDs are part of the FHIR resource
  /// path recorded in Cloud audit logs and Cloud Pub/Sub notifications. Those
  /// IDs can also be contained in reference fields within other resources. The
  /// import process does not enforce referential integrity, regardless of the
  /// disable_referential_integrity setting on the FHIR store. This allows the
  /// import of resources with arbitrary interdependencies without considering
  /// grouping or ordering, but if the input data contains invalid references or
  /// if some resources fail to be imported, the FHIR store might be left in a
  /// state that violates referential integrity. The import process does not
  /// trigger Pub/Sub notification or BigQuery streaming update, regardless of
  /// how those are configured on the FHIR store. If a resource with the
  /// specified ID already exists, the most recent version of the resource is
  /// overwritten without creating a new historical version, regardless of the
  /// disable_resource_versioning setting on the FHIR store. If transient
  /// failures occur during the import, it's possible that successfully imported
  /// resources will be overwritten more than once. The import operation is
  /// idempotent unless the input data contains multiple valid resources with
  /// the same ID but different contents. In that case, after the import
  /// completes, the store contains exactly one resource with that ID but there
  /// is no ordering guarantee on which version of the contents it will have.
  /// The operation result counters do not count duplicate IDs as an error and
  /// count one success for each resource in the input, which might result in a
  /// success count larger than the number of resources in the FHIR store. This
  /// often occurs when importing data organized in bundles produced by
  /// Patient-everything where each bundle contains its own copy of a resource
  /// such as Practitioner that might be referred to by many patients. If some
  /// resources fail to import, for example due to parsing errors, successfully
  /// imported resources are not rolled back. The location and format of the
  /// input data is specified by the parameters in ImportResourcesRequest. Note
  /// that if no format is specified, this method assumes the `BUNDLE` format.
  /// When using the `BUNDLE` format this method ignores the `Bundle.type`
  /// field, except that `history` bundles are rejected, and does not apply any
  /// of the bundle processing semantics for batch or transaction bundles.
  /// Unlike in ExecuteBundle, transaction bundles are not executed as a single
  /// transaction and bundle-internal references are not rewritten. The bundle
  /// is treated as a collection of resources to be written as provided in
  /// `Bundle.entry.resource`, ignoring `Bundle.entry.request`. As an example,
  /// this allows the import of `searchset` bundles produced by a FHIR search or
  /// Patient-everything operation. This method returns an Operation that can be
  /// used to track the status of the import by calling GetOperation. Immediate
  /// fatal errors appear in the error field, errors are also logged to Cloud
  /// Logging (see \[Viewing logs\](/healthcare/docs/how-tos/logging)).
  /// Otherwise, when the operation finishes, a detailed response of type
  /// ImportResourcesResponse is returned in the response field. The metadata
  /// field type for this operation is OperationMetadata.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the FHIR store to import FHIR resources to, in the
  /// format of
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/fhirStores/{fhir_store_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/fhirStores/\[^/\]+$`.
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
    ImportResourcesRequest request,
    core.String name, {
    core.String $fields,
  }) async {
    final _body =
        request == null ? null : convert.json.encode(request.toJson());
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/' + commons.Escaper.ecapeVariableReserved('$name') + ':import';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists the FHIR stores in the given dataset.
  ///
  /// Request parameters:
  ///
  /// [parent] - Name of the dataset.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+$`.
  ///
  /// [filter] - Restricts stores returned to those matching a filter. The
  /// following syntax is available: * A string field value can be written as
  /// text inside quotation marks, for example `"query text"`. The only valid
  /// relational operation for text fields is equality (`=`), where text is
  /// searched within the field, rather than having the field be equal to the
  /// text. For example, `"Comment = great"` returns messages with `great` in
  /// the comment field. * A number field value can be written as an integer, a
  /// decimal, or an exponential. The valid relational operators for number
  /// fields are the equality operator (`=`), along with the less than/greater
  /// than operators (`<`, `<=`, `>`, `>=`). Note that there is no inequality
  /// (`!=`) operator. You can prepend the `NOT` operator to an expression to
  /// negate it. * A date field value must be written in `yyyy-mm-dd` form.
  /// Fields with date and time use the RFC3339 time format. Leading zeros are
  /// required for one-digit months and days. The valid relational operators for
  /// date fields are the equality operator (`=`) , along with the less
  /// than/greater than operators (`<`, `<=`, `>`, `>=`). Note that there is no
  /// inequality (`!=`) operator. You can prepend the `NOT` operator to an
  /// expression to negate it. * Multiple field query expressions can be
  /// combined in one query by adding `AND` or `OR` operators between the
  /// expressions. If a boolean operator appears within a quoted string, it is
  /// not treated as special, it's just another part of the character string to
  /// be matched. You can prepend the `NOT` operator to an expression to negate
  /// it. Only filtering on labels is supported, for example `labels.key=value`.
  ///
  /// [pageSize] - Limit on the number of FHIR stores to return in a single
  /// response. If not specified, 100 is used. May not be larger than 1000.
  ///
  /// [pageToken] - The next_page_token value returned from the previous List
  /// request, if any.
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
  async.Future<ListFhirStoresResponse> list(
    core.String parent, {
    core.String filter,
    core.int pageSize,
    core.String pageToken,
    core.String $fields,
  }) async {
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/fhirStores';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListFhirStoresResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/fhirStores/\[^/\]+$`.
  ///
  /// [updateMask] - The update mask applies to the resource. For the
  /// `FieldMask` definition, see
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
  async.Future<FhirStore> patch(
    FhirStore request,
    core.String name, {
    core.String updateMask,
    core.String $fields,
  }) async {
    final _body =
        request == null ? null : convert.json.encode(request.toJson());
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return FhirStore.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Sets the access control policy on the specified resource.
  ///
  /// Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`,
  /// and `PERMISSION_DENIED` errors.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/fhirStores/\[^/\]+$`.
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
    SetIamPolicyRequest request,
    core.String resource, {
    core.String $fields,
  }) async {
    final _body =
        request == null ? null : convert.json.encode(request.toJson());
    if (resource == null) {
      throw core.ArgumentError('Parameter resource is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':setIamPolicy';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Policy.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Returns permissions that a caller has on the specified resource.
  ///
  /// If the resource does not exist, this will return an empty set of
  /// permissions, not a `NOT_FOUND` error. Note: This operation is designed to
  /// be used for building permission-aware UIs and command-line tools, not for
  /// authorization checking. This operation may "fail open" without warning.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/fhirStores/\[^/\]+$`.
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
    TestIamPermissionsRequest request,
    core.String resource, {
    core.String $fields,
  }) async {
    final _body =
        request == null ? null : convert.json.encode(request.toJson());
    if (resource == null) {
      throw core.ArgumentError('Parameter resource is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':testIamPermissions';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return TestIamPermissionsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsDatasetsFhirStoresFhirResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsDatasetsFhirStoresFhirResource(commons.ApiRequester client)
      : _requester = client;

  /// Retrieves a Patient resource and resources related to that patient.
  ///
  /// Implements the FHIR extended operation Patient-everything
  /// ([DSTU2](http://hl7.org/implement/standards/fhir/DSTU2/patient-operations.html#everything),
  /// [STU3](http://hl7.org/implement/standards/fhir/STU3/patient-operations.html#everything),
  /// [R4](http://hl7.org/implement/standards/fhir/R4/patient-operations.html#everything)).
  /// On success, the response body will contain a JSON-encoded representation
  /// of a `Bundle` resource of type `searchset`, containing the results of the
  /// operation. Errors generated by the FHIR store will contain a JSON-encoded
  /// `OperationOutcome` resource describing the reason for the error. If the
  /// request cannot be mapped to a valid API method on a FHIR store, a generic
  /// GCP error might be returned instead. The resources in scope for the
  /// response are: * The patient resource itself. * All the resources directly
  /// referenced by the patient resource. * Resources directly referencing the
  /// patient resource that meet the inclusion criteria. The inclusion criteria
  /// are based on the membership rules in the patient compartment definition
  /// ([DSTU2](http://hl7.org/fhir/DSTU2/compartment-patient.html),
  /// [STU3](http://www.hl7.org/fhir/stu3/compartmentdefinition-patient.html),
  /// [R4](http://hl7.org/fhir/R4/compartmentdefinition-patient.html)), which
  /// details the eligible resource types and referencing search parameters. For
  /// samples that show how to call `Patient-everything`, see \[Getting all
  /// patient compartment
  /// resources\](/healthcare/docs/how-tos/fhir-resources#getting_all_patient_compartment_resources).
  ///
  /// Request parameters:
  ///
  /// [name] - Name of the `Patient` resource for which the information is
  /// required.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/fhirStores/\[^/\]+/fhir/Patient/\[^/\]+$`.
  ///
  /// [P_count] - Maximum number of resources in a page. If not specified, 100
  /// is used. May not be larger than 1000.
  ///
  /// [P_pageToken] - Used to retrieve the next or previous page of results when
  /// using pagination. Set `_page_token` to the value of _page_token set in
  /// next or previous page links' url. Next and previous page are returned in
  /// the response bundle's links field, where `link.relation` is "previous" or
  /// "next". Omit `_page_token` if no previous request has been made.
  ///
  /// [P_since] - If provided, only resources updated after this time are
  /// returned. The time uses the format YYYY-MM-DDThh:mm:ss.sss+zz:zz. For
  /// example, `2015-02-07T13:28:17.239+02:00` or `2017-01-01T00:00:00Z`. The
  /// time must be specified to the second and include a time zone.
  ///
  /// [P_type] - String of comma-delimited FHIR resource types. If provided,
  /// only resources of the specified resource type(s) are returned.
  ///
  /// [end] - The response includes records prior to the end date. If no end
  /// date is provided, all records subsequent to the start date are in scope.
  ///
  /// [start] - The response includes records subsequent to the start date. If
  /// no start date is provided, all records prior to the end date are in scope.
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
  async.Future<HttpBody> PatientEverything(
    core.String name, {
    core.int P_count,
    core.String P_pageToken,
    core.String P_since,
    core.String P_type,
    core.String end,
    core.String start,
    core.String $fields,
  }) async {
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if (P_count != null) '_count': ['${P_count}'],
      if (P_pageToken != null) '_page_token': [P_pageToken],
      if (P_since != null) '_since': [P_since],
      if (P_type != null) '_type': [P_type],
      if (end != null) 'end': [end],
      if (start != null) 'start': [start],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        '/\$everything';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return HttpBody.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes all the historical versions of a resource (excluding the current
  /// version) from the FHIR store.
  ///
  /// To remove all versions of a resource, first delete the current version and
  /// then call this method. This is not a FHIR standard operation. For samples
  /// that show how to call `Resource-purge`, see \[Deleting historical versions
  /// of a FHIR
  /// resource\](/healthcare/docs/how-tos/fhir-resources#deleting_historical_versions_of_a_fhir_resource).
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the resource to purge.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/fhirStores/\[^/\]+/fhir/\[^/\]+/\[^/\]+$`.
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
  async.Future<Empty> ResourcePurge(
    core.String name, {
    core.String $fields,
  }) async {
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/' + commons.Escaper.ecapeVariableReserved('$name') + '/\$purge';

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Empty.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Gets the FHIR capability statement
  /// ([STU3](http://hl7.org/implement/standards/fhir/STU3/capabilitystatement.html),
  /// [R4](http://hl7.org/implement/standards/fhir/R4/capabilitystatement.html)),
  /// or the
  /// [conformance statement](http://hl7.org/implement/standards/fhir/DSTU2/conformance.html)
  /// in the DSTU2 case for the store, which contains a description of
  /// functionality supported by the server.
  ///
  /// Implements the FHIR standard capabilities interaction
  /// ([STU3](http://hl7.org/implement/standards/fhir/STU3/http.html#capabilities),
  /// [R4](http://hl7.org/implement/standards/fhir/R4/http.html#capabilities)),
  /// or the
  /// [conformance interaction](http://hl7.org/implement/standards/fhir/DSTU2/http.html#conformance)
  /// in the DSTU2 case. On success, the response body will contain a
  /// JSON-encoded representation of a `CapabilityStatement` resource.
  ///
  /// Request parameters:
  ///
  /// [name] - Name of the FHIR store to retrieve the capabilities for.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/fhirStores/\[^/\]+$`.
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
  async.Future<HttpBody> capabilities(
    core.String name, {
    core.String $fields,
  }) async {
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        '/fhir/metadata';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return HttpBody.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Creates a FHIR resource.
  ///
  /// Implements the FHIR standard create interaction
  /// ([DSTU2](http://hl7.org/implement/standards/fhir/DSTU2/http.html#create),
  /// [STU3](http://hl7.org/implement/standards/fhir/STU3/http.html#create),
  /// [R4](http://hl7.org/implement/standards/fhir/R4/http.html#create)), which
  /// creates a new resource with a server-assigned resource ID. The request
  /// body must contain a JSON-encoded FHIR resource, and the request headers
  /// must contain `Content-Type: application/fhir+json`. On success, the
  /// response body will contain a JSON-encoded representation of the resource
  /// as it was created on the server, including the server-assigned resource ID
  /// and version ID. Errors generated by the FHIR store will contain a
  /// JSON-encoded `OperationOutcome` resource describing the reason for the
  /// error. If the request cannot be mapped to a valid API method on a FHIR
  /// store, a generic GCP error might be returned instead. For samples that
  /// show how to call `create`, see \[Creating a FHIR
  /// resource\](/healthcare/docs/how-tos/fhir-resources#creating_a_fhir_resource).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the FHIR store this resource belongs to.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/fhirStores/\[^/\]+$`.
  ///
  /// [type] - The FHIR resource type to create, such as Patient or Observation.
  /// For a complete list, see the FHIR Resource Index
  /// ([DSTU2](http://hl7.org/implement/standards/fhir/DSTU2/resourcelist.html),
  /// [STU3](http://hl7.org/implement/standards/fhir/STU3/resourcelist.html),
  /// [R4](http://hl7.org/implement/standards/fhir/R4/resourcelist.html)). Must
  /// match the resource type in the provided content.
  /// Value must have pattern `^\[^/\]+$`.
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
    HttpBody request,
    core.String parent,
    core.String type, {
    core.String $fields,
  }) async {
    final _body =
        request == null ? null : convert.json.encode(request.toJson());
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (type == null) {
      throw core.ArgumentError('Parameter type is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/fhir/' +
        commons.Escaper.ecapeVariableReserved('$type');

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return HttpBody.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a FHIR resource.
  ///
  /// Implements the FHIR standard delete interaction
  /// ([DSTU2](http://hl7.org/implement/standards/fhir/DSTU2/http.html#delete),
  /// [STU3](http://hl7.org/implement/standards/fhir/STU3/http.html#delete),
  /// [R4](http://hl7.org/implement/standards/fhir/R4/http.html#delete)). Note:
  /// Unless resource versioning is disabled by setting the
  /// disable_resource_versioning flag on the FHIR store, the deleted resources
  /// will be moved to a history repository that can still be retrieved through
  /// vread and related methods, unless they are removed by the purge method.
  /// For samples that show how to call `delete`, see \[Deleting a FHIR
  /// resource\](/healthcare/docs/how-tos/fhir-resources#deleting_a_fhir_resource).
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the resource to delete.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/fhirStores/\[^/\]+/fhir/\[^/\]+/\[^/\]+$`.
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
  async.Future<HttpBody> delete(
    core.String name, {
    core.String $fields,
  }) async {
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return HttpBody.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Executes all the requests in the given Bundle.
  ///
  /// Implements the FHIR standard batch/transaction interaction
  /// ([DSTU2](http://hl7.org/implement/standards/fhir/DSTU2/http.html#transaction),
  /// [STU3](http://hl7.org/implement/standards/fhir/STU3/http.html#transaction),
  /// [R4](http://hl7.org/implement/standards/fhir/R4/http.html#transaction)).
  /// Supports all interactions within a bundle, except search. This method
  /// accepts Bundles of type `batch` and `transaction`, processing them
  /// according to the batch processing rules
  /// ([DSTU2](http://hl7.org/implement/standards/fhir/DSTU2/http.html#2.1.0.16.1),
  /// [STU3](http://hl7.org/implement/standards/fhir/STU3/http.html#2.21.0.17.1),
  /// [R4](http://hl7.org/implement/standards/fhir/R4/http.html#brules)) and
  /// transaction processing rules
  /// ([DSTU2](http://hl7.org/implement/standards/fhir/DSTU2/http.html#2.1.0.16.2),
  /// [STU3](http://hl7.org/implement/standards/fhir/STU3/http.html#2.21.0.17.2),
  /// [R4](http://hl7.org/implement/standards/fhir/R4/http.html#trules)). The
  /// request body must contain a JSON-encoded FHIR `Bundle` resource, and the
  /// request headers must contain `Content-Type: application/fhir+json`. For a
  /// batch bundle or a successful transaction the response body will contain a
  /// JSON-encoded representation of a `Bundle` resource of type
  /// `batch-response` or `transaction-response` containing one entry for each
  /// entry in the request, with the outcome of processing the entry. In the
  /// case of an error for a transaction bundle, the response body will contain
  /// a JSON-encoded `OperationOutcome` resource describing the reason for the
  /// error. If the request cannot be mapped to a valid API method on a FHIR
  /// store, a generic GCP error might be returned instead. For samples that
  /// show how to call `executeBundle`, see \[Managing FHIR resources using FHIR
  /// bundles\](/healthcare/docs/how-tos/fhir-bundles).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Name of the FHIR store in which this bundle will be executed.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/fhirStores/\[^/\]+$`.
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
  async.Future<HttpBody> executeBundle(
    HttpBody request,
    core.String parent, {
    core.String $fields,
  }) async {
    final _body =
        request == null ? null : convert.json.encode(request.toJson());
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/' + commons.Escaper.ecapeVariableReserved('$parent') + '/fhir';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return HttpBody.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists all the versions of a resource (including the current version and
  /// deleted versions) from the FHIR store.
  ///
  /// Implements the per-resource form of the FHIR standard history interaction
  /// ([DSTU2](http://hl7.org/implement/standards/fhir/DSTU2/http.html#history),
  /// [STU3](http://hl7.org/implement/standards/fhir/STU3/http.html#history),
  /// [R4](http://hl7.org/implement/standards/fhir/R4/http.html#history)). On
  /// success, the response body will contain a JSON-encoded representation of a
  /// `Bundle` resource of type `history`, containing the version history sorted
  /// from most recent to oldest versions. Errors generated by the FHIR store
  /// will contain a JSON-encoded `OperationOutcome` resource describing the
  /// reason for the error. If the request cannot be mapped to a valid API
  /// method on a FHIR store, a generic GCP error might be returned instead. For
  /// samples that show how to call `history`, see \[Listing FHIR resource
  /// versions\](/healthcare/docs/how-tos/fhir-resources#listing_fhir_resource_versions).
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the resource to retrieve.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/fhirStores/\[^/\]+/fhir/\[^/\]+/\[^/\]+$`.
  ///
  /// [P_at] - Only include resource versions that were current at some point
  /// during the time period specified in the date time value. The date
  /// parameter format is yyyy-mm-ddThh:mm:ss\[Z|(+|-)hh:mm\] Clients may
  /// specify any of the following: * An entire year: `_at=2019` * An entire
  /// month: `_at=2019-01` * A specific day: `_at=2019-01-20` * A specific
  /// second: `_at=2018-12-31T23:59:58Z`
  ///
  /// [P_count] - The maximum number of search results on a page. If not
  /// specified, 100 is used. May not be larger than 1000.
  ///
  /// [P_pageToken] - Used to retrieve the first, previous, next, or last page
  /// of resource versions when using pagination. Value should be set to the
  /// value of `_page_token` set in next or previous page links' URLs. Next and
  /// previous page are returned in the response bundle's links field, where
  /// `link.relation` is "previous" or "next". Omit `_page_token` if no previous
  /// request has been made.
  ///
  /// [P_since] - Only include resource versions that were created at or after
  /// the given instant in time. The instant in time uses the format
  /// YYYY-MM-DDThh:mm:ss.sss+zz:zz (for example 2015-02-07T13:28:17.239+02:00
  /// or 2017-01-01T00:00:00Z). The time must be specified to the second and
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
  async.Future<HttpBody> history(
    core.String name, {
    core.String P_at,
    core.int P_count,
    core.String P_pageToken,
    core.String P_since,
    core.String $fields,
  }) async {
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if (P_at != null) '_at': [P_at],
      if (P_count != null) '_count': ['${P_count}'],
      if (P_pageToken != null) '_page_token': [P_pageToken],
      if (P_since != null) '_since': [P_since],
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/' + commons.Escaper.ecapeVariableReserved('$name') + '/_history';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return HttpBody.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Updates part of an existing resource by applying the operations specified
  /// in a [JSON Patch](http://jsonpatch.com/) document.
  ///
  /// Implements the FHIR standard patch interaction
  /// ([STU3](http://hl7.org/implement/standards/fhir/STU3/http.html#patch),
  /// [R4](http://hl7.org/implement/standards/fhir/R4/http.html#patch)). DSTU2
  /// doesn't define a patch method, but the server supports it in the same way
  /// it supports STU3. The request body must contain a JSON Patch document, and
  /// the request headers must contain `Content-Type:
  /// application/json-patch+json`. On success, the response body will contain a
  /// JSON-encoded representation of the updated resource, including the
  /// server-assigned version ID. Errors generated by the FHIR store will
  /// contain a JSON-encoded `OperationOutcome` resource describing the reason
  /// for the error. If the request cannot be mapped to a valid API method on a
  /// FHIR store, a generic GCP error might be returned instead. For samples
  /// that show how to call `patch`, see \[Patching a FHIR
  /// resource\](/healthcare/docs/how-tos/fhir-resources#patching_a_fhir_resource).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the resource to update.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/fhirStores/\[^/\]+/fhir/\[^/\]+/\[^/\]+$`.
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
  async.Future<HttpBody> patch(
    HttpBody request,
    core.String name, {
    core.String $fields,
  }) async {
    final _body =
        request == null ? null : convert.json.encode(request.toJson());
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return HttpBody.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Gets the contents of a FHIR resource.
  ///
  /// Implements the FHIR standard read interaction
  /// ([DSTU2](http://hl7.org/implement/standards/fhir/DSTU2/http.html#read),
  /// [STU3](http://hl7.org/implement/standards/fhir/STU3/http.html#read),
  /// [R4](http://hl7.org/implement/standards/fhir/R4/http.html#read)). Also
  /// supports the FHIR standard conditional read interaction
  /// ([DSTU2](http://hl7.org/implement/standards/fhir/DSTU2/http.html#cread),
  /// [STU3](http://hl7.org/implement/standards/fhir/STU3/http.html#cread),
  /// [R4](http://hl7.org/implement/standards/fhir/R4/http.html#cread))
  /// specified by supplying an `If-Modified-Since` header with a date/time
  /// value or an `If-None-Match` header with an ETag value. On success, the
  /// response body will contain a JSON-encoded representation of the resource.
  /// Errors generated by the FHIR store will contain a JSON-encoded
  /// `OperationOutcome` resource describing the reason for the error. If the
  /// request cannot be mapped to a valid API method on a FHIR store, a generic
  /// GCP error might be returned instead. For samples that show how to call
  /// `read`, see \[Getting a FHIR
  /// resource\](/healthcare/docs/how-tos/fhir-resources#getting_a_fhir_resource).
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the resource to retrieve.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/fhirStores/\[^/\]+/fhir/\[^/\]+/\[^/\]+$`.
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
  async.Future<HttpBody> read(
    core.String name, {
    core.String $fields,
  }) async {
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return HttpBody.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Searches for resources in the given FHIR store according to criteria
  /// specified as query parameters.
  ///
  /// Implements the FHIR standard search interaction
  /// ([DSTU2](http://hl7.org/implement/standards/fhir/DSTU2/http.html#search),
  /// [STU3](http://hl7.org/implement/standards/fhir/STU3/http.html#search),
  /// [R4](http://hl7.org/implement/standards/fhir/R4/http.html#search)) using
  /// the search semantics described in the FHIR Search specification
  /// ([DSTU2](http://hl7.org/implement/standards/fhir/DSTU2/search.html),
  /// [STU3](http://hl7.org/implement/standards/fhir/STU3/search.html),
  /// [R4](http://hl7.org/implement/standards/fhir/R4/search.html)). Supports
  /// four methods of search defined by the specification: * `GET
  /// [base]?[parameters]` to search across all resources. * `GET
  /// [base]/[type]?[parameters]` to search resources of a specified type. *
  /// `POST [base]/_search?[parameters]` as an alternate form having the same
  /// semantics as the `GET` method across all resources. * `POST
  /// [base]/[type]/_search?[parameters]` as an alternate form having the same
  /// semantics as the `GET` method for the specified type. The `GET` and `POST`
  /// methods do not support compartment searches. The `POST` method does not
  /// support `application/x-www-form-urlencoded` search parameters. On success,
  /// the response body will contain a JSON-encoded representation of a `Bundle`
  /// resource of type `searchset`, containing the results of the search. Errors
  /// generated by the FHIR store will contain a JSON-encoded `OperationOutcome`
  /// resource describing the reason for the error. If the request cannot be
  /// mapped to a valid API method on a FHIR store, a generic GCP error might be
  /// returned instead. The server's capability statement, retrieved through
  /// capabilities, indicates what search parameters are supported on each FHIR
  /// resource. A list of all search parameters defined by the specification can
  /// be found in the FHIR Search Parameter Registry
  /// ([STU3](http://hl7.org/implement/standards/fhir/STU3/searchparameter-registry.html),
  /// [R4](http://hl7.org/implement/standards/fhir/R4/searchparameter-registry.html)).
  /// FHIR search parameters for DSTU2 can be found on each resource's
  /// definition page. Supported search modifiers: `:missing`, `:exact`,
  /// `:contains`, `:text`, `:in`, `:not-in`, `:above`, `:below`, `:[type]`,
  /// `:not`, and `:recurse`. Supported search result parameters: `_sort`,
  /// `_count`, `_include`, `_revinclude`, `_summary=text`, `_summary=data`, and
  /// `_elements`. The maximum number of search results returned defaults to
  /// 100, which can be overridden by the `_count` parameter up to a maximum
  /// limit of 1000. If there are additional results, the returned `Bundle` will
  /// contain pagination links. Resources with a total size larger than 5MB or a
  /// field count larger than 50,000 might not be fully searchable as the server
  /// might trim its generated search index in those cases. Note: FHIR resources
  /// are indexed asynchronously, so there might be a slight delay between the
  /// time a resource is created or changes and when the change is reflected in
  /// search results. For samples and detailed information, see \[Searching for
  /// FHIR resources\](/healthcare/docs/how-tos/fhir-search) and \[Advanced FHIR
  /// search features\](/healthcare/docs/how-tos/fhir-advanced-search).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Name of the FHIR store to retrieve resources from.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/fhirStores/\[^/\]+$`.
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
    SearchResourcesRequest request,
    core.String parent, {
    core.String $fields,
  }) async {
    final _body =
        request == null ? null : convert.json.encode(request.toJson());
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/fhir/_search';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return HttpBody.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Searches for resources in the given FHIR store according to criteria
  /// specified as query parameters.
  ///
  /// Implements the FHIR standard search interaction
  /// ([DSTU2](http://hl7.org/implement/standards/fhir/DSTU2/http.html#search),
  /// [STU3](http://hl7.org/implement/standards/fhir/STU3/http.html#search),
  /// [R4](http://hl7.org/implement/standards/fhir/R4/http.html#search)) using
  /// the search semantics described in the FHIR Search specification
  /// ([DSTU2](http://hl7.org/implement/standards/fhir/DSTU2/search.html),
  /// [STU3](http://hl7.org/implement/standards/fhir/STU3/search.html),
  /// [R4](http://hl7.org/implement/standards/fhir/R4/search.html)). Supports
  /// four methods of search defined by the specification: * `GET
  /// [base]?[parameters]` to search across all resources. * `GET
  /// [base]/[type]?[parameters]` to search resources of a specified type. *
  /// `POST [base]/_search?[parameters]` as an alternate form having the same
  /// semantics as the `GET` method across all resources. * `POST
  /// [base]/[type]/_search?[parameters]` as an alternate form having the same
  /// semantics as the `GET` method for the specified type. The `GET` and `POST`
  /// methods do not support compartment searches. The `POST` method does not
  /// support `application/x-www-form-urlencoded` search parameters. On success,
  /// the response body will contain a JSON-encoded representation of a `Bundle`
  /// resource of type `searchset`, containing the results of the search. Errors
  /// generated by the FHIR store will contain a JSON-encoded `OperationOutcome`
  /// resource describing the reason for the error. If the request cannot be
  /// mapped to a valid API method on a FHIR store, a generic GCP error might be
  /// returned instead. The server's capability statement, retrieved through
  /// capabilities, indicates what search parameters are supported on each FHIR
  /// resource. A list of all search parameters defined by the specification can
  /// be found in the FHIR Search Parameter Registry
  /// ([STU3](http://hl7.org/implement/standards/fhir/STU3/searchparameter-registry.html),
  /// [R4](http://hl7.org/implement/standards/fhir/R4/searchparameter-registry.html)).
  /// FHIR search parameters for DSTU2 can be found on each resource's
  /// definition page. Supported search modifiers: `:missing`, `:exact`,
  /// `:contains`, `:text`, `:in`, `:not-in`, `:above`, `:below`, `:[type]`,
  /// `:not`, and `:recurse`. Supported search result parameters: `_sort`,
  /// `_count`, `_include`, `_revinclude`, `_summary=text`, `_summary=data`, and
  /// `_elements`. The maximum number of search results returned defaults to
  /// 100, which can be overridden by the `_count` parameter up to a maximum
  /// limit of 1000. If there are additional results, the returned `Bundle` will
  /// contain pagination links. Resources with a total size larger than 5MB or a
  /// field count larger than 50,000 might not be fully searchable as the server
  /// might trim its generated search index in those cases. Note: FHIR resources
  /// are indexed asynchronously, so there might be a slight delay between the
  /// time a resource is created or changes and when the change is reflected in
  /// search results. For samples and detailed information, see \[Searching for
  /// FHIR resources\](/healthcare/docs/how-tos/fhir-search) and \[Advanced FHIR
  /// search features\](/healthcare/docs/how-tos/fhir-advanced-search).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Name of the FHIR store to retrieve resources from.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/fhirStores/\[^/\]+$`.
  ///
  /// [resourceType] - The FHIR resource type to search, such as Patient or
  /// Observation. For a complete list, see the FHIR Resource Index
  /// ([DSTU2](http://hl7.org/implement/standards/fhir/DSTU2/resourcelist.html),
  /// [STU3](http://hl7.org/implement/standards/fhir/STU3/resourcelist.html),
  /// [R4](http://hl7.org/implement/standards/fhir/R4/resourcelist.html)).
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
  async.Future<HttpBody> searchType(
    SearchResourcesRequest request,
    core.String parent,
    core.String resourceType, {
    core.String $fields,
  }) async {
    final _body =
        request == null ? null : convert.json.encode(request.toJson());
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (resourceType == null) {
      throw core.ArgumentError('Parameter resourceType is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/fhir/' +
        commons.Escaper.ecapeVariable('$resourceType') +
        '/_search';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return HttpBody.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Updates the entire contents of a resource.
  ///
  /// Implements the FHIR standard update interaction
  /// ([DSTU2](http://hl7.org/implement/standards/fhir/DSTU2/http.html#update),
  /// [STU3](http://hl7.org/implement/standards/fhir/STU3/http.html#update),
  /// [R4](http://hl7.org/implement/standards/fhir/R4/http.html#update)). If the
  /// specified resource does not exist and the FHIR store has
  /// enable_update_create set, creates the resource with the client-specified
  /// ID. It is strongly advised not to include or encode any sensitive data
  /// such as patient identifiers in client-specified resource IDs. Those IDs
  /// are part of the FHIR resource path recorded in Cloud audit logs and Cloud
  /// Pub/Sub notifications. Those IDs can also be contained in reference fields
  /// within other resources. The request body must contain a JSON-encoded FHIR
  /// resource, and the request headers must contain `Content-Type:
  /// application/fhir+json`. The resource must contain an `id` element having
  /// an identical value to the ID in the REST path of the request. On success,
  /// the response body will contain a JSON-encoded representation of the
  /// updated resource, including the server-assigned version ID. Errors
  /// generated by the FHIR store will contain a JSON-encoded `OperationOutcome`
  /// resource describing the reason for the error. If the request cannot be
  /// mapped to a valid API method on a FHIR store, a generic GCP error might be
  /// returned instead. For samples that show how to call `update`, see
  /// \[Updating a FHIR
  /// resource\](/healthcare/docs/how-tos/fhir-resources#updating_a_fhir_resource).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the resource to update.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/fhirStores/\[^/\]+/fhir/\[^/\]+/\[^/\]+$`.
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
  async.Future<HttpBody> update(
    HttpBody request,
    core.String name, {
    core.String $fields,
  }) async {
    final _body =
        request == null ? null : convert.json.encode(request.toJson());
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = await _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
    );
    return HttpBody.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Gets the contents of a version (current or historical) of a FHIR resource
  /// by version ID.
  ///
  /// Implements the FHIR standard vread interaction
  /// ([DSTU2](http://hl7.org/implement/standards/fhir/DSTU2/http.html#vread),
  /// [STU3](http://hl7.org/implement/standards/fhir/STU3/http.html#vread),
  /// [R4](http://hl7.org/implement/standards/fhir/R4/http.html#vread)). On
  /// success, the response body will contain a JSON-encoded representation of
  /// the resource. Errors generated by the FHIR store will contain a
  /// JSON-encoded `OperationOutcome` resource describing the reason for the
  /// error. If the request cannot be mapped to a valid API method on a FHIR
  /// store, a generic GCP error might be returned instead. For samples that
  /// show how to call `vread`, see \[Retrieving a FHIR resource
  /// version\](/healthcare/docs/how-tos/fhir-resources#retrieving_a_fhir_resource_version).
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the resource version to retrieve.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/fhirStores/\[^/\]+/fhir/\[^/\]+/\[^/\]+/_history/\[^/\]+$`.
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
  async.Future<HttpBody> vread(
    core.String name, {
    core.String $fields,
  }) async {
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return HttpBody.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsDatasetsHl7V2StoresResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsDatasetsHl7V2StoresMessagesResource get messages =>
      ProjectsLocationsDatasetsHl7V2StoresMessagesResource(_requester);

  ProjectsLocationsDatasetsHl7V2StoresResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new HL7v2 store within the parent dataset.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the dataset this HL7v2 store belongs to.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+$`.
  ///
  /// [hl7V2StoreId] - The ID of the HL7v2 store that is being created. The
  /// string must match the following regex: `[\p{L}\p{N}_\-\.]{1,256}`.
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
  async.Future<Hl7V2Store> create(
    Hl7V2Store request,
    core.String parent, {
    core.String hl7V2StoreId,
    core.String $fields,
  }) async {
    final _body =
        request == null ? null : convert.json.encode(request.toJson());
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if (hl7V2StoreId != null) 'hl7V2StoreId': [hl7V2StoreId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/hl7V2Stores';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Hl7V2Store.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the specified HL7v2 store and removes all messages that it
  /// contains.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the HL7v2 store to delete.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/hl7V2Stores/\[^/\]+$`.
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
  }) async {
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Empty.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Gets the specified HL7v2 store.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the HL7v2 store to get.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/hl7V2Stores/\[^/\]+$`.
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
  async.Future<Hl7V2Store> get(
    core.String name, {
    core.String $fields,
  }) async {
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Hl7V2Store.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Gets the access control policy for a resource.
  ///
  /// Returns an empty policy if the resource exists and does not have a policy
  /// set.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/hl7V2Stores/\[^/\]+$`.
  ///
  /// [options_requestedPolicyVersion] - Optional. The policy format version to
  /// be returned. Valid values are 0, 1, and 3. Requests specifying an invalid
  /// value will be rejected. Requests for policies with any conditional
  /// bindings must specify version 3. Policies without any conditional bindings
  /// may specify any valid value or leave the field unset. To learn which
  /// resources support conditions in their IAM policies, see the
  /// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
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
  async.Future<Policy> getIamPolicy(
    core.String resource, {
    core.int options_requestedPolicyVersion,
    core.String $fields,
  }) async {
    if (resource == null) {
      throw core.ArgumentError('Parameter resource is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if (options_requestedPolicyVersion != null)
        'options.requestedPolicyVersion': ['${options_requestedPolicyVersion}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':getIamPolicy';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Policy.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists the HL7v2 stores in the given dataset.
  ///
  /// Request parameters:
  ///
  /// [parent] - Name of the dataset.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+$`.
  ///
  /// [filter] - Restricts stores returned to those matching a filter. The
  /// following syntax is available: * A string field value can be written as
  /// text inside quotation marks, for example `"query text"`. The only valid
  /// relational operation for text fields is equality (`=`), where text is
  /// searched within the field, rather than having the field be equal to the
  /// text. For example, `"Comment = great"` returns messages with `great` in
  /// the comment field. * A number field value can be written as an integer, a
  /// decimal, or an exponential. The valid relational operators for number
  /// fields are the equality operator (`=`), along with the less than/greater
  /// than operators (`<`, `<=`, `>`, `>=`). Note that there is no inequality
  /// (`!=`) operator. You can prepend the `NOT` operator to an expression to
  /// negate it. * A date field value must be written in `yyyy-mm-dd` form.
  /// Fields with date and time use the RFC3339 time format. Leading zeros are
  /// required for one-digit months and days. The valid relational operators for
  /// date fields are the equality operator (`=`) , along with the less
  /// than/greater than operators (`<`, `<=`, `>`, `>=`). Note that there is no
  /// inequality (`!=`) operator. You can prepend the `NOT` operator to an
  /// expression to negate it. * Multiple field query expressions can be
  /// combined in one query by adding `AND` or `OR` operators between the
  /// expressions. If a boolean operator appears within a quoted string, it is
  /// not treated as special, it's just another part of the character string to
  /// be matched. You can prepend the `NOT` operator to an expression to negate
  /// it. Only filtering on labels is supported. For example,
  /// `labels.key=value`.
  ///
  /// [pageSize] - Limit on the number of HL7v2 stores to return in a single
  /// response. If not specified, 100 is used. May not be larger than 1000.
  ///
  /// [pageToken] - The next_page_token value returned from the previous List
  /// request, if any.
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
  async.Future<ListHl7V2StoresResponse> list(
    core.String parent, {
    core.String filter,
    core.int pageSize,
    core.String pageToken,
    core.String $fields,
  }) async {
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/hl7V2Stores';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListHl7V2StoresResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates the HL7v2 store.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Resource name of the HL7v2 store, of the form
  /// `projects/{project_id}/datasets/{dataset_id}/hl7V2Stores/{hl7v2_store_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/hl7V2Stores/\[^/\]+$`.
  ///
  /// [updateMask] - The update mask applies to the resource. For the
  /// `FieldMask` definition, see
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
  async.Future<Hl7V2Store> patch(
    Hl7V2Store request,
    core.String name, {
    core.String updateMask,
    core.String $fields,
  }) async {
    final _body =
        request == null ? null : convert.json.encode(request.toJson());
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return Hl7V2Store.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Sets the access control policy on the specified resource.
  ///
  /// Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`,
  /// and `PERMISSION_DENIED` errors.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/hl7V2Stores/\[^/\]+$`.
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
    SetIamPolicyRequest request,
    core.String resource, {
    core.String $fields,
  }) async {
    final _body =
        request == null ? null : convert.json.encode(request.toJson());
    if (resource == null) {
      throw core.ArgumentError('Parameter resource is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':setIamPolicy';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Policy.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Returns permissions that a caller has on the specified resource.
  ///
  /// If the resource does not exist, this will return an empty set of
  /// permissions, not a `NOT_FOUND` error. Note: This operation is designed to
  /// be used for building permission-aware UIs and command-line tools, not for
  /// authorization checking. This operation may "fail open" without warning.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/hl7V2Stores/\[^/\]+$`.
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
    TestIamPermissionsRequest request,
    core.String resource, {
    core.String $fields,
  }) async {
    final _body =
        request == null ? null : convert.json.encode(request.toJson());
    if (resource == null) {
      throw core.ArgumentError('Parameter resource is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':testIamPermissions';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return TestIamPermissionsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsDatasetsHl7V2StoresMessagesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsDatasetsHl7V2StoresMessagesResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Parses and stores an HL7v2 message.
  ///
  /// This method triggers an asynchronous notification to any Cloud Pub/Sub
  /// topic configured in
  /// projects.locations.datasets.hl7V2Stores.Hl7V2NotificationConfig, if the
  /// filtering matches the message. If an MLLP adapter is configured to listen
  /// to a Cloud Pub/Sub topic, the adapter transmits the message when a
  /// notification is received.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the dataset this message belongs to.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/hl7V2Stores/\[^/\]+$`.
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
  async.Future<Message> create(
    CreateMessageRequest request,
    core.String parent, {
    core.String $fields,
  }) async {
    final _body =
        request == null ? null : convert.json.encode(request.toJson());
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/' + commons.Escaper.ecapeVariableReserved('$parent') + '/messages';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Message.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes an HL7v2 message.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the HL7v2 message to delete.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/hl7V2Stores/\[^/\]+/messages/\[^/\]+$`.
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
  }) async {
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Empty.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Gets an HL7v2 message.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the HL7v2 message to retrieve.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/hl7V2Stores/\[^/\]+/messages/\[^/\]+$`.
  ///
  /// [view] - Specifies which parts of the Message resource to return in the
  /// response. When unspecified, equivalent to FULL.
  /// Possible string values are:
  /// - "MESSAGE_VIEW_UNSPECIFIED" : Not specified, equivalent to FULL.
  /// - "RAW_ONLY" : Server responses include all the message fields except
  /// parsed_data field.
  /// - "PARSED_ONLY" : Server responses include all the message fields except
  /// data field.
  /// - "FULL" : Server responses include all the message fields.
  /// - "BASIC" : Server responses include only the name field.
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
  async.Future<Message> get(
    core.String name, {
    core.String view,
    core.String $fields,
  }) async {
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Message.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Parses and stores an HL7v2 message.
  ///
  /// This method triggers an asynchronous notification to any Cloud Pub/Sub
  /// topic configured in
  /// projects.locations.datasets.hl7V2Stores.Hl7V2NotificationConfig, if the
  /// filtering matches the message. If an MLLP adapter is configured to listen
  /// to a Cloud Pub/Sub topic, the adapter transmits the message when a
  /// notification is received. This method also generates a response containing
  /// an HL7v2 acknowledgement (`ACK`) message when successful or a negative
  /// acknowledgement (`NACK`) message in case of error, suitable for replying
  /// to HL7v2 interface systems that expect these acknowledgements.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the HL7v2 store this message belongs to.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/hl7V2Stores/\[^/\]+$`.
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
    IngestMessageRequest request,
    core.String parent, {
    core.String $fields,
  }) async {
    final _body =
        request == null ? null : convert.json.encode(request.toJson());
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/messages:ingest';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return IngestMessageResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists all the messages in the given HL7v2 store with support for
  /// filtering.
  ///
  /// Note: HL7v2 messages are indexed asynchronously, so there might be a
  /// slight delay between the time a message is created and when it can be
  /// found through a filter.
  ///
  /// Request parameters:
  ///
  /// [parent] - Name of the HL7v2 store to retrieve messages from.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/hl7V2Stores/\[^/\]+$`.
  ///
  /// [filter] - Restricts messages returned to those matching a filter. The
  /// following syntax is available: * A string field value can be written as
  /// text inside quotation marks, for example `"query text"`. The only valid
  /// relational operation for text fields is equality (`=`), where text is
  /// searched within the field, rather than having the field be equal to the
  /// text. For example, `"Comment = great"` returns messages with `great` in
  /// the comment field. * A number field value can be written as an integer, a
  /// decimal, or an exponential. The valid relational operators for number
  /// fields are the equality operator (`=`), along with the less than/greater
  /// than operators (`<`, `<=`, `>`, `>=`). Note that there is no inequality
  /// (`!=`) operator. You can prepend the `NOT` operator to an expression to
  /// negate it. * A date field value must be written in `yyyy-mm-dd` form.
  /// Fields with date and time use the RFC3339 time format. Leading zeros are
  /// required for one-digit months and days. The valid relational operators for
  /// date fields are the equality operator (`=`) , along with the less
  /// than/greater than operators (`<`, `<=`, `>`, `>=`). Note that there is no
  /// inequality (`!=`) operator. You can prepend the `NOT` operator to an
  /// expression to negate it. * Multiple field query expressions can be
  /// combined in one query by adding `AND` or `OR` operators between the
  /// expressions. If a boolean operator appears within a quoted string, it is
  /// not treated as special, it's just another part of the character string to
  /// be matched. You can prepend the `NOT` operator to an expression to negate
  /// it. Fields/functions available for filtering are: * `message_type`, from
  /// the MSH-9.1 field. For example, `NOT message_type = "ADT"`. * `send_date`
  /// or `sendDate`, the YYYY-MM-DD date the message was sent in the dataset's
  /// time_zone, from the MSH-7 segment. For example, `send_date <
  /// "2017-01-02"`. * `send_time`, the timestamp when the message was sent,
  /// using the RFC3339 time format for comparisons, from the MSH-7 segment. For
  /// example, `send_time < "2017-01-02T00:00:00-05:00"`. * `send_facility`, the
  /// care center that the message came from, from the MSH-4 segment. For
  /// example, `send_facility = "ABC"`. * `PatientId(value, type)`, which
  /// matches if the message lists a patient having an ID of the given value and
  /// type in the PID-2, PID-3, or PID-4 segments. For example,
  /// `PatientId("123456", "MRN")`. * `labels.x`, a string value of the label
  /// with key `x` as set using the Message.labels map. For example,
  /// `labels."priority"="high"`. The operator `:*` can be used to assert the
  /// existence of a label. For example, `labels."priority":*`.
  ///
  /// [orderBy] - Orders messages returned by the specified order_by clause.
  /// Syntax: https://cloud.google.com/apis/design/design_patterns#sorting_order
  /// Fields available for ordering are: * `send_time`
  ///
  /// [pageSize] - Limit on the number of messages to return in a single
  /// response. If not specified, 100 is used. May not be larger than 1000.
  ///
  /// [pageToken] - The next_page_token value returned from the previous List
  /// request, if any.
  ///
  /// [view] - Specifies the parts of the Message to return in the response.
  /// When unspecified, equivalent to BASIC. Setting this to anything other than
  /// BASIC with a `page_size` larger than the default can generate a large
  /// response, which impacts the performance of this method.
  /// Possible string values are:
  /// - "MESSAGE_VIEW_UNSPECIFIED" : Not specified, equivalent to FULL.
  /// - "RAW_ONLY" : Server responses include all the message fields except
  /// parsed_data field.
  /// - "PARSED_ONLY" : Server responses include all the message fields except
  /// data field.
  /// - "FULL" : Server responses include all the message fields.
  /// - "BASIC" : Server responses include only the name field.
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
  async.Future<ListMessagesResponse> list(
    core.String parent, {
    core.String filter,
    core.String orderBy,
    core.int pageSize,
    core.String pageToken,
    core.String view,
    core.String $fields,
  }) async {
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/' + commons.Escaper.ecapeVariableReserved('$parent') + '/messages';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListMessagesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Update the message.
  ///
  /// The contents of the message in Message.data and data extracted from the
  /// contents such as Message.create_time cannot be altered. Only the
  /// Message.labels field is allowed to be updated. The labels in the request
  /// are merged with the existing set of labels. Existing labels with the same
  /// keys are updated.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Resource name of the Message, of the form
  /// `projects/{project_id}/datasets/{dataset_id}/hl7V2Stores/{hl7_v2_store_id}/messages/{message_id}`.
  /// Assigned by the server.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/hl7V2Stores/\[^/\]+/messages/\[^/\]+$`.
  ///
  /// [updateMask] - The update mask applies to the resource. For the
  /// `FieldMask` definition, see
  /// https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask
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
  async.Future<Message> patch(
    Message request,
    core.String name, {
    core.String updateMask,
    core.String $fields,
  }) async {
    final _body =
        request == null ? null : convert.json.encode(request.toJson());
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return Message.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsDatasetsOperationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsDatasetsOperationsResource(commons.ApiRequester client)
      : _requester = client;

  /// Starts asynchronous cancellation on a long-running operation.
  ///
  /// The server makes a best effort to cancel the operation, but success is not
  /// guaranteed. If the server doesn't support this method, it returns
  /// `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation
  /// or other methods to check whether the cancellation succeeded or whether
  /// the operation completed despite cancellation. On successful cancellation,
  /// the operation is not deleted; instead, it becomes an operation with an
  /// Operation.error value with a google.rpc.Status.code of 1, corresponding to
  /// `Code.CANCELLED`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource to be cancelled.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/operations/\[^/\]+$`.
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
  async.Future<Empty> cancel(
    CancelOperationRequest request,
    core.String name, {
    core.String $fields,
  }) async {
    final _body =
        request == null ? null : convert.json.encode(request.toJson());
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/' + commons.Escaper.ecapeVariableReserved('$name') + ':cancel';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Empty.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Gets the latest state of a long-running operation.
  ///
  /// Clients can use this method to poll the operation result at intervals as
  /// recommended by the API service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/operations/\[^/\]+$`.
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
  async.Future<Operation> get(
    core.String name, {
    core.String $fields,
  }) async {
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists operations that match the specified filter in the request.
  ///
  /// If the server doesn't support this method, it returns `UNIMPLEMENTED`.
  /// NOTE: the `name` binding allows API services to override the binding to
  /// use different resource name schemes, such as `users / * /operations`. To
  /// override the binding, API services can add a binding such as
  /// `"/v1/{name=users / * }/operations"` to their service configuration. For
  /// backwards compatibility, the default name includes the operations
  /// collection id, however overriding users must ensure the name binding is
  /// the parent resource, without the operations collection id.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation's parent resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+$`.
  ///
  /// [filter] - The standard list filter.
  ///
  /// [pageSize] - The standard list page size.
  ///
  /// [pageToken] - The standard list page token.
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
  async.Future<ListOperationsResponse> list(
    core.String name, {
    core.String filter,
    core.int pageSize,
    core.String pageToken,
    core.String $fields,
  }) async {
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/' + commons.Escaper.ecapeVariableReserved('$name') + '/operations';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListOperationsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

/// Specifies the audit configuration for a service.
///
/// The configuration determines which permission types are logged, and what
/// identities, if any, are exempted from logging. An AuditConfig must have one
/// or more AuditLogConfigs. If there are AuditConfigs for both `allServices`
/// and a specific service, the union of the two AuditConfigs is used for that
/// service: the log_types specified in each AuditConfig are enabled, and the
/// exempted_members in each AuditLogConfig are exempted. Example Policy with
/// multiple AuditConfigs: { "audit_configs": \[ { "service": "allServices",
/// "audit_log_configs": \[ { "log_type": "DATA_READ", "exempted_members": \[
/// "user:jose@example.com" \] }, { "log_type": "DATA_WRITE" }, { "log_type":
/// "ADMIN_READ" } \] }, { "service": "sampleservice.googleapis.com",
/// "audit_log_configs": \[ { "log_type": "DATA_READ" }, { "log_type":
/// "DATA_WRITE", "exempted_members": \[ "user:aliya@example.com" \] } \] } \] }
/// For sampleservice, this policy enables DATA_READ, DATA_WRITE and ADMIN_READ
/// logging. It also exempts jose@example.com from DATA_READ logging, and
/// aliya@example.com from DATA_WRITE logging.
class AuditConfig {
  /// The configuration for logging of each type of permission.
  core.List<AuditLogConfig> auditLogConfigs;

  /// Specifies a service that will be enabled for audit logging.
  ///
  /// For example, `storage.googleapis.com`, `cloudsql.googleapis.com`.
  /// `allServices` is a special value that covers all services.
  core.String service;

  AuditConfig();

  AuditConfig.fromJson(core.Map _json) {
    if (_json.containsKey('auditLogConfigs')) {
      auditLogConfigs = (_json['auditLogConfigs'] as core.List)
          .map<AuditLogConfig>((value) => AuditLogConfig.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('service')) {
      service = _json['service'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (auditLogConfigs != null)
          'auditLogConfigs':
              auditLogConfigs.map((value) => value.toJson()).toList(),
        if (service != null) 'service': service,
      };
}

/// Provides the configuration for logging a type of permissions.
///
/// Example: { "audit_log_configs": \[ { "log_type": "DATA_READ",
/// "exempted_members": \[ "user:jose@example.com" \] }, { "log_type":
/// "DATA_WRITE" } \] } This enables 'DATA_READ' and 'DATA_WRITE' logging, while
/// exempting jose@example.com from DATA_READ logging.
class AuditLogConfig {
  /// Specifies the identities that do not cause logging for this type of
  /// permission.
  ///
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
    if (_json.containsKey('exemptedMembers')) {
      exemptedMembers = (_json['exemptedMembers'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('logType')) {
      logType = _json['logType'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (exemptedMembers != null) 'exemptedMembers': exemptedMembers,
        if (logType != null) 'logType': logType,
      };
}

/// Associates `members` with a `role`.
class Binding {
  /// The condition that is associated with this binding.
  ///
  /// If the condition evaluates to `true`, then this binding applies to the
  /// current request. If the condition evaluates to `false`, then this binding
  /// does not apply to the current request. However, a different role binding
  /// might grant the same role to one or more of the members in this binding.
  /// To learn which resources support conditions in their IAM policies, see the
  /// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
  Expr condition;

  /// Specifies the identities requesting access for a Cloud Platform resource.
  ///
  /// `members` can have the following values: * `allUsers`: A special
  /// identifier that represents anyone who is on the internet; with or without
  /// a Google account. * `allAuthenticatedUsers`: A special identifier that
  /// represents anyone who is authenticated with a Google account or a service
  /// account. * `user:{emailid}`: An email address that represents a specific
  /// Google account. For example, `alice@example.com` . *
  /// `serviceAccount:{emailid}`: An email address that represents a service
  /// account. For example, `my-other-app@appspot.gserviceaccount.com`. *
  /// `group:{emailid}`: An email address that represents a Google group. For
  /// example, `admins@example.com`. * `deleted:user:{emailid}?uid={uniqueid}`:
  /// An email address (plus unique identifier) representing a user that has
  /// been recently deleted. For example,
  /// `alice@example.com?uid=123456789012345678901`. If the user is recovered,
  /// this value reverts to `user:{emailid}` and the recovered user retains the
  /// role in the binding. * `deleted:serviceAccount:{emailid}?uid={uniqueid}`:
  /// An email address (plus unique identifier) representing a service account
  /// that has been recently deleted. For example,
  /// `my-other-app@appspot.gserviceaccount.com?uid=123456789012345678901`. If
  /// the service account is undeleted, this value reverts to
  /// `serviceAccount:{emailid}` and the undeleted service account retains the
  /// role in the binding. * `deleted:group:{emailid}?uid={uniqueid}`: An email
  /// address (plus unique identifier) representing a Google group that has been
  /// recently deleted. For example,
  /// `admins@example.com?uid=123456789012345678901`. If the group is recovered,
  /// this value reverts to `group:{emailid}` and the recovered group retains
  /// the role in the binding. * `domain:{domain}`: The G Suite domain (primary)
  /// that represents all the users of that domain. For example, `google.com` or
  /// `example.com`.
  core.List<core.String> members;

  /// Role that is assigned to `members`.
  ///
  /// For example, `roles/viewer`, `roles/editor`, or `roles/owner`.
  core.String role;

  Binding();

  Binding.fromJson(core.Map _json) {
    if (_json.containsKey('condition')) {
      condition = Expr.fromJson(
          _json['condition'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('members')) {
      members = (_json['members'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('role')) {
      role = _json['role'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (condition != null) 'condition': condition.toJson(),
        if (members != null) 'members': members,
        if (role != null) 'role': role,
      };
}

/// The request message for Operations.CancelOperation.
class CancelOperationRequest {
  CancelOperationRequest();

  CancelOperationRequest.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.Object> toJson() => {};
}

/// Mask a string by replacing its characters with a fixed character.
class CharacterMaskConfig {
  /// Character to mask the sensitive values.
  ///
  /// If not supplied, defaults to "*".
  core.String maskingCharacter;

  CharacterMaskConfig();

  CharacterMaskConfig.fromJson(core.Map _json) {
    if (_json.containsKey('maskingCharacter')) {
      maskingCharacter = _json['maskingCharacter'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (maskingCharacter != null) 'maskingCharacter': maskingCharacter,
      };
}

/// Creates a new message.
class CreateMessageRequest {
  /// HL7v2 message.
  Message message;

  CreateMessageRequest();

  CreateMessageRequest.fromJson(core.Map _json) {
    if (_json.containsKey('message')) {
      message = Message.fromJson(
          _json['message'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (message != null) 'message': message.toJson(),
      };
}

/// Pseudonymization method that generates surrogates via cryptographic hashing.
///
/// Uses SHA-256. Outputs a base64-encoded representation of the hashed output
/// (for example, `L7k0BHmF1ha5U3NfGykjro4xWi1MPVQPjhMAZbSV9mM=`).
class CryptoHashConfig {
  /// An AES 128/192/256 bit key.
  ///
  /// Causes the hash to be computed based on this key. A default key is
  /// generated for each Deidentify operation and is used wherever crypto_key is
  /// not specified.
  core.String cryptoKey;
  core.List<core.int> get cryptoKeyAsBytes => convert.base64.decode(cryptoKey);

  set cryptoKeyAsBytes(core.List<core.int> _bytes) {
    cryptoKey =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  CryptoHashConfig();

  CryptoHashConfig.fromJson(core.Map _json) {
    if (_json.containsKey('cryptoKey')) {
      cryptoKey = _json['cryptoKey'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (cryptoKey != null) 'cryptoKey': cryptoKey,
      };
}

/// A message representing a health dataset.
///
/// A health dataset represents a collection of healthcare data pertaining to
/// one or more patients. This may include multiple modalities of healthcare
/// data, such as electronic medical records or medical imaging data.
class Dataset {
  /// Resource name of the dataset, of the form
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}`.
  core.String name;

  /// The default timezone used by this dataset.
  ///
  /// Must be a either a valid IANA time zone name such as "America/New_York" or
  /// empty, which defaults to UTC. This is used for parsing times in resources,
  /// such as HL7 messages, where no explicit timezone is specified.
  core.String timeZone;

  Dataset();

  Dataset.fromJson(core.Map _json) {
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('timeZone')) {
      timeZone = _json['timeZone'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (name != null) 'name': name,
        if (timeZone != null) 'timeZone': timeZone,
      };
}

/// Shift a date forward or backward in time by a random amount which is
/// consistent for a given patient and crypto key combination.
class DateShiftConfig {
  /// An AES 128/192/256 bit key.
  ///
  /// Causes the shift to be computed based on this key and the patient ID. A
  /// default key is generated for each Deidentify operation and is used
  /// wherever crypto_key is not specified.
  core.String cryptoKey;
  core.List<core.int> get cryptoKeyAsBytes => convert.base64.decode(cryptoKey);

  set cryptoKeyAsBytes(core.List<core.int> _bytes) {
    cryptoKey =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  DateShiftConfig();

  DateShiftConfig.fromJson(core.Map _json) {
    if (_json.containsKey('cryptoKey')) {
      cryptoKey = _json['cryptoKey'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (cryptoKey != null) 'cryptoKey': cryptoKey,
      };
}

/// Configures de-id options specific to different types of content.
///
/// Each submessage customizes the handling of an
/// https://tools.ietf.org/html/rfc6838 media type or subtype. Configs are
/// applied in a nested manner at runtime.
class DeidentifyConfig {
  /// Configures de-id of application/DICOM content.
  DicomConfig dicom;

  /// Configures de-id of application/FHIR content.
  FhirConfig fhir;

  /// Configures de-identification of image pixels wherever they are found in
  /// the source_dataset.
  ImageConfig image;

  /// Configures de-identification of text wherever it is found in the
  /// source_dataset.
  TextConfig text;

  DeidentifyConfig();

  DeidentifyConfig.fromJson(core.Map _json) {
    if (_json.containsKey('dicom')) {
      dicom = DicomConfig.fromJson(
          _json['dicom'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('fhir')) {
      fhir = FhirConfig.fromJson(
          _json['fhir'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('image')) {
      image = ImageConfig.fromJson(
          _json['image'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('text')) {
      text = TextConfig.fromJson(
          _json['text'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (dicom != null) 'dicom': dicom.toJson(),
        if (fhir != null) 'fhir': fhir.toJson(),
        if (image != null) 'image': image.toJson(),
        if (text != null) 'text': text.toJson(),
      };
}

/// Redacts identifying information from the specified dataset.
class DeidentifyDatasetRequest {
  /// Deidentify configuration.
  DeidentifyConfig config;

  /// The name of the dataset resource to create and write the redacted data to.
  ///
  /// * The destination dataset must not exist. * The destination dataset must
  /// be in the same project and location as the source dataset. De-identifying
  /// data across multiple projects or locations is not supported.
  core.String destinationDataset;

  DeidentifyDatasetRequest();

  DeidentifyDatasetRequest.fromJson(core.Map _json) {
    if (_json.containsKey('config')) {
      config = DeidentifyConfig.fromJson(
          _json['config'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('destinationDataset')) {
      destinationDataset = _json['destinationDataset'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (config != null) 'config': config.toJson(),
        if (destinationDataset != null)
          'destinationDataset': destinationDataset,
      };
}

/// Creates a new DICOM store with sensitive information de-identified.
class DeidentifyDicomStoreRequest {
  /// De-identify configuration.
  DeidentifyConfig config;

  /// The name of the DICOM store to create and write the redacted data to.
  ///
  /// For example,
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}`.
  /// * The destination dataset must exist. * The source dataset and destination
  /// dataset must both reside in the same project. De-identifying data across
  /// multiple projects is not supported. * The destination DICOM store must not
  /// exist. * The caller must have the necessary permissions to create the
  /// destination DICOM store.
  core.String destinationStore;

  /// Filter configuration.
  DicomFilterConfig filterConfig;

  DeidentifyDicomStoreRequest();

  DeidentifyDicomStoreRequest.fromJson(core.Map _json) {
    if (_json.containsKey('config')) {
      config = DeidentifyConfig.fromJson(
          _json['config'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('destinationStore')) {
      destinationStore = _json['destinationStore'] as core.String;
    }
    if (_json.containsKey('filterConfig')) {
      filterConfig = DicomFilterConfig.fromJson(
          _json['filterConfig'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (config != null) 'config': config.toJson(),
        if (destinationStore != null) 'destinationStore': destinationStore,
        if (filterConfig != null) 'filterConfig': filterConfig.toJson(),
      };
}

/// Creates a new FHIR store with sensitive information de-identified.
class DeidentifyFhirStoreRequest {
  /// Deidentify configuration.
  DeidentifyConfig config;

  /// The name of the FHIR store to create and write the redacted data to.
  ///
  /// For example,
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/fhirStores/{fhir_store_id}`.
  /// * The destination dataset must exist. * The source dataset and destination
  /// dataset must both reside in the same project. De-identifying data across
  /// multiple projects is not supported. * The destination FHIR store must
  /// exist. * The caller must have the healthcare.fhirResources.update
  /// permission to write to the destination FHIR store.
  core.String destinationStore;

  /// A filter specifying the resources to include in the output.
  ///
  /// If not specified, all resources are included in the output.
  FhirFilter resourceFilter;

  DeidentifyFhirStoreRequest();

  DeidentifyFhirStoreRequest.fromJson(core.Map _json) {
    if (_json.containsKey('config')) {
      config = DeidentifyConfig.fromJson(
          _json['config'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('destinationStore')) {
      destinationStore = _json['destinationStore'] as core.String;
    }
    if (_json.containsKey('resourceFilter')) {
      resourceFilter = FhirFilter.fromJson(
          _json['resourceFilter'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (config != null) 'config': config.toJson(),
        if (destinationStore != null) 'destinationStore': destinationStore,
        if (resourceFilter != null) 'resourceFilter': resourceFilter.toJson(),
      };
}

/// Contains a summary of the Deidentify operation.
class DeidentifySummary {
  DeidentifySummary();

  DeidentifySummary.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.Object> toJson() => {};
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
  /// Standard's Attribute Confidentiality Basic Profile (DICOM Standard Edition
  /// 2018e)
  /// http://dicom.nema.org/medical/dicom/2018e/output/chtml/part15/chapter_E.html.
  /// - "KEEP_ALL_PROFILE" : Keep all tags.
  /// - "DEIDENTIFY_TAG_CONTENTS" : Inspects within tag contents and replaces
  /// sensitive text. The process can be configured using the TextConfig.
  /// Applies to all tags with the following Value Representation names: AE, LO,
  /// LT, PN, SH, ST, UC, UT, DA, DT, AS
  core.String filterProfile;

  /// List of tags to keep.
  ///
  /// Remove all other tags.
  TagFilterList keepList;

  /// List of tags to remove.
  ///
  /// Keep all other tags.
  TagFilterList removeList;

  /// If true, skip replacing StudyInstanceUID, SeriesInstanceUID,
  /// SOPInstanceUID, and MediaStorageSOPInstanceUID and leave them untouched.
  ///
  /// The Cloud Healthcare API regenerates these UIDs by default based on the
  /// DICOM Standard's reasoning: "Whilst these UIDs cannot be mapped directly
  /// to an individual out of context, given access to the original images, or
  /// to a database of the original images containing the UIDs, it would be
  /// possible to recover the individual's identity."
  /// http://dicom.nema.org/medical/dicom/current/output/chtml/part15/sect_E.3.9.html
  core.bool skipIdRedaction;

  DicomConfig();

  DicomConfig.fromJson(core.Map _json) {
    if (_json.containsKey('filterProfile')) {
      filterProfile = _json['filterProfile'] as core.String;
    }
    if (_json.containsKey('keepList')) {
      keepList = TagFilterList.fromJson(
          _json['keepList'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('removeList')) {
      removeList = TagFilterList.fromJson(
          _json['removeList'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('skipIdRedaction')) {
      skipIdRedaction = _json['skipIdRedaction'] as core.bool;
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (filterProfile != null) 'filterProfile': filterProfile,
        if (keepList != null) 'keepList': keepList.toJson(),
        if (removeList != null) 'removeList': removeList.toJson(),
        if (skipIdRedaction != null) 'skipIdRedaction': skipIdRedaction,
      };
}

/// Specifies the filter configuration for DICOM resources.
class DicomFilterConfig {
  /// The Cloud Storage location of the filter configuration file.
  ///
  /// The `gcs_uri` must be in the format `gs://bucket/path/to/object`. The
  /// filter configuration file must contain a list of resource paths separated
  /// by newline characters (\n or \r\n). Each resource path must be in the
  /// format
  /// "/studies/{studyUID}\[/series/{seriesUID}\[/instances/{instanceUID}\]\]"
  /// The Cloud Healthcare API service account must have the
  /// `roles/storage.objectViewer` Cloud IAM role for this Cloud Storage
  /// location.
  core.String resourcePathsGcsUri;

  DicomFilterConfig();

  DicomFilterConfig.fromJson(core.Map _json) {
    if (_json.containsKey('resourcePathsGcsUri')) {
      resourcePathsGcsUri = _json['resourcePathsGcsUri'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (resourcePathsGcsUri != null)
          'resourcePathsGcsUri': resourcePathsGcsUri,
      };
}

/// Represents a DICOM store.
class DicomStore {
  /// User-supplied key-value pairs used to organize DICOM stores.
  ///
  /// Label keys must be between 1 and 63 characters long, have a UTF-8 encoding
  /// of maximum 128 bytes, and must conform to the following PCRE regular
  /// expression: \p{Ll}\p{Lo}{0,62} Label values are optional, must be between
  /// 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and
  /// must conform to the following PCRE regular expression:
  /// \[\p{Ll}\p{Lo}\p{N}_-\]{0,63} No more than 64 labels can be associated
  /// with a given store.
  core.Map<core.String, core.String> labels;

  /// Resource name of the DICOM store, of the form
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}`.
  core.String name;

  /// Notification destination for new DICOM instances.
  ///
  /// Supplied by the client.
  NotificationConfig notificationConfig;

  DicomStore();

  DicomStore.fromJson(core.Map _json) {
    if (_json.containsKey('labels')) {
      labels =
          (_json['labels'] as core.Map).cast<core.String, core.String>().map(
                (key, item) => core.MapEntry(
                  key,
                  item as core.String,
                ),
              );
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('notificationConfig')) {
      notificationConfig = NotificationConfig.fromJson(
          _json['notificationConfig'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (labels != null) 'labels': labels,
        if (name != null) 'name': name,
        if (notificationConfig != null)
          'notificationConfig': notificationConfig.toJson(),
      };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); } The JSON representation for `Empty` is empty JSON
/// object `{}`.
class Empty {
  Empty();

  Empty.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.Object> toJson() => {};
}

/// Exports data from the specified DICOM store.
///
/// If a given resource, such as a DICOM object with the same SOPInstance UID,
/// already exists in the output, it is overwritten with the version in the
/// source dataset. Exported DICOM data persists when the DICOM store from which
/// it was exported is deleted.
class ExportDicomDataRequest {
  /// The BigQuery output destination.
  ///
  /// You can only export to a BigQuery dataset that's in the same project as
  /// the DICOM store you're exporting from. The Cloud Healthcare Service Agent
  /// requires two IAM roles on the BigQuery location:
  /// `roles/bigquery.dataEditor` and `roles/bigquery.jobUser`.
  GoogleCloudHealthcareV1DicomBigQueryDestination bigqueryDestination;

  /// The Cloud Storage output destination.
  ///
  /// The Cloud Healthcare Service Agent requires the
  /// `roles/storage.objectAdmin` Cloud IAM roles on the Cloud Storage location.
  GoogleCloudHealthcareV1DicomGcsDestination gcsDestination;

  ExportDicomDataRequest();

  ExportDicomDataRequest.fromJson(core.Map _json) {
    if (_json.containsKey('bigqueryDestination')) {
      bigqueryDestination =
          GoogleCloudHealthcareV1DicomBigQueryDestination.fromJson(
              _json['bigqueryDestination']
                  as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('gcsDestination')) {
      gcsDestination = GoogleCloudHealthcareV1DicomGcsDestination.fromJson(
          _json['gcsDestination'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (bigqueryDestination != null)
          'bigqueryDestination': bigqueryDestination.toJson(),
        if (gcsDestination != null) 'gcsDestination': gcsDestination.toJson(),
      };
}

/// Returns additional information in regards to a completed DICOM store export.
class ExportDicomDataResponse {
  ExportDicomDataResponse();

  ExportDicomDataResponse.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.Object> toJson() => {};
}

/// Request to export resources.
class ExportResourcesRequest {
  /// The BigQuery output destination.
  ///
  /// The Cloud Healthcare Service Agent requires two IAM roles on the BigQuery
  /// location: `roles/bigquery.dataEditor` and `roles/bigquery.jobUser`. The
  /// output is one BigQuery table per resource type.
  GoogleCloudHealthcareV1FhirBigQueryDestination bigqueryDestination;

  /// The Cloud Storage output destination.
  ///
  /// The Healthcare Service Agent account requires the
  /// `roles/storage.objectAdmin` role on the Cloud Storage location. The
  /// exported outputs are organized by FHIR resource types. The server creates
  /// one object per resource type. Each object contains newline delimited JSON,
  /// and each line is a FHIR resource.
  GoogleCloudHealthcareV1FhirGcsDestination gcsDestination;

  ExportResourcesRequest();

  ExportResourcesRequest.fromJson(core.Map _json) {
    if (_json.containsKey('bigqueryDestination')) {
      bigqueryDestination =
          GoogleCloudHealthcareV1FhirBigQueryDestination.fromJson(
              _json['bigqueryDestination']
                  as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('gcsDestination')) {
      gcsDestination = GoogleCloudHealthcareV1FhirGcsDestination.fromJson(
          _json['gcsDestination'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (bigqueryDestination != null)
          'bigqueryDestination': bigqueryDestination.toJson(),
        if (gcsDestination != null) 'gcsDestination': gcsDestination.toJson(),
      };
}

/// Response when all resources export successfully.
///
/// This structure is included in the response to describe the detailed outcome
/// after the operation finishes successfully.
class ExportResourcesResponse {
  ExportResourcesResponse();

  ExportResourcesResponse.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.Object> toJson() => {};
}

/// Represents a textual expression in the Common Expression Language (CEL)
/// syntax.
///
/// CEL is a C-like expression language. The syntax and semantics of CEL are
/// documented at https://github.com/google/cel-spec. Example (Comparison):
/// title: "Summary size limit" description: "Determines if a summary is less
/// than 100 chars" expression: "document.summary.size() < 100" Example
/// (Equality): title: "Requestor is owner" description: "Determines if
/// requestor is the document owner" expression: "document.owner ==
/// request.auth.claims.email" Example (Logic): title: "Public documents"
/// description: "Determine whether the document should be publicly visible"
/// expression: "document.type != 'private' && document.type != 'internal'"
/// Example (Data Manipulation): title: "Notification string" description:
/// "Create a notification string with a timestamp." expression: "'New message
/// received at ' + string(document.create_time)" The exact variables and
/// functions that may be referenced within an expression are determined by the
/// service that evaluates it. See the service documentation for additional
/// information.
class Expr {
  /// Description of the expression.
  ///
  /// This is a longer text which describes the expression, e.g. when hovered
  /// over it in a UI.
  ///
  /// Optional.
  core.String description;

  /// Textual representation of an expression in Common Expression Language
  /// syntax.
  core.String expression;

  /// String indicating the location of the expression for error reporting, e.g.
  /// a file name and a position in the file.
  ///
  /// Optional.
  core.String location;

  /// Title for the expression, i.e. a short string describing its purpose.
  ///
  /// This can be used e.g. in UIs which allow to enter the expression.
  ///
  /// Optional.
  core.String title;

  Expr();

  Expr.fromJson(core.Map _json) {
    if (_json.containsKey('description')) {
      description = _json['description'] as core.String;
    }
    if (_json.containsKey('expression')) {
      expression = _json['expression'] as core.String;
    }
    if (_json.containsKey('location')) {
      location = _json['location'] as core.String;
    }
    if (_json.containsKey('title')) {
      title = _json['title'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (description != null) 'description': description,
        if (expression != null) 'expression': expression,
        if (location != null) 'location': location,
        if (title != null) 'title': title,
      };
}

/// Specifies how to handle de-identification of a FHIR store.
class FhirConfig {
  /// Specifies FHIR paths to match and how to transform them.
  ///
  /// Any field that is not matched by a FieldMetadata is passed through to the
  /// output dataset unmodified. All extensions are removed in the output.
  core.List<FieldMetadata> fieldMetadataList;

  FhirConfig();

  FhirConfig.fromJson(core.Map _json) {
    if (_json.containsKey('fieldMetadataList')) {
      fieldMetadataList = (_json['fieldMetadataList'] as core.List)
          .map<FieldMetadata>((value) => FieldMetadata.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (fieldMetadataList != null)
          'fieldMetadataList':
              fieldMetadataList.map((value) => value.toJson()).toList(),
      };
}

/// Filter configuration.
class FhirFilter {
  /// List of resources to include in the output.
  ///
  /// If this list is empty or not specified, all resources are included in the
  /// output.
  Resources resources;

  FhirFilter();

  FhirFilter.fromJson(core.Map _json) {
    if (_json.containsKey('resources')) {
      resources = Resources.fromJson(
          _json['resources'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (resources != null) 'resources': resources.toJson(),
      };
}

/// Represents a FHIR store.
class FhirStore {
  /// Whether to disable referential integrity in this FHIR store.
  ///
  /// This field is immutable after FHIR store creation. The default value is
  /// false, meaning that the API enforces referential integrity and fails the
  /// requests that result in inconsistent state in the FHIR store. When this
  /// field is set to true, the API skips referential integrity checks.
  /// Consequently, operations that rely on references, such as
  /// GetPatientEverything, do not return all the results if broken references
  /// exist.
  ///
  /// Immutable.
  core.bool disableReferentialIntegrity;

  /// Whether to disable resource versioning for this FHIR store.
  ///
  /// This field can not be changed after the creation of FHIR store. If set to
  /// false, which is the default behavior, all write operations cause
  /// historical versions to be recorded automatically. The historical versions
  /// can be fetched through the history APIs, but cannot be updated. If set to
  /// true, no historical versions are kept. The server sends errors for
  /// attempts to read the historical versions.
  ///
  /// Immutable.
  core.bool disableResourceVersioning;

  /// Whether this FHIR store has the
  /// [updateCreate capability](https://www.hl7.org/fhir/capabilitystatement-definitions.html#CapabilityStatement.rest.resource.updateCreate).
  ///
  /// This determines if the client can use an Update operation to create a new
  /// resource with a client-specified ID. If false, all IDs are server-assigned
  /// through the Create operation and attempts to update a non-existent
  /// resource return errors. It is strongly advised not to include or encode
  /// any sensitive data such as patient identifiers in client-specified
  /// resource IDs. Those IDs are part of the FHIR resource path recorded in
  /// Cloud audit logs and Cloud Pub/Sub notifications. Those IDs can also be
  /// contained in reference fields within other resources.
  core.bool enableUpdateCreate;

  /// User-supplied key-value pairs used to organize FHIR stores.
  ///
  /// Label keys must be between 1 and 63 characters long, have a UTF-8 encoding
  /// of maximum 128 bytes, and must conform to the following PCRE regular
  /// expression: \p{Ll}\p{Lo}{0,62} Label values are optional, must be between
  /// 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and
  /// must conform to the following PCRE regular expression:
  /// \[\p{Ll}\p{Lo}\p{N}_-\]{0,63} No more than 64 labels can be associated
  /// with a given store.
  core.Map<core.String, core.String> labels;

  /// Resource name of the FHIR store, of the form
  /// `projects/{project_id}/datasets/{dataset_id}/fhirStores/{fhir_store_id}`.
  ///
  /// Output only.
  core.String name;

  /// If non-empty, publish all resource modifications of this FHIR store to
  /// this destination.
  ///
  /// The Cloud Pub/Sub message attributes contain a map with a string
  /// describing the action that has triggered the notification. For example,
  /// "action":"CreateResource".
  NotificationConfig notificationConfig;

  /// A list of streaming configs that configure the destinations of streaming
  /// export for every resource mutation in this FHIR store.
  ///
  /// Each store is allowed to have up to 10 streaming configs. After a new
  /// config is added, the next resource mutation is streamed to the new
  /// location in addition to the existing ones. When a location is removed from
  /// the list, the server stops streaming to that location. Before adding a new
  /// config, you must add the required
  /// \[`bigquery.dataEditor`\](https://cloud.google.com/bigquery/docs/access-control#bigquery.dataEditor)
  /// role to your project's **Cloud Healthcare Service Agent**
  /// [service account](https://cloud.google.com/iam/docs/service-accounts).
  /// Some lag (typically on the order of dozens of seconds) is expected before
  /// the results show up in the streaming destination.
  core.List<StreamConfig> streamConfigs;

  /// The FHIR specification version that this FHIR store supports natively.
  ///
  /// This field is immutable after store creation. Requests are rejected if
  /// they contain FHIR resources of a different version. Version is required
  /// for every FHIR store.
  ///
  /// Immutable.
  /// Possible string values are:
  /// - "VERSION_UNSPECIFIED" : Users must specify a version on store creation
  /// or an error is returned.
  /// - "DSTU2" : Draft Standard for Trial Use,
  /// [Release 2](https://www.hl7.org/fhir/DSTU2)
  /// - "STU3" : Standard for Trial Use,
  /// [Release 3](https://www.hl7.org/fhir/STU3)
  /// - "R4" : [Release 4](https://www.hl7.org/fhir/R4)
  core.String version;

  FhirStore();

  FhirStore.fromJson(core.Map _json) {
    if (_json.containsKey('disableReferentialIntegrity')) {
      disableReferentialIntegrity =
          _json['disableReferentialIntegrity'] as core.bool;
    }
    if (_json.containsKey('disableResourceVersioning')) {
      disableResourceVersioning =
          _json['disableResourceVersioning'] as core.bool;
    }
    if (_json.containsKey('enableUpdateCreate')) {
      enableUpdateCreate = _json['enableUpdateCreate'] as core.bool;
    }
    if (_json.containsKey('labels')) {
      labels =
          (_json['labels'] as core.Map).cast<core.String, core.String>().map(
                (key, item) => core.MapEntry(
                  key,
                  item as core.String,
                ),
              );
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('notificationConfig')) {
      notificationConfig = NotificationConfig.fromJson(
          _json['notificationConfig'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('streamConfigs')) {
      streamConfigs = (_json['streamConfigs'] as core.List)
          .map<StreamConfig>((value) => StreamConfig.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('version')) {
      version = _json['version'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (disableReferentialIntegrity != null)
          'disableReferentialIntegrity': disableReferentialIntegrity,
        if (disableResourceVersioning != null)
          'disableResourceVersioning': disableResourceVersioning,
        if (enableUpdateCreate != null)
          'enableUpdateCreate': enableUpdateCreate,
        if (labels != null) 'labels': labels,
        if (name != null) 'name': name,
        if (notificationConfig != null)
          'notificationConfig': notificationConfig.toJson(),
        if (streamConfigs != null)
          'streamConfigs':
              streamConfigs.map((value) => value.toJson()).toList(),
        if (version != null) 'version': version,
      };
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

  /// List of paths to FHIR fields to be redacted.
  ///
  /// Each path is a period-separated list where each component is either a
  /// field name or FHIR type name, for example: Patient, HumanName. For
  /// "choice" types (those defined in the FHIR spec with the form: field\[x\])
  /// we use two separate components. For example, "deceasedAge.unit" is matched
  /// by "Deceased.Age.unit". Supported types are: AdministrativeGenderCode,
  /// Code, Date, DateTime, Decimal, HumanName, Id, LanguageCode, Markdown, Oid,
  /// String, Uri, Uuid, Xhtml. Base64Binary is also supported, but may only be
  /// kept as-is or have all the content removed.
  core.List<core.String> paths;

  FieldMetadata();

  FieldMetadata.fromJson(core.Map _json) {
    if (_json.containsKey('action')) {
      action = _json['action'] as core.String;
    }
    if (_json.containsKey('paths')) {
      paths = (_json['paths'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (action != null) 'action': action,
        if (paths != null) 'paths': paths,
      };
}

/// Contains a summary of the DeidentifyDicomStore operation.
class GoogleCloudHealthcareV1DeidentifyDeidentifyDicomStoreSummary {
  GoogleCloudHealthcareV1DeidentifyDeidentifyDicomStoreSummary();

  GoogleCloudHealthcareV1DeidentifyDeidentifyDicomStoreSummary.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.Object> toJson() => {};
}

/// Contains a summary of the DeidentifyFhirStore operation.
class GoogleCloudHealthcareV1DeidentifyDeidentifyFhirStoreSummary {
  GoogleCloudHealthcareV1DeidentifyDeidentifyFhirStoreSummary();

  GoogleCloudHealthcareV1DeidentifyDeidentifyFhirStoreSummary.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.Object> toJson() => {};
}

/// The BigQuery table where the server writes the output.
class GoogleCloudHealthcareV1DicomBigQueryDestination {
  /// If the destination table already exists and this flag is `TRUE`, the table
  /// is overwritten by the contents of the DICOM store.
  ///
  /// If the flag is not set and the destination table already exists, the
  /// export call returns an error.
  core.bool force;

  /// BigQuery URI to a table, up to 2000 characters long, in the format
  /// `bq://projectId.bqDatasetId.tableId`
  core.String tableUri;

  GoogleCloudHealthcareV1DicomBigQueryDestination();

  GoogleCloudHealthcareV1DicomBigQueryDestination.fromJson(core.Map _json) {
    if (_json.containsKey('force')) {
      force = _json['force'] as core.bool;
    }
    if (_json.containsKey('tableUri')) {
      tableUri = _json['tableUri'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (force != null) 'force': force,
        if (tableUri != null) 'tableUri': tableUri,
      };
}

/// The Cloud Storage location where the server writes the output and the export
/// configuration.
class GoogleCloudHealthcareV1DicomGcsDestination {
  /// MIME types supported by DICOM spec.
  ///
  /// Each file is written in the following format:
  /// `.../{study_id}/{series_id}/{instance_id}[/{frame_number}].{extension}`
  /// The frame_number component exists only for multi-frame instances.
  /// Supported MIME types are consistent with supported formats in DICOMweb:
  /// https://cloud.google.com/healthcare/docs/dicom#retrieve_transaction.
  /// Specifically, the following are supported: - application/dicom;
  /// transfer-syntax=1.2.840.10008.1.2.1 (uncompressed DICOM) -
  /// application/dicom; transfer-syntax=1.2.840.10008.1.2.4.50 (DICOM with
  /// embedded JPEG Baseline) - application/dicom;
  /// transfer-syntax=1.2.840.10008.1.2.4.90 (DICOM with embedded JPEG 2000
  /// Lossless Only) - application/dicom; transfer-syntax=1.2.840.10008.1.2.4.91
  /// (DICOM with embedded JPEG 2000) - application/dicom; transfer-syntax=*
  /// (DICOM with no transcoding) - application/octet-stream;
  /// transfer-syntax=1.2.840.10008.1.2.1 (raw uncompressed PixelData) -
  /// application/octet-stream; transfer-syntax=* (raw PixelData in whatever
  /// format it was uploaded in) - image/jpeg;
  /// transfer-syntax=1.2.840.10008.1.2.4.50 (Consumer JPEG) - image/png The
  /// following extensions are used for output files: - application/dicom ->
  /// .dcm - image/jpeg -> .jpg - image/png -> .png - application/octet-stream
  /// -> no extension If unspecified, the instances are exported in the original
  /// DICOM format they were uploaded in.
  core.String mimeType;

  /// The Cloud Storage destination to export to.
  ///
  /// URI for a Cloud Storage directory where the server writes the result
  /// files, in the format `gs://{bucket-id}/{path/to/destination/dir}`). If
  /// there is no trailing slash, the service appends one when composing the
  /// object path. The user is responsible for creating the Cloud Storage bucket
  /// referenced in `uri_prefix`.
  core.String uriPrefix;

  GoogleCloudHealthcareV1DicomGcsDestination();

  GoogleCloudHealthcareV1DicomGcsDestination.fromJson(core.Map _json) {
    if (_json.containsKey('mimeType')) {
      mimeType = _json['mimeType'] as core.String;
    }
    if (_json.containsKey('uriPrefix')) {
      uriPrefix = _json['uriPrefix'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (mimeType != null) 'mimeType': mimeType,
        if (uriPrefix != null) 'uriPrefix': uriPrefix,
      };
}

/// Specifies the configuration for importing data from Cloud Storage.
class GoogleCloudHealthcareV1DicomGcsSource {
  /// Points to a Cloud Storage URI containing file(s) with content only.
  ///
  /// The URI must be in the following format: `gs://{bucket_id}/{object_id}`.
  /// The URI can include wildcards in `object_id` and thus identify multiple
  /// files. Supported wildcards: '*' to match 0 or more non-separator
  /// characters '**' to match 0 or more characters (including separators). Must
  /// be used at the end of a path and with no other wildcards in the path. Can
  /// also be used with a file extension (such as .dcm), which imports all files
  /// with the extension in the specified directory and its sub-directories. For
  /// example, `gs://my-bucket/my-directory / * *.dcm` imports all files with
  /// .dcm extensions in `my-directory/` and its sub-directories. '?' to match 1
  /// character All other URI formats are invalid. Files matching the wildcard
  /// are expected to contain content only, no metadata.
  core.String uri;

  GoogleCloudHealthcareV1DicomGcsSource();

  GoogleCloudHealthcareV1DicomGcsSource.fromJson(core.Map _json) {
    if (_json.containsKey('uri')) {
      uri = _json['uri'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (uri != null) 'uri': uri,
      };
}

/// The configuration for exporting to BigQuery.
class GoogleCloudHealthcareV1FhirBigQueryDestination {
  /// BigQuery URI to an existing dataset, up to 2000 characters long, in the
  /// format `bq://projectId.bqDatasetId`.
  core.String datasetUri;

  /// If this flag is `TRUE`, all tables are deleted from the dataset before the
  /// new exported tables are written.
  ///
  /// If the flag is not set and the destination dataset contains tables, the
  /// export call returns an error. If `write_disposition` is specified, this
  /// parameter is ignored. force=false is equivalent to
  /// write_disposition=WRITE_EMPTY and force=true is equivalent to
  /// write_disposition=WRITE_TRUNCATE.
  core.bool force;

  /// The configuration for the exported BigQuery schema.
  SchemaConfig schemaConfig;

  /// Determines whether existing tables in the destination dataset are
  /// overwritten or appended to.
  ///
  /// If a write_disposition is specified, the `force` parameter is ignored.
  /// Possible string values are:
  /// - "WRITE_DISPOSITION_UNSPECIFIED" : Default behavior is the same as
  /// WRITE_EMPTY.
  /// - "WRITE_EMPTY" : Only export data if the destination tables are empty.
  /// - "WRITE_TRUNCATE" : Erase all existing data in a tables before writing
  /// the instances.
  /// - "WRITE_APPEND" : Append data to the existing tables.
  core.String writeDisposition;

  GoogleCloudHealthcareV1FhirBigQueryDestination();

  GoogleCloudHealthcareV1FhirBigQueryDestination.fromJson(core.Map _json) {
    if (_json.containsKey('datasetUri')) {
      datasetUri = _json['datasetUri'] as core.String;
    }
    if (_json.containsKey('force')) {
      force = _json['force'] as core.bool;
    }
    if (_json.containsKey('schemaConfig')) {
      schemaConfig = SchemaConfig.fromJson(
          _json['schemaConfig'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('writeDisposition')) {
      writeDisposition = _json['writeDisposition'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (datasetUri != null) 'datasetUri': datasetUri,
        if (force != null) 'force': force,
        if (schemaConfig != null) 'schemaConfig': schemaConfig.toJson(),
        if (writeDisposition != null) 'writeDisposition': writeDisposition,
      };
}

/// The configuration for exporting to Cloud Storage.
class GoogleCloudHealthcareV1FhirGcsDestination {
  /// URI for a Cloud Storage directory where result files should be written, in
  /// the format of `gs://{bucket-id}/{path/to/destination/dir}`.
  ///
  /// If there is no trailing slash, the service appends one when composing the
  /// object path. The user is responsible for creating the Cloud Storage bucket
  /// referenced in `uri_prefix`.
  core.String uriPrefix;

  GoogleCloudHealthcareV1FhirGcsDestination();

  GoogleCloudHealthcareV1FhirGcsDestination.fromJson(core.Map _json) {
    if (_json.containsKey('uriPrefix')) {
      uriPrefix = _json['uriPrefix'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (uriPrefix != null) 'uriPrefix': uriPrefix,
      };
}

/// Specifies the configuration for importing data from Cloud Storage.
class GoogleCloudHealthcareV1FhirGcsSource {
  /// Points to a Cloud Storage URI containing file(s) to import.
  ///
  /// The URI must be in the following format: `gs://{bucket_id}/{object_id}`.
  /// The URI can include wildcards in `object_id` and thus identify multiple
  /// files. Supported wildcards: * `*` to match 0 or more non-separator
  /// characters * `**` to match 0 or more characters (including separators).
  /// Must be used at the end of a path and with no other wildcards in the path.
  /// Can also be used with a file extension (such as .ndjson), which imports
  /// all files with the extension in the specified directory and its
  /// sub-directories. For example, `gs://my-bucket/my-directory / * *.ndjson`
  /// imports all files with `.ndjson` extensions in `my-directory/` and its
  /// sub-directories. * `?` to match 1 character Files matching the wildcard
  /// are expected to contain content only, no metadata.
  core.String uri;

  GoogleCloudHealthcareV1FhirGcsSource();

  GoogleCloudHealthcareV1FhirGcsSource.fromJson(core.Map _json) {
    if (_json.containsKey('uri')) {
      uri = _json['uri'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (uri != null) 'uri': uri,
      };
}

/// Specifies where and whether to send notifications upon changes to a data
/// store.
class Hl7V2NotificationConfig {
  /// Restricts notifications sent for messages matching a filter.
  ///
  /// If this is empty, all messages are matched. The following syntax is
  /// available: * A string field value can be written as text inside quotation
  /// marks, for example `"query text"`. The only valid relational operation for
  /// text fields is equality (`=`), where text is searched within the field,
  /// rather than having the field be equal to the text. For example, `"Comment
  /// = great"` returns messages with `great` in the comment field. * A number
  /// field value can be written as an integer, a decimal, or an exponential.
  /// The valid relational operators for number fields are the equality operator
  /// (`=`), along with the less than/greater than operators (`<`, `<=`, `>`,
  /// `>=`). Note that there is no inequality (`!=`) operator. You can prepend
  /// the `NOT` operator to an expression to negate it. * A date field value
  /// must be written in `yyyy-mm-dd` form. Fields with date and time use the
  /// RFC3339 time format. Leading zeros are required for one-digit months and
  /// days. The valid relational operators for date fields are the equality
  /// operator (`=`) , along with the less than/greater than operators (`<`,
  /// `<=`, `>`, `>=`). Note that there is no inequality (`!=`) operator. You
  /// can prepend the `NOT` operator to an expression to negate it. * Multiple
  /// field query expressions can be combined in one query by adding `AND` or
  /// `OR` operators between the expressions. If a boolean operator appears
  /// within a quoted string, it is not treated as special, it's just another
  /// part of the character string to be matched. You can prepend the `NOT`
  /// operator to an expression to negate it. The following fields and functions
  /// are available for filtering: * `message_type`, from the MSH-9.1 field. For
  /// example, `NOT message_type = "ADT"`. * `send_date` or `sendDate`, the
  /// YYYY-MM-DD date the message was sent in the dataset's time_zone, from the
  /// MSH-7 segment. For example, `send_date < "2017-01-02"`. * `send_time`, the
  /// timestamp when the message was sent, using the RFC3339 time format for
  /// comparisons, from the MSH-7 segment. For example, `send_time <
  /// "2017-01-02T00:00:00-05:00"`. * `send_facility`, the care center that the
  /// message came from, from the MSH-4 segment. For example, `send_facility =
  /// "ABC"`. * `PatientId(value, type)`, which matches if the message lists a
  /// patient having an ID of the given value and type in the PID-2, PID-3, or
  /// PID-4 segments. For example, `PatientId("123456", "MRN")`. * `labels.x`, a
  /// string value of the label with key `x` as set using the Message.labels
  /// map. For example, `labels."priority"="high"`. The operator `:*` can be
  /// used to assert the existence of a label. For example,
  /// `labels."priority":*`.
  core.String filter;

  /// The [Cloud Pub/Sub](https://cloud.google.com/pubsub/docs/) topic that
  /// notifications of changes are published on.
  ///
  /// Supplied by the client. The notification is a `PubsubMessage` with the
  /// following fields: * `PubsubMessage.Data` contains the resource name. *
  /// `PubsubMessage.MessageId` is the ID of this notification. It's guaranteed
  /// to be unique within the topic. * `PubsubMessage.PublishTime` is the time
  /// when the message was published. Note that notifications are only sent if
  /// the topic is non-empty.
  /// [Topic names](https://cloud.google.com/pubsub/docs/overview#names) must be
  /// scoped to a project. The Cloud Healthcare API service account,
  /// service-PROJECT_NUMBER@gcp-sa-healthcare.iam.gserviceaccount.com, must
  /// have publisher permissions on the given Pub/Sub topic. Not having adequate
  /// permissions causes the calls that send notifications to fail. If a
  /// notification cannot be published to Cloud Pub/Sub, errors are logged to
  /// Cloud Logging. For more information, see \[Viewing error logs in Cloud
  /// Logging\](/healthcare/docs/how-tos/logging)).
  core.String pubsubTopic;

  Hl7V2NotificationConfig();

  Hl7V2NotificationConfig.fromJson(core.Map _json) {
    if (_json.containsKey('filter')) {
      filter = _json['filter'] as core.String;
    }
    if (_json.containsKey('pubsubTopic')) {
      pubsubTopic = _json['pubsubTopic'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (filter != null) 'filter': filter,
        if (pubsubTopic != null) 'pubsubTopic': pubsubTopic,
      };
}

/// Represents an HL7v2 store.
class Hl7V2Store {
  /// User-supplied key-value pairs used to organize HL7v2 stores.
  ///
  /// Label keys must be between 1 and 63 characters long, have a UTF-8 encoding
  /// of maximum 128 bytes, and must conform to the following PCRE regular
  /// expression: \p{Ll}\p{Lo}{0,62} Label values are optional, must be between
  /// 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and
  /// must conform to the following PCRE regular expression:
  /// \[\p{Ll}\p{Lo}\p{N}_-\]{0,63} No more than 64 labels can be associated
  /// with a given store.
  core.Map<core.String, core.String> labels;

  /// Resource name of the HL7v2 store, of the form
  /// `projects/{project_id}/datasets/{dataset_id}/hl7V2Stores/{hl7v2_store_id}`.
  core.String name;

  /// A list of notification configs.
  ///
  /// Each configuration uses a filter to determine whether to publish a message
  /// (both Ingest & Create) on the corresponding notification destination. Only
  /// the message name is sent as part of the notification. Supplied by the
  /// client.
  core.List<Hl7V2NotificationConfig> notificationConfigs;

  /// The configuration for the parser.
  ///
  /// It determines how the server parses the messages.
  ParserConfig parserConfig;

  /// Determines whether to reject duplicate messages.
  ///
  /// A duplicate message is a message with the same raw bytes as a message that
  /// has already been ingested/created in this HL7v2 store. The default value
  /// is false, meaning that the store accepts the duplicate messages and it
  /// also returns the same ACK message in the IngestMessageResponse as has been
  /// returned previously. Note that only one resource is created in the store.
  /// When this field is set to true, CreateMessage/IngestMessage requests with
  /// a duplicate message will be rejected by the store, and
  /// IngestMessageErrorDetail returns a NACK message upon rejection.
  core.bool rejectDuplicateMessage;

  Hl7V2Store();

  Hl7V2Store.fromJson(core.Map _json) {
    if (_json.containsKey('labels')) {
      labels =
          (_json['labels'] as core.Map).cast<core.String, core.String>().map(
                (key, item) => core.MapEntry(
                  key,
                  item as core.String,
                ),
              );
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('notificationConfigs')) {
      notificationConfigs = (_json['notificationConfigs'] as core.List)
          .map<Hl7V2NotificationConfig>((value) =>
              Hl7V2NotificationConfig.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('parserConfig')) {
      parserConfig = ParserConfig.fromJson(
          _json['parserConfig'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('rejectDuplicateMessage')) {
      rejectDuplicateMessage = _json['rejectDuplicateMessage'] as core.bool;
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (labels != null) 'labels': labels,
        if (name != null) 'name': name,
        if (notificationConfigs != null)
          'notificationConfigs':
              notificationConfigs.map((value) => value.toJson()).toList(),
        if (parserConfig != null) 'parserConfig': parserConfig.toJson(),
        if (rejectDuplicateMessage != null)
          'rejectDuplicateMessage': rejectDuplicateMessage,
      };
}

/// Message that represents an arbitrary HTTP body.
///
/// It should only be used for payload formats that can't be represented as
/// JSON, such as raw binary or an HTML page. This message can be used both in
/// streaming and non-streaming API methods in the request as well as the
/// response. It can be used as a top-level request field, which is convenient
/// if one wants to extract parameters from either the URL or HTTP template into
/// the request fields and also want access to the raw HTTP body. Example:
/// message GetResourceRequest { // A unique request id. string request_id = 1;
/// // The raw HTTP body is bound to this field. google.api.HttpBody http_body =
/// 2; } service ResourceService { rpc GetResource(GetResourceRequest) returns
/// (google.api.HttpBody); rpc UpdateResource(google.api.HttpBody) returns
/// (google.protobuf.Empty); } Example with streaming methods: service
/// CaldavService { rpc GetCalendar(stream google.api.HttpBody) returns (stream
/// google.api.HttpBody); rpc UpdateCalendar(stream google.api.HttpBody) returns
/// (stream google.api.HttpBody); } Use of this type only changes how the
/// request and response bodies are handled, all other features will continue to
/// work unchanged.
class HttpBody {
  /// The HTTP Content-Type header value specifying the content type of the
  /// body.
  core.String contentType;

  /// The HTTP request/response body as raw binary.
  core.String data;
  core.List<core.int> get dataAsBytes => convert.base64.decode(data);

  set dataAsBytes(core.List<core.int> _bytes) {
    data =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Application specific response metadata.
  ///
  /// Must be set in the first response for streaming APIs.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Map<core.String, core.Object>> extensions;

  HttpBody();

  HttpBody.fromJson(core.Map _json) {
    if (_json.containsKey('contentType')) {
      contentType = _json['contentType'] as core.String;
    }
    if (_json.containsKey('data')) {
      data = _json['data'] as core.String;
    }
    if (_json.containsKey('extensions')) {
      extensions = (_json['extensions'] as core.List)
          .map<core.Map<core.String, core.Object>>((value) =>
              (value as core.Map).cast<core.String, core.Object>().map(
                    (key, item) => core.MapEntry(
                      key,
                      item as core.Object,
                    ),
                  ))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (contentType != null) 'contentType': contentType,
        if (data != null) 'data': data,
        if (extensions != null) 'extensions': extensions,
      };
}

/// Specifies how to handle de-identification of image pixels.
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
    if (_json.containsKey('textRedactionMode')) {
      textRedactionMode = _json['textRedactionMode'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (textRedactionMode != null) 'textRedactionMode': textRedactionMode,
      };
}

/// Imports data into the specified DICOM store.
///
/// Returns an error if any of the files to import are not DICOM files. This API
/// accepts duplicate DICOM instances by ignoring the newly-pushed instance. It
/// does not overwrite.
class ImportDicomDataRequest {
  /// Cloud Storage source data location and import configuration.
  ///
  /// The Cloud Healthcare Service Agent requires the
  /// `roles/storage.objectViewer` Cloud IAM roles on the Cloud Storage
  /// location.
  GoogleCloudHealthcareV1DicomGcsSource gcsSource;

  ImportDicomDataRequest();

  ImportDicomDataRequest.fromJson(core.Map _json) {
    if (_json.containsKey('gcsSource')) {
      gcsSource = GoogleCloudHealthcareV1DicomGcsSource.fromJson(
          _json['gcsSource'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (gcsSource != null) 'gcsSource': gcsSource.toJson(),
      };
}

/// Returns additional information in regards to a completed DICOM store import.
class ImportDicomDataResponse {
  ImportDicomDataResponse();

  ImportDicomDataResponse.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.Object> toJson() => {};
}

/// Request to import resources.
class ImportResourcesRequest {
  /// The content structure in the source location.
  ///
  /// If not specified, the server treats the input source files as BUNDLE.
  /// Possible string values are:
  /// - "CONTENT_STRUCTURE_UNSPECIFIED" : If the content structure is not
  /// specified, the default value `BUNDLE` is used.
  /// - "BUNDLE" : The source file contains one or more lines of
  /// newline-delimited JSON (ndjson). Each line is a bundle that contains one
  /// or more resources.
  /// - "RESOURCE" : The source file contains one or more lines of
  /// newline-delimited JSON (ndjson). Each line is a single resource.
  /// - "BUNDLE_PRETTY" : The entire file is one JSON bundle. The JSON can span
  /// multiple lines.
  /// - "RESOURCE_PRETTY" : The entire file is one JSON resource. The JSON can
  /// span multiple lines.
  core.String contentStructure;

  /// Cloud Storage source data location and import configuration.
  ///
  /// The Healthcare Service Agent account requires the
  /// `roles/storage.objectAdmin` role on the Cloud Storage location. Each Cloud
  /// Storage object should be a text file that contains the format specified in
  /// ContentStructure.
  GoogleCloudHealthcareV1FhirGcsSource gcsSource;

  ImportResourcesRequest();

  ImportResourcesRequest.fromJson(core.Map _json) {
    if (_json.containsKey('contentStructure')) {
      contentStructure = _json['contentStructure'] as core.String;
    }
    if (_json.containsKey('gcsSource')) {
      gcsSource = GoogleCloudHealthcareV1FhirGcsSource.fromJson(
          _json['gcsSource'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (contentStructure != null) 'contentStructure': contentStructure,
        if (gcsSource != null) 'gcsSource': gcsSource.toJson(),
      };
}

/// Final response of importing resources.
///
/// This structure is included in the response to describe the detailed outcome
/// after the operation finishes successfully.
class ImportResourcesResponse {
  ImportResourcesResponse();

  ImportResourcesResponse.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.Object> toJson() => {};
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

  /// InfoTypes to apply this transformation to.
  ///
  /// If this is not specified, the transformation applies to any info_type.
  core.List<core.String> infoTypes;

  /// Config for text redaction.
  RedactConfig redactConfig;

  /// Config for replace with InfoType.
  ReplaceWithInfoTypeConfig replaceWithInfoTypeConfig;

  InfoTypeTransformation();

  InfoTypeTransformation.fromJson(core.Map _json) {
    if (_json.containsKey('characterMaskConfig')) {
      characterMaskConfig = CharacterMaskConfig.fromJson(
          _json['characterMaskConfig'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('cryptoHashConfig')) {
      cryptoHashConfig = CryptoHashConfig.fromJson(
          _json['cryptoHashConfig'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('dateShiftConfig')) {
      dateShiftConfig = DateShiftConfig.fromJson(
          _json['dateShiftConfig'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('infoTypes')) {
      infoTypes = (_json['infoTypes'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('redactConfig')) {
      redactConfig = RedactConfig.fromJson(
          _json['redactConfig'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('replaceWithInfoTypeConfig')) {
      replaceWithInfoTypeConfig = ReplaceWithInfoTypeConfig.fromJson(
          _json['replaceWithInfoTypeConfig']
              as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (characterMaskConfig != null)
          'characterMaskConfig': characterMaskConfig.toJson(),
        if (cryptoHashConfig != null)
          'cryptoHashConfig': cryptoHashConfig.toJson(),
        if (dateShiftConfig != null)
          'dateShiftConfig': dateShiftConfig.toJson(),
        if (infoTypes != null) 'infoTypes': infoTypes,
        if (redactConfig != null) 'redactConfig': redactConfig.toJson(),
        if (replaceWithInfoTypeConfig != null)
          'replaceWithInfoTypeConfig': replaceWithInfoTypeConfig.toJson(),
      };
}

/// Ingests a message into the specified HL7v2 store.
class IngestMessageRequest {
  /// HL7v2 message to ingest.
  Message message;

  IngestMessageRequest();

  IngestMessageRequest.fromJson(core.Map _json) {
    if (_json.containsKey('message')) {
      message = Message.fromJson(
          _json['message'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (message != null) 'message': message.toJson(),
      };
}

/// Acknowledges that a message has been ingested into the specified HL7v2
/// store.
class IngestMessageResponse {
  /// HL7v2 ACK message.
  core.String hl7Ack;
  core.List<core.int> get hl7AckAsBytes => convert.base64.decode(hl7Ack);

  set hl7AckAsBytes(core.List<core.int> _bytes) {
    hl7Ack =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Created message resource.
  Message message;

  IngestMessageResponse();

  IngestMessageResponse.fromJson(core.Map _json) {
    if (_json.containsKey('hl7Ack')) {
      hl7Ack = _json['hl7Ack'] as core.String;
    }
    if (_json.containsKey('message')) {
      message = Message.fromJson(
          _json['message'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (hl7Ack != null) 'hl7Ack': hl7Ack,
        if (message != null) 'message': message.toJson(),
      };
}

/// Lists the available datasets.
class ListDatasetsResponse {
  /// The first page of datasets.
  core.List<Dataset> datasets;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String nextPageToken;

  ListDatasetsResponse();

  ListDatasetsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('datasets')) {
      datasets = (_json['datasets'] as core.List)
          .map<Dataset>((value) =>
              Dataset.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (datasets != null)
          'datasets': datasets.map((value) => value.toJson()).toList(),
        if (nextPageToken != null) 'nextPageToken': nextPageToken,
      };
}

/// Lists the DICOM stores in the given dataset.
class ListDicomStoresResponse {
  /// The returned DICOM stores.
  ///
  /// Won't be more DICOM stores than the value of page_size in the request.
  core.List<DicomStore> dicomStores;

  /// Token to retrieve the next page of results or empty if there are no more
  /// results in the list.
  core.String nextPageToken;

  ListDicomStoresResponse();

  ListDicomStoresResponse.fromJson(core.Map _json) {
    if (_json.containsKey('dicomStores')) {
      dicomStores = (_json['dicomStores'] as core.List)
          .map<DicomStore>((value) =>
              DicomStore.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (dicomStores != null)
          'dicomStores': dicomStores.map((value) => value.toJson()).toList(),
        if (nextPageToken != null) 'nextPageToken': nextPageToken,
      };
}

/// Lists the FHIR stores in the given dataset.
class ListFhirStoresResponse {
  /// The returned FHIR stores.
  ///
  /// Won't be more FHIR stores than the value of page_size in the request.
  core.List<FhirStore> fhirStores;

  /// Token to retrieve the next page of results or empty if there are no more
  /// results in the list.
  core.String nextPageToken;

  ListFhirStoresResponse();

  ListFhirStoresResponse.fromJson(core.Map _json) {
    if (_json.containsKey('fhirStores')) {
      fhirStores = (_json['fhirStores'] as core.List)
          .map<FhirStore>((value) =>
              FhirStore.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (fhirStores != null)
          'fhirStores': fhirStores.map((value) => value.toJson()).toList(),
        if (nextPageToken != null) 'nextPageToken': nextPageToken,
      };
}

/// Lists the HL7v2 stores in the given dataset.
class ListHl7V2StoresResponse {
  /// The returned HL7v2 stores.
  ///
  /// Won't be more HL7v2 stores than the value of page_size in the request.
  core.List<Hl7V2Store> hl7V2Stores;

  /// Token to retrieve the next page of results or empty if there are no more
  /// results in the list.
  core.String nextPageToken;

  ListHl7V2StoresResponse();

  ListHl7V2StoresResponse.fromJson(core.Map _json) {
    if (_json.containsKey('hl7V2Stores')) {
      hl7V2Stores = (_json['hl7V2Stores'] as core.List)
          .map<Hl7V2Store>((value) =>
              Hl7V2Store.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (hl7V2Stores != null)
          'hl7V2Stores': hl7V2Stores.map((value) => value.toJson()).toList(),
        if (nextPageToken != null) 'nextPageToken': nextPageToken,
      };
}

/// The response message for Locations.ListLocations.
class ListLocationsResponse {
  /// A list of locations that matches the specified filter in the request.
  core.List<Location> locations;

  /// The standard List next-page token.
  core.String nextPageToken;

  ListLocationsResponse();

  ListLocationsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('locations')) {
      locations = (_json['locations'] as core.List)
          .map<Location>((value) =>
              Location.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (locations != null)
          'locations': locations.map((value) => value.toJson()).toList(),
        if (nextPageToken != null) 'nextPageToken': nextPageToken,
      };
}

/// Lists the messages in the specified HL7v2 store.
class ListMessagesResponse {
  /// The returned Messages.
  ///
  /// Won't be more Messages than the value of page_size in the request. See
  /// view for populated fields.
  core.List<Message> hl7V2Messages;

  /// Token to retrieve the next page of results or empty if there are no more
  /// results in the list.
  core.String nextPageToken;

  ListMessagesResponse();

  ListMessagesResponse.fromJson(core.Map _json) {
    if (_json.containsKey('hl7V2Messages')) {
      hl7V2Messages = (_json['hl7V2Messages'] as core.List)
          .map<Message>((value) =>
              Message.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (hl7V2Messages != null)
          'hl7V2Messages':
              hl7V2Messages.map((value) => value.toJson()).toList(),
        if (nextPageToken != null) 'nextPageToken': nextPageToken,
      };
}

/// The response message for Operations.ListOperations.
class ListOperationsResponse {
  /// The standard List next-page token.
  core.String nextPageToken;

  /// A list of operations that matches the specified filter in the request.
  core.List<Operation> operations;

  ListOperationsResponse();

  ListOperationsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
    if (_json.containsKey('operations')) {
      operations = (_json['operations'] as core.List)
          .map<Operation>((value) =>
              Operation.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken,
        if (operations != null)
          'operations': operations.map((value) => value.toJson()).toList(),
      };
}

/// A resource that represents Google Cloud Platform location.
class Location {
  /// The friendly name for this location, typically a nearby city name.
  ///
  /// For example, "Tokyo".
  core.String displayName;

  /// Cross-service attributes for the location.
  ///
  /// For example {"cloud.googleapis.com/region": "us-east1"}
  core.Map<core.String, core.String> labels;

  /// The canonical id for this location.
  ///
  /// For example: `"us-east1"`.
  core.String locationId;

  /// Service-specific metadata.
  ///
  /// For example the available capacity at the given location.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> metadata;

  /// Resource name for the location, which may vary between implementations.
  ///
  /// For example: `"projects/example-project/locations/us-east1"`
  core.String name;

  Location();

  Location.fromJson(core.Map _json) {
    if (_json.containsKey('displayName')) {
      displayName = _json['displayName'] as core.String;
    }
    if (_json.containsKey('labels')) {
      labels =
          (_json['labels'] as core.Map).cast<core.String, core.String>().map(
                (key, item) => core.MapEntry(
                  key,
                  item as core.String,
                ),
              );
    }
    if (_json.containsKey('locationId')) {
      locationId = _json['locationId'] as core.String;
    }
    if (_json.containsKey('metadata')) {
      metadata =
          (_json['metadata'] as core.Map).cast<core.String, core.Object>().map(
                (key, item) => core.MapEntry(
                  key,
                  item as core.Object,
                ),
              );
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (displayName != null) 'displayName': displayName,
        if (labels != null) 'labels': labels,
        if (locationId != null) 'locationId': locationId,
        if (metadata != null) 'metadata': metadata,
        if (name != null) 'name': name,
      };
}

/// A complete HL7v2 message.
///
/// See
/// [Introduction to HL7 Standards](https://www.hl7.org/implement/standards/index.cfm?ref=common)
/// for details on the standard.
class Message {
  /// The datetime when the message was created.
  ///
  /// Set by the server.
  ///
  /// Output only.
  core.String createTime;

  /// Raw message bytes.
  core.String data;
  core.List<core.int> get dataAsBytes => convert.base64.decode(data);

  set dataAsBytes(core.List<core.int> _bytes) {
    data =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// User-supplied key-value pairs used to organize HL7v2 stores.
  ///
  /// Label keys must be between 1 and 63 characters long, have a UTF-8 encoding
  /// of maximum 128 bytes, and must conform to the following PCRE regular
  /// expression: \p{Ll}\p{Lo}{0,62} Label values are optional, must be between
  /// 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and
  /// must conform to the following PCRE regular expression:
  /// \[\p{Ll}\p{Lo}\p{N}_-\]{0,63} No more than 64 labels can be associated
  /// with a given store.
  core.Map<core.String, core.String> labels;

  /// The message type for this message.
  ///
  /// MSH-9.1.
  core.String messageType;

  /// Resource name of the Message, of the form
  /// `projects/{project_id}/datasets/{dataset_id}/hl7V2Stores/{hl7_v2_store_id}/messages/{message_id}`.
  ///
  /// Assigned by the server.
  core.String name;

  /// The parsed version of the raw message data.
  ///
  /// Output only.
  ParsedData parsedData;

  /// All patient IDs listed in the PID-2, PID-3, and PID-4 segments of this
  /// message.
  core.List<PatientId> patientIds;

  /// The hospital that this message came from.
  ///
  /// MSH-4.
  core.String sendFacility;

  /// The datetime the sending application sent this message.
  ///
  /// MSH-7.
  core.String sendTime;

  Message();

  Message.fromJson(core.Map _json) {
    if (_json.containsKey('createTime')) {
      createTime = _json['createTime'] as core.String;
    }
    if (_json.containsKey('data')) {
      data = _json['data'] as core.String;
    }
    if (_json.containsKey('labels')) {
      labels =
          (_json['labels'] as core.Map).cast<core.String, core.String>().map(
                (key, item) => core.MapEntry(
                  key,
                  item as core.String,
                ),
              );
    }
    if (_json.containsKey('messageType')) {
      messageType = _json['messageType'] as core.String;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('parsedData')) {
      parsedData = ParsedData.fromJson(
          _json['parsedData'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('patientIds')) {
      patientIds = (_json['patientIds'] as core.List)
          .map<PatientId>((value) =>
              PatientId.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('sendFacility')) {
      sendFacility = _json['sendFacility'] as core.String;
    }
    if (_json.containsKey('sendTime')) {
      sendTime = _json['sendTime'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (createTime != null) 'createTime': createTime,
        if (data != null) 'data': data,
        if (labels != null) 'labels': labels,
        if (messageType != null) 'messageType': messageType,
        if (name != null) 'name': name,
        if (parsedData != null) 'parsedData': parsedData.toJson(),
        if (patientIds != null)
          'patientIds': patientIds.map((value) => value.toJson()).toList(),
        if (sendFacility != null) 'sendFacility': sendFacility,
        if (sendTime != null) 'sendTime': sendTime,
      };
}

/// Specifies where to send notifications upon changes to a data store.
class NotificationConfig {
  /// The [Cloud Pub/Sub](https://cloud.google.com/pubsub/docs/) topic that
  /// notifications of changes are published on.
  ///
  /// Supplied by the client. PubsubMessage.Data contains the resource name.
  /// PubsubMessage.MessageId is the ID of this message. It is guaranteed to be
  /// unique within the topic. PubsubMessage.PublishTime is the time at which
  /// the message was published. Notifications are only sent if the topic is
  /// non-empty.
  /// [Topic names](https://cloud.google.com/pubsub/docs/overview#names) must be
  /// scoped to a project. Cloud Healthcare API service account must have
  /// publisher permissions on the given Cloud Pub/Sub topic. Not having
  /// adequate permissions causes the calls that send notifications to fail. If
  /// a notification can't be published to Cloud Pub/Sub, errors are logged to
  /// Cloud Logging (see \[Viewing logs\](/healthcare/docs/how-tos/logging)). If
  /// the number of errors exceeds a certain rate, some aren't submitted. Note
  /// that not all operations trigger notifications, see
  /// [Configuring Pub/Sub notifications](https://cloud.google.com/healthcare/docs/how-tos/pubsub)
  /// for specific details.
  core.String pubsubTopic;

  NotificationConfig();

  NotificationConfig.fromJson(core.Map _json) {
    if (_json.containsKey('pubsubTopic')) {
      pubsubTopic = _json['pubsubTopic'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (pubsubTopic != null) 'pubsubTopic': pubsubTopic,
      };
}

/// This resource represents a long-running operation that is the result of a
/// network API call.
class Operation {
  /// If the value is `false`, it means the operation is still in progress.
  ///
  /// If `true`, the operation is completed, and either `error` or `response` is
  /// available.
  core.bool done;

  /// The error result of the operation in case of failure or cancellation.
  Status error;

  /// Service-specific metadata associated with the operation.
  ///
  /// It typically contains progress information and common metadata such as
  /// create time. Some services might not provide such metadata. Any method
  /// that returns a long-running operation should document the metadata type,
  /// if any.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> metadata;

  /// The server-assigned name, which is only unique within the same service
  /// that originally returns it.
  ///
  /// If you use the default HTTP mapping, the `name` should be a resource name
  /// ending with `operations/{unique_id}`.
  core.String name;

  /// The normal response of the operation in case of success.
  ///
  /// If the original method returns no data on success, such as `Delete`, the
  /// response is `google.protobuf.Empty`. If the original method is standard
  /// `Get`/`Create`/`Update`, the response should be the resource. For other
  /// methods, the response should have the type `XxxResponse`, where `Xxx` is
  /// the original method name. For example, if the original method name is
  /// `TakeSnapshot()`, the inferred response type is `TakeSnapshotResponse`.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> response;

  Operation();

  Operation.fromJson(core.Map _json) {
    if (_json.containsKey('done')) {
      done = _json['done'] as core.bool;
    }
    if (_json.containsKey('error')) {
      error = Status.fromJson(
          _json['error'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('metadata')) {
      metadata =
          (_json['metadata'] as core.Map).cast<core.String, core.Object>().map(
                (key, item) => core.MapEntry(
                  key,
                  item as core.Object,
                ),
              );
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('response')) {
      response =
          (_json['response'] as core.Map).cast<core.String, core.Object>().map(
                (key, item) => core.MapEntry(
                  key,
                  item as core.Object,
                ),
              );
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (done != null) 'done': done,
        if (error != null) 'error': error.toJson(),
        if (metadata != null) 'metadata': metadata,
        if (name != null) 'name': name,
        if (response != null) 'response': response,
      };
}

/// OperationMetadata provides information about the operation execution.
///
/// Returned in the long-running operation's metadata field.
class OperationMetadata {
  /// The name of the API method that initiated the operation.
  core.String apiMethodName;

  /// Specifies if cancellation was requested for the operation.
  core.bool cancelRequested;
  ProgressCounter counter;

  /// The time at which the operation was created by the API.
  core.String createTime;

  /// The time at which execution was completed.
  core.String endTime;

  /// A link to audit and error logs in the log viewer.
  ///
  /// Error logs are generated only by some operations, listed at \[Viewing
  /// logs\](/healthcare/docs/how-tos/logging).
  core.String logsUrl;

  OperationMetadata();

  OperationMetadata.fromJson(core.Map _json) {
    if (_json.containsKey('apiMethodName')) {
      apiMethodName = _json['apiMethodName'] as core.String;
    }
    if (_json.containsKey('cancelRequested')) {
      cancelRequested = _json['cancelRequested'] as core.bool;
    }
    if (_json.containsKey('counter')) {
      counter = ProgressCounter.fromJson(
          _json['counter'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('createTime')) {
      createTime = _json['createTime'] as core.String;
    }
    if (_json.containsKey('endTime')) {
      endTime = _json['endTime'] as core.String;
    }
    if (_json.containsKey('logsUrl')) {
      logsUrl = _json['logsUrl'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (apiMethodName != null) 'apiMethodName': apiMethodName,
        if (cancelRequested != null) 'cancelRequested': cancelRequested,
        if (counter != null) 'counter': counter.toJson(),
        if (createTime != null) 'createTime': createTime,
        if (endTime != null) 'endTime': endTime,
        if (logsUrl != null) 'logsUrl': logsUrl,
      };
}

/// The content of a HL7v2 message in a structured format.
class ParsedData {
  core.List<Segment> segments;

  ParsedData();

  ParsedData.fromJson(core.Map _json) {
    if (_json.containsKey('segments')) {
      segments = (_json['segments'] as core.List)
          .map<Segment>((value) =>
              Segment.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (segments != null)
          'segments': segments.map((value) => value.toJson()).toList(),
      };
}

/// The configuration for the parser.
///
/// It determines how the server parses the messages.
class ParserConfig {
  /// Determines whether messages with no header are allowed.
  core.bool allowNullHeader;

  /// Byte(s) to use as the segment terminator.
  ///
  /// If this is unset, '\r' is used as segment terminator, matching the HL7
  /// version 2 specification.
  core.String segmentTerminator;
  core.List<core.int> get segmentTerminatorAsBytes =>
      convert.base64.decode(segmentTerminator);

  set segmentTerminatorAsBytes(core.List<core.int> _bytes) {
    segmentTerminator =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  ParserConfig();

  ParserConfig.fromJson(core.Map _json) {
    if (_json.containsKey('allowNullHeader')) {
      allowNullHeader = _json['allowNullHeader'] as core.bool;
    }
    if (_json.containsKey('segmentTerminator')) {
      segmentTerminator = _json['segmentTerminator'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (allowNullHeader != null) 'allowNullHeader': allowNullHeader,
        if (segmentTerminator != null) 'segmentTerminator': segmentTerminator,
      };
}

/// A patient identifier and associated type.
class PatientId {
  /// ID type.
  ///
  /// For example, MRN or NHS.
  core.String type;

  /// The patient's unique identifier.
  core.String value;

  PatientId();

  PatientId.fromJson(core.Map _json) {
    if (_json.containsKey('type')) {
      type = _json['type'] as core.String;
    }
    if (_json.containsKey('value')) {
      value = _json['value'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (type != null) 'type': type,
        if (value != null) 'value': value,
      };
}

/// An Identity and Access Management (IAM) policy, which specifies access
/// controls for Google Cloud resources.
///
/// A `Policy` is a collection of `bindings`. A `binding` binds one or more
/// `members` to a single `role`. Members can be user accounts, service
/// accounts, Google groups, and domains (such as G Suite). A `role` is a named
/// list of permissions; each `role` can be an IAM predefined role or a
/// user-created custom role. For some types of Google Cloud resources, a
/// `binding` can also specify a `condition`, which is a logical expression that
/// allows access to a resource only if the expression evaluates to `true`. A
/// condition can add constraints based on attributes of the request, the
/// resource, or both. To learn which resources support conditions in their IAM
/// policies, see the
/// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
/// **JSON example:** { "bindings": \[ { "role":
/// "roles/resourcemanager.organizationAdmin", "members": \[
/// "user:mike@example.com", "group:admins@example.com", "domain:google.com",
/// "serviceAccount:my-project-id@appspot.gserviceaccount.com" \] }, { "role":
/// "roles/resourcemanager.organizationViewer", "members": \[
/// "user:eve@example.com" \], "condition": { "title": "expirable access",
/// "description": "Does not grant access after Sep 2020", "expression":
/// "request.time < timestamp('2020-10-01T00:00:00.000Z')", } } \], "etag":
/// "BwWWja0YfJA=", "version": 3 } **YAML example:** bindings: - members: -
/// user:mike@example.com - group:admins@example.com - domain:google.com -
/// serviceAccount:my-project-id@appspot.gserviceaccount.com role:
/// roles/resourcemanager.organizationAdmin - members: - user:eve@example.com
/// role: roles/resourcemanager.organizationViewer condition: title: expirable
/// access description: Does not grant access after Sep 2020 expression:
/// request.time < timestamp('2020-10-01T00:00:00.000Z') - etag: BwWWja0YfJA= -
/// version: 3 For a description of IAM and its features, see the
/// [IAM documentation](https://cloud.google.com/iam/docs/).
class Policy {
  /// Specifies cloud audit logging configuration for this policy.
  core.List<AuditConfig> auditConfigs;

  /// Associates a list of `members` to a `role`.
  ///
  /// Optionally, may specify a `condition` that determines how and when the
  /// `bindings` are applied. Each of the `bindings` must contain at least one
  /// member.
  core.List<Binding> bindings;

  /// `etag` is used for optimistic concurrency control as a way to help prevent
  /// simultaneous updates of a policy from overwriting each other.
  ///
  /// It is strongly suggested that systems make use of the `etag` in the
  /// read-modify-write cycle to perform policy updates in order to avoid race
  /// conditions: An `etag` is returned in the response to `getIamPolicy`, and
  /// systems are expected to put that etag in the request to `setIamPolicy` to
  /// ensure that their change will be applied to the same version of the
  /// policy. **Important:** If you use IAM Conditions, you must include the
  /// `etag` field whenever you call `setIamPolicy`. If you omit this field,
  /// then IAM allows you to overwrite a version `3` policy with a version `1`
  /// policy, and all of the conditions in the version `3` policy are lost.
  core.String etag;
  core.List<core.int> get etagAsBytes => convert.base64.decode(etag);

  set etagAsBytes(core.List<core.int> _bytes) {
    etag =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Specifies the format of the policy.
  ///
  /// Valid values are `0`, `1`, and `3`. Requests that specify an invalid value
  /// are rejected. Any operation that affects conditional role bindings must
  /// specify version `3`. This requirement applies to the following operations:
  /// * Getting a policy that includes a conditional role binding * Adding a
  /// conditional role binding to a policy * Changing a conditional role binding
  /// in a policy * Removing any role binding, with or without a condition, from
  /// a policy that includes conditions **Important:** If you use IAM
  /// Conditions, you must include the `etag` field whenever you call
  /// `setIamPolicy`. If you omit this field, then IAM allows you to overwrite a
  /// version `3` policy with a version `1` policy, and all of the conditions in
  /// the version `3` policy are lost. If a policy does not include any
  /// conditions, operations on that policy may specify any valid version or
  /// leave the field unset. To learn which resources support conditions in
  /// their IAM policies, see the
  /// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
  core.int version;

  Policy();

  Policy.fromJson(core.Map _json) {
    if (_json.containsKey('auditConfigs')) {
      auditConfigs = (_json['auditConfigs'] as core.List)
          .map<AuditConfig>((value) => AuditConfig.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('bindings')) {
      bindings = (_json['bindings'] as core.List)
          .map<Binding>((value) =>
              Binding.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('etag')) {
      etag = _json['etag'] as core.String;
    }
    if (_json.containsKey('version')) {
      version = _json['version'] as core.int;
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (auditConfigs != null)
          'auditConfigs': auditConfigs.map((value) => value.toJson()).toList(),
        if (bindings != null)
          'bindings': bindings.map((value) => value.toJson()).toList(),
        if (etag != null) 'etag': etag,
        if (version != null) 'version': version,
      };
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
    if (_json.containsKey('failure')) {
      failure = _json['failure'] as core.String;
    }
    if (_json.containsKey('pending')) {
      pending = _json['pending'] as core.String;
    }
    if (_json.containsKey('success')) {
      success = _json['success'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (failure != null) 'failure': failure,
        if (pending != null) 'pending': pending,
        if (success != null) 'success': success,
      };
}

/// Define how to redact sensitive values.
///
/// Default behaviour is erase. For example, "My name is Jane." becomes "My name
/// is ."
class RedactConfig {
  RedactConfig();

  RedactConfig.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.Object> toJson() => {};
}

/// When using the INSPECT_AND_TRANSFORM action, each match is replaced with the
/// name of the info_type.
///
/// For example, "My name is Jane" becomes "My name is \[PERSON_NAME\]." The
/// TRANSFORM action is equivalent to redacting.
class ReplaceWithInfoTypeConfig {
  ReplaceWithInfoTypeConfig();

  ReplaceWithInfoTypeConfig.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.Object> toJson() => {};
}

/// A list of FHIR resources.
class Resources {
  /// List of resources IDs.
  ///
  /// For example, "Patient/1234".
  core.List<core.String> resources;

  Resources();

  Resources.fromJson(core.Map _json) {
    if (_json.containsKey('resources')) {
      resources = (_json['resources'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (resources != null) 'resources': resources,
      };
}

/// Configuration for the FHIR BigQuery schema.
///
/// Determines how the server generates the schema.
class SchemaConfig {
  /// The depth for all recursive structures in the output analytics schema.
  ///
  /// For example, `concept` in the CodeSystem resource is a recursive
  /// structure; when the depth is 2, the CodeSystem table will have a column
  /// called `concept.concept` but not `concept.concept.concept`. If not
  /// specified or set to 0, the server will use the default value 2. The
  /// maximum depth allowed is 5.
  core.String recursiveStructureDepth;

  /// Specifies the output schema type.
  ///
  /// Schema type is required.
  /// Possible string values are:
  /// - "SCHEMA_TYPE_UNSPECIFIED" : No schema type specified. This type is
  /// unsupported.
  /// - "ANALYTICS" : Analytics schema defined by the FHIR community. See
  /// https://github.com/FHIR/sql-on-fhir/blob/master/sql-on-fhir.md. BigQuery
  /// only allows a maximum of 10,000 columns per table. Due to this limitation,
  /// the server will not generate schemas for fields of type `Resource`, which
  /// can hold any resource type. The affected fields are
  /// `Parameters.parameter.resource`, `Bundle.entry.resource`, and
  /// `Bundle.entry.response.outcome`.
  core.String schemaType;

  SchemaConfig();

  SchemaConfig.fromJson(core.Map _json) {
    if (_json.containsKey('recursiveStructureDepth')) {
      recursiveStructureDepth = _json['recursiveStructureDepth'] as core.String;
    }
    if (_json.containsKey('schemaType')) {
      schemaType = _json['schemaType'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (recursiveStructureDepth != null)
          'recursiveStructureDepth': recursiveStructureDepth,
        if (schemaType != null) 'schemaType': schemaType,
      };
}

/// Request to search the resources in the specified FHIR store.
class SearchResourcesRequest {
  /// The FHIR resource type to search, such as Patient or Observation.
  ///
  /// For a complete list, see the FHIR Resource Index
  /// ([DSTU2](http://hl7.org/implement/standards/fhir/DSTU2/resourcelist.html),
  /// [STU3](http://hl7.org/implement/standards/fhir/STU3/resourcelist.html),
  /// [R4](http://hl7.org/implement/standards/fhir/R4/resourcelist.html)).
  core.String resourceType;

  SearchResourcesRequest();

  SearchResourcesRequest.fromJson(core.Map _json) {
    if (_json.containsKey('resourceType')) {
      resourceType = _json['resourceType'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (resourceType != null) 'resourceType': resourceType,
      };
}

/// A segment in a structured format.
class Segment {
  /// A mapping from the positional location to the value.
  ///
  /// The key string uses zero-based indexes separated by dots to identify
  /// Fields, components and sub-components. A bracket notation is also used to
  /// identify different instances of a repeated field. Regex for key:
  /// (\d+)(\[\d+\])?(.\d+)?(.\d+)? Examples of (key, value) pairs: * (0.1,
  /// "hemoglobin") denotes that the first component of Field 0 has the value
  /// "hemoglobin". * (1.1.2, "CBC") denotes that the second sub-component of
  /// the first component of Field 1 has the value "CBC". * (1\[0\].1, "HbA1c")
  /// denotes that the first component of the first Instance of Field 1, which
  /// is repeated, has the value "HbA1c".
  core.Map<core.String, core.String> fields;

  /// A string that indicates the type of segment.
  ///
  /// For example, EVN or PID.
  core.String segmentId;

  /// Set ID for segments that can be in a set.
  ///
  /// This can be empty if it's missing or isn't applicable.
  core.String setId;

  Segment();

  Segment.fromJson(core.Map _json) {
    if (_json.containsKey('fields')) {
      fields =
          (_json['fields'] as core.Map).cast<core.String, core.String>().map(
                (key, item) => core.MapEntry(
                  key,
                  item as core.String,
                ),
              );
    }
    if (_json.containsKey('segmentId')) {
      segmentId = _json['segmentId'] as core.String;
    }
    if (_json.containsKey('setId')) {
      setId = _json['setId'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (fields != null) 'fields': fields,
        if (segmentId != null) 'segmentId': segmentId,
        if (setId != null) 'setId': setId,
      };
}

/// Request message for `SetIamPolicy` method.
class SetIamPolicyRequest {
  /// REQUIRED: The complete policy to be applied to the `resource`.
  ///
  /// The size of the policy is limited to a few 10s of KB. An empty policy is a
  /// valid policy but certain Cloud Platform services (such as Projects) might
  /// reject them.
  Policy policy;

  /// OPTIONAL: A FieldMask specifying which fields of the policy to modify.
  ///
  /// Only the fields in the mask will be modified. If no mask is provided, the
  /// following default mask is used: `paths: "bindings, etag"`
  core.String updateMask;

  SetIamPolicyRequest();

  SetIamPolicyRequest.fromJson(core.Map _json) {
    if (_json.containsKey('policy')) {
      policy = Policy.fromJson(
          _json['policy'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('updateMask')) {
      updateMask = _json['updateMask'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (policy != null) 'policy': policy.toJson(),
        if (updateMask != null) 'updateMask': updateMask,
      };
}

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
class Status {
  /// The status code, which should be an enum value of google.rpc.Code.
  core.int code;

  /// A list of messages that carry the error details.
  ///
  /// There is a common set of message types for APIs to use.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Map<core.String, core.Object>> details;

  /// A developer-facing error message, which should be in English.
  ///
  /// Any user-facing error message should be localized and sent in the
  /// google.rpc.Status.details field, or localized by the client.
  core.String message;

  Status();

  Status.fromJson(core.Map _json) {
    if (_json.containsKey('code')) {
      code = _json['code'] as core.int;
    }
    if (_json.containsKey('details')) {
      details = (_json['details'] as core.List)
          .map<core.Map<core.String, core.Object>>((value) =>
              (value as core.Map).cast<core.String, core.Object>().map(
                    (key, item) => core.MapEntry(
                      key,
                      item as core.Object,
                    ),
                  ))
          .toList();
    }
    if (_json.containsKey('message')) {
      message = _json['message'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (code != null) 'code': code,
        if (details != null) 'details': details,
        if (message != null) 'message': message,
      };
}

/// Contains configuration for streaming FHIR export.
class StreamConfig {
  /// The destination BigQuery structure that contains both the dataset location
  /// and corresponding schema config.
  ///
  /// The output is organized in one table per resource type. The server reuses
  /// the existing tables (if any) that are named after the resource types. For
  /// example, "Patient", "Observation". When there is no existing table for a
  /// given resource type, the server attempts to create one. When a table
  /// schema doesn't align with the schema config, either because of existing
  /// incompatible schema or out of band incompatible modification, the server
  /// does not stream in new data. BigQuery imposes a 1 MB limit on streaming
  /// insert row size, therefore any resource mutation that generates more than
  /// 1 MB of BigQuery data is not streamed. One resolution in this case is to
  /// delete the incompatible table and let the server recreate one, though the
  /// newly created table only contains data after the table recreation. Results
  /// are appended to the corresponding BigQuery tables. Different versions of
  /// the same resource are distinguishable by the meta.versionId and
  /// meta.lastUpdated columns. The operation (CREATE/UPDATE/DELETE) that
  /// results in the new version is recorded in the meta.tag. The tables contain
  /// all historical resource versions since streaming was enabled. For query
  /// convenience, the server also creates one view per table of the same name
  /// containing only the current resource version. The streamed data in the
  /// BigQuery dataset is not guaranteed to be completely unique. The
  /// combination of the id and meta.versionId columns should ideally identify a
  /// single unique row. But in rare cases, duplicates may exist. At query time,
  /// users may use the SQL select statement to keep only one of the duplicate
  /// rows given an id and meta.versionId pair. Alternatively, the server
  /// created view mentioned above also filters out duplicates. If a resource
  /// mutation cannot be streamed to BigQuery, errors are logged to Cloud
  /// Logging. For more information, see \[Viewing error logs in Cloud
  /// Logging\](/healthcare/docs/how-tos/logging)).
  GoogleCloudHealthcareV1FhirBigQueryDestination bigqueryDestination;

  /// Supply a FHIR resource type (such as "Patient" or "Observation").
  ///
  /// See https://www.hl7.org/fhir/valueset-resource-types.html for a list of
  /// all FHIR resource types. The server treats an empty list as an intent to
  /// stream all the supported resource types in this FHIR store.
  core.List<core.String> resourceTypes;

  StreamConfig();

  StreamConfig.fromJson(core.Map _json) {
    if (_json.containsKey('bigqueryDestination')) {
      bigqueryDestination =
          GoogleCloudHealthcareV1FhirBigQueryDestination.fromJson(
              _json['bigqueryDestination']
                  as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('resourceTypes')) {
      resourceTypes = (_json['resourceTypes'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (bigqueryDestination != null)
          'bigqueryDestination': bigqueryDestination.toJson(),
        if (resourceTypes != null) 'resourceTypes': resourceTypes,
      };
}

/// List of tags to be filtered.
class TagFilterList {
  /// Tags to be filtered.
  ///
  /// Tags must be DICOM Data Elements, File Meta Elements, or Directory
  /// Structuring Elements, as defined at:
  /// http://dicom.nema.org/medical/dicom/current/output/html/part06.html#table_6-1,.
  /// They may be provided by "Keyword" or "Tag". For example "PatientID",
  /// "00100010".
  core.List<core.String> tags;

  TagFilterList();

  TagFilterList.fromJson(core.Map _json) {
    if (_json.containsKey('tags')) {
      tags = (_json['tags'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (tags != null) 'tags': tags,
      };
}

/// Request message for `TestIamPermissions` method.
class TestIamPermissionsRequest {
  /// The set of permissions to check for the `resource`.
  ///
  /// Permissions with wildcards (such as '*' or 'storage.*') are not allowed.
  /// For more information see
  /// [IAM Overview](https://cloud.google.com/iam/docs/overview#permissions).
  core.List<core.String> permissions;

  TestIamPermissionsRequest();

  TestIamPermissionsRequest.fromJson(core.Map _json) {
    if (_json.containsKey('permissions')) {
      permissions = (_json['permissions'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (permissions != null) 'permissions': permissions,
      };
}

/// Response message for `TestIamPermissions` method.
class TestIamPermissionsResponse {
  /// A subset of `TestPermissionsRequest.permissions` that the caller is
  /// allowed.
  core.List<core.String> permissions;

  TestIamPermissionsResponse();

  TestIamPermissionsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('permissions')) {
      permissions = (_json['permissions'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (permissions != null) 'permissions': permissions,
      };
}

class TextConfig {
  /// The transformations to apply to the detected data.
  core.List<InfoTypeTransformation> transformations;

  TextConfig();

  TextConfig.fromJson(core.Map _json) {
    if (_json.containsKey('transformations')) {
      transformations = (_json['transformations'] as core.List)
          .map<InfoTypeTransformation>((value) =>
              InfoTypeTransformation.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() => {
        if (transformations != null)
          'transformations':
              transformations.map((value) => value.toJson()).toList(),
      };
}
